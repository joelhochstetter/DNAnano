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
	<24.561207, 34.653778, 34.937649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.255463, 34.880711, 35.060215>,  <24.072016, 35.016869, 35.133755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.255463, 34.880711, 35.060215>,  <24.561207, 34.653778, 34.937649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.255463, 34.880711, 35.060215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580630, 0.398971, 0.709712,
		0.280390, 0.720389, -0.634367,
		-0.764362, 0.567329, 0.306412,
		24.026154, 35.050911, 35.152138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.608023, 35.366119, 34.855946>,  <24.561207, 34.653778, 34.937649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.608023, 35.366119, 34.855946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363552, 35.368927, 35.172531>,  <24.216869, 35.370609, 35.362480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363552, 35.368927, 35.172531>,  <24.608023, 35.366119, 34.855946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.363552, 35.368927, 35.172531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670589, 0.535771, 0.513089,
		-0.420442, 0.844334, -0.332156,
		-0.611178, 0.007016, 0.791462,
		24.180199, 35.371033, 35.409969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.476227, 36.094906, 35.026749>,  <24.608023, 35.366119, 34.855946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.476227, 36.094906, 35.026749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.379507, 35.875011, 35.346581>,  <24.321474, 35.743076, 35.538479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.379507, 35.875011, 35.346581>,  <24.476227, 36.094906, 35.026749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.379507, 35.875011, 35.346581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511248, 0.628198, 0.586510,
		-0.824717, 0.550601, 0.129152,
		-0.241800, -0.549733, 0.799579,
		24.306967, 35.710091, 35.586452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.035549, 36.520111, 35.350697>,  <24.476227, 36.094906, 35.026749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.035549, 36.520111, 35.350697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.271130, 36.277050, 35.563824>,  <24.412477, 36.131214, 35.691700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.271130, 36.277050, 35.563824>,  <24.035549, 36.520111, 35.350697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.271130, 36.277050, 35.563824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502093, 0.791732, 0.347939,
		-0.633278, 0.062607, 0.771388,
		0.588949, -0.607651, 0.532821,
		24.447815, 36.094753, 35.723671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.145222, 36.728268, 36.119709>,  <24.035549, 36.520111, 35.350697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.145222, 36.728268, 36.119709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.467815, 36.532360, 35.987221>,  <24.661371, 36.414814, 35.907726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.467815, 36.532360, 35.987221>,  <24.145222, 36.728268, 36.119709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.467815, 36.532360, 35.987221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584249, 0.746126, 0.319294,
		0.090751, -0.451021, 0.887888,
		0.806485, -0.489771, -0.331220,
		24.709761, 36.385429, 35.887856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.620039, 36.699921, 36.695004>,  <24.145222, 36.728268, 36.119709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.620039, 36.699921, 36.695004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.856421, 36.618713, 36.382710>,  <24.998249, 36.569988, 36.195332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.856421, 36.618713, 36.382710>,  <24.620039, 36.699921, 36.695004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.856421, 36.618713, 36.382710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731917, 0.541899, 0.413089,
		0.339217, -0.815554, 0.468832,
		0.590956, -0.203020, -0.780739,
		25.033707, 36.557808, 36.148487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.199892, 36.763592, 37.007023>,  <24.620039, 36.699921, 36.695004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.199892, 36.763592, 37.007023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302591, 36.776669, 36.620651>,  <25.364210, 36.784515, 36.388828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302591, 36.776669, 36.620651>,  <25.199892, 36.763592, 37.007023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.302591, 36.776669, 36.620651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798081, 0.556523, 0.230972,
		0.545111, -0.830189, 0.116793,
		0.256748, 0.032695, -0.965925,
		25.379616, 36.786476, 36.330875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.913050, 36.693851, 37.003525>,  <25.199892, 36.763592, 37.007023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.913050, 36.693851, 37.003525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826401, 36.880672, 36.660610>,  <25.774410, 36.992767, 36.454861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826401, 36.880672, 36.660610>,  <25.913050, 36.693851, 37.003525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.826401, 36.880672, 36.660610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636461, 0.733427, 0.238751,
		0.740265, -0.493908, -0.456139,
		-0.216624, 0.467054, -0.857283,
		25.761414, 37.020790, 36.403423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.558540, 36.753777, 36.766388>,  <25.913050, 36.693851, 37.003525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.558540, 36.753777, 36.766388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308680, 37.023609, 36.609035>,  <26.158764, 37.185509, 36.514626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308680, 37.023609, 36.609035>,  <26.558540, 36.753777, 36.766388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308680, 37.023609, 36.609035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664209, 0.723875, 0.186632,
		0.410657, -0.144706, -0.900234,
		-0.624650, 0.674585, -0.393379,
		26.121284, 37.225986, 36.491020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976416, 37.207718, 36.411366>,  <26.558540, 36.753777, 36.766388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976416, 37.207718, 36.411366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644053, 37.422688, 36.469017>,  <26.444635, 37.551670, 36.503609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644053, 37.422688, 36.469017>,  <26.976416, 37.207718, 36.411366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644053, 37.422688, 36.469017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555743, 0.788860, 0.262393,
		0.027316, 0.298124, -0.954136,
		-0.830906, 0.537422, 0.144132,
		26.394781, 37.583916, 36.512257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142286, 37.901276, 36.238235>,  <26.976416, 37.207718, 36.411366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142286, 37.901276, 36.238235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801220, 37.964638, 36.437382>,  <26.596581, 38.002655, 36.556870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801220, 37.964638, 36.437382>,  <27.142286, 37.901276, 36.238235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801220, 37.964638, 36.437382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438556, 0.734925, 0.517256,
		-0.283956, 0.659388, -0.696115,
		-0.852665, 0.158407, 0.497865,
		26.545420, 38.012161, 36.586742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955545, 38.563305, 36.123703>,  <27.142286, 37.901276, 36.238235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955545, 38.563305, 36.123703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795122, 38.430504, 36.465214>,  <26.698868, 38.350822, 36.670120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795122, 38.430504, 36.465214>,  <26.955545, 38.563305, 36.123703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795122, 38.430504, 36.465214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462398, 0.731193, 0.501543,
		-0.790785, 0.595930, -0.139735,
		-0.401057, -0.331999, 0.853774,
		26.674805, 38.330902, 36.721344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883764, 39.121082, 36.376419>,  <26.955545, 38.563305, 36.123703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883764, 39.121082, 36.376419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794792, 38.880272, 36.683167>,  <26.741409, 38.735786, 36.867214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794792, 38.880272, 36.683167>,  <26.883764, 39.121082, 36.376419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794792, 38.880272, 36.683167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362651, 0.679044, 0.638266,
		-0.904990, 0.420077, 0.067284,
		-0.222432, -0.602026, 0.766870,
		26.728062, 38.699665, 36.913227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.582266, 39.624641, 37.016571>,  <26.883764, 39.121082, 36.376419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.582266, 39.624641, 37.016571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.691767, 39.282234, 37.191978>,  <26.757467, 39.076790, 37.297222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.691767, 39.282234, 37.191978>,  <26.582266, 39.624641, 37.016571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.691767, 39.282234, 37.191978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353095, 0.513540, 0.782049,
		-0.894642, -0.059250, 0.442837,
		0.273751, -0.856017, 0.438514,
		26.773891, 39.025429, 37.323532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253256, 39.544579, 37.630730>,  <26.582266, 39.624641, 37.016571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253256, 39.544579, 37.630730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578821, 39.317326, 37.679344>,  <26.774160, 39.180973, 37.708511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578821, 39.317326, 37.679344>,  <26.253256, 39.544579, 37.630730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.578821, 39.317326, 37.679344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072928, 0.307441, 0.948768,
		-0.576389, -0.763353, 0.291664,
		0.813915, -0.568130, 0.121536,
		26.822996, 39.146885, 37.715805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184258, 39.273094, 38.330452>,  <26.253256, 39.544579, 37.630730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184258, 39.273094, 38.330452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570055, 39.220348, 38.238918>,  <26.801533, 39.188702, 38.183998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570055, 39.220348, 38.238918>,  <26.184258, 39.273094, 38.330452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570055, 39.220348, 38.238918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248678, 0.161612, 0.955008,
		-0.088948, -0.978005, 0.188665,
		0.964494, -0.131862, -0.228833,
		26.859404, 39.180790, 38.170269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463837, 38.818764, 38.813053>,  <26.184258, 39.273094, 38.330452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463837, 38.818764, 38.813053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804716, 38.979023, 38.678452>,  <27.009245, 39.075180, 38.597691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804716, 38.979023, 38.678452>,  <26.463837, 38.818764, 38.813053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804716, 38.979023, 38.678452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310430, 0.130533, 0.941591,
		0.421176, -0.906884, -0.013134,
		0.852200, 0.400653, -0.336501,
		27.060375, 39.099220, 38.577499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074389, 38.371460, 39.083931>,  <26.463837, 38.818764, 38.813053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074389, 38.371460, 39.083931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169323, 38.748695, 38.990761>,  <27.226284, 38.975037, 38.934860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169323, 38.748695, 38.990761>,  <27.074389, 38.371460, 39.083931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.169323, 38.748695, 38.990761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440242, 0.109316, 0.891200,
		0.865944, -0.314055, -0.389243,
		0.237335, 0.943091, -0.232921,
		27.240524, 39.031624, 38.920883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703888, 38.457420, 39.458252>,  <27.074389, 38.371460, 39.083931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.703888, 38.457420, 39.458252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655231, 38.842361, 39.361023>,  <27.626038, 39.073326, 39.302685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655231, 38.842361, 39.361023>,  <27.703888, 38.457420, 39.458252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655231, 38.842361, 39.361023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474603, 0.271477, 0.837289,
		0.871754, -0.013514, -0.489757,
		-0.121643, 0.962350, -0.243075,
		27.618738, 39.131065, 39.288101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364231, 38.752201, 39.482800>,  <27.703888, 38.457420, 39.458252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364231, 38.752201, 39.482800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115206, 39.063171, 39.518620>,  <27.965792, 39.249756, 39.540112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115206, 39.063171, 39.518620>,  <28.364231, 38.752201, 39.482800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115206, 39.063171, 39.518620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489579, 0.297650, 0.819584,
		0.610515, 0.554082, -0.565919,
		-0.622562, 0.777430, 0.089547,
		27.928436, 39.296402, 39.545483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767784, 39.271961, 39.574085>,  <28.364231, 38.752201, 39.482800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767784, 39.271961, 39.574085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420336, 39.373047, 39.744556>,  <28.211866, 39.433697, 39.846840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420336, 39.373047, 39.744556>,  <28.767784, 39.271961, 39.574085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420336, 39.373047, 39.744556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482043, 0.232111, 0.844843,
		0.114579, 0.939288, -0.323435,
		-0.868623, 0.252711, 0.426182,
		28.159748, 39.448860, 39.872410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981932, 39.757381, 40.012077>,  <28.767784, 39.271961, 39.574085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981932, 39.757381, 40.012077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608805, 39.697544, 40.143208>,  <28.384928, 39.661640, 40.221886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608805, 39.697544, 40.143208>,  <28.981932, 39.757381, 40.012077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608805, 39.697544, 40.143208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257355, 0.360218, 0.896667,
		-0.252225, 0.920796, -0.297519,
		-0.932819, -0.149594, 0.327827,
		28.328959, 39.652664, 40.241554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855114, 40.319260, 40.467163>,  <28.981932, 39.757381, 40.012077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855114, 40.319260, 40.467163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591541, 40.033913, 40.562588>,  <28.433397, 39.862705, 40.619843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591541, 40.033913, 40.562588>,  <28.855114, 40.319260, 40.467163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591541, 40.033913, 40.562588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118166, 0.215038, 0.969430,
		-0.742863, 0.666978, -0.057399,
		-0.658932, -0.713371, 0.238558,
		28.393862, 39.819901, 40.634155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274879, 40.650379, 40.892868>,  <28.855114, 40.319260, 40.467163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274879, 40.650379, 40.892868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256607, 40.258415, 40.970528>,  <28.245644, 40.023239, 41.017124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256607, 40.258415, 40.970528>,  <28.274879, 40.650379, 40.892868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.256607, 40.258415, 40.970528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124785, 0.187233, 0.974358,
		-0.991132, 0.068736, 0.113725,
		-0.045680, -0.979908, 0.194149,
		28.242903, 39.964443, 41.028774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.604731, 40.387665, 41.360912>,  <28.274879, 40.650379, 40.892868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.604731, 40.387665, 41.360912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.961990, 40.208832, 41.380508>,  <28.176346, 40.101532, 41.392265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.961990, 40.208832, 41.380508>,  <27.604731, 40.387665, 41.360912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961990, 40.208832, 41.380508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151020, 0.400714, 0.903671,
		-0.423646, -0.799716, 0.425416,
		0.893150, -0.447083, 0.048988,
		28.229935, 40.074707, 41.395206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680441, 40.024067, 41.991074>,  <27.604731, 40.387665, 41.360912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680441, 40.024067, 41.991074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029570, 40.146919, 41.839359>,  <28.239046, 40.220631, 41.748333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029570, 40.146919, 41.839359>,  <27.680441, 40.024067, 41.991074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029570, 40.146919, 41.839359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318117, 0.231338, 0.919394,
		0.370114, -0.923122, 0.104214,
		0.872821, 0.307128, -0.379282,
		28.291416, 40.239059, 41.725574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218750, 39.730522, 42.388676>,  <27.680441, 40.024067, 41.991074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218750, 39.730522, 42.388676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325676, 40.086201, 42.240154>,  <28.389832, 40.299610, 42.151039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325676, 40.086201, 42.240154>,  <28.218750, 39.730522, 42.388676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325676, 40.086201, 42.240154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134455, 0.347142, 0.928124,
		0.954183, -0.298024, -0.026761,
		0.267313, 0.889199, -0.371308,
		28.405870, 40.352959, 42.128761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860140, 39.858597, 42.571449>,  <28.218750, 39.730522, 42.388676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860140, 39.858597, 42.571449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684410, 40.215645, 42.531006>,  <28.578972, 40.429874, 42.506741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684410, 40.215645, 42.531006>,  <28.860140, 39.858597, 42.571449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684410, 40.215645, 42.531006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241613, 0.225818, 0.943732,
		0.865227, 0.390175, -0.314876,
		-0.439325, 0.892620, -0.101112,
		28.552612, 40.483429, 42.500671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239124, 39.760040, 43.121956>,  <28.860140, 39.858597, 42.571449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239124, 39.760040, 43.121956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093250, 39.389168, 43.087700>,  <28.005726, 39.166645, 43.067146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093250, 39.389168, 43.087700>,  <28.239124, 39.760040, 43.121956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093250, 39.389168, 43.087700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613628, -0.308490, 0.726838,
		-0.700332, 0.212516, 0.681448,
		-0.364685, -0.927184, -0.085640,
		27.983845, 39.111012, 43.062008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.189083, 39.538734, 43.798988>,  <28.239124, 39.760040, 43.121956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.189083, 39.538734, 43.798988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240067, 39.256088, 43.520580>,  <28.270657, 39.086498, 43.353535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240067, 39.256088, 43.520580>,  <28.189083, 39.538734, 43.798988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240067, 39.256088, 43.520580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773555, -0.368388, 0.515658,
		-0.620779, -0.604135, 0.499654,
		0.127460, -0.706620, -0.696019,
		28.278305, 39.044102, 43.311775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468971, 39.021111, 44.161217>,  <28.189083, 39.538734, 43.798988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468971, 39.021111, 44.161217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508142, 38.873981, 43.791325>,  <28.531645, 38.785706, 43.569389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508142, 38.873981, 43.791325>,  <28.468971, 39.021111, 44.161217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508142, 38.873981, 43.791325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757371, -0.575239, 0.309013,
		-0.645600, -0.730622, 0.222245,
		0.097927, -0.367821, -0.924726,
		28.537521, 38.763634, 43.513908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461868, 38.300369, 44.291630>,  <28.468971, 39.021111, 44.161217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461868, 38.300369, 44.291630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644672, 38.408150, 43.952564>,  <28.754354, 38.472816, 43.749123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644672, 38.408150, 43.952564>,  <28.461868, 38.300369, 44.291630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644672, 38.408150, 43.952564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809076, -0.521846, 0.270322,
		-0.369514, -0.809366, -0.456493,
		0.457009, 0.269450, -0.847667,
		28.781775, 38.488983, 43.698265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782562, 37.677864, 43.947327>,  <28.461868, 38.300369, 44.291630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782562, 37.677864, 43.947327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948980, 38.032669, 43.867218>,  <29.048832, 38.245552, 43.819153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948980, 38.032669, 43.867218>,  <28.782562, 37.677864, 43.947327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948980, 38.032669, 43.867218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862727, -0.315417, 0.395240,
		0.287416, -0.337216, -0.896481,
		0.416047, 0.887016, -0.200270,
		29.073795, 38.298775, 43.807137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971802, 38.029606, 43.388836>,  <28.782562, 37.677864, 43.947327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971802, 38.029606, 43.388836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990131, 37.640537, 43.479881>,  <29.001129, 37.407097, 43.534508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990131, 37.640537, 43.479881>,  <28.971802, 38.029606, 43.388836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990131, 37.640537, 43.479881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196450, -0.232179, -0.952628,
		0.979443, -0.001063, -0.201721,
		0.045822, -0.972673, 0.227615,
		29.003878, 37.348736, 43.548164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530077, 37.687260, 42.904011>,  <28.971802, 38.029606, 43.388836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530077, 37.687260, 42.904011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.219555, 37.453777, 42.999207>,  <29.033241, 37.313690, 43.056324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.219555, 37.453777, 42.999207>,  <29.530077, 37.687260, 42.904011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219555, 37.453777, 42.999207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141563, -0.206468, -0.968158,
		0.614255, -0.785278, 0.077652,
		-0.776306, -0.583704, 0.237990,
		28.986664, 37.278667, 43.070602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629700, 36.880230, 42.727245>,  <29.530077, 37.687260, 42.904011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629700, 36.880230, 42.727245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236483, 36.952156, 42.741661>,  <29.000553, 36.995312, 42.750313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236483, 36.952156, 42.741661>,  <29.629700, 36.880230, 42.727245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236483, 36.952156, 42.741661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103479, -0.381611, -0.918512,
		-0.151406, -0.906664, 0.393746,
		-0.983040, 0.179812, 0.036042,
		28.941570, 37.006100, 42.752472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297239, 36.236122, 42.661007>,  <29.629700, 36.880230, 42.727245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297239, 36.236122, 42.661007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109734, 36.560467, 42.520855>,  <28.997231, 36.755074, 42.436764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109734, 36.560467, 42.520855>,  <29.297239, 36.236122, 42.661007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109734, 36.560467, 42.520855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138335, -0.459154, -0.877520,
		-0.872423, -0.362882, 0.327406,
		-0.468766, 0.810860, -0.350377,
		28.969103, 36.803726, 42.415741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557390, 36.022888, 42.321976>,  <29.297239, 36.236122, 42.661007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557390, 36.022888, 42.321976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665108, 36.371845, 42.158798>,  <28.729738, 36.581219, 42.060894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665108, 36.371845, 42.158798>,  <28.557390, 36.022888, 42.321976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665108, 36.371845, 42.158798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198171, -0.364326, -0.909942,
		-0.942448, 0.325885, 0.074771,
		0.269295, 0.872391, -0.407939,
		28.745895, 36.633564, 42.036415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101416, 36.079041, 41.734833>,  <28.557390, 36.022888, 42.321976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.101416, 36.079041, 41.734833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374512, 36.360210, 41.655064>,  <28.538368, 36.528912, 41.607204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374512, 36.360210, 41.655064>,  <28.101416, 36.079041, 41.734833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374512, 36.360210, 41.655064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204238, -0.078455, -0.975772,
		-0.701538, 0.706926, 0.090000,
		0.682738, 0.702923, -0.199420,
		28.579332, 36.571087, 41.595238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804552, 36.547062, 41.213177>,  <28.101416, 36.079041, 41.734833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804552, 36.547062, 41.213177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197287, 36.618961, 41.188877>,  <28.432928, 36.662102, 41.174297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197287, 36.618961, 41.188877>,  <27.804552, 36.547062, 41.213177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197287, 36.618961, 41.188877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058617, -0.017130, -0.998134,
		-0.180451, 0.983564, -0.006282,
		0.981836, 0.179746, -0.060745,
		28.491837, 36.672886, 41.170654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925581, 37.013706, 40.597580>,  <27.804552, 36.547062, 41.213177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925581, 37.013706, 40.597580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280212, 36.841770, 40.665951>,  <28.492992, 36.738609, 40.706974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280212, 36.841770, 40.665951>,  <27.925581, 37.013706, 40.597580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280212, 36.841770, 40.665951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089923, -0.202312, -0.975184,
		0.453750, 0.879949, -0.140714,
		0.886580, -0.429837, 0.170926,
		28.546186, 36.712818, 40.717228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462458, 37.360947, 40.102173>,  <27.925581, 37.013706, 40.597580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462458, 37.360947, 40.102173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596924, 37.003948, 40.222466>,  <28.677603, 36.789749, 40.294640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596924, 37.003948, 40.222466>,  <28.462458, 37.360947, 40.102173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596924, 37.003948, 40.222466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195442, -0.246254, -0.949295,
		0.921301, 0.377896, 0.091649,
		0.336165, -0.892499, 0.300731,
		28.697773, 36.736198, 40.312683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087191, 37.309921, 39.806976>,  <28.462458, 37.360947, 40.102173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087191, 37.309921, 39.806976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999752, 36.929440, 39.894093>,  <28.947289, 36.701153, 39.946362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999752, 36.929440, 39.894093>,  <29.087191, 37.309921, 39.806976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999752, 36.929440, 39.894093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251780, -0.270611, -0.929181,
		0.942774, -0.148278, 0.298647,
		-0.218594, -0.951201, 0.217792,
		28.934174, 36.644081, 39.959431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705296, 36.850311, 39.549507>,  <29.087191, 37.309921, 39.806976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705296, 36.850311, 39.549507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384548, 36.612743, 39.575634>,  <29.192101, 36.470203, 39.591309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384548, 36.612743, 39.575634>,  <29.705296, 36.850311, 39.549507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384548, 36.612743, 39.575634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092024, -0.230772, -0.968646,
		0.590372, -0.770716, 0.239704,
		-0.801868, -0.593920, 0.065317,
		29.143988, 36.434566, 39.595230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877710, 36.268719, 39.038219>,  <29.705296, 36.850311, 39.549507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877710, 36.268719, 39.038219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489704, 36.221504, 39.123203>,  <29.256901, 36.193176, 39.174194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489704, 36.221504, 39.123203>,  <29.877710, 36.268719, 39.038219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489704, 36.221504, 39.123203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113206, -0.554125, -0.824700,
		0.215075, -0.824022, 0.524147,
		-0.970014, -0.118035, 0.212463,
		29.198700, 36.186092, 39.186943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702290, 35.584183, 38.847649>,  <29.877710, 36.268719, 39.038219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702290, 35.584183, 38.847649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.386030, 35.828392, 38.829136>,  <29.196276, 35.974918, 38.818027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.386030, 35.828392, 38.829136>,  <29.702290, 35.584183, 38.847649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386030, 35.828392, 38.829136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213252, -0.345451, -0.913886,
		-0.573936, -0.712691, 0.403324,
		-0.790646, 0.610521, -0.046284,
		29.148836, 36.011547, 38.815250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132021, 35.195148, 38.663448>,  <29.702290, 35.584183, 38.847649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132021, 35.195148, 38.663448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040590, 35.570541, 38.559914>,  <28.985733, 35.795776, 38.497791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040590, 35.570541, 38.559914>,  <29.132021, 35.195148, 38.663448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040590, 35.570541, 38.559914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385689, -0.331421, -0.861048,
		-0.893866, -0.096982, 0.437719,
		-0.228576, 0.938485, -0.258841,
		28.972017, 35.852085, 38.482262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480129, 35.060791, 38.489372>,  <29.132021, 35.195148, 38.663448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480129, 35.060791, 38.489372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591902, 35.401886, 38.312851>,  <28.658964, 35.606544, 38.206936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591902, 35.401886, 38.312851>,  <28.480129, 35.060791, 38.489372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591902, 35.401886, 38.312851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602279, -0.202283, -0.772232,
		-0.747783, 0.481573, 0.457065,
		0.279430, 0.852742, -0.441305,
		28.675730, 35.657707, 38.180458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888020, 35.239521, 38.142433>,  <28.480129, 35.060791, 38.489372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888020, 35.239521, 38.142433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139980, 35.485519, 37.952694>,  <28.291157, 35.633118, 37.838852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139980, 35.485519, 37.952694>,  <27.888020, 35.239521, 38.142433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139980, 35.485519, 37.952694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488494, -0.161106, -0.857565,
		-0.603820, 0.771896, 0.198941,
		0.629901, 0.614997, -0.474346,
		28.328951, 35.670017, 37.810390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546356, 35.814060, 37.886868>,  <27.888020, 35.239521, 38.142433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546356, 35.814060, 37.886868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888380, 35.803383, 37.679729>,  <28.093594, 35.796978, 37.555447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888380, 35.803383, 37.679729>,  <27.546356, 35.814060, 37.886868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888380, 35.803383, 37.679729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515239, -0.156108, -0.842710,
		-0.058344, 0.987379, -0.147235,
		0.855058, -0.026694, -0.517844,
		28.144897, 35.795376, 37.524376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487448, 36.278843, 37.374844>,  <27.546356, 35.814060, 37.886868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487448, 36.278843, 37.374844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773460, 36.042702, 37.225063>,  <27.945068, 35.901016, 37.135197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773460, 36.042702, 37.225063>,  <27.487448, 36.278843, 37.374844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773460, 36.042702, 37.225063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531586, -0.111278, -0.839662,
		0.454030, 0.799438, -0.393391,
		0.715033, -0.590353, -0.374447,
		27.987970, 35.865597, 37.112728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802347, 36.565495, 36.653233>,  <27.487448, 36.278843, 37.374844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802347, 36.565495, 36.653233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869009, 36.173645, 36.698071>,  <27.909006, 35.938534, 36.724972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869009, 36.173645, 36.698071>,  <27.802347, 36.565495, 36.653233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.869009, 36.173645, 36.698071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355258, -0.165701, -0.919964,
		0.919792, 0.113495, -0.375634,
		0.166654, -0.979623, 0.112090,
		27.919004, 35.879757, 36.731697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116039, 36.403900, 36.074890>,  <27.802347, 36.565495, 36.653233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116039, 36.403900, 36.074890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964109, 36.059292, 36.209660>,  <27.872952, 35.852528, 36.290520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964109, 36.059292, 36.209660>,  <28.116039, 36.403900, 36.074890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964109, 36.059292, 36.209660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475232, -0.130756, -0.870091,
		0.793654, -0.490600, -0.359756,
		-0.379827, -0.861519, 0.336924,
		27.850161, 35.800835, 36.310738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378601, 35.859634, 35.625046>,  <28.116039, 36.403900, 36.074890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378601, 35.859634, 35.625046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066092, 35.687672, 35.806061>,  <27.878586, 35.584492, 35.914669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066092, 35.687672, 35.806061>,  <28.378601, 35.859634, 35.625046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066092, 35.687672, 35.806061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208874, -0.503138, -0.838584,
		0.588205, -0.749686, 0.303290,
		-0.781272, -0.429910, 0.452539,
		27.831711, 35.558697, 35.941822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357971, 35.222576, 35.373299>,  <28.378601, 35.859634, 35.625046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357971, 35.222576, 35.373299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990400, 35.272724, 35.522888>,  <27.769857, 35.302814, 35.612640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990400, 35.272724, 35.522888>,  <28.357971, 35.222576, 35.373299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990400, 35.272724, 35.522888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394424, -0.297686, -0.869375,
		0.002330, -0.946396, 0.323002,
		-0.918925, 0.125374, 0.373975,
		27.714724, 35.310337, 35.635082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056602, 34.499523, 35.386681>,  <28.357971, 35.222576, 35.373299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056602, 34.499523, 35.386681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.789362, 34.797138, 35.389675>,  <27.629019, 34.975708, 35.391472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.789362, 34.797138, 35.389675>,  <28.056602, 34.499523, 35.386681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789362, 34.797138, 35.389675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427143, -0.375272, -0.822630,
		-0.609254, -0.552797, 0.568528,
		-0.668100, 0.744033, 0.007487,
		27.588932, 35.020348, 35.391922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543297, 34.283596, 34.876900>,  <28.056602, 34.499523, 35.386681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543297, 34.283596, 34.876900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742525, 34.285343, 35.223751>,  <28.862062, 34.286392, 35.431862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742525, 34.285343, 35.223751>,  <28.543297, 34.283596, 34.876900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742525, 34.285343, 35.223751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862173, -0.109320, -0.494678,
		0.092635, 0.993997, -0.058212,
		0.498073, 0.004364, 0.867124,
		28.891947, 34.286652, 35.483887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217672, 34.456856, 34.695427>,  <28.543297, 34.283596, 34.876900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217672, 34.456856, 34.695427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.300928, 34.371910, 35.077335>,  <29.350882, 34.320942, 35.306480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.300928, 34.371910, 35.077335>,  <29.217672, 34.456856, 34.695427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300928, 34.371910, 35.077335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960422, -0.140370, -0.240594,
		0.185114, 0.967056, 0.174743,
		0.208139, -0.212364, 0.954767,
		29.363369, 34.308201, 35.363766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843681, 34.833096, 34.776680>,  <29.217672, 34.456856, 34.695427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843681, 34.833096, 34.776680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809587, 34.511620, 35.012245>,  <29.789131, 34.318733, 35.153584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809587, 34.511620, 35.012245>,  <29.843681, 34.833096, 34.776680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809587, 34.511620, 35.012245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944104, -0.254051, -0.210061,
		0.318437, 0.538088, 0.780422,
		-0.085235, -0.803691, 0.588910,
		29.784018, 34.270512, 35.188919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481541, 34.807365, 34.960899>,  <29.843681, 34.833096, 34.776680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481541, 34.807365, 34.960899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311918, 34.453480, 35.038307>,  <30.210144, 34.241146, 35.084751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311918, 34.453480, 35.038307>,  <30.481541, 34.807365, 34.960899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311918, 34.453480, 35.038307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894467, -0.442609, -0.063455,
		0.141794, 0.146191, 0.979042,
		-0.424056, -0.884718, 0.193522,
		30.184702, 34.188065, 35.096363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138260, 34.424370, 34.736771>,  <30.481541, 34.807365, 34.960899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138260, 34.424370, 34.736771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018959, 34.787155, 34.855743>,  <30.947378, 35.004826, 34.927128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018959, 34.787155, 34.855743>,  <31.138260, 34.424370, 34.736771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018959, 34.787155, 34.855743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434043, -0.148661, 0.888542,
		0.850089, 0.394110, -0.349321,
		-0.298253, 0.906960, 0.297436,
		30.929483, 35.059242, 34.944973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776615, 34.813145, 35.079235>,  <31.138260, 34.424370, 34.736771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776615, 34.813145, 35.079235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406702, 34.901478, 35.203175>,  <31.184753, 34.954479, 35.277538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406702, 34.901478, 35.203175>,  <31.776615, 34.813145, 35.079235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406702, 34.901478, 35.203175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254017, -0.247963, 0.934874,
		0.283282, 0.943264, 0.173217,
		-0.924785, 0.220833, 0.309848,
		31.129267, 34.967728, 35.296127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820814, 35.207573, 35.651878>,  <31.776615, 34.813145, 35.079235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820814, 35.207573, 35.651878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485640, 34.989300, 35.655712>,  <31.284534, 34.858337, 35.658012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485640, 34.989300, 35.655712>,  <31.820814, 35.207573, 35.651878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485640, 34.989300, 35.655712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199694, -0.290213, 0.935895,
		-0.507920, 0.786134, 0.352150,
		-0.837938, -0.545682, 0.009581,
		31.234259, 34.825596, 35.658588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376354, 35.420490, 36.193333>,  <31.820814, 35.207573, 35.651878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376354, 35.420490, 36.193333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311022, 35.031307, 36.128014>,  <31.271822, 34.797798, 36.088821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311022, 35.031307, 36.128014>,  <31.376354, 35.420490, 36.193333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311022, 35.031307, 36.128014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318071, -0.208618, 0.924830,
		-0.933892, 0.099114, 0.343545,
		-0.163333, -0.972962, -0.163302,
		31.262022, 34.739418, 36.079021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179573, 35.148090, 36.796658>,  <31.376354, 35.420490, 36.193333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179573, 35.148090, 36.796658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339668, 34.833900, 36.607838>,  <31.435724, 34.645386, 36.494545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339668, 34.833900, 36.607838>,  <31.179573, 35.148090, 36.796658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339668, 34.833900, 36.607838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508695, -0.238036, 0.827387,
		-0.762260, -0.571282, 0.304298,
		0.400237, -0.785478, -0.472053,
		31.459740, 34.598255, 36.466221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184010, 34.624237, 37.291115>,  <31.179573, 35.148090, 36.796658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184010, 34.624237, 37.291115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450857, 34.500992, 37.019817>,  <31.610966, 34.427044, 36.857040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450857, 34.500992, 37.019817>,  <31.184010, 34.624237, 37.291115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450857, 34.500992, 37.019817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525751, -0.450283, 0.721687,
		-0.527766, -0.838039, -0.138399,
		0.667120, -0.308118, -0.678243,
		31.650993, 34.408558, 36.816345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413485, 34.004574, 37.578903>,  <31.184010, 34.624237, 37.291115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413485, 34.004574, 37.578903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699272, 34.103779, 37.317211>,  <31.870745, 34.163303, 37.160194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699272, 34.103779, 37.317211>,  <31.413485, 34.004574, 37.578903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699272, 34.103779, 37.317211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694752, -0.362108, 0.621448,
		-0.082772, -0.898535, -0.431026,
		0.714471, 0.248017, -0.654231,
		31.913614, 34.178185, 37.120941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878185, 33.417259, 37.513897>,  <31.413485, 34.004574, 37.578903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878185, 33.417259, 37.513897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097870, 33.722599, 37.377857>,  <32.229679, 33.905804, 37.296234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097870, 33.722599, 37.377857>,  <31.878185, 33.417259, 37.513897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097870, 33.722599, 37.377857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785024, -0.331720, 0.523163,
		0.286535, -0.554316, -0.781429,
		0.549213, 0.763345, -0.340102,
		32.262634, 33.951603, 37.275826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561562, 33.197655, 37.293663>,  <31.878185, 33.417259, 37.513897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561562, 33.197655, 37.293663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631271, 33.583363, 37.373482>,  <32.673100, 33.814785, 37.421375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631271, 33.583363, 37.373482>,  <32.561562, 33.197655, 37.293663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631271, 33.583363, 37.373482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855986, -0.248526, 0.453347,
		0.486740, 0.091803, -0.868710,
		0.174278, 0.964265, 0.199550,
		32.683556, 33.872643, 37.433346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302841, 33.414902, 37.223644>,  <32.561562, 33.197655, 37.293663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302841, 33.414902, 37.223644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163338, 33.695969, 37.471718>,  <33.079636, 33.864609, 37.620564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163338, 33.695969, 37.471718>,  <33.302841, 33.414902, 37.223644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163338, 33.695969, 37.471718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752003, -0.185123, 0.632631,
		0.559338, 0.687015, -0.463844,
		-0.348759, 0.702667, 0.620183,
		33.058708, 33.906769, 37.657772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915932, 33.704636, 37.424931>,  <33.302841, 33.414902, 37.223644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915932, 33.704636, 37.424931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633343, 33.822903, 37.682137>,  <33.463787, 33.893864, 37.836460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633343, 33.822903, 37.682137>,  <33.915932, 33.704636, 37.424931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633343, 33.822903, 37.682137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659928, -0.053054, 0.749453,
		0.255706, 0.953816, -0.157640,
		-0.706477, 0.295670, 0.643016,
		33.421398, 33.911602, 37.875042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289261, 34.117485, 37.933041>,  <33.915932, 33.704636, 37.424931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289261, 34.117485, 37.933041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935886, 34.035362, 38.101509>,  <33.723862, 33.986088, 38.202591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935886, 34.035362, 38.101509>,  <34.289261, 34.117485, 37.933041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935886, 34.035362, 38.101509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450834, -0.127627, 0.883437,
		-0.127627, 0.970339, 0.205311,
		-0.883437, -0.205311, 0.421173,
		33.670856, 33.973770, 38.227859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288769, 34.475571, 38.562916>,  <34.289261, 34.117485, 37.933041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288769, 34.475571, 38.562916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010117, 34.190025, 38.591503>,  <33.842926, 34.018700, 38.608654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010117, 34.190025, 38.591503>,  <34.288769, 34.475571, 38.562916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010117, 34.190025, 38.591503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148485, -0.046006, 0.987844,
		-0.701898, 0.698772, 0.138047,
		-0.696629, -0.713864, 0.071465,
		33.801128, 33.975864, 38.612942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010670, 34.643063, 39.163906>,  <34.288769, 34.475571, 38.562916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010670, 34.643063, 39.163906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905540, 34.261280, 39.107430>,  <33.842464, 34.032211, 39.073544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905540, 34.261280, 39.107430>,  <34.010670, 34.643063, 39.163906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905540, 34.261280, 39.107430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048014, -0.159092, 0.986095,
		-0.963649, 0.252389, 0.087640,
		-0.262822, -0.954458, -0.141191,
		33.826694, 33.974941, 39.065071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615028, 34.579075, 39.625420>,  <34.010670, 34.643063, 39.163906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615028, 34.579075, 39.625420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710438, 34.196693, 39.556992>,  <33.767685, 33.967266, 39.515934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710438, 34.196693, 39.556992>,  <33.615028, 34.579075, 39.625420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710438, 34.196693, 39.556992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149542, -0.137898, 0.979092,
		-0.959554, -0.259119, 0.110063,
		0.238524, -0.955951, -0.171070,
		33.781994, 33.909908, 39.505672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099422, 34.057800, 40.064831>,  <33.615028, 34.579075, 39.625420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099422, 34.057800, 40.064831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431988, 33.854107, 39.975891>,  <33.631527, 33.731892, 39.922527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431988, 33.854107, 39.975891>,  <33.099422, 34.057800, 40.064831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431988, 33.854107, 39.975891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056636, -0.475729, 0.877767,
		-0.552765, -0.717191, -0.424367,
		0.831410, -0.509233, -0.222348,
		33.681412, 33.701336, 39.909187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976475, 33.457756, 40.417248>,  <33.099422, 34.057800, 40.064831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976475, 33.457756, 40.417248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366646, 33.415039, 40.340160>,  <33.600746, 33.389408, 40.293907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366646, 33.415039, 40.340160>,  <32.976475, 33.457756, 40.417248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366646, 33.415039, 40.340160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096372, -0.579801, 0.809038,
		-0.198138, -0.807729, -0.555261,
		0.975425, -0.106790, -0.192723,
		33.659275, 33.383003, 40.282345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281914, 32.656822, 40.389534>,  <32.976475, 33.457756, 40.417248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281914, 32.656822, 40.389534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594105, 32.896690, 40.460251>,  <33.781418, 33.040611, 40.502682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594105, 32.896690, 40.460251>,  <33.281914, 32.656822, 40.389534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594105, 32.896690, 40.460251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284322, -0.592307, 0.753879,
		0.556793, -0.538118, -0.632780,
		0.780475, 0.599668, 0.176793,
		33.828247, 33.076591, 40.513290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843040, 32.198692, 40.442959>,  <33.281914, 32.656822, 40.389534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843040, 32.198692, 40.442959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925850, 32.537434, 40.638912>,  <33.975536, 32.740677, 40.756485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925850, 32.537434, 40.638912>,  <33.843040, 32.198692, 40.442959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925850, 32.537434, 40.638912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350263, -0.531699, 0.771111,
		0.913487, 0.011953, -0.406693,
		0.207021, 0.846849, 0.489886,
		33.987957, 32.791489, 40.785877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454044, 32.110424, 40.703823>,  <33.843040, 32.198692, 40.442959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454044, 32.110424, 40.703823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329906, 32.415447, 40.930870>,  <34.255424, 32.598461, 41.067097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329906, 32.415447, 40.930870>,  <34.454044, 32.110424, 40.703823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329906, 32.415447, 40.930870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418813, -0.426350, 0.801761,
		0.853395, 0.486545, -0.187057,
		-0.310341, 0.762561, 0.567617,
		34.236805, 32.644215, 41.101154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037323, 32.191738, 41.128277>,  <34.454044, 32.110424, 40.703823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037323, 32.191738, 41.128277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727779, 32.379749, 41.298084>,  <34.542053, 32.492558, 41.399967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727779, 32.379749, 41.298084>,  <35.037323, 32.191738, 41.128277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727779, 32.379749, 41.298084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220414, -0.428511, 0.876240,
		0.593769, 0.771655, 0.228006,
		-0.773858, 0.470029, 0.424520,
		34.495621, 32.520760, 41.425442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197987, 32.689243, 41.783970>,  <35.037323, 32.191738, 41.128277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197987, 32.689243, 41.783970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835194, 32.523602, 41.814697>,  <34.617519, 32.424217, 41.833134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835194, 32.523602, 41.814697>,  <35.197987, 32.689243, 41.783970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835194, 32.523602, 41.814697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203061, -0.270149, 0.941162,
		-0.368987, 0.869215, 0.329109,
		-0.906981, -0.414106, 0.076822,
		34.563099, 32.399368, 41.837746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151642, 32.710110, 42.556244>,  <35.197987, 32.689243, 41.783970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151642, 32.710110, 42.556244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814976, 32.513542, 42.466709>,  <34.612976, 32.395603, 42.412991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814976, 32.513542, 42.466709>,  <35.151642, 32.710110, 42.556244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814976, 32.513542, 42.466709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087300, -0.532891, 0.841668,
		-0.532891, 0.688865, 0.491419,
		-0.841668, -0.491419, -0.223835,
		34.562477, 32.366116, 42.399559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575039, 32.793503, 43.139881>,  <35.151642, 32.710110, 42.556244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575039, 32.793503, 43.139881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491539, 32.445240, 42.961723>,  <34.441441, 32.236282, 42.854828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491539, 32.445240, 42.961723>,  <34.575039, 32.793503, 43.139881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491539, 32.445240, 42.961723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008015, -0.456932, 0.889465,
		-0.977937, 0.182103, 0.102362,
		-0.208747, -0.870661, -0.445391,
		34.428913, 32.184040, 42.828106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251560, 32.471302, 43.629971>,  <34.575039, 32.793503, 43.139881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251560, 32.471302, 43.629971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341972, 32.157719, 43.398693>,  <34.396221, 31.969568, 43.259926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341972, 32.157719, 43.398693>,  <34.251560, 32.471302, 43.629971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341972, 32.157719, 43.398693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098372, -0.608894, 0.787128,
		-0.969140, -0.121038, -0.214750,
		0.226032, -0.783963, -0.578197,
		34.409782, 31.922529, 43.225235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799877, 32.009991, 43.887054>,  <34.251560, 32.471302, 43.629971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799877, 32.009991, 43.887054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091084, 31.806608, 43.703117>,  <34.265808, 31.684578, 43.592754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091084, 31.806608, 43.703117>,  <33.799877, 32.009991, 43.887054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091084, 31.806608, 43.703117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087967, -0.595933, 0.798202,
		-0.679895, -0.621554, -0.389120,
		0.728014, -0.508463, -0.459848,
		34.309490, 31.654070, 43.565163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647068, 31.287210, 44.000290>,  <33.799877, 32.009991, 43.887054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647068, 31.287210, 44.000290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037090, 31.317972, 43.917011>,  <34.271103, 31.336430, 43.867043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037090, 31.317972, 43.917011>,  <33.647068, 31.287210, 44.000290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037090, 31.317972, 43.917011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216161, -0.541865, 0.812192,
		-0.050356, -0.836940, -0.544974,
		0.975058, 0.076904, -0.208200,
		34.329609, 31.341043, 43.854549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950043, 30.629189, 44.150471>,  <33.647068, 31.287210, 44.000290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950043, 30.629189, 44.150471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284119, 30.840254, 44.088459>,  <34.484562, 30.966892, 44.051250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284119, 30.840254, 44.088459>,  <33.950043, 30.629189, 44.150471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284119, 30.840254, 44.088459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472273, -0.543666, 0.693819,
		0.281818, -0.652685, -0.703264,
		0.835187, 0.527663, -0.155030,
		34.534676, 30.998552, 44.041950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416786, 30.103542, 43.995754>,  <33.950043, 30.629189, 44.150471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416786, 30.103542, 43.995754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627697, 30.423405, 44.110664>,  <34.754246, 30.615322, 44.179611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627697, 30.423405, 44.110664>,  <34.416786, 30.103542, 43.995754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627697, 30.423405, 44.110664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434443, -0.544279, 0.717648,
		0.730230, -0.253596, -0.634392,
		0.527279, 0.799656, 0.287276,
		34.785881, 30.663301, 44.196846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101074, 29.875813, 44.050510>,  <34.416786, 30.103542, 43.995754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101074, 29.875813, 44.050510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113033, 30.207804, 44.273308>,  <35.120209, 30.406998, 44.406986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113033, 30.207804, 44.273308>,  <35.101074, 29.875813, 44.050510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113033, 30.207804, 44.273308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532970, -0.484655, 0.693580,
		0.845606, 0.276127, -0.456842,
		0.029895, 0.829978, 0.556994,
		35.122002, 30.456797, 44.440407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738506, 29.859838, 44.333370>,  <35.101074, 29.875813, 44.050510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738506, 29.859838, 44.333370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555500, 30.122259, 44.573463>,  <35.445698, 30.279711, 44.717518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555500, 30.122259, 44.573463>,  <35.738506, 29.859838, 44.333370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555500, 30.122259, 44.573463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472791, -0.392218, 0.789072,
		0.753092, 0.644797, -0.130729,
		-0.457516, 0.656051, 0.600230,
		35.418243, 30.319075, 44.753532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224842, 30.038967, 44.739197>,  <35.738506, 29.859838, 44.333370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224842, 30.038967, 44.739197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905300, 30.146374, 44.954506>,  <35.713577, 30.210817, 45.083691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905300, 30.146374, 44.954506>,  <36.224842, 30.038967, 44.739197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905300, 30.146374, 44.954506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482635, -0.247973, 0.839984,
		0.359026, 0.930810, 0.068498,
		-0.798851, 0.268517, 0.538271,
		35.665646, 30.226929, 45.115986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422638, 30.552525, 45.240921>,  <36.224842, 30.038967, 44.739197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422638, 30.552525, 45.240921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099304, 30.362183, 45.379574>,  <35.905304, 30.247978, 45.462765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099304, 30.362183, 45.379574>,  <36.422638, 30.552525, 45.240921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099304, 30.362183, 45.379574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487438, -0.210787, 0.847333,
		-0.330142, 0.853892, 0.402337,
		-0.808338, -0.475855, 0.346630,
		35.856804, 30.219427, 45.483562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251904, 30.740732, 45.930161>,  <36.422638, 30.552525, 45.240921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251904, 30.740732, 45.930161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996582, 30.433380, 45.948784>,  <35.843391, 30.248970, 45.959957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996582, 30.433380, 45.948784>,  <36.251904, 30.740732, 45.930161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996582, 30.433380, 45.948784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264436, -0.162062, 0.950689,
		-0.722942, 0.619137, 0.306632,
		-0.638300, -0.768378, 0.046561,
		35.805092, 30.202868, 45.962753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007019, 30.672159, 46.647121>,  <36.251904, 30.740732, 45.930161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007019, 30.672159, 46.647121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902077, 30.321745, 46.485268>,  <35.839111, 30.111496, 46.388157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902077, 30.321745, 46.485268>,  <36.007019, 30.672159, 46.647121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902077, 30.321745, 46.485268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350540, -0.477199, 0.805856,
		-0.899049, 0.069584, 0.432283,
		-0.262359, -0.876036, -0.404633,
		35.823368, 30.058933, 46.363876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530106, 30.265965, 47.131954>,  <36.007019, 30.672159, 46.647121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530106, 30.265965, 47.131954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729977, 30.022789, 46.885139>,  <35.849899, 29.876884, 46.737053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729977, 30.022789, 46.885139>,  <35.530106, 30.265965, 47.131954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729977, 30.022789, 46.885139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429750, -0.444500, 0.785961,
		-0.752088, -0.657899, 0.039154,
		0.499679, -0.607939, -0.617035,
		35.879879, 29.840408, 46.700027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467987, 29.590553, 47.431458>,  <35.530106, 30.265965, 47.131954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467987, 29.590553, 47.431458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763374, 29.543484, 47.165882>,  <35.940605, 29.515242, 47.006538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763374, 29.543484, 47.165882>,  <35.467987, 29.590553, 47.431458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763374, 29.543484, 47.165882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444512, -0.655441, 0.610579,
		-0.507023, -0.746023, -0.431715,
		0.738469, -0.117675, -0.663939,
		35.984917, 29.508181, 46.966702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568947, 28.933474, 47.424587>,  <35.467987, 29.590553, 47.431458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568947, 28.933474, 47.424587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903198, 29.070921, 47.253174>,  <36.103748, 29.153389, 47.150326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903198, 29.070921, 47.253174>,  <35.568947, 28.933474, 47.424587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903198, 29.070921, 47.253174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529854, -0.709943, 0.463935,
		-0.144820, -0.614742, -0.775320,
		0.835633, 0.343619, -0.428537,
		36.153889, 29.174006, 47.124611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816429, 28.367325, 47.033409>,  <35.568947, 28.933474, 47.424587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816429, 28.367325, 47.033409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115917, 28.619843, 47.114288>,  <36.295612, 28.771353, 47.162815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115917, 28.619843, 47.114288>,  <35.816429, 28.367325, 47.033409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115917, 28.619843, 47.114288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455291, -0.711437, 0.535321,
		0.481793, -0.308749, -0.820091,
		0.748723, 0.631294, 0.202195,
		36.340534, 28.809231, 47.174946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411804, 27.911953, 47.035305>,  <35.816429, 28.367325, 47.033409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411804, 27.911953, 47.035305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570930, 28.231562, 47.215664>,  <36.666405, 28.423326, 47.323879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570930, 28.231562, 47.215664>,  <36.411804, 27.911953, 47.035305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570930, 28.231562, 47.215664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580141, -0.599809, 0.551059,
		0.710762, 0.042369, -0.702155,
		0.397811, 0.799021, 0.450901,
		36.690273, 28.471268, 47.350933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148884, 27.987877, 46.892445>,  <36.411804, 27.911953, 47.035305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148884, 27.987877, 46.892445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047829, 28.159338, 47.239414>,  <36.987198, 28.262215, 47.447598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047829, 28.159338, 47.239414>,  <37.148884, 27.987877, 46.892445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047829, 28.159338, 47.239414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732456, -0.501053, 0.460927,
		0.632206, 0.751799, -0.187387,
		-0.252634, 0.428654, 0.867428,
		36.972038, 28.287933, 47.499641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787205, 28.130304, 47.258240>,  <37.148884, 27.987877, 46.892445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787205, 28.130304, 47.258240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488934, 28.162609, 47.522797>,  <37.309971, 28.181992, 47.681530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488934, 28.162609, 47.522797>,  <37.787205, 28.130304, 47.258240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488934, 28.162609, 47.522797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580842, -0.407571, 0.704634,
		0.326472, 0.909595, 0.257007,
		-0.745680, 0.080763, 0.661391,
		37.265228, 28.186838, 47.721214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053116, 28.536718, 47.813992>,  <37.787205, 28.130304, 47.258240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053116, 28.536718, 47.813992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746513, 28.307302, 47.929588>,  <37.562550, 28.169653, 47.998947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746513, 28.307302, 47.929588>,  <38.053116, 28.536718, 47.813992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746513, 28.307302, 47.929588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598951, -0.475998, 0.643959,
		-0.231776, 0.666692, 0.708379,
		-0.766510, -0.573539, 0.288991,
		37.516560, 28.135241, 48.016285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173660, 28.476898, 48.511421>,  <38.053116, 28.536718, 47.813992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173660, 28.476898, 48.511421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938919, 28.159689, 48.446033>,  <37.798077, 27.969364, 48.406799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938919, 28.159689, 48.446033>,  <38.173660, 28.476898, 48.511421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938919, 28.159689, 48.446033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588307, -0.556328, 0.586851,
		-0.556328, 0.248223, 0.793022,
		-0.586851, -0.793022, -0.163469,
		37.762863, 27.921782, 48.396992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186787, 28.163099, 49.195469>,  <38.173660, 28.476898, 48.511421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186787, 28.163099, 49.195469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028732, 27.880682, 48.960396>,  <37.933899, 27.711231, 48.819351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028732, 27.880682, 48.960396>,  <38.186787, 28.163099, 49.195469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028732, 27.880682, 48.960396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309929, -0.704696, 0.638237,
		-0.864761, 0.070050, 0.497274,
		-0.395136, -0.706043, -0.587683,
		37.910191, 27.668869, 48.784092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737289, 27.680559, 49.639221>,  <38.186787, 28.163099, 49.195469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737289, 27.680559, 49.639221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938751, 27.533644, 49.326443>,  <38.059628, 27.445496, 49.138775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938751, 27.533644, 49.326443>,  <37.737289, 27.680559, 49.639221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938751, 27.533644, 49.326443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285926, -0.783244, 0.552064,
		-0.815219, -0.501625, -0.289464,
		0.503650, -0.367288, -0.781944,
		38.089848, 27.423458, 49.091858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623833, 26.915705, 49.555195>,  <37.737289, 27.680559, 49.639221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623833, 26.915705, 49.555195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981556, 26.991610, 49.393112>,  <38.196190, 27.037153, 49.295860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981556, 26.991610, 49.393112>,  <37.623833, 26.915705, 49.555195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981556, 26.991610, 49.393112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337211, -0.881091, 0.331612,
		-0.294100, -0.433207, -0.851961,
		0.894312, 0.189763, -0.405211,
		38.249851, 27.048538, 49.271549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902306, 26.346380, 49.091854>,  <37.623833, 26.915705, 49.555195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902306, 26.346380, 49.091854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197285, 26.549839, 49.269596>,  <38.374271, 26.671915, 49.376240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197285, 26.549839, 49.269596>,  <37.902306, 26.346380, 49.091854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197285, 26.549839, 49.269596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435277, -0.860974, 0.263168,
		0.516437, -0.000655, -0.856325,
		0.737446, 0.508648, 0.444354,
		38.418518, 26.702433, 49.402901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548798, 26.122349, 48.853127>,  <37.902306, 26.346380, 49.091854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548798, 26.122349, 48.853127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559361, 26.228983, 49.238506>,  <38.565701, 26.292963, 49.469734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559361, 26.228983, 49.238506>,  <38.548798, 26.122349, 48.853127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559361, 26.228983, 49.238506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255597, -0.933550, 0.251307,
		0.966423, 0.239617, -0.092794,
		0.026411, 0.266587, 0.963449,
		38.567284, 26.308958, 49.527542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144054, 26.045952, 49.119255>,  <38.548798, 26.122349, 48.853127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144054, 26.045952, 49.119255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837749, 25.976429, 49.366932>,  <38.653965, 25.934715, 49.515537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837749, 25.976429, 49.366932>,  <39.144054, 26.045952, 49.119255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837749, 25.976429, 49.366932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416196, -0.867924, 0.271088,
		0.490293, 0.465294, 0.736963,
		-0.765764, -0.173808, 0.619190,
		38.608021, 25.924286, 49.552689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449944, 25.746481, 49.754040>,  <39.144054, 26.045952, 49.119255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449944, 25.746481, 49.754040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064865, 25.638258, 49.752178>,  <38.833820, 25.573324, 49.751060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064865, 25.638258, 49.752178>,  <39.449944, 25.746481, 49.754040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064865, 25.638258, 49.752178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259355, -0.927465, 0.269340,
		-0.077189, 0.258085, 0.963034,
		-0.962692, -0.270558, -0.004654,
		38.776058, 25.557091, 49.750782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988808, 25.110615, 49.597694>,  <39.449944, 25.746481, 49.754040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988808, 25.110615, 49.597694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973240, 24.731876, 49.469963>,  <38.963898, 24.504633, 49.393326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973240, 24.731876, 49.469963>,  <38.988808, 25.110615, 49.597694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973240, 24.731876, 49.469963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555686, 0.286109, -0.780612,
		0.830481, 0.147062, -0.537285,
		-0.038924, -0.946845, -0.319328,
		38.961563, 24.447823, 49.374165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222359, 25.122919, 48.888344>,  <38.988808, 25.110615, 49.597694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222359, 25.122919, 48.888344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953133, 24.831213, 48.937588>,  <38.791595, 24.656189, 48.967136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953133, 24.831213, 48.937588>,  <39.222359, 25.122919, 48.888344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953133, 24.831213, 48.937588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625336, 0.472268, -0.621223,
		0.394894, -0.495109, -0.773903,
		-0.673063, -0.729266, 0.123113,
		38.751213, 24.612432, 48.974522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970531, 24.899803, 48.243473>,  <39.222359, 25.122919, 48.888344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970531, 24.899803, 48.243473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678860, 24.779028, 48.489120>,  <38.503857, 24.706564, 48.636509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678860, 24.779028, 48.489120>,  <38.970531, 24.899803, 48.243473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678860, 24.779028, 48.489120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680195, 0.221332, -0.698818,
		0.075074, -0.927279, -0.366765,
		-0.729176, -0.301935, 0.614114,
		38.460106, 24.688448, 48.673355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580971, 24.307341, 47.970661>,  <38.970531, 24.899803, 48.243473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580971, 24.307341, 47.970661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362453, 24.562147, 48.188202>,  <38.231342, 24.715031, 48.318726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362453, 24.562147, 48.188202>,  <38.580971, 24.307341, 47.970661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362453, 24.562147, 48.188202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582752, 0.177324, -0.793067,
		-0.601636, -0.750177, 0.274353,
		-0.546291, 0.637017, 0.543852,
		38.198566, 24.753252, 48.351357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874210, 24.124125, 47.866638>,  <38.580971, 24.307341, 47.970661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874210, 24.124125, 47.866638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885574, 24.496460, 48.012371>,  <37.892391, 24.719860, 48.099812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885574, 24.496460, 48.012371>,  <37.874210, 24.124125, 47.866638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885574, 24.496460, 48.012371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656706, 0.292162, -0.695255,
		-0.753612, -0.219506, 0.619585,
		0.028407, 0.930837, 0.364328,
		37.894096, 24.775711, 48.121670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084785, 24.362040, 47.962238>,  <37.874210, 24.124125, 47.866638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084785, 24.362040, 47.962238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358395, 24.653126, 47.942093>,  <37.522560, 24.827778, 47.930008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358395, 24.653126, 47.942093>,  <37.084785, 24.362040, 47.962238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358395, 24.653126, 47.942093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551257, 0.470480, -0.689032,
		-0.477726, 0.499078, 0.722980,
		0.684028, 0.727716, -0.050360,
		37.563602, 24.871441, 47.926987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696690, 24.882154, 47.926399>,  <37.084785, 24.362040, 47.962238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696690, 24.882154, 47.926399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042507, 25.022057, 47.782051>,  <37.250000, 25.105999, 47.695442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042507, 25.022057, 47.782051>,  <36.696690, 24.882154, 47.926399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042507, 25.022057, 47.782051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493523, 0.455406, -0.740972,
		-0.094819, 0.818703, 0.566334,
		0.864549, 0.349757, -0.360868,
		37.301872, 25.126984, 47.673790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671429, 25.684296, 47.694130>,  <36.696690, 24.882154, 47.926399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671429, 25.684296, 47.694130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992649, 25.545540, 47.500317>,  <37.185383, 25.462286, 47.384029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992649, 25.545540, 47.500317>,  <36.671429, 25.684296, 47.694130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992649, 25.545540, 47.500317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331311, 0.415944, -0.846891,
		0.495318, 0.840629, 0.219096,
		0.803052, -0.346891, -0.484534,
		37.233566, 25.441473, 47.354958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772530, 26.213524, 47.333714>,  <36.671429, 25.684296, 47.694130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772530, 26.213524, 47.333714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959919, 25.921675, 47.134441>,  <37.072353, 25.746565, 47.014877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959919, 25.921675, 47.134441>,  <36.772530, 26.213524, 47.333714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959919, 25.921675, 47.134441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409419, 0.320387, -0.854241,
		0.782885, 0.604153, -0.148629,
		0.468473, -0.729624, -0.498178,
		37.100460, 25.702787, 46.984989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072186, 26.501272, 46.712608>,  <36.772530, 26.213524, 47.333714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072186, 26.501272, 46.712608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072071, 26.111567, 46.622448>,  <37.072002, 25.877743, 46.568352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072071, 26.111567, 46.622448>,  <37.072186, 26.501272, 46.712608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072071, 26.111567, 46.622448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399134, 0.206783, -0.893271,
		0.916893, 0.089712, -0.388921,
		-0.000285, -0.974265, -0.225405,
		37.071987, 25.819286, 46.554825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486496, 26.423658, 46.107079>,  <37.072186, 26.501272, 46.712608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486496, 26.423658, 46.107079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224102, 26.122446, 46.127556>,  <37.066666, 25.941719, 46.139843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224102, 26.122446, 46.127556>,  <37.486496, 26.423658, 46.107079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224102, 26.122446, 46.127556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466039, 0.350757, -0.812267,
		0.593706, -0.556698, -0.581035,
		-0.655989, -0.753032, 0.051196,
		37.027306, 25.896536, 46.142914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438091, 26.200012, 45.432945>,  <37.486496, 26.423658, 46.107079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438091, 26.200012, 45.432945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115162, 26.049324, 45.614628>,  <36.921402, 25.958912, 45.723637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115162, 26.049324, 45.614628>,  <37.438091, 26.200012, 45.432945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115162, 26.049324, 45.614628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576453, 0.338851, -0.743560,
		0.126204, -0.862126, -0.490724,
		-0.807325, -0.376720, 0.454211,
		36.872963, 25.936308, 45.750893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093700, 25.981239, 44.882301>,  <37.438091, 26.200012, 45.432945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093700, 25.981239, 44.882301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805546, 25.965372, 45.159275>,  <36.632652, 25.955853, 45.325459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805546, 25.965372, 45.159275>,  <37.093700, 25.981239, 44.882301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805546, 25.965372, 45.159275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653725, 0.372361, -0.658780,
		-0.231705, -0.927240, -0.294176,
		-0.720386, -0.039668, 0.692438,
		36.589432, 25.953472, 45.367008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542038, 25.770767, 44.559860>,  <37.093700, 25.981239, 44.882301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542038, 25.770767, 44.559860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357773, 25.937883, 44.873100>,  <36.247211, 26.038153, 45.061043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357773, 25.937883, 44.873100>,  <36.542038, 25.770767, 44.559860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357773, 25.937883, 44.873100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665146, 0.421684, -0.616250,
		-0.587681, -0.804758, 0.083636,
		-0.460665, 0.417789, 0.783097,
		36.219574, 26.063219, 45.108028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821903, 25.525410, 44.570423>,  <36.542038, 25.770767, 44.559860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821903, 25.525410, 44.570423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826344, 25.868357, 44.776260>,  <35.829006, 26.074125, 44.899761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826344, 25.868357, 44.776260>,  <35.821903, 25.525410, 44.570423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826344, 25.868357, 44.776260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570660, 0.428017, -0.700820,
		-0.821112, -0.285878, 0.494014,
		0.011097, 0.857365, 0.514589,
		35.829674, 26.125566, 44.930637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218945, 25.819929, 44.434689>,  <35.821903, 25.525410, 44.570423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218945, 25.819929, 44.434689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441406, 26.128147, 44.559235>,  <35.574883, 26.313078, 44.633965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441406, 26.128147, 44.559235>,  <35.218945, 25.819929, 44.434689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441406, 26.128147, 44.559235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419910, 0.583853, -0.694832,
		-0.717192, 0.255689, 0.648273,
		0.556157, 0.770545, 0.311368,
		35.608253, 26.359310, 44.652645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787926, 26.379112, 44.438057>,  <35.218945, 25.819929, 44.434689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787926, 26.379112, 44.438057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149822, 26.548731, 44.421875>,  <35.366959, 26.650501, 44.412167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149822, 26.548731, 44.421875>,  <34.787926, 26.379112, 44.438057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149822, 26.548731, 44.421875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348874, 0.683151, -0.641554,
		-0.244413, 0.594550, 0.766011,
		0.904737, 0.424045, -0.040452,
		35.421242, 26.675945, 44.409740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667301, 27.082159, 44.724239>,  <34.787926, 26.379112, 44.438057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667301, 27.082159, 44.724239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011688, 27.103674, 44.521915>,  <35.218319, 27.116583, 44.400520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011688, 27.103674, 44.521915>,  <34.667301, 27.082159, 44.724239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011688, 27.103674, 44.521915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404679, 0.674889, -0.617057,
		0.308178, 0.735956, 0.602822,
		0.860965, 0.053787, -0.505812,
		35.269978, 27.119810, 44.370171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787476, 27.886686, 44.489498>,  <34.667301, 27.082159, 44.724239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787476, 27.886686, 44.489498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049923, 27.715185, 44.241085>,  <35.207390, 27.612286, 44.092037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049923, 27.715185, 44.241085>,  <34.787476, 27.886686, 44.489498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049923, 27.715185, 44.241085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353554, 0.552392, -0.754892,
		0.666714, 0.714867, 0.210848,
		0.656119, -0.428751, -0.621032,
		35.246758, 27.586559, 44.054775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248817, 28.445639, 44.209732>,  <34.787476, 27.886686, 44.489498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248817, 28.445639, 44.209732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224838, 28.139236, 43.953720>,  <35.210449, 27.955395, 43.800114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224838, 28.139236, 43.953720>,  <35.248817, 28.445639, 44.209732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224838, 28.139236, 43.953720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333971, 0.619626, -0.710301,
		0.940675, 0.171170, -0.292970,
		-0.059950, -0.766006, -0.640032,
		35.206852, 27.909435, 43.761711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515488, 28.746771, 43.579498>,  <35.248817, 28.445639, 44.209732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515488, 28.746771, 43.579498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309250, 28.419540, 43.477585>,  <35.185509, 28.223202, 43.416435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309250, 28.419540, 43.477585>,  <35.515488, 28.746771, 43.579498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309250, 28.419540, 43.477585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493733, 0.526686, -0.691975,
		0.700281, -0.230980, -0.675466,
		-0.515591, -0.818077, -0.254786,
		35.154572, 28.174118, 43.401150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508781, 28.901302, 42.924706>,  <35.515488, 28.746771, 43.579498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508781, 28.901302, 42.924706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249519, 28.610451, 43.015198>,  <35.093964, 28.435940, 43.069492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249519, 28.610451, 43.015198>,  <35.508781, 28.901302, 42.924706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249519, 28.610451, 43.015198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541003, 0.230608, -0.808787,
		0.535923, -0.646608, -0.542849,
		-0.648153, -0.727130, 0.226228,
		35.055073, 28.392311, 43.083065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323067, 28.655478, 42.335285>,  <35.508781, 28.901302, 42.924706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323067, 28.655478, 42.335285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019321, 28.550024, 42.573231>,  <34.837074, 28.486752, 42.716000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019321, 28.550024, 42.573231>,  <35.323067, 28.655478, 42.335285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019321, 28.550024, 42.573231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648585, 0.233554, -0.724424,
		0.052049, -0.935922, -0.348341,
		-0.759361, -0.263635, 0.594869,
		34.791512, 28.470934, 42.751690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976265, 28.364479, 41.875435>,  <35.323067, 28.655478, 42.335285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976265, 28.364479, 41.875435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717770, 28.451792, 42.167938>,  <34.562672, 28.504179, 42.343441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717770, 28.451792, 42.167938>,  <34.976265, 28.364479, 41.875435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717770, 28.451792, 42.167938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713555, 0.166931, -0.680422,
		-0.270593, -0.961502, 0.047880,
		-0.646234, 0.218283, 0.731255,
		34.523899, 28.517277, 42.387314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363552, 28.073545, 41.564205>,  <34.976265, 28.364479, 41.875435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363552, 28.073545, 41.564205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260002, 28.315023, 41.865810>,  <34.197872, 28.459909, 42.046772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260002, 28.315023, 41.865810>,  <34.363552, 28.073545, 41.564205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260002, 28.315023, 41.865810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706114, 0.414375, -0.574192,
		-0.659081, -0.681062, 0.319008,
		-0.258871, 0.603695, 0.754014,
		34.182343, 28.496132, 42.092014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648220, 27.914425, 41.858429>,  <34.363552, 28.073545, 41.564205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648220, 27.914425, 41.858429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749508, 28.296700, 41.918484>,  <33.810280, 28.526064, 41.954517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749508, 28.296700, 41.918484>,  <33.648220, 27.914425, 41.858429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749508, 28.296700, 41.918484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778448, 0.293432, -0.554902,
		-0.574367, 0.023641, 0.818256,
		0.253221, 0.955687, 0.150134,
		33.825474, 28.583406, 41.963524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936161, 28.269978, 42.071648>,  <33.648220, 27.914425, 41.858429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936161, 28.269978, 42.071648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195518, 28.549496, 41.950802>,  <33.351131, 28.717207, 41.878292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195518, 28.549496, 41.950802>,  <32.936161, 28.269978, 42.071648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195518, 28.549496, 41.950802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667868, 0.331622, -0.666317,
		-0.365430, 0.633809, 0.681723,
		0.648392, 0.698794, -0.302117,
		33.390038, 28.759134, 41.860168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536411, 28.776878, 41.960903>,  <32.936161, 28.269978, 42.071648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536411, 28.776878, 41.960903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864506, 28.905764, 41.771847>,  <33.061363, 28.983095, 41.658413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864506, 28.905764, 41.771847>,  <32.536411, 28.776878, 41.960903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864506, 28.905764, 41.771847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571979, 0.472289, -0.670659,
		0.007129, 0.820440, 0.571688,
		0.820237, 0.322212, -0.472641,
		33.110577, 29.002428, 41.630054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549568, 29.560499, 42.064613>,  <32.536411, 28.776878, 41.960903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549568, 29.560499, 42.064613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777859, 29.483158, 41.745396>,  <32.914833, 29.436754, 41.553864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777859, 29.483158, 41.745396>,  <32.549568, 29.560499, 42.064613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777859, 29.483158, 41.745396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585823, 0.585147, -0.560727,
		0.575394, 0.787539, 0.220690,
		0.570730, -0.193353, -0.798049,
		32.949078, 29.425152, 41.505981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692764, 30.195860, 41.698128>,  <32.549568, 29.560499, 42.064613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692764, 30.195860, 41.698128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750355, 29.917847, 41.416363>,  <32.784908, 29.751040, 41.247303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750355, 29.917847, 41.416363>,  <32.692764, 30.195860, 41.698128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750355, 29.917847, 41.416363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542017, 0.540174, -0.643762,
		0.827942, 0.474493, -0.298946,
		0.143978, -0.695031, -0.704416,
		32.793549, 29.709337, 41.205036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671700, 30.506880, 41.031155>,  <32.692764, 30.195860, 41.698128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671700, 30.506880, 41.031155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659557, 30.139610, 40.873150>,  <32.652271, 29.919249, 40.778347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659557, 30.139610, 40.873150>,  <32.671700, 30.506880, 41.031155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659557, 30.139610, 40.873150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320185, 0.383302, -0.866350,
		0.946869, 0.100176, -0.305622,
		-0.030358, -0.918175, -0.395011,
		32.650452, 29.864159, 40.754646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906513, 30.509094, 40.345070>,  <32.671700, 30.506880, 41.031155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906513, 30.509094, 40.345070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670639, 30.187489, 40.375633>,  <32.529114, 29.994526, 40.393970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670639, 30.187489, 40.375633>,  <32.906513, 30.509094, 40.345070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670639, 30.187489, 40.375633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391540, 0.201851, -0.897749,
		0.706379, -0.559303, -0.433831,
		-0.589682, -0.804013, 0.076406,
		32.493732, 29.946285, 40.398556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967339, 30.252033, 39.734493>,  <32.906513, 30.509094, 40.345070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967339, 30.252033, 39.734493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629364, 30.111458, 39.895771>,  <32.426579, 30.027113, 39.992538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629364, 30.111458, 39.895771>,  <32.967339, 30.252033, 39.734493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629364, 30.111458, 39.895771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514629, 0.328805, -0.791862,
		0.145715, -0.876573, -0.458679,
		-0.844941, -0.351436, 0.403198,
		32.375881, 30.006027, 40.016731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675797, 29.892878, 39.136822>,  <32.967339, 30.252033, 39.734493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675797, 29.892878, 39.136822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380508, 29.952551, 39.399963>,  <32.203335, 29.988354, 39.557850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380508, 29.952551, 39.399963>,  <32.675797, 29.892878, 39.136822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380508, 29.952551, 39.399963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617411, 0.243398, -0.748038,
		-0.271715, -0.958385, -0.087575,
		-0.738224, 0.149183, 0.657853,
		32.159042, 29.997305, 39.597321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008770, 29.564713, 38.839077>,  <32.675797, 29.892878, 39.136822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008770, 29.564713, 38.839077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873943, 29.821838, 39.114227>,  <31.793047, 29.976114, 39.279320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873943, 29.821838, 39.114227>,  <32.008770, 29.564713, 38.839077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873943, 29.821838, 39.114227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549379, 0.459054, -0.698179,
		-0.764572, -0.613238, 0.198416,
		-0.337066, 0.642813, 0.687879,
		31.772823, 30.014683, 39.320591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295906, 29.541672, 38.833160>,  <32.008770, 29.564713, 38.839077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295906, 29.541672, 38.833160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385418, 29.907511, 38.967884>,  <31.439125, 30.127014, 39.048717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385418, 29.907511, 38.967884>,  <31.295906, 29.541672, 38.833160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385418, 29.907511, 38.967884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563327, 0.403374, -0.721077,
		-0.795353, -0.028371, 0.605483,
		0.223778, 0.914595, 0.336806,
		31.452551, 30.181889, 39.068928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616873, 29.946827, 38.803253>,  <31.295906, 29.541672, 38.833160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616873, 29.946827, 38.803253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923958, 30.202965, 38.793694>,  <31.108210, 30.356647, 38.787956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923958, 30.202965, 38.793694>,  <30.616873, 29.946827, 38.803253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923958, 30.202965, 38.793694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421392, 0.476411, -0.771661,
		-0.482744, 0.602486, 0.635585,
		0.767715, 0.640346, -0.023899,
		31.154272, 30.395069, 38.786526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269522, 30.628633, 38.664570>,  <30.616873, 29.946827, 38.803253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269522, 30.628633, 38.664570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652842, 30.645922, 38.551579>,  <30.882833, 30.656296, 38.483784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652842, 30.645922, 38.551579>,  <30.269522, 30.628633, 38.664570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652842, 30.645922, 38.551579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272935, 0.431348, -0.859910,
		0.084680, 0.901150, 0.425157,
		0.958298, 0.043223, -0.282482,
		30.940331, 30.658888, 38.466835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368334, 31.266512, 38.375000>,  <30.269522, 30.628633, 38.664570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368334, 31.266512, 38.375000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689447, 31.077263, 38.229843>,  <30.882116, 30.963713, 38.142750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689447, 31.077263, 38.229843>,  <30.368334, 31.266512, 38.375000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689447, 31.077263, 38.229843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269191, 0.255480, -0.928583,
		0.532045, 0.843140, 0.077735,
		0.802785, -0.473122, -0.362892,
		30.930283, 30.935326, 38.120975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836252, 31.723087, 38.064571>,  <30.368334, 31.266512, 38.375000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836252, 31.723087, 38.064571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954214, 31.386065, 37.884293>,  <31.024992, 31.183851, 37.776123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954214, 31.386065, 37.884293>,  <30.836252, 31.723087, 38.064571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954214, 31.386065, 37.884293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080350, 0.448139, -0.890346,
		0.952142, 0.298781, 0.064459,
		0.294905, -0.842556, -0.450699,
		31.042686, 31.133297, 37.749084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253172, 32.077675, 37.634491>,  <30.836252, 31.723087, 38.064571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253172, 32.077675, 37.634491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182751, 31.702574, 37.514744>,  <31.140497, 31.477512, 37.442894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182751, 31.702574, 37.514744>,  <31.253172, 32.077675, 37.634491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182751, 31.702574, 37.514744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013313, 0.306361, -0.951822,
		0.984291, -0.163586, -0.066420,
		-0.176054, -0.937754, -0.299370,
		31.129934, 31.421247, 37.424934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763222, 31.970659, 37.177574>,  <31.253172, 32.077675, 37.634491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763222, 31.970659, 37.177574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488846, 31.693911, 37.087418>,  <31.324221, 31.527863, 37.033325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488846, 31.693911, 37.087418>,  <31.763222, 31.970659, 37.177574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488846, 31.693911, 37.087418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099156, 0.395732, -0.912997,
		0.720871, -0.603913, -0.340052,
		-0.685940, -0.691871, -0.225390,
		31.283064, 31.486349, 37.019802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938581, 31.636883, 36.504665>,  <31.763222, 31.970659, 37.177574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938581, 31.636883, 36.504665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545218, 31.614723, 36.573757>,  <31.309198, 31.601427, 36.615211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545218, 31.614723, 36.573757>,  <31.938581, 31.636883, 36.504665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545218, 31.614723, 36.573757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178186, 0.473383, -0.862646,
		-0.033977, -0.879113, -0.475402,
		-0.983410, -0.055400, 0.172730,
		31.250195, 31.598103, 36.625576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100258, 32.224281, 36.225479>,  <31.938581, 31.636883, 36.504665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100258, 32.224281, 36.225479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343739, 32.283154, 35.913628>,  <32.489826, 32.318478, 35.726517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343739, 32.283154, 35.913628>,  <32.100258, 32.224281, 36.225479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343739, 32.283154, 35.913628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642469, -0.668001, 0.375510,
		-0.465527, -0.729461, -0.501170,
		0.608702, 0.147176, -0.779629,
		32.526348, 32.327305, 35.679737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275501, 31.601830, 35.863667>,  <32.100258, 32.224281, 36.225479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275501, 31.601830, 35.863667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583263, 31.852514, 35.814281>,  <32.767921, 32.002926, 35.784649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583263, 31.852514, 35.814281>,  <32.275501, 31.601830, 35.863667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583263, 31.852514, 35.814281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611846, -0.667577, 0.424247,
		0.183457, -0.401962, -0.897090,
		0.769408, 0.626712, -0.123467,
		32.814087, 32.040527, 35.777241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813034, 31.202745, 35.607777>,  <32.275501, 31.601830, 35.863667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813034, 31.202745, 35.607777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988354, 31.516363, 35.783577>,  <33.093548, 31.704535, 35.889057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988354, 31.516363, 35.783577>,  <32.813034, 31.202745, 35.607777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988354, 31.516363, 35.783577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688030, -0.607302, 0.397238,
		0.578365, 0.128283, -0.805629,
		0.438301, 0.784046, 0.439505,
		33.119843, 31.751577, 35.915428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558865, 31.098928, 35.560780>,  <32.813034, 31.202745, 35.607777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558865, 31.098928, 35.560780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547115, 31.373100, 35.851799>,  <33.540066, 31.537603, 36.026409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547115, 31.373100, 35.851799>,  <33.558865, 31.098928, 35.560780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547115, 31.373100, 35.851799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742899, -0.472001, 0.474674,
		0.668758, 0.554436, -0.495341,
		-0.029375, 0.685431, 0.727545,
		33.538303, 31.578730, 36.070061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263245, 31.176197, 35.908661>,  <33.558865, 31.098928, 35.560780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263245, 31.176197, 35.908661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018570, 31.351011, 36.172432>,  <33.871765, 31.455900, 36.330692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018570, 31.351011, 36.172432>,  <34.263245, 31.176197, 35.908661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018570, 31.351011, 36.172432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553535, -0.359076, 0.751440,
		0.565192, 0.824659, -0.022275,
		-0.611684, 0.437038, 0.659425,
		33.835064, 31.482122, 36.370258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676476, 31.759111, 36.299026>,  <34.263245, 31.176197, 35.908661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676476, 31.759111, 36.299026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366234, 31.614330, 36.505882>,  <34.180088, 31.527462, 36.629993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366234, 31.614330, 36.505882>,  <34.676476, 31.759111, 36.299026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366234, 31.614330, 36.505882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616238, -0.256738, 0.744537,
		-0.136719, 0.896145, 0.422176,
		-0.775602, -0.361953, 0.517138,
		34.133553, 31.505745, 36.661022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839931, 31.954912, 36.912170>,  <34.676476, 31.759111, 36.299026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839931, 31.954912, 36.912170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562092, 31.680901, 37.000050>,  <34.395386, 31.516495, 37.052776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562092, 31.680901, 37.000050>,  <34.839931, 31.954912, 36.912170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562092, 31.680901, 37.000050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537825, -0.291659, 0.790999,
		-0.477780, 0.667586, 0.571012,
		-0.694601, -0.685028, 0.219695,
		34.353710, 31.475391, 37.065960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821423, 31.974659, 37.628838>,  <34.839931, 31.954912, 36.912170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821423, 31.974659, 37.628838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651062, 31.622057, 37.547295>,  <34.548847, 31.410496, 37.498367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651062, 31.622057, 37.547295>,  <34.821423, 31.974659, 37.628838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651062, 31.622057, 37.547295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562310, -0.434405, 0.703633,
		-0.708813, 0.185047, 0.680692,
		-0.425902, -0.881504, -0.203858,
		34.523293, 31.357605, 37.486137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595081, 31.591194, 38.316658>,  <34.821423, 31.974659, 37.628838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595081, 31.591194, 38.316658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667740, 31.335079, 38.018120>,  <34.711334, 31.181410, 37.838997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667740, 31.335079, 38.018120>,  <34.595081, 31.591194, 38.316658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667740, 31.335079, 38.018120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556908, -0.558550, 0.614716,
		-0.810468, -0.527309, 0.255122,
		0.181647, -0.640287, -0.746349,
		34.722233, 31.142994, 37.794216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524437, 30.945375, 38.563419>,  <34.595081, 31.591194, 38.316658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524437, 30.945375, 38.563419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748520, 30.882803, 38.238041>,  <34.882969, 30.845261, 38.042812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748520, 30.882803, 38.238041>,  <34.524437, 30.945375, 38.563419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748520, 30.882803, 38.238041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583815, -0.622089, 0.521694,
		-0.587646, -0.767160, -0.257172,
		0.560207, -0.156431, -0.813448,
		34.916584, 30.835875, 37.994007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709980, 30.296257, 38.670319>,  <34.524437, 30.945375, 38.563419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709980, 30.296257, 38.670319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973606, 30.340511, 38.372757>,  <35.131783, 30.367064, 38.194221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973606, 30.340511, 38.372757>,  <34.709980, 30.296257, 38.670319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973606, 30.340511, 38.372757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595798, -0.680433, 0.426657,
		-0.458973, -0.724411, -0.514365,
		0.659066, 0.110634, -0.743903,
		35.171326, 30.373701, 38.149586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906479, 29.622429, 38.473370>,  <34.709980, 30.296257, 38.670319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906479, 29.622429, 38.473370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201607, 29.866079, 38.357037>,  <35.378685, 30.012270, 38.287235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201607, 29.866079, 38.357037>,  <34.906479, 29.622429, 38.473370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201607, 29.866079, 38.357037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670711, -0.613128, 0.417398,
		0.075930, -0.503031, -0.860926,
		0.737823, 0.609125, -0.290834,
		35.422955, 30.048817, 38.269787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382431, 29.185102, 38.175701>,  <34.906479, 29.622429, 38.473370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382431, 29.185102, 38.175701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579834, 29.522934, 38.258781>,  <35.698277, 29.725632, 38.308628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579834, 29.522934, 38.258781>,  <35.382431, 29.185102, 38.175701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579834, 29.522934, 38.258781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633723, -0.512740, 0.579217,
		0.595689, -0.154226, -0.788270,
		0.493508, 0.844578, 0.207697,
		35.727886, 29.776308, 38.321091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055889, 29.081894, 37.966751>,  <35.382431, 29.185102, 38.175701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055889, 29.081894, 37.966751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046009, 29.361004, 38.253109>,  <36.040081, 29.528471, 38.424923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046009, 29.361004, 38.253109>,  <36.055889, 29.081894, 37.966751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046009, 29.361004, 38.253109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667580, -0.521525, 0.531365,
		0.744128, 0.491040, -0.452938,
		-0.024703, 0.697776, 0.715890,
		36.038597, 29.570337, 38.467876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477787, 28.839952, 38.431988>,  <36.055889, 29.081894, 37.966751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477787, 28.839952, 38.431988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366306, 29.161812, 38.641701>,  <36.299416, 29.354927, 38.767529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366306, 29.161812, 38.641701>,  <36.477787, 28.839952, 38.431988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366306, 29.161812, 38.641701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639949, -0.251449, 0.726112,
		0.716092, 0.537883, -0.444853,
		-0.278706, 0.804646, 0.524278,
		36.282696, 29.403206, 38.798985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051800, 29.102013, 38.715080>,  <36.477787, 28.839952, 38.431988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051800, 29.102013, 38.715080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745632, 29.215801, 38.945976>,  <36.561932, 29.284075, 39.084515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745632, 29.215801, 38.945976>,  <37.051800, 29.102013, 38.715080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745632, 29.215801, 38.945976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447147, -0.409993, 0.794963,
		0.462810, 0.866592, 0.186616,
		-0.765419, 0.284472, 0.577243,
		36.516006, 29.301144, 39.119148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305347, 29.152195, 39.352734>,  <37.051800, 29.102013, 38.715080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305347, 29.152195, 39.352734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914478, 29.139212, 39.436707>,  <36.679955, 29.131422, 39.487091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914478, 29.139212, 39.436707>,  <37.305347, 29.152195, 39.352734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914478, 29.139212, 39.436707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206292, -0.380798, 0.901353,
		0.050683, 0.924088, 0.378803,
		-0.977177, -0.032460, 0.209932,
		36.621326, 29.129473, 39.499687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215260, 29.545788, 39.975822>,  <37.305347, 29.152195, 39.352734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215260, 29.545788, 39.975822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894714, 29.306566, 39.970867>,  <36.702389, 29.163033, 39.967896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894714, 29.306566, 39.970867>,  <37.215260, 29.545788, 39.975822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894714, 29.306566, 39.970867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188308, -0.271864, 0.943732,
		-0.567769, 0.753938, 0.330479,
		-0.801361, -0.598053, -0.012383,
		36.654305, 29.127150, 39.967152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825737, 29.705206, 40.512508>,  <37.215260, 29.545788, 39.975822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825737, 29.705206, 40.512508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724888, 29.325666, 40.436485>,  <36.664379, 29.097942, 40.390873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724888, 29.325666, 40.436485>,  <36.825737, 29.705206, 40.512508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724888, 29.325666, 40.436485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119813, -0.225498, 0.966849,
		-0.960251, 0.220989, 0.170537,
		-0.252119, -0.948849, -0.190057,
		36.649254, 29.041012, 40.379467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272793, 29.593821, 40.991013>,  <36.825737, 29.705206, 40.512508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272793, 29.593821, 40.991013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405918, 29.234848, 40.875183>,  <36.485794, 29.019464, 40.805683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405918, 29.234848, 40.875183>,  <36.272793, 29.593821, 40.991013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405918, 29.234848, 40.875183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067695, -0.283554, 0.956564,
		-0.940560, -0.337960, -0.033619,
		0.332813, -0.897430, -0.289578,
		36.505760, 28.965620, 40.788311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973728, 29.089554, 41.369915>,  <36.272793, 29.593821, 40.991013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973728, 29.089554, 41.369915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298286, 28.898081, 41.235752>,  <36.493023, 28.783197, 41.155254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298286, 28.898081, 41.235752>,  <35.973728, 29.089554, 41.369915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298286, 28.898081, 41.235752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221982, -0.278482, 0.934437,
		-0.540704, -0.832653, -0.119700,
		0.811396, -0.478683, -0.335410,
		36.541706, 28.754477, 41.135128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985569, 28.403738, 41.662437>,  <35.973728, 29.089554, 41.369915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985569, 28.403738, 41.662437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360504, 28.457834, 41.534000>,  <36.585464, 28.490292, 41.456940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360504, 28.457834, 41.534000>,  <35.985569, 28.403738, 41.662437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360504, 28.457834, 41.534000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341213, -0.542689, 0.767504,
		-0.070454, -0.828974, -0.554832,
		0.937342, 0.135242, -0.321092,
		36.641708, 28.498407, 41.437672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245010, 27.743378, 41.603714>,  <35.985569, 28.403738, 41.662437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245010, 27.743378, 41.603714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528339, 28.018478, 41.667301>,  <36.698338, 28.183538, 41.705456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528339, 28.018478, 41.667301>,  <36.245010, 27.743378, 41.603714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528339, 28.018478, 41.667301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358629, -0.544601, 0.758153,
		0.607996, -0.480009, -0.632403,
		0.708327, 0.687752, 0.158970,
		36.740837, 28.224804, 41.714993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735916, 27.322628, 41.772911>,  <36.245010, 27.743378, 41.603714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735916, 27.322628, 41.772911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858025, 27.679365, 41.906433>,  <36.931290, 27.893408, 41.986546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858025, 27.679365, 41.906433>,  <36.735916, 27.322628, 41.772911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858025, 27.679365, 41.906433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409896, -0.439466, 0.799284,
		0.859531, -0.107177, -0.499721,
		0.305275, 0.891842, 0.333803,
		36.949608, 27.946918, 42.006573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352242, 27.224615, 42.055321>,  <36.735916, 27.322628, 41.772911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352242, 27.224615, 42.055321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235382, 27.565979, 42.227989>,  <37.165268, 27.770798, 42.331589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235382, 27.565979, 42.227989>,  <37.352242, 27.224615, 42.055321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235382, 27.565979, 42.227989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367777, -0.316401, 0.874432,
		0.882830, 0.414222, -0.221428,
		-0.292149, 0.853411, 0.431670,
		37.147736, 27.822002, 42.357491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932076, 27.349661, 42.507141>,  <37.352242, 27.224615, 42.055321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932076, 27.349661, 42.507141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604965, 27.554600, 42.612011>,  <37.408699, 27.677563, 42.674934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604965, 27.554600, 42.612011>,  <37.932076, 27.349661, 42.507141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604965, 27.554600, 42.612011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242816, -0.105872, 0.964278,
		0.521804, 0.852226, -0.037827,
		-0.817778, 0.512349, 0.262179,
		37.359631, 27.708305, 42.690666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220451, 27.808558, 42.987164>,  <37.932076, 27.349661, 42.507141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220451, 27.808558, 42.987164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826744, 27.770050, 43.046425>,  <37.590519, 27.746944, 43.081982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826744, 27.770050, 43.046425>,  <38.220451, 27.808558, 42.987164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826744, 27.770050, 43.046425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131961, 0.157039, 0.978736,
		-0.117489, 0.982889, -0.141864,
		-0.984267, -0.096270, 0.148154,
		37.531464, 27.741169, 43.090870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953175, 28.438698, 43.274483>,  <38.220451, 27.808558, 42.987164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953175, 28.438698, 43.274483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754280, 28.104593, 43.368370>,  <37.634941, 27.904131, 43.424702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754280, 28.104593, 43.368370>,  <37.953175, 28.438698, 43.274483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754280, 28.104593, 43.368370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223984, 0.137781, 0.964804,
		-0.838203, 0.532312, 0.118575,
		-0.497239, -0.835261, 0.234718,
		37.605110, 27.854015, 43.438786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575912, 28.582584, 43.854191>,  <37.953175, 28.438698, 43.274483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575912, 28.582584, 43.854191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601982, 28.183468, 43.849136>,  <37.617626, 27.943996, 43.846104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601982, 28.183468, 43.849136>,  <37.575912, 28.582584, 43.854191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601982, 28.183468, 43.849136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485884, 0.020671, 0.873779,
		-0.871590, -0.063091, 0.486159,
		0.065177, -0.997794, -0.012639,
		37.621536, 27.884130, 43.845345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323582, 28.458393, 44.478085>,  <37.575912, 28.582584, 43.854191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323582, 28.458393, 44.478085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571594, 28.171915, 44.349941>,  <37.720402, 28.000029, 44.273056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571594, 28.171915, 44.349941>,  <37.323582, 28.458393, 44.478085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571594, 28.171915, 44.349941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485362, 0.029330, 0.873821,
		-0.616429, -0.697285, 0.365798,
		0.620031, -0.716193, -0.320356,
		37.757603, 27.957058, 44.253834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420891, 28.107025, 45.063175>,  <37.323582, 28.458393, 44.478085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420891, 28.107025, 45.063175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723820, 27.966120, 44.843220>,  <37.905579, 27.881577, 44.711246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723820, 27.966120, 44.843220>,  <37.420891, 28.107025, 45.063175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723820, 27.966120, 44.843220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493738, -0.242259, 0.835185,
		-0.427420, -0.904003, -0.009542,
		0.757321, -0.352263, -0.549887,
		37.951015, 27.860441, 44.678253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550663, 27.457832, 45.259388>,  <37.420891, 28.107025, 45.063175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550663, 27.457832, 45.259388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895920, 27.593651, 45.109882>,  <38.103073, 27.675142, 45.020180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895920, 27.593651, 45.109882>,  <37.550663, 27.457832, 45.259388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895920, 27.593651, 45.109882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449076, -0.177665, 0.875652,
		0.230918, -0.923658, -0.305831,
		0.863138, 0.339545, -0.373767,
		38.154861, 27.695515, 44.997753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060444, 27.087416, 45.599800>,  <37.550663, 27.457832, 45.259388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060444, 27.087416, 45.599800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275158, 27.390297, 45.450939>,  <38.403988, 27.572025, 45.361622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275158, 27.390297, 45.450939>,  <38.060444, 27.087416, 45.599800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275158, 27.390297, 45.450939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492602, 0.076841, 0.866856,
		0.684985, -0.648641, -0.331753,
		0.536786, 0.757205, -0.372157,
		38.436195, 27.617458, 45.339291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636150, 26.879156, 45.819248>,  <38.060444, 27.087416, 45.599800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636150, 26.879156, 45.819248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690483, 27.271309, 45.762108>,  <38.723083, 27.506599, 45.727825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690483, 27.271309, 45.762108>,  <38.636150, 26.879156, 45.819248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690483, 27.271309, 45.762108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524156, 0.051240, 0.850079,
		0.840720, -0.190341, -0.506912,
		0.135830, 0.980380, -0.142847,
		38.731232, 27.565422, 45.719254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329082, 27.038858, 45.853310>,  <38.636150, 26.879156, 45.819248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329082, 27.038858, 45.853310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153568, 27.392668, 45.916660>,  <39.048260, 27.604954, 45.954670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153568, 27.392668, 45.916660>,  <39.329082, 27.038858, 45.853310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153568, 27.392668, 45.916660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665154, 0.201212, 0.719086,
		0.604183, 0.420867, -0.676634,
		-0.438787, 0.884525, 0.158372,
		39.021931, 27.658026, 45.964172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801975, 27.592421, 45.947304>,  <39.329082, 27.038858, 45.853310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801975, 27.592421, 45.947304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502472, 27.799400, 46.113003>,  <39.322769, 27.923588, 46.212421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502472, 27.799400, 46.113003>,  <39.801975, 27.592421, 45.947304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502472, 27.799400, 46.113003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654893, 0.481006, 0.582880,
		0.102355, 0.707727, -0.699033,
		-0.748759, 0.517452, 0.414252,
		39.277843, 27.954636, 46.237278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012177, 28.330050, 45.909897>,  <39.801975, 27.592421, 45.947304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012177, 28.330050, 45.909897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741096, 28.294910, 46.201923>,  <39.578449, 28.273827, 46.377140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741096, 28.294910, 46.201923>,  <40.012177, 28.330050, 45.909897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741096, 28.294910, 46.201923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566674, 0.570326, 0.594651,
		-0.468617, 0.816708, -0.336730,
		-0.677701, -0.087847, 0.730071,
		39.537785, 28.268557, 46.420944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158474, 28.861946, 46.354576>,  <40.012177, 28.330050, 45.909897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158474, 28.861946, 46.354576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921204, 28.648706, 46.595890>,  <39.778843, 28.520761, 46.740677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921204, 28.648706, 46.595890>,  <40.158474, 28.861946, 46.354576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921204, 28.648706, 46.595890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452377, 0.399155, 0.797515,
		-0.665959, 0.745975, 0.004395,
		-0.593172, -0.533101, 0.603283,
		39.743252, 28.488775, 46.776875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125412, 29.338573, 46.934116>,  <40.158474, 28.861946, 46.354576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125412, 29.338573, 46.934116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015209, 28.971674, 47.049183>,  <39.949089, 28.751535, 47.118225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015209, 28.971674, 47.049183>,  <40.125412, 29.338573, 46.934116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015209, 28.971674, 47.049183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536690, 0.101504, 0.837652,
		-0.797533, 0.385168, 0.464313,
		-0.275507, -0.917247, 0.287668,
		39.932556, 28.696499, 47.135483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080341, 29.324038, 47.744820>,  <40.125412, 29.338573, 46.934116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080341, 29.324038, 47.744820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262501, 29.673048, 47.674034>,  <40.371796, 29.882454, 47.631561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262501, 29.673048, 47.674034>,  <40.080341, 29.324038, 47.744820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262501, 29.673048, 47.674034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807902, 0.321494, -0.493899,
		-0.374047, 0.367887, 0.851322,
		0.455394, 0.872526, -0.176962,
		40.399120, 29.934805, 47.620945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527157, 29.804005, 47.781631>,  <40.080341, 29.324038, 47.744820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527157, 29.804005, 47.781631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813530, 29.986362, 47.570122>,  <39.985352, 30.095778, 47.443214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813530, 29.986362, 47.570122>,  <39.527157, 29.804005, 47.781631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813530, 29.986362, 47.570122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683220, 0.301566, -0.665033,
		-0.143724, 0.837388, 0.527376,
		0.715929, 0.455895, -0.528778,
		40.028309, 30.123131, 47.411488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264851, 30.386724, 47.646584>,  <39.527157, 29.804005, 47.781631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264851, 30.386724, 47.646584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546970, 30.315243, 47.372177>,  <39.716244, 30.272354, 47.207535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546970, 30.315243, 47.372177>,  <39.264851, 30.386724, 47.646584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546970, 30.315243, 47.372177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617794, 0.319663, -0.718433,
		0.347682, 0.930527, 0.115055,
		0.705300, -0.178706, -0.686015,
		39.758560, 30.261631, 47.166374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172413, 30.930727, 47.136581>,  <39.264851, 30.386724, 47.646584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172413, 30.930727, 47.136581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393387, 30.664495, 46.935852>,  <39.525970, 30.504757, 46.815414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393387, 30.664495, 46.935852>,  <39.172413, 30.930727, 47.136581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393387, 30.664495, 46.935852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538054, 0.175075, -0.824528,
		0.636644, 0.725502, -0.261401,
		0.552432, -0.665579, -0.501820,
		39.559116, 30.464821, 46.785305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377018, 31.273165, 46.583332>,  <39.172413, 30.930727, 47.136581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377018, 31.273165, 46.583332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474140, 30.896172, 46.491440>,  <39.532413, 30.669975, 46.436306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474140, 30.896172, 46.491440>,  <39.377018, 31.273165, 46.583332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474140, 30.896172, 46.491440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195785, 0.184330, -0.963167,
		0.950112, 0.278842, -0.139767,
		0.242808, -0.942481, -0.229727,
		39.546982, 30.613428, 46.422523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812443, 31.308020, 46.060837>,  <39.377018, 31.273165, 46.583332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812443, 31.308020, 46.060837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657692, 30.939838, 46.038586>,  <39.564842, 30.718929, 46.025234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657692, 30.939838, 46.038586>,  <39.812443, 31.308020, 46.060837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657692, 30.939838, 46.038586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306647, 0.185316, -0.933609,
		0.869651, -0.344133, -0.353948,
		-0.386878, -0.920451, -0.055633,
		39.541630, 30.663704, 46.021896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068714, 31.101816, 45.422791>,  <39.812443, 31.308020, 46.060837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068714, 31.101816, 45.422791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750832, 30.882841, 45.527676>,  <39.560104, 30.751455, 45.590607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750832, 30.882841, 45.527676>,  <40.068714, 31.101816, 45.422791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750832, 30.882841, 45.527676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425230, 0.193832, -0.884086,
		0.433158, -0.814088, -0.386827,
		-0.794704, -0.547440, 0.262215,
		39.512421, 30.718609, 45.606339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010403, 30.661825, 44.939404>,  <40.068714, 31.101816, 45.422791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010403, 30.661825, 44.939404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651451, 30.653175, 45.115700>,  <39.436081, 30.647985, 45.221478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651451, 30.653175, 45.115700>,  <40.010403, 30.661825, 44.939404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651451, 30.653175, 45.115700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426045, 0.302527, -0.852621,
		-0.114900, -0.952895, -0.280693,
		-0.897376, -0.021622, 0.440737,
		39.382236, 30.646688, 45.247921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590267, 30.153585, 44.615158>,  <40.010403, 30.661825, 44.939404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590267, 30.153585, 44.615158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361141, 30.450228, 44.754814>,  <39.223663, 30.628214, 44.838608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361141, 30.450228, 44.754814>,  <39.590267, 30.153585, 44.615158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361141, 30.450228, 44.754814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515120, 0.005635, -0.857099,
		-0.637598, -0.670811, 0.378789,
		-0.572817, 0.741607, 0.349141,
		39.189297, 30.672710, 44.859558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883949, 29.866186, 44.425552>,  <39.590267, 30.153585, 44.615158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883949, 29.866186, 44.425552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811081, 30.245150, 44.530796>,  <38.767361, 30.472528, 44.593941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811081, 30.245150, 44.530796>,  <38.883949, 29.866186, 44.425552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811081, 30.245150, 44.530796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705951, 0.060237, -0.705694,
		-0.684431, -0.314301, 0.657852,
		-0.182173, 0.947410, 0.263109,
		38.756428, 30.529373, 44.609730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127254, 29.880653, 44.449120>,  <38.883949, 29.866186, 44.425552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127254, 29.880653, 44.449120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281975, 30.248877, 44.427361>,  <38.374809, 30.469810, 44.414307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281975, 30.248877, 44.427361>,  <38.127254, 29.880653, 44.449120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281975, 30.248877, 44.427361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595409, 0.204268, -0.777022,
		-0.704181, 0.332943, 0.627119,
		0.386805, 0.920556, -0.054396,
		38.398018, 30.525043, 44.411041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555592, 30.362270, 44.452457>,  <38.127254, 29.880653, 44.449120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555592, 30.362270, 44.452457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862141, 30.556732, 44.284496>,  <38.046070, 30.673410, 44.183720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862141, 30.556732, 44.284496>,  <37.555592, 30.362270, 44.452457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862141, 30.556732, 44.284496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632719, 0.458231, -0.624253,
		-0.111071, 0.744094, 0.658777,
		0.766375, 0.486157, -0.419906,
		38.092052, 30.702579, 44.158524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448486, 31.111647, 44.479229>,  <37.555592, 30.362270, 44.452457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448486, 31.111647, 44.479229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721661, 31.052326, 44.193123>,  <37.885567, 31.016733, 44.021461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721661, 31.052326, 44.193123>,  <37.448486, 31.111647, 44.479229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721661, 31.052326, 44.193123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526356, 0.579038, -0.622627,
		0.506500, 0.801700, 0.317389,
		0.682940, -0.148301, -0.715262,
		37.926544, 31.007835, 43.978542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536510, 31.738329, 44.225269>,  <37.448486, 31.111647, 44.479229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536510, 31.738329, 44.225269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668846, 31.482357, 43.947842>,  <37.748245, 31.328773, 43.781384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668846, 31.482357, 43.947842>,  <37.536510, 31.738329, 44.225269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668846, 31.482357, 43.947842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436126, 0.548081, -0.713723,
		0.836864, 0.538609, -0.097765,
		0.330835, -0.639928, -0.693571,
		37.768097, 31.290379, 43.739769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918003, 32.108067, 43.677902>,  <37.536510, 31.738329, 44.225269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918003, 32.108067, 43.677902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816425, 31.758461, 43.512196>,  <37.755478, 31.548698, 43.412769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816425, 31.758461, 43.512196>,  <37.918003, 32.108067, 43.677902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816425, 31.758461, 43.512196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228700, 0.470424, -0.852290,
		0.939793, -0.121688, -0.319346,
		-0.253941, -0.874010, -0.414271,
		37.740242, 31.496258, 43.387913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301861, 32.076427, 43.052479>,  <37.918003, 32.108067, 43.677902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301861, 32.076427, 43.052479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973927, 31.851564, 43.008930>,  <37.777168, 31.716646, 42.982800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973927, 31.851564, 43.008930>,  <38.301861, 32.076427, 43.052479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973927, 31.851564, 43.008930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149222, 0.393326, -0.907209,
		0.552817, -0.727513, -0.406348,
		-0.819833, -0.562156, -0.108876,
		37.727978, 31.682917, 42.976269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324806, 31.874563, 42.425648>,  <38.301861, 32.076427, 43.052479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324806, 31.874563, 42.425648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934944, 31.796251, 42.468960>,  <37.701027, 31.749264, 42.494946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934944, 31.796251, 42.468960>,  <38.324806, 31.874563, 42.425648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934944, 31.796251, 42.468960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169535, 0.330509, -0.928451,
		0.145982, -0.923274, -0.355323,
		-0.974652, -0.195777, 0.108279,
		37.642548, 31.737518, 42.501442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066978, 31.781813, 41.761421>,  <38.324806, 31.874563, 42.425648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066978, 31.781813, 41.761421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717815, 31.816702, 41.953430>,  <37.508316, 31.837635, 42.068638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717815, 31.816702, 41.953430>,  <38.066978, 31.781813, 41.761421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717815, 31.816702, 41.953430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459048, 0.186413, -0.868634,
		-0.165251, -0.978592, -0.122680,
		-0.872907, 0.087226, 0.480025,
		37.455944, 31.842869, 42.097439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617760, 31.248455, 41.569939>,  <38.066978, 31.781813, 41.761421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617760, 31.248455, 41.569939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424637, 31.578306, 41.687847>,  <37.308762, 31.776217, 41.758591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424637, 31.578306, 41.687847>,  <37.617760, 31.248455, 41.569939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424637, 31.578306, 41.687847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305416, 0.156911, -0.939202,
		-0.820743, -0.543481, 0.176096,
		-0.482806, 0.824626, 0.294772,
		37.279797, 31.825693, 41.776279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048439, 31.105574, 41.220840>,  <37.617760, 31.248455, 41.569939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048439, 31.105574, 41.220840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010426, 31.492155, 41.316284>,  <36.987617, 31.724104, 41.373550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010426, 31.492155, 41.316284>,  <37.048439, 31.105574, 41.220840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010426, 31.492155, 41.316284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222390, 0.213021, -0.951402,
		-0.970315, -0.143477, 0.194686,
		-0.095032, 0.966455, 0.238605,
		36.981915, 31.782091, 41.387867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367039, 31.370293, 40.965031>,  <37.048439, 31.105574, 41.220840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367039, 31.370293, 40.965031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579803, 31.702753, 41.029846>,  <36.707462, 31.902229, 41.068733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579803, 31.702753, 41.029846>,  <36.367039, 31.370293, 40.965031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579803, 31.702753, 41.029846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220158, 0.320508, -0.921306,
		-0.817677, 0.454384, 0.353468,
		0.531917, 0.831149, 0.162036,
		36.739380, 31.952097, 41.078457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002090, 31.938463, 40.671112>,  <36.367039, 31.370293, 40.965031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002090, 31.938463, 40.671112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388275, 32.040810, 40.690781>,  <36.619987, 32.102219, 40.702579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388275, 32.040810, 40.690781>,  <36.002090, 31.938463, 40.671112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388275, 32.040810, 40.690781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014856, 0.242469, -0.970045,
		-0.260122, 0.935811, 0.237896,
		0.965461, 0.255865, 0.049170,
		36.677914, 32.117569, 40.705532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960979, 32.496716, 40.291595>,  <36.002090, 31.938463, 40.671112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960979, 32.496716, 40.291595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353115, 32.417824, 40.293633>,  <36.588398, 32.370487, 40.294853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353115, 32.417824, 40.293633>,  <35.960979, 32.496716, 40.291595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353115, 32.417824, 40.293633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053869, 0.242766, -0.968588,
		0.189801, 0.949823, 0.248619,
		0.980344, -0.197232, 0.005089,
		36.647217, 32.358654, 40.295158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293739, 32.983219, 39.811783>,  <35.960979, 32.496716, 40.291595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293739, 32.983219, 39.811783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583618, 32.710014, 39.848248>,  <36.757545, 32.546093, 39.870125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583618, 32.710014, 39.848248>,  <36.293739, 32.983219, 39.811783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583618, 32.710014, 39.848248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144571, 0.021355, -0.989264,
		0.673730, 0.730097, 0.114219,
		0.724697, -0.683010, 0.091163,
		36.801029, 32.505112, 39.875595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853882, 33.198597, 39.387016>,  <36.293739, 32.983219, 39.811783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853882, 33.198597, 39.387016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917576, 32.805614, 39.425846>,  <36.955791, 32.569824, 39.449146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917576, 32.805614, 39.425846>,  <36.853882, 33.198597, 39.387016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917576, 32.805614, 39.425846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368832, -0.032010, -0.928945,
		0.915755, 0.183726, 0.357264,
		0.159236, -0.982456, 0.097077,
		36.965347, 32.510880, 39.454967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515373, 33.064671, 39.191330>,  <36.853882, 33.198597, 39.387016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515373, 33.064671, 39.191330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315166, 32.719212, 39.167358>,  <37.195042, 32.511936, 39.152977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315166, 32.719212, 39.167358>,  <37.515373, 33.064671, 39.191330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315166, 32.719212, 39.167358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476082, -0.216773, -0.852265,
		0.723066, -0.455107, 0.519667,
		-0.500521, -0.863648, -0.059927,
		37.165009, 32.460117, 39.149380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040253, 32.631138, 39.045525>,  <37.515373, 33.064671, 39.191330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040253, 32.631138, 39.045525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704445, 32.446793, 38.930412>,  <37.502960, 32.336185, 38.861347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704445, 32.446793, 38.930412>,  <38.040253, 32.631138, 39.045525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704445, 32.446793, 38.930412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458660, -0.317167, -0.830082,
		0.291283, -0.828859, 0.477647,
		-0.839515, -0.460867, -0.287779,
		37.452591, 32.308533, 38.844078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252857, 32.018063, 38.646915>,  <38.040253, 32.631138, 39.045525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252857, 32.018063, 38.646915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869888, 32.080872, 38.550018>,  <37.640106, 32.118557, 38.491879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869888, 32.080872, 38.550018>,  <38.252857, 32.018063, 38.646915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869888, 32.080872, 38.550018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201279, -0.238450, -0.950068,
		-0.206941, -0.958377, 0.196694,
		-0.957425, 0.157017, -0.242246,
		37.582661, 32.127979, 38.477345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105450, 31.436123, 38.150848>,  <38.252857, 32.018063, 38.646915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105450, 31.436123, 38.150848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858318, 31.745234, 38.092739>,  <37.710037, 31.930700, 38.057873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858318, 31.745234, 38.092739>,  <38.105450, 31.436123, 38.150848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858318, 31.745234, 38.092739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275428, 0.039643, -0.960504,
		-0.736495, -0.633440, -0.237337,
		-0.617830, 0.772776, -0.145270,
		37.672970, 31.977066, 38.049156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813328, 31.351311, 37.461987>,  <38.105450, 31.436123, 38.150848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813328, 31.351311, 37.461987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756649, 31.735683, 37.557087>,  <37.722641, 31.966307, 37.614147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756649, 31.735683, 37.557087>,  <37.813328, 31.351311, 37.461987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756649, 31.735683, 37.557087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209073, 0.263811, -0.941643,
		-0.967580, -0.083722, -0.238287,
		-0.141699, 0.960934, 0.237754,
		37.714138, 32.023964, 37.628414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480137, 31.535597, 36.989422>,  <37.813328, 31.351311, 37.461987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480137, 31.535597, 36.989422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603565, 31.895472, 37.112934>,  <37.677620, 32.111397, 37.187042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603565, 31.895472, 37.112934>,  <37.480137, 31.535597, 36.989422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603565, 31.895472, 37.112934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322588, 0.206404, -0.923761,
		-0.894831, 0.384653, -0.226539,
		0.308569, 0.899688, 0.308781,
		37.696136, 32.165379, 37.205570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242142, 32.024654, 36.614178>,  <37.480137, 31.535597, 36.989422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242142, 32.024654, 36.614178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538208, 32.240528, 36.774628>,  <37.715847, 32.370052, 36.870899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538208, 32.240528, 36.774628>,  <37.242142, 32.024654, 36.614178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538208, 32.240528, 36.774628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177053, 0.419070, -0.890524,
		-0.648698, 0.730154, 0.214629,
		0.740164, 0.539681, 0.401126,
		37.760258, 32.402431, 36.894966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239361, 32.514317, 36.120010>,  <37.242142, 32.024654, 36.614178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239361, 32.514317, 36.120010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560448, 32.608345, 36.339241>,  <37.753098, 32.664764, 36.470779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560448, 32.608345, 36.339241>,  <37.239361, 32.514317, 36.120010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560448, 32.608345, 36.339241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320992, 0.604242, -0.729285,
		-0.502609, 0.761336, 0.409576,
		0.802713, 0.235074, 0.548079,
		37.801262, 32.678867, 36.503666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386494, 33.260628, 36.031181>,  <37.239361, 32.514317, 36.120010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386494, 33.260628, 36.031181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736336, 33.095982, 36.133656>,  <37.946243, 32.997192, 36.195141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736336, 33.095982, 36.133656>,  <37.386494, 33.260628, 36.031181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736336, 33.095982, 36.133656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451571, 0.499256, -0.739478,
		0.176476, 0.762441, 0.622527,
		0.874608, -0.411616, 0.256189,
		37.998718, 32.972496, 36.210514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880692, 33.838287, 36.172722>,  <37.386494, 33.260628, 36.031181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880692, 33.838287, 36.172722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064381, 33.499531, 36.065472>,  <38.174595, 33.296276, 36.001122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064381, 33.499531, 36.065472>,  <37.880692, 33.838287, 36.172722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064381, 33.499531, 36.065472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334372, 0.444434, -0.831068,
		0.822986, 0.291994, 0.487271,
		0.459226, -0.846887, -0.268128,
		38.202148, 33.245464, 35.985035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630215, 33.875408, 36.197235>,  <37.880692, 33.838287, 36.172722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630215, 33.875408, 36.197235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554272, 33.564484, 35.957321>,  <38.508705, 33.377930, 35.813374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554272, 33.564484, 35.957321>,  <38.630215, 33.875408, 36.197235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554272, 33.564484, 35.957321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533398, 0.431219, -0.727692,
		0.824282, -0.458080, 0.332748,
		-0.189855, -0.777311, -0.599786,
		38.497314, 33.331291, 35.777386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283283, 33.753868, 35.820694>,  <38.630215, 33.875408, 36.197235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283283, 33.753868, 35.820694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004520, 33.545525, 35.623505>,  <38.837261, 33.420521, 35.505192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004520, 33.545525, 35.623505>,  <39.283283, 33.753868, 35.820694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004520, 33.545525, 35.623505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327562, 0.380322, -0.864903,
		0.637980, -0.764240, -0.094438,
		-0.696911, -0.520857, -0.492974,
		38.795448, 33.389267, 35.475613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676983, 33.689503, 35.245663>,  <39.283283, 33.753868, 35.820694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676983, 33.689503, 35.245663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297886, 33.594181, 35.160820>,  <39.070427, 33.536987, 35.109913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297886, 33.594181, 35.160820>,  <39.676983, 33.689503, 35.245663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297886, 33.594181, 35.160820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145313, 0.269439, -0.951991,
		0.284020, -0.933065, -0.220729,
		-0.947743, -0.238310, -0.212112,
		39.013561, 33.522690, 35.097187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638748, 33.309784, 34.721020>,  <39.676983, 33.689503, 35.245663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638748, 33.309784, 34.721020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278458, 33.483532, 34.722908>,  <39.062283, 33.587780, 34.724041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278458, 33.483532, 34.722908>,  <39.638748, 33.309784, 34.721020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278458, 33.483532, 34.722908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162167, 0.346308, -0.923998,
		-0.402990, -0.831501, -0.382368,
		-0.900722, 0.434370, 0.004717,
		39.008240, 33.613842, 34.724323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372864, 33.064259, 34.148544>,  <39.638748, 33.309784, 34.721020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372864, 33.064259, 34.148544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209042, 33.415791, 34.246464>,  <39.110748, 33.626709, 34.305218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209042, 33.415791, 34.246464>,  <39.372864, 33.064259, 34.148544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209042, 33.415791, 34.246464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270114, 0.373122, -0.887591,
		-0.871380, -0.297392, -0.390197,
		-0.409554, 0.878827, 0.244801,
		39.086174, 33.679440, 34.319904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345013, 33.323986, 33.484474>,  <39.372864, 33.064259, 34.148544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345013, 33.323986, 33.484474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242641, 33.599255, 33.756039>,  <39.181217, 33.764416, 33.918980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242641, 33.599255, 33.756039>,  <39.345013, 33.323986, 33.484474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242641, 33.599255, 33.756039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288016, 0.724690, -0.625995,
		-0.922793, 0.035328, -0.383674,
		-0.255930, 0.688168, 0.678914,
		39.165863, 33.805706, 33.959713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784431, 33.793060, 33.215515>,  <39.345013, 33.323986, 33.484474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784431, 33.793060, 33.215515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031075, 33.972847, 33.474060>,  <39.179058, 34.080719, 33.629185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031075, 33.972847, 33.474060>,  <38.784431, 33.793060, 33.215515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031075, 33.972847, 33.474060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363416, 0.565800, -0.740134,
		-0.698376, 0.691266, 0.185531,
		0.616603, 0.449467, 0.646359,
		39.216057, 34.107689, 33.667969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886635, 34.530182, 33.199223>,  <38.784431, 33.793060, 33.215515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886635, 34.530182, 33.199223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234051, 34.395290, 33.344505>,  <39.442501, 34.314354, 33.431675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234051, 34.395290, 33.344505>,  <38.886635, 34.530182, 33.199223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234051, 34.395290, 33.344505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479746, 0.388011, -0.786951,
		0.124453, 0.857744, 0.498785,
		0.868536, -0.337228, 0.363210,
		39.494610, 34.294121, 33.453468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390079, 35.072231, 33.483562>,  <38.886635, 34.530182, 33.199223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390079, 35.072231, 33.483562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519333, 34.744057, 33.294899>,  <39.596886, 34.547150, 33.181702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519333, 34.744057, 33.294899>,  <39.390079, 35.072231, 33.483562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519333, 34.744057, 33.294899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469709, 0.571720, -0.672688,
		0.821557, -0.004173, 0.570111,
		0.323137, -0.820438, -0.471660,
		39.616276, 34.497925, 33.153400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105453, 35.075249, 33.323986>,  <39.390079, 35.072231, 33.483562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105453, 35.075249, 33.323986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957924, 34.807026, 33.066517>,  <39.869404, 34.646091, 32.912033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957924, 34.807026, 33.066517>,  <40.105453, 35.075249, 33.323986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957924, 34.807026, 33.066517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498134, 0.442061, -0.745952,
		0.784748, -0.595765, 0.170982,
		-0.368828, -0.670557, -0.643677,
		39.847275, 34.605858, 32.873413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384983, 34.735096, 33.937893>,  <40.105453, 35.075249, 33.323986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384983, 34.735096, 33.937893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718449, 34.794922, 34.150547>,  <40.918530, 34.830818, 34.278141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718449, 34.794922, 34.150547>,  <40.384983, 34.735096, 33.937893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718449, 34.794922, 34.150547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130303, 0.882189, -0.452509,
		-0.536681, 0.446514, 0.715960,
		0.833663, 0.149561, 0.531636,
		40.968548, 34.839790, 34.310040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460419, 35.446827, 34.204685>,  <40.384983, 34.735096, 33.937893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460419, 35.446827, 34.204685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837200, 35.317627, 34.168049>,  <41.063271, 35.240105, 34.146069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837200, 35.317627, 34.168049>,  <40.460419, 35.446827, 34.204685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837200, 35.317627, 34.168049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236223, 0.831469, -0.502850,
		0.238574, 0.452028, 0.859508,
		0.941956, -0.323002, -0.091588,
		41.119785, 35.220726, 34.140572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879978, 36.034393, 34.255413>,  <40.460419, 35.446827, 34.204685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879978, 36.034393, 34.255413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083157, 35.753174, 34.056328>,  <41.205063, 35.584442, 33.936878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083157, 35.753174, 34.056328>,  <40.879978, 36.034393, 34.255413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083157, 35.753174, 34.056328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300448, 0.686115, -0.662553,
		0.807296, 0.187001, 0.559736,
		0.507941, -0.703048, -0.497714,
		41.235538, 35.542259, 33.907013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503338, 36.307018, 34.099033>,  <40.879978, 36.034393, 34.255413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503338, 36.307018, 34.099033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484989, 36.001587, 33.841396>,  <41.473980, 35.818329, 33.686813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484989, 36.001587, 33.841396>,  <41.503338, 36.307018, 34.099033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484989, 36.001587, 33.841396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182831, 0.627460, -0.756880,
		0.982074, -0.152476, 0.110825,
		-0.045867, -0.763574, -0.644089,
		41.471230, 35.772514, 33.648170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181007, 36.204754, 33.902073>,  <41.503338, 36.307018, 34.099033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181007, 36.204754, 33.902073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925724, 36.057495, 33.631618>,  <41.772556, 35.969139, 33.469345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925724, 36.057495, 33.631618>,  <42.181007, 36.204754, 33.902073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925724, 36.057495, 33.631618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304199, 0.686194, -0.660758,
		0.707223, -0.627376, -0.325936,
		-0.638199, -0.368154, -0.676140,
		41.734264, 35.947052, 33.428776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620701, 35.942329, 33.364670>,  <42.181007, 36.204754, 33.902073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620701, 35.942329, 33.364670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262352, 36.006626, 33.198982>,  <42.047344, 36.045204, 33.099571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262352, 36.006626, 33.198982>,  <42.620701, 35.942329, 33.364670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262352, 36.006626, 33.198982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400213, 0.696875, -0.595143,
		0.192991, -0.698946, -0.688642,
		-0.895870, 0.160746, -0.414218,
		41.993591, 36.054852, 33.074718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779526, 36.094372, 32.653702>,  <42.620701, 35.942329, 33.364670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779526, 36.094372, 32.653702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406628, 36.234917, 32.688263>,  <42.182888, 36.319244, 32.709000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406628, 36.234917, 32.688263>,  <42.779526, 36.094372, 32.653702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406628, 36.234917, 32.688263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255193, 0.807763, -0.531409,
		-0.256509, -0.473354, -0.842697,
		-0.932244, 0.351362, 0.086401,
		42.126953, 36.340324, 32.714184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453861, 36.257622, 31.985323>,  <42.779526, 36.094372, 32.653702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453861, 36.257622, 31.985323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254555, 36.484798, 32.247368>,  <42.134972, 36.621105, 32.404594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254555, 36.484798, 32.247368>,  <42.453861, 36.257622, 31.985323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254555, 36.484798, 32.247368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011215, 0.759750, -0.650119,
		-0.866949, -0.316588, -0.384930,
		-0.498270, 0.567937, 0.655114,
		42.105072, 36.655178, 32.443901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174183, 36.647099, 31.576624>,  <42.453861, 36.257622, 31.985323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174183, 36.647099, 31.576624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131161, 36.834316, 31.927477>,  <42.105347, 36.946648, 32.137989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131161, 36.834316, 31.927477>,  <42.174183, 36.647099, 31.576624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131161, 36.834316, 31.927477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092068, 0.883149, -0.459969,
		-0.989927, 0.031283, -0.138081,
		-0.107556, 0.468048, 0.877133,
		42.098892, 36.974731, 32.190617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738930, 37.233810, 31.403957>,  <42.174183, 36.647099, 31.576624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738930, 37.233810, 31.403957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895256, 37.341671, 31.755993>,  <41.989052, 37.406387, 31.967215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895256, 37.341671, 31.755993>,  <41.738930, 37.233810, 31.403957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895256, 37.341671, 31.755993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101260, 0.937731, -0.332276,
		-0.914884, 0.218975, 0.339171,
		0.390812, 0.269650, 0.880088,
		42.012501, 37.422565, 32.020020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415882, 37.834702, 31.632181>,  <41.738930, 37.233810, 31.403957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415882, 37.834702, 31.632181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770283, 37.816074, 31.816719>,  <41.982922, 37.804897, 31.927443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770283, 37.816074, 31.816719>,  <41.415882, 37.834702, 31.632181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770283, 37.816074, 31.816719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157278, 0.966142, -0.204533,
		-0.436201, 0.253775, 0.863323,
		0.885998, -0.046564, 0.461345,
		42.036083, 37.802105, 31.955122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445404, 38.381161, 32.139313>,  <41.415882, 37.834702, 31.632181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445404, 38.381161, 32.139313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825325, 38.303490, 32.041199>,  <42.053280, 38.256886, 31.982330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825325, 38.303490, 32.041199>,  <41.445404, 38.381161, 32.139313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825325, 38.303490, 32.041199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143796, 0.967299, -0.208937,
		0.277835, 0.163179, 0.946668,
		0.949806, -0.194177, -0.245285,
		42.110268, 38.245235, 31.967613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907188, 38.932331, 32.391304>,  <41.445404, 38.381161, 32.139313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907188, 38.932331, 32.391304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151707, 38.775249, 32.116467>,  <42.298416, 38.681000, 31.951563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151707, 38.775249, 32.116467>,  <41.907188, 38.932331, 32.391304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151707, 38.775249, 32.116467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196685, 0.916345, -0.348749,
		0.766573, 0.078047, 0.637396,
		0.611294, -0.392708, -0.687095,
		42.335094, 38.657436, 31.910337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473587, 39.302101, 32.500092>,  <41.907188, 38.932331, 32.391304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473587, 39.302101, 32.500092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469276, 39.124142, 32.141884>,  <42.466690, 39.017365, 31.926960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469276, 39.124142, 32.141884>,  <42.473587, 39.302101, 32.500092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469276, 39.124142, 32.141884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412686, 0.813761, -0.409249,
		0.910810, -0.373976, 0.174835,
		-0.010775, -0.444899, -0.895516,
		42.466045, 38.990673, 31.873230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.117107, 39.593571, 32.115929>,  <42.473587, 39.302101, 32.500092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.117107, 39.593571, 32.115929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888748, 39.445778, 31.822653>,  <42.751732, 39.357101, 31.646688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888748, 39.445778, 31.822653>,  <43.117107, 39.593571, 32.115929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.888748, 39.445778, 31.822653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139392, 0.836433, -0.530047,
		0.809098, -0.404805, -0.426020,
		-0.570903, -0.369476, -0.733183,
		42.717480, 39.334934, 31.602697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522743, 39.669487, 31.551620>,  <43.117107, 39.593571, 32.115929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522743, 39.669487, 31.551620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144131, 39.644676, 31.424980>,  <42.916965, 39.629791, 31.348997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144131, 39.644676, 31.424980>,  <43.522743, 39.669487, 31.551620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144131, 39.644676, 31.424980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117187, 0.848215, -0.516526,
		0.300582, -0.526008, -0.795592,
		-0.946529, -0.062026, -0.316599,
		42.860172, 39.626068, 31.330000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518391, 39.936298, 30.919794>,  <43.522743, 39.669487, 31.551620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518391, 39.936298, 30.919794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.124767, 39.925922, 30.990173>,  <42.888592, 39.919697, 31.032400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.124767, 39.925922, 30.990173>,  <43.518391, 39.936298, 30.919794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.124767, 39.925922, 30.990173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095402, 0.911916, -0.399133,
		-0.150096, -0.409556, -0.899853,
		-0.984058, -0.025940, 0.175948,
		42.829552, 39.918140, 31.042957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269268, 40.175007, 30.233662>,  <43.518391, 39.936298, 30.919794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269268, 40.175007, 30.233662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983185, 40.237560, 30.506140>,  <42.811535, 40.275093, 30.669626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983185, 40.237560, 30.506140>,  <43.269268, 40.175007, 30.233662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.983185, 40.237560, 30.506140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061110, 0.956923, -0.283839,
		-0.696236, -0.244631, -0.674842,
		-0.715207, 0.156379, 0.681193,
		42.768623, 40.284473, 30.710497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614880, 40.509037, 29.872803>,  <43.269268, 40.175007, 30.233662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614880, 40.509037, 29.872803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594391, 40.581261, 30.265694>,  <42.582096, 40.624596, 30.501429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594391, 40.581261, 30.265694>,  <42.614880, 40.509037, 29.872803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594391, 40.581261, 30.265694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087057, 0.978969, -0.184501,
		-0.994886, -0.094960, -0.034425,
		-0.051221, 0.180561, 0.982229,
		42.579025, 40.635429, 30.560362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119030, 41.014328, 29.906481>,  <42.614880, 40.509037, 29.872803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119030, 41.014328, 29.906481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285023, 41.049263, 30.268732>,  <42.384617, 41.070225, 30.486082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285023, 41.049263, 30.268732>,  <42.119030, 41.014328, 29.906481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285023, 41.049263, 30.268732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182526, 0.983137, -0.011179,
		-0.891333, -0.160662, 0.423927,
		0.414982, 0.087342, 0.905628,
		42.409519, 41.075466, 30.540421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664352, 41.530487, 30.267118>,  <42.119030, 41.014328, 29.906481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664352, 41.530487, 30.267118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988625, 41.541336, 30.501062>,  <42.183189, 41.547848, 30.641428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988625, 41.541336, 30.501062>,  <41.664352, 41.530487, 30.267118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988625, 41.541336, 30.501062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002018, 0.998791, -0.049119,
		-0.585486, 0.041000, 0.809645,
		0.810680, 0.027125, 0.584860,
		42.231827, 41.549473, 30.676521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590969, 42.112129, 30.680529>,  <41.664352, 41.530487, 30.267118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.590969, 42.112129, 30.680529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983990, 42.038074, 30.687645>,  <42.219803, 41.993641, 30.691916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983990, 42.038074, 30.687645>,  <41.590969, 42.112129, 30.680529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983990, 42.038074, 30.687645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184300, 0.956263, -0.227145,
		0.025040, 0.226461, 0.973698,
		0.982551, -0.185141, 0.017792,
		42.278755, 41.982533, 30.692982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913902, 42.762390, 30.948725>,  <41.590969, 42.112129, 30.680529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913902, 42.762390, 30.948725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207764, 42.547352, 30.783178>,  <42.384079, 42.418331, 30.683851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207764, 42.547352, 30.783178>,  <41.913902, 42.762390, 30.948725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207764, 42.547352, 30.783178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199247, 0.754077, -0.625834,
		0.648530, 0.377308, 0.661095,
		0.734649, -0.537594, -0.413865,
		42.428158, 42.386074, 30.659019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587421, 43.159203, 31.025032>,  <41.913902, 42.762390, 30.948725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587421, 43.159203, 31.025032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582577, 42.916348, 30.707230>,  <42.579670, 42.770634, 30.516548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582577, 42.916348, 30.707230>,  <42.587421, 43.159203, 31.025032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582577, 42.916348, 30.707230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161211, 0.782984, -0.600789,
		0.986846, -0.135362, 0.088390,
		-0.012116, -0.607135, -0.794506,
		42.578941, 42.734207, 30.468878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267265, 43.243633, 30.702444>,  <42.587421, 43.159203, 31.025032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267265, 43.243633, 30.702444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971481, 43.152630, 30.449005>,  <42.794010, 43.098026, 30.296942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971481, 43.152630, 30.449005>,  <43.267265, 43.243633, 30.702444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.971481, 43.152630, 30.449005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235906, 0.793918, -0.560395,
		0.630518, -0.563856, -0.533397,
		-0.739456, -0.227508, -0.633597,
		42.749645, 43.084377, 30.258926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206169, 43.597359, 31.334259>,  <43.267265, 43.243633, 30.702444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206169, 43.597359, 31.334259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944912, 43.799442, 31.559883>,  <42.788158, 43.920692, 31.695257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944912, 43.799442, 31.559883>,  <43.206169, 43.597359, 31.334259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944912, 43.799442, 31.559883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619749, -0.071365, 0.781549,
		0.435101, 0.860040, -0.266492,
		-0.653145, 0.505211, 0.564060,
		42.748970, 43.951004, 31.729101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.603352, 44.268879, 31.603849>,  <43.206169, 43.597359, 31.334259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.603352, 44.268879, 31.603849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317879, 44.073410, 31.804590>,  <43.146595, 43.956131, 31.925035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317879, 44.073410, 31.804590>,  <43.603352, 44.268879, 31.603849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.317879, 44.073410, 31.804590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643241, -0.173583, 0.745728,
		-0.277301, 0.855027, 0.438215,
		-0.713684, -0.488669, 0.501854,
		43.103775, 43.926807, 31.955147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.658947, 44.600422, 32.301350>,  <43.603352, 44.268879, 31.603849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.658947, 44.600422, 32.301350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467781, 44.263733, 32.401829>,  <43.353081, 44.061722, 32.462116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467781, 44.263733, 32.401829>,  <43.658947, 44.600422, 32.301350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467781, 44.263733, 32.401829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519359, -0.040136, 0.853613,
		-0.708421, 0.538421, 0.456336,
		-0.477919, -0.841720, 0.251201,
		43.324406, 44.011215, 32.477188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234413, 44.586651, 32.969395>,  <43.658947, 44.600422, 32.301350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234413, 44.586651, 32.969395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417515, 44.243736, 32.875137>,  <43.527378, 44.037987, 32.818584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417515, 44.243736, 32.875137>,  <43.234413, 44.586651, 32.969395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417515, 44.243736, 32.875137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616773, 0.115308, 0.778649,
		-0.640351, -0.501768, 0.581532,
		0.457757, -0.857282, -0.235640,
		43.554840, 43.986553, 32.804447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253006, 44.147697, 33.554943>,  <43.234413, 44.586651, 32.969395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253006, 44.147697, 33.554943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567410, 44.087955, 33.314983>,  <43.756054, 44.052113, 33.171009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567410, 44.087955, 33.314983>,  <43.253006, 44.147697, 33.554943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.567410, 44.087955, 33.314983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612450, 0.320267, 0.722727,
		0.084185, -0.935480, 0.343205,
		0.786013, -0.149353, -0.599897,
		43.803215, 44.043148, 33.135014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.729252, 44.208256, 34.055897>,  <43.253006, 44.147697, 33.554943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.729252, 44.208256, 34.055897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.018242, 44.135666, 33.789032>,  <44.191635, 44.092113, 33.628914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.018242, 44.135666, 33.789032>,  <43.729252, 44.208256, 34.055897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018242, 44.135666, 33.789032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690289, 0.244016, 0.681144,
		0.039189, -0.952640, 0.301563,
		0.722472, -0.181473, -0.667160,
		44.234982, 44.081223, 33.588882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.216339, 43.650146, 34.302696>,  <43.729252, 44.208256, 34.055897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.216339, 43.650146, 34.302696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364937, 43.908119, 34.035545>,  <44.454094, 44.062901, 33.875256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364937, 43.908119, 34.035545>,  <44.216339, 43.650146, 34.302696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364937, 43.908119, 34.035545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687554, 0.292309, 0.664699,
		0.623910, -0.706132, -0.334834,
		0.371490, 0.644928, -0.667879,
		44.476383, 44.101597, 33.835182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.341553, 43.103069, 34.795753>,  <44.216339, 43.650146, 34.302696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.341553, 43.103069, 34.795753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.334095, 43.062233, 34.397915>,  <44.329620, 43.037731, 34.159210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.334095, 43.062233, 34.397915>,  <44.341553, 43.103069, 34.795753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.334095, 43.062233, 34.397915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046386, -0.993614, 0.102855,
		-0.998750, 0.048053, 0.013789,
		-0.018644, -0.102087, -0.994601,
		44.328503, 43.031609, 34.099533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869900, 42.620201, 34.637081>,  <44.341553, 43.103069, 34.795753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869900, 42.620201, 34.637081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094975, 42.608250, 34.306629>,  <44.230019, 42.601078, 34.108356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094975, 42.608250, 34.306629>,  <43.869900, 42.620201, 34.637081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.094975, 42.608250, 34.306629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274817, -0.949270, -0.152848,
		-0.779652, 0.313040, -0.542354,
		0.562688, -0.029880, -0.826129,
		44.263783, 42.599285, 34.058792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.492222, 42.160271, 34.167480>,  <43.869900, 42.620201, 34.637081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.492222, 42.160271, 34.167480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.851322, 42.175930, 33.991978>,  <44.066784, 42.185326, 33.886677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.851322, 42.175930, 33.991978>,  <43.492222, 42.160271, 34.167480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.851322, 42.175930, 33.991978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079595, -0.965230, -0.248990,
		-0.433252, 0.258454, -0.863420,
		0.897751, 0.039152, -0.438759,
		44.120647, 42.187675, 33.860352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381626, 41.873383, 33.429230>,  <43.492222, 42.160271, 34.167480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381626, 41.873383, 33.429230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.762299, 41.847214, 33.549252>,  <43.990700, 41.831512, 33.621265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.762299, 41.847214, 33.549252>,  <43.381626, 41.873383, 33.429230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.762299, 41.847214, 33.549252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008435, -0.971110, -0.238482,
		0.306986, 0.229489, -0.923631,
		0.951677, -0.065419, 0.300053,
		44.047802, 41.827587, 33.639267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680103, 41.377575, 32.861382>,  <43.381626, 41.873383, 33.429230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680103, 41.377575, 32.861382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.925522, 41.383236, 33.177193>,  <44.072773, 41.386635, 33.366680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.925522, 41.383236, 33.177193>,  <43.680103, 41.377575, 32.861382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.925522, 41.383236, 33.177193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224011, -0.961885, -0.156833,
		0.757217, 0.273089, -0.593334,
		0.613548, 0.014157, 0.789530,
		44.109585, 41.387482, 33.414051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.411713, 41.099743, 32.659573>,  <43.680103, 41.377575, 32.861382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.411713, 41.099743, 32.659573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401955, 41.040321, 33.055016>,  <44.396099, 41.004669, 33.292282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401955, 41.040321, 33.055016>,  <44.411713, 41.099743, 32.659573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401955, 41.040321, 33.055016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219692, -0.965521, -0.139660,
		0.975264, 0.213781, 0.056191,
		-0.024397, -0.148550, 0.988604,
		44.394634, 40.995758, 33.351597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.980251, 40.680153, 32.825329>,  <44.411713, 41.099743, 32.659573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.980251, 40.680153, 32.825329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.694263, 40.629742, 33.100410>,  <44.522671, 40.599495, 33.265457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.694263, 40.629742, 33.100410>,  <44.980251, 40.680153, 32.825329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.694263, 40.629742, 33.100410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007450, -0.982191, -0.187735,
		0.699114, -0.139349, 0.701300,
		-0.714972, -0.126024, 0.687702,
		44.479771, 40.591934, 33.306721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971844, 40.037945, 32.877769>,  <44.980251, 40.680153, 32.825329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971844, 40.037945, 32.877769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.664154, 40.048656, 33.133137>,  <44.479538, 40.055084, 33.286358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.664154, 40.048656, 33.133137>,  <44.971844, 40.037945, 32.877769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664154, 40.048656, 33.133137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015899, -0.998010, 0.061022,
		0.638778, 0.057090, 0.767270,
		-0.769227, 0.026780, 0.638414,
		44.433388, 40.056690, 33.324661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.267822, 39.639908, 33.428780>,  <44.971844, 40.037945, 32.877769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.267822, 39.639908, 33.428780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.870014, 39.637047, 33.470505>,  <44.631329, 39.635330, 33.495541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.870014, 39.637047, 33.470505>,  <45.267822, 39.639908, 33.428780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.870014, 39.637047, 33.470505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032770, -0.968710, 0.246022,
		0.099287, 0.248092, 0.963635,
		-0.994519, -0.007152, 0.104311,
		44.571659, 39.634903, 33.501797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.246296, 39.342037, 34.109806>,  <45.267822, 39.639908, 33.428780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.246296, 39.342037, 34.109806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.913132, 39.313408, 33.890301>,  <44.713234, 39.296230, 33.758598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.913132, 39.313408, 33.890301>,  <45.246296, 39.342037, 34.109806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.913132, 39.313408, 33.890301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032997, -0.983415, 0.178343,
		-0.552423, 0.166651, 0.816735,
		-0.832911, -0.071571, -0.548760,
		44.663258, 39.291935, 33.725674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.654160, 39.081852, 34.499638>,  <45.246296, 39.342037, 34.109806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.654160, 39.081852, 34.499638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562656, 38.988693, 34.121552>,  <44.507755, 38.932796, 33.894699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562656, 38.988693, 34.121552>,  <44.654160, 39.081852, 34.499638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562656, 38.988693, 34.121552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157316, -0.949353, 0.271995,
		-0.960688, 0.210918, 0.180533,
		-0.228758, -0.232901, -0.945213,
		44.494030, 38.918823, 33.837986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332417, 38.435307, 34.544567>,  <44.654160, 39.081852, 34.499638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.332417, 38.435307, 34.544567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.320358, 38.444817, 34.144863>,  <44.313122, 38.450523, 33.905041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.320358, 38.444817, 34.144863>,  <44.332417, 38.435307, 34.544567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320358, 38.444817, 34.144863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083931, -0.996247, -0.021171,
		-0.996016, 0.083231, 0.032019,
		-0.030136, 0.023774, -0.999263,
		44.311314, 38.451950, 33.845085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678074, 38.141598, 34.256420>,  <44.332417, 38.435307, 34.544567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678074, 38.141598, 34.256420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958817, 38.101654, 33.974308>,  <44.127262, 38.077686, 33.805042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958817, 38.101654, 33.974308>,  <43.678074, 38.141598, 34.256420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958817, 38.101654, 33.974308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280059, -0.949072, -0.144322,
		-0.654949, 0.298814, -0.694084,
		0.701861, -0.099861, -0.705279,
		44.169376, 38.071697, 33.762726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324814, 37.657684, 33.906528>,  <43.678074, 38.141598, 34.256420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324814, 37.657684, 33.906528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.699429, 37.647163, 33.766701>,  <43.924198, 37.640850, 33.682804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.699429, 37.647163, 33.766701>,  <43.324814, 37.657684, 33.906528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.699429, 37.647163, 33.766701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039565, -0.998741, -0.030842,
		-0.348319, 0.042716, -0.936402,
		0.936541, -0.026306, -0.349571,
		43.980392, 37.639271, 33.661831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363972, 37.364002, 33.317245>,  <43.324814, 37.657684, 33.906528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.363972, 37.364002, 33.317245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730778, 37.308723, 33.466900>,  <43.950863, 37.275555, 33.556694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730778, 37.308723, 33.466900>,  <43.363972, 37.364002, 33.317245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730778, 37.308723, 33.466900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254685, -0.924801, 0.282629,
		0.306945, -0.354463, -0.883256,
		0.917017, -0.138200, 0.374139,
		44.005882, 37.267262, 33.579140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489105, 36.751263, 33.206440>,  <43.363972, 37.364002, 33.317245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489105, 36.751263, 33.206440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.781239, 36.793594, 33.476379>,  <43.956516, 36.818993, 33.638344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.781239, 36.793594, 33.476379>,  <43.489105, 36.751263, 33.206440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.781239, 36.793594, 33.476379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127471, -0.949457, 0.286849,
		0.671096, -0.295518, -0.679926,
		0.730330, 0.105832, 0.674847,
		44.000336, 36.825344, 33.678833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925953, 36.176224, 33.167675>,  <43.489105, 36.751263, 33.206440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925953, 36.176224, 33.167675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985157, 36.328186, 33.532917>,  <44.020679, 36.419365, 33.752064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985157, 36.328186, 33.532917>,  <43.925953, 36.176224, 33.167675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985157, 36.328186, 33.532917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118379, -0.909832, 0.397735,
		0.981875, -0.166963, -0.089696,
		0.148015, 0.379907, 0.913106,
		44.029560, 36.442158, 33.806850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541969, 35.915825, 33.437294>,  <43.925953, 36.176224, 33.167675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541969, 35.915825, 33.437294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344055, 36.030800, 33.765335>,  <44.225307, 36.099785, 33.962162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344055, 36.030800, 33.765335>,  <44.541969, 35.915825, 33.437294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.344055, 36.030800, 33.765335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089675, -0.955566, 0.280808,
		0.864378, 0.065396, 0.498572,
		-0.494782, 0.287433, 0.820106,
		44.195621, 36.117031, 34.011368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.889542, 35.654953, 34.094410>,  <44.541969, 35.915825, 33.437294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.889542, 35.654953, 34.094410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.505142, 35.730648, 34.175079>,  <44.274502, 35.776066, 34.223480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.505142, 35.730648, 34.175079>,  <44.889542, 35.654953, 34.094410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.505142, 35.730648, 34.175079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121975, -0.944496, 0.305041,
		0.248209, 0.268544, 0.930740,
		-0.960997, 0.189241, 0.201676,
		44.216843, 35.787418, 34.235580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.805782, 35.323601, 34.637093>,  <44.889542, 35.654953, 34.094410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.805782, 35.323601, 34.637093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419289, 35.363865, 34.542221>,  <44.187393, 35.388023, 34.485298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419289, 35.363865, 34.542221>,  <44.805782, 35.323601, 34.637093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.419289, 35.363865, 34.542221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171764, -0.937787, 0.301748,
		-0.192050, 0.332299, 0.923414,
		-0.966237, 0.100659, -0.237179,
		44.129417, 35.394062, 34.471066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274414, 35.299911, 35.128689>,  <44.805782, 35.323601, 34.637093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274414, 35.299911, 35.128689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.433956, 35.661625, 35.189590>,  <45.529682, 35.878654, 35.226131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.433956, 35.661625, 35.189590>,  <45.274414, 35.299911, 35.128689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.433956, 35.661625, 35.189590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779881, -0.247159, -0.575063,
		-0.482390, 0.348108, -0.803816,
		0.398855, 0.904286, 0.152255,
		45.553612, 35.932911, 35.235268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553333, 35.691532, 34.513592>,  <45.274414, 35.299911, 35.128689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.553333, 35.691532, 34.513592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789528, 35.810459, 34.813705>,  <45.931244, 35.881817, 34.993774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789528, 35.810459, 34.813705>,  <45.553333, 35.691532, 34.513592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.789528, 35.810459, 34.813705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806272, -0.176576, -0.564576,
		-0.035376, 0.938309, -0.343985,
		0.590486, 0.297318, 0.750286,
		45.966675, 35.899654, 35.038792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.961597, 36.293812, 34.330467>,  <45.553333, 35.691532, 34.513592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.961597, 36.293812, 34.330467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.140072, 36.103561, 34.633705>,  <46.247154, 35.989410, 34.815647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.140072, 36.103561, 34.633705>,  <45.961597, 36.293812, 34.330467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.140072, 36.103561, 34.633705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861219, -0.002151, -0.508229,
		0.243355, 0.879647, 0.408655,
		0.446183, -0.475622, 0.758093,
		46.273926, 35.960876, 34.861134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.645561, 36.651588, 34.647865>,  <45.961597, 36.293812, 34.330467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.645561, 36.651588, 34.647865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.586700, 36.259769, 34.592979>,  <46.551384, 36.024677, 34.560047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.586700, 36.259769, 34.592979>,  <46.645561, 36.651588, 34.647865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.586700, 36.259769, 34.592979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652437, 0.008137, -0.757799,
		0.743419, -0.201036, 0.637897,
		-0.147154, -0.979550, -0.137213,
		46.542553, 35.965904, 34.551815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.134880, 36.167812, 34.955360>,  <46.645561, 36.651588, 34.647865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.134880, 36.167812, 34.955360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.969177, 36.142628, 34.592171>,  <46.869755, 36.127518, 34.374256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.969177, 36.142628, 34.592171>,  <47.134880, 36.167812, 34.955360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.969177, 36.142628, 34.592171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866910, 0.276565, -0.414702,
		0.277255, -0.958926, -0.059924,
		-0.414242, -0.063029, -0.907982,
		46.844898, 36.123741, 34.319778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.353996, 35.458855, 34.913231>,  <47.134880, 36.167812, 34.955360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.353996, 35.458855, 34.913231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.579494, 35.143456, 35.011585>,  <47.714794, 34.954216, 35.070599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.579494, 35.143456, 35.011585>,  <47.353996, 35.458855, 34.913231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.579494, 35.143456, 35.011585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165928, 0.399746, 0.901483,
		-0.809111, -0.467407, 0.356189,
		0.563745, -0.788501, 0.245883,
		47.748619, 34.906906, 35.085350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.033924, 34.329449, 44.182243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.809105, 34.001484, 44.225777>,  <36.674213, 33.804707, 44.251896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.809105, 34.001484, 44.225777>,  <37.033924, 34.329449, 44.182243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809105, 34.001484, 44.225777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276784, 0.062449, -0.958901,
		0.779417, -0.569074, -0.262038,
		-0.562050, -0.819911, 0.108837,
		36.640491, 33.755512, 44.258427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207588, 33.877804, 43.576603>,  <37.033924, 34.329449, 44.182243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207588, 33.877804, 43.576603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.849258, 33.792156, 43.732376>,  <36.634262, 33.740768, 43.825840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.849258, 33.792156, 43.732376>,  <37.207588, 33.877804, 43.576603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849258, 33.792156, 43.732376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396473, -0.010848, -0.917982,
		0.200782, -0.976747, -0.075174,
		-0.895821, -0.214119, 0.389433,
		36.580513, 33.727921, 43.849205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996262, 33.449020, 43.107491>,  <37.207588, 33.877804, 43.576603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996262, 33.449020, 43.107491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.678875, 33.589867, 43.306053>,  <36.488441, 33.674374, 43.425190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.678875, 33.589867, 43.306053>,  <36.996262, 33.449020, 43.107491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678875, 33.589867, 43.306053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444232, 0.222454, -0.867855,
		-0.416014, -0.909137, -0.020089,
		-0.793468, 0.352115, 0.496411,
		36.440834, 33.695499, 43.454975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438866, 33.212780, 42.696247>,  <36.996262, 33.449020, 43.107491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438866, 33.212780, 42.696247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.258530, 33.496296, 42.913269>,  <36.150330, 33.666405, 43.043484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.258530, 33.496296, 42.913269>,  <36.438866, 33.212780, 42.696247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258530, 33.496296, 42.913269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474811, 0.324271, -0.818170,
		-0.755843, -0.626474, 0.190346,
		-0.450838, 0.708787, 0.542555,
		36.123280, 33.708931, 43.076035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797081, 33.236584, 42.424545>,  <36.438866, 33.212780, 42.696247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797081, 33.236584, 42.424545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.851227, 33.598953, 42.585037>,  <35.883717, 33.816376, 42.681332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.851227, 33.598953, 42.585037>,  <35.797081, 33.236584, 42.424545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851227, 33.598953, 42.585037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383677, 0.421291, -0.821770,
		-0.913492, -0.042700, 0.404610,
		0.135369, 0.905919, 0.401229,
		35.891838, 33.870728, 42.705406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169193, 33.571297, 42.247871>,  <35.797081, 33.236584, 42.424545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169193, 33.571297, 42.247871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.436596, 33.855118, 42.336979>,  <35.597038, 34.025410, 42.390446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.436596, 33.855118, 42.336979>,  <35.169193, 33.571297, 42.247871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436596, 33.855118, 42.336979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263917, 0.506388, -0.820926,
		-0.695301, 0.490003, 0.525788,
		0.668509, 0.709555, 0.222772,
		35.637150, 34.067986, 42.403812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745903, 34.164070, 42.293900>,  <35.169193, 33.571297, 42.247871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745903, 34.164070, 42.293900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.132427, 34.242210, 42.226864>,  <35.364342, 34.289093, 42.186642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.132427, 34.242210, 42.226864>,  <34.745903, 34.164070, 42.293900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132427, 34.242210, 42.226864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243063, 0.478442, -0.843809,
		-0.084654, 0.856115, 0.509804,
		0.966309, 0.195347, -0.167588,
		35.422321, 34.300816, 42.176586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906189, 34.978584, 42.044193>,  <34.745903, 34.164070, 42.293900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906189, 34.978584, 42.044193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.225433, 34.771049, 41.921665>,  <35.416981, 34.646526, 41.848148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.225433, 34.771049, 41.921665>,  <34.906189, 34.978584, 42.044193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225433, 34.771049, 41.921665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096349, 0.391953, -0.914926,
		0.594762, 0.759722, 0.262831,
		0.798107, -0.518840, -0.306317,
		35.464867, 34.615398, 41.829769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154041, 35.495464, 41.485592>,  <34.906189, 34.978584, 42.044193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154041, 35.495464, 41.485592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.342594, 35.153114, 41.400475>,  <35.455727, 34.947704, 41.349403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.342594, 35.153114, 41.400475>,  <35.154041, 35.495464, 41.485592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342594, 35.153114, 41.400475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052008, 0.267840, -0.962058,
		0.880396, 0.442427, 0.170766,
		0.471379, -0.855874, -0.212796,
		35.484009, 34.896351, 41.336636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739601, 35.742634, 41.168179>,  <35.154041, 35.495464, 41.485592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739601, 35.742634, 41.168179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.692520, 35.360451, 41.059921>,  <35.664272, 35.131142, 40.994965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.692520, 35.360451, 41.059921>,  <35.739601, 35.742634, 41.168179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692520, 35.360451, 41.059921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145968, 0.252933, -0.956409,
		0.982262, -0.152079, 0.109695,
		-0.117704, -0.955457, -0.270645,
		35.657207, 35.073814, 40.978729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374935, 35.563171, 40.752541>,  <35.739601, 35.742634, 41.168179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374935, 35.563171, 40.752541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.066620, 35.329506, 40.650841>,  <35.881630, 35.189304, 40.589821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.066620, 35.329506, 40.650841>,  <36.374935, 35.563171, 40.752541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066620, 35.329506, 40.650841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154343, 0.215969, -0.964124,
		0.618118, -0.782373, -0.076304,
		-0.770784, -0.584166, -0.254249,
		35.835384, 35.154255, 40.574566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660141, 35.162746, 40.207966>,  <36.374935, 35.563171, 40.752541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660141, 35.162746, 40.207966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.263508, 35.137592, 40.162682>,  <36.025528, 35.122501, 40.135509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.263508, 35.137592, 40.162682>,  <36.660141, 35.162746, 40.207966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263508, 35.137592, 40.162682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108088, 0.079672, -0.990944,
		0.071308, -0.994837, -0.072207,
		-0.991581, -0.062857, -0.113212,
		35.966034, 35.118729, 40.128719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620609, 34.662777, 39.656261>,  <36.660141, 35.162746, 40.207966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620609, 34.662777, 39.656261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.260098, 34.835781, 39.666386>,  <36.043793, 34.939583, 39.672462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.260098, 34.835781, 39.666386>,  <36.620609, 34.662777, 39.656261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260098, 34.835781, 39.666386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006761, 0.044377, -0.998992,
		-0.433195, -0.900538, -0.037072,
		-0.901275, 0.432507, 0.025313,
		35.989716, 34.965534, 39.673981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219162, 34.327179, 39.235401>,  <36.620609, 34.662777, 39.656261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219162, 34.327179, 39.235401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.010998, 34.667221, 39.267643>,  <35.886101, 34.871246, 39.286987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.010998, 34.667221, 39.267643>,  <36.219162, 34.327179, 39.235401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010998, 34.667221, 39.267643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046340, 0.122365, -0.991403,
		-0.852658, -0.512202, -0.103074,
		-0.520411, 0.850104, 0.080600,
		35.854874, 34.922253, 39.291824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496216, 34.253010, 38.854252>,  <36.219162, 34.327179, 39.235401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496216, 34.253010, 38.854252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.586281, 34.642155, 38.875610>,  <35.640320, 34.875641, 38.888424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.586281, 34.642155, 38.875610>,  <35.496216, 34.253010, 38.854252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586281, 34.642155, 38.875610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058031, 0.068094, -0.995990,
		-0.972592, 0.221157, 0.071788,
		0.225159, 0.972858, 0.053394,
		35.653828, 34.934013, 38.891628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136429, 34.557384, 38.336433>,  <35.496216, 34.253010, 38.854252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136429, 34.557384, 38.336433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.379173, 34.866039, 38.412651>,  <35.524818, 35.051231, 38.458382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.379173, 34.866039, 38.412651>,  <35.136429, 34.557384, 38.336433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379173, 34.866039, 38.412651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033575, 0.264405, -0.963827,
		-0.794102, 0.578507, 0.186364,
		0.606857, 0.771634, 0.190541,
		35.561230, 35.097530, 38.469814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768433, 35.252522, 38.148987>,  <35.136429, 34.557384, 38.336433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768433, 35.252522, 38.148987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.167713, 35.274323, 38.139023>,  <35.407280, 35.287403, 38.133045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.167713, 35.274323, 38.139023>,  <34.768433, 35.252522, 38.148987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167713, 35.274323, 38.139023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041127, 0.320687, -0.946292,
		-0.043588, 0.945616, 0.322352,
		0.998203, 0.054504, -0.024912,
		35.467175, 35.290672, 38.131550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848778, 35.800758, 37.680641>,  <34.768433, 35.252522, 38.148987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848778, 35.800758, 37.680641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.214897, 35.642616, 37.711411>,  <35.434570, 35.547729, 37.729870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.214897, 35.642616, 37.711411>,  <34.848778, 35.800758, 37.680641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214897, 35.642616, 37.711411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187973, 0.250406, -0.949717,
		0.356219, 0.883735, 0.303514,
		0.915300, -0.395360, 0.076919,
		35.489487, 35.524010, 37.734486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217110, 36.252167, 37.263592>,  <34.848778, 35.800758, 37.680641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217110, 36.252167, 37.263592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.428177, 35.914177, 37.298439>,  <35.554817, 35.711384, 37.319347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.428177, 35.914177, 37.298439>,  <35.217110, 36.252167, 37.263592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428177, 35.914177, 37.298439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337514, 0.114436, -0.934339,
		0.779520, 0.522424, 0.345574,
		0.527667, -0.844972, 0.087121,
		35.586475, 35.660686, 37.324574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780766, 36.403904, 36.901054>,  <35.217110, 36.252167, 37.263592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780766, 36.403904, 36.901054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.821877, 36.007214, 36.931812>,  <35.846542, 35.769199, 36.950268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.821877, 36.007214, 36.931812>,  <35.780766, 36.403904, 36.901054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821877, 36.007214, 36.931812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424468, -0.026187, -0.905064,
		0.899590, 0.125664, 0.418265,
		0.102781, -0.991727, 0.076898,
		35.852711, 35.709694, 36.954880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394531, 36.294029, 36.882442>,  <35.780766, 36.403904, 36.901054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394531, 36.294029, 36.882442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.208759, 35.965958, 36.748814>,  <36.097294, 35.769115, 36.668636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.208759, 35.965958, 36.748814>,  <36.394531, 36.294029, 36.882442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208759, 35.965958, 36.748814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452453, 0.104531, -0.885641,
		0.761306, -0.562474, 0.322545,
		-0.464434, -0.820180, -0.334073,
		36.069427, 35.719902, 36.648590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918953, 35.968433, 36.427742>,  <36.394531, 36.294029, 36.882442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918953, 35.968433, 36.427742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.582500, 35.786976, 36.309952>,  <36.380630, 35.678101, 36.239277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.582500, 35.786976, 36.309952>,  <36.918953, 35.968433, 36.427742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582500, 35.786976, 36.309952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374992, -0.096820, -0.921958,
		0.389726, -0.885910, 0.251550,
		-0.841127, -0.453640, -0.294476,
		36.330162, 35.650883, 36.221607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441105, 35.708260, 36.053936>,  <36.918953, 35.968433, 36.427742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441105, 35.708260, 36.053936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.818142, 35.836834, 36.017719>,  <38.044365, 35.913979, 35.995991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.818142, 35.836834, 36.017719>,  <37.441105, 35.708260, 36.053936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818142, 35.836834, 36.017719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158673, -0.192538, 0.968376,
		0.293840, -0.927150, -0.232488,
		0.942593, 0.321437, -0.090538,
		38.100922, 35.933266, 35.990559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791992, 35.237556, 36.311546>,  <37.441105, 35.708260, 36.053936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791992, 35.237556, 36.311546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.058594, 35.534920, 36.333900>,  <38.218555, 35.713337, 36.347313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.058594, 35.534920, 36.333900>,  <37.791992, 35.237556, 36.311546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058594, 35.534920, 36.333900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007931, -0.082028, 0.996598,
		0.745463, -0.663789, -0.060568,
		0.666499, 0.743408, 0.055885,
		38.258545, 35.757942, 36.350666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370941, 34.957809, 36.636307>,  <37.791992, 35.237556, 36.311546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370941, 34.957809, 36.636307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.468815, 35.345253, 36.653843>,  <38.527538, 35.577721, 36.664364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.468815, 35.345253, 36.653843>,  <38.370941, 34.957809, 36.636307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468815, 35.345253, 36.653843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236025, -0.103360, 0.966235,
		0.940437, -0.226073, -0.253907,
		0.244683, 0.968611, 0.043845,
		38.542221, 35.635838, 36.666996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051132, 35.018623, 36.981220>,  <38.370941, 34.957809, 36.636307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051132, 35.018623, 36.981220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.840687, 35.355213, 37.030422>,  <38.714420, 35.557167, 37.059944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.840687, 35.355213, 37.030422>,  <39.051132, 35.018623, 36.981220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840687, 35.355213, 37.030422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088653, -0.089589, 0.992025,
		0.845783, 0.532820, -0.027465,
		-0.526110, 0.841473, 0.123009,
		38.682854, 35.607655, 37.067326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471775, 35.388638, 37.377281>,  <39.051132, 35.018623, 36.981220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471775, 35.388638, 37.377281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.112026, 35.555008, 37.431152>,  <38.896175, 35.654831, 37.463474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.112026, 35.555008, 37.431152>,  <39.471775, 35.388638, 37.377281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112026, 35.555008, 37.431152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092865, -0.119273, 0.988509,
		0.427210, 0.901543, 0.068646,
		-0.899371, 0.415926, 0.134676,
		38.842216, 35.679787, 37.471554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600563, 35.865452, 37.884808>,  <39.471775, 35.388638, 37.377281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600563, 35.865452, 37.884808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.205345, 35.803795, 37.885136>,  <38.968212, 35.766800, 37.885334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.205345, 35.803795, 37.885136>,  <39.600563, 35.865452, 37.884808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205345, 35.803795, 37.885136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013756, -0.082886, 0.996464,
		-0.153527, 0.984566, 0.084015,
		-0.988049, -0.154140, 0.000819,
		38.908932, 35.757553, 37.885380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379684, 36.353149, 38.323334>,  <39.600563, 35.865452, 37.884808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379684, 36.353149, 38.323334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.144676, 36.030087, 38.303257>,  <39.003674, 35.836250, 38.291210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.144676, 36.030087, 38.303257>,  <39.379684, 36.353149, 38.323334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144676, 36.030087, 38.303257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036042, -0.035843, 0.998707,
		-0.808409, 0.588566, -0.008051,
		-0.587517, -0.807654, -0.050188,
		38.968422, 35.787788, 38.288200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027000, 36.358105, 38.955273>,  <39.379684, 36.353149, 38.323334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027000, 36.358105, 38.955273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.950436, 35.992344, 38.812592>,  <38.904499, 35.772888, 38.726982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.950436, 35.992344, 38.812592>,  <39.027000, 36.358105, 38.955273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950436, 35.992344, 38.812592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129632, -0.336685, 0.932651,
		-0.972912, 0.224757, -0.054091,
		-0.191408, -0.914400, -0.356701,
		38.893013, 35.718025, 38.705582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439941, 36.117184, 39.359409>,  <39.027000, 36.358105, 38.955273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439941, 36.117184, 39.359409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.602097, 35.793949, 39.188454>,  <38.699390, 35.600010, 39.085880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.602097, 35.793949, 39.188454>,  <38.439941, 36.117184, 39.359409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602097, 35.793949, 39.188454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027227, -0.477993, 0.877942,
		-0.913740, -0.344269, -0.215773,
		0.405387, -0.808085, -0.427388,
		38.723713, 35.551525, 39.060238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887383, 35.560791, 39.594120>,  <38.439941, 36.117184, 39.359409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887383, 35.560791, 39.594120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.194309, 35.330406, 39.481346>,  <38.378468, 35.192173, 39.413681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.194309, 35.330406, 39.481346>,  <37.887383, 35.560791, 39.594120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194309, 35.330406, 39.481346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057666, -0.499840, 0.864195,
		-0.638668, -0.646855, -0.416751,
		0.767318, -0.575967, -0.281931,
		38.424503, 35.157616, 39.396767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714806, 34.857380, 39.798939>,  <37.887383, 35.560791, 39.594120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714806, 34.857380, 39.798939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.114136, 34.877739, 39.787979>,  <38.353733, 34.889954, 39.781403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.114136, 34.877739, 39.787979>,  <37.714806, 34.857380, 39.798939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114136, 34.877739, 39.787979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046770, -0.432669, 0.900339,
		0.033967, -0.900115, -0.434325,
		0.998328, 0.050895, -0.027402,
		38.413635, 34.893009, 39.779758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906185, 34.232708, 40.039886>,  <37.714806, 34.857380, 39.798939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906185, 34.232708, 40.039886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.242878, 34.443634, 40.086246>,  <38.444893, 34.570190, 40.114063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.242878, 34.443634, 40.086246>,  <37.906185, 34.232708, 40.039886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242878, 34.443634, 40.086246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215134, -0.524480, 0.823795,
		0.495189, -0.668475, -0.554913,
		0.841727, 0.527315, 0.115905,
		38.495396, 34.601830, 40.121017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333000, 33.731602, 40.400249>,  <37.906185, 34.232708, 40.039886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333000, 33.731602, 40.400249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498032, 34.092514, 40.450321>,  <38.597050, 34.309063, 40.480366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498032, 34.092514, 40.450321>,  <38.333000, 33.731602, 40.400249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498032, 34.092514, 40.450321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363267, -0.288993, 0.885732,
		0.835353, -0.319961, -0.447001,
		0.412580, 0.902279, 0.125180,
		38.621807, 34.363197, 40.487877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098877, 33.681278, 40.494308>,  <38.333000, 33.731602, 40.400249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098877, 33.681278, 40.494308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.963531, 34.017059, 40.664402>,  <38.882324, 34.218529, 40.766460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.963531, 34.017059, 40.664402>,  <39.098877, 33.681278, 40.494308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963531, 34.017059, 40.664402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344750, -0.309888, 0.886068,
		0.875588, 0.446417, -0.184545,
		-0.338367, 0.839453, 0.425236,
		38.862022, 34.268894, 40.791973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473946, 33.705570, 41.053749>,  <39.098877, 33.681278, 40.494308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473946, 33.705570, 41.053749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.228321, 34.010891, 41.134041>,  <39.080944, 34.194084, 41.182217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.228321, 34.010891, 41.134041>,  <39.473946, 33.705570, 41.053749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228321, 34.010891, 41.134041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147572, -0.138808, 0.979262,
		0.775336, 0.630954, -0.027405,
		-0.614065, 0.763302, 0.200734,
		39.044102, 34.239880, 41.194260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724842, 34.129375, 41.602459>,  <39.473946, 33.705570, 41.053749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724842, 34.129375, 41.602459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.334419, 34.216278, 41.606792>,  <39.100166, 34.268417, 41.609394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.334419, 34.216278, 41.606792>,  <39.724842, 34.129375, 41.602459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334419, 34.216278, 41.606792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009295, -0.091426, 0.995768,
		0.217326, 0.971824, 0.091256,
		-0.976055, 0.217255, 0.010836,
		39.041603, 34.281456, 41.610043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597336, 34.747498, 41.956722>,  <39.724842, 34.129375, 41.602459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597336, 34.747498, 41.956722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.242714, 34.562603, 41.964211>,  <39.029942, 34.451668, 41.968704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.242714, 34.562603, 41.964211>,  <39.597336, 34.747498, 41.956722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242714, 34.562603, 41.964211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008409, 0.024365, 0.999668,
		-0.462539, 0.886422, -0.017714,
		-0.886559, -0.462236, 0.018724,
		38.976746, 34.423931, 41.969830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169472, 35.063564, 42.413712>,  <39.597336, 34.747498, 41.956722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169472, 35.063564, 42.413712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.993183, 34.705765, 42.383656>,  <38.887409, 34.491085, 42.365620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.993183, 34.705765, 42.383656>,  <39.169472, 35.063564, 42.413712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993183, 34.705765, 42.383656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047617, -0.060299, 0.997044,
		-0.896381, 0.442995, -0.016018,
		-0.440719, -0.894494, -0.075144,
		38.860966, 34.437416, 42.361111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.465916, 34.990875, 42.977970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.576881, 34.626392, 42.856159>,  <38.643459, 34.407703, 42.783073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.576881, 34.626392, 42.856159>,  <38.465916, 34.990875, 42.977970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576881, 34.626392, 42.856159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055744, -0.301169, 0.951940,
		-0.959133, -0.281054, -0.032753,
		0.277410, -0.911211, -0.304528,
		38.660103, 34.353027, 42.764801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112202, 34.624294, 43.428928>,  <38.465916, 34.990875, 42.977970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112202, 34.624294, 43.428928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.387215, 34.353699, 43.323357>,  <38.552223, 34.191341, 43.260014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.387215, 34.353699, 43.323357>,  <38.112202, 34.624294, 43.428928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387215, 34.353699, 43.323357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069438, -0.423047, 0.903443,
		-0.722827, -0.602819, -0.337832,
		0.687531, -0.676491, -0.263931,
		38.593475, 34.150753, 43.244179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923698, 33.994595, 43.693138>,  <38.112202, 34.624294, 43.428928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923698, 33.994595, 43.693138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.296597, 33.897831, 43.585506>,  <38.520336, 33.839775, 43.520927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.296597, 33.897831, 43.585506>,  <37.923698, 33.994595, 43.693138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296597, 33.897831, 43.585506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120046, -0.494767, 0.860694,
		-0.341340, -0.834678, -0.432203,
		0.932242, -0.241905, -0.269084,
		38.576271, 33.825260, 43.504780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034550, 33.389999, 43.980202>,  <37.923698, 33.994595, 43.693138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034550, 33.389999, 43.980202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.411732, 33.507591, 43.917698>,  <38.638039, 33.578148, 43.880196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.411732, 33.507591, 43.917698>,  <38.034550, 33.389999, 43.980202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411732, 33.507591, 43.917698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198330, -0.119046, 0.972879,
		0.267407, -0.948368, -0.170560,
		0.942952, 0.293982, -0.156256,
		38.694618, 33.595787, 43.870819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474640, 32.931000, 44.331661>,  <38.034550, 33.389999, 43.980202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474640, 32.931000, 44.331661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.708221, 33.253662, 44.295223>,  <38.848370, 33.447262, 44.273361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.708221, 33.253662, 44.295223>,  <38.474640, 32.931000, 44.331661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708221, 33.253662, 44.295223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267032, -0.084899, 0.959941,
		0.766611, -0.584887, -0.264982,
		0.583953, 0.806660, -0.091099,
		38.883408, 33.495659, 44.267895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095097, 32.786930, 44.590969>,  <38.474640, 32.931000, 44.331661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095097, 32.786930, 44.590969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.027256, 33.178516, 44.636333>,  <38.986553, 33.413467, 44.663551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.027256, 33.178516, 44.636333>,  <39.095097, 32.786930, 44.590969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027256, 33.178516, 44.636333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241157, -0.070350, 0.967933,
		0.955551, 0.191513, -0.224153,
		-0.169602, 0.978966, 0.113407,
		38.976376, 33.472206, 44.670357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802940, 33.187592, 44.797569>,  <39.095097, 32.786930, 44.590969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802940, 33.187592, 44.797569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.487595, 33.393917, 44.931683>,  <39.298386, 33.517712, 45.012150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.487595, 33.393917, 44.931683>,  <39.802940, 33.187592, 44.797569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487595, 33.393917, 44.931683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329417, -0.106339, 0.938177,
		0.519576, 0.850076, -0.086083,
		-0.788368, 0.515812, 0.335281,
		39.251083, 33.548660, 45.032269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116463, 33.726902, 45.218761>,  <39.802940, 33.187592, 44.797569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116463, 33.726902, 45.218761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.729603, 33.744198, 45.318966>,  <39.497486, 33.754574, 45.379089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.729603, 33.744198, 45.318966>,  <40.116463, 33.726902, 45.218761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729603, 33.744198, 45.318966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254020, 0.125727, 0.958993,
		0.009971, 0.991122, -0.132580,
		-0.967148, 0.043240, 0.250511,
		39.439457, 33.757172, 45.394119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102093, 34.250355, 45.708458>,  <40.116463, 33.726902, 45.218761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102093, 34.250355, 45.708458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.760715, 34.050407, 45.767467>,  <39.555889, 33.930439, 45.802872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.760715, 34.050407, 45.767467>,  <40.102093, 34.250355, 45.708458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760715, 34.050407, 45.767467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148877, 0.037435, 0.988147,
		-0.499469, 0.865290, 0.042470,
		-0.853444, -0.499872, 0.147519,
		39.504681, 33.900444, 45.811722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843910, 34.528778, 46.344730>,  <40.102093, 34.250355, 45.708458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843910, 34.528778, 46.344730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.635403, 34.187462, 46.339443>,  <39.510296, 33.982674, 46.336269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.635403, 34.187462, 46.339443>,  <39.843910, 34.528778, 46.344730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635403, 34.187462, 46.339443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114703, -0.085406, 0.989722,
		-0.845646, 0.514399, 0.142395,
		-0.521273, -0.853288, -0.013220,
		39.479019, 33.931477, 46.335476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342102, 34.607975, 46.904442>,  <39.843910, 34.528778, 46.344730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342102, 34.607975, 46.904442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.313545, 34.215076, 46.835056>,  <39.296413, 33.979336, 46.793423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.313545, 34.215076, 46.835056>,  <39.342102, 34.607975, 46.904442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313545, 34.215076, 46.835056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022919, -0.175479, 0.984217,
		-0.997185, 0.066287, 0.035039,
		-0.071390, -0.982249, -0.173466,
		39.292130, 33.920403, 46.783016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750759, 34.277737, 47.324944>,  <39.342102, 34.607975, 46.904442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750759, 34.277737, 47.324944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.970600, 33.960186, 47.220879>,  <39.102505, 33.769653, 47.158440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.970600, 33.960186, 47.220879>,  <38.750759, 34.277737, 47.324944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970600, 33.960186, 47.220879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159927, -0.405638, 0.899934,
		-0.819974, -0.453002, -0.349904,
		0.549606, -0.793882, -0.260165,
		39.135483, 33.722023, 47.142830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469803, 33.705730, 47.785503>,  <38.750759, 34.277737, 47.324944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469803, 33.705730, 47.785503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.837860, 33.595524, 47.674202>,  <39.058697, 33.529400, 47.607422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.837860, 33.595524, 47.674202>,  <38.469803, 33.705730, 47.785503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837860, 33.595524, 47.674202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125412, -0.465816, 0.875950,
		-0.370949, -0.840898, -0.394066,
		0.920146, -0.275512, -0.278253,
		39.113903, 33.512871, 47.590725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586224, 32.975716, 47.882057>,  <38.469803, 33.705730, 47.785503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586224, 32.975716, 47.882057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.957191, 33.124195, 47.900387>,  <39.179771, 33.213284, 47.911385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.957191, 33.124195, 47.900387>,  <38.586224, 32.975716, 47.882057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957191, 33.124195, 47.900387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158592, -0.501238, 0.850652,
		0.338729, -0.781647, -0.523728,
		0.927422, 0.371200, 0.045821,
		39.235416, 33.235554, 47.914135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053642, 32.408825, 47.833370>,  <38.586224, 32.975716, 47.882057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053642, 32.408825, 47.833370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.278111, 32.698990, 47.992798>,  <39.412792, 32.873089, 48.088455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.278111, 32.698990, 47.992798>,  <39.053642, 32.408825, 47.833370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278111, 32.698990, 47.992798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250002, -0.607602, 0.753869,
		0.789040, -0.323407, -0.522325,
		0.561172, 0.725416, 0.398570,
		39.446461, 32.916615, 48.112370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703907, 32.059349, 47.969723>,  <39.053642, 32.408825, 47.833370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703907, 32.059349, 47.969723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.668022, 32.369999, 48.219139>,  <39.646492, 32.556389, 48.368790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.668022, 32.369999, 48.219139>,  <39.703907, 32.059349, 47.969723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668022, 32.369999, 48.219139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424384, -0.536580, 0.729370,
		0.901028, 0.330051, -0.281452,
		-0.089708, 0.776627, 0.623541,
		39.641109, 32.602985, 48.406200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285011, 32.019447, 48.197411>,  <39.703907, 32.059349, 47.969723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285011, 32.019447, 48.197411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.100109, 32.233536, 48.480213>,  <39.989166, 32.361988, 48.649895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.100109, 32.233536, 48.480213>,  <40.285011, 32.019447, 48.197411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100109, 32.233536, 48.480213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477874, -0.521264, 0.707051,
		0.746964, 0.664700, -0.014809,
		-0.462257, 0.535218, 0.707008,
		39.961433, 32.394100, 48.692314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779091, 31.977556, 48.641075>,  <40.285011, 32.019447, 48.197411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779091, 31.977556, 48.641075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.484238, 32.097694, 48.883205>,  <40.307323, 32.169777, 49.028484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.484238, 32.097694, 48.883205>,  <40.779091, 31.977556, 48.641075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484238, 32.097694, 48.883205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292821, -0.665347, 0.686709,
		0.609003, 0.683451, 0.402505,
		-0.737138, 0.300346, 0.605327,
		40.263096, 32.187798, 49.064804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073086, 32.170937, 49.265282>,  <40.779091, 31.977556, 48.641075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073086, 32.170937, 49.265282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.688526, 32.093380, 49.343380>,  <40.457790, 32.046848, 49.390240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.688526, 32.093380, 49.343380>,  <41.073086, 32.170937, 49.265282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688526, 32.093380, 49.343380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267024, -0.828687, 0.491910,
		0.066424, 0.525057, 0.848471,
		-0.961398, -0.193887, 0.195247,
		40.400108, 32.035213, 49.401955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046452, 32.141670, 50.044727>,  <41.073086, 32.170937, 49.265282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046452, 32.141670, 50.044727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.741291, 31.943840, 49.878174>,  <40.558193, 31.825142, 49.778240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.741291, 31.943840, 49.878174>,  <41.046452, 32.141670, 50.044727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741291, 31.943840, 49.878174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133179, -0.750457, 0.647362,
		-0.632647, 0.438420, 0.638393,
		-0.762903, -0.494572, -0.416386,
		40.512421, 31.795467, 49.753258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746140, 31.882372, 50.607018>,  <41.046452, 32.141670, 50.044727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746140, 31.882372, 50.607018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.595158, 31.657282, 50.312843>,  <40.504566, 31.522228, 50.136337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.595158, 31.657282, 50.312843>,  <40.746140, 31.882372, 50.607018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595158, 31.657282, 50.312843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060155, -0.777608, 0.625865,
		-0.924071, 0.280478, 0.259663,
		-0.377457, -0.562724, -0.735437,
		40.481922, 31.488464, 50.092213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102768, 31.543098, 50.861759>,  <40.746140, 31.882372, 50.607018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102768, 31.543098, 50.861759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.261467, 31.315462, 50.573669>,  <40.356686, 31.178881, 50.400814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.261467, 31.315462, 50.573669>,  <40.102768, 31.543098, 50.861759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261467, 31.315462, 50.573669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034139, -0.793229, 0.607966,
		-0.917293, -0.216621, -0.334139,
		0.396747, -0.569090, -0.720228,
		40.380493, 31.144735, 50.357601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809029, 30.927917, 50.945030>,  <40.102768, 31.543098, 50.861759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809029, 30.927917, 50.945030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.135235, 30.846140, 50.728458>,  <40.330959, 30.797073, 50.598515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.135235, 30.846140, 50.728458>,  <39.809029, 30.927917, 50.945030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135235, 30.846140, 50.728458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013361, -0.941929, 0.335547,
		-0.578583, -0.266409, -0.770888,
		0.815514, -0.204442, -0.541425,
		40.379890, 30.784807, 50.566032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773922, 30.327484, 51.005962>,  <39.809029, 30.927917, 50.945030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773922, 30.327484, 51.005962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.118690, 30.328249, 50.803146>,  <40.325550, 30.328709, 50.681458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.118690, 30.328249, 50.803146>,  <39.773922, 30.327484, 51.005962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118690, 30.328249, 50.803146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184751, -0.932433, 0.310541,
		-0.472183, -0.361338, -0.804039,
		0.861922, 0.001914, -0.507037,
		40.377266, 30.328823, 50.651035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534943, 29.821846, 50.526070>,  <39.773922, 30.327484, 51.005962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534943, 29.821846, 50.526070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.197617, 29.613995, 50.580925>,  <38.995220, 29.489285, 50.613838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.197617, 29.613995, 50.580925>,  <39.534943, 29.821846, 50.526070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197617, 29.613995, 50.580925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246774, 0.147739, -0.957745,
		0.477411, -0.841522, -0.252821,
		-0.843316, -0.519628, 0.137134,
		38.944622, 29.458107, 50.622066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493240, 29.545006, 49.906456>,  <39.534943, 29.821846, 50.526070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493240, 29.545006, 49.906456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.125416, 29.523823, 50.062202>,  <38.904720, 29.511112, 50.155651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.125416, 29.523823, 50.062202>,  <39.493240, 29.545006, 49.906456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125416, 29.523823, 50.062202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392743, 0.091271, -0.915108,
		0.012923, -0.994417, -0.104727,
		-0.919557, -0.052957, 0.389371,
		38.849548, 29.507935, 50.179012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129166, 29.229239, 49.395477>,  <39.493240, 29.545006, 49.906456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129166, 29.229239, 49.395477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.835564, 29.392298, 49.612751>,  <38.659401, 29.490133, 49.743114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.835564, 29.392298, 49.612751>,  <39.129166, 29.229239, 49.395477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835564, 29.392298, 49.612751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521075, 0.174914, -0.835396,
		-0.435561, -0.896229, 0.084028,
		-0.734008, 0.407650, 0.543188,
		38.615360, 29.514593, 49.775707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454136, 28.952908, 49.098251>,  <39.129166, 29.229239, 49.395477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454136, 28.952908, 49.098251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.384098, 29.286642, 49.307335>,  <38.342075, 29.486883, 49.432785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.384098, 29.286642, 49.307335>,  <38.454136, 28.952908, 49.098251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384098, 29.286642, 49.307335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435104, 0.410678, -0.801266,
		-0.883190, -0.367733, 0.291114,
		-0.175098, 0.834335, 0.522709,
		38.331570, 29.536943, 49.464149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701553, 29.082134, 49.037266>,  <38.454136, 28.952908, 49.098251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701553, 29.082134, 49.037266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.879879, 29.422827, 49.147392>,  <37.986874, 29.627243, 49.213467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.879879, 29.422827, 49.147392>,  <37.701553, 29.082134, 49.037266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879879, 29.422827, 49.147392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547720, 0.502838, -0.668697,
		-0.707990, 0.147323, 0.690686,
		0.445818, 0.851733, 0.275313,
		38.013626, 29.678347, 49.229984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179794, 29.581373, 49.017174>,  <37.701553, 29.082134, 49.037266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179794, 29.581373, 49.017174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.507660, 29.810339, 49.008339>,  <37.704380, 29.947718, 49.003040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.507660, 29.810339, 49.008339>,  <37.179794, 29.581373, 49.017174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507660, 29.810339, 49.008339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425512, 0.582597, -0.692474,
		-0.383516, 0.576995, 0.721105,
		0.819668, 0.572413, -0.022083,
		37.753559, 29.982063, 49.001713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002235, 30.211092, 49.050625>,  <37.179794, 29.581373, 49.017174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002235, 30.211092, 49.050625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.365330, 30.270128, 48.893536>,  <37.583187, 30.305550, 48.799282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.365330, 30.270128, 48.893536>,  <37.002235, 30.211092, 49.050625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365330, 30.270128, 48.893536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376940, 0.697910, -0.608965,
		0.184211, 0.700813, 0.689150,
		0.907735, 0.147590, -0.392727,
		37.637650, 30.314405, 48.775719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052681, 31.024094, 48.730820>,  <37.002235, 30.211092, 49.050625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052681, 31.024094, 48.730820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.352711, 30.805597, 48.581684>,  <37.532730, 30.674500, 48.492203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.352711, 30.805597, 48.581684>,  <37.052681, 31.024094, 48.730820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352711, 30.805597, 48.581684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009590, 0.572674, -0.819727,
		0.661285, 0.611280, 0.434787,
		0.750074, -0.546243, -0.372838,
		37.577732, 30.641724, 48.469833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568256, 31.465067, 48.742344>,  <37.052681, 31.024094, 48.730820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568256, 31.465067, 48.742344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.614429, 31.210178, 48.437550>,  <37.642132, 31.057245, 48.254673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.614429, 31.210178, 48.437550>,  <37.568256, 31.465067, 48.742344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614429, 31.210178, 48.437550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153565, 0.769341, -0.620107,
		0.981373, -0.045434, 0.186662,
		0.115433, -0.637221, -0.761987,
		37.649059, 31.019012, 48.208954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018135, 31.810961, 48.313313>,  <37.568256, 31.465067, 48.742344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018135, 31.810961, 48.313313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.904377, 31.501978, 48.086182>,  <37.836121, 31.316589, 47.949902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.904377, 31.501978, 48.086182>,  <38.018135, 31.810961, 48.313313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904377, 31.501978, 48.086182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086972, 0.569059, -0.817685,
		0.954754, -0.281932, -0.094656,
		-0.284396, -0.772455, -0.567831,
		37.819057, 31.270241, 47.915833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449913, 31.797670, 47.698788>,  <38.018135, 31.810961, 48.313313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449913, 31.797670, 47.698788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.117519, 31.594234, 47.608624>,  <37.918083, 31.472174, 47.554527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.117519, 31.594234, 47.608624>,  <38.449913, 31.797670, 47.698788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117519, 31.594234, 47.608624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136041, 0.578670, -0.804136,
		0.539410, -0.637557, -0.550053,
		-0.830981, -0.508589, -0.225406,
		37.868225, 31.441658, 47.541000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390659, 31.857262, 47.008163>,  <38.449913, 31.797670, 47.698788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390659, 31.857262, 47.008163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.015396, 31.731783, 47.066750>,  <37.790237, 31.656496, 47.101902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.015396, 31.731783, 47.066750>,  <38.390659, 31.857262, 47.008163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015396, 31.731783, 47.066750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287145, 0.468711, -0.835378,
		0.193404, -0.825775, -0.529802,
		-0.938159, -0.313696, 0.146467,
		37.733948, 31.637674, 47.110691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153934, 31.578810, 46.375244>,  <38.390659, 31.857262, 47.008163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153934, 31.578810, 46.375244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.843632, 31.704165, 46.594330>,  <37.657452, 31.779377, 46.725780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.843632, 31.704165, 46.594330>,  <38.153934, 31.578810, 46.375244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843632, 31.704165, 46.594330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383482, 0.455180, -0.803587,
		-0.501143, -0.833426, -0.232930,
		-0.775756, 0.313388, 0.547714,
		37.610905, 31.798182, 46.758644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583984, 31.480215, 45.909447>,  <38.153934, 31.578810, 46.375244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583984, 31.480215, 45.909447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.450344, 31.728773, 46.192921>,  <37.370159, 31.877909, 46.363007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.450344, 31.728773, 46.192921>,  <37.583984, 31.480215, 45.909447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450344, 31.728773, 46.192921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332829, 0.625676, -0.705517,
		-0.881815, -0.471589, -0.002223,
		-0.334105, 0.621396, 0.708689,
		37.350113, 31.915192, 46.405529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004841, 31.577734, 45.703140>,  <37.583984, 31.480215, 45.909447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004841, 31.577734, 45.703140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.047089, 31.915478, 45.913246>,  <37.072437, 32.118122, 46.039310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.047089, 31.915478, 45.913246>,  <37.004841, 31.577734, 45.703140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047089, 31.915478, 45.913246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506010, 0.500354, -0.702567,
		-0.856036, -0.191582, 0.480102,
		0.105622, 0.844359, 0.525263,
		37.078773, 32.168785, 46.070824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327492, 31.897671, 45.665810>,  <37.004841, 31.577734, 45.703140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327492, 31.897671, 45.665810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.595161, 32.174480, 45.774113>,  <36.755764, 32.340565, 45.839092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.595161, 32.174480, 45.774113>,  <36.327492, 31.897671, 45.665810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595161, 32.174480, 45.774113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357603, 0.619284, -0.699005,
		-0.651400, 0.370936, 0.661880,
		0.669178, 0.692022, 0.270753,
		36.795914, 32.382088, 45.855339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975998, 32.516895, 45.562767>,  <36.327492, 31.897671, 45.665810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975998, 32.516895, 45.562767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.362919, 32.616756, 45.580692>,  <36.595070, 32.676674, 45.591446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.362919, 32.616756, 45.580692>,  <35.975998, 32.516895, 45.562767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362919, 32.616756, 45.580692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147386, 0.697012, -0.701749,
		-0.206427, 0.672196, 0.711014,
		0.967298, 0.249653, 0.044810,
		36.653107, 32.691654, 45.594135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943771, 33.220676, 45.707088>,  <35.975998, 32.516895, 45.562767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943771, 33.220676, 45.707088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.288715, 33.133362, 45.524357>,  <36.495682, 33.080975, 45.414719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.288715, 33.133362, 45.524357>,  <35.943771, 33.220676, 45.707088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288715, 33.133362, 45.524357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147172, 0.755251, -0.638699,
		0.484434, 0.618020, 0.619173,
		0.862359, -0.218283, -0.456825,
		36.547424, 33.067879, 45.387310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300827, 33.905067, 45.590073>,  <35.943771, 33.220676, 45.707088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300827, 33.905067, 45.590073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.432594, 33.618549, 45.344013>,  <36.511654, 33.446640, 45.196377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.432594, 33.618549, 45.344013>,  <36.300827, 33.905067, 45.590073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432594, 33.618549, 45.344013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137516, 0.608166, -0.781808,
		0.934117, 0.342133, 0.101838,
		0.329417, -0.716295, -0.615147,
		36.531418, 33.403660, 45.159470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706135, 34.292358, 45.067837>,  <36.300827, 33.905067, 45.590073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706135, 34.292358, 45.067837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.662548, 33.929115, 44.906116>,  <36.636398, 33.711170, 44.809086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.662548, 33.929115, 44.906116>,  <36.706135, 34.292358, 45.067837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662548, 33.929115, 44.906116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191830, 0.418289, -0.887827,
		0.975360, -0.019184, -0.219781,
		-0.108964, -0.908111, -0.404302,
		36.629860, 33.656681, 44.784824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.314640, 41.787052, 29.915033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.043396, 41.967957, 30.146767>,  <42.880650, 42.076500, 30.285807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.043396, 41.967957, 30.146767>,  <43.314640, 41.787052, 29.915033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043396, 41.967957, 30.146767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183845, -0.867572, 0.462083,
		0.711592, 0.206837, 0.671457,
		-0.678113, 0.452259, 0.579331,
		42.839962, 42.103634, 30.320566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.575668, 41.735622, 30.648207>,  <43.314640, 41.787052, 29.915033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.575668, 41.735622, 30.648207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.179268, 41.787334, 30.634350>,  <42.941425, 41.818363, 30.626036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.179268, 41.787334, 30.634350>,  <43.575668, 41.735622, 30.648207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179268, 41.787334, 30.634350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131777, -0.897214, 0.421476,
		0.023407, 0.422249, 0.906177,
		-0.991003, 0.129279, -0.034642,
		42.881966, 41.826118, 30.623957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401646, 41.647373, 31.275398>,  <43.575668, 41.735622, 30.648207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.401646, 41.647373, 31.275398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.047401, 41.594578, 31.097284>,  <42.834854, 41.562901, 30.990416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.047401, 41.594578, 31.097284>,  <43.401646, 41.647373, 31.275398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047401, 41.594578, 31.097284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017123, -0.948837, 0.315302,
		-0.464120, 0.286858, 0.838037,
		-0.885607, -0.131989, -0.445285,
		42.781719, 41.554981, 30.963699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.036385, 41.202816, 31.669222>,  <43.401646, 41.647373, 31.275398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.036385, 41.202816, 31.669222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.831280, 41.175648, 31.326885>,  <42.708218, 41.159348, 31.121483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.831280, 41.175648, 31.326885>,  <43.036385, 41.202816, 31.669222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831280, 41.175648, 31.326885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121568, -0.981078, 0.150691,
		-0.849882, 0.181311, 0.494799,
		-0.512758, -0.067918, -0.855842,
		42.677452, 41.155273, 31.070133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388458, 40.808247, 31.833500>,  <43.036385, 41.202816, 31.669222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388458, 40.808247, 31.833500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.439625, 40.764328, 31.439224>,  <42.470325, 40.737976, 31.202660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.439625, 40.764328, 31.439224>,  <42.388458, 40.808247, 31.833500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439625, 40.764328, 31.439224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315463, -0.946743, 0.064516,
		-0.940277, 0.302695, -0.155743,
		0.127920, -0.109794, -0.985689,
		42.478001, 40.731388, 31.143518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812313, 40.417553, 31.528236>,  <42.388458, 40.808247, 31.833500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812313, 40.417553, 31.528236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.100979, 40.384064, 31.253370>,  <42.274178, 40.363972, 31.088449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.100979, 40.384064, 31.253370>,  <41.812313, 40.417553, 31.528236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100979, 40.384064, 31.253370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110039, -0.993912, 0.005533,
		-0.683446, 0.071623, -0.726479,
		0.721660, -0.083722, -0.687166,
		42.317478, 40.358948, 31.047220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563095, 39.872917, 31.229670>,  <41.812313, 40.417553, 31.528236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563095, 39.872917, 31.229670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.956913, 39.911980, 31.171530>,  <42.193203, 39.935417, 31.136646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.956913, 39.911980, 31.171530>,  <41.563095, 39.872917, 31.229670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956913, 39.911980, 31.171530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115899, -0.985638, 0.122821,
		-0.131266, -0.137769, -0.981728,
		0.984549, 0.097659, -0.145348,
		42.252277, 39.941277, 31.127926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728111, 39.456718, 30.639307>,  <41.563095, 39.872917, 31.229670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728111, 39.456718, 30.639307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.047890, 39.494465, 30.876621>,  <42.239758, 39.517113, 31.019009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.047890, 39.494465, 30.876621>,  <41.728111, 39.456718, 30.639307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047890, 39.494465, 30.876621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061314, -0.969611, 0.236845,
		0.597605, -0.225721, -0.769362,
		0.799443, 0.094367, 0.593284,
		42.287724, 39.522774, 31.054607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054382, 38.816605, 30.628454>,  <41.728111, 39.456718, 30.639307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054382, 38.816605, 30.628454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.239120, 38.973812, 30.946508>,  <42.349964, 39.068134, 31.137341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.239120, 38.973812, 30.946508>,  <42.054382, 38.816605, 30.628454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239120, 38.973812, 30.946508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221274, -0.919179, 0.325802,
		0.858918, 0.025474, -0.511479,
		0.461842, 0.393015, 0.795136,
		42.377674, 39.091717, 31.185049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615002, 38.398777, 30.668789>,  <42.054382, 38.816605, 30.628454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615002, 38.398777, 30.668789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.541138, 38.571537, 31.021915>,  <42.496819, 38.675194, 31.233791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.541138, 38.571537, 31.021915>,  <42.615002, 38.398777, 30.668789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541138, 38.571537, 31.021915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162146, -0.872564, 0.460805,
		0.969335, 0.228236, 0.091094,
		-0.184657, 0.431904, 0.882814,
		42.485741, 38.701107, 31.286760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.053146, 38.007103, 31.125755>,  <42.615002, 38.398777, 30.668789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.053146, 38.007103, 31.125755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.831490, 38.219616, 31.382088>,  <42.698498, 38.347126, 31.535887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.831490, 38.219616, 31.382088>,  <43.053146, 38.007103, 31.125755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831490, 38.219616, 31.382088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053545, -0.790994, 0.609476,
		0.830701, 0.303420, 0.466767,
		-0.554137, 0.531286, 0.640833,
		42.665249, 38.379002, 31.574337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346478, 37.902321, 31.821373>,  <43.053146, 38.007103, 31.125755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346478, 37.902321, 31.821373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.963631, 38.011963, 31.858902>,  <42.733925, 38.077747, 31.881420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.963631, 38.011963, 31.858902>,  <43.346478, 37.902321, 31.821373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.963631, 38.011963, 31.858902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165410, -0.782884, 0.599777,
		0.237852, 0.558535, 0.794648,
		-0.957113, 0.274100, 0.093823,
		42.676498, 38.094193, 31.887049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231224, 37.758526, 32.563457>,  <43.346478, 37.902321, 31.821373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231224, 37.758526, 32.563457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.874889, 37.786167, 32.383842>,  <42.661087, 37.802753, 32.276073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.874889, 37.786167, 32.383842>,  <43.231224, 37.758526, 32.563457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874889, 37.786167, 32.383842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348518, -0.737989, 0.577847,
		-0.291451, 0.671265, 0.681513,
		-0.890838, 0.069105, -0.449035,
		42.607639, 37.806900, 32.249130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613026, 37.697514, 33.100346>,  <43.231224, 37.758526, 32.563457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613026, 37.697514, 33.100346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.418625, 37.616497, 32.760281>,  <42.301983, 37.567886, 32.556240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.418625, 37.616497, 32.760281>,  <42.613026, 37.697514, 33.100346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.418625, 37.616497, 32.760281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407389, -0.808120, 0.425414,
		-0.773198, 0.553099, 0.310235,
		-0.486003, -0.202543, -0.850163,
		42.272823, 37.555733, 32.505230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924042, 37.714874, 33.280647>,  <42.613026, 37.697514, 33.100346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924042, 37.714874, 33.280647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.953487, 37.492199, 32.949669>,  <41.971157, 37.358593, 32.751080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.953487, 37.492199, 32.949669>,  <41.924042, 37.714874, 33.280647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953487, 37.492199, 32.949669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513721, -0.732321, 0.446986,
		-0.854793, 0.392173, -0.339895,
		0.073616, -0.556692, -0.827451,
		41.975571, 37.325191, 32.701435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291828, 37.250664, 33.194695>,  <41.924042, 37.714874, 33.280647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291828, 37.250664, 33.194695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.544113, 37.060570, 32.949303>,  <41.695484, 36.946514, 32.802067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.544113, 37.060570, 32.949303>,  <41.291828, 37.250664, 33.194695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544113, 37.060570, 32.949303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302198, -0.878556, 0.369886,
		-0.714758, -0.047899, -0.697730,
		0.630712, -0.475231, -0.613480,
		41.733326, 36.917999, 32.765259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911762, 36.769600, 32.880352>,  <41.291828, 37.250664, 33.194695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911762, 36.769600, 32.880352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.285713, 36.635002, 32.835140>,  <41.510082, 36.554245, 32.808014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.285713, 36.635002, 32.835140>,  <40.911762, 36.769600, 32.880352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285713, 36.635002, 32.835140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291625, -0.909612, 0.295906,
		-0.202386, -0.243673, -0.948506,
		0.934877, -0.336496, -0.113031,
		41.566177, 36.534054, 32.801231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824535, 36.168724, 32.560234>,  <40.911762, 36.769600, 32.880352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824535, 36.168724, 32.560234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.186977, 36.144520, 32.727715>,  <41.404442, 36.129997, 32.828201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.186977, 36.144520, 32.727715>,  <40.824535, 36.168724, 32.560234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186977, 36.144520, 32.727715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237208, -0.892170, 0.384403,
		0.350292, -0.447629, -0.822754,
		0.906106, -0.060511, 0.418701,
		41.458809, 36.126366, 32.853325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094856, 35.443001, 32.420544>,  <40.824535, 36.168724, 32.560234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094856, 35.443001, 32.420544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.289337, 35.608372, 32.728485>,  <41.406025, 35.707596, 32.913250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.289337, 35.608372, 32.728485>,  <41.094856, 35.443001, 32.420544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289337, 35.608372, 32.728485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156596, -0.825515, 0.542220,
		0.859698, -0.384187, -0.336629,
		0.486206, 0.413431, 0.769856,
		41.435200, 35.732403, 32.959442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384476, 34.821682, 32.817303>,  <41.094856, 35.443001, 32.420544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384476, 34.821682, 32.817303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.436165, 35.129337, 33.067654>,  <41.467178, 35.313931, 33.217865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.436165, 35.129337, 33.067654>,  <41.384476, 34.821682, 32.817303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436165, 35.129337, 33.067654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105353, -0.616948, 0.779920,
		0.986002, -0.166725, 0.001305,
		0.129227, 0.769140, 0.625878,
		41.474934, 35.360081, 33.255417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924648, 34.671925, 33.208714>,  <41.384476, 34.821682, 32.817303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924648, 34.671925, 33.208714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.700390, 34.931755, 33.414135>,  <41.565834, 35.087654, 33.537388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.700390, 34.931755, 33.414135>,  <41.924648, 34.671925, 33.208714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700390, 34.931755, 33.414135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009906, -0.614883, 0.788556,
		0.827999, 0.447185, 0.338295,
		-0.560642, 0.649573, 0.513552,
		41.532196, 35.126625, 33.568199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292110, 35.070301, 33.815788>,  <41.924648, 34.671925, 33.208714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292110, 35.070301, 33.815788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.898617, 35.010544, 33.855694>,  <41.662521, 34.974689, 33.879639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.898617, 35.010544, 33.855694>,  <42.292110, 35.070301, 33.815788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898617, 35.010544, 33.855694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178903, -0.764364, 0.619469,
		-0.016291, 0.627239, 0.778656,
		-0.983732, -0.149395, 0.099763,
		41.603497, 34.965725, 33.885624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986809, 34.923241, 34.020283>,  <42.292110, 35.070301, 33.815788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.986809, 34.923241, 34.020283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.287025, 34.975128, 34.279469>,  <43.467155, 35.006260, 34.434978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.287025, 34.975128, 34.279469>,  <42.986809, 34.923241, 34.020283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287025, 34.975128, 34.279469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126025, 0.934450, -0.333048,
		-0.648691, 0.331627, 0.684999,
		0.750545, 0.129718, 0.647963,
		43.512188, 35.014042, 34.473858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900585, 35.602100, 34.164875>,  <42.986809, 34.923241, 34.020283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900585, 35.602100, 34.164875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.273136, 35.541451, 34.297264>,  <43.496666, 35.505058, 34.376698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.273136, 35.541451, 34.297264>,  <42.900585, 35.602100, 34.164875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273136, 35.541451, 34.297264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235767, 0.943951, -0.231018,
		-0.277391, 0.293198, 0.914926,
		0.931380, -0.151627, 0.330970,
		43.552551, 35.495964, 34.396557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019920, 36.216045, 34.631710>,  <42.900585, 35.602100, 34.164875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.019920, 36.216045, 34.631710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.371387, 36.060364, 34.521103>,  <43.582268, 35.966953, 34.454739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.371387, 36.060364, 34.521103>,  <43.019920, 36.216045, 34.631710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371387, 36.060364, 34.521103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368833, 0.921121, -0.124489,
		0.303157, 0.007396, 0.952912,
		0.878668, -0.389205, -0.276517,
		43.634987, 35.943604, 34.438148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.550850, 36.607143, 34.993176>,  <43.019920, 36.216045, 34.631710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.550850, 36.607143, 34.993176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.726467, 36.439007, 34.675549>,  <43.831837, 36.338123, 34.484970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.726467, 36.439007, 34.675549>,  <43.550850, 36.607143, 34.993176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726467, 36.439007, 34.675549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304658, 0.901099, -0.308551,
		0.845235, -0.106452, 0.523685,
		0.439046, -0.420343, -0.794072,
		43.858181, 36.312904, 34.437328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.264217, 36.758633, 35.042027>,  <43.550850, 36.607143, 34.993176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.264217, 36.758633, 35.042027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.191929, 36.688385, 34.654934>,  <44.148556, 36.646236, 34.422680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.191929, 36.688385, 34.654934>,  <44.264217, 36.758633, 35.042027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191929, 36.688385, 34.654934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421161, 0.875337, -0.237506,
		0.888800, -0.450491, -0.084223,
		-0.180718, -0.175624, -0.967728,
		44.137714, 36.635696, 34.364616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.865414, 37.128059, 34.601582>,  <44.264217, 36.758633, 35.042027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.865414, 37.128059, 34.601582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.590080, 37.035995, 34.326416>,  <44.424881, 36.980755, 34.161316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.590080, 37.035995, 34.326416>,  <44.865414, 37.128059, 34.601582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.590080, 37.035995, 34.326416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348215, 0.727080, -0.591693,
		0.636355, -0.646822, -0.420325,
		-0.688330, -0.230163, -0.687914,
		44.383579, 36.966946, 34.120041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.221745, 37.137688, 33.940449>,  <44.865414, 37.128059, 34.601582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.221745, 37.137688, 33.940449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.838268, 37.167732, 33.830708>,  <44.608181, 37.185757, 33.764862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.838268, 37.167732, 33.830708>,  <45.221745, 37.137688, 33.940449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.838268, 37.167732, 33.830708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175433, 0.915351, -0.362430,
		0.223912, -0.395589, -0.890715,
		-0.958690, 0.075108, -0.274357,
		44.550663, 37.190266, 33.748402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.257961, 37.523838, 33.364021>,  <45.221745, 37.137688, 33.940449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.257961, 37.523838, 33.364021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.868065, 37.557674, 33.446705>,  <44.634129, 37.577976, 33.496315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.868065, 37.557674, 33.446705>,  <45.257961, 37.523838, 33.364021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.868065, 37.557674, 33.446705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005199, 0.933849, -0.357631,
		-0.223286, -0.347522, -0.910699,
		-0.974739, 0.084589, 0.206708,
		44.575642, 37.583050, 33.508717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.885105, 37.780628, 32.791134>,  <45.257961, 37.523838, 33.364021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.885105, 37.780628, 32.791134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.689178, 37.898438, 33.119362>,  <44.571625, 37.969124, 33.316299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.689178, 37.898438, 33.119362>,  <44.885105, 37.780628, 32.791134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689178, 37.898438, 33.119362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018535, 0.937478, -0.347552,
		-0.871630, -0.185445, -0.453731,
		-0.489814, 0.294526, 0.820571,
		44.542233, 37.986794, 33.365532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.669342, 38.396328, 32.607246>,  <44.885105, 37.780628, 32.791134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.669342, 38.396328, 32.607246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.540627, 38.419617, 32.985256>,  <44.463398, 38.433590, 33.212063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.540627, 38.419617, 32.985256>,  <44.669342, 38.396328, 32.607246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.540627, 38.419617, 32.985256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154834, 0.981436, -0.113183,
		-0.934065, -0.182742, -0.306802,
		-0.321789, 0.058217, 0.945020,
		44.444088, 38.437080, 33.268761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033138, 38.757439, 32.578854>,  <44.669342, 38.396328, 32.607246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033138, 38.757439, 32.578854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.168629, 38.802971, 32.952442>,  <44.249924, 38.830288, 33.176598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.168629, 38.802971, 32.952442>,  <44.033138, 38.757439, 32.578854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.168629, 38.802971, 32.952442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186697, 0.981048, -0.051854,
		-0.922176, -0.156806, 0.353557,
		0.338725, 0.113827, 0.933975,
		44.270245, 38.837120, 33.232635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610771, 39.289074, 32.903633>,  <44.033138, 38.757439, 32.578854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610771, 39.289074, 32.903633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.911228, 39.280708, 33.167557>,  <44.091503, 39.275688, 33.325909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.911228, 39.280708, 33.167557>,  <43.610771, 39.289074, 32.903633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911228, 39.280708, 33.167557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082059, 0.988788, 0.124762,
		-0.655018, -0.147857, 0.741006,
		0.751145, -0.020915, 0.659806,
		44.136570, 39.274433, 33.365498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266243, 39.574329, 33.461266>,  <43.610771, 39.289074, 32.903633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.266243, 39.574329, 33.461266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.665413, 39.597034, 33.473408>,  <43.904915, 39.610657, 33.480694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.665413, 39.597034, 33.473408>,  <43.266243, 39.574329, 33.461266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.665413, 39.597034, 33.473408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059636, 0.992788, 0.104001,
		-0.024230, -0.105596, 0.994114,
		0.997926, 0.056765, 0.030352,
		43.964790, 39.614063, 33.482513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438084, 39.932430, 34.119709>,  <43.266243, 39.574329, 33.461266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438084, 39.932430, 34.119709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.717556, 39.974674, 33.836670>,  <43.885239, 40.000019, 33.666847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.717556, 39.974674, 33.836670>,  <43.438084, 39.932430, 34.119709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.717556, 39.974674, 33.836670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007711, 0.990099, 0.140158,
		0.715396, -0.092469, 0.692574,
		0.698677, 0.105608, -0.707600,
		43.927158, 40.006355, 33.624390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816879, 40.381340, 34.412357>,  <43.438084, 39.932430, 34.119709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816879, 40.381340, 34.412357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.999004, 40.446877, 34.062305>,  <44.108280, 40.486198, 33.852276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.999004, 40.446877, 34.062305>,  <43.816879, 40.381340, 34.412357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999004, 40.446877, 34.062305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166035, 0.950055, 0.264252,
		0.874712, -0.265619, 0.405371,
		0.455315, 0.163838, -0.875126,
		44.135597, 40.496029, 33.799767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.404427, 40.763336, 34.613350>,  <43.816879, 40.381340, 34.412357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.404427, 40.763336, 34.613350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.396069, 40.840851, 34.221020>,  <44.391052, 40.887360, 33.985622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.396069, 40.840851, 34.221020>,  <44.404427, 40.763336, 34.613350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396069, 40.840851, 34.221020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036503, 0.980530, 0.192951,
		0.999115, -0.031770, -0.027566,
		-0.020899, 0.193786, -0.980821,
		44.389797, 40.898987, 33.926773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.960197, 41.288147, 34.459938>,  <44.404427, 40.763336, 34.613350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.960197, 41.288147, 34.459938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.718754, 41.337753, 34.144909>,  <44.573887, 41.367516, 33.955891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.718754, 41.337753, 34.144909>,  <44.960197, 41.288147, 34.459938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.718754, 41.337753, 34.144909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259215, 0.964687, -0.046765,
		0.753963, -0.232379, -0.614443,
		-0.603613, 0.124013, -0.787574,
		44.537670, 41.374958, 33.908638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.289192, 41.623100, 33.934208>,  <44.960197, 41.288147, 34.459938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.289192, 41.623100, 33.934208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.908909, 41.696709, 33.834370>,  <44.680740, 41.740875, 33.774467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.908909, 41.696709, 33.834370>,  <45.289192, 41.623100, 33.934208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.908909, 41.696709, 33.834370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172079, 0.982659, 0.069066,
		0.257974, 0.022712, -0.965885,
		-0.950704, 0.184026, -0.249592,
		44.623699, 41.751915, 33.759491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.285164, 42.058926, 33.298336>,  <45.289192, 41.623100, 33.934208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.285164, 42.058926, 33.298336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.935692, 42.088852, 33.490623>,  <44.726009, 42.106808, 33.605995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.935692, 42.088852, 33.490623>,  <45.285164, 42.058926, 33.298336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.935692, 42.088852, 33.490623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083291, 0.996518, -0.003711,
		-0.479320, 0.036797, -0.876868,
		-0.873679, 0.074814, 0.480716,
		44.673588, 42.111298, 33.634838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.961533, 42.650360, 32.960041>,  <45.285164, 42.058926, 33.298336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.961533, 42.650360, 32.960041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.786186, 42.616940, 33.318005>,  <44.680977, 42.596886, 33.532784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.786186, 42.616940, 33.318005>,  <44.961533, 42.650360, 32.960041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786186, 42.616940, 33.318005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046519, 0.992226, 0.115430,
		-0.897593, 0.092230, -0.431070,
		-0.438364, -0.083556, 0.894905,
		44.654678, 42.591873, 33.586475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.550488, 35.393696, 40.238228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241627, 35.142254, 40.201042>,  <39.056313, 34.991390, 40.178730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241627, 35.142254, 40.201042>,  <39.550488, 35.393696, 40.238228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241627, 35.142254, 40.201042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057140, 0.077018, -0.995391,
		0.632867, -0.773902, -0.023551,
		-0.772149, -0.628605, -0.092963,
		39.009983, 34.953674, 40.173153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683475, 34.986141, 39.700306>,  <39.550488, 35.393696, 40.238228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683475, 34.986141, 39.700306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287487, 34.930550, 39.710476>,  <39.049892, 34.897194, 39.716576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287487, 34.930550, 39.710476>,  <39.683475, 34.986141, 39.700306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287487, 34.930550, 39.710476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034918, 0.066313, -0.997188,
		0.136898, -0.988073, -0.070500,
		-0.989970, -0.138974, 0.025423,
		38.990498, 34.888859, 39.718102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559616, 34.624943, 39.168850>,  <39.683475, 34.986141, 39.700306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559616, 34.624943, 39.168850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203682, 34.793617, 39.238556>,  <38.990120, 34.894821, 39.280380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203682, 34.793617, 39.238556>,  <39.559616, 34.624943, 39.168850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203682, 34.793617, 39.238556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088833, 0.214502, -0.972675,
		-0.447546, -0.881004, -0.153412,
		-0.889837, 0.421689, 0.174261,
		38.936729, 34.920124, 39.290833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196442, 34.443825, 38.587067>,  <39.559616, 34.624943, 39.168850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196442, 34.443825, 38.587067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033108, 34.778835, 38.732285>,  <38.935108, 34.979843, 38.819416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033108, 34.778835, 38.732285>,  <39.196442, 34.443825, 38.587067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033108, 34.778835, 38.732285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183167, 0.314449, -0.931435,
		-0.894265, -0.446840, 0.025006,
		-0.408339, 0.837530, 0.363047,
		38.910606, 35.030094, 38.841198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710392, 34.560936, 38.238716>,  <39.196442, 34.443825, 38.587067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710392, 34.560936, 38.238716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742054, 34.930664, 38.388042>,  <38.761051, 35.152500, 38.477638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742054, 34.930664, 38.388042>,  <38.710392, 34.560936, 38.238716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742054, 34.930664, 38.388042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229600, 0.381325, -0.895475,
		-0.970061, -0.014831, 0.242408,
		0.079155, 0.924322, 0.373313,
		38.765800, 35.207962, 38.500038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095337, 34.862961, 38.052204>,  <38.710392, 34.560936, 38.238716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095337, 34.862961, 38.052204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348938, 35.161411, 38.133537>,  <38.501099, 35.340481, 38.182339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348938, 35.161411, 38.133537>,  <38.095337, 34.862961, 38.052204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348938, 35.161411, 38.133537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257911, 0.451885, -0.853980,
		-0.729058, 0.488981, 0.478928,
		0.634001, 0.746122, 0.203337,
		38.539139, 35.385246, 38.194538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666229, 35.511349, 38.000813>,  <38.095337, 34.862961, 38.052204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666229, 35.511349, 38.000813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057289, 35.580585, 37.953098>,  <38.291927, 35.622128, 37.924469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057289, 35.580585, 37.953098>,  <37.666229, 35.511349, 38.000813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057289, 35.580585, 37.953098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198303, 0.571041, -0.796610,
		-0.069772, 0.802465, 0.592606,
		0.977654, 0.173096, -0.119289,
		38.350586, 35.632515, 37.917313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660770, 36.193771, 37.685436>,  <37.666229, 35.511349, 38.000813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660770, 36.193771, 37.685436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028854, 36.048965, 37.625889>,  <38.249702, 35.962082, 37.590160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028854, 36.048965, 37.625889>,  <37.660770, 36.193771, 37.685436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028854, 36.048965, 37.625889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021155, 0.425767, -0.904586,
		0.390862, 0.829256, 0.399452,
		0.920206, -0.362018, -0.148873,
		38.304916, 35.940361, 37.581226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059181, 36.719540, 37.295223>,  <37.660770, 36.193771, 37.685436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059181, 36.719540, 37.295223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263481, 36.379810, 37.241871>,  <38.386063, 36.175972, 37.209858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263481, 36.379810, 37.241871>,  <38.059181, 36.719540, 37.295223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263481, 36.379810, 37.241871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120373, 0.224259, -0.967067,
		0.851261, 0.477874, 0.216775,
		0.510750, -0.849320, -0.133380,
		38.416706, 36.125015, 37.201859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606071, 36.848999, 36.962051>,  <38.059181, 36.719540, 37.295223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606071, 36.848999, 36.962051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570137, 36.464771, 36.856804>,  <38.548576, 36.234234, 36.793655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570137, 36.464771, 36.856804>,  <38.606071, 36.848999, 36.962051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570137, 36.464771, 36.856804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099303, 0.254227, -0.962033,
		0.990994, -0.112551, 0.072550,
		-0.089834, -0.960573, -0.263114,
		38.543186, 36.176598, 36.777870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105068, 36.730259, 36.369755>,  <38.606071, 36.848999, 36.962051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105068, 36.730259, 36.369755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844440, 36.428436, 36.338524>,  <38.688065, 36.247341, 36.319786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844440, 36.428436, 36.338524>,  <39.105068, 36.730259, 36.369755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844440, 36.428436, 36.338524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018512, 0.118706, -0.992757,
		0.758361, -0.645406, -0.091314,
		-0.651571, -0.754559, -0.078074,
		38.648968, 36.202068, 36.315102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363583, 36.270863, 35.810867>,  <39.105068, 36.730259, 36.369755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363583, 36.270863, 35.810867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974819, 36.190979, 35.860680>,  <38.741562, 36.143051, 35.890568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974819, 36.190979, 35.860680>,  <39.363583, 36.270863, 35.810867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974819, 36.190979, 35.860680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097139, -0.141580, -0.985149,
		0.214373, -0.969573, 0.118203,
		-0.971910, -0.199707, 0.124534,
		38.683247, 36.131065, 35.898041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292427, 35.602997, 35.612392>,  <39.363583, 36.270863, 35.810867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292427, 35.602997, 35.612392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949600, 35.805061, 35.571896>,  <38.743904, 35.926300, 35.547596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949600, 35.805061, 35.571896>,  <39.292427, 35.602997, 35.612392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949600, 35.805061, 35.571896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055486, -0.104867, -0.992937,
		-0.512211, -0.856630, 0.061849,
		-0.857065, 0.505161, -0.101245,
		38.692482, 35.956608, 35.541523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793198, 35.139709, 35.343197>,  <39.292427, 35.602997, 35.612392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793198, 35.139709, 35.343197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747162, 35.527061, 35.254665>,  <38.719540, 35.759472, 35.201546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747162, 35.527061, 35.254665>,  <38.793198, 35.139709, 35.343197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747162, 35.527061, 35.254665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044854, -0.227652, -0.972709,
		-0.992341, -0.102025, 0.069638,
		-0.115093, 0.968383, -0.221333,
		38.712635, 35.817577, 35.188267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333759, 34.713039, 34.750877>,  <38.793198, 35.139709, 35.343197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333759, 34.713039, 34.750877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518143, 34.401356, 34.581005>,  <38.628773, 34.214348, 34.479080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518143, 34.401356, 34.581005>,  <38.333759, 34.713039, 34.750877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518143, 34.401356, 34.581005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326181, -0.593827, 0.735511,
		-0.825301, -0.200518, -0.527892,
		0.460960, -0.779206, -0.424681,
		38.656429, 34.167595, 34.453602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845932, 34.160313, 34.647472>,  <38.333759, 34.713039, 34.750877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845932, 34.160313, 34.647472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205677, 33.986275, 34.664677>,  <38.421524, 33.881851, 34.674999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205677, 33.986275, 34.664677>,  <37.845932, 34.160313, 34.647472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205677, 33.986275, 34.664677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303718, -0.550969, 0.777295,
		-0.314499, -0.712129, -0.627664,
		0.899358, -0.435092, 0.043007,
		38.475483, 33.855747, 34.677578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702030, 33.491943, 34.760361>,  <37.845932, 34.160313, 34.647472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702030, 33.491943, 34.760361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089279, 33.469688, 34.858044>,  <38.321629, 33.456337, 34.916653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089279, 33.469688, 34.858044>,  <37.702030, 33.491943, 34.760361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089279, 33.469688, 34.858044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216210, -0.677826, 0.702712,
		0.126431, -0.733114, -0.668251,
		0.968126, -0.055638, 0.244205,
		38.379719, 33.452995, 34.931305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710419, 32.841316, 34.929852>,  <37.702030, 33.491943, 34.760361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710419, 32.841316, 34.929852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064926, 32.976910, 35.056095>,  <38.277630, 33.058266, 35.131840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064926, 32.976910, 35.056095>,  <37.710419, 32.841316, 34.929852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064926, 32.976910, 35.056095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034398, -0.631366, 0.774722,
		0.461884, -0.697471, -0.547903,
		0.886273, 0.338985, 0.315609,
		38.330807, 33.078606, 35.150780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349979, 32.247517, 34.980766>,  <37.710419, 32.841316, 34.929852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349979, 32.247517, 34.980766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375366, 32.556519, 35.233498>,  <38.390598, 32.741920, 35.385136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375366, 32.556519, 35.233498>,  <38.349979, 32.247517, 34.980766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375366, 32.556519, 35.233498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040085, -0.630616, 0.775059,
		0.997179, -0.074517, -0.009057,
		0.063466, 0.772509, 0.631824,
		38.394405, 32.788273, 35.423046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829613, 32.184273, 35.591320>,  <38.349979, 32.247517, 34.980766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829613, 32.184273, 35.591320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612732, 32.495525, 35.718147>,  <38.482605, 32.682278, 35.794243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612732, 32.495525, 35.718147>,  <38.829613, 32.184273, 35.591320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612732, 32.495525, 35.718147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058835, -0.341265, 0.938124,
		0.838187, 0.527305, 0.139253,
		-0.542200, 0.778131, 0.317068,
		38.450073, 32.728966, 35.813267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140636, 32.357582, 36.280060>,  <38.829613, 32.184273, 35.591320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140636, 32.357582, 36.280060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798206, 32.563755, 36.264755>,  <38.592747, 32.687458, 36.255573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798206, 32.563755, 36.264755>,  <39.140636, 32.357582, 36.280060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798206, 32.563755, 36.264755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143092, -0.165217, 0.975822,
		0.496646, 0.840854, 0.215192,
		-0.856077, 0.515430, -0.038265,
		38.541382, 32.718384, 36.253277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012058, 32.656197, 36.969284>,  <39.140636, 32.357582, 36.280060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012058, 32.656197, 36.969284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632576, 32.695744, 36.849167>,  <38.404884, 32.719471, 36.777096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632576, 32.695744, 36.849167>,  <39.012058, 32.656197, 36.969284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632576, 32.695744, 36.849167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314225, -0.190296, 0.930081,
		0.034813, 0.976736, 0.211603,
		-0.948710, 0.098870, -0.300290,
		38.347961, 32.725403, 36.759079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717720, 32.985130, 37.554634>,  <39.012058, 32.656197, 36.969284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717720, 32.985130, 37.554634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429966, 32.819321, 37.331688>,  <38.257313, 32.719833, 37.197922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429966, 32.819321, 37.331688>,  <38.717720, 32.985130, 37.554634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429966, 32.819321, 37.331688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545296, -0.160026, 0.822827,
		-0.430274, 0.895858, -0.110918,
		-0.719386, -0.414524, -0.557363,
		38.214149, 32.694965, 37.164478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084229, 33.149929, 37.873688>,  <38.717720, 32.985130, 37.554634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084229, 33.149929, 37.873688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953224, 32.866791, 37.623344>,  <37.874622, 32.696907, 37.473141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953224, 32.866791, 37.623344>,  <38.084229, 33.149929, 37.873688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953224, 32.866791, 37.623344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708635, -0.254112, 0.658227,
		-0.624959, 0.659079, -0.418378,
		-0.327509, -0.707843, -0.625857,
		37.854973, 32.654438, 37.435589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390106, 33.268894, 37.820011>,  <38.084229, 33.149929, 37.873688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390106, 33.268894, 37.820011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487335, 32.885368, 37.761227>,  <37.545673, 32.655254, 37.725956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487335, 32.885368, 37.761227>,  <37.390106, 33.268894, 37.820011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487335, 32.885368, 37.761227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698825, -0.278165, 0.658990,
		-0.672726, -0.057481, -0.737655,
		0.243069, -0.958812, -0.146960,
		37.560257, 32.597725, 37.717140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807503, 32.931702, 37.856136>,  <37.390106, 33.268894, 37.820011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807503, 32.931702, 37.856136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060654, 32.631855, 37.933640>,  <37.212543, 32.451946, 37.980141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060654, 32.631855, 37.933640>,  <36.807503, 32.931702, 37.856136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060654, 32.631855, 37.933640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501258, -0.205966, 0.840427,
		-0.590090, -0.629010, -0.506103,
		0.632878, -0.749616, 0.193758,
		37.250519, 32.406971, 37.991768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373619, 32.280025, 37.994133>,  <36.807503, 32.931702, 37.856136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373619, 32.280025, 37.994133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735264, 32.246964, 38.161823>,  <36.952251, 32.227127, 38.262436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735264, 32.246964, 38.161823>,  <36.373619, 32.280025, 37.994133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735264, 32.246964, 38.161823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427124, -0.147325, 0.892110,
		-0.011969, -0.985629, -0.168500,
		0.904114, -0.082648, 0.419222,
		37.006496, 32.222168, 38.287590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331581, 31.706394, 38.468536>,  <36.373619, 32.280025, 37.994133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331581, 31.706394, 38.468536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682331, 31.859594, 38.584740>,  <36.892780, 31.951513, 38.654461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682331, 31.859594, 38.584740>,  <36.331581, 31.706394, 38.468536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682331, 31.859594, 38.584740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312359, -0.005407, 0.949949,
		0.365400, -0.923733, 0.114892,
		0.876878, 0.382999, 0.290512,
		36.945396, 31.974493, 38.671894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428577, 30.883596, 38.466343>,  <36.331581, 31.706394, 38.468536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428577, 30.883596, 38.466343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221439, 30.543507, 38.428497>,  <36.097157, 30.339453, 38.405788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221439, 30.543507, 38.428497>,  <36.428577, 30.883596, 38.466343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221439, 30.543507, 38.428497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428773, 0.353666, -0.831309,
		0.740263, -0.389921, -0.547698,
		-0.517847, -0.850225, -0.094618,
		36.066086, 30.288439, 38.400112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442451, 30.658312, 37.779419>,  <36.428577, 30.883596, 38.466343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442451, 30.658312, 37.779419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117599, 30.493689, 37.944862>,  <35.922688, 30.394915, 38.044128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117599, 30.493689, 37.944862>,  <36.442451, 30.658312, 37.779419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117599, 30.493689, 37.944862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578620, 0.476750, -0.661746,
		0.075158, -0.776744, -0.625316,
		-0.812126, -0.411556, 0.413608,
		35.873962, 30.370222, 38.068943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068844, 30.738237, 37.292828>,  <36.442451, 30.658312, 37.779419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068844, 30.738237, 37.292828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797314, 30.628216, 37.565163>,  <35.634396, 30.562202, 37.728565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797314, 30.628216, 37.565163>,  <36.068844, 30.738237, 37.292828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797314, 30.628216, 37.565163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708983, 0.486878, -0.510190,
		-0.191157, -0.829033, -0.525511,
		-0.678824, -0.275052, 0.680840,
		35.593666, 30.545700, 37.769413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588867, 30.480698, 36.931671>,  <36.068844, 30.738237, 37.292828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588867, 30.480698, 36.931671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390980, 30.601646, 37.257576>,  <35.272247, 30.674215, 37.453117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390980, 30.601646, 37.257576>,  <35.588867, 30.480698, 36.931671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390980, 30.601646, 37.257576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759921, 0.304343, -0.574365,
		-0.421637, -0.903298, 0.079215,
		-0.494714, 0.302371, 0.814758,
		35.242565, 30.692358, 37.502003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903336, 30.255682, 36.826603>,  <35.588867, 30.480698, 36.931671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903336, 30.255682, 36.826603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837616, 30.503756, 37.133427>,  <34.798183, 30.652599, 37.317520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837616, 30.503756, 37.133427>,  <34.903336, 30.255682, 36.826603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837616, 30.503756, 37.133427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861246, 0.288918, -0.418068,
		-0.480896, -0.729315, 0.486661,
		-0.164298, 0.620183, 0.767059,
		34.788326, 30.689810, 37.363544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208809, 30.232790, 36.980232>,  <34.903336, 30.255682, 36.826603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208809, 30.232790, 36.980232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290108, 30.589985, 37.140865>,  <34.338886, 30.804302, 37.237244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290108, 30.589985, 37.140865>,  <34.208809, 30.232790, 36.980232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290108, 30.589985, 37.140865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747809, 0.406321, -0.525057,
		-0.632040, -0.193592, 0.750365,
		0.203242, 0.892987, 0.401581,
		34.351082, 30.857882, 37.261341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536129, 30.459126, 37.135700>,  <34.208809, 30.232790, 36.980232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536129, 30.459126, 37.135700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809502, 30.749878, 37.108650>,  <33.973526, 30.924330, 37.092419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809502, 30.749878, 37.108650>,  <33.536129, 30.459126, 37.135700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809502, 30.749878, 37.108650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681581, 0.602158, -0.415756,
		-0.261482, 0.330232, 0.906959,
		0.683428, 0.726879, -0.067626,
		34.014530, 30.967941, 37.088364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145519, 31.045586, 37.391747>,  <33.536129, 30.459126, 37.135700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145519, 31.045586, 37.391747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438602, 31.201675, 37.168728>,  <33.614452, 31.295330, 37.034916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438602, 31.201675, 37.168728>,  <33.145519, 31.045586, 37.391747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438602, 31.201675, 37.168728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666129, 0.578947, -0.470204,
		0.139303, 0.715921, 0.684143,
		0.732712, 0.390227, -0.557545,
		33.658417, 31.318743, 37.001465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018078, 31.772060, 37.314632>,  <33.145519, 31.045586, 37.391747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018078, 31.772060, 37.314632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255169, 31.674500, 37.007599>,  <33.397423, 31.615963, 36.823380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255169, 31.674500, 37.007599>,  <33.018078, 31.772060, 37.314632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255169, 31.674500, 37.007599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375274, 0.759630, -0.531161,
		0.712633, 0.602887, 0.358722,
		0.592726, -0.243903, -0.767585,
		33.432987, 31.601328, 36.777325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255211, 32.440388, 37.015430>,  <33.018078, 31.772060, 37.314632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255211, 32.440388, 37.015430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350605, 32.174953, 36.731804>,  <33.407841, 32.015694, 36.561626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350605, 32.174953, 36.731804>,  <33.255211, 32.440388, 37.015430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350605, 32.174953, 36.731804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254137, 0.662050, -0.705057,
		0.937305, 0.348346, -0.010754,
		0.238484, -0.663586, -0.709070,
		33.422150, 31.975878, 36.519081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614174, 32.807724, 36.519848>,  <33.255211, 32.440388, 37.015430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614174, 32.807724, 36.519848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458889, 32.487095, 36.337959>,  <33.365719, 32.294716, 36.228825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458889, 32.487095, 36.337959>,  <33.614174, 32.807724, 36.519848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458889, 32.487095, 36.337959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298971, 0.576276, -0.760606,
		0.871729, -0.159324, -0.463362,
		-0.388208, -0.801574, -0.454724,
		33.342426, 32.246624, 36.201542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957710, 32.659737, 35.886124>,  <33.614174, 32.807724, 36.519848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957710, 32.659737, 35.886124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580280, 32.528717, 35.866615>,  <33.353821, 32.450104, 35.854912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580280, 32.528717, 35.866615>,  <33.957710, 32.659737, 35.886124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580280, 32.528717, 35.866615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184065, 0.641166, -0.745001,
		0.275297, -0.693986, -0.665278,
		-0.943574, -0.327551, -0.048772,
		33.297207, 32.430450, 35.851982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.897583, 28.538515, 41.119579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.511192, 28.539999, 41.223022>,  <37.279358, 28.540890, 41.285088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.511192, 28.539999, 41.223022>,  <37.897583, 28.538515, 41.119579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511192, 28.539999, 41.223022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255835, 0.133009, -0.957527,
		-0.037948, -0.991108, -0.127534,
		-0.965975, 0.003709, 0.258607,
		37.221401, 28.541111, 41.300606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546326, 28.106340, 40.596912>,  <37.897583, 28.538515, 41.119579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546326, 28.106340, 40.596912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.245338, 28.307354, 40.767204>,  <37.064747, 28.427961, 40.869381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.245338, 28.307354, 40.767204>,  <37.546326, 28.106340, 40.596912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245338, 28.307354, 40.767204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436111, 0.104214, -0.893838,
		-0.493551, -0.858253, 0.140743,
		-0.752473, 0.502534, 0.425729,
		37.019596, 28.458115, 40.894924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950939, 27.813774, 40.342472>,  <37.546326, 28.106340, 40.596912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950939, 27.813774, 40.342472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.807678, 28.156525, 40.490791>,  <36.721722, 28.362175, 40.579784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.807678, 28.156525, 40.490791>,  <36.950939, 27.813774, 40.342472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807678, 28.156525, 40.490791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566597, 0.116183, -0.815763,
		-0.742088, -0.502260, 0.443892,
		-0.358152, 0.856876, 0.370797,
		36.700233, 28.413588, 40.602032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186050, 27.838163, 40.218472>,  <36.950939, 27.813774, 40.342472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186050, 27.838163, 40.218472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.322021, 28.213041, 40.249733>,  <36.403606, 28.437969, 40.268490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.322021, 28.213041, 40.249733>,  <36.186050, 27.838163, 40.218472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322021, 28.213041, 40.249733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415843, 0.224329, -0.881335,
		-0.843517, 0.267093, 0.465983,
		0.339932, 0.937197, 0.078157,
		36.424000, 28.494200, 40.273178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695286, 28.265335, 39.731457>,  <36.186050, 27.838163, 40.218472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695286, 28.265335, 39.731457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.981632, 28.532192, 39.813877>,  <36.153439, 28.692307, 39.863331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.981632, 28.532192, 39.813877>,  <35.695286, 28.265335, 39.731457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981632, 28.532192, 39.813877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305562, 0.564671, -0.766667,
		-0.627829, 0.485868, 0.608082,
		0.715865, 0.667143, 0.206054,
		36.196392, 28.732334, 39.875694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383820, 28.941467, 39.902664>,  <35.695286, 28.265335, 39.731457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383820, 28.941467, 39.902664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.752892, 29.015028, 39.767109>,  <35.974335, 29.059164, 39.685776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.752892, 29.015028, 39.767109>,  <35.383820, 28.941467, 39.902664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752892, 29.015028, 39.767109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378683, 0.597639, -0.706702,
		0.072571, 0.780390, 0.621068,
		0.922677, 0.183902, -0.338892,
		36.029694, 29.070198, 39.665440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561630, 29.637596, 39.877945>,  <35.383820, 28.941467, 39.902664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561630, 29.637596, 39.877945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.854389, 29.528904, 39.627987>,  <36.030045, 29.463688, 39.478012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.854389, 29.528904, 39.627987>,  <35.561630, 29.637596, 39.877945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854389, 29.528904, 39.627987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242747, 0.752917, -0.611711,
		0.636714, 0.599399, 0.485094,
		0.731894, -0.271730, -0.624895,
		36.073959, 29.447386, 39.440517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803341, 30.275818, 39.590332>,  <35.561630, 29.637596, 39.877945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803341, 30.275818, 39.590332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.942444, 29.994793, 39.341984>,  <36.025906, 29.826178, 39.192974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.942444, 29.994793, 39.341984>,  <35.803341, 30.275818, 39.590332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942444, 29.994793, 39.341984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206618, 0.588492, -0.781656,
		0.914536, 0.400106, 0.059488,
		0.347754, -0.702561, -0.620867,
		36.046768, 29.784025, 39.155724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308666, 30.600489, 39.164257>,  <35.803341, 30.275818, 39.590332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308666, 30.600489, 39.164257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.139168, 30.287292, 38.982109>,  <36.037468, 30.099375, 38.872818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.139168, 30.287292, 38.982109>,  <36.308666, 30.600489, 39.164257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139168, 30.287292, 38.982109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199728, 0.571139, -0.796184,
		0.883484, -0.246432, -0.398405,
		-0.423750, -0.782989, -0.455373,
		36.012043, 30.052395, 38.845497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525921, 31.299713, 39.034107>,  <36.308666, 30.600489, 39.164257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525921, 31.299713, 39.034107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.750576, 31.630110, 39.053299>,  <36.885368, 31.828348, 39.064816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.750576, 31.630110, 39.053299>,  <36.525921, 31.299713, 39.034107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750576, 31.630110, 39.053299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115044, 0.020536, 0.993148,
		0.819346, -0.563309, 0.106559,
		0.561637, 0.825991, 0.047979,
		36.919067, 31.877907, 39.067692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075218, 31.168644, 39.558224>,  <36.525921, 31.299713, 39.034107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075218, 31.168644, 39.558224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.058807, 31.566622, 39.521553>,  <37.048962, 31.805408, 39.499550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.058807, 31.566622, 39.521553>,  <37.075218, 31.168644, 39.558224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058807, 31.566622, 39.521553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026377, 0.092798, 0.995335,
		0.998810, 0.038414, -0.030051,
		-0.041024, 0.994944, -0.091675,
		37.046501, 31.865105, 39.494049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565189, 31.467129, 40.010132>,  <37.075218, 31.168644, 39.558224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565189, 31.467129, 40.010132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.357460, 31.803312, 39.948242>,  <37.232822, 32.005020, 39.911110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.357460, 31.803312, 39.948242>,  <37.565189, 31.467129, 40.010132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357460, 31.803312, 39.948242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013578, 0.189140, 0.981856,
		0.854471, 0.507798, -0.109636,
		-0.519321, 0.840456, -0.154720,
		37.201664, 32.055450, 39.901825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912045, 32.048367, 40.305050>,  <37.565189, 31.467129, 40.010132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912045, 32.048367, 40.305050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.517246, 32.110504, 40.321590>,  <37.280369, 32.147785, 40.331516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.517246, 32.110504, 40.321590>,  <37.912045, 32.048367, 40.305050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517246, 32.110504, 40.321590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046628, 0.030452, 0.998448,
		0.153842, 0.987391, -0.037300,
		-0.986995, 0.155343, 0.041355,
		37.221149, 32.157108, 40.333996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900307, 32.504673, 40.838882>,  <37.912045, 32.048367, 40.305050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900307, 32.504673, 40.838882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.518044, 32.397106, 40.790886>,  <37.288685, 32.332565, 40.762089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.518044, 32.397106, 40.790886>,  <37.900307, 32.504673, 40.838882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518044, 32.397106, 40.790886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063634, -0.209267, 0.975786,
		-0.287517, 0.940154, 0.182876,
		-0.955659, -0.268918, -0.119994,
		37.231346, 32.316429, 40.754887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681866, 32.800686, 41.369526>,  <37.900307, 32.504673, 40.838882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681866, 32.800686, 41.369526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.383789, 32.560715, 41.253067>,  <37.204941, 32.416733, 41.183193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.383789, 32.560715, 41.253067>,  <37.681866, 32.800686, 41.369526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383789, 32.560715, 41.253067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230377, -0.178111, 0.956663,
		-0.625789, 0.779973, -0.005484,
		-0.745194, -0.599932, -0.291148,
		37.160233, 32.380733, 41.165722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033051, 32.985344, 41.757942>,  <37.681866, 32.800686, 41.369526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033051, 32.985344, 41.757942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.001431, 32.603085, 41.644463>,  <36.982456, 32.373730, 41.576374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.001431, 32.603085, 41.644463>,  <37.033051, 32.985344, 41.757942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001431, 32.603085, 41.644463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114086, -0.274050, 0.954924,
		-0.990321, 0.107855, -0.087362,
		-0.079052, -0.955648, -0.283703,
		36.977715, 32.316391, 41.559353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433300, 32.724686, 42.145229>,  <37.033051, 32.985344, 41.757942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433300, 32.724686, 42.145229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.691902, 32.441204, 42.032261>,  <36.847065, 32.271114, 41.964481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.691902, 32.441204, 42.032261>,  <36.433300, 32.724686, 42.145229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691902, 32.441204, 42.032261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016963, -0.383450, 0.923406,
		-0.762719, -0.592198, -0.259925,
		0.646507, -0.708709, -0.282418,
		36.885853, 32.228592, 41.947536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347263, 32.157230, 42.604488>,  <36.433300, 32.724686, 42.145229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347263, 32.157230, 42.604488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.695789, 32.026726, 42.457867>,  <36.904903, 31.948423, 42.369892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.695789, 32.026726, 42.457867>,  <36.347263, 32.157230, 42.604488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695789, 32.026726, 42.457867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190762, -0.463022, 0.865576,
		-0.452115, -0.824119, -0.341205,
		0.871322, -0.326251, -0.366549,
		36.957184, 31.928848, 42.347900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415520, 31.434797, 42.734333>,  <36.347263, 32.157230, 42.604488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415520, 31.434797, 42.734333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.797642, 31.525864, 42.658909>,  <37.026917, 31.580503, 42.613655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.797642, 31.525864, 42.658909>,  <36.415520, 31.434797, 42.734333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797642, 31.525864, 42.658909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288096, -0.574077, 0.766444,
		0.066247, -0.786513, -0.614010,
		0.955307, 0.227668, -0.188560,
		37.084232, 31.594164, 42.602341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766129, 30.881239, 42.576649>,  <36.415520, 31.434797, 42.734333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766129, 30.881239, 42.576649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.044491, 31.136580, 42.708233>,  <37.211510, 31.289783, 42.787186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.044491, 31.136580, 42.708233>,  <36.766129, 30.881239, 42.576649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044491, 31.136580, 42.708233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308278, -0.679280, 0.665991,
		0.648596, -0.362056, -0.669506,
		0.695908, 0.638352, 0.328964,
		37.253262, 31.328085, 42.806923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462143, 30.444571, 42.618786>,  <36.766129, 30.881239, 42.576649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462143, 30.444571, 42.618786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.519299, 30.766096, 42.849770>,  <37.553593, 30.959011, 42.988361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.519299, 30.766096, 42.849770>,  <37.462143, 30.444571, 42.618786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519299, 30.766096, 42.849770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464603, -0.569648, 0.677971,
		0.873914, 0.171414, -0.454853,
		0.142892, 0.803815, 0.577463,
		37.562168, 31.007240, 43.023010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219761, 30.563675, 42.770306>,  <37.462143, 30.444571, 42.618786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219761, 30.563675, 42.770306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.088829, 30.795031, 43.069187>,  <38.010269, 30.933844, 43.248516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.088829, 30.795031, 43.069187>,  <38.219761, 30.563675, 42.770306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088829, 30.795031, 43.069187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672536, -0.412859, 0.614201,
		0.663739, 0.703571, -0.253846,
		-0.327331, 0.578390, 0.747208,
		37.990631, 30.968548, 43.293350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850468, 30.893490, 43.105225>,  <38.219761, 30.563675, 42.770306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850468, 30.893490, 43.105225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.544262, 30.892311, 43.362587>,  <38.360538, 30.891603, 43.517006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.544262, 30.892311, 43.362587>,  <38.850468, 30.893490, 43.105225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544262, 30.892311, 43.362587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625044, -0.240667, 0.742562,
		0.152659, 0.970603, 0.186077,
		-0.765516, -0.002948, 0.643410,
		38.314606, 30.891426, 43.555611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.881393, 31.192741, 45.534790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.057018, 30.940140, 45.279156>,  <35.162392, 30.788578, 45.125774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.057018, 30.940140, 45.279156>,  <34.881393, 31.192741, 45.534790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057018, 30.940140, 45.279156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495820, 0.422884, -0.758507,
		0.749258, 0.649901, -0.127441,
		0.439061, -0.631505, -0.639082,
		35.188736, 30.750689, 45.087433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026966, 31.635357, 44.988632>,  <34.881393, 31.192741, 45.534790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026966, 31.635357, 44.988632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.080837, 31.268772, 44.837921>,  <35.113159, 31.048822, 44.747494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.080837, 31.268772, 44.837921>,  <35.026966, 31.635357, 44.988632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080837, 31.268772, 44.837921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228423, 0.341285, -0.911782,
		0.964202, 0.208863, -0.163377,
		0.134679, -0.916461, -0.376777,
		35.121243, 30.993834, 44.724888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553879, 31.646288, 44.468925>,  <35.026966, 31.635357, 44.988632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553879, 31.646288, 44.468925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.314720, 31.335585, 44.389771>,  <35.171223, 31.149162, 44.342278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.314720, 31.335585, 44.389771>,  <35.553879, 31.646288, 44.468925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314720, 31.335585, 44.389771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355617, 0.478295, -0.802976,
		0.718368, -0.409728, -0.562201,
		-0.597900, -0.776760, -0.197886,
		35.135349, 31.102556, 44.330406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671921, 31.572515, 43.839909>,  <35.553879, 31.646288, 44.468925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671921, 31.572515, 43.839909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.316986, 31.403143, 43.912937>,  <35.104023, 31.301519, 43.956753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.316986, 31.403143, 43.912937>,  <35.671921, 31.572515, 43.839909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316986, 31.403143, 43.912937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329879, 0.306281, -0.892957,
		0.322201, -0.852577, -0.411459,
		-0.887337, -0.423443, 0.182564,
		35.050785, 31.276114, 43.967709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517685, 31.203192, 43.267574>,  <35.671921, 31.572515, 43.839909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517685, 31.203192, 43.267574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.174370, 31.256493, 43.465797>,  <34.968380, 31.288473, 43.584732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.174370, 31.256493, 43.465797>,  <35.517685, 31.203192, 43.267574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174370, 31.256493, 43.465797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453041, 0.256809, -0.853699,
		-0.241021, -0.957232, -0.160049,
		-0.858290, 0.133251, 0.495562,
		34.916882, 31.296469, 43.614468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078865, 30.802105, 42.921230>,  <35.517685, 31.203192, 43.267574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078865, 30.802105, 42.921230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.859760, 31.079214, 43.108856>,  <34.728298, 31.245480, 43.221432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.859760, 31.079214, 43.108856>,  <35.078865, 30.802105, 42.921230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859760, 31.079214, 43.108856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387188, 0.287088, -0.876165,
		-0.741646, -0.661548, 0.110976,
		-0.547765, 0.692773, 0.469062,
		34.695431, 31.287046, 43.249577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688869, 30.929920, 42.476532>,  <35.078865, 30.802105, 42.921230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688869, 30.929920, 42.476532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.562035, 31.221745, 42.718918>,  <34.485931, 31.396839, 42.864349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.562035, 31.221745, 42.718918>,  <34.688869, 30.929920, 42.476532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562035, 31.221745, 42.718918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449229, 0.447170, -0.773455,
		-0.835253, -0.517472, 0.185947,
		-0.317091, 0.729563, 0.605963,
		34.466908, 31.440613, 42.900707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976494, 31.077290, 42.345467>,  <34.688869, 30.929920, 42.476532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976494, 31.077290, 42.345467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.130630, 31.416121, 42.491875>,  <34.223114, 31.619419, 42.579720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.130630, 31.416121, 42.491875>,  <33.976494, 31.077290, 42.345467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130630, 31.416121, 42.491875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307597, 0.491882, -0.814516,
		-0.869996, 0.201284, 0.450102,
		0.385346, 0.847076, 0.366021,
		34.246235, 31.670242, 42.601681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565571, 31.664772, 42.021580>,  <33.976494, 31.077290, 42.345467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565571, 31.664772, 42.021580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.882950, 31.881357, 42.132755>,  <34.073380, 32.011311, 42.199459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.882950, 31.881357, 42.132755>,  <33.565571, 31.664772, 42.021580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882950, 31.881357, 42.132755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157207, 0.623491, -0.765862,
		-0.587979, 0.563981, 0.579833,
		0.793452, 0.541465, 0.277938,
		34.120987, 32.043797, 42.216137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274490, 32.315582, 42.009644>,  <33.565571, 31.664772, 42.021580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274490, 32.315582, 42.009644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.669090, 32.347744, 41.952572>,  <33.905849, 32.367039, 41.918327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.669090, 32.347744, 41.952572>,  <33.274490, 32.315582, 42.009644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669090, 32.347744, 41.952572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160051, 0.657991, -0.735820,
		0.034723, 0.748721, 0.661975,
		0.986498, 0.080400, -0.142681,
		33.965038, 32.371864, 41.909767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430595, 32.991409, 42.038654>,  <33.274490, 32.315582, 42.009644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430595, 32.991409, 42.038654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.772587, 32.887371, 41.859161>,  <33.977783, 32.824947, 41.751465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.772587, 32.887371, 41.859161>,  <33.430595, 32.991409, 42.038654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772587, 32.887371, 41.859161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188540, 0.650124, -0.736064,
		0.483178, 0.713924, 0.506805,
		0.854981, -0.260097, -0.448729,
		34.029079, 32.809341, 41.724545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786949, 33.597340, 41.823902>,  <33.430595, 32.991409, 42.038654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786949, 33.597340, 41.823902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.943932, 33.306099, 41.599102>,  <34.038120, 33.131355, 41.464222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.943932, 33.306099, 41.599102>,  <33.786949, 33.597340, 41.823902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943932, 33.306099, 41.599102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088337, 0.578363, -0.810983,
		0.915520, 0.367919, 0.162663,
		0.392454, -0.728102, -0.562004,
		34.061668, 33.087669, 41.430500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387085, 33.852856, 41.417133>,  <33.786949, 33.597340, 41.823902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387085, 33.852856, 41.417133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.264690, 33.525478, 41.222599>,  <34.191254, 33.329052, 41.105881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.264690, 33.525478, 41.222599>,  <34.387085, 33.852856, 41.417133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264690, 33.525478, 41.222599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114414, 0.475519, -0.872234,
		0.945136, -0.322536, -0.051862,
		-0.305988, -0.818445, -0.486332,
		34.172894, 33.279945, 41.076698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809441, 33.817963, 40.840065>,  <34.387085, 33.852856, 41.417133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809441, 33.817963, 40.840065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.497574, 33.592525, 40.730896>,  <34.310455, 33.457264, 40.665394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.497574, 33.592525, 40.730896>,  <34.809441, 33.817963, 40.840065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497574, 33.592525, 40.730896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062949, 0.363099, -0.929622,
		0.623023, -0.741975, -0.247619,
		-0.779666, -0.563589, -0.272926,
		34.263676, 33.423450, 40.649017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501022, 33.794472, 40.716999>,  <34.809441, 33.817963, 40.840065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501022, 33.794472, 40.716999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.571487, 34.184166, 40.773331>,  <35.613766, 34.417984, 40.807129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.571487, 34.184166, 40.773331>,  <35.501022, 33.794472, 40.716999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571487, 34.184166, 40.773331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324484, -0.192542, 0.926087,
		0.929343, -0.117441, -0.350042,
		0.176159, 0.974236, 0.140830,
		35.624336, 34.476437, 40.815578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197342, 33.902390, 40.996239>,  <35.501022, 33.794472, 40.716999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197342, 33.902390, 40.996239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.977631, 34.213703, 41.117943>,  <35.845802, 34.400490, 41.190964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.977631, 34.213703, 41.117943>,  <36.197342, 33.902390, 40.996239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977631, 34.213703, 41.117943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259112, -0.187530, 0.947467,
		0.794452, 0.599261, -0.098655,
		-0.549279, 0.778280, 0.304259,
		35.812847, 34.447186, 41.209221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607323, 34.206669, 41.554878>,  <36.197342, 33.902390, 40.996239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607323, 34.206669, 41.554878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.228428, 34.313396, 41.625927>,  <36.001091, 34.377434, 41.668556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.228428, 34.313396, 41.625927>,  <36.607323, 34.206669, 41.554878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228428, 34.313396, 41.625927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167808, -0.059322, 0.984033,
		0.273098, 0.961919, 0.011417,
		-0.947237, 0.266821, 0.177618,
		35.944256, 34.393444, 41.679211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558609, 34.852009, 42.010017>,  <36.607323, 34.206669, 41.554878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558609, 34.852009, 42.010017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.211945, 34.658531, 42.058914>,  <36.003944, 34.542446, 42.088253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.211945, 34.658531, 42.058914>,  <36.558609, 34.852009, 42.010017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211945, 34.658531, 42.058914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129625, 0.018305, 0.991394,
		-0.481765, 0.875048, 0.046834,
		-0.866660, -0.483689, 0.122246,
		35.951946, 34.513424, 42.095589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377373, 35.104378, 42.644215>,  <36.558609, 34.852009, 42.010017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377373, 35.104378, 42.644215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.156250, 34.777817, 42.577415>,  <36.023575, 34.581879, 42.537338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.156250, 34.777817, 42.577415>,  <36.377373, 35.104378, 42.644215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156250, 34.777817, 42.577415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209061, -0.329868, 0.920587,
		-0.806655, 0.473999, 0.353033,
		-0.552811, -0.816402, -0.166995,
		35.990406, 34.532898, 42.527317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020252, 35.015270, 43.291683>,  <36.377373, 35.104378, 42.644215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020252, 35.015270, 43.291683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.975185, 34.659672, 43.114147>,  <35.948147, 34.446312, 43.007626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.975185, 34.659672, 43.114147>,  <36.020252, 35.015270, 43.291683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975185, 34.659672, 43.114147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232568, -0.457874, 0.858058,
		-0.966032, -0.006549, 0.258339,
		-0.112667, -0.888993, -0.443844,
		35.941387, 34.392975, 42.980995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557579, 34.636990, 43.746147>,  <36.020252, 35.015270, 43.291683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557579, 34.636990, 43.746147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.758022, 34.357666, 43.541695>,  <35.878288, 34.190071, 43.419022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.758022, 34.357666, 43.541695>,  <35.557579, 34.636990, 43.746147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758022, 34.357666, 43.541695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228357, -0.463004, 0.856435,
		-0.834713, -0.545885, -0.072550,
		0.501106, -0.698310, -0.511132,
		35.908356, 34.148174, 43.388355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336243, 34.045807, 44.104660>,  <35.557579, 34.636990, 43.746147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336243, 34.045807, 44.104660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.674835, 33.958286, 43.910507>,  <35.877991, 33.905773, 43.794014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.674835, 33.958286, 43.910507>,  <35.336243, 34.045807, 44.104660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674835, 33.958286, 43.910507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386198, -0.375217, 0.842653,
		-0.366466, -0.900751, -0.233131,
		0.846495, -0.218769, -0.485372,
		35.928780, 33.892647, 43.764893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493408, 33.523087, 44.474670>,  <35.336243, 34.045807, 44.104660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493408, 33.523087, 44.474670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.824684, 33.559895, 44.253532>,  <36.023449, 33.581978, 44.120850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.824684, 33.559895, 44.253532>,  <35.493408, 33.523087, 44.474670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824684, 33.559895, 44.253532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539720, -0.396748, 0.742491,
		-0.151016, -0.913304, -0.378246,
		0.828188, 0.092019, -0.552844,
		36.073139, 33.587502, 44.087681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879173, 32.790913, 44.483295>,  <35.493408, 33.523087, 44.474670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879173, 32.790913, 44.483295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.129925, 33.090557, 44.397640>,  <36.280376, 33.270344, 44.346245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.129925, 33.090557, 44.397640>,  <35.879173, 32.790913, 44.483295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129925, 33.090557, 44.397640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548502, -0.229129, 0.804143,
		0.553328, -0.621554, -0.554525,
		0.626876, 0.749113, -0.214140,
		36.317989, 33.315292, 44.333397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544304, 32.497353, 44.302505>,  <35.879173, 32.790913, 44.483295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544304, 32.497353, 44.302505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.576080, 32.865044, 44.456753>,  <36.595146, 33.085659, 44.549301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.576080, 32.865044, 44.456753>,  <36.544304, 32.497353, 44.302505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576080, 32.865044, 44.456753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503085, -0.370936, 0.780584,
		0.860578, 0.131992, -0.491918,
		0.079440, 0.919231, 0.385622,
		36.599911, 33.140812, 44.572441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265911, 32.574986, 44.464897>,  <36.544304, 32.497353, 44.302505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265911, 32.574986, 44.464897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.030106, 32.821552, 44.673706>,  <36.888622, 32.969490, 44.798992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.030106, 32.821552, 44.673706>,  <37.265911, 32.574986, 44.464897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030106, 32.821552, 44.673706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375073, -0.363476, 0.852763,
		0.715397, 0.698513, -0.016925,
		-0.589514, 0.616413, 0.522023,
		36.853252, 33.006477, 44.830315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712402, 32.791298, 44.943886>,  <37.265911, 32.574986, 44.464897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712402, 32.791298, 44.943886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.342804, 32.863789, 45.078579>,  <37.121044, 32.907284, 45.159393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.342804, 32.863789, 45.078579>,  <37.712402, 32.791298, 44.943886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342804, 32.863789, 45.078579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263064, -0.337857, 0.903687,
		0.277539, 0.923585, 0.264505,
		-0.923996, 0.181227, 0.336731,
		37.065605, 32.918156, 45.179600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844467, 33.175240, 45.512020>,  <37.712402, 32.791298, 44.943886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844467, 33.175240, 45.512020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.475765, 33.026920, 45.557392>,  <37.254543, 32.937927, 45.584618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.475765, 33.026920, 45.557392>,  <37.844467, 33.175240, 45.512020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475765, 33.026920, 45.557392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265450, -0.390160, 0.881653,
		-0.282661, 0.842782, 0.458062,
		-0.921759, -0.370801, 0.113434,
		37.199238, 32.915680, 45.591423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158134, 33.880478, 45.704041>,  <37.844467, 33.175240, 45.512020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158134, 33.880478, 45.704041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.542725, 33.825939, 45.608570>,  <38.773479, 33.793217, 45.551289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.542725, 33.825939, 45.608570>,  <38.158134, 33.880478, 45.704041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542725, 33.825939, 45.608570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177212, 0.356312, -0.917408,
		0.210126, 0.924366, 0.318426,
		0.961480, -0.136342, -0.238679,
		38.831169, 33.785038, 45.536968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308769, 34.393093, 45.285755>,  <38.158134, 33.880478, 45.704041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308769, 34.393093, 45.285755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.590363, 34.116634, 45.220356>,  <38.759319, 33.950760, 45.181118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.590363, 34.116634, 45.220356>,  <38.308769, 34.393093, 45.285755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590363, 34.116634, 45.220356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148144, 0.082248, -0.985540,
		0.694598, 0.718021, -0.044488,
		0.703980, -0.691144, -0.163499,
		38.801556, 33.909290, 45.171307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806923, 34.726147, 44.763744>,  <38.308769, 34.393093, 45.285755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806923, 34.726147, 44.763744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.866859, 34.333504, 44.716434>,  <38.902821, 34.097916, 44.688049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.866859, 34.333504, 44.716434>,  <38.806923, 34.726147, 44.763744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866859, 34.333504, 44.716434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025678, 0.115718, -0.992950,
		0.988377, 0.151821, -0.007867,
		0.149840, -0.981611, -0.118272,
		38.911812, 34.039021, 44.680954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399662, 34.672619, 44.245945>,  <38.806923, 34.726147, 44.763744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399662, 34.672619, 44.245945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.252327, 34.300755, 44.242874>,  <39.163925, 34.077637, 44.241032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.252327, 34.300755, 44.242874>,  <39.399662, 34.672619, 44.245945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252327, 34.300755, 44.242874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068097, -0.018742, -0.997503,
		0.927196, -0.367937, 0.070210,
		-0.368334, -0.929662, -0.007677,
		39.141827, 34.021854, 44.240570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826927, 34.197544, 43.768501>,  <39.399662, 34.672619, 44.245945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826927, 34.197544, 43.768501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.479584, 34.000423, 43.790737>,  <39.271175, 33.882149, 43.804081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.479584, 34.000423, 43.790737>,  <39.826927, 34.197544, 43.768501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479584, 34.000423, 43.790737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076287, 0.021968, -0.996844,
		0.490030, -0.869862, -0.056670,
		-0.868362, -0.492807, 0.055594,
		39.219074, 33.852581, 43.807415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881443, 33.867119, 43.136086>,  <39.826927, 34.197544, 43.768501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881443, 33.867119, 43.136086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.504597, 33.834843, 43.266258>,  <39.278488, 33.815475, 43.344364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.504597, 33.834843, 43.266258>,  <39.881443, 33.867119, 43.136086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504597, 33.834843, 43.266258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335289, 0.227315, -0.914281,
		-0.000204, -0.970473, -0.241211,
		-0.942115, -0.080688, 0.325436,
		39.221962, 33.810635, 43.363888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509052, 33.327003, 42.865150>,  <39.881443, 33.867119, 43.136086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509052, 33.327003, 42.865150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.222343, 33.583668, 42.974335>,  <39.050316, 33.737667, 43.039845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.222343, 33.583668, 42.974335>,  <39.509052, 33.327003, 42.865150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222343, 33.583668, 42.974335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190289, 0.196602, -0.961841,
		-0.670838, -0.741365, -0.018819,
		-0.716774, 0.641659, 0.272962,
		39.007313, 33.776165, 43.056225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964668, 33.111065, 42.485146>,  <39.509052, 33.327003, 42.865150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964668, 33.111065, 42.485146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.887913, 33.495449, 42.564888>,  <38.841862, 33.726078, 42.612732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.887913, 33.495449, 42.564888>,  <38.964668, 33.111065, 42.485146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887913, 33.495449, 42.564888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312308, 0.132782, -0.940655,
		-0.930400, -0.242759, 0.274636,
		-0.191886, 0.960956, 0.199356,
		38.830345, 33.783737, 42.624695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304802, 33.290951, 42.106911>,  <38.964668, 33.111065, 42.485146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304802, 33.290951, 42.106911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.493927, 33.633488, 42.189968>,  <38.607403, 33.839012, 42.239803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.493927, 33.633488, 42.189968>,  <38.304802, 33.290951, 42.106911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493927, 33.633488, 42.189968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178982, 0.324072, -0.928947,
		-0.862792, 0.402056, 0.306497,
		0.472816, 0.856346, 0.207646,
		38.635773, 33.890392, 42.252262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876678, 33.668446, 41.805538>,  <38.304802, 33.290951, 42.106911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876678, 33.668446, 41.805538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.199364, 33.898102, 41.861515>,  <38.392975, 34.035896, 41.895100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.199364, 33.898102, 41.861515>,  <37.876678, 33.668446, 41.805538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199364, 33.898102, 41.861515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074988, 0.334344, -0.939463,
		-0.586169, 0.747382, 0.312773,
		0.806711, 0.574138, 0.139938,
		38.441376, 34.070343, 41.903496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752037, 34.451859, 41.644783>,  <37.876678, 33.668446, 41.805538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752037, 34.451859, 41.644783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.147697, 34.395050, 41.629791>,  <38.385094, 34.360966, 41.620796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.147697, 34.395050, 41.629791>,  <37.752037, 34.451859, 41.644783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147697, 34.395050, 41.629791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023129, 0.402604, -0.915082,
		0.145048, 0.904290, 0.401522,
		0.989154, -0.142018, -0.037482,
		38.444443, 34.352444, 41.618546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956623, 35.008202, 41.376881>,  <37.752037, 34.451859, 41.644783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956623, 35.008202, 41.376881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.265518, 34.759422, 41.324986>,  <38.450855, 34.610153, 41.293850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.265518, 34.759422, 41.324986>,  <37.956623, 35.008202, 41.376881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265518, 34.759422, 41.324986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201538, 0.433456, -0.878350,
		0.602522, 0.652148, 0.460077,
		0.772237, -0.621948, -0.129734,
		38.497189, 34.572838, 41.286064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459335, 35.436817, 41.161095>,  <37.956623, 35.008202, 41.376881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459335, 35.436817, 41.161095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.601776, 35.079376, 41.051796>,  <38.687241, 34.864910, 40.986217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.601776, 35.079376, 41.051796>,  <38.459335, 35.436817, 41.161095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601776, 35.079376, 41.051796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308353, 0.388403, -0.868367,
		0.882106, 0.224970, 0.413857,
		0.356100, -0.893606, -0.273242,
		38.708607, 34.811295, 40.969822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092606, 35.537701, 40.764721>,  <38.459335, 35.436817, 41.161095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092606, 35.537701, 40.764721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.940403, 35.179874, 40.670937>,  <38.849083, 34.965179, 40.614666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.940403, 35.179874, 40.670937>,  <39.092606, 35.537701, 40.764721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940403, 35.179874, 40.670937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095321, 0.214246, -0.972118,
		0.919853, -0.392245, 0.003749,
		-0.380505, -0.894563, -0.234464,
		38.826252, 34.911507, 40.600597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.760645, 39.099716, 41.050198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.516649, 39.323944, 41.274223>,  <28.370251, 39.458481, 41.408638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.516649, 39.323944, 41.274223>,  <28.760645, 39.099716, 41.050198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516649, 39.323944, 41.274223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755748, -0.199060, -0.623875,
		-0.238238, -0.803827, 0.545073,
		-0.609990, 0.560569, 0.560067,
		28.333652, 39.492115, 41.442242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134748, 38.753986, 41.329189>,  <28.760645, 39.099716, 41.050198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134748, 38.753986, 41.329189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.133238, 39.144196, 41.241245>,  <28.132332, 39.378323, 41.188480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.133238, 39.144196, 41.241245>,  <28.134748, 38.753986, 41.329189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133238, 39.144196, 41.241245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560772, -0.184101, -0.807243,
		-0.827962, 0.120240, 0.547742,
		-0.003777, 0.975525, -0.219855,
		28.132105, 39.436852, 41.175289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.535799, 38.870815, 40.953033>,  <28.134748, 38.753986, 41.329189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.535799, 38.870815, 40.953033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.780519, 39.175991, 40.869484>,  <27.927353, 39.359097, 40.819355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.780519, 39.175991, 40.869484>,  <27.535799, 38.870815, 40.953033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780519, 39.175991, 40.869484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466673, 0.134931, -0.874076,
		-0.638681, 0.632236, 0.438593,
		0.611803, 0.762936, -0.208870,
		27.964060, 39.404873, 40.806824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134373, 39.442703, 40.779388>,  <27.535799, 38.870815, 40.953033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.134373, 39.442703, 40.779388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.488016, 39.508759, 40.604534>,  <27.700201, 39.548389, 40.499622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.488016, 39.508759, 40.604534>,  <27.134373, 39.442703, 40.779388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488016, 39.508759, 40.604534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448586, 0.037941, -0.892934,
		-0.130870, 0.985541, 0.107621,
		0.884106, 0.165135, -0.437134,
		27.753248, 39.558300, 40.473392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963142, 39.785393, 40.243908>,  <27.134373, 39.442703, 40.779388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963142, 39.785393, 40.243908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.337292, 39.690643, 40.138863>,  <27.561781, 39.633793, 40.075836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.337292, 39.690643, 40.138863>,  <26.963142, 39.785393, 40.243908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337292, 39.690643, 40.138863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269775, 0.002267, -0.962921,
		0.228689, 0.971537, -0.061783,
		0.935373, -0.236877, -0.262615,
		27.617903, 39.619579, 40.060078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094965, 40.297962, 39.646622>,  <26.963142, 39.785393, 40.243908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.094965, 40.297962, 39.646622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.340424, 39.985432, 39.601070>,  <27.487700, 39.797913, 39.573742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.340424, 39.985432, 39.601070>,  <27.094965, 40.297962, 39.646622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340424, 39.985432, 39.601070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278826, -0.079501, -0.957045,
		0.738710, 0.619041, -0.266640,
		0.613648, -0.781325, -0.113876,
		27.524517, 39.751034, 39.566906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.391418, 40.389259, 39.031105>,  <27.094965, 40.297962, 39.646622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.391418, 40.389259, 39.031105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.458858, 40.001820, 39.104195>,  <27.499323, 39.769356, 39.148048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.458858, 40.001820, 39.104195>,  <27.391418, 40.389259, 39.031105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458858, 40.001820, 39.104195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178242, -0.212278, -0.960816,
		0.969435, 0.129425, -0.208435,
		0.168599, -0.968601, 0.182721,
		27.509438, 39.711239, 39.159012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701397, 40.143631, 38.489098>,  <27.391418, 40.389259, 39.031105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701397, 40.143631, 38.489098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.566153, 39.791634, 38.622543>,  <27.485006, 39.580437, 38.702610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.566153, 39.791634, 38.622543>,  <27.701397, 40.143631, 38.489098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566153, 39.791634, 38.622543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172435, -0.290566, -0.941189,
		0.925174, -0.375753, -0.053498,
		-0.338110, -0.879989, 0.333617,
		27.464720, 39.527637, 38.722630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113867, 39.581337, 38.124416>,  <27.701397, 40.143631, 38.489098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113867, 39.581337, 38.124416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.749031, 39.483730, 38.256203>,  <27.530130, 39.425167, 38.335274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.749031, 39.483730, 38.256203>,  <28.113867, 39.581337, 38.124416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749031, 39.483730, 38.256203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186073, -0.469691, -0.862999,
		0.365338, -0.848436, 0.382994,
		-0.912089, -0.244021, 0.329467,
		27.475405, 39.410522, 38.355042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.092440, 38.902420, 37.798401>,  <28.113867, 39.581337, 38.124416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.092440, 38.902420, 37.798401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.727438, 38.999210, 37.930332>,  <27.508438, 39.057285, 38.009491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.727438, 38.999210, 37.930332>,  <28.092440, 38.902420, 37.798401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727438, 38.999210, 37.930332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408881, -0.514942, -0.753426,
		-0.012464, -0.822365, 0.568824,
		-0.912503, 0.241972, 0.329831,
		27.453688, 39.071800, 38.029282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795523, 38.288189, 37.820465>,  <28.092440, 38.902420, 37.798401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795523, 38.288189, 37.820465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.493910, 38.550888, 37.816166>,  <27.312943, 38.708508, 37.813587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.493910, 38.550888, 37.816166>,  <27.795523, 38.288189, 37.820465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.493910, 38.550888, 37.816166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509861, -0.595541, -0.620784,
		-0.414100, -0.462612, 0.783908,
		-0.754031, 0.656751, -0.010746,
		27.267700, 38.747913, 37.812943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144154, 37.896618, 37.804214>,  <27.795523, 38.288189, 37.820465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144154, 37.896618, 37.804214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.019272, 38.248035, 37.659615>,  <26.944342, 38.458885, 37.572853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.019272, 38.248035, 37.659615>,  <27.144154, 37.896618, 37.804214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.019272, 38.248035, 37.659615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590970, -0.477539, -0.650162,
		-0.743829, 0.010653, 0.668285,
		-0.312206, 0.878546, -0.361503,
		26.925610, 38.511600, 37.551163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490932, 37.950150, 37.927322>,  <27.144154, 37.896618, 37.804214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.490932, 37.950150, 37.927322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.567719, 38.179230, 37.608532>,  <26.613791, 38.316677, 37.417259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.567719, 38.179230, 37.608532>,  <26.490932, 37.950150, 37.927322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.567719, 38.179230, 37.608532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725658, -0.463905, -0.508147,
		-0.660734, 0.675878, 0.326527,
		0.191968, 0.572696, -0.796974,
		26.625309, 38.351040, 37.369438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861368, 38.024395, 37.727989>,  <26.490932, 37.950150, 37.927322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861368, 38.024395, 37.727989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.089535, 38.142330, 37.421345>,  <26.226435, 38.213093, 37.237358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.089535, 38.142330, 37.421345>,  <25.861368, 38.024395, 37.727989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.089535, 38.142330, 37.421345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562795, -0.539502, -0.626258,
		-0.598234, 0.788674, -0.141807,
		0.570418, 0.294841, -0.766611,
		26.260660, 38.230782, 37.191360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.399834, 38.320305, 37.153435>,  <25.861368, 38.024395, 37.727989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.399834, 38.320305, 37.153435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.745378, 38.189194, 37.000439>,  <25.952705, 38.110527, 36.908642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.745378, 38.189194, 37.000439>,  <25.399834, 38.320305, 37.153435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.745378, 38.189194, 37.000439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503678, -0.572467, -0.646986,
		-0.006897, 0.751561, -0.659628,
		0.863864, -0.327777, -0.382493,
		26.004538, 38.090862, 36.885693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.226936, 38.163006, 36.529816>,  <25.399834, 38.320305, 37.153435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.226936, 38.163006, 36.529816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.585760, 37.986271, 36.526737>,  <25.801054, 37.880230, 36.524891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.585760, 37.986271, 36.526737>,  <25.226936, 38.163006, 36.529816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.585760, 37.986271, 36.526737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307884, -0.612402, -0.728129,
		0.317001, 0.655546, -0.685398,
		0.897061, -0.441840, -0.007700,
		25.854877, 37.853718, 36.524426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.343225, 38.066093, 35.864307>,  <25.226936, 38.163006, 36.529816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.343225, 38.066093, 35.864307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.588692, 37.803631, 36.039974>,  <25.735971, 37.646152, 36.145374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.588692, 37.803631, 36.039974>,  <25.343225, 38.066093, 35.864307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.588692, 37.803631, 36.039974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238609, -0.684323, -0.689035,
		0.752648, 0.318049, -0.576512,
		0.613667, -0.656161, 0.439165,
		25.772791, 37.606781, 36.171722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.811686, 37.716877, 35.380417>,  <25.343225, 38.066093, 35.864307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.811686, 37.716877, 35.380417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.762735, 37.475307, 35.695454>,  <25.733364, 37.330364, 35.884476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.762735, 37.475307, 35.695454>,  <25.811686, 37.716877, 35.380417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762735, 37.475307, 35.695454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320957, -0.726832, -0.607208,
		0.939154, -0.327090, -0.104887,
		-0.122376, -0.603926, 0.787590,
		25.726023, 37.294128, 35.931732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.902599, 36.979145, 35.146690>,  <25.811686, 37.716877, 35.380417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.902599, 36.979145, 35.146690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.702539, 36.915581, 35.487183>,  <25.582504, 36.877441, 35.691479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.702539, 36.915581, 35.487183>,  <25.902599, 36.979145, 35.146690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.702539, 36.915581, 35.487183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438694, -0.801035, -0.407297,
		0.746591, -0.577141, 0.330923,
		-0.500149, -0.158910, 0.851234,
		25.552494, 36.867908, 35.742554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822212, 36.312386, 35.146778>,  <25.902599, 36.979145, 35.146690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822212, 36.312386, 35.146778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.584141, 36.379799, 35.461067>,  <25.441298, 36.420246, 35.649639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.584141, 36.379799, 35.461067>,  <25.822212, 36.312386, 35.146778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.584141, 36.379799, 35.461067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617015, -0.722260, -0.312462,
		0.514835, -0.670773, 0.533862,
		-0.595178, 0.168535, 0.785722,
		25.405588, 36.430359, 35.696785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.808744, 35.669899, 35.532833>,  <25.822212, 36.312386, 35.146778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.808744, 35.669899, 35.532833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.485006, 35.902245, 35.567619>,  <25.290764, 36.041653, 35.588490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.485006, 35.902245, 35.567619>,  <25.808744, 35.669899, 35.532833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485006, 35.902245, 35.567619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572858, -0.748026, -0.335097,
		-0.129591, -0.321029, 0.938161,
		-0.809345, 0.580859, 0.086966,
		25.242203, 36.076504, 35.593708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548101, 35.828529, 35.533184>,  <25.808744, 35.669899, 35.532833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548101, 35.828529, 35.533184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.843801, 35.563038, 35.487625>,  <27.021221, 35.403744, 35.460289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.843801, 35.563038, 35.487625>,  <26.548101, 35.828529, 35.533184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.843801, 35.563038, 35.487625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218000, 0.075836, 0.972998,
		-0.637171, -0.744117, 0.200755,
		0.739249, -0.663731, -0.113897,
		27.065577, 35.363918, 35.453457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600737, 35.424625, 36.192097>,  <26.548101, 35.828529, 35.533184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600737, 35.424625, 36.192097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.948818, 35.353157, 36.008434>,  <27.157667, 35.310276, 35.898235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.948818, 35.353157, 36.008434>,  <26.600737, 35.424625, 36.192097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948818, 35.353157, 36.008434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461705, -0.029568, 0.886541,
		-0.171977, -0.983464, 0.056764,
		0.870203, -0.178672, -0.459155,
		27.209879, 35.299557, 35.870689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854418, 34.967163, 36.632660>,  <26.600737, 35.424625, 36.192097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854418, 34.967163, 36.632660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.145643, 35.125240, 36.408607>,  <27.320379, 35.220085, 36.274178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.145643, 35.125240, 36.408607>,  <26.854418, 34.967163, 36.632660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145643, 35.125240, 36.408607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571336, 0.101709, 0.814390,
		0.378812, -0.912949, -0.151738,
		0.728063, 0.395194, -0.560129,
		27.364063, 35.243797, 36.240570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465429, 34.674679, 36.825645>,  <26.854418, 34.967163, 36.632660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465429, 34.674679, 36.825645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.601343, 35.002983, 36.641949>,  <27.682892, 35.199966, 36.531731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.601343, 35.002983, 36.641949>,  <27.465429, 34.674679, 36.825645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601343, 35.002983, 36.641949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505217, 0.252575, 0.825204,
		0.793285, -0.512410, -0.328839,
		0.339786, 0.820757, -0.459242,
		27.703279, 35.249210, 36.504177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304937, 34.649376, 36.687065>,  <27.465429, 34.674679, 36.825645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304937, 34.649376, 36.687065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.190081, 35.032444, 36.678986>,  <28.121166, 35.262287, 36.674137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.190081, 35.032444, 36.678986>,  <28.304937, 34.649376, 36.687065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190081, 35.032444, 36.678986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746514, 0.236945, 0.621750,
		0.600221, 0.163450, -0.782955,
		-0.287143, 0.957675, -0.020202,
		28.103937, 35.319748, 36.672924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981985, 35.048431, 36.737804>,  <28.304937, 34.649376, 36.687065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981985, 35.048431, 36.737804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.676147, 35.281750, 36.847469>,  <28.492645, 35.421741, 36.913269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.676147, 35.281750, 36.847469>,  <28.981985, 35.048431, 36.737804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676147, 35.281750, 36.847469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561682, 0.394433, 0.727280,
		0.316079, 0.710066, -0.629206,
		-0.764596, 0.583292, 0.274160,
		28.446768, 35.456738, 36.929718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252748, 35.680882, 36.820835>,  <28.981985, 35.048431, 36.737804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252748, 35.680882, 36.820835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.914865, 35.694473, 37.034496>,  <28.712135, 35.702629, 37.162693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.914865, 35.694473, 37.034496>,  <29.252748, 35.680882, 36.820835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914865, 35.694473, 37.034496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462444, 0.548798, 0.696395,
		-0.269475, 0.835264, -0.479289,
		-0.844707, 0.033983, 0.534150,
		28.661453, 35.704670, 37.194740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246887, 36.418591, 37.066677>,  <29.252748, 35.680882, 36.820835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246887, 36.418591, 37.066677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.995241, 36.193035, 37.280685>,  <28.844254, 36.057701, 37.409092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.995241, 36.193035, 37.280685>,  <29.246887, 36.418591, 37.066677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995241, 36.193035, 37.280685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360998, 0.397620, 0.843551,
		-0.688402, 0.723832, -0.046587,
		-0.629113, -0.563884, 0.535024,
		28.806507, 36.023869, 37.441193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875700, 36.848709, 37.626263>,  <29.246887, 36.418591, 37.066677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875700, 36.848709, 37.626263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.832174, 36.481163, 37.777969>,  <28.806059, 36.260635, 37.868996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.832174, 36.481163, 37.777969>,  <28.875700, 36.848709, 37.626263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832174, 36.481163, 37.777969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149789, 0.362023, 0.920056,
		-0.982712, 0.156926, 0.098242,
		-0.108815, -0.918865, 0.379270,
		28.799530, 36.205502, 37.891750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395681, 36.974476, 38.218006>,  <28.875700, 36.848709, 37.626263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395681, 36.974476, 38.218006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.562902, 36.620800, 38.301373>,  <28.663235, 36.408592, 38.351391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.562902, 36.620800, 38.301373>,  <28.395681, 36.974476, 38.218006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562902, 36.620800, 38.301373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159489, 0.154421, 0.975047,
		-0.894312, -0.440863, -0.076462,
		0.418055, -0.884191, 0.208413,
		28.688318, 36.355541, 38.363895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000177, 36.749638, 38.789539>,  <28.395681, 36.974476, 38.218006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000177, 36.749638, 38.789539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.340565, 36.539581, 38.785946>,  <28.544798, 36.413548, 38.783791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.340565, 36.539581, 38.785946>,  <28.000177, 36.749638, 38.789539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340565, 36.539581, 38.785946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058874, 0.078376, 0.995184,
		-0.521905, -0.847400, 0.097612,
		0.850970, -0.525138, -0.008985,
		28.595856, 36.382042, 38.783249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946184, 36.224346, 39.340279>,  <28.000177, 36.749638, 38.789539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946184, 36.224346, 39.340279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.342033, 36.194668, 39.291054>,  <28.579542, 36.176861, 39.261517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.342033, 36.194668, 39.291054>,  <27.946184, 36.224346, 39.340279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342033, 36.194668, 39.291054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123911, 0.006913, 0.992269,
		-0.072770, -0.997220, 0.016034,
		0.989621, -0.074194, -0.123064,
		28.638920, 36.172409, 39.254135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178280, 35.612526, 39.727913>,  <27.946184, 36.224346, 39.340279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178280, 35.612526, 39.727913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.478205, 35.874638, 39.691265>,  <28.658159, 36.031906, 39.669277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.478205, 35.874638, 39.691265>,  <28.178280, 35.612526, 39.727913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478205, 35.874638, 39.691265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055440, 0.075768, 0.995583,
		0.659326, -0.751578, 0.020483,
		0.749810, 0.655278, -0.091623,
		28.703148, 36.071220, 39.663776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648867, 35.426544, 40.212662>,  <28.178280, 35.612526, 39.727913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648867, 35.426544, 40.212662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.754932, 35.801640, 40.122921>,  <28.818571, 36.026695, 40.069077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.754932, 35.801640, 40.122921>,  <28.648867, 35.426544, 40.212662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754932, 35.801640, 40.122921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199546, 0.174276, 0.964266,
		0.943329, -0.300456, -0.140911,
		0.265163, 0.937739, -0.224354,
		28.834480, 36.082962, 40.055614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286892, 35.577946, 40.672947>,  <28.648867, 35.426544, 40.212662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286892, 35.577946, 40.672947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.109562, 35.918690, 40.561386>,  <29.003164, 36.123138, 40.494450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.109562, 35.918690, 40.561386>,  <29.286892, 35.577946, 40.672947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109562, 35.918690, 40.561386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203878, 0.398828, 0.894075,
		0.872866, 0.339504, -0.350487,
		-0.443327, 0.851864, -0.278906,
		28.976564, 36.174248, 40.477715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668156, 36.096786, 40.929996>,  <29.286892, 35.577946, 40.672947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668156, 36.096786, 40.929996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.318758, 36.282860, 40.872570>,  <29.109119, 36.394505, 40.838116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.318758, 36.282860, 40.872570>,  <29.668156, 36.096786, 40.929996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318758, 36.282860, 40.872570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122764, 0.495836, 0.859695,
		0.471098, 0.733316, -0.490218,
		-0.873496, 0.465182, -0.143563,
		29.056709, 36.422413, 40.829502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791969, 36.714001, 41.222641>,  <29.668156, 36.096786, 40.929996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791969, 36.714001, 41.222641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.393082, 36.714214, 41.192829>,  <29.153749, 36.714340, 41.174942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.393082, 36.714214, 41.192829>,  <29.791969, 36.714001, 41.222641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393082, 36.714214, 41.192829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060291, 0.582131, 0.810857,
		0.043816, 0.813095, -0.580480,
		-0.997219, 0.000531, -0.074529,
		29.093916, 36.714375, 41.170471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490053, 37.450588, 41.293743>,  <29.791969, 36.714001, 41.222641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490053, 37.450588, 41.293743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.207413, 37.182499, 41.384537>,  <29.037828, 37.021645, 41.439011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.207413, 37.182499, 41.384537>,  <29.490053, 37.450588, 41.293743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207413, 37.182499, 41.384537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072851, 0.387968, 0.918789,
		-0.703853, 0.632681, -0.322964,
		-0.706600, -0.670221, 0.226981,
		28.995432, 36.981434, 41.452633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073229, 37.899479, 41.724449>,  <29.490053, 37.450588, 41.293743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073229, 37.899479, 41.724449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.943348, 37.526257, 41.786373>,  <28.865419, 37.302322, 41.823528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.943348, 37.526257, 41.786373>,  <29.073229, 37.899479, 41.724449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943348, 37.526257, 41.786373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171231, 0.218970, 0.960590,
		-0.930187, 0.285399, -0.230869,
		-0.324704, -0.933059, 0.154814,
		28.845936, 37.246338, 41.832817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444113, 37.962727, 41.886711>,  <29.073229, 37.899479, 41.724449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444113, 37.962727, 41.886711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.577234, 37.628609, 42.061764>,  <28.657106, 37.428139, 42.166798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.577234, 37.628609, 42.061764>,  <28.444113, 37.962727, 41.886711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577234, 37.628609, 42.061764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085491, 0.488903, 0.868139,
		-0.939113, -0.251505, 0.234118,
		0.332802, -0.835296, 0.437633,
		28.677074, 37.378021, 42.193054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991781, 37.733971, 42.492645>,  <28.444113, 37.962727, 41.886711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991781, 37.733971, 42.492645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.384554, 37.718441, 42.418564>,  <28.620218, 37.709126, 42.374115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.384554, 37.718441, 42.418564>,  <27.991781, 37.733971, 42.492645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384554, 37.718441, 42.418564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173788, 0.572203, 0.801487,
		0.074855, -0.819193, 0.568612,
		0.981934, -0.038823, -0.185199,
		28.679134, 37.706795, 42.363003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.201614, 31.320704, 43.767197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.848549, 31.180096, 43.891994>,  <38.636711, 31.095730, 43.966873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.848549, 31.180096, 43.891994>,  <39.201614, 31.320704, 43.767197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848549, 31.180096, 43.891994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357499, -0.071186, 0.931197,
		-0.305126, 0.933470, 0.188502,
		-0.882662, -0.351522, 0.311994,
		38.583752, 31.074638, 43.985592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052696, 31.717560, 44.381577>,  <39.201614, 31.320704, 43.767197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052696, 31.717560, 44.381577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.848011, 31.373899, 44.382496>,  <38.725201, 31.167704, 44.383049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.848011, 31.373899, 44.382496>,  <39.052696, 31.717560, 44.381577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848011, 31.373899, 44.382496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308703, -0.181366, 0.933707,
		-0.801779, 0.478502, 0.358031,
		-0.511716, -0.859152, 0.002300,
		38.694496, 31.116154, 44.383186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527023, 31.765234, 44.898510>,  <39.052696, 31.717560, 44.381577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527023, 31.765234, 44.898510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.605736, 31.380949, 44.820221>,  <38.652962, 31.150377, 44.773247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.605736, 31.380949, 44.820221>,  <38.527023, 31.765234, 44.898510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605736, 31.380949, 44.820221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053490, -0.188806, 0.980556,
		-0.978987, -0.203423, 0.014235,
		0.196780, -0.960714, -0.195720,
		38.664768, 31.092735, 44.761505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174274, 31.324339, 45.447525>,  <38.527023, 31.765234, 44.898510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174274, 31.324339, 45.447525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.465088, 31.113012, 45.272114>,  <38.639576, 30.986217, 45.166866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.465088, 31.113012, 45.272114>,  <38.174274, 31.324339, 45.447525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465088, 31.113012, 45.272114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264116, -0.374360, 0.888874,
		-0.633775, -0.762061, -0.132634,
		0.727029, -0.528316, -0.438533,
		38.683197, 30.954517, 45.140553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180794, 30.745649, 45.803825>,  <38.174274, 31.324339, 45.447525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180794, 30.745649, 45.803825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.539650, 30.709686, 45.630825>,  <38.754963, 30.688108, 45.527023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.539650, 30.709686, 45.630825>,  <38.180794, 30.745649, 45.803825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539650, 30.709686, 45.630825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348632, -0.457157, 0.818207,
		-0.271282, -0.884830, -0.378790,
		0.897141, -0.089907, -0.432499,
		38.808792, 30.682714, 45.501076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408436, 30.003674, 45.885860>,  <38.180794, 30.745649, 45.803825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408436, 30.003674, 45.885860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.740688, 30.217598, 45.823864>,  <38.940041, 30.345953, 45.786667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.740688, 30.217598, 45.823864>,  <38.408436, 30.003674, 45.885860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740688, 30.217598, 45.823864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420552, -0.420131, 0.804130,
		0.364941, -0.733120, -0.573892,
		0.830634, 0.534812, -0.154992,
		38.989880, 30.378042, 45.777367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945194, 29.547052, 46.027046>,  <38.408436, 30.003674, 45.885860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945194, 29.547052, 46.027046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.120754, 29.906433, 46.031929>,  <39.226089, 30.122063, 46.034859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.120754, 29.906433, 46.031929>,  <38.945194, 29.547052, 46.027046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120754, 29.906433, 46.031929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641160, -0.322669, 0.696275,
		0.629509, -0.297768, -0.717672,
		0.438899, 0.898453, 0.012206,
		39.252422, 30.175970, 46.035591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643280, 29.447123, 45.955009>,  <38.945194, 29.547052, 46.027046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643280, 29.447123, 45.955009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.604099, 29.806311, 46.126617>,  <39.580589, 30.021824, 46.229584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.604099, 29.806311, 46.126617>,  <39.643280, 29.447123, 45.955009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604099, 29.806311, 46.126617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702960, -0.242718, 0.668532,
		0.704451, 0.367070, -0.607461,
		-0.097956, 0.897969, 0.429019,
		39.574711, 30.075701, 46.255322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398483, 29.649902, 46.192928>,  <39.643280, 29.447123, 45.955009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398483, 29.649902, 46.192928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.124222, 29.879707, 46.371727>,  <39.959663, 30.017591, 46.479008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.124222, 29.879707, 46.371727>,  <40.398483, 29.649902, 46.192928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124222, 29.879707, 46.371727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606186, 0.110677, 0.787584,
		0.403006, 0.810977, -0.424149,
		-0.685656, 0.574514, 0.447000,
		39.918526, 30.052061, 46.505825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692974, 30.265457, 46.286133>,  <40.398483, 29.649902, 46.192928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692974, 30.265457, 46.286133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.410179, 30.251778, 46.568691>,  <40.240501, 30.243570, 46.738228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.410179, 30.251778, 46.568691>,  <40.692974, 30.265457, 46.286133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410179, 30.251778, 46.568691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681138, 0.235851, 0.693127,
		-0.190309, 0.971187, -0.143449,
		-0.706989, -0.034200, 0.706397,
		40.198082, 30.241518, 46.780609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805805, 30.870968, 46.705566>,  <40.692974, 30.265457, 46.286133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805805, 30.870968, 46.705566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.593891, 30.612892, 46.925770>,  <40.466743, 30.458046, 47.057892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.593891, 30.612892, 46.925770>,  <40.805805, 30.870968, 46.705566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593891, 30.612892, 46.925770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647568, 0.111457, 0.753812,
		-0.547710, 0.755849, 0.358756,
		-0.529782, -0.645190, 0.550510,
		40.434956, 30.419334, 47.090923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943825, 31.117197, 47.350212>,  <40.805805, 30.870968, 46.705566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943825, 31.117197, 47.350212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.795059, 30.749424, 47.401318>,  <40.705799, 30.528759, 47.431980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.795059, 30.749424, 47.401318>,  <40.943825, 31.117197, 47.350212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795059, 30.749424, 47.401318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575758, -0.120523, 0.808688,
		-0.728138, 0.374319, 0.574196,
		-0.371911, -0.919434, 0.127760,
		40.683487, 30.473593, 47.439644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847183, 31.148212, 48.045547>,  <40.943825, 31.117197, 47.350212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847183, 31.148212, 48.045547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.879795, 30.774015, 47.908020>,  <40.899361, 30.549498, 47.825504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.879795, 30.774015, 47.908020>,  <40.847183, 31.148212, 48.045547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879795, 30.774015, 47.908020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655759, -0.209432, 0.725341,
		-0.750556, -0.284597, 0.596381,
		0.081528, -0.935491, -0.343818,
		40.904255, 30.493368, 47.804874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748192, 30.743748, 48.613838>,  <40.847183, 31.148212, 48.045547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748192, 30.743748, 48.613838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.972816, 30.543615, 48.350227>,  <41.107590, 30.423536, 48.192062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.972816, 30.543615, 48.350227>,  <40.748192, 30.743748, 48.613838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972816, 30.543615, 48.350227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607303, -0.291733, 0.738969,
		-0.561989, -0.815206, 0.140026,
		0.561561, -0.500331, -0.659028,
		41.141285, 30.393517, 48.152519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715549, 30.472710, 49.314560>,  <40.748192, 30.743748, 48.613838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715549, 30.472710, 49.314560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.573105, 30.662634, 49.636490>,  <40.487637, 30.776588, 49.829647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.573105, 30.662634, 49.636490>,  <40.715549, 30.472710, 49.314560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573105, 30.662634, 49.636490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237330, 0.787087, -0.569358,
		-0.903802, -0.393765, -0.167606,
		-0.356113, 0.474809, 0.804823,
		40.466270, 30.805077, 49.877937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940128, 30.769405, 49.173512>,  <40.715549, 30.472710, 49.314560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940128, 30.769405, 49.173512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.120342, 30.986139, 49.457325>,  <40.228470, 31.116179, 49.627613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.120342, 30.986139, 49.457325>,  <39.940128, 30.769405, 49.173512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120342, 30.986139, 49.457325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215225, 0.837242, -0.502697,
		-0.866427, 0.073774, 0.493824,
		0.450536, 0.541833, 0.709530,
		40.255505, 31.148689, 49.670185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450706, 31.239470, 49.345963>,  <39.940128, 30.769405, 49.173512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450706, 31.239470, 49.345963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.800102, 31.401827, 49.453487>,  <40.009739, 31.499241, 49.518002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.800102, 31.401827, 49.453487>,  <39.450706, 31.239470, 49.345963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800102, 31.401827, 49.453487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372148, 0.912687, -0.168842,
		-0.313872, 0.047446, 0.948279,
		0.873493, 0.405895, 0.268810,
		40.062149, 31.523596, 49.534130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098495, 31.800314, 49.542919>,  <39.450706, 31.239470, 49.345963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098495, 31.800314, 49.542919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.487457, 31.886477, 49.507088>,  <39.720837, 31.938173, 49.485588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.487457, 31.886477, 49.507088>,  <39.098495, 31.800314, 49.542919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487457, 31.886477, 49.507088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232008, 0.852762, -0.467942,
		-0.024410, 0.475813, 0.879208,
		0.972408, 0.215406, -0.089576,
		39.779179, 31.951097, 49.480213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109798, 32.531563, 49.616055>,  <39.098495, 31.800314, 49.542919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109798, 32.531563, 49.616055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.463993, 32.438011, 49.455444>,  <39.676510, 32.381882, 49.359077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.463993, 32.438011, 49.455444>,  <39.109798, 32.531563, 49.616055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463993, 32.438011, 49.455444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164421, 0.650501, -0.741494,
		0.434611, 0.722600, 0.537553,
		0.885482, -0.233876, -0.401526,
		39.729637, 32.367847, 49.334988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443169, 33.179504, 49.534374>,  <39.109798, 32.531563, 49.616055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443169, 33.179504, 49.534374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.615944, 32.936073, 49.268124>,  <39.719608, 32.790016, 49.108372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.615944, 32.936073, 49.268124>,  <39.443169, 33.179504, 49.534374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615944, 32.936073, 49.268124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104218, 0.699402, -0.707089,
		0.895859, 0.374792, 0.238677,
		0.431943, -0.608578, -0.665626,
		39.745525, 32.753498, 49.068436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849693, 33.608784, 49.094368>,  <39.443169, 33.179504, 49.534374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849693, 33.608784, 49.094368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.764713, 33.292599, 48.864571>,  <39.713726, 33.102890, 48.726692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.764713, 33.292599, 48.864571>,  <39.849693, 33.608784, 49.094368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764713, 33.292599, 48.864571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077833, 0.599734, -0.796405,
		0.974067, -0.124481, -0.188937,
		-0.212449, -0.790458, -0.574492,
		39.700977, 33.055462, 48.692223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277885, 33.885899, 48.546494>,  <39.849693, 33.608784, 49.094368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277885, 33.885899, 48.546494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.030159, 33.594357, 48.429722>,  <39.881523, 33.419434, 48.359661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.030159, 33.594357, 48.429722>,  <40.277885, 33.885899, 48.546494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030159, 33.594357, 48.429722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016363, 0.359752, -0.932904,
		0.784969, -0.582542, -0.210875,
		-0.619319, -0.728851, -0.291927,
		39.844364, 33.375702, 48.342144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439121, 33.637535, 47.883427>,  <40.277885, 33.885899, 48.546494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439121, 33.637535, 47.883427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.052586, 33.534622, 47.883705>,  <39.820663, 33.472874, 47.883873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.052586, 33.534622, 47.883705>,  <40.439121, 33.637535, 47.883427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052586, 33.534622, 47.883705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070617, 0.262626, -0.962310,
		0.247397, -0.929966, -0.271953,
		-0.966338, -0.257277, 0.000699,
		39.762684, 33.457436, 47.883915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373318, 33.260338, 47.307892>,  <40.439121, 33.637535, 47.883427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373318, 33.260338, 47.307892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.986084, 33.329910, 47.380062>,  <39.753742, 33.371655, 47.423363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.986084, 33.329910, 47.380062>,  <40.373318, 33.260338, 47.307892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986084, 33.329910, 47.380062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162074, 0.114583, -0.980103,
		-0.191146, -0.978068, -0.082736,
		-0.968088, 0.173934, 0.180422,
		39.695656, 33.382092, 47.434189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004311, 32.743996, 46.992809>,  <40.373318, 33.260338, 47.307892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004311, 32.743996, 46.992809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.760963, 33.058399, 47.036758>,  <39.614956, 33.247044, 47.063126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.760963, 33.058399, 47.036758>,  <40.004311, 32.743996, 46.992809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760963, 33.058399, 47.036758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180834, -0.002488, -0.983510,
		-0.772778, -0.618205, 0.143651,
		-0.608369, 0.786013, 0.109870,
		39.578453, 33.294205, 47.069721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432579, 32.646725, 46.573170>,  <40.004311, 32.743996, 46.992809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432579, 32.646725, 46.573170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.443993, 33.042488, 46.630112>,  <39.450840, 33.279945, 46.664276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.443993, 33.042488, 46.630112>,  <39.432579, 32.646725, 46.573170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443993, 33.042488, 46.630112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314839, 0.144064, -0.938148,
		-0.948716, -0.018047, 0.315615,
		0.028538, 0.989404, 0.142358,
		39.452553, 33.339310, 46.672817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930992, 32.778004, 46.228657>,  <39.432579, 32.646725, 46.573170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930992, 32.778004, 46.228657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.105282, 33.136116, 46.265789>,  <39.209854, 33.350983, 46.288071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.105282, 33.136116, 46.265789>,  <38.930992, 32.778004, 46.228657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105282, 33.136116, 46.265789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377404, 0.275358, -0.884163,
		-0.817137, 0.350213, 0.457863,
		0.435722, 0.895281, 0.092833,
		39.236000, 33.404701, 46.293640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394897, 33.256527, 46.068340>,  <38.930992, 32.778004, 46.228657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394897, 33.256527, 46.068340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.743526, 33.441040, 46.001915>,  <38.952705, 33.551746, 45.962059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.743526, 33.441040, 46.001915>,  <38.394897, 33.256527, 46.068340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743526, 33.441040, 46.001915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317116, 0.272112, -0.908511,
		-0.373893, 0.844496, 0.383446,
		0.871574, 0.461282, -0.166062,
		39.004997, 33.579426, 45.952095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642223, 33.282368, 46.289574>,  <38.394897, 33.256527, 46.068340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642223, 33.282368, 46.289574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.361282, 33.030624, 46.156540>,  <37.192719, 32.879578, 46.076721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.361282, 33.030624, 46.156540>,  <37.642223, 33.282368, 46.289574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361282, 33.030624, 46.156540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050355, -0.422120, 0.905140,
		-0.710045, 0.652475, 0.264786,
		-0.702353, -0.629357, -0.332580,
		37.150578, 32.841816, 46.056767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135506, 33.185360, 46.906998>,  <37.642223, 33.282368, 46.289574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135506, 33.185360, 46.906998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.116322, 32.875687, 46.654541>,  <37.104809, 32.689884, 46.503067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.116322, 32.875687, 46.654541>,  <37.135506, 33.185360, 46.906998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116322, 32.875687, 46.654541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042431, -0.632879, 0.773088,
		-0.997948, 0.010301, 0.063205,
		-0.047964, -0.774183, -0.631142,
		37.101933, 32.643433, 46.465199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709839, 32.745480, 47.241859>,  <37.135506, 33.185360, 46.906998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709839, 32.745480, 47.241859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.901352, 32.494099, 46.996643>,  <37.016258, 32.343269, 46.849514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.901352, 32.494099, 46.996643>,  <36.709839, 32.745480, 47.241859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901352, 32.494099, 46.996643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078463, -0.726115, 0.683081,
		-0.874423, -0.278943, -0.396958,
		0.478778, -0.628448, -0.613045,
		37.044987, 32.305565, 46.812729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533176, 32.041679, 47.425777>,  <36.709839, 32.745480, 47.241859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533176, 32.041679, 47.425777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.870255, 31.969229, 47.222969>,  <37.072502, 31.925758, 47.101284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.870255, 31.969229, 47.222969>,  <36.533176, 32.041679, 47.425777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870255, 31.969229, 47.222969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182887, -0.789421, 0.585975,
		-0.506383, -0.586523, -0.632113,
		0.842691, -0.181122, -0.507017,
		37.123062, 31.914892, 47.070862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521130, 31.293125, 47.271271>,  <36.533176, 32.041679, 47.425777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521130, 31.293125, 47.271271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.907310, 31.385633, 47.223232>,  <37.139019, 31.441137, 47.194408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.907310, 31.385633, 47.223232>,  <36.521130, 31.293125, 47.271271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907310, 31.385633, 47.223232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258561, -0.792727, 0.552024,
		0.032464, -0.564002, -0.825135,
		0.965449, 0.231269, -0.120094,
		37.196945, 31.455013, 47.187202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830791, 30.726227, 47.245861>,  <36.521130, 31.293125, 47.271271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830791, 30.726227, 47.245861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152905, 30.954603, 47.309799>,  <37.346172, 31.091629, 47.348160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152905, 30.954603, 47.309799>,  <36.830791, 30.726227, 47.245861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152905, 30.954603, 47.309799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418821, -0.738613, 0.528242,
		0.419656, -0.358438, -0.833913,
		0.805280, 0.570941, 0.159842,
		37.394489, 31.125885, 47.357750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344341, 30.298206, 47.156342>,  <36.830791, 30.726227, 47.245861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344341, 30.298206, 47.156342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.463055, 30.595974, 47.395592>,  <37.534283, 30.774635, 47.539143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.463055, 30.595974, 47.395592>,  <37.344341, 30.298206, 47.156342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463055, 30.595974, 47.395592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430553, -0.663384, 0.612002,
		0.852374, 0.075890, -0.517397,
		0.296788, 0.744421, 0.598126,
		37.552090, 30.819300, 47.575031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279148, 29.685705, 46.752476>,  <37.344341, 30.298206, 47.156342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279148, 29.685705, 46.752476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.938530, 29.508102, 46.863991>,  <36.734158, 29.401541, 46.930901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.938530, 29.508102, 46.863991>,  <37.279148, 29.685705, 46.752476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938530, 29.508102, 46.863991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432950, 0.295665, -0.851550,
		0.295665, -0.845838, -0.444005,
		0.851550, 0.444005, -0.278788,
		36.683064, 29.374901, 46.947628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980011, 29.354954, 46.182762>,  <37.279148, 29.685705, 46.752476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980011, 29.354954, 46.182762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.665390, 29.409388, 46.423698>,  <36.476616, 29.442047, 46.568260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.665390, 29.409388, 46.423698>,  <36.980011, 29.354954, 46.182762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665390, 29.409388, 46.423698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507136, 0.414209, -0.755807,
		-0.352349, -0.899951, -0.256784,
		-0.786551, 0.136084, 0.602344,
		36.429424, 29.450212, 46.604401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452255, 29.103245, 45.800102>,  <36.980011, 29.354954, 46.182762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452255, 29.103245, 45.800102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.285210, 29.325079, 46.088001>,  <36.184982, 29.458179, 46.260738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.285210, 29.325079, 46.088001>,  <36.452255, 29.103245, 45.800102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285210, 29.325079, 46.088001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645067, 0.376903, -0.664705,
		-0.639910, -0.741875, 0.200343,
		-0.417618, 0.554586, 0.719743,
		36.159924, 29.491455, 46.303925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723125, 28.870590, 45.869629>,  <36.452255, 29.103245, 45.800102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723125, 28.870590, 45.869629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.764236, 29.245148, 46.003853>,  <35.788902, 29.469883, 46.084385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.764236, 29.245148, 46.003853>,  <35.723125, 28.870590, 45.869629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764236, 29.245148, 46.003853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609219, 0.325930, -0.722926,
		-0.786313, -0.130125, 0.603969,
		0.102781, 0.936396, 0.335558,
		35.795071, 29.526066, 46.104519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112934, 29.138964, 45.651062>,  <35.723125, 28.870590, 45.869629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112934, 29.138964, 45.651062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.328526, 29.455164, 45.767410>,  <35.457882, 29.644884, 45.837219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.328526, 29.455164, 45.767410>,  <35.112934, 29.138964, 45.651062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328526, 29.455164, 45.767410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521957, 0.584473, -0.621250,
		-0.661105, 0.183021, 0.727629,
		0.538982, 0.790502, 0.290869,
		35.490219, 29.692314, 45.854671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715893, 29.743425, 45.921711>,  <35.112934, 29.138964, 45.651062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715893, 29.743425, 45.921711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063408, 29.879248, 45.777534>,  <35.271915, 29.960741, 45.691029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063408, 29.879248, 45.777534>,  <34.715893, 29.743425, 45.921711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063408, 29.879248, 45.777534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491653, 0.504619, -0.709674,
		-0.059088, 0.793765, 0.605348,
		0.868784, 0.339555, -0.360440,
		35.324043, 29.981113, 45.669403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716927, 30.466507, 45.890774>,  <34.715893, 29.743425, 45.921711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716927, 30.466507, 45.890774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.981564, 30.367170, 45.607754>,  <35.140347, 30.307568, 45.437943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.981564, 30.367170, 45.607754>,  <34.716927, 30.466507, 45.890774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981564, 30.367170, 45.607754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532429, 0.508854, -0.676452,
		0.528029, 0.824254, 0.204429,
		0.661592, -0.248343, -0.707546,
		35.180042, 30.292667, 45.395489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.569584, 27.488178, 47.469547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.662174, 27.866838, 47.379860>,  <39.717728, 28.094034, 47.326046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.662174, 27.866838, 47.379860>,  <39.569584, 27.488178, 47.469547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662174, 27.866838, 47.379860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803825, 0.056288, -0.592197,
		-0.547982, 0.317312, 0.773969,
		0.231477, 0.946649, -0.224218,
		39.731617, 28.150833, 47.312595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961170, 27.759354, 47.521095>,  <39.569584, 27.488178, 47.469547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961170, 27.759354, 47.521095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.177345, 28.016483, 47.303947>,  <39.307049, 28.170761, 47.173660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.177345, 28.016483, 47.303947>,  <38.961170, 27.759354, 47.521095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177345, 28.016483, 47.303947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712397, 0.006296, -0.701748,
		-0.447682, 0.765989, 0.461348,
		0.540436, 0.642823, -0.542870,
		39.339478, 28.209330, 47.141087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502445, 28.151722, 47.243790>,  <38.961170, 27.759354, 47.521095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502445, 28.151722, 47.243790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.819126, 28.228130, 47.011681>,  <39.009136, 28.273975, 46.872414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.819126, 28.228130, 47.011681>,  <38.502445, 28.151722, 47.243790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819126, 28.228130, 47.011681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582837, -0.048440, -0.811144,
		-0.183053, 0.980390, 0.072984,
		0.791702, 0.191020, -0.580275,
		39.056637, 28.285437, 46.837597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356449, 28.675863, 46.755699>,  <38.502445, 28.151722, 47.243790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356449, 28.675863, 46.755699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.649628, 28.442434, 46.615849>,  <38.825535, 28.302378, 46.531937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.649628, 28.442434, 46.615849>,  <38.356449, 28.675863, 46.755699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649628, 28.442434, 46.615849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503084, -0.119007, -0.856004,
		0.457930, 0.803295, -0.380810,
		0.732943, -0.583570, -0.349629,
		38.869511, 28.267363, 46.510960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472385, 28.898758, 45.959652>,  <38.356449, 28.675863, 46.755699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472385, 28.898758, 45.959652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.628876, 28.531513, 45.984997>,  <38.722771, 28.311167, 46.000202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.628876, 28.531513, 45.984997>,  <38.472385, 28.898758, 45.959652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628876, 28.531513, 45.984997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348129, -0.211373, -0.913306,
		0.851908, 0.335254, -0.402316,
		0.391228, -0.918110, 0.063359,
		38.746243, 28.256081, 46.004005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984413, 28.840565, 45.484112>,  <38.472385, 28.898758, 45.959652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984413, 28.840565, 45.484112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.863110, 28.463812, 45.541931>,  <38.790329, 28.237761, 45.576622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.863110, 28.463812, 45.541931>,  <38.984413, 28.840565, 45.484112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863110, 28.463812, 45.541931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286336, -0.054615, -0.956571,
		0.908870, -0.331481, -0.253132,
		-0.303260, -0.941880, 0.144553,
		38.772133, 28.181248, 45.585297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229073, 28.535458, 44.939251>,  <38.984413, 28.840565, 45.484112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229073, 28.535458, 44.939251> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.964611, 28.257887, 45.053329>,  <38.805935, 28.091345, 45.121777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.964611, 28.257887, 45.053329>,  <39.229073, 28.535458, 44.939251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964611, 28.257887, 45.053329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240393, -0.164157, -0.956694,
		0.710694, -0.701083, -0.058282,
		-0.661155, -0.693927, 0.285200,
		38.766266, 28.049709, 45.138889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296108, 27.971100, 44.406307>,  <39.229073, 28.535458, 44.939251>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296108, 27.971100, 44.406307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.949802, 27.878948, 44.584019>,  <38.742020, 27.823658, 44.690647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.949802, 27.878948, 44.584019>,  <39.296108, 27.971100, 44.406307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949802, 27.878948, 44.584019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427404, -0.121476, -0.895862,
		0.260356, -0.965490, 0.006705,
		-0.865760, -0.230377, 0.444281,
		38.690075, 27.809835, 44.717304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976570, 27.426802, 44.009373>,  <39.296108, 27.971100, 44.406307>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976570, 27.426802, 44.009373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.653316, 27.547087, 44.211956>,  <38.459366, 27.619259, 44.333504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.653316, 27.547087, 44.211956>,  <38.976570, 27.426802, 44.009373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653316, 27.547087, 44.211956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553534, -0.093856, -0.827521,
		-0.201314, -0.949084, 0.242304,
		-0.808129, 0.300715, 0.506456,
		38.410877, 27.637300, 44.363892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519032, 26.962894, 43.809185>,  <38.976570, 27.426802, 44.009373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519032, 26.962894, 43.809185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.291714, 27.259466, 43.951916>,  <38.155323, 27.437408, 44.037552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.291714, 27.259466, 43.951916>,  <38.519032, 26.962894, 43.809185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291714, 27.259466, 43.951916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650361, -0.139094, -0.746782,
		-0.504054, -0.656458, 0.561243,
		-0.568296, 0.741429, 0.356824,
		38.121223, 27.481895, 44.058964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804417, 26.611814, 43.694706>,  <38.519032, 26.962894, 43.809185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804417, 26.611814, 43.694706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.733612, 27.001602, 43.749954>,  <37.691128, 27.235474, 43.783104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.733612, 27.001602, 43.749954>,  <37.804417, 26.611814, 43.694706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733612, 27.001602, 43.749954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662386, -0.014155, -0.749029,
		-0.727950, -0.224078, 0.647980,
		-0.177013, 0.974468, 0.138122,
		37.680508, 27.293943, 43.791389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051872, 26.662666, 43.762497>,  <37.804417, 26.611814, 43.694706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051872, 26.662666, 43.762497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.206367, 27.009533, 43.636738>,  <37.299065, 27.217653, 43.561283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.206367, 27.009533, 43.636738>,  <37.051872, 26.662666, 43.762497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206367, 27.009533, 43.636738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721882, 0.071988, -0.688262,
		-0.574204, 0.492790, 0.653795,
		0.386233, 0.867165, -0.314400,
		37.322239, 27.269682, 43.542419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479759, 27.194336, 43.740562>,  <37.051872, 26.662666, 43.762497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479759, 27.194336, 43.740562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.118858, 27.168072, 43.911037>,  <35.902317, 27.152313, 44.013321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.118858, 27.168072, 43.911037>,  <36.479759, 27.194336, 43.740562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118858, 27.168072, 43.911037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415687, -0.395278, 0.819121,
		0.114680, 0.916212, 0.383932,
		-0.902249, -0.065659, 0.426188,
		35.848183, 27.148375, 44.038895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602413, 27.223185, 44.454678>,  <36.479759, 27.194336, 43.740562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602413, 27.223185, 44.454678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.232189, 27.071753, 44.456604>,  <36.010056, 26.980894, 44.457760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.232189, 27.071753, 44.456604>,  <36.602413, 27.223185, 44.454678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232189, 27.071753, 44.456604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149913, -0.354777, 0.922854,
		-0.347667, 0.854875, 0.385120,
		-0.925556, -0.378580, 0.004813,
		35.954521, 26.958179, 44.458046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308456, 27.456028, 45.115734>,  <36.602413, 27.223185, 44.454678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308456, 27.456028, 45.115734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.116646, 27.126982, 44.993511>,  <36.001560, 26.929554, 44.920177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.116646, 27.126982, 44.993511>,  <36.308456, 27.456028, 45.115734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116646, 27.126982, 44.993511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212251, -0.446583, 0.869203,
		-0.851474, 0.351948, 0.388748,
		-0.479522, -0.822615, -0.305553,
		35.972790, 26.880198, 44.901844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883492, 27.217947, 45.675209>,  <36.308456, 27.456028, 45.115734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883492, 27.217947, 45.675209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.901718, 26.893269, 45.442287>,  <35.912655, 26.698462, 45.302536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.901718, 26.893269, 45.442287>,  <35.883492, 27.217947, 45.675209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901718, 26.893269, 45.442287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353685, -0.532043, 0.769310,
		-0.934254, -0.241004, 0.262842,
		0.045564, -0.811694, -0.582303,
		35.915386, 26.649761, 45.267597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761497, 26.714508, 46.110523>,  <35.883492, 27.217947, 45.675209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761497, 26.714508, 46.110523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.920609, 26.517345, 45.800991>,  <36.016075, 26.399048, 45.615273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.920609, 26.517345, 45.800991>,  <35.761497, 26.714508, 46.110523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920609, 26.517345, 45.800991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377323, -0.680915, 0.627681,
		-0.836301, -0.541662, -0.084869,
		0.397779, -0.492907, -0.773831,
		36.039944, 26.369473, 45.568840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856358, 26.125099, 46.423782>,  <35.761497, 26.714508, 46.110523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856358, 26.125099, 46.423782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.076382, 26.071827, 46.094006>,  <36.208397, 26.039864, 45.896141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.076382, 26.071827, 46.094006>,  <35.856358, 26.125099, 46.423782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076382, 26.071827, 46.094006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484956, -0.752762, 0.445160,
		-0.679893, -0.644680, -0.349475,
		0.550057, -0.133181, -0.824439,
		36.241398, 26.031872, 45.846672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868057, 25.356316, 46.380569>,  <35.856358, 26.125099, 46.423782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868057, 25.356316, 46.380569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.167362, 25.508812, 46.163403>,  <36.346947, 25.600309, 46.033104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.167362, 25.508812, 46.163403>,  <35.868057, 25.356316, 46.380569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167362, 25.508812, 46.163403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659822, -0.512572, 0.549459,
		-0.068805, -0.769367, -0.635091,
		0.748265, 0.381242, -0.542913,
		36.391842, 25.623184, 46.000530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343758, 24.813425, 46.197838>,  <35.868057, 25.356316, 46.380569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343758, 24.813425, 46.197838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.555214, 25.152382, 46.177959>,  <36.682087, 25.355755, 46.166031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.555214, 25.152382, 46.177959>,  <36.343758, 24.813425, 46.197838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555214, 25.152382, 46.177959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686025, -0.392022, 0.612934,
		0.499911, -0.358116, -0.788569,
		0.528638, 0.847391, -0.049700,
		36.713806, 25.406599, 46.163048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055603, 24.608829, 46.167553>,  <36.343758, 24.813425, 46.197838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055603, 24.608829, 46.167553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.052052, 24.988796, 46.292503>,  <37.049923, 25.216776, 46.367474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.052052, 24.988796, 46.292503>,  <37.055603, 24.608829, 46.167553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052052, 24.988796, 46.292503> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643393, -0.233711, 0.728989,
		0.765485, 0.207450, -0.609096,
		-0.008876, 0.949918, 0.312374,
		37.049389, 25.273771, 46.386215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651340, 24.658789, 46.444027>,  <37.055603, 24.608829, 46.167553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651340, 24.658789, 46.444027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.449093, 24.959461, 46.613415>,  <37.327744, 25.139864, 46.715046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.449093, 24.959461, 46.613415>,  <37.651340, 24.658789, 46.444027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449093, 24.959461, 46.613415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567235, -0.080207, 0.819641,
		0.650073, 0.654633, -0.385825,
		-0.505618, 0.751680, 0.423470,
		37.297409, 25.184965, 46.740456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220531, 25.094732, 46.688927>,  <37.651340, 24.658789, 46.444027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220531, 25.094732, 46.688927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.890408, 25.165449, 46.903442>,  <37.692333, 25.207880, 47.032154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.890408, 25.165449, 46.903442>,  <38.220531, 25.094732, 46.688927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890408, 25.165449, 46.903442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526052, -0.104524, 0.844005,
		0.205269, 0.978682, -0.006737,
		-0.825309, 0.176792, 0.536293,
		37.642815, 25.218487, 47.064331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466652, 25.547117, 47.215820>,  <38.220531, 25.094732, 46.688927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466652, 25.547117, 47.215820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.117615, 25.401905, 47.346531>,  <37.908192, 25.314777, 47.424957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.117615, 25.401905, 47.346531>,  <38.466652, 25.547117, 47.215820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117615, 25.401905, 47.346531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420892, -0.219382, 0.880183,
		-0.247845, 0.905582, 0.344229,
		-0.872595, -0.363032, 0.326780,
		37.855835, 25.292995, 47.444565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217014, 25.944899, 47.742607>,  <38.466652, 25.547117, 47.215820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217014, 25.944899, 47.742607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.072536, 25.574076, 47.782810>,  <37.985851, 25.351582, 47.806931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.072536, 25.574076, 47.782810>,  <38.217014, 25.944899, 47.742607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072536, 25.574076, 47.782810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409761, -0.060975, 0.910153,
		-0.837637, 0.369923, 0.401896,
		-0.361192, -0.927059, 0.100506,
		37.964180, 25.295958, 47.812962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115528, 26.765062, 47.867878>,  <38.217014, 25.944899, 47.742607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115528, 26.765062, 47.867878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.034996, 26.869240, 48.245583>,  <37.986679, 26.931746, 48.472206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.034996, 26.869240, 48.245583>,  <38.115528, 26.765062, 47.867878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034996, 26.869240, 48.245583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689283, 0.647262, -0.325486,
		-0.695957, -0.716395, 0.049207,
		-0.201327, 0.260442, 0.944266,
		37.974598, 26.947372, 48.528862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374836, 26.834423, 47.938087>,  <38.115528, 26.765062, 47.867878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374836, 26.834423, 47.938087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.532925, 27.062098, 48.226482>,  <37.627777, 27.198702, 48.399521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.532925, 27.062098, 48.226482>,  <37.374836, 26.834423, 47.938087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532925, 27.062098, 48.226482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620353, 0.744251, -0.247494,
		-0.677469, -0.349454, 0.647238,
		0.395220, 0.569186, 0.720992,
		37.651489, 27.232853, 48.442780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881695, 27.037241, 48.452560>,  <37.374836, 26.834423, 47.938087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881695, 27.037241, 48.452560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.164948, 27.315275, 48.402916>,  <37.334900, 27.482096, 48.373127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.164948, 27.315275, 48.402916>,  <36.881695, 27.037241, 48.452560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164948, 27.315275, 48.402916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693309, 0.651225, -0.308590,
		-0.133670, 0.304572, 0.943063,
		0.708135, 0.695084, -0.124114,
		37.377388, 27.523800, 48.365681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533665, 27.615751, 48.674568>,  <36.881695, 27.037241, 48.452560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533665, 27.615751, 48.674568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.840763, 27.743471, 48.452358>,  <37.025024, 27.820103, 48.319031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.840763, 27.743471, 48.452358>,  <36.533665, 27.615751, 48.674568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840763, 27.743471, 48.452358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598213, 0.667815, -0.442904,
		0.229570, 0.672362, 0.703724,
		0.767749, 0.319299, -0.555526,
		37.071087, 27.839260, 48.285702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429924, 28.350893, 48.688305>,  <36.533665, 27.615751, 48.674568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429924, 28.350893, 48.688305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.683437, 28.294252, 48.384129>,  <36.835545, 28.260267, 48.201622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.683437, 28.294252, 48.384129>,  <36.429924, 28.350893, 48.688305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683437, 28.294252, 48.384129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452622, 0.729328, -0.513044,
		0.627259, 0.669350, 0.398142,
		0.633782, -0.141604, -0.760440,
		36.873573, 28.251772, 48.155998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632507, 29.026863, 48.502464>,  <36.429924, 28.350893, 48.688305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632507, 29.026863, 48.502464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.748241, 28.791313, 48.200600>,  <36.817684, 28.649982, 48.019482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.748241, 28.791313, 48.200600>,  <36.632507, 29.026863, 48.502464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748241, 28.791313, 48.200600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417707, 0.631684, -0.653067,
		0.861280, 0.504184, -0.063206,
		0.289339, -0.588876, -0.754658,
		36.835045, 28.614651, 47.974201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042107, 29.426228, 48.141079>,  <36.632507, 29.026863, 48.502464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042107, 29.426228, 48.141079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.942657, 29.137026, 47.883259>,  <36.882988, 28.963505, 47.728565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.942657, 29.137026, 47.883259>,  <37.042107, 29.426228, 48.141079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942657, 29.137026, 47.883259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410282, 0.681411, -0.606092,
		0.877414, 0.113762, -0.466050,
		-0.248621, -0.723006, -0.644554,
		36.868073, 28.920124, 47.689892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390549, 29.528877, 47.524803>,  <37.042107, 29.426228, 48.141079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390549, 29.528877, 47.524803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.061596, 29.316080, 47.444138>,  <36.864223, 29.188402, 47.395741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.061596, 29.316080, 47.444138>,  <37.390549, 29.528877, 47.524803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061596, 29.316080, 47.444138> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279933, 0.686951, -0.670623,
		0.495298, -0.495059, -0.713860,
		-0.822386, -0.531992, -0.201662,
		36.814880, 29.156483, 47.383640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974735, 30.073839, 47.383789>,  <37.390549, 29.528877, 47.524803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974735, 30.073839, 47.383789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.886101, 30.369314, 47.638424>,  <37.832920, 30.546598, 47.791206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.886101, 30.369314, 47.638424>,  <37.974735, 30.073839, 47.383789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886101, 30.369314, 47.638424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394651, -0.529031, 0.751250,
		0.891713, 0.417693, -0.174300,
		-0.221582, 0.738687, 0.636587,
		37.819626, 30.590919, 47.829399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542683, 30.284891, 47.753212>,  <37.974735, 30.073839, 47.383789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542683, 30.284891, 47.753212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.235752, 30.394325, 47.985203>,  <38.051594, 30.459986, 48.124397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.235752, 30.394325, 47.985203>,  <38.542683, 30.284891, 47.753212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235752, 30.394325, 47.985203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402977, -0.497814, 0.767978,
		0.498825, 0.823003, 0.271736,
		-0.767322, 0.273583, 0.579973,
		38.005554, 30.476400, 48.159195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835960, 30.554394, 48.339695>,  <38.542683, 30.284891, 47.753212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835960, 30.554394, 48.339695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.464546, 30.471760, 48.463081>,  <38.241699, 30.422178, 48.537113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.464546, 30.471760, 48.463081>,  <38.835960, 30.554394, 48.339695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464546, 30.471760, 48.463081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367512, -0.393820, 0.842521,
		-0.052573, 0.895672, 0.441597,
		-0.928532, -0.206586, 0.308466,
		38.185986, 30.409784, 48.555622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859547, 30.730921, 49.035580>,  <38.835960, 30.554394, 48.339695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859547, 30.730921, 49.035580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.538456, 30.492544, 49.026794>,  <38.345802, 30.349518, 49.021523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.538456, 30.492544, 49.026794>,  <38.859547, 30.730921, 49.035580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538456, 30.492544, 49.026794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183011, -0.281236, 0.942026,
		-0.567568, 0.752172, 0.334820,
		-0.802729, -0.595939, -0.021965,
		38.297638, 30.313763, 49.020206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646332, 30.757162, 49.694893>,  <38.859547, 30.730921, 49.035580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646332, 30.757162, 49.694893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.448154, 30.441061, 49.550652>,  <38.329250, 30.251400, 49.464108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.448154, 30.441061, 49.550652>,  <38.646332, 30.757162, 49.694893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448154, 30.441061, 49.550652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051833, -0.441294, 0.895864,
		-0.867094, 0.425157, 0.259596,
		-0.495441, -0.790254, -0.360606,
		38.299522, 30.203985, 49.442471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221390, 30.549341, 50.262558>,  <38.646332, 30.757162, 49.694893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221390, 30.549341, 50.262558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.254093, 30.245188, 50.004833>,  <38.273716, 30.062696, 49.850201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.254093, 30.245188, 50.004833>,  <38.221390, 30.549341, 50.262558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254093, 30.245188, 50.004833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123500, -0.633761, 0.763607,
		-0.988970, -0.142007, 0.042089,
		0.081763, -0.760382, -0.644308,
		38.278622, 30.017073, 49.811543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732506, 30.006758, 50.502449>,  <38.221390, 30.549341, 50.262558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732506, 30.006758, 50.502449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.023750, 29.857935, 50.272171>,  <38.198498, 29.768641, 50.134003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.023750, 29.857935, 50.272171>,  <37.732506, 30.006758, 50.502449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023750, 29.857935, 50.272171> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260218, -0.626968, 0.734301,
		-0.634172, -0.684446, -0.359666,
		0.728088, -0.372081, -0.575711,
		38.242184, 29.746317, 50.099461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643784, 29.383268, 50.641239>,  <37.732506, 30.006758, 50.502449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643784, 29.383268, 50.641239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.009628, 29.410557, 50.481823>,  <38.229134, 29.426929, 50.386173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.009628, 29.410557, 50.481823>,  <37.643784, 29.383268, 50.641239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009628, 29.410557, 50.481823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379131, -0.487273, 0.786654,
		-0.140530, -0.870581, -0.471530,
		0.914610, 0.068223, -0.398540,
		38.284012, 29.431025, 50.362263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902035, 28.709682, 50.558453>,  <37.643784, 29.383268, 50.641239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902035, 28.709682, 50.558453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.210819, 28.959156, 50.607594>,  <38.396091, 29.108839, 50.637077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.210819, 28.959156, 50.607594>,  <37.902035, 28.709682, 50.558453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210819, 28.959156, 50.607594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222192, -0.445824, 0.867105,
		0.595570, -0.642076, -0.482737,
		0.771963, 0.623683, 0.122855,
		38.442410, 29.146261, 50.644451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.191135, 35.187508, 35.818321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546135, 35.307083, 35.958595>,  <35.759132, 35.378830, 36.042763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546135, 35.307083, 35.958595>,  <35.191135, 35.187508, 35.818321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546135, 35.307083, 35.958595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273518, -0.270733, 0.922980,
		0.370860, -0.915062, -0.158509,
		0.887497, 0.298941, 0.350690,
		35.812386, 35.396767, 36.063801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432648, 34.634243, 36.293919>,  <35.191135, 35.187508, 35.818321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432648, 34.634243, 36.293919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636135, 34.964279, 36.392242>,  <35.758228, 35.162300, 36.451237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636135, 34.964279, 36.392242>,  <35.432648, 34.634243, 36.293919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636135, 34.964279, 36.392242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305828, -0.093706, 0.947464,
		0.804781, -0.557170, 0.204667,
		0.508720, 0.825095, 0.245811,
		35.788750, 35.211807, 36.465984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838413, 34.457607, 36.860340>,  <35.432648, 34.634243, 36.293919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838413, 34.457607, 36.860340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831615, 34.855782, 36.897923>,  <35.827538, 35.094685, 36.920471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831615, 34.855782, 36.897923>,  <35.838413, 34.457607, 36.860340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831615, 34.855782, 36.897923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032688, -0.094474, 0.994990,
		0.999321, 0.013837, 0.034145,
		-0.016994, 0.995431, 0.093958,
		35.826519, 35.154411, 36.926109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361691, 34.617756, 37.215721>,  <35.838413, 34.457607, 36.860340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361691, 34.617756, 37.215721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112309, 34.927338, 37.260094>,  <35.962681, 35.113087, 37.286716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112309, 34.927338, 37.260094>,  <36.361691, 34.617756, 37.215721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112309, 34.927338, 37.260094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085753, -0.208716, 0.974209,
		0.777144, 0.597860, 0.196493,
		-0.623452, 0.773951, 0.110934,
		35.925274, 35.159523, 37.293373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680206, 34.942410, 37.797382>,  <36.361691, 34.617756, 37.215721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680206, 34.942410, 37.797382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317005, 35.109013, 37.779251>,  <36.099083, 35.208973, 37.768372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317005, 35.109013, 37.779251>,  <36.680206, 34.942410, 37.797382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317005, 35.109013, 37.779251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017565, 0.145939, 0.989138,
		0.418596, 0.897343, -0.139829,
		-0.908003, 0.416505, -0.045328,
		36.044605, 35.233963, 37.765652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739834, 35.524918, 38.325012>,  <36.680206, 34.942410, 37.797382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739834, 35.524918, 38.325012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358059, 35.440430, 38.240688>,  <36.128994, 35.389736, 38.190094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358059, 35.440430, 38.240688>,  <36.739834, 35.524918, 38.325012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358059, 35.440430, 38.240688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249345, 0.176358, 0.952221,
		-0.163949, 0.961398, -0.220988,
		-0.954436, -0.211218, -0.210806,
		36.071728, 35.377064, 38.177448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413170, 36.041950, 38.744045>,  <36.739834, 35.524918, 38.325012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413170, 36.041950, 38.744045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140694, 35.760525, 38.663071>,  <35.977207, 35.591671, 38.614487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140694, 35.760525, 38.663071>,  <36.413170, 36.041950, 38.744045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140694, 35.760525, 38.663071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284528, -0.000363, 0.958667,
		-0.674556, 0.710634, -0.199936,
		-0.681189, -0.703562, -0.202441,
		35.936337, 35.549458, 38.602337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642780, 36.256790, 38.933937>,  <36.413170, 36.041950, 38.744045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642780, 36.256790, 38.933937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687675, 35.859341, 38.938251>,  <35.714611, 35.620872, 38.940838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687675, 35.859341, 38.938251>,  <35.642780, 36.256790, 38.933937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687675, 35.859341, 38.938251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224563, -0.014792, 0.974347,
		-0.967975, -0.111776, -0.224791,
		0.112234, -0.993623, 0.010782,
		35.721344, 35.561253, 38.941486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220417, 36.048580, 39.389252>,  <35.642780, 36.256790, 38.933937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220417, 36.048580, 39.389252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417194, 35.701862, 39.356617>,  <35.535259, 35.493832, 39.337036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417194, 35.701862, 39.356617>,  <35.220417, 36.048580, 39.389252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417194, 35.701862, 39.356617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180698, -0.193327, 0.964351,
		-0.851670, -0.459661, -0.251733,
		0.491941, -0.866797, -0.081591,
		35.564777, 35.441822, 39.332138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835365, 35.625381, 39.732704>,  <35.220417, 36.048580, 39.389252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835365, 35.625381, 39.732704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172699, 35.410648, 39.722969>,  <35.375099, 35.281811, 39.717129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172699, 35.410648, 39.722969>,  <34.835365, 35.625381, 39.732704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172699, 35.410648, 39.722969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163897, -0.300079, 0.939729,
		-0.511780, -0.788520, -0.341053,
		0.843338, -0.536832, -0.024338,
		35.425701, 35.249599, 39.715668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706406, 34.910408, 39.927586>,  <34.835365, 35.625381, 39.732704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706406, 34.910408, 39.927586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095196, 34.966667, 40.002941>,  <35.328468, 35.000423, 40.048153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095196, 34.966667, 40.002941>,  <34.706406, 34.910408, 39.927586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095196, 34.966667, 40.002941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105204, -0.456394, 0.883537,
		0.210248, -0.878591, -0.428805,
		0.971971, 0.140650, 0.188387,
		35.386787, 35.008862, 40.059456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030228, 34.275864, 40.150700>,  <34.706406, 34.910408, 39.927586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030228, 34.275864, 40.150700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269314, 34.562668, 40.294163>,  <35.412766, 34.734753, 40.380241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269314, 34.562668, 40.294163>,  <35.030228, 34.275864, 40.150700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269314, 34.562668, 40.294163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000400, -0.447630, 0.894219,
		0.801711, -0.534341, -0.267840,
		0.597711, 0.717013, 0.358657,
		35.448627, 34.777771, 40.401760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889244, 33.544731, 40.056942>,  <35.030228, 34.275864, 40.150700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889244, 33.544731, 40.056942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509434, 33.464809, 40.153664>,  <34.281548, 33.416855, 40.211697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509434, 33.464809, 40.153664>,  <34.889244, 33.544731, 40.056942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509434, 33.464809, 40.153664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267509, 0.113257, -0.956876,
		0.163804, -0.973268, -0.160991,
		-0.949530, -0.199807, 0.241806,
		34.224575, 33.404869, 40.226204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723473, 32.949146, 39.741371>,  <34.889244, 33.544731, 40.056942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723473, 32.949146, 39.741371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414505, 33.197788, 39.793484>,  <34.229122, 33.346973, 39.824753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414505, 33.197788, 39.793484>,  <34.723473, 32.949146, 39.741371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414505, 33.197788, 39.793484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169092, -0.003541, -0.985594,
		-0.612185, -0.783326, 0.107843,
		-0.772424, 0.621601, 0.130286,
		34.182777, 33.384270, 39.832569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230511, 32.761288, 39.255581>,  <34.723473, 32.949146, 39.741371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230511, 32.761288, 39.255581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074539, 33.123844, 39.320595>,  <33.980957, 33.341377, 39.359604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074539, 33.123844, 39.320595>,  <34.230511, 32.761288, 39.255581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074539, 33.123844, 39.320595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334082, 0.025237, -0.942206,
		-0.858106, -0.421693, 0.292967,
		-0.389928, 0.906388, 0.162536,
		33.957561, 33.395760, 39.369354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453728, 32.740128, 39.035110>,  <34.230511, 32.761288, 39.255581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453728, 32.740128, 39.035110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549309, 33.128498, 39.040768>,  <33.606655, 33.361523, 39.044163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549309, 33.128498, 39.040768>,  <33.453728, 32.740128, 39.035110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549309, 33.128498, 39.040768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442529, 0.121851, -0.888437,
		-0.864332, 0.206034, 0.458781,
		0.238951, 0.970929, 0.014144,
		33.620995, 33.419777, 39.045010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872459, 33.085331, 38.801556>,  <33.453728, 32.740128, 39.035110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872459, 33.085331, 38.801556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174110, 33.341122, 38.741749>,  <33.355103, 33.494595, 38.705864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174110, 33.341122, 38.741749>,  <32.872459, 33.085331, 38.801556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174110, 33.341122, 38.741749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438130, 0.320306, -0.839909,
		-0.489213, 0.698908, 0.521727,
		0.754131, 0.639478, -0.149514,
		33.400349, 33.532967, 38.696896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559738, 33.708775, 38.824913>,  <32.872459, 33.085331, 38.801556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559738, 33.708775, 38.824913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899002, 33.778145, 38.624691>,  <33.102558, 33.819767, 38.504559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899002, 33.778145, 38.624691>,  <32.559738, 33.708775, 38.824913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899002, 33.778145, 38.624691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525699, 0.392111, -0.754911,
		0.065354, 0.903424, 0.423740,
		0.848157, 0.173423, -0.500555,
		33.153450, 33.830173, 38.474525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491947, 34.364510, 38.679893>,  <32.559738, 33.708775, 38.824913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491947, 34.364510, 38.679893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778748, 34.241985, 38.429428>,  <32.950829, 34.168468, 38.279148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778748, 34.241985, 38.429428>,  <32.491947, 34.364510, 38.679893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778748, 34.241985, 38.429428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430416, 0.512037, -0.743344,
		0.548314, 0.802490, 0.235290,
		0.717003, -0.306314, -0.626162,
		32.993847, 34.150093, 38.241581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750473, 34.962898, 38.296112>,  <32.491947, 34.364510, 38.679893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750473, 34.962898, 38.296112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829460, 34.641010, 38.072174>,  <32.876850, 34.447876, 37.937809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829460, 34.641010, 38.072174>,  <32.750473, 34.962898, 38.296112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829460, 34.641010, 38.072174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590015, 0.358512, -0.723430,
		0.782872, 0.473171, -0.404005,
		0.197466, -0.804722, -0.559848,
		32.888699, 34.399593, 37.904221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790428, 35.131756, 37.616253>,  <32.750473, 34.962898, 38.296112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790428, 35.131756, 37.616253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759087, 34.737671, 37.555298>,  <32.740284, 34.501221, 37.518726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759087, 34.737671, 37.555298>,  <32.790428, 35.131756, 37.616253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759087, 34.737671, 37.555298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580986, 0.169342, -0.796102,
		0.810133, 0.026159, -0.585662,
		-0.078352, -0.985210, -0.152387,
		32.735580, 34.442108, 37.509583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936562, 34.942951, 36.901627>,  <32.790428, 35.131756, 37.616253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936562, 34.942951, 36.901627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730640, 34.625751, 37.031940>,  <32.607090, 34.435432, 37.110130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730640, 34.625751, 37.031940>,  <32.936562, 34.942951, 36.901627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730640, 34.625751, 37.031940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489446, -0.040135, -0.871110,
		0.703864, -0.607900, -0.367468,
		-0.514799, -0.792999, 0.325784,
		32.576202, 34.387852, 37.129677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954720, 34.505119, 36.271103>,  <32.936562, 34.942951, 36.901627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954720, 34.505119, 36.271103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653572, 34.416965, 36.519173>,  <32.472881, 34.364075, 36.668015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653572, 34.416965, 36.519173>,  <32.954720, 34.505119, 36.271103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653572, 34.416965, 36.519173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634756, -0.005954, -0.772689,
		0.173979, -0.975395, -0.135406,
		-0.752872, -0.220382, 0.620174,
		32.427711, 34.350849, 36.705223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513802, 33.954609, 35.980129>,  <32.954720, 34.505119, 36.271103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513802, 33.954609, 35.980129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243027, 34.102665, 36.234608>,  <32.080563, 34.191498, 36.387295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243027, 34.102665, 36.234608>,  <32.513802, 33.954609, 35.980129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243027, 34.102665, 36.234608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696867, -0.044090, -0.715844,
		-0.236914, -0.927929, 0.287786,
		-0.676941, 0.370141, 0.636197,
		32.039944, 34.213707, 36.425468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866968, 33.577713, 35.825874>,  <32.513802, 33.954609, 35.980129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866968, 33.577713, 35.825874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750780, 33.902905, 36.027744>,  <31.681067, 34.098019, 36.148865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750780, 33.902905, 36.027744>,  <31.866968, 33.577713, 35.825874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750780, 33.902905, 36.027744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626347, 0.237187, -0.742585,
		-0.723406, -0.531800, 0.440310,
		-0.290471, 0.812977, 0.504674,
		31.663639, 34.146797, 36.179146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236094, 33.446430, 35.866211>,  <31.866968, 33.577713, 35.825874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236094, 33.446430, 35.866211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287382, 33.838371, 35.927467>,  <31.318155, 34.073536, 35.964222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287382, 33.838371, 35.927467>,  <31.236094, 33.446430, 35.866211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287382, 33.838371, 35.927467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654863, 0.199616, -0.728909,
		-0.744791, -0.006821, 0.667263,
		0.128224, 0.979850, 0.153139,
		31.325850, 34.132328, 35.973408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080975, 32.837162, 36.169044>,  <31.236094, 33.446430, 35.866211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080975, 32.837162, 36.169044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928881, 32.565010, 35.918442>,  <30.837626, 32.401718, 35.768082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928881, 32.565010, 35.918442>,  <31.080975, 32.837162, 36.169044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928881, 32.565010, 35.918442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187927, -0.720085, 0.667952,
		-0.905597, 0.136241, 0.401662,
		-0.380234, -0.680379, -0.626504,
		30.814810, 32.360897, 35.730492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646036, 32.527473, 36.607182>,  <31.080975, 32.837162, 36.169044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646036, 32.527473, 36.607182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714376, 32.270992, 36.307938>,  <30.755381, 32.117104, 36.128391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714376, 32.270992, 36.307938>,  <30.646036, 32.527473, 36.607182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714376, 32.270992, 36.307938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086902, -0.746507, 0.659679,
		-0.981457, -0.177718, -0.071818,
		0.170849, -0.641205, -0.748108,
		30.765631, 32.078632, 36.083504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072573, 32.025063, 36.585617>,  <30.646036, 32.527473, 36.607182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072573, 32.025063, 36.585617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429207, 31.898743, 36.455788>,  <30.643187, 31.822950, 36.377888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429207, 31.898743, 36.455788>,  <30.072573, 32.025063, 36.585617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429207, 31.898743, 36.455788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001471, -0.714710, 0.699419,
		-0.452852, -0.624069, -0.636760,
		0.891584, -0.315797, -0.324576,
		30.696682, 31.804003, 36.358414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979074, 31.378452, 36.813900>,  <30.072573, 32.025063, 36.585617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979074, 31.378452, 36.813900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370546, 31.430191, 36.750076>,  <30.605429, 31.461233, 36.711784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370546, 31.430191, 36.750076>,  <29.979074, 31.378452, 36.813900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370546, 31.430191, 36.750076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204735, -0.676727, 0.707195,
		-0.016505, -0.724783, -0.688779,
		0.978678, 0.129345, -0.159557,
		30.664150, 31.468994, 36.702209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270500, 30.646927, 36.886574>,  <29.979074, 31.378452, 36.813900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270500, 30.646927, 36.886574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590734, 30.881113, 36.937634>,  <30.782875, 31.021624, 36.968269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590734, 30.881113, 36.937634>,  <30.270500, 30.646927, 36.886574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590734, 30.881113, 36.937634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336341, -0.615356, 0.712890,
		0.495920, -0.527796, -0.689561,
		0.800586, 0.585464, 0.127648,
		30.830910, 31.056751, 36.975929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923922, 30.235956, 36.896957>,  <30.270500, 30.646927, 36.886574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923922, 30.235956, 36.896957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981634, 30.589230, 37.075470>,  <31.016262, 30.801193, 37.182579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981634, 30.589230, 37.075470>,  <30.923922, 30.235956, 36.896957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981634, 30.589230, 37.075470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320628, -0.468395, 0.823288,
		0.936152, 0.024304, -0.350755,
		0.144282, 0.883185, 0.446281,
		31.024920, 30.854185, 37.209354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556107, 30.120941, 37.204185>,  <30.923922, 30.235956, 36.896957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556107, 30.120941, 37.204185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390638, 30.443409, 37.373405>,  <31.291357, 30.636890, 37.474937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390638, 30.443409, 37.373405>,  <31.556107, 30.120941, 37.204185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390638, 30.443409, 37.373405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348549, -0.289032, 0.891613,
		0.841066, 0.516284, -0.161426,
		-0.413668, 0.806170, 0.423046,
		31.266539, 30.685261, 37.500320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020603, 30.385143, 37.666016>,  <31.556107, 30.120941, 37.204185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020603, 30.385143, 37.666016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678291, 30.538868, 37.804543>,  <31.472902, 30.631104, 37.887661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678291, 30.538868, 37.804543>,  <32.020603, 30.385143, 37.666016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678291, 30.538868, 37.804543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329012, -0.112290, 0.937626,
		0.399231, 0.916348, -0.030348,
		-0.855784, 0.384314, 0.346319,
		31.421556, 30.654161, 37.908440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215137, 30.775604, 38.318584>,  <32.020603, 30.385143, 37.666016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215137, 30.775604, 38.318584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815145, 30.777418, 38.320656>,  <31.575151, 30.778505, 38.321899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815145, 30.777418, 38.320656>,  <32.215137, 30.775604, 38.318584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815145, 30.777418, 38.320656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004748, -0.090111, 0.995921,
		0.004981, 0.995922, 0.090087,
		-0.999976, 0.004533, 0.005177,
		31.515152, 30.778778, 38.322208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056000, 31.294067, 38.895245>,  <32.215137, 30.775604, 38.318584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056000, 31.294067, 38.895245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773380, 31.015791, 38.843395>,  <31.603809, 30.848825, 38.812286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773380, 31.015791, 38.843395>,  <32.056000, 31.294067, 38.895245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773380, 31.015791, 38.843395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088288, -0.268404, 0.959252,
		-0.702135, 0.666315, 0.251061,
		-0.706550, -0.695690, -0.129628,
		31.561415, 30.807083, 38.804508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779938, 31.379774, 39.586842>,  <32.056000, 31.294067, 38.895245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779938, 31.379774, 39.586842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676550, 31.025917, 39.431610>,  <31.614517, 30.813602, 39.338470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676550, 31.025917, 39.431610>,  <31.779938, 31.379774, 39.586842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676550, 31.025917, 39.431610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231466, -0.446737, 0.864205,
		-0.937879, 0.133545, 0.320232,
		-0.258470, -0.884642, -0.388074,
		31.599009, 30.760525, 39.315189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504700, 30.944176, 40.208431>,  <31.779938, 31.379774, 39.586842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504700, 30.944176, 40.208431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583447, 30.673721, 39.924435>,  <31.630693, 30.511448, 39.754036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583447, 30.673721, 39.924435>,  <31.504700, 30.944176, 40.208431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583447, 30.673721, 39.924435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269943, -0.658791, 0.702229,
		-0.942536, -0.329901, 0.052824,
		0.196866, -0.676136, -0.709989,
		31.642506, 30.470881, 39.711437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186604, 30.377462, 40.416500>,  <31.504700, 30.944176, 40.208431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186604, 30.377462, 40.416500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495821, 30.295502, 40.176361>,  <31.681351, 30.246325, 40.032276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495821, 30.295502, 40.176361>,  <31.186604, 30.377462, 40.416500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495821, 30.295502, 40.176361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273601, -0.746147, 0.606965,
		-0.572317, -0.633466, -0.520743,
		0.773043, -0.204901, -0.600350,
		31.727734, 30.234032, 39.996258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254858, 29.578709, 40.415165>,  <31.186604, 30.377462, 40.416500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254858, 29.578709, 40.415165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595844, 29.737534, 40.279137>,  <31.800436, 29.832829, 40.197521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595844, 29.737534, 40.279137>,  <31.254858, 29.578709, 40.415165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595844, 29.737534, 40.279137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522049, -0.612067, 0.594003,
		0.027711, -0.683899, -0.729051,
		0.852465, 0.397060, -0.340067,
		31.851583, 29.856651, 40.177116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676558, 28.987267, 40.282547>,  <31.254858, 29.578709, 40.415165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676558, 28.987267, 40.282547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908453, 29.303162, 40.362762>,  <32.047592, 29.492699, 40.410892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908453, 29.303162, 40.362762>,  <31.676558, 28.987267, 40.282547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908453, 29.303162, 40.362762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583156, -0.574048, 0.574803,
		0.569061, -0.216293, -0.793339,
		0.579741, 0.789738, 0.200536,
		32.082375, 29.540083, 40.422924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302917, 28.637442, 40.314487>,  <31.676558, 28.987267, 40.282547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302917, 28.637442, 40.314487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378574, 29.000040, 40.465477>,  <32.423969, 29.217600, 40.556072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378574, 29.000040, 40.465477>,  <32.302917, 28.637442, 40.314487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378574, 29.000040, 40.465477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546442, -0.416564, 0.726551,
		0.815858, 0.068844, -0.574139,
		0.189147, 0.906496, 0.377476,
		32.435318, 29.271990, 40.578720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997692, 28.819050, 40.268490>,  <32.302917, 28.637442, 40.314487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997692, 28.819050, 40.268490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916580, 29.096094, 40.545380>,  <32.867912, 29.262320, 40.711514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916580, 29.096094, 40.545380>,  <32.997692, 28.819050, 40.268490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916580, 29.096094, 40.545380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759523, -0.334943, 0.557618,
		0.618067, 0.638832, -0.458135,
		-0.202776, 0.692609, 0.692224,
		32.855747, 29.303877, 40.753048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656368, 29.044394, 40.521626>,  <32.997692, 28.819050, 40.268490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656368, 29.044394, 40.521626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409752, 29.142368, 40.820927>,  <33.261784, 29.201153, 41.000507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409752, 29.142368, 40.820927>,  <33.656368, 29.044394, 40.521626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409752, 29.142368, 40.820927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743320, -0.132188, 0.655746,
		0.259527, 0.960485, -0.100568,
		-0.616540, 0.244938, 0.748254,
		33.224789, 29.215849, 41.045403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061607, 29.594759, 40.950039>,  <33.656368, 29.044394, 40.521626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061607, 29.594759, 40.950039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789181, 29.401396, 41.170029>,  <33.625725, 29.285378, 41.302021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789181, 29.401396, 41.170029>,  <34.061607, 29.594759, 40.950039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789181, 29.401396, 41.170029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713025, -0.266981, 0.648318,
		-0.166569, 0.833690, 0.526513,
		-0.681065, -0.483407, 0.549971,
		33.584862, 29.256374, 41.335018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309681, 29.615866, 41.537369>,  <34.061607, 29.594759, 40.950039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309681, 29.615866, 41.537369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008541, 29.364906, 41.616962>,  <33.827858, 29.214331, 41.664719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008541, 29.364906, 41.616962>,  <34.309681, 29.615866, 41.537369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008541, 29.364906, 41.616962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441801, -0.257594, 0.859335,
		-0.487887, 0.734860, 0.471113,
		-0.752847, -0.627397, 0.198985,
		33.782688, 29.176687, 41.676659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168060, 29.778767, 42.260471>,  <34.309681, 29.615866, 41.537369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168060, 29.778767, 42.260471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033302, 29.413696, 42.167931>,  <33.952446, 29.194654, 42.112408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033302, 29.413696, 42.167931>,  <34.168060, 29.778767, 42.260471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033302, 29.413696, 42.167931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444843, -0.370849, 0.815221,
		-0.829829, 0.171730, 0.530935,
		-0.336895, -0.912677, -0.231348,
		33.932236, 29.139893, 42.098526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708775, 29.445654, 42.837708>,  <34.168060, 29.778767, 42.260471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708775, 29.445654, 42.837708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877518, 29.155401, 42.620270>,  <33.978764, 28.981251, 42.489807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877518, 29.155401, 42.620270>,  <33.708775, 29.445654, 42.837708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877518, 29.155401, 42.620270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357450, -0.417882, 0.835227,
		-0.833224, -0.546658, 0.083088,
		0.421862, -0.725631, -0.543592,
		34.004078, 28.937712, 42.457191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617241, 28.864969, 43.264256>,  <33.708775, 29.445654, 42.837708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617241, 28.864969, 43.264256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884201, 28.726295, 43.000622>,  <34.044376, 28.643091, 42.842442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884201, 28.726295, 43.000622>,  <33.617241, 28.864969, 43.264256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884201, 28.726295, 43.000622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406196, -0.572311, 0.712366,
		-0.624167, -0.743148, -0.241136,
		0.667397, -0.346687, -0.659081,
		34.084419, 28.622290, 42.802898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737930, 28.141611, 43.435112>,  <33.617241, 28.864969, 43.264256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737930, 28.141611, 43.435112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064575, 28.229185, 43.221489>,  <34.260563, 28.281729, 43.093315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064575, 28.229185, 43.221489>,  <33.737930, 28.141611, 43.435112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064575, 28.229185, 43.221489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573876, -0.406939, 0.710680,
		-0.061736, -0.886831, -0.457952,
		0.816611, 0.218933, -0.534054,
		34.309559, 28.294865, 43.061272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139942, 27.504679, 43.279465>,  <33.737930, 28.141611, 43.435112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139942, 27.504679, 43.279465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433289, 27.773455, 43.238155>,  <34.609299, 27.934721, 43.213371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433289, 27.773455, 43.238155>,  <34.139942, 27.504679, 43.279465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433289, 27.773455, 43.238155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656866, -0.661218, 0.362379,
		0.175211, -0.333595, -0.926292,
		0.733368, 0.671942, -0.103274,
		34.653297, 27.975037, 43.207172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588528, 27.175974, 42.847378>,  <34.139942, 27.504679, 43.279465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588528, 27.175974, 42.847378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779293, 27.481470, 43.021389>,  <34.893753, 27.664768, 43.125797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779293, 27.481470, 43.021389>,  <34.588528, 27.175974, 42.847378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779293, 27.481470, 43.021389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671372, -0.635977, 0.380518,
		0.567287, 0.110594, -0.816060,
		0.476912, 0.763742, 0.435031,
		34.922367, 27.710592, 43.151897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324909, 26.920078, 42.962933>,  <34.588528, 27.175974, 42.847378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324909, 26.920078, 42.962933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325756, 27.255611, 43.180687>,  <35.326263, 27.456932, 43.311340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325756, 27.255611, 43.180687>,  <35.324909, 26.920078, 42.962933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325756, 27.255611, 43.180687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741764, -0.366416, 0.561717,
		0.670658, 0.402617, -0.622991,
		0.002117, 0.838832, 0.544386,
		35.326393, 27.507261, 43.344002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989147, 26.913408, 43.244091>,  <35.324909, 26.920078, 42.962933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989147, 26.913408, 43.244091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769417, 27.136763, 43.492752>,  <35.637577, 27.270775, 43.641949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769417, 27.136763, 43.492752>,  <35.989147, 26.913408, 43.244091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769417, 27.136763, 43.492752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623490, -0.221408, 0.749826,
		0.556329, 0.799491, -0.226523,
		-0.549325, 0.558385, 0.621650,
		35.604618, 27.304277, 43.679249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217602, 27.649527, 43.189419>,  <35.989147, 26.913408, 43.244091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217602, 27.649527, 43.189419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613792, 27.703899, 43.198124>,  <36.851509, 27.736523, 43.203346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613792, 27.703899, 43.198124>,  <36.217602, 27.649527, 43.189419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613792, 27.703899, 43.198124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071842, 0.645238, -0.760596,
		-0.117431, 0.751791, 0.648860,
		0.990479, 0.135933, 0.021760,
		36.910934, 27.744678, 43.204651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311298, 28.363537, 43.075665>,  <36.217602, 27.649527, 43.189419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311298, 28.363537, 43.075665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654259, 28.178808, 42.984814>,  <36.860035, 28.067970, 42.930302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654259, 28.178808, 42.984814>,  <36.311298, 28.363537, 43.075665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654259, 28.178808, 42.984814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023023, 0.475296, -0.879525,
		0.514138, 0.748874, 0.418151,
		0.857399, -0.461824, -0.227126,
		36.911480, 28.040260, 42.916676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855457, 28.876678, 42.933735>,  <36.311298, 28.363537, 43.075665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855457, 28.876678, 42.933735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959682, 28.536531, 42.750877>,  <37.022217, 28.332443, 42.641163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959682, 28.536531, 42.750877>,  <36.855457, 28.876678, 42.933735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959682, 28.536531, 42.750877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228822, 0.514403, -0.826456,
		0.937950, 0.110736, 0.328615,
		0.260559, -0.850369, -0.457145,
		37.037849, 28.281422, 42.613735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279366, 29.143646, 42.437073>,  <36.855457, 28.876678, 42.933735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279366, 29.143646, 42.437073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196289, 28.775473, 42.304607>,  <37.146442, 28.554569, 42.225128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196289, 28.775473, 42.304607>,  <37.279366, 29.143646, 42.437073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196289, 28.775473, 42.304607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114345, 0.359070, -0.926280,
		0.971489, -0.154511, -0.179822,
		-0.207689, -0.920432, -0.331165,
		37.133984, 28.499344, 42.205257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704731, 29.060907, 41.721043>,  <37.279366, 29.143646, 42.437073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704731, 29.060907, 41.721043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394566, 28.809050, 41.740124>,  <37.208466, 28.657934, 41.751572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394566, 28.809050, 41.740124>,  <37.704731, 29.060907, 41.721043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394566, 28.809050, 41.740124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253927, 0.241765, -0.936520,
		0.578145, -0.738305, -0.347353,
		-0.775415, -0.629647, 0.047700,
		37.161942, 28.620155, 41.754433>
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
