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
	<24.368536, 35.450417, 34.848579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.359964, 35.088516, 35.018738>,  <24.354822, 34.871376, 35.120834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.359964, 35.088516, 35.018738>,  <24.368536, 35.450417, 34.848579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.359964, 35.088516, 35.018738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944253, 0.121501, 0.305980,
		-0.328523, 0.408239, 0.851712,
		-0.021429, -0.904753, 0.425397,
		24.353535, 34.817089, 35.146358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.524462, 35.524090, 35.495968>,  <24.368536, 35.450417, 34.848579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.524462, 35.524090, 35.495968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.649845, 35.153217, 35.413918>,  <24.725075, 34.930695, 35.364689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.649845, 35.153217, 35.413918>,  <24.524462, 35.524090, 35.495968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.649845, 35.153217, 35.413918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931536, 0.258298, 0.255975,
		-0.184352, -0.271320, 0.944669,
		0.313458, -0.927182, -0.205127,
		24.743883, 34.875061, 35.352379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.189228, 35.251633, 35.902847>,  <24.524462, 35.524090, 35.495968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.189228, 35.251633, 35.902847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.225899, 35.066566, 35.550137>,  <25.247902, 34.955528, 35.338509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.225899, 35.066566, 35.550137>,  <25.189228, 35.251633, 35.902847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.225899, 35.066566, 35.550137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948137, 0.311204, -0.064710,
		0.304352, -0.830115, 0.467202,
		0.091679, -0.462667, -0.881779,
		25.253403, 34.927765, 35.285603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822107, 35.230827, 36.298889>,  <25.189228, 35.251633, 35.902847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822107, 35.230827, 36.298889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763943, 34.877811, 36.477764>,  <25.729044, 34.666000, 36.585091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763943, 34.877811, 36.477764>,  <25.822107, 35.230827, 36.298889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763943, 34.877811, 36.477764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679824, -0.417516, -0.602926,
		0.718815, 0.216336, 0.660685,
		-0.145412, -0.882541, 0.447187,
		25.720320, 34.613049, 36.611919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.425774, 34.882442, 36.741405>,  <25.822107, 35.230827, 36.298889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.425774, 34.882442, 36.741405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.166349, 34.642925, 36.553440>,  <26.010695, 34.499214, 36.440659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.166349, 34.642925, 36.553440>,  <26.425774, 34.882442, 36.741405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.166349, 34.642925, 36.553440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719735, -0.281542, -0.634599,
		0.247690, -0.749790, 0.613567,
		-0.648561, -0.598790, -0.469915,
		25.971781, 34.463287, 36.412464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.715843, 34.201965, 36.546970>,  <26.425774, 34.882442, 36.741405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.715843, 34.201965, 36.546970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.440983, 34.319920, 36.281380>,  <26.276066, 34.390694, 36.122025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.440983, 34.319920, 36.281380>,  <26.715843, 34.201965, 36.546970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.440983, 34.319920, 36.281380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554237, -0.378121, -0.741516,
		-0.469728, -0.877533, 0.096388,
		-0.687151, 0.294888, -0.663976,
		26.234837, 34.408386, 36.082188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537283, 33.635109, 36.019566>,  <26.715843, 34.201965, 36.546970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537283, 33.635109, 36.019566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532110, 33.984657, 35.825172>,  <26.529007, 34.194386, 35.708538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532110, 33.984657, 35.825172>,  <26.537283, 33.635109, 36.019566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.532110, 33.984657, 35.825172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522507, -0.408481, -0.748418,
		-0.852537, -0.263607, -0.451322,
		-0.012932, 0.873873, -0.485982,
		26.528231, 34.246819, 35.679379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855339, 33.515274, 35.330082>,  <26.537283, 33.635109, 36.019566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855339, 33.515274, 35.330082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201643, 33.378242, 35.184151>,  <27.409426, 33.296024, 35.096592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201643, 33.378242, 35.184151>,  <26.855339, 33.515274, 35.330082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201643, 33.378242, 35.184151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498135, 0.519675, 0.694118,
		-0.048199, -0.782673, 0.620565,
		0.865759, -0.342581, -0.364829,
		27.461370, 33.275467, 35.074703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242378, 33.199234, 35.911625>,  <26.855339, 33.515274, 35.330082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242378, 33.199234, 35.911625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537289, 33.258537, 35.647976>,  <27.714235, 33.294121, 35.489784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537289, 33.258537, 35.647976>,  <27.242378, 33.199234, 35.911625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537289, 33.258537, 35.647976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440952, 0.633557, 0.635742,
		0.511847, -0.759358, 0.401731,
		0.737275, 0.148259, -0.659124,
		27.758471, 33.303017, 35.450237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751650, 33.268784, 36.384026>,  <27.242378, 33.199234, 35.911625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751650, 33.268784, 36.384026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897655, 33.402924, 36.036621>,  <27.985260, 33.483406, 35.828178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897655, 33.402924, 36.036621>,  <27.751650, 33.268784, 36.384026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897655, 33.402924, 36.036621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645190, 0.581423, 0.495658,
		0.671188, -0.741276, -0.004134,
		0.365016, 0.335347, -0.868508,
		28.007160, 33.503529, 35.776070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444397, 33.172741, 36.488911>,  <27.751650, 33.268784, 36.384026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444397, 33.172741, 36.488911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375881, 33.455395, 36.214298>,  <28.334772, 33.624989, 36.049530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375881, 33.455395, 36.214298>,  <28.444397, 33.172741, 36.488911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375881, 33.455395, 36.214298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639583, 0.609790, 0.468070,
		0.749395, -0.358919, -0.556403,
		-0.171289, 0.706635, -0.686532,
		28.324495, 33.667385, 36.008339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534452, 33.321465, 37.181988>,  <28.444397, 33.172741, 36.488911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534452, 33.321465, 37.181988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148773, 33.392315, 37.260929>,  <27.917366, 33.434826, 37.308292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148773, 33.392315, 37.260929>,  <28.534452, 33.321465, 37.181988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148773, 33.392315, 37.260929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264705, 0.687435, 0.676287,
		-0.015875, 0.704315, -0.709710,
		-0.964199, 0.177128, 0.197349,
		27.859514, 33.445454, 37.320133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390882, 33.978390, 36.970871>,  <28.534452, 33.321465, 37.181988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390882, 33.978390, 36.970871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134827, 33.866562, 37.257107>,  <27.981194, 33.799465, 37.428848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134827, 33.866562, 37.257107>,  <28.390882, 33.978390, 36.970871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134827, 33.866562, 37.257107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268147, 0.791552, 0.549129,
		-0.719944, 0.543400, -0.431736,
		-0.640138, -0.279573, 0.715585,
		27.942785, 33.782688, 37.471783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583382, 34.590954, 36.798992>,  <28.390882, 33.978390, 36.970871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583382, 34.590954, 36.798992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675459, 34.809532, 36.476894>,  <28.730705, 34.940678, 36.283638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675459, 34.809532, 36.476894>,  <28.583382, 34.590954, 36.798992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675459, 34.809532, 36.476894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269215, -0.759410, -0.592301,
		-0.935166, 0.353126, -0.027701,
		0.230193, 0.546442, -0.805240,
		28.744516, 34.973465, 36.235321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944218, 34.667133, 36.447453>,  <28.583382, 34.590954, 36.798992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944218, 34.667133, 36.447453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264477, 34.698387, 36.209843>,  <28.456633, 34.717140, 36.067276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264477, 34.698387, 36.209843>,  <27.944218, 34.667133, 36.447453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264477, 34.698387, 36.209843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307572, -0.797242, -0.519428,
		-0.514164, 0.598582, -0.614276,
		0.800646, 0.078137, -0.594020,
		28.504671, 34.721828, 36.031635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685947, 34.583942, 35.777500>,  <27.944218, 34.667133, 36.447453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685947, 34.583942, 35.777500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066574, 34.466084, 35.812611>,  <28.294950, 34.395367, 35.833675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066574, 34.466084, 35.812611>,  <27.685947, 34.583942, 35.777500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066574, 34.466084, 35.812611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200541, -0.811263, -0.549214,
		0.233033, 0.505011, -0.831059,
		0.951567, -0.294646, 0.087776,
		28.352043, 34.377689, 35.838943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099897, 34.607235, 35.089062>,  <27.685947, 34.583942, 35.777500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099897, 34.607235, 35.089062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179647, 34.320087, 35.355869>,  <28.227497, 34.147797, 35.515953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179647, 34.320087, 35.355869>,  <28.099897, 34.607235, 35.089062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179647, 34.320087, 35.355869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337289, -0.689363, -0.641104,
		0.920046, -0.097156, -0.379573,
		0.199376, -0.717871, 0.667016,
		28.239460, 34.104725, 35.555973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519747, 34.132984, 34.774826>,  <28.099897, 34.607235, 35.089062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519747, 34.132984, 34.774826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350403, 33.944256, 35.084187>,  <28.248796, 33.831017, 35.269802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350403, 33.944256, 35.084187>,  <28.519747, 34.132984, 34.774826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350403, 33.944256, 35.084187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269314, -0.749545, -0.604692,
		0.865008, -0.464289, 0.190257,
		-0.423358, -0.471824, 0.773402,
		28.223396, 33.802708, 35.316208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719110, 33.495651, 34.572872>,  <28.519747, 34.132984, 34.774826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719110, 33.495651, 34.572872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420277, 33.452671, 34.835270>,  <28.240976, 33.426884, 34.992706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420277, 33.452671, 34.835270>,  <28.719110, 33.495651, 34.572872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420277, 33.452671, 34.835270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362941, -0.760838, -0.537959,
		0.556904, -0.639985, 0.529412,
		-0.747082, -0.107446, 0.655990,
		28.196152, 33.420437, 35.032066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570417, 32.735809, 34.557507>,  <28.719110, 33.495651, 34.572872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570417, 32.735809, 34.557507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252001, 32.908295, 34.727390>,  <28.060951, 33.011787, 34.829319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252001, 32.908295, 34.727390>,  <28.570417, 32.735809, 34.557507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252001, 32.908295, 34.727390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604160, -0.524146, -0.600218,
		-0.036214, -0.734387, 0.677764,
		-0.796040, 0.431214, 0.424706,
		28.013189, 33.037659, 34.854801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009075, 32.264038, 34.707630>,  <28.570417, 32.735809, 34.557507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009075, 32.264038, 34.707630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839333, 32.625034, 34.678158>,  <27.737488, 32.841633, 34.660473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839333, 32.625034, 34.678158>,  <28.009075, 32.264038, 34.707630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839333, 32.625034, 34.678158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708448, -0.381588, -0.593710,
		-0.563937, -0.199741, 0.801298,
		-0.424354, 0.902493, -0.073686,
		27.712027, 32.895782, 34.656052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163685, 32.445251, 34.931271>,  <28.009075, 32.264038, 34.707630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163685, 32.445251, 34.931271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307323, 32.691452, 34.650642>,  <27.393507, 32.839172, 34.482265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307323, 32.691452, 34.650642>,  <27.163685, 32.445251, 34.931271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307323, 32.691452, 34.650642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741065, -0.268911, -0.615231,
		-0.567337, 0.740840, 0.359561,
		0.359098, 0.615502, -0.701574,
		27.415052, 32.876102, 34.440170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.653996, 32.785248, 34.624424>,  <27.163685, 32.445251, 34.931271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.653996, 32.785248, 34.624424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942759, 32.790665, 34.347679>,  <27.116016, 32.793915, 34.181633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942759, 32.790665, 34.347679>,  <26.653996, 32.785248, 34.624424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942759, 32.790665, 34.347679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676716, -0.195093, -0.709926,
		-0.144592, 0.980691, -0.131673,
		0.721907, 0.013544, -0.691858,
		27.159330, 32.794727, 34.140121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460382, 33.132690, 34.014297>,  <26.653996, 32.785248, 34.624424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460382, 33.132690, 34.014297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741385, 32.874931, 33.893475>,  <26.909986, 32.720276, 33.820980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741385, 32.874931, 33.893475>,  <26.460382, 33.132690, 34.014297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741385, 32.874931, 33.893475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645763, -0.398787, -0.651122,
		0.299125, 0.652473, -0.696278,
		0.702506, -0.644397, -0.302056,
		26.952137, 32.681614, 33.802856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.688261, 33.268127, 33.339199>,  <26.460382, 33.132690, 34.014297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.688261, 33.268127, 33.339199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688576, 32.876297, 33.419628>,  <26.688765, 32.641197, 33.467888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688576, 32.876297, 33.419628>,  <26.688261, 33.268127, 33.339199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688576, 32.876297, 33.419628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799574, -0.121378, -0.588174,
		0.600567, -0.160312, -0.783339,
		0.000789, -0.979575, 0.201076,
		26.688812, 32.582424, 33.479950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.068041, 33.469151, 32.745735>,  <26.688261, 33.268127, 33.339199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.068041, 33.469151, 32.745735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.349508, 33.735199, 32.845711>,  <27.518389, 33.894829, 32.905697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.349508, 33.735199, 32.845711>,  <27.068041, 33.469151, 32.745735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.349508, 33.735199, 32.845711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214278, -0.534027, 0.817863,
		0.677450, -0.521947, -0.518298,
		0.703666, 0.665121, 0.249935,
		27.560608, 33.934734, 32.920692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727028, 33.114925, 33.038494>,  <27.068041, 33.469151, 32.745735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727028, 33.114925, 33.038494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717613, 33.469948, 33.222534>,  <27.711964, 33.682961, 33.332958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717613, 33.469948, 33.222534>,  <27.727028, 33.114925, 33.038494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717613, 33.469948, 33.222534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486620, -0.391857, 0.780800,
		0.873297, 0.242274, -0.422678,
		-0.023539, 0.887554, 0.460103,
		27.710552, 33.736214, 33.360565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382757, 33.453499, 33.243721>,  <27.727028, 33.114925, 33.038494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382757, 33.453499, 33.243721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094416, 33.545990, 33.505074>,  <27.921412, 33.601486, 33.661884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094416, 33.545990, 33.505074>,  <28.382757, 33.453499, 33.243721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094416, 33.545990, 33.505074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612896, -0.227506, 0.756703,
		0.323622, 0.945924, 0.022277,
		-0.720852, 0.231232, 0.653379,
		27.878160, 33.615360, 33.701088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888395, 33.037727, 33.106564>,  <28.382757, 33.453499, 33.243721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888395, 33.037727, 33.106564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697281, 32.826248, 33.387188>,  <28.582613, 32.699360, 33.555565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697281, 32.826248, 33.387188>,  <28.888395, 33.037727, 33.106564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697281, 32.826248, 33.387188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853754, -0.467589, 0.229054,
		0.206942, 0.708403, 0.674789,
		-0.477786, -0.528703, 0.701565,
		28.553946, 32.667637, 33.597656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257217, 32.795879, 32.612202>,  <28.888395, 33.037727, 33.106564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257217, 32.795879, 32.612202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464130, 32.538055, 32.837399>,  <28.588278, 32.383362, 32.972515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464130, 32.538055, 32.837399>,  <28.257217, 32.795879, 32.612202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464130, 32.538055, 32.837399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512923, -0.293104, -0.806846,
		0.685076, 0.706139, 0.178992,
		0.517282, -0.644560, 0.562993,
		28.619314, 32.344688, 33.006298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908876, 32.936337, 32.381256>,  <28.257217, 32.795879, 32.612202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908876, 32.936337, 32.381256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.923355, 32.592697, 32.585468>,  <28.932041, 32.386513, 32.707996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.923355, 32.592697, 32.585468>,  <28.908876, 32.936337, 32.381256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923355, 32.592697, 32.585468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623688, -0.379742, -0.683235,
		0.780835, 0.343140, 0.522065,
		0.036195, -0.859099, 0.510528,
		28.934214, 32.334969, 32.738628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675533, 32.713802, 32.609516>,  <28.908876, 32.936337, 32.381256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675533, 32.713802, 32.609516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414021, 32.428608, 32.508152>,  <29.257113, 32.257492, 32.447334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414021, 32.428608, 32.508152>,  <29.675533, 32.713802, 32.609516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414021, 32.428608, 32.508152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624734, -0.319645, -0.712414,
		0.426939, -0.624080, 0.654406,
		-0.653781, -0.712987, -0.253415,
		29.217886, 32.214710, 32.432129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170166, 32.209328, 32.380882>,  <29.675533, 32.713802, 32.609516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170166, 32.209328, 32.380882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808134, 32.106892, 32.245090>,  <29.590916, 32.045429, 32.163616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808134, 32.106892, 32.245090>,  <30.170166, 32.209328, 32.380882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808134, 32.106892, 32.245090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407239, -0.292154, -0.865334,
		0.122427, -0.921445, 0.368715,
		-0.905079, -0.256095, -0.339481,
		29.536610, 32.030064, 32.143246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264856, 31.631828, 31.913603>,  <30.170166, 32.209328, 32.380882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264856, 31.631828, 31.913603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915348, 31.795185, 31.807970>,  <29.705643, 31.893200, 31.744591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915348, 31.795185, 31.807970>,  <30.264856, 31.631828, 31.913603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915348, 31.795185, 31.807970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078440, -0.417556, -0.905259,
		-0.479973, -0.811703, 0.332813,
		-0.873769, 0.408395, -0.264085,
		29.653217, 31.917704, 31.728745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752855, 31.141607, 31.600798>,  <30.264856, 31.631828, 31.913603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752855, 31.141607, 31.600798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.680935, 31.505732, 31.451664>,  <29.637783, 31.724207, 31.362183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.680935, 31.505732, 31.451664>,  <29.752855, 31.141607, 31.600798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.680935, 31.505732, 31.451664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004155, -0.378306, -0.925671,
		-0.983694, -0.167985, 0.064238,
		-0.179801, 0.910310, -0.372836,
		29.626995, 31.778824, 31.339813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369757, 30.966858, 31.075357>,  <29.752855, 31.141607, 31.600798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369757, 30.966858, 31.075357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483988, 31.338108, 30.979834>,  <29.552526, 31.560858, 30.922520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483988, 31.338108, 30.979834>,  <29.369757, 30.966858, 31.075357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483988, 31.338108, 30.979834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154710, -0.290563, -0.944266,
		-0.945786, 0.232713, -0.226569,
		0.285576, 0.928126, -0.238808,
		29.569660, 31.616547, 30.908192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005455, 30.955280, 30.563837>,  <29.369757, 30.966858, 31.075357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005455, 30.955280, 30.563837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681982, 30.728794, 30.627625>,  <29.487898, 30.592903, 30.665897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681982, 30.728794, 30.627625>,  <30.005455, 30.955280, 30.563837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681982, 30.728794, 30.627625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346313, -0.239127, 0.907131,
		-0.475498, 0.788808, 0.389466,
		-0.808684, -0.566215, 0.159470,
		29.439377, 30.558929, 30.675465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521975, 31.493465, 30.535900>,  <30.005455, 30.955280, 30.563837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521975, 31.493465, 30.535900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827803, 31.677570, 30.355415>,  <31.011299, 31.788034, 30.247126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827803, 31.677570, 30.355415>,  <30.521975, 31.493465, 30.535900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827803, 31.677570, 30.355415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021716, -0.718047, -0.695656,
		-0.644176, 0.522079, -0.558992,
		0.764569, 0.460264, -0.451211,
		31.057173, 31.815649, 30.220053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310427, 31.638309, 29.921555>,  <30.521975, 31.493465, 30.535900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310427, 31.638309, 29.921555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707077, 31.591291, 29.900143>,  <30.945066, 31.563080, 29.887295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707077, 31.591291, 29.900143>,  <30.310427, 31.638309, 29.921555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707077, 31.591291, 29.900143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124726, -0.763803, -0.633283,
		0.033554, 0.634655, -0.772066,
		0.991624, -0.117545, -0.053529,
		31.004564, 31.556028, 29.884085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504950, 31.567312, 29.232494>,  <30.310427, 31.638309, 29.921555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504950, 31.567312, 29.232494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800097, 31.361462, 29.407177>,  <30.977184, 31.237951, 29.511988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800097, 31.361462, 29.407177>,  <30.504950, 31.567312, 29.232494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800097, 31.361462, 29.407177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079294, -0.708640, -0.701101,
		0.670274, 0.482690, -0.563688,
		0.737865, -0.514626, 0.436709,
		31.021456, 31.207073, 29.538189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056595, 31.508434, 28.739943>,  <30.504950, 31.567312, 29.232494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056595, 31.508434, 28.739943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075052, 31.197111, 28.990416>,  <31.086126, 31.010317, 29.140699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075052, 31.197111, 28.990416>,  <31.056595, 31.508434, 28.739943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075052, 31.197111, 28.990416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014228, -0.626277, -0.779471,
		0.998833, 0.044878, -0.017826,
		0.046146, -0.778308, 0.626185,
		31.088896, 30.963619, 29.178270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678268, 31.666132, 29.157520>,  <31.056595, 31.508434, 28.739943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678268, 31.666132, 29.157520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008007, 31.564362, 29.359797>,  <32.205849, 31.503300, 29.481161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008007, 31.564362, 29.359797>,  <31.678268, 31.666132, 29.157520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008007, 31.564362, 29.359797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538014, -0.629941, 0.560103,
		0.176050, -0.733787, -0.656173,
		0.824347, -0.254424, 0.505689,
		32.255310, 31.488033, 29.511503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634800, 30.874681, 29.234806>,  <31.678268, 31.666132, 29.157520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634800, 30.874681, 29.234806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835218, 31.047813, 29.534569>,  <31.955469, 31.151693, 29.714426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835218, 31.047813, 29.534569>,  <31.634800, 30.874681, 29.234806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835218, 31.047813, 29.534569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619109, -0.425794, 0.659852,
		0.604697, -0.794580, 0.054628,
		0.501045, 0.432831, 0.749408,
		31.985531, 31.177662, 29.759392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992962, 30.420172, 29.751104>,  <31.634800, 30.874681, 29.234806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992962, 30.420172, 29.751104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925461, 30.743750, 29.976360>,  <31.884960, 30.937897, 30.111515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925461, 30.743750, 29.976360>,  <31.992962, 30.420172, 29.751104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925461, 30.743750, 29.976360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633180, -0.526828, 0.567041,
		0.755384, -0.260880, 0.601113,
		-0.168753, 0.808946, 0.563141,
		31.874834, 30.986433, 30.145302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232986, 29.865164, 30.156134>,  <31.992962, 30.420172, 29.751104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232986, 29.865164, 30.156134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218014, 29.480995, 30.045727>,  <32.209030, 29.250494, 29.979483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218014, 29.480995, 30.045727>,  <32.232986, 29.865164, 30.156134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218014, 29.480995, 30.045727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576469, -0.246371, 0.779092,
		-0.816261, -0.129955, 0.562876,
		-0.037430, -0.960423, -0.276018,
		32.206783, 29.192867, 29.962921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910715, 29.348541, 30.721006>,  <32.232986, 29.865164, 30.156134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910715, 29.348541, 30.721006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201099, 29.185179, 30.499670>,  <32.375328, 29.087162, 30.366867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201099, 29.185179, 30.499670>,  <31.910715, 29.348541, 30.721006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201099, 29.185179, 30.499670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600114, -0.016822, 0.799738,
		-0.335925, -0.912646, 0.232877,
		0.725960, -0.408405, -0.553343,
		32.418888, 29.062658, 30.333668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037304, 28.570147, 30.810513>,  <31.910715, 29.348541, 30.721006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037304, 28.570147, 30.810513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367363, 28.780376, 30.727655>,  <32.565399, 28.906515, 30.677940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367363, 28.780376, 30.727655>,  <32.037304, 28.570147, 30.810513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367363, 28.780376, 30.727655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419444, -0.324353, 0.847857,
		0.378425, -0.786489, -0.488087,
		0.825143, 0.525575, -0.207145,
		32.614906, 28.938049, 30.665512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758209, 28.239201, 30.968039>,  <32.037304, 28.570147, 30.810513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758209, 28.239201, 30.968039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801586, 28.635830, 30.996389>,  <32.827610, 28.873808, 31.013401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801586, 28.635830, 30.996389>,  <32.758209, 28.239201, 30.968039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801586, 28.635830, 30.996389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552947, -0.119416, 0.824615,
		0.826130, -0.050229, -0.561236,
		0.108440, 0.991573, 0.070879,
		32.834118, 28.933302, 31.017653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205158, 28.485897, 31.484268>,  <32.758209, 28.239201, 30.968039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205158, 28.485897, 31.484268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296223, 28.809124, 31.266941>,  <33.350861, 29.003061, 31.136545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296223, 28.809124, 31.266941>,  <33.205158, 28.485897, 31.484268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296223, 28.809124, 31.266941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033789, 0.564190, 0.824953,
		0.973154, -0.169450, 0.155747,
		0.227659, 0.808069, -0.543319,
		33.364521, 29.051544, 31.103945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682117, 28.926483, 31.823126>,  <33.205158, 28.485897, 31.484268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682117, 28.926483, 31.823126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568039, 29.174223, 31.530533>,  <33.499592, 29.322866, 31.354977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568039, 29.174223, 31.530533>,  <33.682117, 28.926483, 31.823126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568039, 29.174223, 31.530533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001856, 0.762820, 0.646608,
		0.958468, 0.185766, -0.216403,
		-0.285194, 0.619351, -0.731484,
		33.482479, 29.360029, 31.311089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161556, 29.507574, 31.968546>,  <33.682117, 28.926483, 31.823126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161556, 29.507574, 31.968546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830666, 29.599833, 31.763605>,  <33.632133, 29.655188, 31.640640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830666, 29.599833, 31.763605>,  <34.161556, 29.507574, 31.968546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830666, 29.599833, 31.763605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161136, 0.776180, 0.609573,
		0.538273, 0.586811, -0.604909,
		-0.827223, 0.230644, -0.512353,
		33.582500, 29.669025, 31.609900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197929, 30.174875, 32.007164>,  <34.161556, 29.507574, 31.968546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197929, 30.174875, 32.007164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822384, 30.067062, 31.921478>,  <33.597057, 30.002375, 31.870068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822384, 30.067062, 31.921478>,  <34.197929, 30.174875, 32.007164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822384, 30.067062, 31.921478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344174, 0.718716, 0.604146,
		-0.008879, 0.640937, -0.767542,
		-0.938864, -0.269532, -0.214212,
		33.540726, 29.986202, 31.857214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802803, 30.576427, 31.466423>,  <34.197929, 30.174875, 32.007164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802803, 30.576427, 31.466423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592484, 30.434258, 31.775539>,  <33.466290, 30.348955, 31.961010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592484, 30.434258, 31.775539>,  <33.802803, 30.576427, 31.466423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592484, 30.434258, 31.775539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203459, 0.934696, 0.291457,
		-0.825916, -0.003982, -0.563779,
		-0.525802, -0.355425, 0.772791,
		33.434742, 30.327629, 32.007378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580647, 31.177408, 31.191254>,  <33.802803, 30.576427, 31.466423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580647, 31.177408, 31.191254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183540, 31.222698, 31.207256>,  <32.945278, 31.249872, 31.216858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183540, 31.222698, 31.207256>,  <33.580647, 31.177408, 31.191254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183540, 31.222698, 31.207256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013337, -0.227123, 0.973775,
		0.119343, 0.967262, 0.223969,
		-0.992764, 0.113226, 0.040005,
		32.885712, 31.256666, 31.219257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332687, 31.694551, 31.649923>,  <33.580647, 31.177408, 31.191254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332687, 31.694551, 31.649923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067909, 31.398443, 31.602890>,  <32.909042, 31.220779, 31.574669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067909, 31.398443, 31.602890>,  <33.332687, 31.694551, 31.649923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067909, 31.398443, 31.602890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113274, -0.056275, 0.991969,
		-0.740941, 0.669951, -0.046602,
		-0.661948, -0.740269, -0.117585,
		32.869324, 31.176363, 31.567614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686150, 31.875071, 31.958300>,  <33.332687, 31.694551, 31.649923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686150, 31.875071, 31.958300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671444, 31.475601, 31.943857>,  <32.662621, 31.235920, 31.935192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671444, 31.475601, 31.943857>,  <32.686150, 31.875071, 31.958300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671444, 31.475601, 31.943857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038378, -0.037514, 0.998559,
		-0.998587, 0.035324, 0.039706,
		-0.036763, -0.998672, -0.036105,
		32.660416, 31.176001, 31.933025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271641, 31.759024, 32.497860>,  <32.686150, 31.875071, 31.958300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271641, 31.759024, 32.497860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504448, 31.448967, 32.399548>,  <32.644131, 31.262932, 32.340561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504448, 31.448967, 32.399548>,  <32.271641, 31.759024, 32.497860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504448, 31.448967, 32.399548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127664, -0.211397, 0.969027,
		-0.803092, -0.595368, -0.024079,
		0.582018, -0.775144, -0.245778,
		32.679054, 31.216423, 32.325813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553558, 31.413599, 33.041744>,  <32.271641, 31.759024, 32.497860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553558, 31.413599, 33.041744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395744, 31.048817, 33.086784>,  <32.301056, 30.829947, 33.113808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395744, 31.048817, 33.086784>,  <32.553558, 31.413599, 33.041744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395744, 31.048817, 33.086784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217862, -0.211880, -0.952703,
		0.892681, -0.351344, 0.282274,
		-0.394534, -0.911956, 0.112596,
		32.277386, 30.775230, 33.120564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049450, 30.847549, 32.955124>,  <32.553558, 31.413599, 33.041744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049450, 30.847549, 32.955124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689465, 30.729372, 32.826889>,  <32.473473, 30.658464, 32.749950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689465, 30.729372, 32.826889>,  <33.049450, 30.847549, 32.955124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689465, 30.729372, 32.826889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333536, 0.006933, -0.942712,
		0.280742, -0.955335, 0.092302,
		-0.899966, -0.295445, -0.320585,
		32.419476, 30.640739, 32.730713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113518, 30.120419, 32.553162>,  <33.049450, 30.847549, 32.955124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113518, 30.120419, 32.553162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822754, 30.378529, 32.459164>,  <32.648296, 30.533396, 32.402763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822754, 30.378529, 32.459164>,  <33.113518, 30.120419, 32.553162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822754, 30.378529, 32.459164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366330, 0.074905, -0.927465,
		-0.580869, -0.760268, -0.290833,
		-0.726907, 0.645277, -0.234998,
		32.604683, 30.572111, 32.388664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672039, 29.884504, 31.950693>,  <33.113518, 30.120419, 32.553162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672039, 29.884504, 31.950693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631813, 30.282454, 31.946373>,  <32.607677, 30.521223, 31.943781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631813, 30.282454, 31.946373>,  <32.672039, 29.884504, 31.950693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631813, 30.282454, 31.946373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041426, -0.015035, -0.999029,
		-0.994068, -0.100017, 0.042726,
		-0.100562, 0.994872, -0.010802,
		32.601643, 30.580915, 31.943132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082085, 30.140709, 31.503065>,  <32.672039, 29.884504, 31.950693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082085, 30.140709, 31.503065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323795, 30.459398, 31.499582>,  <32.468822, 30.650612, 31.497494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323795, 30.459398, 31.499582>,  <32.082085, 30.140709, 31.503065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323795, 30.459398, 31.499582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004348, -0.014223, -0.999889,
		-0.796759, 0.604177, -0.012059,
		0.604281, 0.796724, -0.008706,
		32.505081, 30.698416, 31.496971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794882, 30.597031, 31.097828>,  <32.082085, 30.140709, 31.503065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794882, 30.597031, 31.097828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174141, 30.723194, 31.113501>,  <32.401695, 30.798893, 31.122904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174141, 30.723194, 31.113501>,  <31.794882, 30.597031, 31.097828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174141, 30.723194, 31.113501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042414, 0.247732, -0.967900,
		-0.314989, 0.916049, 0.248265,
		0.948147, 0.315408, 0.039179,
		32.458584, 30.817816, 31.125254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807577, 31.345058, 30.825573>,  <31.794882, 30.597031, 31.097828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807577, 31.345058, 30.825573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166107, 31.174181, 30.778059>,  <32.381226, 31.071653, 30.749550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166107, 31.174181, 30.778059>,  <31.807577, 31.345058, 30.825573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166107, 31.174181, 30.778059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000209, 0.267486, -0.963562,
		0.443402, 0.863687, 0.239665,
		0.896323, -0.427195, -0.118784,
		32.435005, 31.046022, 30.742424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421638, 31.766264, 30.645655>,  <31.807577, 31.345058, 30.825573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421638, 31.766264, 30.645655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487190, 31.399136, 30.501019>,  <32.526520, 31.178858, 30.414238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487190, 31.399136, 30.501019>,  <32.421638, 31.766264, 30.645655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487190, 31.399136, 30.501019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034081, 0.361057, -0.931921,
		0.985892, 0.165043, 0.027888,
		0.163877, -0.917823, -0.361588,
		32.536354, 31.123789, 30.392542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867847, 31.711176, 30.131529>,  <32.421638, 31.766264, 30.645655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867847, 31.711176, 30.131529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677784, 31.375961, 30.024254>,  <32.563747, 31.174833, 29.959888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677784, 31.375961, 30.024254>,  <32.867847, 31.711176, 30.131529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677784, 31.375961, 30.024254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143121, 0.227125, -0.963292,
		0.868184, -0.496097, 0.012021,
		-0.475155, -0.838035, -0.268188,
		32.535236, 31.124552, 29.943798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332554, 31.235264, 29.707523>,  <32.867847, 31.711176, 30.131529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332554, 31.235264, 29.707523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943909, 31.205076, 29.617842>,  <32.710720, 31.186964, 29.564034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943909, 31.205076, 29.617842>,  <33.332554, 31.235264, 29.707523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943909, 31.205076, 29.617842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203365, 0.217717, -0.954590,
		0.120855, -0.973090, -0.196190,
		-0.971615, -0.075469, -0.224204,
		32.652424, 31.182436, 29.550581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250484, 30.777885, 29.096714>,  <33.332554, 31.235264, 29.707523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250484, 30.777885, 29.096714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973885, 31.061998, 29.149368>,  <32.807926, 31.232466, 29.180962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973885, 31.061998, 29.149368>,  <33.250484, 30.777885, 29.096714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973885, 31.061998, 29.149368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118978, 0.291722, -0.949075,
		-0.712512, -0.640622, -0.286233,
		-0.691499, 0.710283, 0.131635,
		32.766434, 31.275084, 29.188858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764912, 30.681412, 28.539089>,  <33.250484, 30.777885, 29.096714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764912, 30.681412, 28.539089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750507, 31.061958, 28.661469>,  <32.741863, 31.290287, 28.734896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750507, 31.061958, 28.661469>,  <32.764912, 30.681412, 28.539089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750507, 31.061958, 28.661469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227814, 0.305904, -0.924405,
		-0.973038, 0.036408, -0.227752,
		-0.036015, 0.951366, 0.305950,
		32.739704, 31.347368, 28.753254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495686, 31.065296, 27.987829>,  <32.764912, 30.681412, 28.539089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495686, 31.065296, 27.987829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682697, 31.339058, 28.211618>,  <32.794903, 31.503315, 28.345892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682697, 31.339058, 28.211618>,  <32.495686, 31.065296, 27.987829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682697, 31.339058, 28.211618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335144, 0.448414, -0.828615,
		-0.817984, 0.574902, -0.019730,
		0.467526, 0.684406, 0.559471,
		32.822956, 31.544380, 28.379459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407650, 31.742817, 27.677423>,  <32.495686, 31.065296, 27.987829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407650, 31.742817, 27.677423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731606, 31.798155, 27.905436>,  <32.925980, 31.831358, 28.042244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731606, 31.798155, 27.905436>,  <32.407650, 31.742817, 27.677423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731606, 31.798155, 27.905436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478457, 0.406387, -0.778414,
		-0.339344, 0.903167, 0.262937,
		0.809892, 0.138346, 0.570032,
		32.974571, 31.839659, 28.076445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603764, 32.463531, 27.576260>,  <32.407650, 31.742817, 27.677423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603764, 32.463531, 27.576260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929836, 32.281193, 27.719189>,  <33.125481, 32.171791, 27.804947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929836, 32.281193, 27.719189>,  <32.603764, 32.463531, 27.576260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929836, 32.281193, 27.719189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553761, 0.432543, -0.711516,
		0.169785, 0.777888, 0.605032,
		0.815182, -0.455848, 0.357324,
		33.174393, 32.144440, 27.826385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098881, 32.950005, 27.497366>,  <32.603764, 32.463531, 27.576260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098881, 32.950005, 27.497366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360027, 32.655502, 27.568567>,  <33.516716, 32.478802, 27.611288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360027, 32.655502, 27.568567>,  <33.098881, 32.950005, 27.497366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360027, 32.655502, 27.568567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645785, 0.418200, -0.638804,
		0.395886, 0.532006, 0.748495,
		0.652868, -0.736260, 0.178002,
		33.555889, 32.434624, 27.621967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736229, 33.335423, 27.743809>,  <33.098881, 32.950005, 27.497366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736229, 33.335423, 27.743809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829628, 32.972267, 27.604538>,  <33.885666, 32.754375, 27.520975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829628, 32.972267, 27.604538>,  <33.736229, 33.335423, 27.743809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829628, 32.972267, 27.604538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752930, 0.395396, -0.526078,
		0.615285, -0.139313, 0.775897,
		0.233497, -0.907884, -0.348175,
		33.899677, 32.699902, 27.500086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406963, 33.349510, 27.692289>,  <33.736229, 33.335423, 27.743809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406963, 33.349510, 27.692289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305988, 33.044952, 27.453442>,  <34.245403, 32.862217, 27.310133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305988, 33.044952, 27.453442>,  <34.406963, 33.349510, 27.692289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305988, 33.044952, 27.453442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544349, 0.398445, -0.738191,
		0.799974, -0.511393, 0.313879,
		-0.252442, -0.761393, -0.597122,
		34.230255, 32.816536, 27.274305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996490, 33.142117, 27.369106>,  <34.406963, 33.349510, 27.692289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996490, 33.142117, 27.369106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714058, 32.994553, 27.127327>,  <34.544598, 32.906013, 26.982260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714058, 32.994553, 27.127327>,  <34.996490, 33.142117, 27.369106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714058, 32.994553, 27.127327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425755, 0.460916, -0.778646,
		0.565847, -0.807134, -0.168380,
		-0.706080, -0.368906, -0.604449,
		34.502235, 32.883881, 26.945992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347248, 32.805046, 26.777956>,  <34.996490, 33.142117, 27.369106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347248, 32.805046, 26.777956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985771, 32.944416, 26.678408>,  <34.768887, 33.028038, 26.618679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985771, 32.944416, 26.678408>,  <35.347248, 32.805046, 26.777956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985771, 32.944416, 26.678408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402178, 0.491254, -0.772607,
		-0.146937, -0.798291, -0.584072,
		-0.903694, 0.348426, -0.248872,
		34.714664, 33.048943, 26.603746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313980, 32.692406, 26.080254>,  <35.347248, 32.805046, 26.777956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313980, 32.692406, 26.080254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037228, 32.968754, 26.164150>,  <34.871174, 33.134563, 26.214489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037228, 32.968754, 26.164150>,  <35.313980, 32.692406, 26.080254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037228, 32.968754, 26.164150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458165, 0.644632, -0.611992,
		-0.558015, -0.327332, -0.762544,
		-0.691885, 0.690872, 0.209742,
		34.829662, 33.176014, 26.227074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297096, 32.993137, 25.486120>,  <35.313980, 32.692406, 26.080254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297096, 32.993137, 25.486120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104656, 33.236099, 25.738977>,  <34.989193, 33.381874, 25.890692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104656, 33.236099, 25.738977>,  <35.297096, 32.993137, 25.486120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104656, 33.236099, 25.738977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383804, 0.794235, -0.471047,
		-0.788185, 0.015998, -0.615230,
		-0.481102, 0.607400, 0.632144,
		34.960327, 33.418320, 25.928621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779003, 33.455997, 25.049852>,  <35.297096, 32.993137, 25.486120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779003, 33.455997, 25.049852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864456, 33.651382, 25.388264>,  <34.915730, 33.768612, 25.591311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864456, 33.651382, 25.388264>,  <34.779003, 33.455997, 25.049852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864456, 33.651382, 25.388264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098212, 0.850896, -0.516072,
		-0.971964, 0.193341, 0.133809,
		0.213636, 0.488462, 0.846029,
		34.928547, 33.797920, 25.642073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271023, 34.004646, 25.191118>,  <34.779003, 33.455997, 25.049852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271023, 34.004646, 25.191118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611122, 34.119839, 25.367361>,  <34.815182, 34.188953, 25.473106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611122, 34.119839, 25.367361>,  <34.271023, 34.004646, 25.191118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611122, 34.119839, 25.367361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026777, 0.859643, -0.510193,
		-0.525694, 0.421995, 0.738624,
		0.850252, 0.287984, 0.440609,
		34.866199, 34.206234, 25.499544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064613, 34.610725, 25.457796>,  <34.271023, 34.004646, 25.191118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064613, 34.610725, 25.457796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463634, 34.601170, 25.431496>,  <34.703045, 34.595436, 25.415716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463634, 34.601170, 25.431496>,  <34.064613, 34.610725, 25.457796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463634, 34.601170, 25.431496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026357, 0.742280, -0.669571,
		0.064803, 0.669663, 0.739832,
		0.997550, -0.023890, -0.065752,
		34.762901, 34.594002, 25.411770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339436, 35.293041, 25.554665>,  <34.064613, 34.610725, 25.457796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339436, 35.293041, 25.554665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637337, 35.128529, 25.344452>,  <34.816078, 35.029819, 25.218325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637337, 35.128529, 25.344452>,  <34.339436, 35.293041, 25.554665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637337, 35.128529, 25.344452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088936, 0.841655, -0.532642,
		0.661383, 0.349950, 0.663406,
		0.744757, -0.411281, -0.525533,
		34.860764, 35.005146, 25.186792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628159, 35.872936, 25.224226>,  <34.339436, 35.293041, 25.554665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628159, 35.872936, 25.224226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767780, 35.556534, 25.023241>,  <34.851551, 35.366692, 24.902651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767780, 35.556534, 25.023241>,  <34.628159, 35.872936, 25.224226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767780, 35.556534, 25.023241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058187, 0.516857, -0.854092,
		0.935296, 0.327357, 0.134383,
		0.349050, -0.791010, -0.502462,
		34.872494, 35.319229, 24.872503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170563, 36.195938, 24.817604>,  <34.628159, 35.872936, 25.224226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170563, 36.195938, 24.817604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065540, 35.850338, 24.645761>,  <35.002529, 35.642979, 24.542656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065540, 35.850338, 24.645761>,  <35.170563, 36.195938, 24.817604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065540, 35.850338, 24.645761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014044, 0.441759, -0.897024,
		0.964816, -0.241549, -0.103851,
		-0.262552, -0.864004, -0.429609,
		34.986774, 35.591137, 24.516878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709618, 35.951221, 24.405293>,  <35.170563, 36.195938, 24.817604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709618, 35.951221, 24.405293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393475, 35.757805, 24.254816>,  <35.203789, 35.641754, 24.164530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393475, 35.757805, 24.254816>,  <35.709618, 35.951221, 24.405293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393475, 35.757805, 24.254816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137118, 0.458849, -0.877870,
		0.597104, -0.745414, -0.296352,
		-0.790358, -0.483545, -0.376190,
		35.156368, 35.612743, 24.141958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879360, 35.865601, 23.672218>,  <35.709618, 35.951221, 24.405293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879360, 35.865601, 23.672218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491554, 35.768967, 23.655857>,  <35.258869, 35.710987, 23.646040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491554, 35.768967, 23.655857>,  <35.879360, 35.865601, 23.672218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491554, 35.768967, 23.655857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064543, 0.412845, -0.908512,
		0.236365, -0.878179, -0.415853,
		-0.969519, -0.241581, -0.040902,
		35.200699, 35.696491, 23.643587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734783, 35.474934, 22.958990>,  <35.879360, 35.865601, 23.672218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734783, 35.474934, 22.958990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398285, 35.630844, 23.108854>,  <35.196384, 35.724392, 23.198772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398285, 35.630844, 23.108854>,  <35.734783, 35.474934, 22.958990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398285, 35.630844, 23.108854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103208, 0.564463, -0.818981,
		-0.530705, -0.727635, -0.434625,
		-0.841249, 0.389781, 0.374661,
		35.145908, 35.747780, 23.221252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402195, 35.452225, 22.385866>,  <35.734783, 35.474934, 22.958990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402195, 35.452225, 22.385866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162647, 35.683990, 22.607004>,  <35.018917, 35.823051, 22.739687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162647, 35.683990, 22.607004>,  <35.402195, 35.452225, 22.385866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162647, 35.683990, 22.607004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316150, 0.463211, -0.827940,
		-0.735803, -0.670609, -0.094221,
		-0.598868, 0.579413, 0.552845,
		34.982986, 35.857815, 22.772858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711071, 35.321407, 22.194633>,  <35.402195, 35.452225, 22.385866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711071, 35.321407, 22.194633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718330, 35.686813, 22.357197>,  <34.722687, 35.906055, 22.454735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718330, 35.686813, 22.357197>,  <34.711071, 35.321407, 22.194633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718330, 35.686813, 22.357197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149842, 0.404368, -0.902238,
		-0.988543, -0.044522, 0.144221,
		0.018149, 0.913512, 0.406407,
		34.723774, 35.960869, 22.479118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147743, 35.712872, 21.934301>,  <34.711071, 35.321407, 22.194633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147743, 35.712872, 21.934301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399456, 35.996887, 22.060701>,  <34.550484, 36.167297, 22.136541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399456, 35.996887, 22.060701>,  <34.147743, 35.712872, 21.934301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399456, 35.996887, 22.060701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158923, 0.515572, -0.841979,
		-0.760757, 0.479620, 0.437280,
		0.629279, 0.710035, 0.316002,
		34.588242, 36.209896, 22.155502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749966, 36.312733, 21.800339>,  <34.147743, 35.712872, 21.934301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749966, 36.312733, 21.800339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141464, 36.393349, 21.815495>,  <34.376362, 36.441719, 21.824589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141464, 36.393349, 21.815495>,  <33.749966, 36.312733, 21.800339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141464, 36.393349, 21.815495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094218, 0.606043, -0.789832,
		-0.182146, 0.769476, 0.612152,
		0.978747, 0.201541, 0.037890,
		34.435089, 36.453812, 21.826862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717930, 37.003918, 21.563831>,  <33.749966, 36.312733, 21.800339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717930, 37.003918, 21.563831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103611, 36.899139, 21.547327>,  <34.335018, 36.836273, 21.537424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103611, 36.899139, 21.547327>,  <33.717930, 37.003918, 21.563831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103611, 36.899139, 21.547327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151062, 0.670462, -0.726402,
		0.217946, 0.694163, 0.686030,
		0.964199, -0.261950, -0.041263,
		34.392872, 36.820553, 21.534948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137913, 37.656639, 21.777740>,  <33.717930, 37.003918, 21.563831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137913, 37.656639, 21.777740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354168, 37.412926, 21.545713>,  <34.483921, 37.266697, 21.406496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354168, 37.412926, 21.545713>,  <34.137913, 37.656639, 21.777740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354168, 37.412926, 21.545713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278786, 0.780328, -0.559792,
		0.793715, 0.140932, 0.591738,
		0.540642, -0.609284, -0.580069,
		34.516361, 37.230141, 21.371693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786758, 37.994324, 21.787516>,  <34.137913, 37.656639, 21.777740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786758, 37.994324, 21.787516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815655, 37.743916, 21.476933>,  <34.832993, 37.593670, 21.290583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815655, 37.743916, 21.476933>,  <34.786758, 37.994324, 21.787516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815655, 37.743916, 21.476933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311414, 0.753727, -0.578719,
		0.947524, -0.199993, 0.249400,
		0.072239, -0.626017, -0.776456,
		34.837326, 37.556110, 21.243996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461521, 38.146206, 21.448219>,  <34.786758, 37.994324, 21.787516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461521, 38.146206, 21.448219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227749, 37.976673, 21.171436>,  <35.087486, 37.874954, 21.005365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227749, 37.976673, 21.171436>,  <35.461521, 38.146206, 21.448219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227749, 37.976673, 21.171436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257017, 0.712158, -0.653279,
		0.769663, -0.559642, -0.307277,
		-0.584432, -0.423829, -0.691960,
		35.052418, 37.849525, 20.963848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890846, 38.069210, 20.795332>,  <35.461521, 38.146206, 21.448219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890846, 38.069210, 20.795332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500858, 38.066822, 20.706436>,  <35.266865, 38.065392, 20.653099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500858, 38.066822, 20.706436>,  <35.890846, 38.069210, 20.795332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500858, 38.066822, 20.706436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135181, 0.777704, -0.613925,
		0.176497, -0.628603, -0.757435,
		-0.974974, -0.005965, -0.222238,
		35.208366, 38.065033, 20.639765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973316, 38.232594, 20.138845>,  <35.890846, 38.069210, 20.795332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973316, 38.232594, 20.138845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600494, 38.305927, 20.263849>,  <35.376801, 38.349926, 20.338852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600494, 38.305927, 20.263849>,  <35.973316, 38.232594, 20.138845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600494, 38.305927, 20.263849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028382, 0.822933, -0.567429,
		-0.361205, -0.537744, -0.761815,
		-0.932055, 0.183336, 0.312509,
		35.320877, 38.360928, 20.357601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635159, 38.493107, 19.593117>,  <35.973316, 38.232594, 20.138845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635159, 38.493107, 19.593117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360817, 38.623341, 19.853453>,  <35.196213, 38.701481, 20.009655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360817, 38.623341, 19.853453>,  <35.635159, 38.493107, 19.593117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360817, 38.623341, 19.853453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010967, 0.898859, -0.438101,
		-0.727652, -0.293338, -0.620061,
		-0.685858, 0.325586, 0.650840,
		35.155060, 38.721016, 20.048704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211979, 38.960709, 19.212236>,  <35.635159, 38.493107, 19.593117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211979, 38.960709, 19.212236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147846, 39.049534, 19.596941>,  <35.109367, 39.102829, 19.827763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147846, 39.049534, 19.596941>,  <35.211979, 38.960709, 19.212236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147846, 39.049534, 19.596941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148843, 0.957785, -0.245957,
		-0.975776, -0.182585, -0.120510,
		-0.160331, 0.222061, 0.961760,
		35.099747, 39.116154, 19.885469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670319, 39.571426, 19.265169>,  <35.211979, 38.960709, 19.212236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670319, 39.571426, 19.265169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864807, 39.555828, 19.614355>,  <34.981503, 39.546471, 19.823866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864807, 39.555828, 19.614355>,  <34.670319, 39.571426, 19.265169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864807, 39.555828, 19.614355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152861, 0.987395, -0.041036,
		-0.860360, 0.153395, 0.486056,
		0.486224, -0.038993, 0.872964,
		35.010674, 39.544128, 19.876244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288353, 39.978951, 19.697985>,  <34.670319, 39.571426, 19.265169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288353, 39.978951, 19.697985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657661, 39.950432, 19.848972>,  <34.879246, 39.933319, 19.939566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657661, 39.950432, 19.848972>,  <34.288353, 39.978951, 19.697985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657661, 39.950432, 19.848972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044723, 0.995893, 0.078725,
		-0.381533, -0.055803, 0.922669,
		0.923273, -0.071301, 0.377471,
		34.934643, 39.929043, 19.962214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293293, 40.334541, 20.377556>,  <34.288353, 39.978951, 19.697985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293293, 40.334541, 20.377556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672939, 40.317158, 20.252792>,  <34.900726, 40.306728, 20.177935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672939, 40.317158, 20.252792>,  <34.293293, 40.334541, 20.377556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672939, 40.317158, 20.252792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082291, 0.990248, 0.112419,
		0.303982, -0.132366, 0.943438,
		0.949117, -0.043463, -0.311910,
		34.957676, 40.304119, 20.159220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629082, 40.711868, 20.808691>,  <34.293293, 40.334541, 20.377556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629082, 40.711868, 20.808691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874397, 40.734768, 20.493578>,  <35.021587, 40.748508, 20.304510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874397, 40.734768, 20.493578>,  <34.629082, 40.711868, 20.808691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874397, 40.734768, 20.493578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137600, 0.974375, 0.177929,
		0.777784, -0.217520, 0.589693,
		0.613286, 0.057249, -0.787784,
		35.058384, 40.751942, 20.257242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206203, 40.927673, 21.109411>,  <34.629082, 40.711868, 20.808691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206203, 40.927673, 21.109411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248554, 41.012169, 20.720737>,  <35.273964, 41.062866, 20.487534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248554, 41.012169, 20.720737>,  <35.206203, 40.927673, 21.109411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248554, 41.012169, 20.720737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342130, 0.909776, 0.235062,
		0.933669, -0.357330, 0.024052,
		0.105877, 0.211241, -0.971683,
		35.280315, 41.075542, 20.429234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740517, 41.457867, 21.167486>,  <35.206203, 40.927673, 21.109411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740517, 41.457867, 21.167486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598877, 41.518246, 20.798307>,  <35.513893, 41.554474, 20.576801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598877, 41.518246, 20.798307>,  <35.740517, 41.457867, 21.167486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598877, 41.518246, 20.798307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201018, 0.976105, 0.082524,
		0.913349, -0.156307, -0.375980,
		-0.354097, 0.150952, -0.922946,
		35.492649, 41.563530, 20.521423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288971, 41.843975, 20.760775>,  <35.740517, 41.457867, 21.167486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288971, 41.843975, 20.760775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942642, 41.890602, 20.566139>,  <35.734844, 41.918579, 20.449358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942642, 41.890602, 20.566139>,  <36.288971, 41.843975, 20.760775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942642, 41.890602, 20.566139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107999, 0.993099, 0.045729,
		0.488562, -0.012959, -0.872433,
		-0.865819, 0.116563, -0.486590,
		35.682896, 41.925571, 20.420162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438896, 42.334595, 20.366249>,  <36.288971, 41.843975, 20.760775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438896, 42.334595, 20.366249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040417, 42.369164, 20.370440>,  <35.801327, 42.389904, 20.372953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040417, 42.369164, 20.370440>,  <36.438896, 42.334595, 20.366249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040417, 42.369164, 20.370440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086193, 0.962224, 0.258256,
		0.012240, 0.258179, -0.966020,
		-0.996203, 0.086425, 0.010475,
		35.741554, 42.395092, 20.373583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301369, 42.951984, 20.104153>,  <36.438896, 42.334595, 20.366249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301369, 42.951984, 20.104153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964317, 42.847862, 20.292713>,  <35.762085, 42.785389, 20.405849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964317, 42.847862, 20.292713>,  <36.301369, 42.951984, 20.104153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964317, 42.847862, 20.292713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115100, 0.942237, 0.314551,
		-0.526050, 0.210791, -0.823916,
		-0.842629, -0.260302, 0.471401,
		35.711529, 42.769772, 20.434134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862293, 43.532528, 19.956848>,  <36.301369, 42.951984, 20.104153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862293, 43.532528, 19.956848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674698, 43.354973, 20.262268>,  <35.562141, 43.248440, 20.445520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674698, 43.354973, 20.262268>,  <35.862293, 43.532528, 19.956848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674698, 43.354973, 20.262268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362828, 0.885037, 0.291658,
		-0.805235, -0.140252, -0.576130,
		-0.468991, -0.443889, 0.763551,
		35.534000, 43.221806, 20.491333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962677, 43.687092, 20.035034>,  <35.862293, 43.532528, 19.956848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962677, 43.687092, 20.035034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179367, 43.595428, 20.358521>,  <35.309380, 43.540428, 20.552612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179367, 43.595428, 20.358521>,  <34.962677, 43.687092, 20.035034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179367, 43.595428, 20.358521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391088, 0.782919, 0.483826,
		-0.744033, -0.578379, 0.334504,
		0.541724, -0.229162, 0.808715,
		35.341885, 43.526680, 20.601135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508434, 43.668991, 20.752832>,  <34.962677, 43.687092, 20.035034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508434, 43.668991, 20.752832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403896, 43.874226, 21.079865>,  <34.341171, 43.997368, 21.276083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403896, 43.874226, 21.079865>,  <34.508434, 43.668991, 20.752832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403896, 43.874226, 21.079865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003767, 0.847555, -0.530694,
		-0.965237, -0.135616, -0.223440,
		-0.261348, 0.513088, 0.817581,
		34.325493, 44.028152, 21.325138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865616, 44.168968, 20.597078>,  <34.508434, 43.668991, 20.752832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865616, 44.168968, 20.597078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079697, 44.325382, 20.896584>,  <34.208145, 44.419231, 21.076286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079697, 44.325382, 20.896584>,  <33.865616, 44.168968, 20.597078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079697, 44.325382, 20.896584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071461, 0.862263, -0.501394,
		-0.841695, 0.321855, 0.433542,
		0.535203, 0.391039, 0.748763,
		34.240257, 44.442696, 21.121212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586067, 44.869080, 20.672136>,  <33.865616, 44.168968, 20.597078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586067, 44.869080, 20.672136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931099, 44.895523, 20.872770>,  <34.138119, 44.911388, 20.993151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931099, 44.895523, 20.872770>,  <33.586067, 44.869080, 20.672136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931099, 44.895523, 20.872770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229939, 0.831883, -0.505074,
		-0.450654, 0.550999, 0.702361,
		0.862577, 0.066113, 0.501587,
		34.189873, 44.915356, 21.023247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237991, 45.227787, 20.462166>,  <33.586067, 44.869080, 20.672136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237991, 45.227787, 20.462166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377029, 45.314888, 20.826969>,  <34.460453, 45.367149, 21.045851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377029, 45.314888, 20.826969>,  <34.237991, 45.227787, 20.462166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377029, 45.314888, 20.826969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613972, 0.682276, -0.396910,
		-0.708670, 0.697913, 0.103465,
		0.347600, 0.217754, 0.912007,
		34.481308, 45.380215, 21.100571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637066, 45.816444, 20.224964>,  <34.237991, 45.227787, 20.462166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637066, 45.816444, 20.224964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706017, 46.107349, 20.490707>,  <34.747387, 46.281891, 20.650154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706017, 46.107349, 20.490707>,  <34.637066, 45.816444, 20.224964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706017, 46.107349, 20.490707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780469, -0.512319, 0.358325,
		0.600961, 0.456746, -0.655919,
		0.172377, 0.727263, 0.664360,
		34.757729, 46.325527, 20.690016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267578, 45.407612, 20.211136>,  <34.637066, 45.816444, 20.224964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267578, 45.407612, 20.211136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057621, 45.545834, 20.522284>,  <34.931644, 45.628765, 20.708973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057621, 45.545834, 20.522284>,  <35.267578, 45.407612, 20.211136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057621, 45.545834, 20.522284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017406, -0.918052, 0.396078,
		0.850989, 0.194360, 0.487896,
		-0.524896, 0.345550, 0.777868,
		34.900154, 45.649498, 20.755644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559864, 45.252129, 20.816418>,  <35.267578, 45.407612, 20.211136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559864, 45.252129, 20.816418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173187, 45.281349, 20.914539>,  <34.941181, 45.298882, 20.973412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173187, 45.281349, 20.914539>,  <35.559864, 45.252129, 20.816418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173187, 45.281349, 20.914539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015222, -0.940300, 0.340006,
		0.255495, 0.332414, 0.907867,
		-0.966691, 0.073050, 0.245302,
		34.883179, 45.303265, 20.988131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393532, 44.845169, 21.510649>,  <35.559864, 45.252129, 20.816418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393532, 44.845169, 21.510649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017582, 44.869514, 21.376228>,  <34.792011, 44.884121, 21.295576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017582, 44.869514, 21.376228>,  <35.393532, 44.845169, 21.510649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017582, 44.869514, 21.376228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206301, -0.885351, 0.416645,
		-0.272164, 0.460922, 0.844676,
		-0.939876, 0.060862, -0.336049,
		34.735619, 44.887772, 21.275414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895336, 44.838852, 22.149399>,  <35.393532, 44.845169, 21.510649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895336, 44.838852, 22.149399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724983, 44.721687, 21.806976>,  <34.622772, 44.651390, 21.601522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724983, 44.721687, 21.806976>,  <34.895336, 44.838852, 22.149399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724983, 44.721687, 21.806976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248292, -0.871989, 0.421883,
		-0.870045, 0.392223, 0.298635,
		-0.425879, -0.292909, -0.856056,
		34.597218, 44.633816, 21.550159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130619, 44.798977, 22.197327>,  <34.895336, 44.838852, 22.149399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130619, 44.798977, 22.197327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330647, 44.537472, 21.970161>,  <34.450661, 44.380569, 21.833862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330647, 44.537472, 21.970161>,  <34.130619, 44.798977, 22.197327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330647, 44.537472, 21.970161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528970, -0.749835, 0.397414,
		-0.685657, 0.101676, -0.720789,
		0.500066, -0.653765, -0.567913,
		34.480667, 44.341343, 21.799788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697659, 44.370003, 22.045416>,  <34.130619, 44.798977, 22.197327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697659, 44.370003, 22.045416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033657, 44.157761, 22.000051>,  <34.235256, 44.030415, 21.972832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033657, 44.157761, 22.000051>,  <33.697659, 44.370003, 22.045416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033657, 44.157761, 22.000051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417731, -0.765814, 0.488907,
		-0.346267, -0.363306, -0.864932,
		0.840000, -0.530601, -0.113412,
		34.285656, 43.998581, 21.966028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506325, 43.679852, 21.890017>,  <33.697659, 44.370003, 22.045416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506325, 43.679852, 21.890017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876335, 43.667728, 22.041498>,  <34.098339, 43.660454, 22.132387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876335, 43.667728, 22.041498>,  <33.506325, 43.679852, 21.890017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876335, 43.667728, 22.041498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268786, -0.756676, 0.595982,
		0.268492, -0.653087, -0.708089,
		0.925022, -0.030308, 0.378702,
		34.153843, 43.658634, 22.155109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650963, 42.897583, 21.887995>,  <33.506325, 43.679852, 21.890017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650963, 42.897583, 21.887995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904957, 43.066261, 22.146906>,  <34.057354, 43.167469, 22.302252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904957, 43.066261, 22.146906>,  <33.650963, 42.897583, 21.887995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904957, 43.066261, 22.146906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183277, -0.731717, 0.656505,
		0.750467, -0.535503, -0.387344,
		0.634986, 0.421694, 0.647276,
		34.095451, 43.192768, 22.341089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965000, 42.325245, 22.159300>,  <33.650963, 42.897583, 21.887995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965000, 42.325245, 22.159300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041588, 42.628574, 22.408548>,  <34.087540, 42.810574, 22.558098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041588, 42.628574, 22.408548>,  <33.965000, 42.325245, 22.159300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041588, 42.628574, 22.408548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082277, -0.620233, 0.780090,
		0.978045, -0.200630, -0.056361,
		0.191466, 0.758326, 0.623123,
		34.099030, 42.856071, 22.595486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515476, 42.131279, 22.583540>,  <33.965000, 42.325245, 22.159300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515476, 42.131279, 22.583540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330677, 42.424683, 22.782946>,  <34.219795, 42.600723, 22.902590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330677, 42.424683, 22.782946>,  <34.515476, 42.131279, 22.583540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330677, 42.424683, 22.782946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013755, -0.556106, 0.830997,
		0.886772, 0.390780, 0.246833,
		-0.462002, 0.733510, 0.498514,
		34.192078, 42.644737, 22.932501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867039, 42.190990, 23.216480>,  <34.515476, 42.131279, 22.583540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867039, 42.190990, 23.216480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499954, 42.341003, 23.268862>,  <34.279701, 42.431011, 23.300291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499954, 42.341003, 23.268862>,  <34.867039, 42.190990, 23.216480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499954, 42.341003, 23.268862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044214, -0.424047, 0.904560,
		0.394771, 0.824339, 0.405736,
		-0.917715, 0.375034, 0.130954,
		34.224640, 42.453514, 23.308147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937504, 42.296196, 23.930119>,  <34.867039, 42.190990, 23.216480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937504, 42.296196, 23.930119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543930, 42.334133, 23.869623>,  <34.307785, 42.356895, 23.833326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543930, 42.334133, 23.869623>,  <34.937504, 42.296196, 23.930119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543930, 42.334133, 23.869623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173909, -0.318054, 0.931986,
		0.040288, 0.943317, 0.329439,
		-0.983937, 0.094840, -0.151238,
		34.248749, 42.362587, 23.824251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676739, 42.593494, 24.511885>,  <34.937504, 42.296196, 23.930119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676739, 42.593494, 24.511885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334538, 42.462849, 24.351168>,  <34.129215, 42.384460, 24.254738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334538, 42.462849, 24.351168>,  <34.676739, 42.593494, 24.511885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334538, 42.462849, 24.351168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188896, -0.525631, 0.829476,
		-0.482110, 0.785517, 0.387985,
		-0.855504, -0.326610, -0.401793,
		34.077885, 42.364864, 24.230629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177616, 42.728539, 24.988962>,  <34.676739, 42.593494, 24.511885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177616, 42.728539, 24.988962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034420, 42.443939, 24.747097>,  <33.948502, 42.273182, 24.601978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034420, 42.443939, 24.747097>,  <34.177616, 42.728539, 24.988962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034420, 42.443939, 24.747097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188102, -0.579352, 0.793076,
		-0.914582, 0.397651, 0.073569,
		-0.357990, -0.711495, -0.604664,
		33.927025, 42.230492, 24.565699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438629, 42.577488, 25.131712>,  <34.177616, 42.728539, 24.988962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438629, 42.577488, 25.131712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579990, 42.243874, 24.962246>,  <33.664806, 42.043705, 24.860567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579990, 42.243874, 24.962246>,  <33.438629, 42.577488, 25.131712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579990, 42.243874, 24.962246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349970, -0.537880, 0.766947,
		-0.867540, -0.122773, -0.481976,
		0.353405, -0.834034, -0.423665,
		33.686012, 41.993664, 24.835146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835617, 41.940479, 25.136370>,  <33.438629, 42.577488, 25.131712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835617, 41.940479, 25.136370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191807, 41.769157, 25.074903>,  <33.405521, 41.666363, 25.038025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191807, 41.769157, 25.074903>,  <32.835617, 41.940479, 25.136370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191807, 41.769157, 25.074903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208643, -0.684414, 0.698603,
		-0.404387, -0.590025, -0.698815,
		0.890471, -0.428309, -0.153663,
		33.458946, 41.640663, 25.028805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646313, 41.266533, 24.975857>,  <32.835617, 41.940479, 25.136370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646313, 41.266533, 24.975857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012959, 41.296535, 25.132921>,  <33.232948, 41.314537, 25.227160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012959, 41.296535, 25.132921>,  <32.646313, 41.266533, 24.975857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012959, 41.296535, 25.132921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163631, -0.825788, 0.539722,
		0.364740, -0.558971, -0.744658,
		0.916618, 0.075009, 0.392663,
		33.287945, 41.319038, 25.250721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834972, 40.508595, 24.950506>,  <32.646313, 41.266533, 24.975857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834972, 40.508595, 24.950506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123821, 40.662983, 25.180136>,  <33.297131, 40.755615, 25.317913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123821, 40.662983, 25.180136>,  <32.834972, 40.508595, 24.950506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123821, 40.662983, 25.180136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003133, -0.828039, 0.560662,
		0.691757, -0.406665, -0.596737,
		0.722123, 0.385972, 0.574076,
		33.340458, 40.778774, 25.352358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327972, 39.954353, 25.009516>,  <32.834972, 40.508595, 24.950506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327972, 39.954353, 25.009516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405941, 40.211300, 25.305994>,  <33.452721, 40.365467, 25.483881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405941, 40.211300, 25.305994>,  <33.327972, 39.954353, 25.009516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405941, 40.211300, 25.305994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058718, -0.761979, 0.644935,
		0.979061, -0.082187, -0.186241,
		0.194917, 0.642366, 0.741197,
		33.464417, 40.404011, 25.528353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903275, 39.646240, 25.365187>,  <33.327972, 39.954353, 25.009516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903275, 39.646240, 25.365187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709824, 39.900780, 25.605572>,  <33.593754, 40.053505, 25.749804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709824, 39.900780, 25.605572>,  <33.903275, 39.646240, 25.365187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709824, 39.900780, 25.605572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089947, -0.719100, 0.689060,
		0.870639, 0.279196, 0.405017,
		-0.483630, 0.636352, 0.600964,
		33.564735, 40.091686, 25.785860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047356, 39.470192, 26.040571>,  <33.903275, 39.646240, 25.365187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047356, 39.470192, 26.040571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721539, 39.689857, 26.115337>,  <33.526047, 39.821655, 26.160196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721539, 39.689857, 26.115337>,  <34.047356, 39.470192, 26.040571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721539, 39.689857, 26.115337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262191, -0.635943, 0.725832,
		0.517466, 0.542216, 0.661990,
		-0.814546, 0.549161, 0.186915,
		33.477177, 39.854607, 26.171412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016575, 39.449768, 26.797686>,  <34.047356, 39.470192, 26.040571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016575, 39.449768, 26.797686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648907, 39.543098, 26.670761>,  <33.428307, 39.599094, 26.594606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648907, 39.543098, 26.670761>,  <34.016575, 39.449768, 26.797686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648907, 39.543098, 26.670761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386066, -0.693223, 0.608600,
		-0.077969, 0.681911, 0.727268,
		-0.919170, 0.233321, -0.317313,
		33.373158, 39.613094, 26.575567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627914, 39.190514, 27.326468>,  <34.016575, 39.449768, 26.797686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627914, 39.190514, 27.326468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347469, 39.233997, 27.044580>,  <33.179203, 39.260086, 26.875448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347469, 39.233997, 27.044580>,  <33.627914, 39.190514, 27.326468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347469, 39.233997, 27.044580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469955, -0.813735, 0.342021,
		-0.536274, 0.570980, 0.621605,
		-0.701108, 0.108709, -0.704719,
		33.137138, 39.266609, 26.833164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988476, 39.143749, 27.684875>,  <33.627914, 39.190514, 27.326468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988476, 39.143749, 27.684875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899811, 39.083359, 27.299530>,  <32.846611, 39.047123, 27.068323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899811, 39.083359, 27.299530>,  <32.988476, 39.143749, 27.684875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899811, 39.083359, 27.299530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628392, -0.733332, 0.259515,
		-0.745647, 0.662895, 0.067678,
		-0.221662, -0.150978, -0.963365,
		32.833313, 39.038067, 27.010521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239895, 39.240643, 27.583193>,  <32.988476, 39.143749, 27.684875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239895, 39.240643, 27.583193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384434, 39.000771, 27.297590>,  <32.471157, 38.856846, 27.126228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384434, 39.000771, 27.297590>,  <32.239895, 39.240643, 27.583193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384434, 39.000771, 27.297590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691554, -0.686002, 0.226173,
		-0.625442, 0.412047, -0.662600,
		0.361352, -0.599682, -0.714008,
		32.492840, 38.820866, 27.083387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748987, 38.794559, 27.547819>,  <32.239895, 39.240643, 27.583193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748987, 38.794559, 27.547819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033039, 38.623711, 27.323933>,  <32.203468, 38.521202, 27.189600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033039, 38.623711, 27.323933>,  <31.748987, 38.794559, 27.547819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033039, 38.623711, 27.323933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410123, -0.897115, 0.164266,
		-0.572291, 0.112903, -0.812241,
		0.710128, -0.427127, -0.559716,
		32.246078, 38.495571, 27.156017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411509, 38.312073, 26.938807>,  <31.748987, 38.794559, 27.547819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411509, 38.312073, 26.938807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784876, 38.192116, 27.017591>,  <32.008896, 38.120140, 27.064861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784876, 38.192116, 27.017591>,  <31.411509, 38.312073, 26.938807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784876, 38.192116, 27.017591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306519, -0.951859, 0.003321,
		0.186482, -0.063472, -0.980406,
		0.933419, -0.299894, 0.196960,
		32.064903, 38.102146, 27.076679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547640, 37.722839, 26.565424>,  <31.411509, 38.312073, 26.938807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547640, 37.722839, 26.565424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771147, 37.753319, 26.895750>,  <31.905251, 37.771606, 27.093946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771147, 37.753319, 26.895750>,  <31.547640, 37.722839, 26.565424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771147, 37.753319, 26.895750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365410, -0.871279, 0.327641,
		0.744483, -0.484836, -0.458998,
		0.558768, 0.076201, 0.825816,
		31.938778, 37.776180, 27.143496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760376, 37.082310, 26.658682>,  <31.547640, 37.722839, 26.565424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760376, 37.082310, 26.658682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895830, 37.238899, 27.000929>,  <31.977102, 37.332851, 27.206276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895830, 37.238899, 27.000929>,  <31.760376, 37.082310, 26.658682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895830, 37.238899, 27.000929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302588, -0.815729, 0.492978,
		0.890937, -0.425838, -0.157779,
		0.338634, 0.391471, 0.855616,
		31.997419, 37.356339, 27.257614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269249, 36.602749, 26.906981>,  <31.760376, 37.082310, 26.658682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269249, 36.602749, 26.906981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142361, 36.809273, 27.225174>,  <32.066227, 36.933186, 27.416090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142361, 36.809273, 27.225174>,  <32.269249, 36.602749, 26.906981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142361, 36.809273, 27.225174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330874, -0.846355, 0.417378,
		0.888758, -0.130802, 0.439318,
		-0.317225, 0.516307, 0.795484,
		32.047192, 36.964165, 27.463820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660797, 36.324509, 27.489407>,  <32.269249, 36.602749, 26.906981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660797, 36.324509, 27.489407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335476, 36.505341, 27.635921>,  <32.140285, 36.613838, 27.723831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335476, 36.505341, 27.635921>,  <32.660797, 36.324509, 27.489407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335476, 36.505341, 27.635921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210969, -0.815814, 0.538460,
		0.542250, 0.360655, 0.758877,
		-0.813300, 0.452079, 0.366288,
		32.091484, 36.640965, 27.745808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727249, 36.249420, 28.251169>,  <32.660797, 36.324509, 27.489407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727249, 36.249420, 28.251169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350906, 36.314346, 28.132219>,  <32.125099, 36.353302, 28.060848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350906, 36.314346, 28.132219>,  <32.727249, 36.249420, 28.251169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350906, 36.314346, 28.132219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284231, -0.855857, 0.432113,
		-0.184371, 0.491081, 0.851379,
		-0.940861, 0.162320, -0.297376,
		32.068649, 36.363041, 28.043007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407204, 36.276379, 28.828465>,  <32.727249, 36.249420, 28.251169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407204, 36.276379, 28.828465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095329, 36.220558, 28.584295>,  <31.908205, 36.187065, 28.437794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095329, 36.220558, 28.584295>,  <32.407204, 36.276379, 28.828465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095329, 36.220558, 28.584295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248446, -0.825889, 0.506145,
		-0.574774, 0.546291, 0.609263,
		-0.779685, -0.139550, -0.610423,
		31.861423, 36.178692, 28.401169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868622, 36.044960, 29.286104>,  <32.407204, 36.276379, 28.828465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868622, 36.044960, 29.286104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763578, 35.972118, 28.907080>,  <31.700552, 35.928413, 28.679665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763578, 35.972118, 28.907080>,  <31.868622, 36.044960, 29.286104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763578, 35.972118, 28.907080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353123, -0.895765, 0.270016,
		-0.897965, 0.405515, 0.170931,
		-0.262609, -0.182105, -0.947562,
		31.684795, 35.917488, 28.622810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131443, 35.921444, 29.281895>,  <31.868622, 36.044960, 29.286104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131443, 35.921444, 29.281895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286264, 35.749016, 28.955860>,  <31.379156, 35.645557, 28.760239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286264, 35.749016, 28.955860>,  <31.131443, 35.921444, 29.281895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286264, 35.749016, 28.955860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294250, -0.895513, 0.333877,
		-0.873845, 0.110611, -0.473455,
		0.387054, -0.431071, -0.815087,
		31.402380, 35.619694, 28.711334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680407, 35.446602, 29.118679>,  <31.131443, 35.921444, 29.281895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680407, 35.446602, 29.118679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012339, 35.330051, 28.928320>,  <31.211498, 35.260120, 28.814104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012339, 35.330051, 28.928320>,  <30.680407, 35.446602, 29.118679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012339, 35.330051, 28.928320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179979, -0.947022, 0.266000,
		-0.528193, -0.135083, -0.838311,
		0.829831, -0.291377, -0.475898,
		31.261288, 35.242638, 28.785551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529242, 34.830265, 28.765446>,  <30.680407, 35.446602, 29.118679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529242, 34.830265, 28.765446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927101, 34.836460, 28.806311>,  <31.165817, 34.840179, 28.830830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927101, 34.836460, 28.806311>,  <30.529242, 34.830265, 28.765446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927101, 34.836460, 28.806311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015142, -0.956174, 0.292409,
		0.102214, -0.292390, -0.950821,
		0.994647, 0.015491, 0.102161,
		31.225494, 34.841106, 28.836960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699089, 34.133671, 28.526442>,  <30.529242, 34.830265, 28.765446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699089, 34.133671, 28.526442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990181, 34.287842, 28.753368>,  <31.164837, 34.380344, 28.889524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990181, 34.287842, 28.753368>,  <30.699089, 34.133671, 28.526442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990181, 34.287842, 28.753368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001921, -0.828304, 0.560276,
		0.685860, -0.406640, -0.603522,
		0.727731, 0.385430, 0.567319,
		31.208500, 34.403469, 28.923565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010349, 33.514313, 28.760672>,  <30.699089, 34.133671, 28.526442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010349, 33.514313, 28.760672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182674, 33.796349, 28.985970>,  <31.286070, 33.965569, 29.121149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182674, 33.796349, 28.985970>,  <31.010349, 33.514313, 28.760672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182674, 33.796349, 28.985970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145182, -0.670159, 0.727880,
		0.890686, -0.231808, -0.391081,
		0.430815, 0.705090, 0.563247,
		31.311918, 34.007877, 29.154943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704201, 33.330204, 28.869184>,  <31.010349, 33.514313, 28.760672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704201, 33.330204, 28.869184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582170, 33.585533, 29.151880>,  <31.508951, 33.738731, 29.321497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582170, 33.585533, 29.151880>,  <31.704201, 33.330204, 28.869184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582170, 33.585533, 29.151880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176397, -0.691398, 0.700609,
		0.935848, 0.338407, 0.098332,
		-0.305077, 0.638318, 0.706737,
		31.490648, 33.777027, 29.363901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268425, 33.311005, 29.420864>,  <31.704201, 33.330204, 28.869184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268425, 33.311005, 29.420864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953709, 33.477116, 29.603512>,  <31.764879, 33.576782, 29.713100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953709, 33.477116, 29.603512>,  <32.268425, 33.311005, 29.420864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953709, 33.477116, 29.603512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165664, -0.570568, 0.804368,
		0.594570, 0.708516, 0.380121,
		-0.786792, 0.415281, 0.456618,
		31.717670, 33.601700, 29.740498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492607, 33.474117, 30.012869>,  <32.268425, 33.311005, 29.420864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492607, 33.474117, 30.012869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096664, 33.434620, 30.053730>,  <31.859098, 33.410923, 30.078247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096664, 33.434620, 30.053730>,  <32.492607, 33.474117, 30.012869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096664, 33.434620, 30.053730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140611, -0.578008, 0.803825,
		-0.020324, 0.810035, 0.586029,
		-0.989856, -0.098739, 0.102153,
		31.799707, 33.404999, 30.084375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298950, 33.548248, 30.741531>,  <32.492607, 33.474117, 30.012869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298950, 33.548248, 30.741531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004025, 33.321949, 30.593857>,  <31.827068, 33.186169, 30.505253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004025, 33.321949, 30.593857>,  <32.298950, 33.548248, 30.741531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004025, 33.321949, 30.593857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017792, -0.562568, 0.826560,
		-0.675315, 0.602866, 0.424855,
		-0.737314, -0.565748, -0.369184,
		31.782829, 33.152225, 30.483101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581001, 34.196693, 30.473017>,  <32.298950, 33.548248, 30.741531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581001, 34.196693, 30.473017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910419, 34.142899, 30.693445>,  <33.108070, 34.110622, 30.825703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910419, 34.142899, 30.693445>,  <32.581001, 34.196693, 30.473017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910419, 34.142899, 30.693445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349830, 0.885158, -0.306782,
		-0.446529, 0.445432, 0.776017,
		0.823548, -0.134487, 0.551073,
		33.157482, 34.102551, 30.858767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596447, 34.725388, 31.008101>,  <32.581001, 34.196693, 30.473017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596447, 34.725388, 31.008101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974396, 34.598888, 30.974131>,  <33.201164, 34.522991, 30.953749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974396, 34.598888, 30.974131>,  <32.596447, 34.725388, 31.008101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974396, 34.598888, 30.974131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326070, 0.932476, 0.155453,
		0.030027, -0.174574, 0.984186,
		0.944868, -0.316246, -0.084923,
		33.257854, 34.504013, 30.948654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930126, 35.013004, 31.546675>,  <32.596447, 34.725388, 31.008101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930126, 35.013004, 31.546675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199123, 34.933960, 31.261381>,  <33.360523, 34.886532, 31.090206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199123, 34.933960, 31.261381>,  <32.930126, 35.013004, 31.546675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199123, 34.933960, 31.261381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453763, 0.871408, 0.186405,
		0.584680, -0.448995, 0.675687,
		0.672494, -0.197615, -0.713232,
		33.400871, 34.874676, 31.047411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526711, 35.425198, 31.810162>,  <32.930126, 35.013004, 31.546675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526711, 35.425198, 31.810162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652748, 35.303299, 31.450642>,  <33.728371, 35.230160, 31.234930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652748, 35.303299, 31.450642>,  <33.526711, 35.425198, 31.810162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652748, 35.303299, 31.450642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500752, 0.857875, -0.115320,
		0.806202, -0.413739, 0.422916,
		0.315096, -0.304747, -0.898801,
		33.747276, 35.211876, 31.181002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319950, 35.438107, 31.727034>,  <33.526711, 35.425198, 31.810162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319950, 35.438107, 31.727034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153843, 35.476849, 31.365223>,  <34.054176, 35.500092, 31.148136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153843, 35.476849, 31.365223>,  <34.319950, 35.438107, 31.727034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153843, 35.476849, 31.365223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568268, 0.804063, -0.174798,
		0.710368, -0.586602, -0.388941,
		-0.415270, 0.096852, -0.904528,
		34.029263, 35.505905, 31.093864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778694, 35.874649, 31.471733>,  <34.319950, 35.438107, 31.727034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778694, 35.874649, 31.471733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496895, 35.873116, 31.187857>,  <34.327816, 35.872196, 31.017530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496895, 35.873116, 31.187857>,  <34.778694, 35.874649, 31.471733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496895, 35.873116, 31.187857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336534, 0.878606, -0.338816,
		0.624837, -0.477532, -0.617691,
		-0.704503, -0.003830, -0.709691,
		34.285545, 35.871967, 30.974949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082138, 36.095928, 30.812599>,  <34.778694, 35.874649, 31.471733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082138, 36.095928, 30.812599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690975, 36.176022, 30.788603>,  <34.456276, 36.224075, 30.774204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690975, 36.176022, 30.788603>,  <35.082138, 36.095928, 30.812599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690975, 36.176022, 30.788603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195254, 0.772611, -0.604109,
		-0.074611, -0.602478, -0.794640,
		-0.977910, 0.200230, -0.059991,
		34.397602, 36.236092, 30.770605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864136, 36.345825, 30.104366>,  <35.082138, 36.095928, 30.812599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864136, 36.345825, 30.104366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579842, 36.480114, 30.351637>,  <34.409264, 36.560688, 30.499998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579842, 36.480114, 30.351637>,  <34.864136, 36.345825, 30.104366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579842, 36.480114, 30.351637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155847, 0.932078, -0.327022,
		-0.685976, -0.136086, -0.714785,
		-0.710738, 0.335726, 0.618174,
		34.366619, 36.580833, 30.537088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390511, 36.600460, 29.616503>,  <34.864136, 36.345825, 30.104366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390511, 36.600460, 29.616503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339142, 36.759350, 29.979979>,  <34.308319, 36.854683, 30.198065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339142, 36.759350, 29.979979>,  <34.390511, 36.600460, 29.616503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339142, 36.759350, 29.979979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018744, 0.915142, -0.402696,
		-0.991543, -0.068747, -0.110077,
		-0.128420, 0.397227, 0.908691,
		34.300617, 36.878517, 30.252586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948139, 37.143772, 29.488159>,  <34.390511, 36.600460, 29.616503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948139, 37.143772, 29.488159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100758, 37.232895, 29.846996>,  <34.192329, 37.286369, 30.062300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100758, 37.232895, 29.846996>,  <33.948139, 37.143772, 29.488159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100758, 37.232895, 29.846996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017180, 0.968637, -0.247886,
		-0.924190, 0.109993, 0.365753,
		0.381547, 0.222810, 0.897094,
		34.215221, 37.299740, 30.116125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721615, 37.719040, 29.493382>,  <33.948139, 37.143772, 29.488159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721615, 37.719040, 29.493382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998833, 37.721149, 29.781731>,  <34.165165, 37.722416, 29.954741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998833, 37.721149, 29.781731>,  <33.721615, 37.719040, 29.493382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998833, 37.721149, 29.781731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246507, 0.937959, -0.243858,
		-0.677437, 0.346705, 0.648749,
		0.693047, 0.005278, 0.720873,
		34.206745, 37.722733, 29.997993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695686, 38.478664, 29.851128>,  <33.721615, 37.719040, 29.493382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695686, 38.478664, 29.851128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041916, 38.291481, 29.922455>,  <34.249653, 38.179169, 29.965252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041916, 38.291481, 29.922455>,  <33.695686, 38.478664, 29.851128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041916, 38.291481, 29.922455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499685, 0.830648, -0.245639,
		-0.033170, 0.301721, 0.952819,
		0.865572, -0.467961, 0.178317,
		34.301586, 38.151093, 29.975950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051891, 38.967529, 30.350391>,  <33.695686, 38.478664, 29.851128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051891, 38.967529, 30.350391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343937, 38.740082, 30.198807>,  <34.519165, 38.603615, 30.107857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343937, 38.740082, 30.198807>,  <34.051891, 38.967529, 30.350391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343937, 38.740082, 30.198807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579565, 0.809083, -0.097408,
		0.362000, -0.148515, 0.920271,
		0.730110, -0.568619, -0.378962,
		34.562969, 38.569496, 30.085117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629089, 39.127602, 30.689754>,  <34.051891, 38.967529, 30.350391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629089, 39.127602, 30.689754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732399, 38.985455, 30.330420>,  <34.794384, 38.900166, 30.114819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732399, 38.985455, 30.330420>,  <34.629089, 39.127602, 30.689754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732399, 38.985455, 30.330420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512154, 0.838826, -0.184580,
		0.819140, -0.412413, 0.398653,
		0.258277, -0.355369, -0.898335,
		34.809883, 38.878845, 30.060919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317429, 39.297237, 30.577322>,  <34.629089, 39.127602, 30.689754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317429, 39.297237, 30.577322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175064, 39.222755, 30.211010>,  <35.089645, 39.178066, 29.991222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175064, 39.222755, 30.211010>,  <35.317429, 39.297237, 30.577322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175064, 39.222755, 30.211010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418373, 0.844513, -0.334307,
		0.835638, -0.502122, -0.222670,
		-0.355911, -0.186201, -0.915782,
		35.068291, 39.166897, 29.936275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914188, 39.459370, 30.139969>,  <35.317429, 39.297237, 30.577322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914188, 39.459370, 30.139969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608498, 39.455849, 29.882015>,  <35.425083, 39.453735, 29.727243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608498, 39.455849, 29.882015>,  <35.914188, 39.459370, 30.139969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608498, 39.455849, 29.882015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371647, 0.811191, -0.451496,
		0.527096, -0.584716, -0.616666,
		-0.764230, -0.008800, -0.644883,
		35.379227, 39.453209, 29.688551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199135, 39.567280, 29.498178>,  <35.914188, 39.459370, 30.139969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199135, 39.567280, 29.498178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820408, 39.674896, 29.427574>,  <35.593170, 39.739468, 29.385212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820408, 39.674896, 29.427574>,  <36.199135, 39.567280, 29.498178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820408, 39.674896, 29.427574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318931, 0.711862, -0.625728,
		-0.042694, -0.648745, -0.759807,
		-0.946816, 0.269041, -0.176513,
		35.536362, 39.755608, 29.374620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998154, 39.497349, 28.771667>,  <36.199135, 39.567280, 29.498178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998154, 39.497349, 28.771667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714096, 39.749565, 28.896967>,  <35.543663, 39.900894, 28.972147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714096, 39.749565, 28.896967>,  <35.998154, 39.497349, 28.771667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714096, 39.749565, 28.896967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119539, 0.546440, -0.828923,
		-0.693839, -0.551205, -0.463422,
		-0.710139, 0.630536, 0.313250,
		35.501053, 39.938725, 28.990942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651836, 39.611858, 28.131048>,  <35.998154, 39.497349, 28.771667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651836, 39.611858, 28.131048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600735, 39.890682, 28.413265>,  <35.570072, 40.057976, 28.582596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600735, 39.890682, 28.413265>,  <35.651836, 39.611858, 28.131048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600735, 39.890682, 28.413265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149280, 0.716780, -0.681133,
		-0.980507, 0.018304, -0.195630,
		-0.127756, 0.697059, 0.705540,
		35.562408, 40.099800, 28.624928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114166, 40.079063, 27.827497>,  <35.651836, 39.611858, 28.131048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114166, 40.079063, 27.827497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267639, 40.328796, 28.099672>,  <35.359722, 40.478638, 28.262978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267639, 40.328796, 28.099672>,  <35.114166, 40.079063, 27.827497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267639, 40.328796, 28.099672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026461, 0.743959, -0.667702,
		-0.923087, 0.238178, 0.301962,
		0.383679, 0.624337, 0.680436,
		35.382744, 40.516098, 28.303802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718437, 40.615364, 27.782589>,  <35.114166, 40.079063, 27.827497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718437, 40.615364, 27.782589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065350, 40.729424, 27.945810>,  <35.273499, 40.797859, 28.043743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065350, 40.729424, 27.945810>,  <34.718437, 40.615364, 27.782589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065350, 40.729424, 27.945810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100785, 0.702140, -0.704870,
		-0.487503, 0.652449, 0.580217,
		0.867285, 0.285149, 0.408052,
		35.325535, 40.814968, 28.068226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625301, 41.293831, 27.794090>,  <34.718437, 40.615364, 27.782589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625301, 41.293831, 27.794090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022720, 41.257980, 27.821873>,  <35.261173, 41.236469, 27.838541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022720, 41.257980, 27.821873>,  <34.625301, 41.293831, 27.794090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022720, 41.257980, 27.821873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112207, 0.689048, -0.715977,
		0.016313, 0.719152, 0.694661,
		0.993551, -0.089626, 0.069454,
		35.320786, 41.231094, 27.842709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937691, 41.972927, 27.625179>,  <34.625301, 41.293831, 27.794090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937691, 41.972927, 27.625179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287659, 41.781090, 27.598347>,  <35.497639, 41.665989, 27.582247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287659, 41.781090, 27.598347>,  <34.937691, 41.972927, 27.625179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287659, 41.781090, 27.598347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190583, 0.468350, -0.862743,
		0.445183, 0.742050, 0.501173,
		0.874923, -0.479594, -0.067079,
		35.550137, 41.637211, 27.578222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422806, 42.439941, 27.366224>,  <34.937691, 41.972927, 27.625179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422806, 42.439941, 27.366224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615593, 42.097927, 27.289671>,  <35.731266, 41.892719, 27.243738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615593, 42.097927, 27.289671>,  <35.422806, 42.439941, 27.366224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615593, 42.097927, 27.289671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312125, 0.371644, -0.874334,
		0.818710, 0.361665, 0.445997,
		0.481967, -0.855032, -0.191384,
		35.760181, 41.841419, 27.232256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995407, 42.594429, 26.978571>,  <35.422806, 42.439941, 27.366224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995407, 42.594429, 26.978571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913933, 42.222298, 26.856586>,  <35.865047, 41.999020, 26.783396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913933, 42.222298, 26.856586>,  <35.995407, 42.594429, 26.978571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913933, 42.222298, 26.856586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126415, 0.283892, -0.950487,
		0.970840, -0.232156, 0.059782,
		-0.203689, -0.930328, -0.304961,
		35.852825, 41.943199, 26.765099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490093, 42.403091, 26.496513>,  <35.995407, 42.594429, 26.978571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490093, 42.403091, 26.496513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201965, 42.147636, 26.388233>,  <36.029087, 41.994362, 26.323265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201965, 42.147636, 26.388233>,  <36.490093, 42.403091, 26.496513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201965, 42.147636, 26.388233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158928, 0.227925, -0.960620,
		0.675191, -0.734975, -0.062681,
		-0.720319, -0.638641, -0.270702,
		35.985870, 41.956043, 26.307022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792290, 41.958569, 26.057735>,  <36.490093, 42.403091, 26.496513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792290, 41.958569, 26.057735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401932, 41.992275, 25.977209>,  <36.167717, 42.012501, 25.928894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401932, 41.992275, 25.977209>,  <36.792290, 41.958569, 26.057735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401932, 41.992275, 25.977209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217766, 0.436686, -0.872859,
		0.014358, -0.895659, -0.444510,
		-0.975895, 0.084267, -0.201314,
		36.109161, 42.017555, 25.916815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748898, 41.979191, 25.394152>,  <36.792290, 41.958569, 26.057735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748898, 41.979191, 25.394152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369808, 42.093388, 25.451168>,  <36.142357, 42.161907, 25.485378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369808, 42.093388, 25.451168>,  <36.748898, 41.979191, 25.394152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369808, 42.093388, 25.451168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034020, 0.353750, -0.934721,
		-0.317283, -0.890703, -0.325544,
		-0.947720, 0.285496, 0.142540,
		36.085491, 42.179035, 25.493931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358948, 41.702168, 24.757492>,  <36.748898, 41.979191, 25.394152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358948, 41.702168, 24.757492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153423, 41.996468, 24.933975>,  <36.030109, 42.173050, 25.039865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153423, 41.996468, 24.933975>,  <36.358948, 41.702168, 24.757492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153423, 41.996468, 24.933975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026929, 0.527866, -0.848901,
		-0.857482, -0.424291, -0.291035,
		-0.513808, 0.735755, 0.441210,
		35.999279, 42.217194, 25.066338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275814, 42.067646, 24.204470>,  <36.358948, 41.702168, 24.757492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275814, 42.067646, 24.204470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051048, 42.306824, 24.433104>,  <35.916187, 42.450333, 24.570284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051048, 42.306824, 24.433104>,  <36.275814, 42.067646, 24.204470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051048, 42.306824, 24.433104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048878, 0.665782, -0.744544,
		-0.825748, -0.446310, -0.344888,
		-0.561918, 0.597948, 0.571583,
		35.882473, 42.486210, 24.604578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691246, 42.254288, 23.813412>,  <36.275814, 42.067646, 24.204470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691246, 42.254288, 23.813412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818031, 42.513363, 24.090549>,  <35.894104, 42.668808, 24.256832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818031, 42.513363, 24.090549>,  <35.691246, 42.254288, 23.813412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818031, 42.513363, 24.090549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212445, 0.663464, -0.717414,
		-0.924339, 0.374584, 0.072695,
		0.316962, 0.647690, 0.692844,
		35.913120, 42.707668, 24.298403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339916, 42.861233, 23.576248>,  <35.691246, 42.254288, 23.813412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339916, 42.861233, 23.576248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657104, 42.946064, 23.804710>,  <35.847420, 42.996964, 23.941788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657104, 42.946064, 23.804710>,  <35.339916, 42.861233, 23.576248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657104, 42.946064, 23.804710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352001, 0.605689, -0.713608,
		-0.497280, 0.766919, 0.405645,
		0.792974, 0.212075, 0.571153,
		35.894997, 43.009686, 23.976057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338570, 43.564335, 23.780590>,  <35.339916, 42.861233, 23.576248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338570, 43.564335, 23.780590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724972, 43.476440, 23.835064>,  <35.956814, 43.423702, 23.867748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724972, 43.476440, 23.835064>,  <35.338570, 43.564335, 23.780590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724972, 43.476440, 23.835064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258473, 0.830440, -0.493518,
		-0.004651, 0.511943, 0.859007,
		0.966007, -0.219735, 0.136185,
		36.014774, 43.410519, 23.875919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626556, 44.248676, 23.891842>,  <35.338570, 43.564335, 23.780590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626556, 44.248676, 23.891842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896816, 43.983574, 23.762691>,  <36.058971, 43.824512, 23.685202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896816, 43.983574, 23.762691>,  <35.626556, 44.248676, 23.891842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896816, 43.983574, 23.762691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378401, 0.687639, -0.619649,
		0.632698, 0.296491, 0.715392,
		0.675652, -0.662756, -0.322875,
		36.099510, 43.784748, 23.665829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260063, 44.529915, 23.946705>,  <35.626556, 44.248676, 23.891842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260063, 44.529915, 23.946705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330826, 44.267525, 23.653202>,  <36.373283, 44.110088, 23.477100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330826, 44.267525, 23.653202>,  <36.260063, 44.529915, 23.946705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330826, 44.267525, 23.653202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325445, 0.742565, -0.585391,
		0.928865, -0.135239, 0.344848,
		0.176904, -0.655979, -0.733755,
		36.383896, 44.070732, 23.433075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852371, 44.784779, 23.700495>,  <36.260063, 44.529915, 23.946705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852371, 44.784779, 23.700495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708939, 44.544689, 23.414515>,  <36.622879, 44.400635, 23.242926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708939, 44.544689, 23.414515>,  <36.852371, 44.784779, 23.700495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708939, 44.544689, 23.414515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389951, 0.599546, -0.698915,
		0.848151, -0.529411, 0.019074,
		-0.358577, -0.600224, -0.714950,
		36.601364, 44.364620, 23.200029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422939, 44.741982, 23.319731>,  <36.852371, 44.784779, 23.700495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422939, 44.741982, 23.319731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127502, 44.630047, 23.074398>,  <36.950241, 44.562885, 22.927198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127502, 44.630047, 23.074398>,  <37.422939, 44.741982, 23.319731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127502, 44.630047, 23.074398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169135, 0.803765, -0.570399,
		0.652594, -0.525026, -0.546323,
		-0.738590, -0.279837, -0.613333,
		36.905926, 44.546097, 22.890398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734550, 44.768986, 22.642632>,  <37.422939, 44.741982, 23.319731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734550, 44.768986, 22.642632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337788, 44.819523, 22.647757>,  <37.099731, 44.849846, 22.650831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337788, 44.819523, 22.647757>,  <37.734550, 44.768986, 22.642632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337788, 44.819523, 22.647757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094796, 0.803820, -0.587271,
		-0.084494, -0.581302, -0.809289,
		-0.991904, 0.126339, 0.012813,
		37.040215, 44.857426, 22.651600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175480, 44.259861, 22.708765>,  <37.734550, 44.768986, 22.642632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175480, 44.259861, 22.708765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544868, 44.413223, 22.714462>,  <38.766502, 44.505241, 22.717880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544868, 44.413223, 22.714462>,  <38.175480, 44.259861, 22.708765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544868, 44.413223, 22.714462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344642, -0.845272, 0.408335,
		0.168599, -0.372176, -0.912721,
		0.923470, 0.383407, 0.014245,
		38.821911, 44.528244, 22.718735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613564, 43.726177, 22.598927>,  <38.175480, 44.259861, 22.708765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613564, 43.726177, 22.598927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828117, 44.004799, 22.789549>,  <38.956852, 44.171970, 22.903923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828117, 44.004799, 22.789549>,  <38.613564, 43.726177, 22.598927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828117, 44.004799, 22.789549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357961, -0.699117, 0.618950,
		0.764299, -0.161408, -0.624335,
		0.536386, 0.696551, 0.476557,
		38.989033, 44.213764, 22.932516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405914, 43.502754, 22.669720>,  <38.613564, 43.726177, 22.598927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405914, 43.502754, 22.669720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314205, 43.767147, 22.955526>,  <39.259182, 43.925781, 23.127010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314205, 43.767147, 22.955526>,  <39.405914, 43.502754, 22.669720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314205, 43.767147, 22.955526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386158, -0.612066, 0.690114,
		0.893486, 0.434139, -0.114916,
		-0.229269, 0.660983, 0.714519,
		39.245426, 43.965443, 23.169882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964195, 43.519073, 23.175964>,  <39.405914, 43.502754, 22.669720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964195, 43.519073, 23.175964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653828, 43.652000, 23.390450>,  <39.467609, 43.731758, 23.519140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653828, 43.652000, 23.390450>,  <39.964195, 43.519073, 23.175964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653828, 43.652000, 23.390450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243614, -0.626214, 0.740614,
		0.581901, 0.705281, 0.404931,
		-0.775915, 0.332317, 0.536211,
		39.421055, 43.751698, 23.551313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187786, 43.574982, 23.889877>,  <39.964195, 43.519073, 23.175964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187786, 43.574982, 23.889877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797531, 43.627228, 23.960390>,  <39.563377, 43.658573, 24.002697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797531, 43.627228, 23.960390>,  <40.187786, 43.574982, 23.889877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797531, 43.627228, 23.960390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091766, -0.486889, 0.868630,
		0.199283, 0.863643, 0.463041,
		-0.975636, 0.130612, 0.176282,
		39.504841, 43.666412, 24.013275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085735, 43.746750, 24.636358>,  <40.187786, 43.574982, 23.889877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085735, 43.746750, 24.636358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734821, 43.602684, 24.509453>,  <39.524273, 43.516243, 24.433310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734821, 43.602684, 24.509453>,  <40.085735, 43.746750, 24.636358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734821, 43.602684, 24.509453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049232, -0.589991, 0.805907,
		-0.477446, 0.722626, 0.499856,
		-0.877281, -0.360168, -0.317266,
		39.471638, 43.494633, 24.414272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667976, 43.723072, 25.240244>,  <40.085735, 43.746750, 24.636358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667976, 43.723072, 25.240244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486042, 43.483650, 24.976469>,  <39.376881, 43.339996, 24.818205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486042, 43.483650, 24.976469>,  <39.667976, 43.723072, 25.240244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486042, 43.483650, 24.976469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177669, -0.664591, 0.725777,
		-0.872671, 0.447274, 0.195938,
		-0.454840, -0.598552, -0.659436,
		39.349590, 43.304085, 24.778639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163143, 43.553719, 25.602114>,  <39.667976, 43.723072, 25.240244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163143, 43.553719, 25.602114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218166, 43.278294, 25.317308>,  <39.251183, 43.113041, 25.146425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218166, 43.278294, 25.317308>,  <39.163143, 43.553719, 25.602114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218166, 43.278294, 25.317308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246557, -0.720024, 0.648672,
		-0.959316, 0.086320, -0.268816,
		0.137561, -0.688560, -0.712013,
		39.259434, 43.071724, 25.103704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590996, 43.073978, 25.654518>,  <39.163143, 43.553719, 25.602114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590996, 43.073978, 25.654518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841682, 42.848721, 25.439075>,  <38.992092, 42.713566, 25.309809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841682, 42.848721, 25.439075>,  <38.590996, 43.073978, 25.654518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841682, 42.848721, 25.439075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219930, -0.790915, 0.571038,
		-0.747570, -0.239421, -0.619529,
		0.626713, -0.563144, -0.538609,
		39.029697, 42.679779, 25.277493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138988, 42.607887, 25.495171>,  <38.590996, 43.073978, 25.654518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138988, 42.607887, 25.495171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504810, 42.457241, 25.436176>,  <38.724304, 42.366852, 25.400780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504810, 42.457241, 25.436176>,  <38.138988, 42.607887, 25.495171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504810, 42.457241, 25.436176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247844, -0.809985, 0.531505,
		-0.319638, -0.449535, -0.834116,
		0.914551, -0.376620, -0.147487,
		38.779175, 42.344254, 25.391930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987019, 41.923950, 25.404171>,  <38.138988, 42.607887, 25.495171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987019, 41.923950, 25.404171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376186, 41.944057, 25.494423>,  <38.609688, 41.956120, 25.548574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376186, 41.944057, 25.494423>,  <37.987019, 41.923950, 25.404171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376186, 41.944057, 25.494423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099424, -0.790184, 0.604751,
		0.208686, -0.610804, -0.763785,
		0.972915, 0.050264, 0.225630,
		38.668060, 41.959137, 25.562111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240814, 41.261383, 25.268116>,  <37.987019, 41.923950, 25.404171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240814, 41.261383, 25.268116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523895, 41.403786, 25.512218>,  <38.693745, 41.489227, 25.658680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523895, 41.403786, 25.512218>,  <38.240814, 41.261383, 25.268116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523895, 41.403786, 25.512218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017460, -0.872314, 0.488634,
		0.706291, -0.335155, -0.623558,
		0.707706, 0.356005, 0.610255,
		38.736206, 41.510586, 25.695295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623154, 40.727608, 25.295267>,  <38.240814, 41.261383, 25.268116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623154, 40.727608, 25.295267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720039, 40.965374, 25.601994>,  <38.778172, 41.108032, 25.786030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720039, 40.965374, 25.601994>,  <38.623154, 40.727608, 25.295267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720039, 40.965374, 25.601994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078724, -0.799784, 0.595103,
		0.967023, -0.083777, -0.240514,
		0.242216, 0.594413, 0.766815,
		38.792706, 41.143700, 25.832039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215065, 40.429150, 25.699774>,  <38.623154, 40.727608, 25.295267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215065, 40.429150, 25.699774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992390, 40.642666, 25.954384>,  <38.858784, 40.770775, 26.107149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992390, 40.642666, 25.954384>,  <39.215065, 40.429150, 25.699774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992390, 40.642666, 25.954384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138197, -0.815062, 0.562651,
		0.819145, 0.225256, 0.527504,
		-0.556689, 0.533792, 0.636524,
		38.825382, 40.802803, 26.145342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347580, 40.100388, 26.291834>,  <39.215065, 40.429150, 25.699774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347580, 40.100388, 26.291834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034962, 40.325386, 26.399742>,  <38.847389, 40.460384, 26.464487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034962, 40.325386, 26.399742>,  <39.347580, 40.100388, 26.291834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034962, 40.325386, 26.399742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229498, -0.661349, 0.714107,
		0.580098, 0.496197, 0.645968,
		-0.781548, 0.562500, 0.269771,
		38.800499, 40.494137, 26.480673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296913, 40.029877, 27.000059>,  <39.347580, 40.100388, 26.291834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296913, 40.029877, 27.000059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931454, 40.164780, 26.909277>,  <38.712177, 40.245720, 26.854807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931454, 40.164780, 26.909277>,  <39.296913, 40.029877, 27.000059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931454, 40.164780, 26.909277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399618, -0.642778, 0.653561,
		0.074533, 0.687820, 0.722044,
		-0.913647, 0.337254, -0.226958,
		38.657360, 40.265957, 26.841190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021194, 40.195969, 27.614185>,  <39.296913, 40.029877, 27.000059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021194, 40.195969, 27.614185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734726, 40.108479, 27.349079>,  <38.562843, 40.055984, 27.190016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734726, 40.108479, 27.349079>,  <39.021194, 40.195969, 27.614185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734726, 40.108479, 27.349079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447091, -0.585413, 0.676315,
		-0.535916, 0.780674, 0.321469,
		-0.716173, -0.218722, -0.662764,
		38.519875, 40.042862, 27.150249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395103, 40.351112, 27.974569>,  <39.021194, 40.195969, 27.614185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395103, 40.351112, 27.974569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307346, 40.092033, 27.682720>,  <38.254692, 39.936584, 27.507610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307346, 40.092033, 27.682720>,  <38.395103, 40.351112, 27.974569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307346, 40.092033, 27.682720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528900, -0.549464, 0.646803,
		-0.819837, 0.527800, -0.222022,
		-0.219390, -0.647701, -0.729625,
		38.241531, 39.897724, 27.463833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826927, 40.163307, 28.150049>,  <38.395103, 40.351112, 27.974569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826927, 40.163307, 28.150049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863918, 39.879509, 27.870602>,  <37.886112, 39.709232, 27.702932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863918, 39.879509, 27.870602>,  <37.826927, 40.163307, 28.150049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863918, 39.879509, 27.870602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383742, -0.672822, 0.632497,
		-0.918798, 0.209598, -0.334483,
		0.092477, -0.709492, -0.698619,
		37.891663, 39.666660, 27.661016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169952, 39.792789, 28.162529>,  <37.826927, 40.163307, 28.150049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169952, 39.792789, 28.162529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438496, 39.529030, 28.027191>,  <37.599621, 39.370773, 27.945990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438496, 39.529030, 28.027191>,  <37.169952, 39.792789, 28.162529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438496, 39.529030, 28.027191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408039, -0.709958, 0.573989,
		-0.618696, -0.247294, -0.745695,
		0.671356, -0.659397, -0.338342,
		37.639904, 39.331211, 27.925688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753803, 39.270344, 28.170649>,  <37.169952, 39.792789, 28.162529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753803, 39.270344, 28.170649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114525, 39.102612, 28.128876>,  <37.330959, 39.001972, 28.103811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114525, 39.102612, 28.128876>,  <36.753803, 39.270344, 28.170649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114525, 39.102612, 28.128876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266440, -0.729799, 0.629605,
		-0.340228, -0.539958, -0.769864,
		0.901807, -0.419332, -0.104431,
		37.385067, 38.976810, 28.097546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689362, 38.577545, 28.121250>,  <36.753803, 39.270344, 28.170649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689362, 38.577545, 28.121250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076080, 38.584274, 28.223253>,  <37.308109, 38.588310, 28.284454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076080, 38.584274, 28.223253>,  <36.689362, 38.577545, 28.121250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076080, 38.584274, 28.223253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156519, -0.749814, 0.642869,
		0.202024, -0.661435, -0.722282,
		0.966793, 0.016824, 0.255007,
		37.366119, 38.589321, 28.299755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046741, 37.869621, 27.979822>,  <36.689362, 38.577545, 28.121250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046741, 37.869621, 27.979822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221893, 38.062740, 28.283182>,  <37.326984, 38.178612, 28.465199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221893, 38.062740, 28.283182>,  <37.046741, 37.869621, 27.979822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221893, 38.062740, 28.283182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232161, -0.754235, 0.614191,
		0.868539, -0.445014, -0.218179,
		0.437882, 0.482796, 0.758398,
		37.353256, 38.207581, 28.510702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230278, 37.385120, 28.323658>,  <37.046741, 37.869621, 27.979822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230278, 37.385120, 28.323658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278954, 37.669483, 28.600729>,  <37.308159, 37.840099, 28.766972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278954, 37.669483, 28.600729>,  <37.230278, 37.385120, 28.323658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278954, 37.669483, 28.600729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121103, -0.682015, 0.721242,
		0.985153, -0.171652, 0.003100,
		0.121689, 0.710909, 0.692677,
		37.315460, 37.882755, 28.808533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538284, 37.030357, 28.832270>,  <37.230278, 37.385120, 28.323658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538284, 37.030357, 28.832270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430408, 37.361607, 29.028833>,  <37.365685, 37.560356, 29.146772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430408, 37.361607, 29.028833>,  <37.538284, 37.030357, 28.832270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430408, 37.361607, 29.028833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176166, -0.544136, 0.820294,
		0.946696, 0.134654, 0.292634,
		-0.269688, 0.828121, 0.491410,
		37.349503, 37.610043, 29.176256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960285, 37.110081, 29.479572>,  <37.538284, 37.030357, 28.832270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960285, 37.110081, 29.479572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623806, 37.321842, 29.523596>,  <37.421917, 37.448898, 29.550009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623806, 37.321842, 29.523596>,  <37.960285, 37.110081, 29.479572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623806, 37.321842, 29.523596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147186, -0.420035, 0.895492,
		0.520306, 0.737089, 0.431255,
		-0.841200, 0.529405, 0.110057,
		37.371445, 37.480663, 29.556614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040405, 37.450397, 30.080883>,  <37.960285, 37.110081, 29.479572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040405, 37.450397, 30.080883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646378, 37.419674, 30.019253>,  <37.409962, 37.401237, 29.982273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646378, 37.419674, 30.019253>,  <38.040405, 37.450397, 30.080883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646378, 37.419674, 30.019253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101724, -0.462348, 0.880844,
		-0.138897, 0.883365, 0.447631,
		-0.985068, -0.076812, -0.154078,
		37.350857, 37.396629, 29.973030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706470, 37.563564, 30.695328>,  <38.040405, 37.450397, 30.080883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706470, 37.563564, 30.695328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401661, 37.382545, 30.510063>,  <37.218773, 37.273933, 30.398905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401661, 37.382545, 30.510063>,  <37.706470, 37.563564, 30.695328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401661, 37.382545, 30.510063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126947, -0.596975, 0.792153,
		-0.634981, 0.662438, 0.397461,
		-0.762026, -0.452545, -0.463162,
		37.173054, 37.246780, 30.371115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049831, 37.655319, 31.076632>,  <37.706470, 37.563564, 30.695328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049831, 37.655319, 31.076632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006176, 37.333179, 30.843565>,  <36.979984, 37.139896, 30.703724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006176, 37.333179, 30.843565>,  <37.049831, 37.655319, 31.076632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006176, 37.333179, 30.843565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001621, -0.586024, 0.810292,
		-0.994025, 0.089377, 0.062651,
		-0.109137, -0.805349, -0.582668,
		36.973434, 37.091576, 30.668764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605206, 37.306442, 31.449430>,  <37.049831, 37.655319, 31.076632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605206, 37.306442, 31.449430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744183, 37.047070, 31.178484>,  <36.827568, 36.891445, 31.015917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744183, 37.047070, 31.178484>,  <36.605206, 37.306442, 31.449430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744183, 37.047070, 31.178484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068563, -0.702867, 0.708009,
		-0.935192, -0.292433, -0.199745,
		0.347440, -0.648430, -0.677366,
		36.848415, 36.852539, 30.975275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108864, 36.658546, 31.453999>,  <36.605206, 37.306442, 31.449430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108864, 36.658546, 31.453999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468586, 36.548138, 31.318310>,  <36.684418, 36.481892, 31.236897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468586, 36.548138, 31.318310>,  <36.108864, 36.658546, 31.453999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468586, 36.548138, 31.318310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036122, -0.726134, 0.686603,
		-0.435835, -0.629717, -0.643043,
		0.899302, -0.276017, -0.339222,
		36.738377, 36.465332, 31.216543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062138, 35.927513, 31.475033>,  <36.108864, 36.658546, 31.453999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062138, 35.927513, 31.475033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456764, 35.979485, 31.435421>,  <36.693539, 36.010666, 31.411654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456764, 35.979485, 31.435421>,  <36.062138, 35.927513, 31.475033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456764, 35.979485, 31.435421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161043, -0.875292, 0.455993,
		-0.027432, -0.465815, -0.884457,
		0.986566, 0.129926, -0.099027,
		36.752735, 36.018463, 31.405712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376614, 35.328148, 31.136145>,  <36.062138, 35.927513, 31.475033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376614, 35.328148, 31.136145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682877, 35.506310, 31.321787>,  <36.866634, 35.613205, 31.433172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682877, 35.506310, 31.321787>,  <36.376614, 35.328148, 31.136145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682877, 35.506310, 31.321787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322297, -0.890028, 0.322451,
		0.556686, -0.097306, -0.825004,
		0.765653, 0.445400, 0.464106,
		36.912571, 35.639931, 31.461018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972015, 34.869038, 31.105917>,  <36.376614, 35.328148, 31.136145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972015, 34.869038, 31.105917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063492, 35.128162, 31.396584>,  <37.118378, 35.283638, 31.570984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063492, 35.128162, 31.396584>,  <36.972015, 34.869038, 31.105917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063492, 35.128162, 31.396584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520541, -0.712148, 0.471044,
		0.822639, 0.270534, -0.500076,
		0.228694, 0.647809, 0.726665,
		37.132099, 35.322506, 31.614584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577377, 34.660435, 31.359068>,  <36.972015, 34.869038, 31.105917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577377, 34.660435, 31.359068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447666, 34.904583, 31.648146>,  <37.369839, 35.051071, 31.821592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447666, 34.904583, 31.648146>,  <37.577377, 34.660435, 31.359068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447666, 34.904583, 31.648146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415317, -0.594548, 0.688494,
		0.849917, 0.523408, -0.060702,
		-0.324273, 0.610374, 0.722697,
		37.350384, 35.087696, 31.864954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145794, 34.833416, 31.786680>,  <37.577377, 34.660435, 31.359068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145794, 34.833416, 31.786680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802414, 34.862240, 31.989807>,  <37.596386, 34.879532, 32.111683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802414, 34.862240, 31.989807>,  <38.145794, 34.833416, 31.786680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802414, 34.862240, 31.989807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331272, -0.677980, 0.656202,
		0.391573, 0.731540, 0.558140,
		-0.858446, 0.072055, 0.507818,
		37.544880, 34.883858, 32.142151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432907, 34.948997, 32.367821>,  <38.145794, 34.833416, 31.786680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432907, 34.948997, 32.367821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060547, 34.906624, 32.507652>,  <37.837132, 34.881199, 32.591549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060547, 34.906624, 32.507652>,  <38.432907, 34.948997, 32.367821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060547, 34.906624, 32.507652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333067, -0.639094, 0.693271,
		0.149972, 0.761799, 0.630215,
		-0.930900, -0.105932, 0.349576,
		37.781277, 34.874844, 32.612526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447495, 35.027607, 33.053543>,  <38.432907, 34.948997, 32.367821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447495, 35.027607, 33.053543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148830, 34.782330, 32.950401>,  <37.969631, 34.635162, 32.888515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148830, 34.782330, 32.950401>,  <38.447495, 35.027607, 33.053543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148830, 34.782330, 32.950401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376534, -0.709152, 0.596091,
		-0.548376, 0.347989, 0.760386,
		-0.746663, -0.613193, -0.257853,
		37.924831, 34.598373, 32.873047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328892, 34.682590, 33.638809>,  <38.447495, 35.027607, 33.053543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328892, 34.682590, 33.638809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103470, 34.449585, 33.404514>,  <37.968216, 34.309784, 33.263935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103470, 34.449585, 33.404514>,  <38.328892, 34.682590, 33.638809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103470, 34.449585, 33.404514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221891, -0.789742, 0.571902,
		-0.795722, 0.192326, 0.574315,
		-0.563552, -0.582510, -0.585740,
		37.934402, 34.274834, 33.228794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008919, 34.156132, 34.095444>,  <38.328892, 34.682590, 33.638809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008919, 34.156132, 34.095444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043278, 34.002316, 33.727802>,  <38.063892, 33.910027, 33.507217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043278, 34.002316, 33.727802>,  <38.008919, 34.156132, 34.095444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043278, 34.002316, 33.727802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376508, -0.841576, 0.387288,
		-0.922423, -0.379317, 0.072492,
		0.085897, -0.384537, -0.919105,
		38.069046, 33.886955, 33.452072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505932, 33.585617, 33.863853>,  <38.008919, 34.156132, 34.095444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505932, 33.585617, 33.863853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861874, 33.533508, 33.688953>,  <38.075439, 33.502243, 33.584015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861874, 33.533508, 33.688953>,  <37.505932, 33.585617, 33.863853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861874, 33.533508, 33.688953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138425, -0.836110, 0.530809,
		-0.434736, -0.532870, -0.725985,
		0.889856, -0.130267, -0.437249,
		38.128830, 33.494427, 33.557777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476383, 32.907845, 33.674160>,  <37.505932, 33.585617, 33.863853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476383, 32.907845, 33.674160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841484, 33.044895, 33.763142>,  <38.060547, 33.127125, 33.816528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841484, 33.044895, 33.763142>,  <37.476383, 32.907845, 33.674160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841484, 33.044895, 33.763142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115727, -0.739119, 0.663559,
		0.391771, -0.579924, -0.714286,
		0.912756, 0.342625, 0.222452,
		38.115311, 33.147682, 33.829876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896339, 32.307030, 33.734261>,  <37.476383, 32.907845, 33.674160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896339, 32.307030, 33.734261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101479, 32.587685, 33.932125>,  <38.224564, 32.756077, 34.050846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101479, 32.587685, 33.932125>,  <37.896339, 32.307030, 33.734261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101479, 32.587685, 33.932125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173496, -0.649029, 0.740716,
		0.840765, -0.294052, -0.454584,
		0.512848, 0.701637, 0.494664,
		38.255333, 32.798176, 34.080524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502136, 31.974865, 33.880077>,  <37.896339, 32.307030, 33.734261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502136, 31.974865, 33.880077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495483, 32.271145, 34.148731>,  <38.491489, 32.448914, 34.309921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495483, 32.271145, 34.148731>,  <38.502136, 31.974865, 33.880077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495483, 32.271145, 34.148731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294361, -0.638325, 0.711261,
		0.955549, 0.209534, -0.207414,
		-0.016636, 0.740700, 0.671630,
		38.490494, 32.493355, 34.350220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994934, 31.828503, 34.303646>,  <38.502136, 31.974865, 33.880077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994934, 31.828503, 34.303646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762562, 32.068985, 34.523129>,  <38.623138, 32.213276, 34.654816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762562, 32.068985, 34.523129>,  <38.994934, 31.828503, 34.303646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762562, 32.068985, 34.523129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115676, -0.606297, 0.786780,
		0.805694, 0.520534, 0.282670,
		-0.580927, 0.601206, 0.548703,
		38.588284, 32.249348, 34.687740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321239, 31.841364, 34.967491>,  <38.994934, 31.828503, 34.303646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321239, 31.841364, 34.967491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951729, 31.975405, 35.041622>,  <38.730022, 32.055828, 35.086102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951729, 31.975405, 35.041622>,  <39.321239, 31.841364, 34.967491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951729, 31.975405, 35.041622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034456, -0.409272, 0.911762,
		0.381383, 0.848648, 0.366529,
		-0.923775, 0.335101, 0.185330,
		38.674595, 32.075935, 35.097221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265850, 31.984343, 35.646656>,  <39.321239, 31.841364, 34.967491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265850, 31.984343, 35.646656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867458, 31.983902, 35.610828>,  <38.628422, 31.983639, 35.589333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867458, 31.983902, 35.610828>,  <39.265850, 31.984343, 35.646656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867458, 31.983902, 35.610828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081957, -0.392373, 0.916148,
		-0.036153, 0.919806, 0.390705,
		-0.995980, -0.001100, -0.089570,
		38.568665, 31.983572, 35.583958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982372, 32.162285, 36.297199>,  <39.265850, 31.984343, 35.646656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982372, 32.162285, 36.297199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691608, 31.960083, 36.111263>,  <38.517151, 31.838762, 35.999702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691608, 31.960083, 36.111263>,  <38.982372, 32.162285, 36.297199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691608, 31.960083, 36.111263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323188, -0.345425, 0.881040,
		-0.605936, 0.790663, 0.087719,
		-0.726906, -0.505504, -0.464838,
		38.473537, 31.808432, 35.971813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333572, 32.216343, 36.624454>,  <38.982372, 32.162285, 36.297199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333572, 32.216343, 36.624454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284836, 31.871006, 36.428577>,  <38.255596, 31.663805, 36.311050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284836, 31.871006, 36.428577>,  <38.333572, 32.216343, 36.624454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284836, 31.871006, 36.428577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283035, -0.442668, 0.850845,
		-0.951340, 0.242266, -0.190421,
		-0.121838, -0.863338, -0.489697,
		38.248283, 31.612005, 36.281670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663597, 31.974279, 36.869316>,  <38.333572, 32.216343, 36.624454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663597, 31.974279, 36.869316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836399, 31.662912, 36.687134>,  <37.940079, 31.476091, 36.577824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836399, 31.662912, 36.687134>,  <37.663597, 31.974279, 36.869316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836399, 31.662912, 36.687134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233092, -0.584221, 0.777402,
		-0.871230, -0.229676, -0.433828,
		0.432002, -0.778418, -0.455455,
		37.966000, 31.429386, 36.550499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279282, 31.369474, 36.990402>,  <37.663597, 31.974279, 36.869316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279282, 31.369474, 36.990402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636265, 31.208330, 36.909187>,  <37.850452, 31.111643, 36.860458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636265, 31.208330, 36.909187>,  <37.279282, 31.369474, 36.990402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636265, 31.208330, 36.909187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111627, -0.633265, 0.765842,
		-0.437107, -0.660815, -0.610132,
		0.892456, -0.402862, -0.203040,
		37.904003, 31.087471, 36.848274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089691, 30.649763, 36.996208>,  <37.279282, 31.369474, 36.990402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089691, 30.649763, 36.996208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477104, 30.697453, 37.083591>,  <37.709553, 30.726067, 37.136021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477104, 30.697453, 37.083591>,  <37.089691, 30.649763, 36.996208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477104, 30.697453, 37.083591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082590, -0.674075, 0.734031,
		0.234774, -0.728977, -0.643019,
		0.968535, 0.119225, 0.218461,
		37.767666, 30.733219, 37.149128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215366, 30.155710, 37.302597>,  <37.089691, 30.649763, 36.996208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215366, 30.155710, 37.302597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597755, 30.263689, 37.348637>,  <37.827187, 30.328476, 37.376263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597755, 30.263689, 37.348637>,  <37.215366, 30.155710, 37.302597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597755, 30.263689, 37.348637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129200, -0.739314, 0.660849,
		0.263490, -0.616882, -0.741640,
		0.955971, 0.269947, 0.115101,
		37.884548, 30.344673, 37.383167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563560, 29.498613, 37.352993>,  <37.215366, 30.155710, 37.302597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563560, 29.498613, 37.352993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777523, 29.787376, 37.528595>,  <37.905899, 29.960634, 37.633957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777523, 29.787376, 37.528595>,  <37.563560, 29.498613, 37.352993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777523, 29.787376, 37.528595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133162, -0.585123, 0.799937,
		0.834354, -0.369430, -0.409115,
		0.534904, 0.721909, 0.439006,
		37.937996, 30.003948, 37.660297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177273, 29.189495, 37.659973>,  <37.563560, 29.498613, 37.352993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177273, 29.189495, 37.659973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110928, 29.524099, 37.868870>,  <38.071121, 29.724861, 37.994209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110928, 29.524099, 37.868870>,  <38.177273, 29.189495, 37.659973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110928, 29.524099, 37.868870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349238, -0.445431, 0.824393,
		0.922237, 0.319127, -0.218259,
		-0.165867, 0.836510, 0.522245,
		38.061169, 29.775053, 38.025543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655090, 29.168825, 38.207863>,  <38.177273, 29.189495, 37.659973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655090, 29.168825, 38.207863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367599, 29.421406, 38.324272>,  <38.195103, 29.572954, 38.394119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367599, 29.421406, 38.324272>,  <38.655090, 29.168825, 38.207863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367599, 29.421406, 38.324272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293073, -0.104430, 0.950370,
		0.630505, 0.768350, -0.110005,
		-0.718729, 0.631453, 0.291026,
		38.151981, 29.610842, 38.411579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836117, 29.487766, 38.878319>,  <38.655090, 29.168825, 38.207863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836117, 29.487766, 38.878319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446484, 29.575083, 38.854626>,  <38.212704, 29.627472, 38.840408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446484, 29.575083, 38.854626>,  <38.836117, 29.487766, 38.878319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446484, 29.575083, 38.854626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065391, -0.021093, 0.997637,
		0.216524, 0.975656, 0.034820,
		-0.974085, 0.218289, -0.059232,
		38.154259, 29.640570, 38.836857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735054, 29.953100, 39.494438>,  <38.836117, 29.487766, 38.878319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735054, 29.953100, 39.494438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355644, 29.852959, 39.416855>,  <38.127998, 29.792873, 39.370304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355644, 29.852959, 39.416855>,  <38.735054, 29.953100, 39.494438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355644, 29.852959, 39.416855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196643, -0.014498, 0.980368,
		-0.248249, 0.968046, -0.035479,
		-0.948527, -0.250352, -0.193959,
		38.071087, 29.777853, 39.358665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260788, 30.377747, 39.923130>,  <38.735054, 29.953100, 39.494438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260788, 30.377747, 39.923130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070564, 30.045898, 39.806118>,  <37.956432, 29.846790, 39.735909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070564, 30.045898, 39.806118>,  <38.260788, 30.377747, 39.923130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070564, 30.045898, 39.806118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133244, -0.260773, 0.956161,
		-0.869535, 0.493687, 0.013471,
		-0.475558, -0.829620, -0.292532,
		37.927898, 29.797012, 39.718357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704906, 30.409794, 40.345863>,  <38.260788, 30.377747, 39.923130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704906, 30.409794, 40.345863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783497, 30.029898, 40.248379>,  <37.830650, 29.801960, 40.189888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783497, 30.029898, 40.248379>,  <37.704906, 30.409794, 40.345863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783497, 30.029898, 40.248379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079513, -0.263167, 0.961468,
		-0.977279, -0.169531, -0.127223,
		0.196479, -0.949738, -0.243708,
		37.842442, 29.744976, 40.175266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177601, 30.037466, 40.585720>,  <37.704906, 30.409794, 40.345863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177601, 30.037466, 40.585720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525047, 29.839867, 40.570400>,  <37.733517, 29.721308, 40.561207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525047, 29.839867, 40.570400>,  <37.177601, 30.037466, 40.585720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525047, 29.839867, 40.570400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122657, -0.289276, 0.949355,
		-0.480058, -0.819930, -0.311863,
		0.868619, -0.493998, -0.038299,
		37.785633, 29.691668, 40.558910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118088, 29.359270, 40.990658>,  <37.177601, 30.037466, 40.585720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118088, 29.359270, 40.990658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503284, 29.467079, 40.992008>,  <37.734402, 29.531765, 40.992817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503284, 29.467079, 40.992008>,  <37.118088, 29.359270, 40.990658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503284, 29.467079, 40.992008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063908, -0.240457, 0.968554,
		0.261857, -0.932491, -0.248782,
		0.962988, 0.269521, 0.003372,
		37.792183, 29.547935, 40.993019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356361, 28.938919, 41.460545>,  <37.118088, 29.359270, 40.990658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356361, 28.938919, 41.460545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634590, 29.224716, 41.430412>,  <37.801529, 29.396194, 41.412331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634590, 29.224716, 41.430412>,  <37.356361, 28.938919, 41.460545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634590, 29.224716, 41.430412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245062, -0.137386, 0.959724,
		0.675365, -0.686022, -0.270657,
		0.695576, 0.714492, -0.075333,
		37.843262, 29.439064, 41.407814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991962, 28.905840, 41.023701>,  <37.356361, 28.938919, 41.460545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991962, 28.905840, 41.023701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633205, 28.887342, 40.847771>,  <37.417950, 28.876244, 40.742210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633205, 28.887342, 40.847771>,  <37.991962, 28.905840, 41.023701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633205, 28.887342, 40.847771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383179, 0.415304, -0.825043,
		0.220815, -0.908506, -0.354763,
		-0.896891, -0.046244, -0.439826,
		37.364140, 28.873468, 40.715824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301601, 28.900681, 40.389053>,  <37.991962, 28.905840, 41.023701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301601, 28.900681, 40.389053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911114, 28.985920, 40.373100>,  <37.676823, 29.037064, 40.363529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911114, 28.985920, 40.373100>,  <38.301601, 28.900681, 40.389053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911114, 28.985920, 40.373100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120233, 0.379082, -0.917519,
		-0.180404, -0.900492, -0.395687,
		-0.976216, 0.213099, -0.039881,
		37.618248, 29.049850, 40.361137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901958, 28.642242, 39.734276>,  <38.301601, 28.900681, 40.389053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901958, 28.642242, 39.734276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765392, 28.986179, 39.886120>,  <37.683453, 29.192541, 39.977226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765392, 28.986179, 39.886120>,  <37.901958, 28.642242, 39.734276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765392, 28.986179, 39.886120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075125, 0.427550, -0.900864,
		-0.936906, -0.279049, -0.210568,
		-0.341413, 0.859844, 0.379611,
		37.662968, 29.244133, 40.000004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301266, 28.767525, 39.285015>,  <37.901958, 28.642242, 39.734276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301266, 28.767525, 39.285015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474743, 29.094660, 39.436306>,  <37.578827, 29.290941, 39.527081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474743, 29.094660, 39.436306>,  <37.301266, 28.767525, 39.285015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474743, 29.094660, 39.436306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072294, 0.386821, -0.919316,
		-0.898157, 0.426042, 0.108636,
		0.433690, 0.817837, 0.378227,
		37.604851, 29.340012, 39.549774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859951, 29.389198, 39.119999>,  <37.301266, 28.767525, 39.285015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859951, 29.389198, 39.119999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242733, 29.502739, 39.144222>,  <37.472401, 29.570864, 39.158756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242733, 29.502739, 39.144222>,  <36.859951, 29.389198, 39.119999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242733, 29.502739, 39.144222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031398, 0.308668, -0.950652,
		-0.288537, 0.907828, 0.304294,
		0.956954, 0.283852, 0.060558,
		37.529819, 29.587894, 39.162388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860435, 29.925648, 38.714161>,  <36.859951, 29.389198, 39.119999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860435, 29.925648, 38.714161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250305, 29.850597, 38.762833>,  <37.484226, 29.805567, 38.792034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250305, 29.850597, 38.762833>,  <36.860435, 29.925648, 38.714161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250305, 29.850597, 38.762833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149252, 0.140586, -0.978754,
		0.166532, 0.972128, 0.165028,
		0.974675, -0.187624, 0.121680,
		37.542709, 29.794310, 38.799335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184677, 30.352345, 38.287415>,  <36.860435, 29.925648, 38.714161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184677, 30.352345, 38.287415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442158, 30.050558, 38.338684>,  <37.596645, 29.869486, 38.369446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442158, 30.050558, 38.338684>,  <37.184677, 30.352345, 38.287415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442158, 30.050558, 38.338684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352767, 0.143899, -0.924580,
		0.679119, 0.640372, 0.358779,
		0.643703, -0.754465, 0.128178,
		37.635269, 29.824219, 38.377136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732876, 30.539204, 38.648701>,  <37.184677, 30.352345, 38.287415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732876, 30.539204, 38.648701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055885, 30.303326, 38.653759>,  <38.249691, 30.161798, 38.656796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055885, 30.303326, 38.653759>,  <37.732876, 30.539204, 38.648701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055885, 30.303326, 38.653759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262604, 0.340245, -0.902924,
		0.528146, 0.732458, 0.429613,
		0.807528, -0.589694, 0.012648,
		38.298145, 30.126417, 38.657555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235981, 30.982319, 38.473404>,  <37.732876, 30.539204, 38.648701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235981, 30.982319, 38.473404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318382, 30.604012, 38.372944>,  <38.367825, 30.377026, 38.312668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318382, 30.604012, 38.372944>,  <38.235981, 30.982319, 38.473404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318382, 30.604012, 38.372944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273659, 0.302101, -0.913152,
		0.939506, 0.119385, 0.321054,
		0.206007, -0.945771, -0.251154,
		38.380184, 30.320280, 38.297596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853939, 30.859079, 38.194096>,  <38.235981, 30.982319, 38.473404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853939, 30.859079, 38.194096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601170, 30.602913, 38.019489>,  <38.449509, 30.449213, 37.914726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601170, 30.602913, 38.019489>,  <38.853939, 30.859079, 38.194096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601170, 30.602913, 38.019489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127760, 0.469440, -0.873672,
		0.764430, -0.607861, -0.214830,
		-0.631921, -0.640414, -0.436515,
		38.411594, 30.410789, 37.888535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107658, 30.594498, 37.602333>,  <38.853939, 30.859079, 38.194096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107658, 30.594498, 37.602333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715336, 30.544975, 37.542080>,  <38.479942, 30.515263, 37.505928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715336, 30.544975, 37.542080>,  <39.107658, 30.594498, 37.602333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715336, 30.544975, 37.542080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063977, 0.525442, -0.848421,
		0.184187, -0.841774, -0.507436,
		-0.980807, -0.123804, -0.150634,
		38.421093, 30.507833, 37.496891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099884, 30.967239, 37.088039>,  <39.107658, 30.594498, 37.602333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099884, 30.967239, 37.088039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733681, 30.807364, 37.069717>,  <38.513958, 30.711437, 37.058723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733681, 30.807364, 37.069717>,  <39.099884, 30.967239, 37.088039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733681, 30.807364, 37.069717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147059, 0.438446, -0.886645,
		0.374465, -0.804993, -0.460177,
		-0.915505, -0.399690, -0.045801,
		38.459030, 30.687456, 37.055977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064251, 30.569738, 36.532997>,  <39.099884, 30.967239, 37.088039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064251, 30.569738, 36.532997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700706, 30.719101, 36.607334>,  <38.482578, 30.808718, 36.651936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700706, 30.719101, 36.607334>,  <39.064251, 30.569738, 36.532997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700706, 30.719101, 36.607334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016426, 0.413172, -0.910505,
		-0.416772, -0.830577, -0.369384,
		-0.908863, 0.373405, 0.185841,
		38.428047, 30.831123, 36.663086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694057, 30.424095, 35.996834>,  <39.064251, 30.569738, 36.532997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694057, 30.424095, 35.996834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507717, 30.726696, 36.180435>,  <38.395912, 30.908257, 36.290596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507717, 30.726696, 36.180435>,  <38.694057, 30.424095, 35.996834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507717, 30.726696, 36.180435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157327, 0.439649, -0.884283,
		-0.870763, -0.484161, -0.085794,
		-0.465855, 0.756503, 0.459001,
		38.367962, 30.953648, 36.318134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123680, 30.603659, 35.589550>,  <38.694057, 30.424095, 35.996834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123680, 30.603659, 35.589550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192795, 30.929060, 35.811668>,  <38.234264, 31.124302, 35.944939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192795, 30.929060, 35.811668>,  <38.123680, 30.603659, 35.589550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192795, 30.929060, 35.811668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192333, 0.580791, -0.791006,
		-0.965998, 0.029872, 0.256816,
		0.172785, 0.813504, 0.555298,
		38.244629, 31.173111, 35.978256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590580, 31.115868, 35.392326>,  <38.123680, 30.603659, 35.589550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590580, 31.115868, 35.392326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893475, 31.312975, 35.563801>,  <38.075211, 31.431238, 35.666683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893475, 31.312975, 35.563801>,  <37.590580, 31.115868, 35.392326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893475, 31.312975, 35.563801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043817, 0.693193, -0.719419,
		-0.651664, 0.525990, 0.546505,
		0.757241, 0.492766, 0.428681,
		38.120647, 31.460804, 35.692406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385811, 31.778343, 35.167068>,  <37.590580, 31.115868, 35.392326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385811, 31.778343, 35.167068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756783, 31.847572, 35.299686>,  <37.979366, 31.889111, 35.379257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756783, 31.847572, 35.299686>,  <37.385811, 31.778343, 35.167068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756783, 31.847572, 35.299686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085408, 0.765050, -0.638282,
		-0.364120, 0.620277, 0.694747,
		0.927428, 0.173074, 0.331546,
		38.035011, 31.899494, 35.399151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431396, 32.522869, 35.338352>,  <37.385811, 31.778343, 35.167068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431396, 32.522869, 35.338352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812767, 32.410049, 35.295589>,  <38.041588, 32.342358, 35.269932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812767, 32.410049, 35.295589>,  <37.431396, 32.522869, 35.338352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812767, 32.410049, 35.295589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119293, 0.678134, -0.725192,
		0.277037, 0.678663, 0.680196,
		0.953425, -0.282048, -0.106909,
		38.098793, 32.325436, 35.263515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873100, 33.103809, 35.320831>,  <37.431396, 32.522869, 35.338352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873100, 33.103809, 35.320831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090462, 32.835983, 35.118290>,  <38.220879, 32.675285, 34.996765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090462, 32.835983, 35.118290>,  <37.873100, 33.103809, 35.320831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090462, 32.835983, 35.118290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299994, 0.718239, -0.627803,
		0.784041, 0.189245, 0.591157,
		0.543400, -0.669567, -0.506356,
		38.253483, 32.635113, 34.966385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561470, 33.453541, 35.217422>,  <37.873100, 33.103809, 35.320831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561470, 33.453541, 35.217422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489136, 33.182899, 34.931904>,  <38.445736, 33.020515, 34.760593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489136, 33.182899, 34.931904>,  <38.561470, 33.453541, 35.217422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489136, 33.182899, 34.931904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200407, 0.685181, -0.700260,
		0.962878, -0.269684, 0.011688,
		-0.180841, -0.676607, -0.713792,
		38.434883, 32.979916, 34.717766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958767, 33.693768, 34.741463>,  <38.561470, 33.453541, 35.217422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958767, 33.693768, 34.741463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757362, 33.415955, 34.535900>,  <38.636520, 33.249268, 34.412563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757362, 33.415955, 34.535900>,  <38.958767, 33.693768, 34.741463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757362, 33.415955, 34.535900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050488, 0.570144, -0.819992,
		0.862512, -0.438821, -0.252008,
		-0.503511, -0.694530, -0.513911,
		38.606308, 33.207596, 34.381725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308163, 33.540016, 34.163883>,  <38.958767, 33.693768, 34.741463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308163, 33.540016, 34.163883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935112, 33.436382, 34.063419>,  <38.711281, 33.374203, 34.003139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935112, 33.436382, 34.063419>,  <39.308163, 33.540016, 34.163883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935112, 33.436382, 34.063419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080936, 0.528115, -0.845307,
		0.351650, -0.808684, -0.471565,
		-0.932626, -0.259086, -0.251163,
		38.655323, 33.358658, 33.988071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365288, 33.169178, 33.435127>,  <39.308163, 33.540016, 34.163883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365288, 33.169178, 33.435127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004311, 33.336071, 33.478069>,  <38.787724, 33.436207, 33.503834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004311, 33.336071, 33.478069>,  <39.365288, 33.169178, 33.435127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004311, 33.336071, 33.478069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210225, 0.643974, -0.735597,
		-0.376046, -0.641262, -0.668859,
		-0.902439, 0.417229, 0.107355,
		38.733578, 33.461239, 33.510277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971634, 33.081528, 32.854462>,  <39.365288, 33.169178, 33.435127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971634, 33.081528, 32.854462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796555, 33.402145, 33.017410>,  <38.691505, 33.594517, 33.115181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796555, 33.402145, 33.017410>,  <38.971634, 33.081528, 32.854462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796555, 33.402145, 33.017410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086243, 0.488417, -0.868338,
		-0.894976, -0.344936, -0.282906,
		-0.437698, 0.801541, 0.407373,
		38.665245, 33.642609, 33.139622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394585, 33.559040, 32.483467>,  <38.971634, 33.081528, 32.854462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394585, 33.559040, 32.483467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754784, 33.604614, 32.651333>,  <39.970905, 33.631958, 32.752052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754784, 33.604614, 32.651333>,  <39.394585, 33.559040, 32.483467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754784, 33.604614, 32.651333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132271, -0.991104, -0.014737,
		0.414248, 0.068780, -0.907562,
		0.900502, 0.113939, 0.419660,
		40.024933, 33.638798, 32.777229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771133, 33.082699, 32.175922>,  <39.394585, 33.559040, 32.483467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771133, 33.082699, 32.175922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946327, 33.157787, 32.527588>,  <40.051441, 33.202839, 32.738586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946327, 33.157787, 32.527588>,  <39.771133, 33.082699, 32.175922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946327, 33.157787, 32.527588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070071, -0.982108, 0.174795,
		0.896250, -0.014952, -0.443298,
		0.437980, 0.187722, 0.879167,
		40.077721, 33.214104, 32.791336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520706, 32.824970, 32.209961>,  <39.771133, 33.082699, 32.175922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520706, 32.824970, 32.209961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305286, 32.830025, 32.546963>,  <40.176037, 32.833057, 32.749165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305286, 32.830025, 32.546963>,  <40.520706, 32.824970, 32.209961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305286, 32.830025, 32.546963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035352, -0.998668, 0.037582,
		0.841853, 0.050024, 0.537383,
		-0.538548, 0.012641, 0.842501,
		40.143723, 32.833817, 32.799713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864243, 32.416229, 32.769150>,  <40.520706, 32.824970, 32.209961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864243, 32.416229, 32.769150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470104, 32.433250, 32.835209>,  <40.233620, 32.443462, 32.874844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470104, 32.433250, 32.835209>,  <40.864243, 32.416229, 32.769150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470104, 32.433250, 32.835209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028960, -0.996055, 0.083876,
		0.168065, 0.077865, 0.982696,
		-0.985350, 0.042556, 0.165147,
		40.174500, 32.446018, 32.884754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542034, 32.811325, 32.866913>,  <40.864243, 32.416229, 32.769150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542034, 32.811325, 32.866913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474762, 33.194523, 32.773987>,  <41.434399, 33.424442, 32.718231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474762, 33.194523, 32.773987>,  <41.542034, 32.811325, 32.866913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474762, 33.194523, 32.773987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963155, 0.209873, 0.168183,
		0.209873, -0.195466, -0.957991,
		-0.168183, 0.957991, -0.232311,
		41.424309, 33.481918, 32.704292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996815, 32.952435, 32.293636>,  <41.542034, 32.811325, 32.866913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996815, 32.952435, 32.293636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916050, 33.265987, 32.528503>,  <41.867592, 33.454117, 32.669422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916050, 33.265987, 32.528503>,  <41.996815, 32.952435, 32.293636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916050, 33.265987, 32.528503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956991, 0.030385, 0.288522,
		0.208326, 0.620170, -0.756300,
		-0.201913, 0.783879, 0.587167,
		41.855476, 33.501152, 32.704655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471405, 33.483963, 32.154377>,  <41.996815, 32.952435, 32.293636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471405, 33.483963, 32.154377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336323, 33.524181, 32.528725>,  <42.255272, 33.548313, 32.753334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336323, 33.524181, 32.528725>,  <42.471405, 33.483963, 32.154377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336323, 33.524181, 32.528725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938834, 0.107181, 0.327265,
		-0.067403, 0.989142, -0.130591,
		-0.337708, 0.100545, 0.935865,
		42.235012, 33.554344, 32.809483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826843, 34.059967, 32.491634>,  <42.471405, 33.483963, 32.154377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826843, 34.059967, 32.491634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688511, 33.787823, 32.750095>,  <42.605511, 33.624538, 32.905174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688511, 33.787823, 32.750095>,  <42.826843, 34.059967, 32.491634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688511, 33.787823, 32.750095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891562, -0.023642, 0.452281,
		-0.292436, 0.732499, 0.614757,
		-0.345830, -0.680357, 0.646155,
		42.584763, 33.583717, 32.943943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897854, 34.216610, 33.239132>,  <42.826843, 34.059967, 32.491634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897854, 34.216610, 33.239132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898991, 33.816715, 33.229992>,  <42.899673, 33.576778, 33.224506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898991, 33.816715, 33.229992>,  <42.897854, 34.216610, 33.239132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.898991, 33.816715, 33.229992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925317, -0.006037, 0.379147,
		-0.379184, -0.022219, 0.925054,
		0.002840, -0.999735, -0.022849,
		42.899841, 33.516796, 33.223137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148884, 34.047962, 33.998875>,  <42.897854, 34.216610, 33.239132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148884, 34.047962, 33.998875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.266636, 33.796093, 33.711308>,  <43.337288, 33.644970, 33.538765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.266636, 33.796093, 33.711308>,  <43.148884, 34.047962, 33.998875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.266636, 33.796093, 33.711308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949190, 0.105073, 0.296645,
		-0.111251, -0.769718, 0.628615,
		0.294383, -0.629677, -0.718920,
		43.354950, 33.607189, 33.495632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659729, 33.775097, 34.362492>,  <43.148884, 34.047962, 33.998875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659729, 33.775097, 34.362492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694359, 33.725109, 33.967140>,  <43.715137, 33.695118, 33.729931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694359, 33.725109, 33.967140>,  <43.659729, 33.775097, 34.362492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694359, 33.725109, 33.967140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982047, 0.177604, 0.063569,
		0.167596, -0.976135, 0.138099,
		0.086579, -0.124965, -0.988376,
		43.720333, 33.687618, 33.670628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036808, 33.211945, 33.925884>,  <43.659729, 33.775097, 34.362492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036808, 33.211945, 33.925884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067047, 33.562138, 33.734962>,  <44.085190, 33.772251, 33.620407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067047, 33.562138, 33.734962>,  <44.036808, 33.211945, 33.925884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067047, 33.562138, 33.734962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987502, 0.000659, 0.157606,
		0.138295, -0.483255, -0.864488,
		0.075594, 0.875479, -0.477306,
		44.089725, 33.824780, 33.591770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463444, 33.177784, 33.302521>,  <44.036808, 33.211945, 33.925884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463444, 33.177784, 33.302521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.465622, 33.517471, 33.513729>,  <44.466927, 33.721283, 33.640453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.465622, 33.517471, 33.513729>,  <44.463444, 33.177784, 33.302521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.465622, 33.517471, 33.513729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875372, -0.259306, 0.408024,
		0.483419, 0.459991, -0.744792,
		0.005442, 0.849216, 0.528017,
		44.467255, 33.772236, 33.672134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.093540, 33.545742, 33.034756>,  <44.463444, 33.177784, 33.302521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.093540, 33.545742, 33.034756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.983402, 33.619118, 33.412228>,  <44.917320, 33.663143, 33.638710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.983402, 33.619118, 33.412228>,  <45.093540, 33.545742, 33.034756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.983402, 33.619118, 33.412228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885148, -0.334636, 0.323313,
		0.375098, 0.924321, -0.070229,
		-0.275344, 0.183437, 0.943682,
		44.900799, 33.674149, 33.695332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.602734, 33.865986, 33.360596>,  <45.093540, 33.545742, 33.034756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.602734, 33.865986, 33.360596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.436497, 33.687969, 33.677891>,  <45.336754, 33.581161, 33.868267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.436497, 33.687969, 33.677891>,  <45.602734, 33.865986, 33.360596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.436497, 33.687969, 33.677891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883249, 0.010747, 0.468780,
		-0.217150, 0.895448, 0.388612,
		-0.415592, -0.445037, 0.793238,
		45.311821, 33.554459, 33.915863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.768391, 34.124367, 34.067352>,  <45.602734, 33.865986, 33.360596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.768391, 34.124367, 34.067352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.749928, 33.725018, 34.053940>,  <45.738850, 33.485409, 34.045891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.749928, 33.725018, 34.053940>,  <45.768391, 34.124367, 34.067352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.749928, 33.725018, 34.053940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915794, -0.055697, 0.397769,
		-0.398989, -0.012348, 0.916873,
		-0.046156, -0.998371, -0.033530,
		45.736080, 33.425507, 34.043880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.419868, 34.516384, 33.975708>,  <45.768391, 34.124367, 34.067352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.419868, 34.516384, 33.975708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.701077, 34.315159, 33.774639>,  <46.869801, 34.194424, 33.653996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.701077, 34.315159, 33.774639>,  <46.419868, 34.516384, 33.975708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.701077, 34.315159, 33.774639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709660, 0.450252, 0.541900,
		-0.046281, -0.737697, 0.673543,
		0.703023, -0.503066, -0.502676,
		46.911983, 34.164238, 33.623837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.772881, 34.146000, 34.546494>,  <46.419868, 34.516384, 33.975708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.772881, 34.146000, 34.546494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.956520, 34.274410, 34.215153>,  <47.066704, 34.351456, 34.016346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.956520, 34.274410, 34.215153>,  <46.772881, 34.146000, 34.546494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.956520, 34.274410, 34.215153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752229, 0.355592, 0.554713,
		0.472632, -0.877780, -0.078232,
		0.459097, 0.321024, -0.828356,
		47.094250, 34.370716, 33.966644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.427837, 34.001305, 34.756927>,  <46.772881, 34.146000, 34.546494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.427837, 34.001305, 34.756927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.400066, 34.287781, 34.479149>,  <47.383404, 34.459667, 34.312481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.400066, 34.287781, 34.479149>,  <47.427837, 34.001305, 34.756927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.400066, 34.287781, 34.479149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807001, 0.449557, 0.382948,
		0.586455, -0.533830, -0.609176,
		-0.069430, 0.716187, -0.694446,
		47.379238, 34.502636, 34.270817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.866264, 34.656521, 34.762703>,  <47.427837, 34.001305, 34.756927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.866264, 34.656521, 34.762703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.643040, 34.945530, 34.925934>,  <47.509106, 35.118935, 35.023872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.643040, 34.945530, 34.925934>,  <47.866264, 34.656521, 34.762703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.643040, 34.945530, 34.925934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756624, 0.241145, 0.607758,
		0.340710, 0.647932, -0.681250,
		-0.558065, 0.722519, 0.408080,
		47.475620, 35.162285, 35.048359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.131081, 37.912674, 24.199247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.960892, 37.701176, 23.905474>,  <37.858780, 37.574276, 23.729210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.960892, 37.701176, 23.905474>,  <38.131081, 37.912674, 24.199247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960892, 37.701176, 23.905474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287447, -0.690570, 0.663692,
		-0.858107, 0.493494, 0.141831,
		-0.425473, -0.528750, -0.734436,
		37.833248, 37.542549, 23.685143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460484, 37.704521, 24.501925>,  <38.131081, 37.912674, 24.199247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460484, 37.704521, 24.501925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.528198, 37.448109, 24.202480>,  <37.568829, 37.294262, 24.022814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.528198, 37.448109, 24.202480>,  <37.460484, 37.704521, 24.501925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528198, 37.448109, 24.202480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358150, -0.747658, 0.559228,
		-0.918188, 0.173443, -0.356158,
		0.169290, -0.641034, -0.748610,
		37.578987, 37.255798, 23.977898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918987, 37.253937, 24.417597>,  <37.460484, 37.704521, 24.501925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918987, 37.253937, 24.417597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.201492, 37.036846, 24.235765>,  <37.370995, 36.906593, 24.126667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.201492, 37.036846, 24.235765>,  <36.918987, 37.253937, 24.417597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201492, 37.036846, 24.235765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352675, -0.826482, 0.438803,
		-0.613848, -0.149594, -0.775120,
		0.706265, -0.542724, -0.454577,
		37.413372, 36.874027, 24.099392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580505, 36.591301, 24.240229>,  <36.918987, 37.253937, 24.417597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580505, 36.591301, 24.240229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.975662, 36.529903, 24.231291>,  <37.212757, 36.493065, 24.225927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.975662, 36.529903, 24.231291>,  <36.580505, 36.591301, 24.240229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975662, 36.529903, 24.231291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119941, -0.847249, 0.517477,
		-0.098363, -0.508534, -0.855405,
		0.987896, -0.153498, -0.022344,
		37.272030, 36.483852, 24.224588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655056, 35.952778, 24.158220>,  <36.580505, 36.591301, 24.240229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655056, 35.952778, 24.158220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.019558, 36.028049, 24.304756>,  <37.238258, 36.073212, 24.392677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.019558, 36.028049, 24.304756>,  <36.655056, 35.952778, 24.158220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019558, 36.028049, 24.304756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004381, -0.893888, 0.448270,
		0.411822, -0.406883, -0.815383,
		0.911253, 0.188180, 0.366340,
		37.292934, 36.084503, 24.414658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916889, 35.285583, 24.281391>,  <36.655056, 35.952778, 24.158220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916889, 35.285583, 24.281391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.179054, 35.509705, 24.483973>,  <37.336353, 35.644176, 24.605520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.179054, 35.509705, 24.483973>,  <36.916889, 35.285583, 24.281391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179054, 35.509705, 24.483973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225250, -0.785048, 0.577028,
		0.720903, -0.264112, -0.640737,
		0.655410, 0.560307, 0.506452,
		37.375679, 35.677795, 24.635908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545986, 34.888931, 24.295780>,  <36.916889, 35.285583, 24.281391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545986, 34.888931, 24.295780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.540653, 35.154942, 24.594460>,  <37.537453, 35.314548, 24.773666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.540653, 35.154942, 24.594460>,  <37.545986, 34.888931, 24.295780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540653, 35.154942, 24.594460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022072, -0.746387, 0.665147,
		0.999667, 0.025348, -0.004729,
		-0.013330, 0.665030, 0.746698,
		37.536655, 35.354450, 24.818468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130424, 34.705795, 24.782011>,  <37.545986, 34.888931, 24.295780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130424, 34.705795, 24.782011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.856873, 34.918163, 24.982183>,  <37.692741, 35.045586, 25.102287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.856873, 34.918163, 24.982183>,  <38.130424, 34.705795, 24.782011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856873, 34.918163, 24.982183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112511, -0.600957, 0.791323,
		0.720867, 0.597475, 0.351248,
		-0.683881, 0.530919, 0.500432,
		37.651707, 35.077438, 25.132313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135883, 34.498970, 25.350466>,  <38.130424, 34.705795, 24.782011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135883, 34.498970, 25.350466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.796146, 34.679810, 25.459444>,  <37.592304, 34.788315, 25.524830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.796146, 34.679810, 25.459444>,  <38.135883, 34.498970, 25.350466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796146, 34.679810, 25.459444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011926, -0.499575, 0.866188,
		0.527710, 0.738938, 0.418918,
		-0.849341, 0.452100, 0.272443,
		37.541344, 34.815441, 25.541178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221909, 34.633507, 25.999693>,  <38.135883, 34.498970, 25.350466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221909, 34.633507, 25.999693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.823921, 34.634300, 25.959644>,  <37.585129, 34.634777, 25.935616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.823921, 34.634300, 25.959644>,  <38.221909, 34.633507, 25.999693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823921, 34.634300, 25.959644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088098, -0.492726, 0.865714,
		-0.047616, 0.870182, 0.490423,
		-0.994973, 0.001984, -0.100123,
		37.525429, 34.634895, 25.929607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036034, 34.847256, 26.552139>,  <38.221909, 34.633507, 25.999693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036034, 34.847256, 26.552139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.696453, 34.674541, 26.430258>,  <37.492706, 34.570915, 26.357128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.696453, 34.674541, 26.430258>,  <38.036034, 34.847256, 26.552139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696453, 34.674541, 26.430258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126246, -0.394182, 0.910320,
		-0.513170, 0.811285, 0.280130,
		-0.848951, -0.431784, -0.304704,
		37.441769, 34.545006, 26.338846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643909, 34.854637, 27.146622>,  <38.036034, 34.847256, 26.552139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643909, 34.854637, 27.146622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.486694, 34.569527, 26.914251>,  <37.392365, 34.398460, 26.774830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.486694, 34.569527, 26.914251>,  <37.643909, 34.854637, 27.146622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486694, 34.569527, 26.914251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116486, -0.588085, 0.800367,
		-0.912113, 0.382246, 0.148112,
		-0.393040, -0.712772, -0.580926,
		37.368782, 34.355694, 26.739973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896236, 34.647678, 27.371763>,  <37.643909, 34.854637, 27.146622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896236, 34.647678, 27.371763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980907, 34.314686, 27.166952>,  <37.031712, 34.114891, 27.044065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980907, 34.314686, 27.166952>,  <36.896236, 34.647678, 27.371763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980907, 34.314686, 27.166952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133591, -0.543628, 0.828626,
		-0.968166, -0.107001, -0.226287,
		0.211680, -0.832478, -0.512028,
		37.044411, 34.064941, 27.013344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414276, 34.095131, 27.592709>,  <36.896236, 34.647678, 27.371763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414276, 34.095131, 27.592709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.697681, 33.879002, 27.411135>,  <36.867725, 33.749325, 27.302191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.697681, 33.879002, 27.411135>,  <36.414276, 34.095131, 27.592709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697681, 33.879002, 27.411135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089443, -0.706812, 0.701724,
		-0.700017, -0.456571, -0.549107,
		0.708502, -0.540333, -0.453943,
		36.910236, 33.716904, 27.274954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090431, 33.404922, 27.705088>,  <36.414276, 34.095131, 27.592709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090431, 33.404922, 27.705088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.479603, 33.351921, 27.629343>,  <36.713104, 33.320122, 27.583897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.479603, 33.351921, 27.629343>,  <36.090431, 33.404922, 27.705088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479603, 33.351921, 27.629343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018290, -0.860901, 0.508443,
		-0.230391, -0.491214, -0.840017,
		0.972926, -0.132504, -0.189360,
		36.771481, 33.312168, 27.572535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184586, 32.701206, 27.389429>,  <36.090431, 33.404922, 27.705088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184586, 32.701206, 27.389429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.552151, 32.806019, 27.507368>,  <36.772690, 32.868904, 27.578131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.552151, 32.806019, 27.507368>,  <36.184586, 32.701206, 27.389429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552151, 32.806019, 27.507368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058026, -0.829149, 0.556008,
		0.390162, -0.493816, -0.777123,
		0.918916, 0.262027, 0.294848,
		36.827824, 32.884628, 27.595823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613392, 32.038940, 27.414986>,  <36.184586, 32.701206, 27.389429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613392, 32.038940, 27.414986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.791576, 32.305721, 27.653898>,  <36.898487, 32.465790, 27.797245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.791576, 32.305721, 27.653898>,  <36.613392, 32.038940, 27.414986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791576, 32.305721, 27.653898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155927, -0.714727, 0.681800,
		0.881619, -0.210583, -0.422377,
		0.445460, 0.666948, 0.597282,
		36.925213, 32.505806, 27.833082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311108, 31.802114, 27.502401>,  <36.613392, 32.038940, 27.414986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311108, 31.802114, 27.502401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.220646, 32.036156, 27.813917>,  <37.166370, 32.176582, 28.000826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.220646, 32.036156, 27.813917>,  <37.311108, 31.802114, 27.502401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220646, 32.036156, 27.813917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409341, -0.668398, 0.621035,
		0.883910, 0.459236, -0.088349,
		-0.226150, 0.585104, 0.778787,
		37.152802, 32.211685, 28.047554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927059, 31.705231, 28.103302>,  <37.311108, 31.802114, 27.502401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927059, 31.705231, 28.103302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.621857, 31.865572, 28.306135>,  <37.438736, 31.961777, 28.427835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.621857, 31.865572, 28.306135>,  <37.927059, 31.705231, 28.103302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621857, 31.865572, 28.306135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332402, -0.429485, 0.839674,
		0.554371, 0.809234, 0.194456,
		-0.763008, 0.400853, 0.507085,
		37.392956, 31.985828, 28.458261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138039, 31.729826, 28.839022>,  <37.927059, 31.705231, 28.103302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138039, 31.729826, 28.839022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.743767, 31.785574, 28.877005>,  <37.507206, 31.819023, 28.899796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.743767, 31.785574, 28.877005>,  <38.138039, 31.729826, 28.839022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743767, 31.785574, 28.877005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025224, -0.434900, 0.900125,
		0.166746, 0.889628, 0.425156,
		-0.985677, 0.139368, 0.094958,
		37.448063, 31.827385, 28.905493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077492, 32.096550, 29.497372>,  <38.138039, 31.729826, 28.839022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077492, 32.096550, 29.497372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.734261, 31.909187, 29.413185>,  <37.528320, 31.796770, 29.362673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.734261, 31.909187, 29.413185>,  <38.077492, 32.096550, 29.497372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734261, 31.909187, 29.413185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046295, -0.478745, 0.876733,
		-0.511425, 0.742564, 0.432486,
		-0.858080, -0.468405, -0.210464,
		37.476837, 31.768665, 29.350046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969925, 32.283031, 30.229530>,  <38.077492, 32.096550, 29.497372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969925, 32.283031, 30.229530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.180229, 32.497253, 30.493881>,  <38.306412, 32.625786, 30.652493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.180229, 32.497253, 30.493881>,  <37.969925, 32.283031, 30.229530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180229, 32.497253, 30.493881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296506, 0.612818, -0.732488,
		-0.797283, 0.581067, 0.163402,
		0.525760, 0.535551, 0.660879,
		38.337955, 32.657917, 30.692144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869904, 32.966217, 30.040934>,  <37.969925, 32.283031, 30.229530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869904, 32.966217, 30.040934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.204533, 32.933132, 30.257561>,  <38.405312, 32.913280, 30.387537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.204533, 32.933132, 30.257561>,  <37.869904, 32.966217, 30.040934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204533, 32.933132, 30.257561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461124, 0.640063, -0.614560,
		-0.295809, 0.763857, 0.573602,
		0.836577, -0.082709, 0.541570,
		38.455505, 32.908318, 30.420033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128777, 33.677113, 30.273130>,  <37.869904, 32.966217, 30.040934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128777, 33.677113, 30.273130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.449993, 33.438831, 30.266668>,  <38.642723, 33.295864, 30.262791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.449993, 33.438831, 30.266668>,  <38.128777, 33.677113, 30.273130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449993, 33.438831, 30.266668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492078, 0.678153, -0.545864,
		0.336130, 0.430401, 0.837718,
		0.803042, -0.595704, -0.016157,
		38.690907, 33.260120, 30.261822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634048, 34.117939, 30.312881>,  <38.128777, 33.677113, 30.273130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634048, 34.117939, 30.312881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.830959, 33.792770, 30.188419>,  <38.949104, 33.597668, 30.113741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.830959, 33.792770, 30.188419>,  <38.634048, 34.117939, 30.312881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830959, 33.792770, 30.188419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567738, 0.570834, -0.593145,
		0.659801, 0.115336, 0.742536,
		0.492276, -0.812924, -0.311156,
		38.978642, 33.548893, 30.095072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220699, 34.416252, 30.194075>,  <38.634048, 34.117939, 30.312881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220699, 34.416252, 30.194075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.256836, 34.066494, 30.003386>,  <39.278519, 33.856640, 29.888971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.256836, 34.066494, 30.003386>,  <39.220699, 34.416252, 30.194075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256836, 34.066494, 30.003386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646431, 0.415627, -0.639829,
		0.757604, -0.250362, 0.602788,
		0.090346, -0.874398, -0.476723,
		39.283939, 33.804173, 29.860369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997192, 34.224087, 29.999895>,  <39.220699, 34.416252, 30.194075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997192, 34.224087, 29.999895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.785538, 34.004845, 29.740789>,  <39.658543, 33.873299, 29.585325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.785538, 34.004845, 29.740789>,  <39.997192, 34.224087, 29.999895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785538, 34.004845, 29.740789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611335, 0.283163, -0.738978,
		0.588458, -0.787022, 0.185241,
		-0.529138, -0.548101, -0.647763,
		39.626797, 33.840416, 29.546461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502132, 33.794216, 29.579929>,  <39.997192, 34.224087, 29.999895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502132, 33.794216, 29.579929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.174702, 33.827240, 29.352558>,  <39.978241, 33.847054, 29.216135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.174702, 33.827240, 29.352558>,  <40.502132, 33.794216, 29.579929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174702, 33.827240, 29.352558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564026, 0.302692, -0.768279,
		0.108626, -0.949506, -0.294346,
		-0.818581, 0.082564, -0.568426,
		39.929127, 33.852009, 29.182030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760807, 33.670097, 28.894432>,  <40.502132, 33.794216, 29.579929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760807, 33.670097, 28.894432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.404377, 33.839924, 28.830269>,  <40.190517, 33.941818, 28.791771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.404377, 33.839924, 28.830269>,  <40.760807, 33.670097, 28.894432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404377, 33.839924, 28.830269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420659, 0.639903, -0.643095,
		-0.170392, -0.640521, -0.748799,
		-0.891074, 0.424567, -0.160407,
		40.137054, 33.967293, 28.782146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782566, 33.692719, 28.122976>,  <40.760807, 33.670097, 28.894432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782566, 33.692719, 28.122976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.508785, 33.947098, 28.265577>,  <40.344517, 34.099728, 28.351139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.508785, 33.947098, 28.265577>,  <40.782566, 33.692719, 28.122976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508785, 33.947098, 28.265577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399907, 0.736353, -0.545764,
		-0.609591, -0.230980, -0.758318,
		-0.684451, 0.635950, 0.356504,
		40.303452, 34.137882, 28.372528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701412, 33.989300, 27.443325>,  <40.782566, 33.692719, 28.122976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701412, 33.989300, 27.443325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.536587, 34.220135, 27.725368>,  <40.437691, 34.358635, 27.894594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.536587, 34.220135, 27.725368>,  <40.701412, 33.989300, 27.443325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536587, 34.220135, 27.725368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298976, 0.816651, -0.493653,
		-0.860708, 0.007395, -0.509045,
		-0.412062, 0.577084, 0.705109,
		40.412968, 34.393261, 27.936901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326382, 34.393810, 27.074564>,  <40.701412, 33.989300, 27.443325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326382, 34.393810, 27.074564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.401230, 34.587040, 27.416704>,  <40.446136, 34.702976, 27.621988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.401230, 34.587040, 27.416704>,  <40.326382, 34.393810, 27.074564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401230, 34.587040, 27.416704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214643, 0.829585, -0.515478,
		-0.958601, 0.280051, 0.051542,
		0.187118, 0.483074, 0.855351,
		40.457367, 34.731964, 27.673309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892368, 35.026283, 27.137957>,  <40.326382, 34.393810, 27.074564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892368, 35.026283, 27.137957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.201904, 35.100727, 27.380123>,  <40.387627, 35.145393, 27.525423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.201904, 35.100727, 27.380123>,  <39.892368, 35.026283, 27.137957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201904, 35.100727, 27.380123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103833, 0.905650, -0.411117,
		-0.624807, 0.381003, 0.681508,
		0.773844, 0.186106, 0.605417,
		40.434059, 35.156559, 27.561749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712357, 35.629112, 27.328964>,  <39.892368, 35.026283, 27.137957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712357, 35.629112, 27.328964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.107883, 35.604965, 27.383516>,  <40.345200, 35.590477, 27.416246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.107883, 35.604965, 27.383516>,  <39.712357, 35.629112, 27.328964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107883, 35.604965, 27.383516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122427, 0.850765, -0.511088,
		-0.085174, 0.522069, 0.848640,
		0.988816, -0.060365, 0.136378,
		40.404530, 35.586857, 27.424429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809235, 36.348278, 27.395214>,  <39.712357, 35.629112, 27.328964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809235, 36.348278, 27.395214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.190781, 36.231239, 27.368273>,  <40.419708, 36.161018, 27.352108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.190781, 36.231239, 27.368273>,  <39.809235, 36.348278, 27.395214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190781, 36.231239, 27.368273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185359, 0.750344, -0.634529,
		0.236198, 0.592768, 0.769959,
		0.953862, -0.292593, -0.067355,
		40.476940, 36.143463, 27.348066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306335, 36.920826, 27.558634>,  <39.809235, 36.348278, 27.395214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306335, 36.920826, 27.558634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.509243, 36.677563, 27.314396>,  <40.630989, 36.531605, 27.167852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.509243, 36.677563, 27.314396>,  <40.306335, 36.920826, 27.558634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509243, 36.677563, 27.314396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148663, 0.759652, -0.633110,
		0.848868, 0.230384, 0.475759,
		0.507270, -0.608154, -0.610595,
		40.661423, 36.495117, 27.131218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786411, 37.287251, 27.240973>,  <40.306335, 36.920826, 27.558634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786411, 37.287251, 27.240973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.753597, 36.983513, 26.982775>,  <40.733910, 36.801270, 26.827856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.753597, 36.983513, 26.982775>,  <40.786411, 37.287251, 27.240973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753597, 36.983513, 26.982775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018577, 0.646402, -0.762771,
		0.996456, -0.074565, -0.038922,
		-0.082035, -0.759345, -0.645497,
		40.728985, 36.755711, 26.789125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379654, 37.330246, 26.879211>,  <40.786411, 37.287251, 27.240973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379654, 37.330246, 26.879211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.120811, 37.125542, 26.653164>,  <40.965508, 37.002720, 26.517536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.120811, 37.125542, 26.653164>,  <41.379654, 37.330246, 26.879211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120811, 37.125542, 26.653164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096333, 0.680411, -0.726472,
		0.756293, -0.524540, -0.390996,
		-0.647101, -0.511760, -0.565121,
		40.926682, 36.972015, 26.483627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593719, 37.430981, 26.240988>,  <41.379654, 37.330246, 26.879211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593719, 37.430981, 26.240988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.209679, 37.332077, 26.188726>,  <40.979256, 37.272736, 26.157370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.209679, 37.332077, 26.188726>,  <41.593719, 37.430981, 26.240988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209679, 37.332077, 26.188726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091670, 0.719640, -0.688270,
		0.264201, -0.648832, -0.713593,
		-0.960101, -0.247257, -0.130651,
		40.921650, 37.257900, 26.149530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490639, 37.396183, 25.490789>,  <41.593719, 37.430981, 26.240988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490639, 37.396183, 25.490789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.127407, 37.444061, 25.651320>,  <40.909470, 37.472790, 25.747639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.127407, 37.444061, 25.651320>,  <41.490639, 37.396183, 25.490789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127407, 37.444061, 25.651320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224571, 0.669689, -0.707873,
		-0.353494, -0.732932, -0.581251,
		-0.908080, 0.119696, 0.401326,
		40.854984, 37.479969, 25.771717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.424862, 37.195454, 24.722359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.326508, 37.409065, 25.045927>,  <40.267494, 37.537231, 25.240068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.326508, 37.409065, 25.045927>,  <40.424862, 37.195454, 24.722359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326508, 37.409065, 25.045927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488606, 0.652469, -0.579266,
		-0.837140, -0.537677, 0.100497,
		-0.245887, 0.534030, 0.808920,
		40.252743, 37.569275, 25.288603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822937, 37.368252, 24.668295>,  <40.424862, 37.195454, 24.722359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822937, 37.368252, 24.668295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.890366, 37.646133, 24.948002>,  <39.930820, 37.812862, 25.115826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.890366, 37.646133, 24.948002>,  <39.822937, 37.368252, 24.668295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890366, 37.646133, 24.948002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502526, 0.670868, -0.545348,
		-0.847970, -0.259471, 0.462193,
		0.168569, 0.694702, 0.699266,
		39.940937, 37.854546, 25.157782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132301, 37.697140, 24.857504>,  <39.822937, 37.368252, 24.668295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132301, 37.697140, 24.857504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.439903, 37.944935, 24.920589>,  <39.624462, 38.093613, 24.958441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.439903, 37.944935, 24.920589>,  <39.132301, 37.697140, 24.857504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439903, 37.944935, 24.920589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512151, 0.744703, -0.427924,
		-0.382543, 0.248301, 0.889948,
		0.769001, 0.619486, 0.157713,
		39.670605, 38.130779, 24.967903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779747, 38.322285, 25.085892>,  <39.132301, 37.697140, 24.857504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779747, 38.322285, 25.085892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.151344, 38.417240, 24.972315>,  <39.374302, 38.474213, 24.904169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.151344, 38.417240, 24.972315>,  <38.779747, 38.322285, 25.085892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151344, 38.417240, 24.972315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355320, 0.786733, -0.504776,
		0.103557, 0.569822, 0.815217,
		0.928991, 0.237390, -0.283941,
		39.430042, 38.488457, 24.887133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725388, 38.966583, 25.214262>,  <38.779747, 38.322285, 25.085892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725388, 38.966583, 25.214262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.046928, 38.951954, 24.976782>,  <39.239853, 38.943176, 24.834293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.046928, 38.951954, 24.976782>,  <38.725388, 38.966583, 25.214262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046928, 38.951954, 24.976782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366407, 0.755820, -0.542662,
		0.468579, 0.653757, 0.594168,
		0.803853, -0.036573, -0.593702,
		39.288086, 38.940983, 24.798672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872383, 39.731106, 25.014685>,  <38.725388, 38.966583, 25.214262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872383, 39.731106, 25.014685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.063606, 39.501133, 24.749079>,  <39.178341, 39.363148, 24.589716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.063606, 39.501133, 24.749079>,  <38.872383, 39.731106, 25.014685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063606, 39.501133, 24.749079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170253, 0.681002, -0.712215,
		0.861672, 0.453528, 0.227671,
		0.478054, -0.574933, -0.664015,
		39.207024, 39.328651, 24.549873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384686, 40.088528, 24.760525>,  <38.872383, 39.731106, 25.014685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384686, 40.088528, 24.760525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.324345, 39.815353, 24.474632>,  <39.288139, 39.651447, 24.303097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.324345, 39.815353, 24.474632>,  <39.384686, 40.088528, 24.760525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324345, 39.815353, 24.474632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079886, 0.729060, -0.679772,
		0.985323, -0.045447, -0.164536,
		-0.150851, -0.682939, -0.714730,
		39.279091, 39.610470, 24.260214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790623, 40.279686, 24.139912>,  <39.384686, 40.088528, 24.760525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790623, 40.279686, 24.139912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.558033, 40.009781, 23.958107>,  <39.418480, 39.847839, 23.849024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.558033, 40.009781, 23.958107>,  <39.790623, 40.279686, 24.139912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558033, 40.009781, 23.958107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141074, 0.466579, -0.873156,
		0.801241, -0.571837, -0.176111,
		-0.581474, -0.674764, -0.454514,
		39.383591, 39.807350, 23.821753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164413, 39.967201, 23.642370>,  <39.790623, 40.279686, 24.139912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164413, 39.967201, 23.642370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.771282, 39.978062, 23.569372>,  <39.535404, 39.984577, 23.525574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.771282, 39.978062, 23.569372>,  <40.164413, 39.967201, 23.642370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771282, 39.978062, 23.569372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167301, 0.548187, -0.819452,
		0.077792, -0.835915, -0.543318,
		-0.982832, 0.027151, -0.182494,
		39.476433, 39.986206, 23.514624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248028, 39.933296, 22.939482>,  <40.164413, 39.967201, 23.642370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248028, 39.933296, 22.939482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.867756, 40.044327, 22.994858>,  <39.639595, 40.110943, 23.028084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.867756, 40.044327, 22.994858>,  <40.248028, 39.933296, 22.939482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867756, 40.044327, 22.994858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027739, 0.520613, -0.853342,
		-0.308940, -0.807412, -0.502634,
		-0.950677, 0.277574, 0.138442,
		39.582554, 40.127598, 23.036390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735085, 39.811634, 22.238321>,  <40.248028, 39.933296, 22.939482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735085, 39.811634, 22.238321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.590096, 40.085239, 22.491537>,  <39.503101, 40.249401, 22.643467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.590096, 40.085239, 22.491537>,  <39.735085, 39.811634, 22.238321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590096, 40.085239, 22.491537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023921, 0.672182, -0.740000,
		-0.931686, -0.283375, -0.227287,
		-0.362476, 0.684011, 0.633041,
		39.481354, 40.290443, 22.681450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178020, 40.084801, 21.834885>,  <39.735085, 39.811634, 22.238321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178020, 40.084801, 21.834885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.221066, 40.345528, 22.135166>,  <39.246891, 40.501965, 22.315334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.221066, 40.345528, 22.135166>,  <39.178020, 40.084801, 21.834885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221066, 40.345528, 22.135166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021814, 0.756455, -0.653682,
		-0.993954, 0.053967, 0.095620,
		0.107609, 0.651816, 0.750704,
		39.253349, 40.541073, 22.360378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713078, 40.612629, 21.671112>,  <39.178020, 40.084801, 21.834885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713078, 40.612629, 21.671112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.963917, 40.793919, 21.924515>,  <39.114422, 40.902695, 22.076557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.963917, 40.793919, 21.924515>,  <38.713078, 40.612629, 21.671112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963917, 40.793919, 21.924515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185189, 0.703227, -0.686423,
		-0.756605, 0.547774, 0.357061,
		0.627100, 0.453227, 0.633507,
		39.152046, 40.929886, 22.114567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461777, 41.361652, 21.827467>,  <38.713078, 40.612629, 21.671112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461777, 41.361652, 21.827467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.850468, 41.364529, 21.921864>,  <39.083683, 41.366253, 21.978500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.850468, 41.364529, 21.921864>,  <38.461777, 41.361652, 21.827467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850468, 41.364529, 21.921864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130782, 0.815791, -0.563366,
		-0.196567, 0.578302, 0.791788,
		0.971729, 0.007187, 0.235989,
		39.141987, 41.366684, 21.992661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595463, 42.068428, 21.844704>,  <38.461777, 41.361652, 21.827467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595463, 42.068428, 21.844704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.939964, 41.870831, 21.797022>,  <39.146667, 41.752274, 21.768414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.939964, 41.870831, 21.797022>,  <38.595463, 42.068428, 21.844704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939964, 41.870831, 21.797022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279366, 0.656208, -0.700961,
		0.424492, 0.570405, 0.703167,
		0.861256, -0.493993, -0.119203,
		39.198341, 41.722633, 21.761261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032391, 42.559624, 22.125231>,  <38.595463, 42.068428, 21.844704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032391, 42.559624, 22.125231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.217918, 42.304005, 21.879795>,  <39.329235, 42.150635, 21.732534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.217918, 42.304005, 21.879795>,  <39.032391, 42.559624, 22.125231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217918, 42.304005, 21.879795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233408, 0.756270, -0.611210,
		0.854628, 0.140277, 0.499933,
		0.463823, -0.639045, -0.613587,
		39.357067, 42.112289, 21.695719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592922, 42.843292, 21.960716>,  <39.032391, 42.559624, 22.125231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592922, 42.843292, 21.960716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.582623, 42.582291, 21.657776>,  <39.576443, 42.425690, 21.476011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.582623, 42.582291, 21.657776>,  <39.592922, 42.843292, 21.960716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582623, 42.582291, 21.657776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258031, 0.727590, -0.635635,
		0.965794, -0.211786, 0.149631,
		-0.025749, -0.652502, -0.757349,
		39.574898, 42.386539, 21.430571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236694, 42.936863, 21.662962>,  <39.592922, 42.843292, 21.960716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236694, 42.936863, 21.662962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.966591, 42.779270, 21.413546>,  <39.804527, 42.684715, 21.263897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.966591, 42.779270, 21.413546>,  <40.236694, 42.936863, 21.662962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966591, 42.779270, 21.413546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058313, 0.814225, -0.577614,
		0.735270, -0.426401, -0.526840,
		-0.675262, -0.393981, -0.623540,
		39.764011, 42.661076, 21.226484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524124, 42.892231, 20.920940>,  <40.236694, 42.936863, 21.662962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524124, 42.892231, 20.920940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.124851, 42.916260, 20.922821>,  <39.885288, 42.930676, 20.923950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.124851, 42.916260, 20.922821>,  <40.524124, 42.892231, 20.920940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124851, 42.916260, 20.922821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042756, 0.761133, -0.647185,
		-0.042457, -0.645808, -0.762318,
		-0.998183, 0.060071, 0.004703,
		39.825397, 42.934280, 20.924232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456848, 43.431355, 20.409845>,  <40.524124, 42.892231, 20.920940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456848, 43.431355, 20.409845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.075871, 43.343349, 20.494181>,  <39.847286, 43.290546, 20.544783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.075871, 43.343349, 20.494181>,  <40.456848, 43.431355, 20.409845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075871, 43.343349, 20.494181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296138, 0.831385, -0.470213,
		-0.071835, -0.510287, -0.856999,
		-0.952440, -0.220012, 0.210838,
		39.790138, 43.277348, 20.557432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116013, 43.396851, 19.769632>,  <40.456848, 43.431355, 20.409845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116013, 43.396851, 19.769632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.871792, 43.482224, 20.074701>,  <39.725258, 43.533447, 20.257742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.871792, 43.482224, 20.074701>,  <40.116013, 43.396851, 19.769632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871792, 43.482224, 20.074701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284027, 0.839932, -0.462431,
		-0.739291, -0.498959, -0.452204,
		-0.610555, 0.213433, 0.762672,
		39.688625, 43.546253, 20.303503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501812, 43.560516, 19.441029>,  <40.116013, 43.396851, 19.769632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501812, 43.560516, 19.441029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.497593, 43.740509, 19.798218>,  <39.495060, 43.848507, 20.012531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.497593, 43.740509, 19.798218>,  <39.501812, 43.560516, 19.441029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497593, 43.740509, 19.798218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427733, 0.805168, -0.410791,
		-0.903844, -0.386286, 0.183982,
		-0.010547, 0.449986, 0.892974,
		39.494431, 43.875504, 20.066111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500587, 43.095451, 18.745308>,  <39.501812, 43.560516, 19.441029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500587, 43.095451, 18.745308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.232452, 42.855923, 18.920609>,  <39.071571, 42.712208, 19.025789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.232452, 42.855923, 18.920609>,  <39.500587, 43.095451, 18.745308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232452, 42.855923, 18.920609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733818, 0.622701, -0.271578,
		-0.110273, -0.503645, -0.856844,
		-0.670337, -0.598819, 0.438251,
		39.031353, 42.676277, 19.052084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919369, 42.952793, 18.234646>,  <39.500587, 43.095451, 18.745308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919369, 42.952793, 18.234646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.809677, 42.908936, 18.616804>,  <38.743862, 42.882622, 18.846098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.809677, 42.908936, 18.616804>,  <38.919369, 42.952793, 18.234646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809677, 42.908936, 18.616804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742746, 0.655198, -0.138001,
		-0.610842, -0.747459, -0.261107,
		-0.274227, -0.109639, 0.955394,
		38.727409, 42.876045, 18.903423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241428, 43.014931, 17.989170>,  <38.919369, 42.952793, 18.234646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241428, 43.014931, 17.989170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.325016, 42.716709, 17.736032>,  <38.375168, 42.537777, 17.584150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.325016, 42.716709, 17.736032>,  <38.241428, 43.014931, 17.989170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325016, 42.716709, 17.736032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538428, -0.627925, 0.561966,
		-0.816350, 0.223307, -0.532641,
		0.208968, -0.745549, -0.632842,
		38.387707, 42.493046, 17.546181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591759, 42.698910, 17.789785>,  <38.241428, 43.014931, 17.989170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591759, 42.698910, 17.789785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.889339, 42.436893, 17.736935>,  <38.067886, 42.279682, 17.705225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.889339, 42.436893, 17.736935>,  <37.591759, 42.698910, 17.789785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889339, 42.436893, 17.736935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520244, -0.691845, 0.500696,
		-0.419389, -0.303754, -0.855480,
		0.743948, -0.655045, -0.132126,
		38.112522, 42.240379, 17.697296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177189, 42.174786, 17.667950>,  <37.591759, 42.698910, 17.789785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177189, 42.174786, 17.667950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.532982, 42.023293, 17.770235>,  <37.746456, 41.932396, 17.831606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.532982, 42.023293, 17.770235>,  <37.177189, 42.174786, 17.667950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532982, 42.023293, 17.770235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456688, -0.716761, 0.526964,
		-0.016296, -0.585503, -0.810506,
		0.889478, -0.378736, 0.255712,
		37.799824, 41.909672, 17.846949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017048, 41.555771, 17.941294>,  <37.177189, 42.174786, 17.667950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017048, 41.555771, 17.941294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.385712, 41.584446, 18.093826>,  <37.606911, 41.601650, 18.185345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.385712, 41.584446, 18.093826>,  <37.017048, 41.555771, 17.941294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385712, 41.584446, 18.093826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210765, -0.732650, 0.647149,
		0.325777, -0.676819, -0.660140,
		0.921655, 0.071692, 0.381330,
		37.662209, 41.605953, 18.208225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052010, 40.918083, 18.258183>,  <37.017048, 41.555771, 17.941294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052010, 40.918083, 18.258183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.342514, 41.134151, 18.428247>,  <37.516815, 41.263790, 18.530287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.342514, 41.134151, 18.428247>,  <37.052010, 40.918083, 18.258183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342514, 41.134151, 18.428247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020283, -0.601381, 0.798705,
		0.687119, -0.588692, -0.425804,
		0.726262, 0.540169, 0.425161,
		37.560394, 41.296204, 18.555796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570034, 40.484165, 18.429928>,  <37.052010, 40.918083, 18.258183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570034, 40.484165, 18.429928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.625931, 40.804886, 18.662338>,  <37.659470, 40.997318, 18.801785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.625931, 40.804886, 18.662338>,  <37.570034, 40.484165, 18.429928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625931, 40.804886, 18.662338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057870, -0.592394, 0.803568,
		0.988495, -0.078670, -0.129183,
		0.139744, 0.801798, 0.581026,
		37.667854, 41.045425, 18.836645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006168, 40.337963, 18.953403>,  <37.570034, 40.484165, 18.429928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006168, 40.337963, 18.953403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.830986, 40.654701, 19.123667>,  <37.725876, 40.844742, 19.225824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.830986, 40.654701, 19.123667>,  <38.006168, 40.337963, 18.953403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830986, 40.654701, 19.123667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015166, -0.466906, 0.884177,
		0.898871, 0.393683, 0.192473,
		-0.437952, 0.791842, 0.425658,
		37.699600, 40.892254, 19.251364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468185, 40.626263, 19.506483>,  <38.006168, 40.337963, 18.953403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468185, 40.626263, 19.506483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.099541, 40.741722, 19.610268>,  <37.878353, 40.810997, 19.672539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.099541, 40.741722, 19.610268>,  <38.468185, 40.626263, 19.506483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099541, 40.741722, 19.610268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110317, -0.446119, 0.888149,
		0.372116, 0.847147, 0.379303,
		-0.921607, 0.288651, 0.259462,
		37.823059, 40.828316, 19.688107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534893, 40.699173, 20.240540>,  <38.468185, 40.626263, 19.506483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534893, 40.699173, 20.240540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.140038, 40.688412, 20.177500>,  <37.903126, 40.681953, 20.139675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.140038, 40.688412, 20.177500>,  <38.534893, 40.699173, 20.240540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140038, 40.688412, 20.177500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119991, -0.526757, 0.841504,
		-0.105658, 0.849590, 0.516753,
		-0.987137, -0.026906, -0.157600,
		37.843895, 40.680340, 20.130220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365017, 40.780022, 20.914553>,  <38.534893, 40.699173, 20.240540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365017, 40.780022, 20.914553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057648, 40.635880, 20.703016>,  <37.873226, 40.549397, 20.576094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057648, 40.635880, 20.703016>,  <38.365017, 40.780022, 20.914553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057648, 40.635880, 20.703016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290887, -0.539396, 0.790213,
		-0.570011, 0.761050, 0.309662,
		-0.768422, -0.360353, -0.528841,
		37.827122, 40.527775, 20.544365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857754, 40.778416, 21.345764>,  <38.365017, 40.780022, 20.914553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857754, 40.778416, 21.345764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.742878, 40.489605, 21.093985>,  <37.673954, 40.316319, 20.942917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.742878, 40.489605, 21.093985>,  <37.857754, 40.778416, 21.345764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742878, 40.489605, 21.093985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253949, -0.576224, 0.776837,
		-0.923597, 0.382948, -0.017871,
		-0.287190, -0.722023, -0.629448,
		37.656719, 40.272999, 20.905149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187462, 40.551643, 21.516211>,  <37.857754, 40.778416, 21.345764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187462, 40.551643, 21.516211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.394215, 40.264736, 21.329292>,  <37.518265, 40.092594, 21.217140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.394215, 40.264736, 21.329292>,  <37.187462, 40.551643, 21.516211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394215, 40.264736, 21.329292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194005, -0.629815, 0.752127,
		-0.833785, -0.298102, -0.464692,
		0.516880, -0.717264, -0.467297,
		37.549278, 40.049557, 21.189104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017967, 39.989319, 21.875536>,  <37.187462, 40.551643, 21.516211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017967, 39.989319, 21.875536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.297741, 39.828732, 21.639023>,  <37.465607, 39.732380, 21.497116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.297741, 39.828732, 21.639023>,  <37.017967, 39.989319, 21.875536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297741, 39.828732, 21.639023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015061, -0.835415, 0.549414,
		-0.714537, -0.375374, -0.590365,
		0.699435, -0.401468, -0.591281,
		37.507572, 39.708290, 21.461637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837547, 39.284260, 21.745438>,  <37.017967, 39.989319, 21.875536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837547, 39.284260, 21.745438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.225021, 39.294418, 21.646637>,  <37.457504, 39.300514, 21.587357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.225021, 39.294418, 21.646637>,  <36.837547, 39.284260, 21.745438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225021, 39.294418, 21.646637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112093, -0.932356, 0.343727,
		-0.221565, -0.360650, -0.906003,
		0.968682, 0.025398, -0.247004,
		37.515625, 39.302036, 21.572536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945782, 38.563541, 21.650576>,  <36.837547, 39.284260, 21.745438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945782, 38.563541, 21.650576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.303249, 38.727074, 21.724560>,  <37.517731, 38.825191, 21.768950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.303249, 38.727074, 21.724560>,  <36.945782, 38.563541, 21.650576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303249, 38.727074, 21.724560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258865, -0.806404, 0.531697,
		0.366526, -0.427282, -0.826492,
		0.893671, 0.408830, 0.184960,
		37.571350, 38.849724, 21.780048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485863, 37.950680, 21.535625>,  <36.945782, 38.563541, 21.650576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485863, 37.950680, 21.535625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.665215, 38.234959, 21.752460>,  <37.772827, 38.405525, 21.882563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.665215, 38.234959, 21.752460>,  <37.485863, 37.950680, 21.535625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665215, 38.234959, 21.752460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255952, -0.683162, 0.683943,
		0.856412, -0.167920, -0.488222,
		0.448383, 0.710699, 0.542089,
		37.799728, 38.448170, 21.915087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077583, 37.694424, 21.738535>,  <37.485863, 37.950680, 21.535625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077583, 37.694424, 21.738535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.021870, 37.982769, 22.010109>,  <37.988441, 38.155777, 22.173054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.021870, 37.982769, 22.010109>,  <38.077583, 37.694424, 21.738535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021870, 37.982769, 22.010109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276368, -0.630077, 0.725689,
		0.950905, 0.288714, -0.111463,
		-0.139286, 0.720866, 0.678934,
		37.980083, 38.199028, 22.213789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511333, 37.551857, 22.252993>,  <38.077583, 37.694424, 21.738535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511333, 37.551857, 22.252993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.263626, 37.808182, 22.434479>,  <38.115002, 37.961979, 22.543371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.263626, 37.808182, 22.434479>,  <38.511333, 37.551857, 22.252993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263626, 37.808182, 22.434479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043603, -0.605028, 0.795010,
		0.783966, 0.472543, 0.402618,
		-0.619271, 0.640816, 0.453717,
		38.077847, 38.000427, 22.570593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821671, 37.715675, 22.925436>,  <38.511333, 37.551857, 22.252993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821671, 37.715675, 22.925436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.431641, 37.804211, 22.931597>,  <38.197624, 37.857330, 22.935293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.431641, 37.804211, 22.931597>,  <38.821671, 37.715675, 22.925436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431641, 37.804211, 22.931597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134073, -0.643102, 0.753952,
		0.176780, 0.733096, 0.656749,
		-0.975076, 0.221336, 0.015400,
		38.139118, 37.870613, 22.936216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642223, 37.840019, 23.618879>,  <38.821671, 37.715675, 22.925436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642223, 37.840019, 23.618879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.297211, 37.752945, 23.436167>,  <38.090202, 37.700703, 23.326540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.297211, 37.752945, 23.436167>,  <38.642223, 37.840019, 23.618879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297211, 37.752945, 23.436167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252697, -0.596791, 0.761568,
		-0.438382, 0.772305, 0.459745,
		-0.862535, -0.217681, -0.456781,
		38.038452, 37.687641, 23.299133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.660599, 35.661114, 27.679014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.271297, 35.627285, 27.593571>,  <41.037716, 35.606987, 27.542305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.271297, 35.627285, 27.593571>,  <41.660599, 35.661114, 27.679014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271297, 35.627285, 27.593571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124612, -0.586795, 0.800090,
		-0.193011, 0.805307, 0.560560,
		-0.973252, -0.084573, -0.213609,
		40.979321, 35.601913, 27.529488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414795, 35.398296, 28.334885>,  <41.660599, 35.661114, 27.679014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414795, 35.398296, 28.334885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.099823, 35.344971, 28.094156>,  <40.910839, 35.312977, 27.949718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.099823, 35.344971, 28.094156>,  <41.414795, 35.398296, 28.334885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099823, 35.344971, 28.094156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377781, -0.667107, 0.642067,
		-0.487075, 0.732937, 0.474934,
		-0.787426, -0.133314, -0.601821,
		40.863594, 35.304977, 27.913610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762268, 35.476322, 28.709005>,  <41.414795, 35.398296, 28.334885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762268, 35.476322, 28.709005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.678257, 35.244701, 28.393896>,  <40.627850, 35.105728, 28.204830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.678257, 35.244701, 28.393896>,  <40.762268, 35.476322, 28.709005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678257, 35.244701, 28.393896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552404, -0.594528, 0.584283,
		-0.806683, 0.557888, -0.194999,
		-0.210032, -0.579049, -0.787775,
		40.615246, 35.070988, 28.157564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078815, 35.350277, 28.786938>,  <40.762268, 35.476322, 28.709005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078815, 35.350277, 28.786938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.141193, 35.044529, 28.536684>,  <40.178619, 34.861080, 28.386532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.141193, 35.044529, 28.536684>,  <40.078815, 35.350277, 28.786938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141193, 35.044529, 28.536684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474286, -0.613533, 0.631371,
		-0.866449, 0.198270, -0.458208,
		0.155944, -0.764373, -0.625632,
		40.187977, 34.815216, 28.348995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414474, 35.027348, 28.788977>,  <40.078815, 35.350277, 28.786938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414474, 35.027348, 28.788977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.685387, 34.758656, 28.668930>,  <39.847935, 34.597443, 28.596901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.685387, 34.758656, 28.668930>,  <39.414474, 35.027348, 28.788977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685387, 34.758656, 28.668930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493383, -0.717285, 0.492012,
		-0.545768, -0.185158, -0.817223,
		0.677282, -0.671728, -0.300117,
		39.888573, 34.557137, 28.578894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986069, 34.530205, 28.560459>,  <39.414474, 35.027348, 28.788977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986069, 34.530205, 28.560459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.342857, 34.366386, 28.637045>,  <39.556931, 34.268097, 28.682997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.342857, 34.366386, 28.637045>,  <38.986069, 34.530205, 28.560459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342857, 34.366386, 28.637045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451688, -0.789433, 0.415660,
		-0.019083, -0.457240, -0.889138,
		0.891972, -0.409545, 0.191465,
		39.610451, 34.243523, 28.694485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890499, 33.764645, 28.384876>,  <38.986069, 34.530205, 28.560459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890499, 33.764645, 28.384876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.195881, 33.803974, 28.640211>,  <39.379108, 33.827572, 28.793413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.195881, 33.803974, 28.640211>,  <38.890499, 33.764645, 28.384876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195881, 33.803974, 28.640211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413361, -0.685026, 0.599893,
		0.496262, -0.721853, -0.482341,
		0.763451, 0.098323, 0.638338,
		39.424915, 33.833469, 28.831713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874496, 33.161201, 28.749008>,  <38.890499, 33.764645, 28.384876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874496, 33.161201, 28.749008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.124294, 33.364407, 28.986301>,  <39.274174, 33.486328, 29.128677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.124294, 33.364407, 28.986301>,  <38.874496, 33.161201, 28.749008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124294, 33.364407, 28.986301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225142, -0.610221, 0.759567,
		0.747873, -0.607909, -0.266707,
		0.624498, 0.508012, 0.593234,
		39.311646, 33.516811, 29.164272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233891, 32.705574, 29.156925>,  <38.874496, 33.161201, 28.749008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233891, 32.705574, 29.156925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.265503, 33.039253, 29.375233>,  <39.284470, 33.239460, 29.506216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.265503, 33.039253, 29.375233>,  <39.233891, 32.705574, 29.156925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265503, 33.039253, 29.375233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135514, -0.533407, 0.834933,
		0.987619, -0.139941, 0.070893,
		0.079027, 0.834203, 0.545766,
		39.289211, 33.289513, 29.538963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594242, 32.541679, 29.625410>,  <39.233891, 32.705574, 29.156925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594242, 32.541679, 29.625410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.407154, 32.856937, 29.785444>,  <39.294903, 33.046093, 29.881466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.407154, 32.856937, 29.785444>,  <39.594242, 32.541679, 29.625410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407154, 32.856937, 29.785444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181693, -0.528714, 0.829125,
		0.865001, 0.315104, 0.390490,
		-0.467718, 0.788144, 0.400086,
		39.266838, 33.093380, 29.905470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748348, 32.523136, 30.329123>,  <39.594242, 32.541679, 29.625410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748348, 32.523136, 30.329123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.418507, 32.746819, 30.294905>,  <39.220604, 32.881027, 30.274374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.418507, 32.746819, 30.294905>,  <39.748348, 32.523136, 30.329123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418507, 32.746819, 30.294905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381563, -0.438139, 0.813906,
		0.417664, 0.703789, 0.574664,
		-0.824601, 0.559210, -0.085545,
		39.171127, 32.914581, 30.269241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543484, 32.719807, 31.045019>,  <39.748348, 32.523136, 30.329123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543484, 32.719807, 31.045019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.201721, 32.783394, 30.847145>,  <38.996662, 32.821545, 30.728420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.201721, 32.783394, 30.847145>,  <39.543484, 32.719807, 31.045019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201721, 32.783394, 30.847145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519540, -0.247199, 0.817906,
		0.007734, 0.955836, 0.293799,
		-0.854411, 0.158966, -0.494683,
		38.945396, 32.831085, 30.698740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260670, 33.168171, 31.468456>,  <39.543484, 32.719807, 31.045019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260670, 33.168171, 31.468456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.012154, 32.949650, 31.243761>,  <38.863045, 32.818539, 31.108944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.012154, 32.949650, 31.243761>,  <39.260670, 33.168171, 31.468456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012154, 32.949650, 31.243761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428925, -0.362837, 0.827268,
		-0.655759, 0.754918, -0.008895,
		-0.621292, -0.546304, -0.561736,
		38.825768, 32.785759, 31.075241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665085, 33.376194, 31.712212>,  <39.260670, 33.168171, 31.468456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665085, 33.376194, 31.712212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.619427, 33.011284, 31.554871>,  <38.592033, 32.792339, 31.460466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.619427, 33.011284, 31.554871>,  <38.665085, 33.376194, 31.712212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619427, 33.011284, 31.554871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479761, -0.296094, 0.825928,
		-0.869943, 0.282990, -0.403876,
		-0.114144, -0.912274, -0.393352,
		38.585182, 32.737602, 31.436865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179131, 33.508636, 32.230541>,  <38.665085, 33.376194, 31.712212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179131, 33.508636, 32.230541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.115437, 33.595631, 32.615734>,  <38.077221, 33.647827, 32.846851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.115437, 33.595631, 32.615734>,  <38.179131, 33.508636, 32.230541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115437, 33.595631, 32.615734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612222, 0.743468, -0.269147,
		-0.774486, -0.632419, 0.014765,
		-0.159237, 0.217490, 0.962986,
		38.067665, 33.660877, 32.904629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452366, 33.558945, 32.302391>,  <38.179131, 33.508636, 32.230541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452366, 33.558945, 32.302391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.587341, 33.768429, 32.615280>,  <37.668327, 33.894119, 32.803013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.587341, 33.768429, 32.615280>,  <37.452366, 33.558945, 32.302391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587341, 33.768429, 32.615280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566927, 0.776419, -0.275260,
		-0.751486, -0.350580, 0.558895,
		0.337436, 0.523706, 0.782220,
		37.688572, 33.925541, 32.849945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922543, 33.783592, 32.645840>,  <37.452366, 33.558945, 32.302391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922543, 33.783592, 32.645840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.221016, 34.039097, 32.720890>,  <37.400101, 34.192398, 32.765923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.221016, 34.039097, 32.720890>,  <36.922543, 33.783592, 32.645840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221016, 34.039097, 32.720890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571735, 0.759227, -0.310954,
		-0.341077, 0.124754, 0.931720,
		0.746180, 0.638757, 0.187629,
		37.444870, 34.230724, 32.777180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628323, 34.392235, 32.913170>,  <36.922543, 33.783592, 32.645840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628323, 34.392235, 32.913170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.991009, 34.522350, 32.805801>,  <37.208622, 34.600422, 32.741379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.991009, 34.522350, 32.805801>,  <36.628323, 34.392235, 32.913170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991009, 34.522350, 32.805801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405360, 0.847855, -0.341796,
		0.116398, 0.418720, 0.900625,
		0.906717, 0.325293, -0.268421,
		37.263023, 34.619938, 32.725273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587563, 35.147911, 32.943905>,  <36.628323, 34.392235, 32.913170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587563, 35.147911, 32.943905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.873814, 35.071026, 32.675301>,  <37.045563, 35.024895, 32.514137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.873814, 35.071026, 32.675301>,  <36.587563, 35.147911, 32.943905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873814, 35.071026, 32.675301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243434, 0.832478, -0.497715,
		0.654689, 0.519648, 0.548952,
		0.715627, -0.192215, -0.671514,
		37.088501, 35.013363, 32.473846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949501, 35.804543, 32.836929>,  <36.587563, 35.147911, 32.943905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949501, 35.804543, 32.836929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.114292, 35.586418, 32.544926>,  <37.213169, 35.455544, 32.369724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.114292, 35.586418, 32.544926>,  <36.949501, 35.804543, 32.836929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114292, 35.586418, 32.544926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136301, 0.755260, -0.641096,
		0.900941, 0.363619, 0.236826,
		0.411980, -0.545310, -0.730006,
		37.237885, 35.422825, 32.325924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499405, 36.190762, 32.480972>,  <36.949501, 35.804543, 32.836929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499405, 36.190762, 32.480972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.386425, 35.914639, 32.214531>,  <37.318638, 35.748966, 32.054665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.386425, 35.914639, 32.214531>,  <37.499405, 36.190762, 32.480972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386425, 35.914639, 32.214531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020570, 0.698579, -0.715237,
		0.959061, -0.188318, -0.211514,
		-0.282451, -0.690306, -0.666107,
		37.301689, 35.707546, 32.014698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935677, 36.378361, 31.898172>,  <37.499405, 36.190762, 32.480972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935677, 36.378361, 31.898172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.653519, 36.130909, 31.759779>,  <37.484222, 35.982437, 31.676743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.653519, 36.130909, 31.759779>,  <37.935677, 36.378361, 31.898172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653519, 36.130909, 31.759779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214134, 0.651305, -0.727975,
		0.675693, -0.439424, -0.591899,
		-0.705397, -0.618634, -0.345987,
		37.441898, 35.945320, 31.655983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975853, 36.433720, 31.237192>,  <37.935677, 36.378361, 31.898172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975853, 36.433720, 31.237192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.607872, 36.286644, 31.291582>,  <37.387085, 36.198399, 31.324215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.607872, 36.286644, 31.291582>,  <37.975853, 36.433720, 31.237192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607872, 36.286644, 31.291582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333164, 0.550490, -0.765482,
		0.206607, -0.749510, -0.628926,
		-0.919954, -0.367690, 0.135975,
		37.331886, 36.176338, 31.332375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861420, 36.168385, 30.624588>,  <37.975853, 36.433720, 31.237192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861420, 36.168385, 30.624588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.521416, 36.265011, 30.811831>,  <37.317413, 36.322987, 30.924175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.521416, 36.265011, 30.811831>,  <37.861420, 36.168385, 30.624588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521416, 36.265011, 30.811831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224974, 0.637046, -0.737265,
		-0.476302, -0.731997, -0.487153,
		-0.850014, 0.241564, 0.468106,
		37.266411, 36.337479, 30.952263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362278, 35.946442, 30.223532>,  <37.861420, 36.168385, 30.624588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362278, 35.946442, 30.223532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.170120, 36.219902, 30.443293>,  <37.054825, 36.383980, 30.575150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.170120, 36.219902, 30.443293>,  <37.362278, 35.946442, 30.223532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170120, 36.219902, 30.443293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188401, 0.531355, -0.825934,
		-0.856578, -0.500283, -0.126460,
		-0.480395, 0.683651, 0.549400,
		37.026001, 36.424999, 30.608112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666943, 36.097424, 29.879190>,  <37.362278, 35.946442, 30.223532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666943, 36.097424, 29.879190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.753353, 36.393181, 30.134260>,  <36.805199, 36.570637, 30.287302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.753353, 36.393181, 30.134260>,  <36.666943, 36.097424, 29.879190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753353, 36.393181, 30.134260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085728, 0.664938, -0.741962,
		-0.972616, 0.105618, 0.207032,
		0.216029, 0.739393, 0.637675,
		36.818161, 36.614998, 30.325563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207806, 36.649288, 29.804617>,  <36.666943, 36.097424, 29.879190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207806, 36.649288, 29.804617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.536629, 36.805874, 29.970016>,  <36.733921, 36.899826, 30.069256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.536629, 36.805874, 29.970016>,  <36.207806, 36.649288, 29.804617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536629, 36.805874, 29.970016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051251, 0.672379, -0.738431,
		-0.567096, 0.628224, 0.532670,
		0.822056, 0.391462, 0.413500,
		36.783245, 36.923313, 30.094067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039547, 37.390820, 29.900417>,  <36.207806, 36.649288, 29.804617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039547, 37.390820, 29.900417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.437859, 37.356457, 29.887506>,  <36.676846, 37.335838, 29.879761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.437859, 37.356457, 29.887506>,  <36.039547, 37.390820, 29.900417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437859, 37.356457, 29.887506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040965, 0.730834, -0.681324,
		0.082117, 0.677127, 0.731270,
		0.995780, -0.085905, -0.032275,
		36.736591, 37.330685, 29.877825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475105, 37.684681, 30.326366>,  <36.039547, 37.390820, 29.900417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475105, 37.684681, 30.326366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.116928, 37.828617, 30.221533>,  <34.902020, 37.914978, 30.158632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.116928, 37.828617, 30.221533>,  <35.475105, 37.684681, 30.326366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116928, 37.828617, 30.221533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442982, -0.778530, 0.444588,
		-0.044056, 0.514203, 0.856536,
		-0.895447, 0.359843, -0.262082,
		34.848293, 37.936569, 30.142908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132332, 37.734303, 30.958094>,  <35.475105, 37.684681, 30.326366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132332, 37.734303, 30.958094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.847469, 37.727676, 30.677362>,  <34.676552, 37.723701, 30.508924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.847469, 37.727676, 30.677362>,  <35.132332, 37.734303, 30.958094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847469, 37.727676, 30.677362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447787, -0.759228, 0.472292,
		-0.540670, 0.650614, 0.533271,
		-0.712154, -0.016562, -0.701828,
		34.633823, 37.722706, 30.466814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575615, 37.613411, 31.325684>,  <35.132332, 37.734303, 30.958094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575615, 37.613411, 31.325684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.467026, 37.502258, 30.957100>,  <34.401875, 37.435566, 30.735950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.467026, 37.502258, 30.957100>,  <34.575615, 37.613411, 31.325684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467026, 37.502258, 30.957100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521486, -0.762223, 0.383495,
		-0.808923, 0.584635, 0.062009,
		-0.271469, -0.277881, -0.921459,
		34.385586, 37.418896, 30.680662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958878, 37.329445, 31.414389>,  <34.575615, 37.613411, 31.325684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958878, 37.329445, 31.414389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.085266, 37.192085, 31.060612>,  <34.161098, 37.109669, 30.848347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.085266, 37.192085, 31.060612>,  <33.958878, 37.329445, 31.414389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085266, 37.192085, 31.060612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443253, -0.877642, 0.182403,
		-0.838860, 0.334396, -0.429527,
		0.315976, -0.343399, -0.884441,
		34.180058, 37.089066, 30.795279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374096, 36.990707, 31.256144>,  <33.958878, 37.329445, 31.414389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374096, 36.990707, 31.256144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.675316, 36.850208, 31.033598>,  <33.856049, 36.765907, 30.900070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.675316, 36.850208, 31.033598>,  <33.374096, 36.990707, 31.256144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675316, 36.850208, 31.033598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354432, -0.928968, 0.106758,
		-0.554343, 0.116800, -0.824052,
		0.753048, -0.351251, -0.556364,
		33.901230, 36.744831, 30.866688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166302, 36.560070, 30.657373>,  <33.374096, 36.990707, 31.256144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166302, 36.560070, 30.657373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.546974, 36.440327, 30.684780>,  <33.775375, 36.368481, 30.701223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.546974, 36.440327, 30.684780>,  <33.166302, 36.560070, 30.657373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546974, 36.440327, 30.684780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303055, -0.951564, 0.051807,
		0.049688, -0.070068, -0.996304,
		0.951677, -0.299360, 0.068516,
		33.832478, 36.350517, 30.705336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316311, 36.086205, 30.193876>,  <33.166302, 36.560070, 30.657373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316311, 36.086205, 30.193876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.617481, 36.015736, 30.447512>,  <33.798183, 35.973454, 30.599693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.617481, 36.015736, 30.447512>,  <33.316311, 36.086205, 30.193876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617481, 36.015736, 30.447512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182114, -0.981653, -0.056493,
		0.632407, -0.072942, -0.771195,
		0.752925, -0.176172, 0.634088,
		33.843357, 35.962883, 30.637737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718319, 35.498482, 29.864700>,  <33.316311, 36.086205, 30.193876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718319, 35.498482, 29.864700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.735840, 35.538227, 30.262335>,  <33.746353, 35.562077, 30.500916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.735840, 35.538227, 30.262335>,  <33.718319, 35.498482, 29.864700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735840, 35.538227, 30.262335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121264, -0.987155, 0.104017,
		0.991653, -0.125103, -0.031191,
		0.043803, 0.099366, 0.994086,
		33.748981, 35.568035, 30.560560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988018, 34.880104, 29.986519>,  <33.718319, 35.498482, 29.864700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988018, 34.880104, 29.986519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.955902, 34.963310, 30.376450>,  <33.936634, 35.013233, 30.610407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.955902, 34.963310, 30.376450>,  <33.988018, 34.880104, 29.986519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955902, 34.963310, 30.376450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486414, -0.861808, 0.143835,
		0.870032, -0.462620, 0.170376,
		-0.080290, 0.208014, 0.974825,
		33.931816, 35.025715, 30.668898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315308, 34.285015, 30.387243>,  <33.988018, 34.880104, 29.986519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315308, 34.285015, 30.387243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.035007, 34.482704, 30.593039>,  <33.866829, 34.601318, 30.716515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.035007, 34.482704, 30.593039>,  <34.315308, 34.285015, 30.387243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035007, 34.482704, 30.593039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426547, -0.868317, 0.253147,
		0.571848, -0.042060, 0.819281,
		-0.700748, 0.494223, 0.514486,
		33.824783, 34.630970, 30.747385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473000, 34.111076, 31.020409>,  <34.315308, 34.285015, 30.387243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473000, 34.111076, 31.020409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.090965, 34.229279, 31.029230>,  <33.861744, 34.300201, 31.034523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.090965, 34.229279, 31.029230>,  <34.473000, 34.111076, 31.020409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090965, 34.229279, 31.029230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285635, -0.937882, 0.196949,
		0.078882, 0.181804, 0.980165,
		-0.955086, 0.295505, 0.022052,
		33.804440, 34.317928, 31.035847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206348, 33.830578, 31.621990>,  <34.473000, 34.111076, 31.020409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206348, 33.830578, 31.621990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.905617, 33.906002, 31.369261>,  <33.725178, 33.951256, 31.217623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.905617, 33.906002, 31.369261>,  <34.206348, 33.830578, 31.621990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905617, 33.906002, 31.369261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493256, -0.796734, 0.349161,
		-0.437558, 0.574160, 0.692014,
		-0.751826, 0.188562, -0.631825,
		33.680069, 33.962570, 31.179714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.401764, 41.226826, 28.590078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044788, 41.122601, 28.442751>,  <35.830605, 41.060066, 28.354355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044788, 41.122601, 28.442751>,  <36.401764, 41.226826, 28.590078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044788, 41.122601, 28.442751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204128, -0.494838, 0.844670,
		-0.402351, 0.829000, 0.388424,
		-0.892438, -0.260566, -0.368321,
		35.777058, 41.044430, 28.332254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906876, 41.239571, 29.190384>,  <36.401764, 41.226826, 28.590078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906876, 41.239571, 29.190384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762432, 41.003124, 28.901888>,  <35.675766, 40.861256, 28.728790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762432, 41.003124, 28.901888>,  <35.906876, 41.239571, 29.190384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762432, 41.003124, 28.901888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363581, -0.622973, 0.692613,
		-0.858725, 0.512339, 0.010045,
		-0.361111, -0.591112, -0.721239,
		35.654099, 40.825790, 28.685516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239834, 41.040733, 29.453150>,  <35.906876, 41.239571, 29.190384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239834, 41.040733, 29.453150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335388, 40.764626, 29.179958>,  <35.392719, 40.598961, 29.016043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335388, 40.764626, 29.179958>,  <35.239834, 41.040733, 29.453150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335388, 40.764626, 29.179958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573275, -0.667943, 0.474561,
		-0.783767, 0.278171, -0.555275,
		0.238883, -0.690270, -0.682980,
		35.407055, 40.557545, 28.975065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554150, 40.731518, 29.292019>,  <35.239834, 41.040733, 29.453150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554150, 40.731518, 29.292019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853512, 40.482533, 29.200430>,  <35.033131, 40.333141, 29.145477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853512, 40.482533, 29.200430>,  <34.554150, 40.731518, 29.292019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853512, 40.482533, 29.200430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466432, -0.739406, 0.485511,
		-0.471514, -0.256561, -0.843713,
		0.748409, -0.622459, -0.228972,
		35.078033, 40.295795, 29.131739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314892, 40.046452, 29.155090>,  <34.554150, 40.731518, 29.292019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314892, 40.046452, 29.155090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696293, 39.949753, 29.227087>,  <34.925133, 39.891735, 29.270285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696293, 39.949753, 29.227087>,  <34.314892, 40.046452, 29.155090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696293, 39.949753, 29.227087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284082, -0.920348, 0.268807,
		0.100675, -0.307440, -0.946227,
		0.953500, -0.241744, 0.179994,
		34.982342, 39.877232, 29.281086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429047, 39.473949, 28.754492>,  <34.314892, 40.046452, 29.155090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429047, 39.473949, 28.754492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694153, 39.467602, 29.053957>,  <34.853214, 39.463795, 29.233637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694153, 39.467602, 29.053957>,  <34.429047, 39.473949, 28.754492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694153, 39.467602, 29.053957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294879, -0.924526, 0.241451,
		0.688326, -0.380789, -0.617419,
		0.662762, -0.015867, 0.748662,
		34.892982, 39.462841, 29.278555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741745, 38.805378, 28.750732>,  <34.429047, 39.473949, 28.754492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741745, 38.805378, 28.750732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860313, 38.919609, 29.115276>,  <34.931454, 38.988148, 29.334003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860313, 38.919609, 29.115276>,  <34.741745, 38.805378, 28.750732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860313, 38.919609, 29.115276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145513, -0.929602, 0.338622,
		0.943907, -0.232990, -0.233999,
		0.296422, 0.285578, 0.911361,
		34.949242, 39.005283, 29.388685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333466, 38.339214, 29.021416>,  <34.741745, 38.805378, 28.750732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333466, 38.339214, 29.021416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159111, 38.490158, 29.348244>,  <35.054501, 38.580727, 29.544340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159111, 38.490158, 29.348244>,  <35.333466, 38.339214, 29.021416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159111, 38.490158, 29.348244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362890, -0.904474, 0.224137,
		0.823600, -0.198809, 0.531186,
		-0.435883, 0.377361, 0.817070,
		35.028347, 38.603367, 29.593365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506927, 37.883591, 29.556950>,  <35.333466, 38.339214, 29.021416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506927, 37.883591, 29.556950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202400, 38.092171, 29.711082>,  <35.019684, 38.217319, 29.803562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202400, 38.092171, 29.711082>,  <35.506927, 37.883591, 29.556950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202400, 38.092171, 29.711082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352979, -0.831847, 0.428296,
		0.543873, 0.190056, 0.817362,
		-0.761320, 0.521450, 0.385333,
		34.974003, 38.248604, 29.826683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265388, 38.116837, 29.748554>,  <35.506927, 37.883591, 29.556950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265388, 38.116837, 29.748554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597652, 37.903538, 29.684486>,  <36.797009, 37.775558, 29.646046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597652, 37.903538, 29.684486>,  <36.265388, 38.116837, 29.748554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597652, 37.903538, 29.684486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311907, 0.683952, -0.659487,
		0.461219, 0.497850, 0.734454,
		0.830657, -0.533250, -0.160168,
		36.846851, 37.743565, 29.636436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803551, 38.610451, 29.709042>,  <36.265388, 38.116837, 29.748554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803551, 38.610451, 29.709042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978432, 38.290329, 29.544909>,  <37.083359, 38.098255, 29.446428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978432, 38.290329, 29.544909>,  <36.803551, 38.610451, 29.709042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978432, 38.290329, 29.544909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470691, 0.592384, -0.653859,
		0.766360, 0.092726, 0.635684,
		0.437199, -0.800302, -0.410334,
		37.109592, 38.050240, 29.421808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461044, 38.825367, 29.661003>,  <36.803551, 38.610451, 29.709042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461044, 38.825367, 29.661003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424770, 38.531376, 29.392204>,  <37.403004, 38.354980, 29.230925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424770, 38.531376, 29.392204>,  <37.461044, 38.825367, 29.661003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424770, 38.531376, 29.392204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365798, 0.603028, -0.708907,
		0.926266, -0.310104, 0.214166,
		-0.090687, -0.734978, -0.671999,
		37.397564, 38.310883, 29.190605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058437, 38.819248, 29.369257>,  <37.461044, 38.825367, 29.661003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058437, 38.819248, 29.369257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841068, 38.637539, 29.086887>,  <37.710648, 38.528515, 28.917465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841068, 38.637539, 29.086887>,  <38.058437, 38.819248, 29.369257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841068, 38.637539, 29.086887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556495, 0.434645, -0.708094,
		0.628493, -0.777638, 0.016603,
		-0.543424, -0.454272, -0.705923,
		37.678040, 38.501259, 28.875111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549610, 38.724377, 28.770094>,  <38.058437, 38.819248, 29.369257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549610, 38.724377, 28.770094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185921, 38.664375, 28.614754>,  <37.967709, 38.628372, 28.521549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185921, 38.664375, 28.614754>,  <38.549610, 38.724377, 28.770094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185921, 38.664375, 28.614754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290436, 0.439778, -0.849848,
		0.298271, -0.885490, -0.356288,
		-0.909220, -0.150006, -0.388351,
		37.913155, 38.619373, 28.498249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711781, 38.555428, 28.127405>,  <38.549610, 38.724377, 28.770094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711781, 38.555428, 28.127405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331818, 38.680122, 28.118530>,  <38.103840, 38.754940, 28.113205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331818, 38.680122, 28.118530>,  <38.711781, 38.555428, 28.127405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331818, 38.680122, 28.118530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171121, 0.459399, -0.871590,
		-0.261516, -0.831728, -0.489732,
		-0.949909, 0.311738, -0.022186,
		38.046844, 38.773643, 28.111874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591728, 38.605854, 27.466612>,  <38.711781, 38.555428, 28.127405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591728, 38.605854, 27.466612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277512, 38.814144, 27.600344>,  <38.088982, 38.939117, 27.680582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277512, 38.814144, 27.600344>,  <38.591728, 38.605854, 27.466612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277512, 38.814144, 27.600344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083236, 0.446450, -0.890929,
		-0.613190, -0.727687, -0.307360,
		-0.785538, 0.520725, 0.334328,
		38.041851, 38.970360, 27.700642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178230, 38.637184, 26.932749>,  <38.591728, 38.605854, 27.466612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178230, 38.637184, 26.932749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073975, 38.959484, 27.145479>,  <38.011421, 39.152863, 27.273117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073975, 38.959484, 27.145479>,  <38.178230, 38.637184, 26.932749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073975, 38.959484, 27.145479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215439, 0.585518, -0.781508,
		-0.941091, -0.089115, -0.326198,
		-0.260639, 0.805747, 0.531827,
		37.995785, 39.201206, 27.305027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739918, 39.132053, 26.466436>,  <38.178230, 38.637184, 26.932749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739918, 39.132053, 26.466436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894264, 39.363361, 26.753967>,  <37.986874, 39.502144, 26.926485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894264, 39.363361, 26.753967>,  <37.739918, 39.132053, 26.466436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894264, 39.363361, 26.753967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139504, 0.733637, -0.665068,
		-0.911946, 0.356907, 0.202415,
		0.385866, 0.578268, 0.718827,
		38.010025, 39.536842, 26.969616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452137, 39.791790, 26.366587>,  <37.739918, 39.132053, 26.466436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452137, 39.791790, 26.366587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773300, 39.870201, 26.591768>,  <37.965996, 39.917248, 26.726877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773300, 39.870201, 26.591768>,  <37.452137, 39.791790, 26.366587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773300, 39.870201, 26.591768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217896, 0.782522, -0.583251,
		-0.554857, 0.590960, 0.585576,
		0.802904, 0.196026, 0.562955,
		38.014172, 39.929008, 26.760654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460621, 40.506573, 26.550905>,  <37.452137, 39.791790, 26.366587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460621, 40.506573, 26.550905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847549, 40.431416, 26.619017>,  <38.079704, 40.386322, 26.659883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847549, 40.431416, 26.619017>,  <37.460621, 40.506573, 26.550905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847549, 40.431416, 26.619017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224659, 0.946435, -0.231926,
		-0.117582, 0.262601, 0.957714,
		0.967317, -0.187889, 0.170279,
		38.137745, 40.375050, 26.670101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695965, 41.152248, 26.795475>,  <37.460621, 40.506573, 26.550905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695965, 41.152248, 26.795475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035240, 40.957848, 26.711206>,  <38.238804, 40.841206, 26.660645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035240, 40.957848, 26.711206>,  <37.695965, 41.152248, 26.795475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035240, 40.957848, 26.711206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407579, 0.852824, -0.326453,
		0.338324, 0.191026, 0.921437,
		0.848184, -0.486005, -0.210672,
		38.289696, 40.812046, 26.648005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252636, 41.488514, 27.071486>,  <37.695965, 41.152248, 26.795475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252636, 41.488514, 27.071486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415142, 41.293938, 26.762079>,  <38.512646, 41.177193, 26.576435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415142, 41.293938, 26.762079>,  <38.252636, 41.488514, 27.071486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415142, 41.293938, 26.762079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304587, 0.870203, -0.387264,
		0.861494, -0.078270, 0.501698,
		0.406268, -0.486437, -0.773515,
		38.537022, 41.148006, 26.530025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848446, 41.914124, 26.942581>,  <38.252636, 41.488514, 27.071486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848446, 41.914124, 26.942581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837143, 41.701668, 26.603855>,  <38.830360, 41.574196, 26.400620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837143, 41.701668, 26.603855>,  <38.848446, 41.914124, 26.942581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837143, 41.701668, 26.603855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336335, 0.792707, -0.508423,
		0.941319, -0.299178, 0.156243,
		-0.028254, -0.531138, -0.846814,
		38.828667, 41.542328, 26.349812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.861000, 36.775013, 20.201260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.822025, 37.010239, 20.522429>,  <34.798641, 37.151375, 20.715130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.822025, 37.010239, 20.522429>,  <34.861000, 36.775013, 20.201260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822025, 37.010239, 20.522429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100252, -0.808456, 0.579956,
		0.990179, -0.023983, 0.137731,
		-0.097441, 0.588068, 0.802920,
		34.792793, 37.186661, 20.763304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286591, 36.493855, 20.663967>,  <34.861000, 36.775013, 20.201260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286591, 36.493855, 20.663967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.049549, 36.717381, 20.896017>,  <34.907326, 36.851498, 21.035246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.049549, 36.717381, 20.896017>,  <35.286591, 36.493855, 20.663967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049549, 36.717381, 20.896017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016951, -0.728700, 0.684623,
		0.805317, 0.395876, 0.441302,
		-0.592603, 0.558819, 0.580124,
		34.871769, 36.885025, 21.070055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640076, 36.518452, 21.336903>,  <35.286591, 36.493855, 20.663967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640076, 36.518452, 21.336903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.258842, 36.613628, 21.411747>,  <35.030102, 36.670734, 21.456654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.258842, 36.613628, 21.411747>,  <35.640076, 36.518452, 21.336903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258842, 36.613628, 21.411747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005205, -0.630935, 0.775819,
		0.302653, 0.738448, 0.602574,
		-0.953087, 0.237941, 0.187110,
		34.972916, 36.685009, 21.467880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703960, 36.869259, 21.956064>,  <35.640076, 36.518452, 21.336903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703960, 36.869259, 21.956064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.321327, 36.757282, 21.923613>,  <35.091747, 36.690098, 21.904142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.321327, 36.757282, 21.923613>,  <35.703960, 36.869259, 21.956064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321327, 36.757282, 21.923613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017062, -0.331657, 0.943246,
		-0.290961, 0.900909, 0.322033,
		-0.956583, -0.279942, -0.081128,
		35.034351, 36.673298, 21.899275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443584, 37.091419, 22.495705>,  <35.703960, 36.869259, 21.956064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443584, 37.091419, 22.495705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.163528, 36.820541, 22.405178>,  <34.995495, 36.658016, 22.350863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.163528, 36.820541, 22.405178>,  <35.443584, 37.091419, 22.495705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163528, 36.820541, 22.405178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088298, -0.232412, 0.968601,
		-0.708529, 0.698135, 0.102925,
		-0.700136, -0.677194, -0.226315,
		34.953487, 36.617382, 22.337284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775879, 37.143349, 23.016321>,  <35.443584, 37.091419, 22.495705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775879, 37.143349, 23.016321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.797932, 36.781101, 22.848125>,  <34.811165, 36.563751, 22.747208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.797932, 36.781101, 22.848125>,  <34.775879, 37.143349, 23.016321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797932, 36.781101, 22.848125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101991, -0.424035, 0.899884,
		-0.993256, -0.006729, -0.115744,
		0.055135, -0.905621, -0.420489,
		34.814472, 36.509415, 22.721979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324585, 36.836300, 23.402416>,  <34.775879, 37.143349, 23.016321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324585, 36.836300, 23.402416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.559334, 36.565540, 23.224703>,  <34.700184, 36.403084, 23.118074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.559334, 36.565540, 23.224703>,  <34.324585, 36.836300, 23.402416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559334, 36.565540, 23.224703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028005, -0.565355, 0.824372,
		-0.809194, -0.471361, -0.350749,
		0.586874, -0.676899, -0.444281,
		34.735397, 36.362469, 23.091419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024895, 36.259056, 23.596638>,  <34.324585, 36.836300, 23.402416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024895, 36.259056, 23.596638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.386826, 36.122368, 23.495039>,  <34.603985, 36.040356, 23.434080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.386826, 36.122368, 23.495039>,  <34.024895, 36.259056, 23.596638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386826, 36.122368, 23.495039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043563, -0.667715, 0.743141,
		-0.423547, -0.661348, -0.619053,
		0.904826, -0.341723, -0.253999,
		34.658272, 36.019852, 23.418839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877869, 35.590256, 23.745192>,  <34.024895, 36.259056, 23.596638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877869, 35.590256, 23.745192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.274490, 35.629776, 23.711576>,  <34.512463, 35.653488, 23.691408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.274490, 35.629776, 23.711576>,  <33.877869, 35.590256, 23.745192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274490, 35.629776, 23.711576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128002, -0.640693, 0.757052,
		0.020953, -0.761414, -0.647927,
		0.991553, 0.098798, -0.084038,
		34.571957, 35.659416, 23.686365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170639, 34.973694, 23.689440>,  <33.877869, 35.590256, 23.745192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170639, 34.973694, 23.689440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.463173, 35.191212, 23.854092>,  <34.638695, 35.321720, 23.952883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.463173, 35.191212, 23.854092>,  <34.170639, 34.973694, 23.689440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463173, 35.191212, 23.854092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109960, -0.689667, 0.715729,
		0.673095, -0.478175, -0.564173,
		0.731336, 0.543790, 0.411632,
		34.682575, 35.354347, 23.977581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609818, 34.514603, 23.857382>,  <34.170639, 34.973694, 23.689440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609818, 34.514603, 23.857382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.730324, 34.835560, 24.063452>,  <34.802628, 35.028133, 24.187094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.730324, 34.835560, 24.063452>,  <34.609818, 34.514603, 23.857382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730324, 34.835560, 24.063452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250088, -0.587851, 0.769342,
		0.920161, -0.102936, -0.377767,
		0.301264, 0.802394, 0.515174,
		34.820702, 35.076279, 24.218004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180225, 34.278805, 24.175924>,  <34.609818, 34.514603, 23.857382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180225, 34.278805, 24.175924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.115326, 34.611649, 24.388063>,  <35.076385, 34.811356, 24.515347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.115326, 34.611649, 24.388063>,  <35.180225, 34.278805, 24.175924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115326, 34.611649, 24.388063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148561, -0.510744, 0.846800,
		0.975502, 0.216181, -0.040752,
		-0.162248, 0.832109, 0.530349,
		35.066650, 34.861282, 24.547169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838757, 34.385262, 24.488644>,  <35.180225, 34.278805, 24.175924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838757, 34.385262, 24.488644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.548553, 34.570969, 24.691858>,  <35.374432, 34.682392, 24.813787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.548553, 34.570969, 24.691858>,  <35.838757, 34.385262, 24.488644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548553, 34.570969, 24.691858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196264, -0.567966, 0.799309,
		0.659638, 0.679612, 0.320944,
		-0.725505, 0.464265, 0.508036,
		35.330902, 34.710247, 24.844269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109077, 34.489830, 25.132820>,  <35.838757, 34.385262, 24.488644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109077, 34.489830, 25.132820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.718887, 34.514141, 25.217447>,  <35.484776, 34.528728, 25.268223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.718887, 34.514141, 25.217447>,  <36.109077, 34.489830, 25.132820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718887, 34.514141, 25.217447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109770, -0.698794, 0.706850,
		0.190801, 0.712737, 0.674983,
		-0.975472, 0.060774, 0.211568,
		35.426247, 34.532372, 25.280918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267490, 34.766754, 25.719311>,  <36.109077, 34.489830, 25.132820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267490, 34.766754, 25.719311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.654041, 34.733292, 25.816572>,  <36.885971, 34.713215, 25.874929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.654041, 34.733292, 25.816572>,  <36.267490, 34.766754, 25.719311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654041, 34.733292, 25.816572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221442, 0.751420, -0.621556,
		-0.130710, 0.654499, 0.744678,
		0.966374, -0.083660, 0.243151,
		36.943954, 34.708195, 25.889517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512135, 35.486862, 26.077133>,  <36.267490, 34.766754, 25.719311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512135, 35.486862, 26.077133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.789898, 35.279087, 25.877943>,  <36.956558, 35.154423, 25.758429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.789898, 35.279087, 25.877943>,  <36.512135, 35.486862, 26.077133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789898, 35.279087, 25.877943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234208, 0.817507, -0.526145,
		0.680398, 0.248731, 0.689341,
		0.694410, -0.519437, -0.497976,
		36.998222, 35.123257, 25.728550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852104, 35.902809, 25.734062>,  <36.512135, 35.486862, 26.077133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852104, 35.902809, 25.734062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.086071, 35.631294, 25.556467>,  <37.226452, 35.468388, 25.449911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.086071, 35.631294, 25.556467>,  <36.852104, 35.902809, 25.734062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086071, 35.631294, 25.556467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242541, 0.668722, -0.702841,
		0.773981, 0.303418, 0.555779,
		0.584916, -0.678785, -0.443986,
		37.261547, 35.427658, 25.423271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469795, 36.246681, 25.750614>,  <36.852104, 35.902809, 25.734062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469795, 36.246681, 25.750614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.492268, 35.957882, 25.474770>,  <37.505749, 35.784603, 25.309263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.492268, 35.957882, 25.474770>,  <37.469795, 36.246681, 25.750614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492268, 35.957882, 25.474770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203528, 0.684482, -0.700043,
		0.977456, -0.101029, 0.185399,
		0.056178, -0.721996, -0.689613,
		37.509121, 35.741283, 25.267885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081055, 36.420033, 25.437691>,  <37.469795, 36.246681, 25.750614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081055, 36.420033, 25.437691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.894634, 36.188824, 25.169752>,  <37.782784, 36.050098, 25.008989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.894634, 36.188824, 25.169752>,  <38.081055, 36.420033, 25.437691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894634, 36.188824, 25.169752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109472, 0.713603, -0.691944,
		0.877961, -0.395808, -0.269295,
		-0.466047, -0.578020, -0.669846,
		37.754822, 36.015419, 24.968798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445129, 36.409046, 24.826143>,  <38.081055, 36.420033, 25.437691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445129, 36.409046, 24.826143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.072117, 36.305012, 24.725945>,  <37.848309, 36.242592, 24.665825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.072117, 36.305012, 24.725945>,  <38.445129, 36.409046, 24.826143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072117, 36.305012, 24.725945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069133, 0.552291, -0.830780,
		0.354418, -0.792044, -0.497047,
		-0.932528, -0.260081, -0.250498,
		37.792358, 36.226986, 24.650795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603943, 36.275127, 24.154041>,  <38.445129, 36.409046, 24.826143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603943, 36.275127, 24.154041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.207417, 36.322292, 24.177336>,  <37.969501, 36.350590, 24.191313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.207417, 36.322292, 24.177336>,  <38.603943, 36.275127, 24.154041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207417, 36.322292, 24.177336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046291, 0.727349, -0.684705,
		-0.123094, -0.676062, -0.726490,
		-0.991315, 0.117914, 0.058237,
		37.910023, 36.357666, 24.194807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361404, 36.240757, 23.501411>,  <38.603943, 36.275127, 24.154041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361404, 36.240757, 23.501411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.062160, 36.430904, 23.686607>,  <37.882614, 36.544994, 23.797724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.062160, 36.430904, 23.686607>,  <38.361404, 36.240757, 23.501411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062160, 36.430904, 23.686607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019208, 0.712936, -0.700966,
		-0.663299, -0.515506, -0.542484,
		-0.748108, 0.475370, 0.462987,
		37.837727, 36.573517, 23.825504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784214, 36.367737, 23.024910>,  <38.361404, 36.240757, 23.501411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784214, 36.367737, 23.024910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.741081, 36.643505, 23.311426>,  <37.715202, 36.808968, 23.483335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.741081, 36.643505, 23.311426>,  <37.784214, 36.367737, 23.024910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741081, 36.643505, 23.311426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145809, 0.701731, -0.697361,
		-0.983419, -0.179636, 0.024858,
		-0.107828, 0.689423, 0.716289,
		37.708733, 36.850330, 23.526312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339287, 36.824249, 22.627321>,  <37.784214, 36.367737, 23.024910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339287, 36.824249, 22.627321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.458706, 37.028393, 22.949911>,  <37.530357, 37.150879, 23.143465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.458706, 37.028393, 22.949911>,  <37.339287, 36.824249, 22.627321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458706, 37.028393, 22.949911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031285, 0.839323, -0.542732,
		-0.953883, 0.187260, 0.234608,
		0.298544, 0.510363, 0.806475,
		37.548267, 37.181503, 23.191853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925800, 37.417145, 22.734617>,  <37.339287, 36.824249, 22.627321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925800, 37.417145, 22.734617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.271896, 37.519913, 22.906828>,  <37.479553, 37.581573, 23.010155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.271896, 37.519913, 22.906828>,  <36.925800, 37.417145, 22.734617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271896, 37.519913, 22.906828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013223, 0.870111, -0.492678,
		-0.501186, 0.420591, 0.756252,
		0.865239, 0.256923, 0.430526,
		37.531467, 37.596989, 23.035986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841297, 38.063087, 22.949387>,  <36.925800, 37.417145, 22.734617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841297, 38.063087, 22.949387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.238518, 38.016006, 22.949574>,  <37.476849, 37.987759, 22.949686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.238518, 38.016006, 22.949574>,  <36.841297, 38.063087, 22.949387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238518, 38.016006, 22.949574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106916, 0.900383, -0.421756,
		0.049219, 0.418875, 0.906709,
		0.993049, -0.117700, 0.000468,
		37.536434, 37.980698, 22.949715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162895, 38.664825, 23.151098>,  <36.841297, 38.063087, 22.949387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162895, 38.664825, 23.151098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.460865, 38.457901, 22.982592>,  <37.639648, 38.333744, 22.881487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.460865, 38.457901, 22.982592>,  <37.162895, 38.664825, 23.151098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460865, 38.457901, 22.982592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140852, 0.739168, -0.658628,
		0.652105, 0.431295, 0.623493,
		0.744929, -0.517315, -0.421266,
		37.684345, 38.302708, 22.856211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771809, 39.084064, 23.149460>,  <37.162895, 38.664825, 23.151098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771809, 39.084064, 23.149460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.827003, 38.809490, 22.863871>,  <37.860119, 38.644745, 22.692516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.827003, 38.809490, 22.863871>,  <37.771809, 39.084064, 23.149460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827003, 38.809490, 22.863871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071609, 0.725899, -0.684064,
		0.987842, 0.043265, 0.149320,
		0.137987, -0.686440, -0.713975,
		37.868401, 38.603558, 22.649677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496368, 39.075268, 23.308601>,  <37.771809, 39.084064, 23.149460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496368, 39.075268, 23.308601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.789749, 39.301662, 23.459177>,  <38.965778, 39.437500, 23.549522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.789749, 39.301662, 23.459177>,  <38.496368, 39.075268, 23.308601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789749, 39.301662, 23.459177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103105, -0.640021, 0.761408,
		0.671877, -0.519643, -0.527781,
		0.733452, 0.565989, 0.376437,
		39.009785, 39.471458, 23.572107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084625, 38.673553, 23.422651>,  <38.496368, 39.075268, 23.308601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084625, 38.673553, 23.422651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.144482, 38.973373, 23.680578>,  <39.180393, 39.153263, 23.835335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.144482, 38.973373, 23.680578>,  <39.084625, 38.673553, 23.422651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144482, 38.973373, 23.680578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424302, -0.637737, 0.642852,
		0.893071, 0.177404, -0.413463,
		0.149636, 0.749546, 0.644818,
		39.189373, 39.198238, 23.874023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747498, 38.616932, 23.589811>,  <39.084625, 38.673553, 23.422651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747498, 38.616932, 23.589811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.577072, 38.817471, 23.891041>,  <39.474815, 38.937794, 24.071777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.577072, 38.817471, 23.891041>,  <39.747498, 38.616932, 23.589811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577072, 38.817471, 23.891041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445621, -0.608122, 0.656970,
		0.787330, 0.615498, 0.035690,
		-0.426067, 0.501348, 0.753071,
		39.449253, 38.967876, 24.116962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314606, 38.805008, 23.954056>,  <39.747498, 38.616932, 23.589811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314606, 38.805008, 23.954056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.010063, 38.853516, 24.208815>,  <39.827339, 38.882618, 24.361670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.010063, 38.853516, 24.208815>,  <40.314606, 38.805008, 23.954056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010063, 38.853516, 24.208815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514444, -0.484860, 0.707289,
		0.394575, 0.866144, 0.306766,
		-0.761353, 0.121265, 0.636896,
		39.781658, 38.889896, 24.399883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665493, 38.859043, 24.645458>,  <40.314606, 38.805008, 23.954056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665493, 38.859043, 24.645458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.290886, 38.754032, 24.738428>,  <40.066124, 38.691025, 24.794210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.290886, 38.754032, 24.738428>,  <40.665493, 38.859043, 24.645458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290886, 38.754032, 24.738428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342763, -0.545838, 0.764575,
		-0.073857, 0.795701, 0.601169,
		-0.936514, -0.262528, 0.232423,
		40.009933, 38.675274, 24.808155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525429, 39.041214, 25.375612>,  <40.665493, 38.859043, 24.645458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525429, 39.041214, 25.375612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.266552, 38.755375, 25.269411>,  <40.111225, 38.583870, 25.205690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.266552, 38.755375, 25.269411>,  <40.525429, 39.041214, 25.375612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266552, 38.755375, 25.269411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345504, -0.585409, 0.733433,
		-0.679539, 0.382938, 0.625768,
		-0.647189, -0.714601, -0.265501,
		40.072395, 38.540993, 25.189760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357681, 38.687519, 26.069876>,  <40.525429, 39.041214, 25.375612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357681, 38.687519, 26.069876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.241665, 38.444637, 25.773989>,  <40.172054, 38.298908, 25.596457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.241665, 38.444637, 25.773989>,  <40.357681, 38.687519, 26.069876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241665, 38.444637, 25.773989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266625, -0.793606, 0.546900,
		-0.919124, -0.038606, 0.392071,
		-0.290036, -0.607205, -0.739717,
		40.154655, 38.262474, 25.552074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780544, 38.223537, 26.266363>,  <40.357681, 38.687519, 26.069876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780544, 38.223537, 26.266363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.003105, 38.037712, 25.990799>,  <40.136642, 37.926216, 25.825460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.003105, 38.037712, 25.990799>,  <39.780544, 38.223537, 26.266363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003105, 38.037712, 25.990799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106641, -0.782319, 0.613682,
		-0.824038, -0.414923, -0.385747,
		0.556407, -0.464561, -0.688908,
		40.170029, 37.898342, 25.784126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606022, 37.558380, 26.176977>,  <39.780544, 38.223537, 26.266363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606022, 37.558380, 26.176977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.986645, 37.533234, 26.056583>,  <40.215019, 37.518147, 25.984348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.986645, 37.533234, 26.056583>,  <39.606022, 37.558380, 26.176977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986645, 37.533234, 26.056583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107517, -0.849053, 0.517252,
		-0.288068, -0.524555, -0.801162,
		0.951555, -0.062865, -0.300983,
		40.272110, 37.514374, 25.966288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712509, 36.898125, 25.920616>,  <39.606022, 37.558380, 26.176977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712509, 36.898125, 25.920616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.091843, 36.993332, 26.004528>,  <40.319443, 37.050457, 26.054876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.091843, 36.993332, 26.004528>,  <39.712509, 36.898125, 25.920616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091843, 36.993332, 26.004528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119158, -0.879999, 0.459786,
		0.294044, -0.411034, -0.862896,
		0.948335, 0.238018, 0.209781,
		40.376343, 37.064739, 26.067463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069855, 36.309032, 25.737541>,  <39.712509, 36.898125, 25.920616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069855, 36.309032, 25.737541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.314796, 36.523827, 25.969635>,  <40.461761, 36.652702, 26.108891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.314796, 36.523827, 25.969635>,  <40.069855, 36.309032, 25.737541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314796, 36.523827, 25.969635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239916, -0.825536, 0.510814,
		0.753304, -0.173590, -0.634350,
		0.612351, 0.536989, 0.580233,
		40.498501, 36.684921, 26.143705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612103, 35.874790, 25.850868>,  <40.069855, 36.309032, 25.737541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612103, 35.874790, 25.850868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.653976, 36.144413, 26.143358>,  <40.679100, 36.306187, 26.318851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.653976, 36.144413, 26.143358>,  <40.612103, 35.874790, 25.850868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653976, 36.144413, 26.143358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281727, -0.725245, 0.628211,
		0.953766, 0.140240, -0.265824,
		0.104688, 0.674056, 0.731224,
		40.685383, 36.346630, 26.362726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056702, 35.540924, 26.360214>,  <40.612103, 35.874790, 25.850868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056702, 35.540924, 26.360214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.937641, 35.840271, 26.597315>,  <40.866203, 36.019878, 26.739574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.937641, 35.840271, 26.597315>,  <41.056702, 35.540924, 26.360214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937641, 35.840271, 26.597315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161936, -0.572318, 0.803883,
		0.940839, 0.335268, 0.049167,
		-0.297656, 0.748363, 0.592751,
		40.848343, 36.064781, 26.775141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594585, 35.652245, 26.871784>,  <41.056702, 35.540924, 26.360214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594585, 35.652245, 26.871784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.243340, 35.770084, 27.022581>,  <41.032593, 35.840790, 27.113060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.243340, 35.770084, 27.022581>,  <41.594585, 35.652245, 26.871784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243340, 35.770084, 27.022581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133004, -0.606584, 0.783815,
		0.459592, 0.738421, 0.493467,
		-0.878115, 0.294602, 0.376993,
		40.979904, 35.858463, 27.135679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.605656, 41.981926, 26.560465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.314701, 41.865837, 26.311728>,  <39.140129, 41.796185, 26.162485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.314701, 41.865837, 26.311728>,  <39.605656, 41.981926, 26.560465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314701, 41.865837, 26.311728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255637, 0.726350, -0.638017,
		0.636839, -0.623049, -0.454145,
		-0.727384, -0.290218, -0.621842,
		39.096485, 41.778770, 26.125175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914364, 42.070499, 25.937931>,  <39.605656, 41.981926, 26.560465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914364, 42.070499, 25.937931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.538746, 42.031662, 25.806007>,  <39.313377, 42.008358, 25.726854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.538746, 42.031662, 25.806007>,  <39.914364, 42.070499, 25.937931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538746, 42.031662, 25.806007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209345, 0.599461, -0.772542,
		0.272718, -0.794493, -0.542592,
		-0.939042, -0.097097, -0.329807,
		39.257034, 42.002533, 25.707066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978840, 41.791191, 25.308950>,  <39.914364, 42.070499, 25.937931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978840, 41.791191, 25.308950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.616283, 41.959980, 25.316967>,  <39.398750, 42.061253, 25.321777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.616283, 41.959980, 25.316967>,  <39.978840, 41.791191, 25.308950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616283, 41.959980, 25.316967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302272, 0.680958, -0.667029,
		-0.295115, -0.598529, -0.744762,
		-0.906388, 0.421971, 0.020043,
		39.344368, 42.086571, 25.322979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022026, 42.143387, 24.716425>,  <39.978840, 41.791191, 25.308950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022026, 42.143387, 24.716425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.668621, 42.280857, 24.843737>,  <39.456577, 42.363338, 24.920124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.668621, 42.280857, 24.843737>,  <40.022026, 42.143387, 24.716425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668621, 42.280857, 24.843737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073114, 0.569968, -0.818407,
		-0.462674, -0.746341, -0.478444,
		-0.883509, 0.343675, 0.318277,
		39.403568, 42.383961, 24.939220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506126, 42.152096, 24.211395>,  <40.022026, 42.143387, 24.716425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506126, 42.152096, 24.211395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.432266, 42.449898, 24.468025>,  <39.387951, 42.628578, 24.622004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.432266, 42.449898, 24.468025>,  <39.506126, 42.152096, 24.211395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432266, 42.449898, 24.468025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112196, 0.632566, -0.766337,
		-0.976379, -0.213489, -0.033275,
		-0.184653, 0.744502, 0.641576,
		39.376869, 42.673248, 24.660498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905331, 42.473900, 23.942608>,  <39.506126, 42.152096, 24.211395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905331, 42.473900, 23.942608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.053375, 42.733471, 24.208513>,  <39.142200, 42.889214, 24.368057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.053375, 42.733471, 24.208513>,  <38.905331, 42.473900, 23.942608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053375, 42.733471, 24.208513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236655, 0.757830, -0.608020,
		-0.898339, 0.067714, 0.434052,
		0.370109, 0.648929, 0.664764,
		39.164410, 42.928150, 24.407942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411587, 42.997501, 23.899115>,  <38.905331, 42.473900, 23.942608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411587, 42.997501, 23.899115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.733097, 43.164715, 24.068436>,  <38.926003, 43.265045, 24.170029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.733097, 43.164715, 24.068436>,  <38.411587, 42.997501, 23.899115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733097, 43.164715, 24.068436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222806, 0.871254, -0.437348,
		-0.551632, 0.257217, 0.793437,
		0.803779, 0.418038, 0.423302,
		38.974232, 43.290127, 24.195427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242085, 43.711407, 24.129051>,  <38.411587, 42.997501, 23.899115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242085, 43.711407, 24.129051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.637123, 43.689705, 24.070108>,  <38.874146, 43.676685, 24.034742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.637123, 43.689705, 24.070108>,  <38.242085, 43.711407, 24.129051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637123, 43.689705, 24.070108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061116, 0.731614, -0.678974,
		0.144644, 0.679557, 0.719222,
		0.987595, -0.054253, -0.147356,
		38.933403, 43.673428, 24.025902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473782, 44.336033, 24.220530>,  <38.242085, 43.711407, 24.129051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473782, 44.336033, 24.220530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.776478, 44.163921, 24.023674>,  <38.958096, 44.060654, 23.905561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.776478, 44.163921, 24.023674>,  <38.473782, 44.336033, 24.220530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776478, 44.163921, 24.023674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106589, 0.823978, -0.556506,
		0.644964, 0.368676, 0.669403,
		0.756743, -0.430277, -0.492139,
		39.003502, 44.034840, 23.876032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076027, 44.857594, 24.140242>,  <38.473782, 44.336033, 24.220530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076027, 44.857594, 24.140242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.116665, 44.576042, 23.859034>,  <39.141048, 44.407112, 23.690310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.116665, 44.576042, 23.859034>,  <39.076027, 44.857594, 24.140242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116665, 44.576042, 23.859034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133373, 0.709934, -0.691525,
		0.985845, -0.023508, 0.166004,
		0.101595, -0.703876, -0.703020,
		39.147144, 44.364880, 23.648129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621277, 45.038799, 23.678251>,  <39.076027, 44.857594, 24.140242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621277, 45.038799, 23.678251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.433414, 44.787655, 23.429991>,  <39.320698, 44.636967, 23.281034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.433414, 44.787655, 23.429991>,  <39.621277, 45.038799, 23.678251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433414, 44.787655, 23.429991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131734, 0.744981, -0.653949,
		0.872965, -0.225370, -0.432597,
		-0.469658, -0.627862, -0.620654,
		39.292519, 44.599297, 23.243795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843380, 45.163502, 23.020224>,  <39.621277, 45.038799, 23.678251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843380, 45.163502, 23.020224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.502640, 44.967876, 22.945217>,  <39.298195, 44.850502, 22.900213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.502640, 44.967876, 22.945217>,  <39.843380, 45.163502, 23.020224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502640, 44.967876, 22.945217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272172, 0.719184, -0.639294,
		0.447513, -0.493549, -0.745749,
		-0.851854, -0.489065, -0.187513,
		39.247086, 44.821156, 22.888964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757462, 44.922871, 22.281965>,  <39.843380, 45.163502, 23.020224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757462, 44.922871, 22.281965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.393833, 44.989368, 22.434780>,  <39.175655, 45.029266, 22.526470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.393833, 44.989368, 22.434780>,  <39.757462, 44.922871, 22.281965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393833, 44.989368, 22.434780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194307, 0.641964, -0.741706,
		-0.368557, -0.748496, -0.551289,
		-0.909071, 0.166242, 0.382038,
		39.121113, 45.039242, 22.549391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036140, 44.588818, 22.022726>,  <39.757462, 44.922871, 22.281965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036140, 44.588818, 22.022726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.084904, 44.968124, 22.139977>,  <39.114162, 45.195709, 22.210327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.084904, 44.968124, 22.139977>,  <39.036140, 44.588818, 22.022726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084904, 44.968124, 22.139977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114228, 0.306771, -0.944904,
		-0.985947, 0.081707, 0.145716,
		0.121906, 0.948270, 0.293127,
		39.121475, 45.252605, 22.227915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410633, 44.287197, 21.364046>,  <39.036140, 44.588818, 22.022726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410633, 44.287197, 21.364046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.467701, 44.169872, 20.985922>,  <39.501942, 44.099476, 20.759047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.467701, 44.169872, 20.985922>,  <39.410633, 44.287197, 21.364046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467701, 44.169872, 20.985922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090272, -0.954955, 0.282685,
		-0.985645, 0.045005, -0.162720,
		0.142668, -0.293316, -0.945310,
		39.510502, 44.081879, 20.702330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832199, 43.826267, 21.217072>,  <39.410633, 44.287197, 21.364046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832199, 43.826267, 21.217072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.117649, 43.739834, 20.950525>,  <39.288918, 43.687973, 20.790598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.117649, 43.739834, 20.950525>,  <38.832199, 43.826267, 21.217072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117649, 43.739834, 20.950525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124160, -0.975191, 0.183266,
		-0.689437, -0.048046, -0.722751,
		0.713625, -0.216087, -0.666367,
		39.331738, 43.675007, 20.750614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589020, 43.189903, 21.039968>,  <38.832199, 43.826267, 21.217072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589020, 43.189903, 21.039968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.957153, 43.216820, 20.885851>,  <39.178036, 43.232967, 20.793381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.957153, 43.216820, 20.885851>,  <38.589020, 43.189903, 21.039968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957153, 43.216820, 20.885851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165867, -0.959269, 0.228672,
		-0.354213, -0.274363, -0.894012,
		0.920338, 0.067289, -0.385294,
		39.233253, 43.237007, 20.770264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627960, 42.741734, 20.575293>,  <38.589020, 43.189903, 21.039968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627960, 42.741734, 20.575293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.979546, 42.828983, 20.744928>,  <39.190495, 42.881332, 20.846710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.979546, 42.828983, 20.744928>,  <38.627960, 42.741734, 20.575293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979546, 42.828983, 20.744928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042053, -0.921254, 0.386682,
		0.475039, -0.322043, -0.818918,
		0.878959, 0.218127, 0.424089,
		39.243233, 42.894421, 20.872154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935211, 42.063782, 20.471119>,  <38.627960, 42.741734, 20.575293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935211, 42.063782, 20.471119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.175514, 42.257793, 20.725313>,  <39.319695, 42.374199, 20.877831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.175514, 42.257793, 20.725313>,  <38.935211, 42.063782, 20.471119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175514, 42.257793, 20.725313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210174, -0.862782, 0.459819,
		0.771312, -0.142675, -0.620259,
		0.600753, 0.485026, 0.635488,
		39.355740, 42.403301, 20.915960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452080, 41.538776, 20.428246>,  <38.935211, 42.063782, 20.471119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452080, 41.538776, 20.428246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.491089, 41.793045, 20.734554>,  <39.514496, 41.945606, 20.918341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.491089, 41.793045, 20.734554>,  <39.452080, 41.538776, 20.428246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491089, 41.793045, 20.734554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085702, -0.771948, 0.629882,
		0.991536, 0.004199, -0.129763,
		0.097525, 0.635672, 0.765774,
		39.520348, 41.983746, 20.964287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000824, 41.245792, 20.892054>,  <39.452080, 41.538776, 20.428246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000824, 41.245792, 20.892054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.796150, 41.499794, 21.123550>,  <39.673347, 41.652195, 21.262449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.796150, 41.499794, 21.123550>,  <40.000824, 41.245792, 20.892054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796150, 41.499794, 21.123550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012342, -0.678968, 0.734064,
		0.859084, 0.368467, 0.355255,
		-0.511685, 0.635007, 0.578744,
		39.642643, 41.690296, 21.297173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344017, 41.126255, 21.555103>,  <40.000824, 41.245792, 20.892054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344017, 41.126255, 21.555103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.998787, 41.316444, 21.623255>,  <39.791649, 41.430557, 21.664146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.998787, 41.316444, 21.623255>,  <40.344017, 41.126255, 21.555103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998787, 41.316444, 21.623255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077305, -0.457717, 0.885731,
		0.499124, 0.751281, 0.431801,
		-0.863075, 0.475470, 0.170380,
		39.739864, 41.459084, 21.674368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381939, 41.385834, 22.258564>,  <40.344017, 41.126255, 21.555103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381939, 41.385834, 22.258564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.996124, 41.344746, 22.161312>,  <39.764633, 41.320091, 22.102961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.996124, 41.344746, 22.161312>,  <40.381939, 41.385834, 22.258564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996124, 41.344746, 22.161312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170155, -0.462168, 0.870315,
		-0.201768, 0.880822, 0.428301,
		-0.964540, -0.102724, -0.243127,
		39.706764, 41.313927, 22.088373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042263, 41.497959, 22.884827>,  <40.381939, 41.385834, 22.258564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042263, 41.497959, 22.884827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.773621, 41.325951, 22.643490>,  <39.612434, 41.222744, 22.498688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.773621, 41.325951, 22.643490>,  <40.042263, 41.497959, 22.884827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773621, 41.325951, 22.643490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334383, -0.550756, 0.764759,
		-0.661156, 0.715367, 0.226102,
		-0.671610, -0.430020, -0.603342,
		39.572136, 41.196945, 22.462486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424080, 41.467014, 23.274582>,  <40.042263, 41.497959, 22.884827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424080, 41.467014, 23.274582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.372139, 41.190483, 22.990273>,  <39.340977, 41.024563, 22.819687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.372139, 41.190483, 22.990273>,  <39.424080, 41.467014, 23.274582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372139, 41.190483, 22.990273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229666, -0.676379, 0.699832,
		-0.964568, 0.254114, -0.070948,
		-0.129850, -0.691331, -0.710775,
		39.333183, 40.983086, 22.777040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849762, 41.131184, 23.470249>,  <39.424080, 41.467014, 23.274582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849762, 41.131184, 23.470249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.040222, 40.878017, 23.226055>,  <39.154499, 40.726116, 23.079538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.040222, 40.878017, 23.226055>,  <38.849762, 41.131184, 23.470249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040222, 40.878017, 23.226055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188768, -0.751618, 0.632010,
		-0.858863, -0.185693, -0.477360,
		0.476152, -0.632920, -0.610484,
		39.183067, 40.688141, 23.042910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400475, 40.646877, 23.370296>,  <38.849762, 41.131184, 23.470249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400475, 40.646877, 23.370296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.745647, 40.470936, 23.270798>,  <38.952751, 40.365372, 23.211100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.745647, 40.470936, 23.270798>,  <38.400475, 40.646877, 23.370296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745647, 40.470936, 23.270798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230755, -0.780947, 0.580409,
		-0.449551, -0.443456, -0.775404,
		0.862935, -0.439852, -0.248745,
		39.004528, 40.338982, 23.196175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213993, 39.989491, 23.188013>,  <38.400475, 40.646877, 23.370296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213993, 39.989491, 23.188013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.597404, 39.990566, 23.302010>,  <38.827450, 39.991211, 23.370407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.597404, 39.990566, 23.302010>,  <38.213993, 39.989491, 23.188013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597404, 39.990566, 23.302010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170257, -0.796526, 0.580137,
		0.228562, -0.604598, -0.763034,
		0.958526, 0.002685, 0.284993,
		38.884964, 39.991371, 23.387508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308723, 39.455387, 22.644558>,  <38.213993, 39.989491, 23.188013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308723, 39.455387, 22.644558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.131618, 39.153442, 22.451008>,  <38.025356, 38.972275, 22.334877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.131618, 39.153442, 22.451008>,  <38.308723, 39.455387, 22.644558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131618, 39.153442, 22.451008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177849, 0.602872, -0.777763,
		0.878822, -0.258310, -0.401182,
		-0.442765, -0.754865, -0.483878,
		37.998787, 38.926983, 22.305845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686302, 39.418709, 22.002956>,  <38.308723, 39.455387, 22.644558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686302, 39.418709, 22.002956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327724, 39.246525, 21.960842>,  <38.112579, 39.143215, 21.935574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327724, 39.246525, 21.960842>,  <38.686302, 39.418709, 22.002956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327724, 39.246525, 21.960842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200912, 0.606551, -0.769240,
		0.394992, -0.668429, -0.630226,
		-0.896446, -0.430464, -0.105287,
		38.058792, 39.117386, 21.929256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803925, 39.282284, 21.295111>,  <38.686302, 39.418709, 22.002956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803925, 39.282284, 21.295111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.418247, 39.303032, 21.399143>,  <38.186840, 39.315479, 21.461563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.418247, 39.303032, 21.399143>,  <38.803925, 39.282284, 21.295111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418247, 39.303032, 21.399143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140894, 0.730664, -0.668041,
		-0.224682, -0.680764, -0.697193,
		-0.964193, 0.051866, 0.260083,
		38.128990, 39.318592, 21.477167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509464, 39.317440, 20.663332>,  <38.803925, 39.282284, 21.295111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509464, 39.317440, 20.663332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.212715, 39.432667, 20.905537>,  <38.034664, 39.501804, 21.050859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.212715, 39.432667, 20.905537>,  <38.509464, 39.317440, 20.663332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212715, 39.432667, 20.905537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315790, 0.646508, -0.694481,
		-0.591527, -0.706429, -0.388656,
		-0.741871, 0.288071, 0.605510,
		37.990154, 39.519089, 21.087189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896400, 39.092972, 20.365015>,  <38.509464, 39.317440, 20.663332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896400, 39.092972, 20.365015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.802349, 39.396671, 20.607754>,  <37.745918, 39.578892, 20.753397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.802349, 39.396671, 20.607754>,  <37.896400, 39.092972, 20.365015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802349, 39.396671, 20.607754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394576, 0.496025, -0.773479,
		-0.888269, -0.421317, 0.182948,
		-0.235133, 0.759244, 0.606845,
		37.731808, 39.624443, 20.789806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216156, 39.392529, 20.048912>,  <37.896400, 39.092972, 20.365015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216156, 39.392529, 20.048912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.380630, 39.665165, 20.291023>,  <37.479317, 39.828747, 20.436291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.380630, 39.665165, 20.291023>,  <37.216156, 39.392529, 20.048912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380630, 39.665165, 20.291023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254564, 0.723451, -0.641728,
		-0.875284, 0.109788, 0.470982,
		0.411187, 0.681590, 0.605277,
		37.503986, 39.869640, 20.472607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800797, 39.950653, 20.015690>,  <37.216156, 39.392529, 20.048912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800797, 39.950653, 20.015690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.132946, 40.122795, 20.157269>,  <37.332233, 40.226078, 20.242216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.132946, 40.122795, 20.157269>,  <36.800797, 39.950653, 20.015690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132946, 40.122795, 20.157269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059414, 0.699977, -0.711689,
		-0.554034, 0.569937, 0.606810,
		0.830372, 0.430353, 0.353949,
		37.382057, 40.251900, 20.263453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125107, 39.946987, 20.378942>,  <36.800797, 39.950653, 20.015690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125107, 39.946987, 20.378942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.742001, 39.951622, 20.264015>,  <35.512138, 39.954403, 20.195059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.742001, 39.951622, 20.264015>,  <36.125107, 39.946987, 20.378942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742001, 39.951622, 20.264015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071174, -0.977646, 0.197843,
		-0.278606, 0.209937, 0.937179,
		-0.957765, 0.011582, -0.287320,
		35.454670, 39.955097, 20.177818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696915, 39.655544, 20.978018>,  <36.125107, 39.946987, 20.378942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696915, 39.655544, 20.978018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.475700, 39.636467, 20.645302>,  <35.342972, 39.625019, 20.445671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.475700, 39.636467, 20.645302>,  <35.696915, 39.655544, 20.978018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475700, 39.636467, 20.645302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152716, -0.975642, 0.157479,
		-0.819043, 0.214120, 0.532280,
		-0.553034, -0.047694, -0.831792,
		35.309792, 39.622158, 20.395763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997616, 39.463467, 21.138884>,  <35.696915, 39.655544, 20.978018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997616, 39.463467, 21.138884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.026360, 39.362995, 20.752775>,  <35.043606, 39.302711, 20.521111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.026360, 39.362995, 20.752775>,  <34.997616, 39.463467, 21.138884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026360, 39.362995, 20.752775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309265, -0.925685, 0.217860,
		-0.948257, 0.282870, -0.144198,
		0.071856, -0.251182, -0.965269,
		35.047916, 39.287640, 20.463194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419430, 39.038433, 21.037333>,  <34.997616, 39.463467, 21.138884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419430, 39.038433, 21.037333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.656433, 38.942493, 20.729721>,  <34.798637, 38.884930, 20.545155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.656433, 38.942493, 20.729721>,  <34.419430, 39.038433, 21.037333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656433, 38.942493, 20.729721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184104, -0.969700, 0.160586,
		-0.784241, 0.046432, -0.618716,
		0.592512, -0.239846, -0.769027,
		34.834187, 38.870541, 20.499012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043022, 38.480732, 20.787556>,  <34.419430, 39.038433, 21.037333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043022, 38.480732, 20.787556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.419067, 38.442200, 20.656769>,  <34.644695, 38.419083, 20.578297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.419067, 38.442200, 20.656769>,  <34.043022, 38.480732, 20.787556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419067, 38.442200, 20.656769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022905, -0.939218, 0.342556,
		-0.340091, -0.329530, -0.880766,
		0.940114, -0.096326, -0.326967,
		34.701103, 38.413303, 20.558678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966339, 37.806423, 20.534927>,  <34.043022, 38.480732, 20.787556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966339, 37.806423, 20.534927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.355602, 37.897743, 20.546507>,  <34.589161, 37.952538, 20.553455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.355602, 37.897743, 20.546507>,  <33.966339, 37.806423, 20.534927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355602, 37.897743, 20.546507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222813, -0.966195, 0.129700,
		0.057582, -0.119768, -0.991130,
		0.973159, 0.228305, 0.028950,
		34.647549, 37.966236, 20.555191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320660, 37.300705, 20.059774>,  <33.966339, 37.806423, 20.534927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320660, 37.300705, 20.059774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.550385, 37.467350, 20.341654>,  <34.688221, 37.567337, 20.510780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.550385, 37.467350, 20.341654>,  <34.320660, 37.300705, 20.059774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550385, 37.467350, 20.341654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252722, -0.909000, 0.331437,
		0.778652, -0.012255, -0.627336,
		0.574311, 0.416615, 0.704698,
		34.722679, 37.592335, 20.553062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.090424, 44.867241, 22.073061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.452423, 44.744602, 22.191031>,  <36.669621, 44.671021, 22.261812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.452423, 44.744602, 22.191031>,  <36.090424, 44.867241, 22.073061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452423, 44.744602, 22.191031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425416, -0.649201, 0.630523,
		-0.001851, -0.696086, -0.717956,
		0.904996, -0.306597, 0.294924,
		36.723923, 44.652622, 22.279509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071404, 44.153660, 21.986485>,  <36.090424, 44.867241, 22.073061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071404, 44.153660, 21.986485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.342484, 44.261074, 22.260303>,  <36.505131, 44.325523, 22.424595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.342484, 44.261074, 22.260303>,  <36.071404, 44.153660, 21.986485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342484, 44.261074, 22.260303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378681, -0.670548, 0.637939,
		0.630335, -0.691558, -0.352739,
		0.677701, 0.268540, 0.684550,
		36.545795, 44.341637, 22.465668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417965, 43.499943, 22.231609>,  <36.071404, 44.153660, 21.986485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417965, 43.499943, 22.231609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.502090, 43.759991, 22.523668>,  <36.552567, 43.916019, 22.698904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.502090, 43.759991, 22.523668>,  <36.417965, 43.499943, 22.231609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502090, 43.759991, 22.523668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008376, -0.748024, 0.663619,
		0.977597, -0.133455, -0.162767,
		0.210317, 0.650116, 0.730148,
		36.565186, 43.955025, 22.742712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732582, 43.072731, 22.702074>,  <36.417965, 43.499943, 22.231609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732582, 43.072731, 22.702074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.673100, 43.382854, 22.947603>,  <36.637409, 43.568928, 23.094921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.673100, 43.382854, 22.947603>,  <36.732582, 43.072731, 22.702074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673100, 43.382854, 22.947603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050910, -0.625905, 0.778236,
		0.987570, 0.084479, 0.132547,
		-0.148706, 0.775311, 0.613824,
		36.628487, 43.615448, 23.131750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164051, 42.975479, 23.358269>,  <36.732582, 43.072731, 22.702074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164051, 42.975479, 23.358269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.850975, 43.208000, 23.447239>,  <36.663128, 43.347515, 23.500622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.850975, 43.208000, 23.447239>,  <37.164051, 42.975479, 23.358269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850975, 43.208000, 23.447239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147210, -0.520120, 0.841311,
		0.604747, 0.625746, 0.492669,
		-0.782694, 0.581306, 0.222425,
		36.616165, 43.382393, 23.513966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194515, 43.053715, 24.120996>,  <37.164051, 42.975479, 23.358269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194515, 43.053715, 24.120996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.824203, 43.173958, 24.029291>,  <36.602016, 43.246101, 23.974268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.824203, 43.173958, 24.029291>,  <37.194515, 43.053715, 24.120996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824203, 43.173958, 24.029291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363068, -0.537908, 0.760814,
		0.105383, 0.787586, 0.607126,
		-0.925784, 0.300605, -0.229261,
		36.546467, 43.264141, 23.960512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967999, 43.308819, 24.690285>,  <37.194515, 43.053715, 24.120996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967999, 43.308819, 24.690285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.643772, 43.204262, 24.480650>,  <36.449238, 43.141529, 24.354870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.643772, 43.204262, 24.480650>,  <36.967999, 43.308819, 24.690285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643772, 43.204262, 24.480650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330128, -0.535226, 0.777528,
		-0.483741, 0.803249, 0.347542,
		-0.810562, -0.261389, -0.524086,
		36.400604, 43.125847, 24.323423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556904, 43.300945, 25.237717>,  <36.967999, 43.308819, 24.690285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556904, 43.300945, 25.237717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.339611, 43.129391, 24.949009>,  <36.209236, 43.026459, 24.775784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.339611, 43.129391, 24.949009>,  <36.556904, 43.300945, 25.237717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339611, 43.129391, 24.949009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595156, -0.409647, 0.691360,
		-0.592187, 0.805136, -0.032720,
		-0.543235, -0.428888, -0.721769,
		36.176640, 43.000725, 24.732479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913013, 43.531780, 25.281305>,  <36.556904, 43.300945, 25.237717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913013, 43.531780, 25.281305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.912601, 43.170506, 25.109608>,  <35.912354, 42.953739, 25.006590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.912601, 43.170506, 25.109608>,  <35.913013, 43.531780, 25.281305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912601, 43.170506, 25.109608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589607, -0.346148, 0.729757,
		-0.807690, 0.253837, -0.532169,
		-0.001030, -0.903188, -0.429244,
		35.912292, 42.899548, 24.980835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350033, 43.178726, 25.606632>,  <35.913013, 43.531780, 25.281305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350033, 43.178726, 25.606632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.525620, 42.863976, 25.433134>,  <35.630974, 42.675125, 25.329035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.525620, 42.863976, 25.433134>,  <35.350033, 43.178726, 25.606632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525620, 42.863976, 25.433134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395104, -0.602612, 0.693362,
		-0.806968, -0.132992, -0.575426,
		0.438971, -0.786874, -0.433743,
		35.657310, 42.627914, 25.303011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845093, 42.558174, 25.566038>,  <35.350033, 43.178726, 25.606632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845093, 42.558174, 25.566038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.227058, 42.439716, 25.574327>,  <35.456238, 42.368641, 25.579300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.227058, 42.439716, 25.574327>,  <34.845093, 42.558174, 25.566038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227058, 42.439716, 25.574327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164811, -0.470781, 0.866719,
		-0.246923, -0.831060, -0.498365,
		0.954917, -0.296149, 0.020721,
		35.513535, 42.350872, 25.580544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831928, 41.872902, 25.692341>,  <34.845093, 42.558174, 25.566038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831928, 41.872902, 25.692341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.223259, 41.905697, 25.768394>,  <35.458057, 41.925373, 25.814028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.223259, 41.905697, 25.768394>,  <34.831928, 41.872902, 25.692341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223259, 41.905697, 25.768394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121615, -0.515664, 0.848116,
		0.167580, -0.852859, -0.494518,
		0.978328, 0.081987, 0.190136,
		35.516758, 41.930294, 25.825436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519360, 41.117676, 25.563484>,  <34.831928, 41.872902, 25.692341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519360, 41.117676, 25.563484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.143261, 41.172489, 25.438807>,  <33.917603, 41.205379, 25.364000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.143261, 41.172489, 25.438807>,  <34.519360, 41.117676, 25.563484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143261, 41.172489, 25.438807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340478, 0.385743, -0.857483,
		0.002726, -0.912372, -0.409353,
		-0.940248, 0.137038, -0.311694,
		33.861187, 41.213600, 25.345299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554981, 40.912998, 24.814909>,  <34.519360, 41.117676, 25.563484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554981, 40.912998, 24.814909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.222446, 41.128208, 24.870649>,  <34.022926, 41.257332, 24.904095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.222446, 41.128208, 24.870649>,  <34.554981, 40.912998, 24.814909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222446, 41.128208, 24.870649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170141, 0.485066, -0.857767,
		-0.529091, -0.689380, -0.494790,
		-0.831333, 0.538020, 0.139352,
		33.973045, 41.289616, 24.912455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062202, 40.925400, 24.168634>,  <34.554981, 40.912998, 24.814909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062202, 40.925400, 24.168634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.960934, 41.246906, 24.383989>,  <33.900173, 41.439812, 24.513203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.960934, 41.246906, 24.383989>,  <34.062202, 40.925400, 24.168634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960934, 41.246906, 24.383989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004145, 0.557415, -0.830224,
		-0.967413, -0.207957, -0.144453,
		-0.253171, 0.803768, 0.538388,
		33.884983, 41.488037, 24.545506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541946, 41.233410, 23.851906>,  <34.062202, 40.925400, 24.168634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541946, 41.233410, 23.851906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.683128, 41.522156, 24.090012>,  <33.767838, 41.695404, 24.232874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.683128, 41.522156, 24.090012>,  <33.541946, 41.233410, 23.851906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683128, 41.522156, 24.090012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003322, 0.637171, -0.770715,
		-0.935636, 0.270048, 0.227288,
		0.352952, 0.721864, 0.595263,
		33.789013, 41.738716, 24.268591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065708, 41.711933, 23.680056>,  <33.541946, 41.233410, 23.851906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065708, 41.711933, 23.680056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.367298, 41.915810, 23.845819>,  <33.548252, 42.038136, 23.945278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.367298, 41.915810, 23.845819>,  <33.065708, 41.711933, 23.680056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367298, 41.915810, 23.845819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024810, 0.608307, -0.793314,
		-0.656434, 0.608421, 0.446003,
		0.753975, 0.509693, 0.414408,
		33.593491, 42.068718, 23.970142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945343, 42.399315, 23.510952>,  <33.065708, 41.711933, 23.680056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945343, 42.399315, 23.510952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.333603, 42.369553, 23.602436>,  <33.566559, 42.351696, 23.657328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.333603, 42.369553, 23.602436>,  <32.945343, 42.399315, 23.510952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333603, 42.369553, 23.602436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193654, 0.805715, -0.559751,
		-0.142628, 0.587611, 0.796474,
		0.970647, -0.074404, 0.228711,
		33.624798, 42.347233, 23.671049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120232, 43.051491, 23.583685>,  <32.945343, 42.399315, 23.510952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120232, 43.051491, 23.583685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.457626, 42.857372, 23.491581>,  <33.660065, 42.740902, 23.436317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.457626, 42.857372, 23.491581>,  <33.120232, 43.051491, 23.583685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457626, 42.857372, 23.491581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277331, 0.760568, -0.587046,
		0.460020, 0.431307, 0.776116,
		0.843486, -0.485294, -0.230261,
		33.710670, 42.711784, 23.422503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653679, 43.578075, 23.556250>,  <33.120232, 43.051491, 23.583685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653679, 43.578075, 23.556250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.826653, 43.267475, 23.372927>,  <33.930439, 43.081116, 23.262932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.826653, 43.267475, 23.372927>,  <33.653679, 43.578075, 23.556250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826653, 43.267475, 23.372927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489411, 0.629037, -0.603978,
		0.757282, 0.036881, 0.652046,
		0.432437, -0.776500, -0.458309,
		33.956383, 43.034527, 23.235434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371017, 43.836441, 23.453651>,  <33.653679, 43.578075, 23.556250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371017, 43.836441, 23.453651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.283257, 43.539429, 23.200510>,  <34.230602, 43.361221, 23.048624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.283257, 43.539429, 23.200510>,  <34.371017, 43.836441, 23.453651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283257, 43.539429, 23.200510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237060, 0.588648, -0.772849,
		0.946397, -0.319587, 0.046877,
		-0.219398, -0.742535, -0.632856,
		34.217438, 43.316669, 23.010653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942894, 43.898521, 23.063328>,  <34.371017, 43.836441, 23.453651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942894, 43.898521, 23.063328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.680084, 43.674446, 22.861532>,  <34.522400, 43.540001, 22.740456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.680084, 43.674446, 22.861532>,  <34.942894, 43.898521, 23.063328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680084, 43.674446, 22.861532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200583, 0.515174, -0.833284,
		0.726694, -0.648680, -0.226118,
		-0.657025, -0.560187, -0.504488,
		34.482975, 43.506390, 22.710186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345001, 43.654499, 22.572502>,  <34.942894, 43.898521, 23.063328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345001, 43.654499, 22.572502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.964031, 43.646126, 22.450882>,  <34.735451, 43.641102, 22.377911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.964031, 43.646126, 22.450882>,  <35.345001, 43.654499, 22.572502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964031, 43.646126, 22.450882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266549, 0.426494, -0.864323,
		0.147771, -0.904248, -0.400623,
		-0.952426, -0.020936, -0.304050,
		34.678303, 43.639843, 22.359667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398327, 43.341404, 21.853640>,  <35.345001, 43.654499, 22.572502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398327, 43.341404, 21.853640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.051777, 43.538601, 21.885498>,  <34.843845, 43.656921, 21.904613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.051777, 43.538601, 21.885498>,  <35.398327, 43.341404, 21.853640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051777, 43.538601, 21.885498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233141, 0.540335, -0.808507,
		-0.441627, -0.681904, -0.583072,
		-0.866378, 0.492996, 0.079646,
		34.791862, 43.686501, 21.909391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018723, 43.294643, 21.237432>,  <35.398327, 43.341404, 21.853640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018723, 43.294643, 21.237432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.883709, 43.637039, 21.394073>,  <34.802700, 43.842476, 21.488058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.883709, 43.637039, 21.394073>,  <35.018723, 43.294643, 21.237432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883709, 43.637039, 21.394073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133137, 0.455245, -0.880356,
		-0.931852, -0.245010, -0.267623,
		-0.337530, 0.855992, 0.391601,
		34.782452, 43.893837, 21.511555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054459, 42.616127, 21.549953>,  <35.018723, 43.294643, 21.237432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054459, 42.616127, 21.549953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.194828, 42.802959, 21.225315>,  <35.279049, 42.915058, 21.030533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.194828, 42.802959, 21.225315>,  <35.054459, 42.616127, 21.549953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194828, 42.802959, 21.225315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034906, -0.872638, -0.487118,
		-0.935753, 0.142611, -0.322533,
		0.350923, 0.467081, -0.811596,
		35.300106, 42.943085, 20.981836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599476, 42.404694, 21.041317>,  <35.054459, 42.616127, 21.549953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599476, 42.404694, 21.041317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.957878, 42.515347, 20.902380>,  <35.172920, 42.581738, 20.819017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.957878, 42.515347, 20.902380>,  <34.599476, 42.404694, 21.041317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957878, 42.515347, 20.902380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065403, -0.855921, -0.512954,
		-0.439197, 0.436893, -0.785003,
		0.896007, 0.276630, -0.347344,
		35.226681, 42.598335, 20.798178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466774, 42.326916, 20.294994>,  <34.599476, 42.404694, 21.041317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466774, 42.326916, 20.294994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.864998, 42.345436, 20.327787>,  <35.103931, 42.356548, 20.347464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.864998, 42.345436, 20.327787>,  <34.466774, 42.326916, 20.294994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864998, 42.345436, 20.327787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078865, -0.885732, -0.457449,
		0.051432, 0.461882, -0.885448,
		0.995558, 0.046303, 0.081981,
		35.163666, 42.359325, 20.352383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702217, 42.165691, 19.630205>,  <34.466774, 42.326916, 20.294994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702217, 42.165691, 19.630205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.986881, 42.067463, 19.893486>,  <35.157681, 42.008526, 20.051455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.986881, 42.067463, 19.893486>,  <34.702217, 42.165691, 19.630205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986881, 42.067463, 19.893486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085175, -0.899840, -0.427823,
		0.697341, 0.360528, -0.619464,
		0.711661, -0.245576, 0.658203,
		35.200378, 41.993790, 20.090946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123310, 41.763206, 19.300879>,  <34.702217, 42.165691, 19.630205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123310, 41.763206, 19.300879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.231106, 41.682777, 19.677589>,  <35.295784, 41.634521, 19.903616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.231106, 41.682777, 19.677589>,  <35.123310, 41.763206, 19.300879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231106, 41.682777, 19.677589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102053, -0.966489, -0.235551,
		0.957580, 0.159590, -0.239942,
		0.269493, -0.201072, 0.941777,
		35.311954, 41.622456, 19.960123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576004, 41.253254, 19.195724>,  <35.123310, 41.763206, 19.300879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576004, 41.253254, 19.195724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.476604, 41.215286, 19.581312>,  <35.416965, 41.192505, 19.812666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.476604, 41.215286, 19.581312>,  <35.576004, 41.253254, 19.195724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476604, 41.215286, 19.581312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097201, -0.987721, -0.122311,
		0.963743, -0.124093, 0.236222,
		-0.248499, -0.094915, 0.963971,
		35.402054, 41.186813, 19.870502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069103, 40.847923, 19.451336>,  <35.576004, 41.253254, 19.195724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069103, 40.847923, 19.451336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.747097, 40.814007, 19.686201>,  <35.553894, 40.793655, 19.827120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.747097, 40.814007, 19.686201>,  <36.069103, 40.847923, 19.451336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747097, 40.814007, 19.686201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019280, -0.992949, -0.116964,
		0.592943, -0.082838, 0.800972,
		-0.805014, -0.084796, 0.587165,
		35.505592, 40.788567, 19.862350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152508, 40.273018, 19.707354>,  <36.069103, 40.847923, 19.451336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152508, 40.273018, 19.707354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.784637, 40.282963, 19.864107>,  <35.563915, 40.288929, 19.958158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.784637, 40.282963, 19.864107>,  <36.152508, 40.273018, 19.707354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784637, 40.282963, 19.864107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010947, -0.999229, 0.037701,
		0.392517, 0.030383, 0.919243,
		-0.919679, 0.024862, 0.391882,
		35.508732, 40.290421, 19.981672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564674, 40.691551, 20.077061>,  <36.152508, 40.273018, 19.707354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564674, 40.691551, 20.077061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.964478, 40.681229, 20.084211>,  <37.204361, 40.675037, 20.088503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.964478, 40.681229, 20.084211>,  <36.564674, 40.691551, 20.077061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964478, 40.681229, 20.084211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031186, 0.751297, -0.659227,
		0.003577, 0.659460, 0.751731,
		0.999507, -0.025802, 0.017879,
		37.264328, 40.673489, 20.089575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691906, 41.377239, 19.940529>,  <36.564674, 40.691551, 20.077061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691906, 41.377239, 19.940529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.045563, 41.201275, 19.877567>,  <37.257755, 41.095695, 19.839790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.045563, 41.201275, 19.877567>,  <36.691906, 41.377239, 19.940529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045563, 41.201275, 19.877567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101650, 0.509941, -0.854183,
		0.456028, 0.739218, 0.495576,
		0.884141, -0.439906, -0.157406,
		37.310806, 41.069302, 19.830345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059036, 41.863892, 19.697449>,  <36.691906, 41.377239, 19.940529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059036, 41.863892, 19.697449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.262665, 41.542362, 19.574345>,  <37.384842, 41.349445, 19.500483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.262665, 41.542362, 19.574345>,  <37.059036, 41.863892, 19.697449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262665, 41.542362, 19.574345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188924, 0.453188, -0.871165,
		0.839737, 0.385338, 0.382566,
		0.509068, -0.803825, -0.307759,
		37.415386, 41.301216, 19.482018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726952, 42.158897, 19.544718>,  <37.059036, 41.863892, 19.697449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726952, 42.158897, 19.544718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.715973, 41.813480, 19.343304>,  <37.709385, 41.606232, 19.222454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.715973, 41.813480, 19.343304>,  <37.726952, 42.158897, 19.544718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715973, 41.813480, 19.343304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329474, 0.467764, -0.820149,
		0.943766, -0.188411, 0.271675,
		-0.027446, -0.863538, -0.503536,
		37.707741, 41.554420, 19.192244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362770, 42.114674, 19.219812>,  <37.726952, 42.158897, 19.544718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362770, 42.114674, 19.219812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.117973, 41.878349, 19.009518>,  <37.971096, 41.736553, 18.883341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.117973, 41.878349, 19.009518>,  <38.362770, 42.114674, 19.219812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117973, 41.878349, 19.009518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382773, 0.360439, -0.850628,
		0.692060, -0.721818, 0.005562,
		-0.611994, -0.590815, -0.525738,
		37.934376, 41.701103, 18.851797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828053, 41.875790, 18.685190>,  <38.362770, 42.114674, 19.219812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828053, 41.875790, 18.685190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.462139, 41.790966, 18.547668>,  <38.242592, 41.740070, 18.465155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.462139, 41.790966, 18.547668>,  <38.828053, 41.875790, 18.685190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462139, 41.790966, 18.547668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236812, 0.407985, -0.881742,
		0.327246, -0.888021, -0.323000,
		-0.914784, -0.212056, -0.343806,
		38.187706, 41.727348, 18.444527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942833, 41.470173, 18.100233>,  <38.828053, 41.875790, 18.685190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942833, 41.470173, 18.100233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.584980, 41.642807, 18.053993>,  <38.370270, 41.746387, 18.026249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.584980, 41.642807, 18.053993>,  <38.942833, 41.470173, 18.100233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584980, 41.642807, 18.053993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272181, 0.321250, -0.907037,
		-0.354328, -0.842930, -0.404871,
		-0.894633, 0.431587, -0.115602,
		38.316589, 41.772282, 18.019312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815102, 41.211956, 17.446331>,  <38.942833, 41.470173, 18.100233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815102, 41.211956, 17.446331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.635853, 41.558853, 17.533129>,  <38.528305, 41.766991, 17.585207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.635853, 41.558853, 17.533129>,  <38.815102, 41.211956, 17.446331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635853, 41.558853, 17.533129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371997, 0.401611, -0.836855,
		-0.812901, -0.294290, -0.502579,
		-0.448119, 0.867238, 0.216995,
		38.501415, 41.819023, 17.598227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746014, 41.480309, 16.798210>,  <38.815102, 41.211956, 17.446331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746014, 41.480309, 16.798210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.667225, 41.790138, 17.038620>,  <38.619949, 41.976036, 17.182865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.667225, 41.790138, 17.038620>,  <38.746014, 41.480309, 16.798210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667225, 41.790138, 17.038620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449934, 0.616086, -0.646528,
		-0.871068, 0.143071, -0.469863,
		-0.196977, 0.774577, 0.601025,
		38.608131, 42.022511, 17.218927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.847347, 30.755476, 28.889835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.003529, 31.008327, 29.157557>,  <37.097237, 31.160038, 29.318190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.003529, 31.008327, 29.157557>,  <36.847347, 30.755476, 28.889835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003529, 31.008327, 29.157557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298477, 0.774658, -0.557509,
		-0.870896, 0.017910, 0.491142,
		0.390452, 0.632127, 0.669301,
		37.120663, 31.197966, 29.358347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285210, 31.300776, 29.043335>,  <36.847347, 30.755476, 28.889835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285210, 31.300776, 29.043335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.643070, 31.450033, 29.141611>,  <36.857788, 31.539589, 29.200577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.643070, 31.450033, 29.141611>,  <36.285210, 31.300776, 29.043335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643070, 31.450033, 29.141611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169813, 0.792670, -0.585524,
		-0.413237, 0.482117, 0.772527,
		0.894650, 0.373145, 0.245691,
		36.911465, 31.561977, 29.215319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205753, 32.028721, 28.986925>,  <36.285210, 31.300776, 29.043335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205753, 32.028721, 28.986925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.601593, 31.972879, 29.000826>,  <36.839096, 31.939375, 29.009167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.601593, 31.972879, 29.000826>,  <36.205753, 32.028721, 28.986925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601593, 31.972879, 29.000826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114129, 0.614764, -0.780410,
		0.087582, 0.776259, 0.624301,
		0.989598, -0.139600, 0.034751,
		36.898472, 31.931000, 29.011251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549789, 32.710831, 29.147560>,  <36.205753, 32.028721, 28.986925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549789, 32.710831, 29.147560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.798187, 32.481098, 28.934206>,  <36.947227, 32.343258, 28.806192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.798187, 32.481098, 28.934206>,  <36.549789, 32.710831, 29.147560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798187, 32.481098, 28.934206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062705, 0.641919, -0.764204,
		0.781301, 0.508014, 0.362615,
		0.620996, -0.574336, -0.533387,
		36.984486, 32.308796, 28.774189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143444, 33.084328, 29.101669>,  <36.549789, 32.710831, 29.147560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143444, 33.084328, 29.101669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.133690, 32.829754, 28.793293>,  <37.127838, 32.677010, 28.608267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.133690, 32.829754, 28.793293>,  <37.143444, 33.084328, 29.101669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133690, 32.829754, 28.793293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097508, 0.765981, -0.635425,
		0.994936, -0.090666, 0.043381,
		-0.024382, -0.636438, -0.770943,
		37.126373, 32.638824, 28.562010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572353, 33.373444, 28.591328>,  <37.143444, 33.084328, 29.101669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572353, 33.373444, 28.591328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.372658, 33.115864, 28.359434>,  <37.252842, 32.961315, 28.220299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.372658, 33.115864, 28.359434>,  <37.572353, 33.373444, 28.591328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372658, 33.115864, 28.359434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011076, 0.673766, -0.738861,
		0.866394, -0.362447, -0.343502,
		-0.499238, -0.643949, -0.579733,
		37.222885, 32.922680, 28.185514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983570, 33.332191, 28.017103>,  <37.572353, 33.373444, 28.591328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983570, 33.332191, 28.017103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.638206, 33.183891, 27.880245>,  <37.430988, 33.094913, 27.798130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.638206, 33.183891, 27.880245>,  <37.983570, 33.332191, 28.017103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638206, 33.183891, 27.880245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101422, 0.536785, -0.837601,
		0.494194, -0.757898, -0.425867,
		-0.863416, -0.370745, -0.342143,
		37.379181, 33.072666, 27.777601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973305, 33.304340, 27.277679>,  <37.983570, 33.332191, 28.017103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973305, 33.304340, 27.277679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.579708, 33.277649, 27.343773>,  <37.343548, 33.261635, 27.383429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.579708, 33.277649, 27.343773>,  <37.973305, 33.304340, 27.277679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579708, 33.277649, 27.343773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177749, 0.433253, -0.883571,
		-0.012632, -0.898799, -0.438179,
		-0.983995, -0.066725, 0.165234,
		37.284508, 33.257633, 27.393343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882450, 33.220074, 26.617846>,  <37.973305, 33.304340, 27.277679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882450, 33.220074, 26.617846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.563408, 33.340137, 26.827124>,  <37.371983, 33.412174, 26.952690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.563408, 33.340137, 26.827124>,  <37.882450, 33.220074, 26.617846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563408, 33.340137, 26.827124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337357, 0.497051, -0.799456,
		-0.500020, -0.814152, -0.295189,
		-0.797603, 0.300160, 0.523195,
		37.324127, 33.430187, 26.984081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343132, 33.143269, 26.191292>,  <37.882450, 33.220074, 26.617846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343132, 33.143269, 26.191292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.238575, 33.424770, 26.455534>,  <37.175842, 33.593674, 26.614079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.238575, 33.424770, 26.455534>,  <37.343132, 33.143269, 26.191292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238575, 33.424770, 26.455534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314436, 0.584983, -0.747613,
		-0.912581, -0.403137, 0.068378,
		-0.261390, 0.703758, 0.660606,
		37.160156, 33.635899, 26.653715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657547, 33.462341, 26.061163>,  <37.343132, 33.143269, 26.191292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657547, 33.462341, 26.061163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.876804, 33.733181, 26.257563>,  <37.008358, 33.895683, 26.375402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.876804, 33.733181, 26.257563>,  <36.657547, 33.462341, 26.061163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876804, 33.733181, 26.257563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116152, 0.642986, -0.757019,
		-0.828277, 0.357927, 0.431097,
		0.548147, 0.677094, 0.490997,
		37.041248, 33.936310, 26.404861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328400, 34.086597, 25.918264>,  <36.657547, 33.462341, 26.061163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328400, 34.086597, 25.918264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.680763, 34.223412, 26.049112>,  <36.892181, 34.305500, 26.127621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.680763, 34.223412, 26.049112>,  <36.328400, 34.086597, 25.918264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680763, 34.223412, 26.049112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039223, 0.741556, -0.669744,
		-0.471653, 0.577155, 0.666660,
		0.880911, 0.342035, 0.327119,
		36.945038, 34.326023, 26.147247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864246, 34.365040, 26.327291>,  <36.328400, 34.086597, 25.918264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864246, 34.365040, 26.327291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.543240, 34.366333, 26.088644>,  <35.350636, 34.367107, 25.945456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.543240, 34.366333, 26.088644>,  <35.864246, 34.365040, 26.327291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543240, 34.366333, 26.088644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401884, -0.742018, 0.536562,
		-0.440967, 0.670372, 0.596782,
		-0.802520, 0.003231, -0.596617,
		35.302483, 34.367302, 25.909658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189304, 34.367836, 26.739878>,  <35.864246, 34.365040, 26.327291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189304, 34.367836, 26.739878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.103142, 34.202961, 26.385771>,  <35.051445, 34.104034, 26.173306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.103142, 34.202961, 26.385771>,  <35.189304, 34.367836, 26.739878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103142, 34.202961, 26.385771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596357, -0.662344, 0.453497,
		-0.773279, 0.625621, -0.103142,
		-0.215402, -0.412189, -0.885270,
		35.038521, 34.079304, 26.120190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383163, 34.311916, 26.662386>,  <35.189304, 34.367836, 26.739878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383163, 34.311916, 26.662386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.565083, 34.031918, 26.442144>,  <34.674232, 33.863918, 26.309999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.565083, 34.031918, 26.442144>,  <34.383163, 34.311916, 26.662386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565083, 34.031918, 26.442144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602607, -0.697098, 0.388483,
		-0.655761, 0.155115, -0.738862,
		0.454800, -0.699995, -0.550603,
		34.701523, 33.821918, 26.276962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756409, 33.916557, 26.450373>,  <34.383163, 34.311916, 26.662386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756409, 33.916557, 26.450373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.084896, 33.699329, 26.380306>,  <34.281986, 33.568993, 26.338266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.084896, 33.699329, 26.380306>,  <33.756409, 33.916557, 26.450373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084896, 33.699329, 26.380306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491301, -0.829056, 0.267002,
		-0.290221, -0.133208, -0.947643,
		0.821216, -0.543068, -0.175164,
		34.331261, 33.536407, 26.327757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516075, 33.287827, 26.143791>,  <33.756409, 33.916557, 26.450373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516075, 33.287827, 26.143791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.876389, 33.225037, 26.305754>,  <34.092575, 33.187363, 26.402931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.876389, 33.225037, 26.305754>,  <33.516075, 33.287827, 26.143791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876389, 33.225037, 26.305754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341672, -0.831676, 0.437693,
		0.268044, -0.532611, -0.802793,
		0.900784, -0.156971, 0.404904,
		34.146626, 33.177944, 26.427225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591080, 32.521698, 26.131729>,  <33.516075, 33.287827, 26.143791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591080, 32.521698, 26.131729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.876518, 32.638691, 26.386362>,  <34.047779, 32.708885, 26.539143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.876518, 32.638691, 26.386362>,  <33.591080, 32.521698, 26.131729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876518, 32.638691, 26.386362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211688, -0.776176, 0.593919,
		0.667811, -0.558574, -0.491960,
		0.713595, 0.292484, 0.636582,
		34.090595, 32.726437, 26.577337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919651, 31.901243, 26.352695>,  <33.591080, 32.521698, 26.131729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919651, 31.901243, 26.352695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.013203, 32.171978, 26.631893>,  <34.069332, 32.334419, 26.799412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.013203, 32.171978, 26.631893>,  <33.919651, 31.901243, 26.352695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013203, 32.171978, 26.631893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312966, -0.627286, 0.713137,
		0.920518, -0.385236, 0.065117,
		0.233879, 0.676835, 0.697994,
		34.083366, 32.375027, 26.841291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074821, 31.517464, 26.966839>,  <33.919651, 31.901243, 26.352695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074821, 31.517464, 26.966839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.027370, 31.883570, 27.120832>,  <33.998901, 32.103233, 27.213228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.027370, 31.883570, 27.120832>,  <34.074821, 31.517464, 26.966839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027370, 31.883570, 27.120832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375506, -0.400280, 0.835926,
		0.919197, -0.045403, 0.391171,
		-0.118624, 0.915267, 0.384986,
		33.991783, 32.158150, 27.236328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435326, 31.542770, 27.621555>,  <34.074821, 31.517464, 26.966839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435326, 31.542770, 27.621555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.130421, 31.801607, 27.627533>,  <33.947475, 31.956909, 27.631119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.130421, 31.801607, 27.627533>,  <34.435326, 31.542770, 27.621555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130421, 31.801607, 27.627533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346828, -0.427835, 0.834666,
		0.546499, 0.631055, 0.550553,
		-0.762266, 0.647091, 0.014943,
		33.901741, 31.995735, 27.632015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249653, 31.639589, 28.312775>,  <34.435326, 31.542770, 27.621555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249653, 31.639589, 28.312775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.912186, 31.769226, 28.141573>,  <33.709705, 31.847008, 28.038851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.912186, 31.769226, 28.141573>,  <34.249653, 31.639589, 28.312775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912186, 31.769226, 28.141573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518223, -0.283352, 0.806943,
		0.140248, 0.902594, 0.407008,
		-0.843668, 0.324093, -0.428005,
		33.659084, 31.866453, 28.013172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040253, 32.110031, 28.781656>,  <34.249653, 31.639589, 28.312775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040253, 32.110031, 28.781656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716183, 31.992964, 28.578497>,  <33.521740, 31.922724, 28.456600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716183, 31.992964, 28.578497>,  <34.040253, 32.110031, 28.781656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716183, 31.992964, 28.578497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505011, -0.091439, 0.858255,
		-0.297626, 0.951832, -0.073719,
		-0.810174, -0.292669, -0.507901,
		33.473129, 31.905163, 28.426126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406261, 32.496151, 29.024334>,  <34.040253, 32.110031, 28.781656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406261, 32.496151, 29.024334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.243431, 32.169655, 28.860367>,  <33.145733, 31.973757, 28.761986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.243431, 32.169655, 28.860367>,  <33.406261, 32.496151, 29.024334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243431, 32.169655, 28.860367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637581, -0.067428, 0.767427,
		-0.654047, 0.573760, -0.492973,
		-0.407078, -0.816244, -0.409919,
		33.121307, 31.924782, 28.737391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751415, 32.575615, 29.185492>,  <33.406261, 32.496151, 29.024334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751415, 32.575615, 29.185492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.751575, 32.200874, 29.045595>,  <32.751671, 31.976030, 28.961658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.751575, 32.200874, 29.045595>,  <32.751415, 32.575615, 29.185492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751575, 32.200874, 29.045595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578593, -0.285468, 0.764027,
		-0.815616, 0.202052, -0.542167,
		0.000398, -0.936847, -0.349739,
		32.751694, 31.919821, 28.940674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044571, 32.313713, 29.310732>,  <32.751415, 32.575615, 29.185492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044571, 32.313713, 29.310732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.277843, 31.990515, 29.277149>,  <32.417805, 31.796597, 29.257000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.277843, 31.990515, 29.277149>,  <32.044571, 32.313713, 29.310732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277843, 31.990515, 29.277149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489865, -0.432231, 0.757105,
		-0.648026, -0.400399, -0.647876,
		0.583176, -0.807996, -0.083955,
		32.452797, 31.748116, 29.251963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050907, 32.296371, 30.024405>,  <32.044571, 32.313713, 29.310732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050907, 32.296371, 30.024405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.786581, 32.288448, 30.324518>,  <31.627985, 32.283695, 30.504587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.786581, 32.288448, 30.324518>,  <32.050907, 32.296371, 30.024405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786581, 32.288448, 30.324518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320425, 0.911418, -0.258156,
		-0.678710, -0.411005, -0.608628,
		-0.660818, -0.019806, 0.750285,
		31.588335, 32.282505, 30.549604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248171, 32.325195, 29.834959>,  <32.050907, 32.296371, 30.024405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248171, 32.325195, 29.834959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.344248, 32.532082, 30.163544>,  <31.401894, 32.656212, 30.360695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.344248, 32.532082, 30.163544>,  <31.248171, 32.325195, 29.834959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344248, 32.532082, 30.163544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211947, 0.853760, -0.475576,
		-0.947304, -0.059876, 0.314690,
		0.240194, 0.517213, 0.821461,
		31.416306, 32.687244, 30.409983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658203, 32.706844, 29.965618>,  <31.248171, 32.325195, 29.834959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658203, 32.706844, 29.965618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.998070, 32.849442, 30.121040>,  <31.201990, 32.935001, 30.214294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.998070, 32.849442, 30.121040>,  <30.658203, 32.706844, 29.965618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998070, 32.849442, 30.121040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238795, 0.917094, -0.319241,
		-0.470152, 0.178463, 0.864354,
		0.849667, 0.356495, 0.388558,
		31.252970, 32.956390, 30.237608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520084, 33.304775, 30.193636>,  <30.658203, 32.706844, 29.965618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520084, 33.304775, 30.193636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.916845, 33.338989, 30.156080>,  <31.154902, 33.359516, 30.133547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.916845, 33.338989, 30.156080>,  <30.520084, 33.304775, 30.193636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916845, 33.338989, 30.156080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122331, 0.842141, -0.525199,
		0.034147, 0.532432, 0.845784,
		0.991902, 0.085532, -0.093889,
		31.214417, 33.364647, 30.127914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626112, 33.993031, 30.234789>,  <30.520084, 33.304775, 30.193636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626112, 33.993031, 30.234789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.957575, 33.853882, 30.059374>,  <31.156452, 33.770393, 29.954124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.957575, 33.853882, 30.059374>,  <30.626112, 33.993031, 30.234789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957575, 33.853882, 30.059374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066199, 0.838849, -0.540324,
		0.555828, 0.418712, 0.718147,
		0.828657, -0.347868, -0.438538,
		31.206171, 33.749523, 29.927813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067741, 34.554661, 30.318737>,  <30.626112, 33.993031, 30.234789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067741, 34.554661, 30.318737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.190533, 34.309135, 30.027807>,  <31.264208, 34.161819, 29.853251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.190533, 34.309135, 30.027807>,  <31.067741, 34.554661, 30.318737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190533, 34.309135, 30.027807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297480, 0.787815, -0.539308,
		0.904030, -0.050808, 0.424439,
		0.306979, -0.613813, -0.727323,
		31.282627, 34.124992, 29.809610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622911, 34.843246, 30.032900>,  <31.067741, 34.554661, 30.318737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622911, 34.843246, 30.032900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.506964, 34.584549, 29.750710>,  <31.437395, 34.429329, 29.581394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.506964, 34.584549, 29.750710>,  <31.622911, 34.843246, 30.032900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506964, 34.584549, 29.750710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305691, 0.635948, -0.708606,
		0.906934, -0.421061, 0.013363,
		-0.289868, -0.646744, -0.705478,
		31.420004, 34.390526, 29.539066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198242, 34.847256, 29.545748>,  <31.622911, 34.843246, 30.032900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198242, 34.847256, 29.545748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.875324, 34.709419, 29.354113>,  <31.681572, 34.626717, 29.239132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.875324, 34.709419, 29.354113>,  <32.198242, 34.847256, 29.545748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875324, 34.709419, 29.354113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189729, 0.617169, -0.763614,
		0.558813, -0.707361, -0.432861,
		-0.807298, -0.344591, -0.479089,
		31.633135, 34.606041, 29.210386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485275, 34.731083, 28.880972>,  <32.198242, 34.847256, 29.545748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485275, 34.731083, 28.880972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.090591, 34.785480, 28.845390>,  <31.853781, 34.818119, 28.824041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.090591, 34.785480, 28.845390>,  <32.485275, 34.731083, 28.880972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090591, 34.785480, 28.845390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154951, 0.622420, -0.767192,
		-0.048965, -0.770778, -0.635219,
		-0.986708, 0.135993, -0.088956,
		31.794579, 34.826279, 28.818703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431919, 34.932938, 28.143347>,  <32.485275, 34.731083, 28.880972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431919, 34.932938, 28.143347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.073986, 35.002949, 28.307610>,  <31.859226, 35.044956, 28.406166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.073986, 35.002949, 28.307610>,  <32.431919, 34.932938, 28.143347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073986, 35.002949, 28.307610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102334, 0.814996, -0.570359,
		-0.434512, -0.552400, -0.711374,
		-0.894833, 0.175030, 0.410655,
		31.805536, 35.055458, 28.430805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060627, 35.101082, 27.667118>,  <32.431919, 34.932938, 28.143347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060627, 35.101082, 27.667118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.833149, 35.248852, 27.961086>,  <31.696661, 35.337513, 28.137466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.833149, 35.248852, 27.961086>,  <32.060627, 35.101082, 27.667118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833149, 35.248852, 27.961086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064170, 0.870821, -0.487394,
		-0.820039, -0.324340, -0.471529,
		-0.568699, 0.369424, 0.734920,
		31.662539, 35.359680, 28.181562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396788, 35.471195, 27.433718>,  <32.060627, 35.101082, 27.667118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396788, 35.471195, 27.433718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.429619, 35.613533, 27.806091>,  <31.449318, 35.698936, 28.029516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.429619, 35.613533, 27.806091>,  <31.396788, 35.471195, 27.433718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429619, 35.613533, 27.806091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039624, 0.934513, -0.353717,
		-0.995838, -0.007855, 0.090805,
		0.082080, 0.355843, 0.930934,
		31.454243, 35.720287, 28.085371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906120, 36.001343, 27.486656>,  <31.396788, 35.471195, 27.433718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906120, 36.001343, 27.486656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.184008, 36.059441, 27.768442>,  <31.350740, 36.094299, 27.937513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.184008, 36.059441, 27.768442>,  <30.906120, 36.001343, 27.486656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184008, 36.059441, 27.768442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113961, 0.944805, -0.307175,
		-0.710197, 0.293682, 0.639821,
		0.694718, 0.145240, 0.704466,
		31.392424, 36.103012, 27.979782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754459, 36.627422, 27.716784>,  <30.906120, 36.001343, 27.486656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754459, 36.627422, 27.716784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.142120, 36.570351, 27.797169>,  <31.374718, 36.536106, 27.845400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.142120, 36.570351, 27.797169>,  <30.754459, 36.627422, 27.716784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142120, 36.570351, 27.797169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194228, 0.944095, -0.266383,
		-0.151721, 0.297199, 0.942684,
		0.969152, -0.142680, 0.200964,
		31.432865, 36.527546, 27.857458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939024, 37.177059, 28.179483>,  <30.754459, 36.627422, 27.716784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939024, 37.177059, 28.179483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.286173, 37.026146, 28.050203>,  <31.494461, 36.935596, 27.972635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.286173, 37.026146, 28.050203>,  <30.939024, 37.177059, 28.179483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286173, 37.026146, 28.050203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369337, 0.925106, -0.088146,
		0.332251, -0.042870, 0.942216,
		0.867871, -0.377282, -0.323201,
		31.546534, 36.912960, 27.953243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549080, 37.620674, 28.461060>,  <30.939024, 37.177059, 28.179483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549080, 37.620674, 28.461060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.702677, 37.411331, 28.156784>,  <31.794834, 37.285725, 27.974218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.702677, 37.411331, 28.156784>,  <31.549080, 37.620674, 28.461060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702677, 37.411331, 28.156784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453470, 0.824538, -0.338381,
		0.804311, -0.215014, 0.553944,
		0.383991, -0.523360, -0.760687,
		31.817875, 37.254322, 27.928577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312836, 37.833973, 28.426373>,  <31.549080, 37.620674, 28.461060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312836, 37.833973, 28.426373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.210800, 37.703297, 28.062351>,  <32.149578, 37.624889, 27.843939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.210800, 37.703297, 28.062351>,  <32.312836, 37.833973, 28.426373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210800, 37.703297, 28.062351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524090, 0.744228, -0.414070,
		0.812563, -0.582576, -0.018628,
		-0.255091, -0.326694, -0.910054,
		32.134274, 37.605289, 27.789335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932114, 37.984100, 27.987900>,  <32.312836, 37.833973, 28.426373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932114, 37.984100, 27.987900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.636292, 37.905418, 27.730413>,  <32.458797, 37.858212, 27.575922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.636292, 37.905418, 27.730413>,  <32.932114, 37.984100, 27.987900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636292, 37.905418, 27.730413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382874, 0.663618, -0.642665,
		0.553593, -0.721747, -0.415470,
		-0.739555, -0.196702, -0.643713,
		32.414425, 37.846409, 27.537300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272213, 37.806232, 27.384190>,  <32.932114, 37.984100, 27.987900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272213, 37.806232, 27.384190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909691, 37.912884, 27.253031>,  <32.692177, 37.976875, 27.174335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909691, 37.912884, 27.253031>,  <33.272213, 37.806232, 27.384190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909691, 37.912884, 27.253031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418462, 0.674757, -0.607942,
		0.059155, -0.688194, -0.723111,
		-0.906306, 0.266632, -0.327898,
		32.637798, 37.992874, 27.154661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288681, 37.901440, 26.629786>,  <33.272213, 37.806232, 27.384190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288681, 37.901440, 26.629786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.957039, 38.083218, 26.760056>,  <32.758053, 38.192284, 26.838217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.957039, 38.083218, 26.760056>,  <33.288681, 37.901440, 26.629786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957039, 38.083218, 26.760056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284127, 0.844157, -0.454611,
		-0.481519, -0.284386, -0.829014,
		-0.829103, 0.454449, 0.325676,
		32.708309, 38.219551, 26.857758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931656, 38.135738, 26.054064>,  <33.288681, 37.901440, 26.629786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931656, 38.135738, 26.054064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.817696, 38.346481, 26.374378>,  <32.749317, 38.472927, 26.566566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.817696, 38.346481, 26.374378>,  <32.931656, 38.135738, 26.054064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817696, 38.346481, 26.374378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224611, 0.848842, -0.478558,
		-0.931869, 0.043521, -0.360176,
		-0.284904, 0.526853, 0.800784,
		32.732224, 38.504536, 26.614613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671463, 38.812595, 25.729996>,  <32.931656, 38.135738, 26.054064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671463, 38.812595, 25.729996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.694698, 38.867828, 26.125483>,  <32.708641, 38.900967, 26.362774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.694698, 38.867828, 26.125483>,  <32.671463, 38.812595, 25.729996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694698, 38.867828, 26.125483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090441, 0.985588, -0.142955,
		-0.994206, 0.097724, 0.044764,
		0.058089, 0.138078, 0.988716,
		32.712124, 38.909252, 26.422098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278160, 39.316532, 25.816179>,  <32.671463, 38.812595, 25.729996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278160, 39.316532, 25.816179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.539742, 39.314526, 26.118788>,  <32.696690, 39.313324, 26.300352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.539742, 39.314526, 26.118788>,  <32.278160, 39.316532, 25.816179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539742, 39.314526, 26.118788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171565, 0.974908, -0.141842,
		-0.736827, 0.222550, 0.638402,
		0.653951, -0.005014, 0.756521,
		32.735928, 39.313023, 26.345743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152477, 39.962467, 26.253080>,  <32.278160, 39.316532, 25.816179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152477, 39.962467, 26.253080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.527489, 39.854782, 26.341227>,  <32.752495, 39.790169, 26.394114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.527489, 39.854782, 26.341227>,  <32.152477, 39.962467, 26.253080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527489, 39.854782, 26.341227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324061, 0.906212, -0.271596,
		-0.126580, 0.326042, 0.936843,
		0.937530, -0.269216, 0.220366,
		32.808746, 39.774017, 26.407337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391754, 40.614693, 26.403805>,  <32.152477, 39.962467, 26.253080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391754, 40.614693, 26.403805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719017, 40.394020, 26.338989>,  <32.915375, 40.261616, 26.300100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719017, 40.394020, 26.338989>,  <32.391754, 40.614693, 26.403805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719017, 40.394020, 26.338989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420492, 0.766287, -0.485789,
		0.392170, 0.329318, 0.858925,
		0.818162, -0.551683, -0.162039,
		32.964466, 40.228516, 26.290377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913597, 41.079956, 26.591875>,  <32.391754, 40.614693, 26.403805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913597, 41.079956, 26.591875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.059570, 40.793213, 26.354240>,  <33.147156, 40.621166, 26.211658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.059570, 40.793213, 26.354240>,  <32.913597, 41.079956, 26.591875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059570, 40.793213, 26.354240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517342, 0.686648, -0.510756,
		0.774068, -0.120955, 0.621440,
		0.364932, -0.716857, -0.594088,
		33.169048, 40.578156, 26.176014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597404, 41.203087, 26.567228>,  <32.913597, 41.079956, 26.591875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597404, 41.203087, 26.567228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.562737, 40.951550, 26.258152>,  <33.541935, 40.800629, 26.072706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.562737, 40.951550, 26.258152>,  <33.597404, 41.203087, 26.567228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562737, 40.951550, 26.258152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455852, 0.664617, -0.592017,
		0.885826, -0.403542, 0.229055,
		-0.086670, -0.628839, -0.772690,
		33.536736, 40.762897, 26.026344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136898, 41.434395, 26.104168>,  <33.597404, 41.203087, 26.567228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136898, 41.434395, 26.104168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.905495, 41.209328, 25.867952>,  <33.766651, 41.074287, 25.726223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.905495, 41.209328, 25.867952>,  <34.136898, 41.434395, 26.104168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905495, 41.209328, 25.867952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137007, 0.646671, -0.750364,
		0.804089, -0.514999, -0.297015,
		-0.578507, -0.562666, -0.590539,
		33.731941, 41.040527, 25.690790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946793, 41.198719, 26.148796>,  <34.136898, 41.434395, 26.104168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946793, 41.198719, 26.148796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.259899, 41.444305, 26.189417>,  <35.447765, 41.591660, 26.213789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.259899, 41.444305, 26.189417>,  <34.946793, 41.198719, 26.148796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259899, 41.444305, 26.189417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141390, -0.334379, 0.931772,
		0.606037, -0.715004, -0.348550,
		0.782769, 0.613970, 0.101552,
		35.494728, 41.628498, 26.219883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392704, 40.753132, 26.359491>,  <34.946793, 41.198719, 26.148796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392704, 40.753132, 26.359491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.488140, 41.118786, 26.490602>,  <35.545403, 41.338177, 26.569269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.488140, 41.118786, 26.490602>,  <35.392704, 40.753132, 26.359491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488140, 41.118786, 26.490602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165611, -0.370883, 0.913794,
		0.956895, -0.163736, -0.239879,
		0.238588, 0.914132, 0.327779,
		35.559715, 41.393024, 26.588936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058323, 40.683479, 26.747562>,  <35.392704, 40.753132, 26.359491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058323, 40.683479, 26.747562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.935165, 41.033588, 26.896744>,  <35.861271, 41.243656, 26.986252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.935165, 41.033588, 26.896744>,  <36.058323, 40.683479, 26.747562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935165, 41.033588, 26.896744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084636, -0.365245, 0.927056,
		0.947648, 0.317003, 0.038378,
		-0.307897, 0.875275, 0.372953,
		35.842796, 41.296169, 27.008629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463779, 40.766243, 27.341417>,  <36.058323, 40.683479, 26.747562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463779, 40.766243, 27.341417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.161079, 41.017296, 27.414530>,  <35.979462, 41.167927, 27.458397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.161079, 41.017296, 27.414530>,  <36.463779, 40.766243, 27.341417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161079, 41.017296, 27.414530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026629, -0.308974, 0.950698,
		0.653165, 0.714570, 0.250528,
		-0.756747, 0.627634, 0.182783,
		35.934055, 41.205585, 27.469364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627640, 41.106022, 27.911770>,  <36.463779, 40.766243, 27.341417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627640, 41.106022, 27.911770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.230667, 41.148495, 27.887093>,  <35.992485, 41.173977, 27.872286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.230667, 41.148495, 27.887093>,  <36.627640, 41.106022, 27.911770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230667, 41.148495, 27.887093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102285, -0.436771, 0.893739,
		0.067950, 0.893285, 0.444326,
		-0.992432, 0.106178, -0.061691,
		35.932938, 41.180347, 27.868586>
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
