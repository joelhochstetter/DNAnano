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
	<23.605240, 34.967274, 35.132465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.004841, 34.952785, 35.142925>,  <24.244600, 34.944092, 35.149200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.004841, 34.952785, 35.142925>,  <23.605240, 34.967274, 35.132465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.004841, 34.952785, 35.142925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041518, 0.968903, -0.243933,
		-0.016499, 0.244776, 0.969439,
		0.999001, -0.036225, 0.026149,
		24.304541, 34.941917, 35.150768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.748873, 35.654335, 35.407421>,  <23.605240, 34.967274, 35.132465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.748873, 35.654335, 35.407421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.078091, 35.486450, 35.254353>,  <24.275621, 35.385719, 35.162510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.078091, 35.486450, 35.254353>,  <23.748873, 35.654335, 35.407421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.078091, 35.486450, 35.254353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247461, 0.871423, -0.423539,
		0.511235, 0.253895, 0.821083,
		0.823045, -0.419714, -0.382672,
		24.325005, 35.360535, 35.139549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.121662, 36.255634, 35.153522>,  <23.748873, 35.654335, 35.407421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.121662, 36.255634, 35.153522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363796, 35.965858, 35.021614>,  <24.509077, 35.791992, 34.942467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363796, 35.965858, 35.021614>,  <24.121662, 36.255634, 35.153522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.363796, 35.965858, 35.021614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398213, 0.634356, -0.662585,
		0.689200, 0.269765, 0.672481,
		0.605334, -0.724444, -0.329775,
		24.545397, 35.748524, 34.922680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.822392, 36.445492, 35.179050>,  <24.121662, 36.255634, 35.153522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.822392, 36.445492, 35.179050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.764158, 36.193253, 34.874119>,  <24.729218, 36.041908, 34.691158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.764158, 36.193253, 34.874119>,  <24.822392, 36.445492, 35.179050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.764158, 36.193253, 34.874119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396930, 0.668577, -0.628850,
		0.906229, -0.394143, 0.152969,
		-0.145585, -0.630600, -0.762331,
		24.720482, 36.004074, 34.645420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.390636, 36.379761, 34.728477>,  <24.822392, 36.445492, 35.179050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.390636, 36.379761, 34.728477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.076277, 36.295479, 34.495937>,  <24.887661, 36.244911, 34.356415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.076277, 36.295479, 34.495937>,  <25.390636, 36.379761, 34.728477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.076277, 36.295479, 34.495937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321728, 0.663549, -0.675421,
		0.528067, -0.717849, -0.453693,
		-0.785898, -0.210702, -0.581351,
		24.840508, 36.232269, 34.321533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111986, 36.222984, 34.585888>,  <25.390636, 36.379761, 34.728477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111986, 36.222984, 34.585888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372622, 36.010151, 34.369621>,  <26.529003, 35.882450, 34.239861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372622, 36.010151, 34.369621>,  <26.111986, 36.222984, 34.585888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.372622, 36.010151, 34.369621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063859, -0.671737, 0.738032,
		-0.755880, -0.515420, -0.403718,
		0.651589, -0.532083, -0.540667,
		26.568098, 35.850525, 34.207420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.021385, 35.523987, 34.244926>,  <26.111986, 36.222984, 34.585888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.021385, 35.523987, 34.244926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379721, 35.423660, 34.391659>,  <26.594723, 35.363464, 34.479698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379721, 35.423660, 34.391659>,  <26.021385, 35.523987, 34.244926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379721, 35.423660, 34.391659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421786, -0.739775, 0.524241,
		0.139882, -0.624359, -0.768511,
		0.895840, -0.250815, 0.366827,
		26.648472, 35.348415, 34.501705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.547050, 36.019829, 34.020283>,  <26.021385, 35.523987, 34.244926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.547050, 36.019829, 34.020283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179321, 36.167442, 33.965641>,  <24.958685, 36.256012, 33.932858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179321, 36.167442, 33.965641>,  <25.547050, 36.019829, 34.020283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.179321, 36.167442, 33.965641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332153, 0.541586, -0.772243,
		-0.211006, -0.755311, -0.620468,
		-0.919321, 0.369039, -0.136601,
		24.903524, 36.278152, 33.924660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.475590, 35.949749, 33.286301>,  <25.547050, 36.019829, 34.020283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.475590, 35.949749, 33.286301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200991, 36.212536, 33.410957>,  <25.036232, 36.370209, 33.485752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200991, 36.212536, 33.410957>,  <25.475590, 35.949749, 33.286301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.200991, 36.212536, 33.410957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259495, 0.621717, -0.739007,
		-0.679254, -0.426456, -0.597285,
		-0.686496, 0.656965, 0.311640,
		24.995041, 36.409626, 33.504448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109957, 36.165531, 32.700161>,  <25.475590, 35.949749, 33.286301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.109957, 36.165531, 32.700161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.003105, 36.466473, 32.941029>,  <24.938995, 36.647038, 33.085548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.003105, 36.466473, 32.941029>,  <25.109957, 36.165531, 32.700161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.003105, 36.466473, 32.941029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153991, 0.650177, -0.744014,
		-0.951278, -0.106017, -0.289535,
		-0.267127, 0.752350, 0.602174,
		24.922968, 36.692177, 33.121681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.582403, 36.552143, 32.459335>,  <25.109957, 36.165531, 32.700161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.582403, 36.552143, 32.459335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754593, 36.802120, 32.719837>,  <24.857906, 36.952106, 32.876141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754593, 36.802120, 32.719837>,  <24.582403, 36.552143, 32.459335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.754593, 36.802120, 32.719837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022754, 0.728818, -0.684329,
		-0.902316, 0.279768, 0.327958,
		0.430475, 0.624943, 0.651258,
		24.883736, 36.989605, 32.915215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.387148, 37.262402, 32.259155>,  <24.582403, 36.552143, 32.459335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.387148, 37.262402, 32.259155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.713932, 37.300758, 32.486622>,  <24.910004, 37.323772, 32.623100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.713932, 37.300758, 32.486622>,  <24.387148, 37.262402, 32.259155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.713932, 37.300758, 32.486622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422160, 0.572334, -0.703005,
		-0.392880, 0.814394, 0.427091,
		0.816962, 0.095896, 0.568663,
		24.959021, 37.329529, 32.657219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.602835, 37.911415, 32.430229>,  <24.387148, 37.262402, 32.259155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.602835, 37.911415, 32.430229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.929821, 37.682030, 32.408726>,  <25.126013, 37.544399, 32.395824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.929821, 37.682030, 32.408726>,  <24.602835, 37.911415, 32.430229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.929821, 37.682030, 32.408726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386762, 0.615689, -0.686543,
		0.426809, 0.540431, 0.725099,
		0.817465, -0.573463, -0.053763,
		25.175060, 37.509991, 32.392597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.432859, 37.937016, 32.176548>,  <24.602835, 37.911415, 32.430229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.432859, 37.937016, 32.176548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400492, 38.159492, 32.507389>,  <25.381071, 38.292976, 32.705894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400492, 38.159492, 32.507389>,  <25.432859, 37.937016, 32.176548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400492, 38.159492, 32.507389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210274, -0.820678, 0.531293,
		0.974288, -0.130927, 0.183361,
		-0.080920, 0.556189, 0.827107,
		25.376215, 38.326347, 32.755520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.746590, 37.533245, 32.701694>,  <25.432859, 37.937016, 32.176548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.746590, 37.533245, 32.701694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495842, 37.799648, 32.863422>,  <25.345394, 37.959492, 32.960457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495842, 37.799648, 32.863422>,  <25.746590, 37.533245, 32.701694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.495842, 37.799648, 32.863422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409621, -0.723151, 0.556115,
		0.662758, 0.182994, 0.726130,
		-0.626868, 0.666007, 0.404316,
		25.307781, 37.999451, 32.984718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.824572, 37.619221, 33.493927>,  <25.746590, 37.533245, 32.701694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.824572, 37.619221, 33.493927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471884, 37.647717, 33.307381>,  <25.260271, 37.664814, 33.195454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471884, 37.647717, 33.307381>,  <25.824572, 37.619221, 33.493927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.471884, 37.647717, 33.307381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369857, -0.718059, 0.589574,
		-0.292879, 0.692327, 0.659474,
		-0.881719, 0.071237, -0.466366,
		25.207369, 37.669086, 33.167469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.251492, 37.800053, 33.878372>,  <25.824572, 37.619221, 33.493927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.251492, 37.800053, 33.878372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113440, 37.559624, 33.590042>,  <25.030609, 37.415367, 33.417046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113440, 37.559624, 33.590042>,  <25.251492, 37.800053, 33.878372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.113440, 37.559624, 33.590042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418121, -0.589126, 0.691452,
		-0.840274, 0.540034, -0.047997,
		-0.345131, -0.601077, -0.720827,
		25.009901, 37.379299, 33.373795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.555174, 37.616489, 33.977718>,  <25.251492, 37.800053, 33.878372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.555174, 37.616489, 33.977718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.663481, 37.324936, 33.726189>,  <24.728464, 37.150005, 33.575272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.663481, 37.324936, 33.726189>,  <24.555174, 37.616489, 33.977718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.663481, 37.324936, 33.726189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446660, -0.673776, 0.588661,
		-0.852749, 0.121480, -0.507998,
		0.270766, -0.728882, -0.628822,
		24.744711, 37.106270, 33.537540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.927168, 37.144474, 33.774628>,  <24.555174, 37.616489, 33.977718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.927168, 37.144474, 33.774628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.247080, 36.923000, 33.681866>,  <24.439028, 36.790115, 33.626209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.247080, 36.923000, 33.681866>,  <23.927168, 37.144474, 33.774628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.247080, 36.923000, 33.681866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396146, -0.777072, 0.489108,
		-0.451019, -0.299312, -0.840829,
		0.799781, -0.553688, -0.231903,
		24.487015, 36.756893, 33.612293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.656115, 36.393051, 33.690765>,  <23.927168, 37.144474, 33.774628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.656115, 36.393051, 33.690765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.052988, 36.381786, 33.739388>,  <24.291113, 36.375027, 33.768559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.052988, 36.381786, 33.739388>,  <23.656115, 36.393051, 33.690765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.052988, 36.381786, 33.739388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086912, -0.854952, 0.511375,
		0.089521, -0.517943, -0.850718,
		0.992186, -0.028159, 0.121552,
		24.350643, 36.373337, 33.775852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.774942, 35.746685, 33.729580>,  <23.656115, 36.393051, 33.690765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.774942, 35.746685, 33.729580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.117264, 35.891201, 33.877670>,  <24.322657, 35.977909, 33.966526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.117264, 35.891201, 33.877670>,  <23.774942, 35.746685, 33.729580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.117264, 35.891201, 33.877670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093149, -0.811625, 0.576704,
		0.508842, -0.459060, -0.728247,
		0.855805, 0.361287, 0.370228,
		24.374006, 35.999588, 33.988739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.215965, 35.205421, 33.764065>,  <23.774942, 35.746685, 33.729580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.215965, 35.205421, 33.764065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.380653, 35.449471, 34.034836>,  <24.479467, 35.595901, 34.197300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.380653, 35.449471, 34.034836>,  <24.215965, 35.205421, 33.764065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.380653, 35.449471, 34.034836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158997, -0.779511, 0.605873,
		0.897332, -0.141821, -0.417949,
		0.411721, 0.610122, 0.676932,
		24.504169, 35.632507, 34.237915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.953882, 34.990643, 33.951084>,  <24.215965, 35.205421, 33.764065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.953882, 34.990643, 33.951084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.783251, 35.196205, 34.248791>,  <24.680872, 35.319542, 34.427414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.783251, 35.196205, 34.248791>,  <24.953882, 34.990643, 33.951084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.783251, 35.196205, 34.248791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174828, -0.760522, 0.625333,
		0.887394, 0.396871, 0.234576,
		-0.426577, 0.513906, 0.744267,
		24.655277, 35.350376, 34.472073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.301596, 34.742813, 34.582073>,  <24.953882, 34.990643, 33.951084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.301596, 34.742813, 34.582073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986973, 34.930649, 34.742481>,  <24.798199, 35.043350, 34.838726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986973, 34.930649, 34.742481>,  <25.301596, 34.742813, 34.582073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.986973, 34.930649, 34.742481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067866, -0.711209, 0.699697,
		0.613780, 0.523134, 0.591274,
		-0.786555, 0.469587, 0.401023,
		24.751007, 35.071526, 34.862789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.464636, 34.941120, 35.369743>,  <25.301596, 34.742813, 34.582073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.464636, 34.941120, 35.369743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.088259, 34.863377, 35.258858>,  <24.862432, 34.816730, 35.192326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.088259, 34.863377, 35.258858>,  <25.464636, 34.941120, 35.369743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.088259, 34.863377, 35.258858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140109, -0.521861, 0.841446,
		-0.308213, 0.830593, 0.463810,
		-0.940943, -0.194360, -0.277218,
		24.805975, 34.805069, 35.175694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.010445, 35.291801, 35.830379>,  <25.464636, 34.941120, 35.369743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.010445, 35.291801, 35.830379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.939270, 34.940762, 35.652317>,  <24.896564, 34.730137, 35.545479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.939270, 34.940762, 35.652317>,  <25.010445, 35.291801, 35.830379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.939270, 34.940762, 35.652317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020217, -0.455538, 0.889986,
		-0.983834, 0.149363, 0.098801,
		-0.177939, -0.877596, -0.445154,
		24.885889, 34.677483, 35.518772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.366692, 35.450169, 36.500278>,  <25.010445, 35.291801, 35.830379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.366692, 35.450169, 36.500278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.605633, 35.136696, 36.432152>,  <25.748997, 34.948612, 36.391273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.605633, 35.136696, 36.432152>,  <25.366692, 35.450169, 36.500278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.605633, 35.136696, 36.432152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417310, 0.122385, 0.900486,
		-0.684852, -0.608984, 0.400146,
		0.597353, -0.783684, -0.170320,
		25.784840, 34.901592, 36.381054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.351091, 34.888443, 36.979599>,  <25.366692, 35.450169, 36.500278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.351091, 34.888443, 36.979599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713427, 34.921673, 36.813438>,  <25.930828, 34.941612, 36.713741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713427, 34.921673, 36.813438>,  <25.351091, 34.888443, 36.979599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.713427, 34.921673, 36.813438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362721, 0.354455, 0.861856,
		0.218840, -0.931375, 0.290945,
		0.905838, 0.083077, -0.415399,
		25.985178, 34.946594, 36.688820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.014996, 34.444099, 37.075249>,  <25.351091, 34.888443, 36.979599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.014996, 34.444099, 37.075249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121265, 34.818462, 36.982742>,  <26.185028, 35.043079, 36.927238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121265, 34.818462, 36.982742>,  <26.014996, 34.444099, 37.075249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121265, 34.818462, 36.982742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240783, 0.167871, 0.955951,
		0.933509, -0.309659, -0.180752,
		0.265676, 0.935911, -0.231270,
		26.200968, 35.099236, 36.913361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588781, 34.636448, 37.353668>,  <26.014996, 34.444099, 37.075249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.588781, 34.636448, 37.353668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471258, 35.009815, 37.271290>,  <26.400745, 35.233833, 37.221863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471258, 35.009815, 37.271290>,  <26.588781, 34.636448, 37.353668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471258, 35.009815, 37.271290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204695, 0.271897, 0.940304,
		0.933691, 0.234111, -0.270950,
		-0.293806, 0.933415, -0.205946,
		26.383116, 35.289841, 37.209507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635490, 34.227303, 38.030842>,  <26.588781, 34.636448, 37.353668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635490, 34.227303, 38.030842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033409, 34.257294, 38.003254>,  <27.272160, 34.275288, 37.986702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033409, 34.257294, 38.003254>,  <26.635490, 34.227303, 38.030842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033409, 34.257294, 38.003254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068351, 0.010835, 0.997602,
		0.075551, -0.997126, 0.005654,
		0.994797, 0.074984, -0.068973,
		27.331848, 34.279789, 37.982563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949110, 33.639313, 38.345921>,  <26.635490, 34.227303, 38.030842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949110, 33.639313, 38.345921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193893, 33.955162, 38.363819>,  <27.340763, 34.144672, 38.374557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193893, 33.955162, 38.363819>,  <26.949110, 33.639313, 38.345921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193893, 33.955162, 38.363819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124821, -0.152294, 0.980422,
		0.780979, -0.594390, -0.191758,
		0.611957, 0.789624, 0.044746,
		27.377481, 34.192051, 38.377243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475100, 33.399082, 38.758900>,  <26.949110, 33.639313, 38.345921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475100, 33.399082, 38.758900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535530, 33.794441, 38.765270>,  <27.571789, 34.031654, 38.769093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535530, 33.794441, 38.765270>,  <27.475100, 33.399082, 38.758900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535530, 33.794441, 38.765270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425841, -0.079615, 0.901289,
		0.892097, -0.129378, -0.432926,
		0.151075, 0.988394, 0.015930,
		27.580853, 34.090958, 38.770050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172892, 33.472755, 38.959541>,  <27.475100, 33.399082, 38.758900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172892, 33.472755, 38.959541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982727, 33.807526, 39.068016>,  <27.868628, 34.008389, 39.133099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982727, 33.807526, 39.068016>,  <28.172892, 33.472755, 38.959541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982727, 33.807526, 39.068016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279613, -0.148523, 0.948555,
		0.834147, 0.526780, -0.163406,
		-0.475411, 0.836925, 0.271185,
		27.840103, 34.058601, 39.149372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753347, 33.910458, 39.171879>,  <28.172892, 33.472755, 38.959541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.753347, 33.910458, 39.171879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.598402, 34.261848, 39.283760>,  <28.505434, 34.472683, 39.350891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.598402, 34.261848, 39.283760>,  <28.753347, 33.910458, 39.171879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598402, 34.261848, 39.283760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113790, -0.346630, 0.931075,
		0.914877, 0.328838, 0.234233,
		-0.387364, 0.878472, 0.279705,
		28.482193, 34.525391, 39.367672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979870, 34.166660, 39.807079>,  <28.753347, 33.910458, 39.171879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979870, 34.166660, 39.807079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609467, 34.316505, 39.788441>,  <28.387224, 34.406414, 39.777260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609467, 34.316505, 39.788441>,  <28.979870, 34.166660, 39.807079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609467, 34.316505, 39.788441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150923, -0.254248, 0.955291,
		0.346021, 0.891639, 0.291974,
		-0.926008, 0.374616, -0.046593,
		28.331663, 34.428890, 39.774464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851311, 34.630714, 40.432014>,  <28.979870, 34.166660, 39.807079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851311, 34.630714, 40.432014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488796, 34.523804, 40.301041>,  <28.271288, 34.459660, 40.222454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488796, 34.523804, 40.301041>,  <28.851311, 34.630714, 40.432014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488796, 34.523804, 40.301041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277254, -0.208811, 0.937831,
		-0.319029, 0.940725, 0.115140,
		-0.906284, -0.267273, -0.327437,
		28.216911, 34.443623, 40.202808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422153, 35.120182, 40.837463>,  <28.851311, 34.630714, 40.432014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422153, 35.120182, 40.837463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235970, 34.785282, 40.722672>,  <28.124260, 34.584343, 40.653797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235970, 34.785282, 40.722672>,  <28.422153, 35.120182, 40.837463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235970, 34.785282, 40.722672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103400, -0.270582, 0.957128,
		-0.879008, 0.475179, 0.039374,
		-0.465461, -0.837252, -0.286977,
		28.096331, 34.534107, 40.636578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802811, 34.952881, 41.256794>,  <28.422153, 35.120182, 40.837463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802811, 34.952881, 41.256794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902905, 34.596317, 41.105656>,  <27.962961, 34.382378, 41.014973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902905, 34.596317, 41.105656>,  <27.802811, 34.952881, 41.256794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902905, 34.596317, 41.105656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026645, -0.383776, 0.923042,
		-0.967818, -0.241045, -0.072283,
		0.250235, -0.891411, -0.377848,
		27.977976, 34.328896, 40.992302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.877542, 34.969952, 41.887535>,  <27.802811, 34.952881, 41.256794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.877542, 34.969952, 41.887535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843758, 34.587646, 42.000229>,  <27.823486, 34.358261, 42.067844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843758, 34.587646, 42.000229>,  <27.877542, 34.969952, 41.887535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843758, 34.587646, 42.000229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264119, -0.251158, -0.931214,
		0.960785, -0.153063, -0.231224,
		-0.084461, -0.955767, 0.281736,
		27.818419, 34.300915, 42.084751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414103, 34.447372, 41.458263>,  <27.877542, 34.969952, 41.887535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414103, 34.447372, 41.458263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086222, 34.256264, 41.584644>,  <27.889494, 34.141598, 41.660473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086222, 34.256264, 41.584644>,  <28.414103, 34.447372, 41.458263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086222, 34.256264, 41.584644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232162, -0.227138, -0.945785,
		0.523632, -0.848614, 0.075266,
		-0.819702, -0.477769, 0.315952,
		27.840311, 34.112934, 41.679432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324337, 33.687679, 41.274014>,  <28.414103, 34.447372, 41.458263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324337, 33.687679, 41.274014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968807, 33.870419, 41.259705>,  <27.755489, 33.980064, 41.251118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968807, 33.870419, 41.259705>,  <28.324337, 33.687679, 41.274014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968807, 33.870419, 41.259705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068889, -0.210393, -0.975187,
		-0.453042, -0.864304, 0.218474,
		-0.888823, 0.456851, -0.035775,
		27.702160, 34.007473, 41.248974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966492, 33.347584, 40.701954>,  <28.324337, 33.687679, 41.274014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966492, 33.347584, 40.701954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808359, 33.709286, 40.766499>,  <27.713480, 33.926308, 40.805225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808359, 33.709286, 40.766499>,  <27.966492, 33.347584, 40.701954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808359, 33.709286, 40.766499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169623, 0.244524, -0.954692,
		-0.902741, -0.350048, -0.250050,
		-0.395331, 0.904253, 0.161366,
		27.689760, 33.980560, 40.814907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432192, 33.458767, 40.245159>,  <27.966492, 33.347584, 40.701954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432192, 33.458767, 40.245159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634155, 33.788120, 40.348778>,  <27.755333, 33.985733, 40.410950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634155, 33.788120, 40.348778>,  <27.432192, 33.458767, 40.245159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634155, 33.788120, 40.348778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066713, 0.261992, -0.962761,
		-0.860590, 0.503389, 0.077351,
		0.504909, 0.823383, 0.259050,
		27.785627, 34.035133, 40.426495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.068863, 33.940071, 39.814144>,  <27.432192, 33.458767, 40.245159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.068863, 33.940071, 39.814144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.422718, 34.080547, 39.936836>,  <27.635031, 34.164833, 40.010452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.422718, 34.080547, 39.936836>,  <27.068863, 33.940071, 39.814144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.422718, 34.080547, 39.936836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103779, 0.493023, -0.863804,
		-0.454586, 0.795985, 0.399700,
		0.884636, 0.351193, 0.306728,
		27.688108, 34.185905, 40.028854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043325, 34.817345, 39.790012>,  <27.068863, 33.940071, 39.814144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043325, 34.817345, 39.790012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394615, 34.637516, 39.724762>,  <27.605389, 34.529621, 39.685612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394615, 34.637516, 39.724762>,  <27.043325, 34.817345, 39.790012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394615, 34.637516, 39.724762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030671, 0.287446, -0.957306,
		0.477266, 0.845732, 0.238653,
		0.878223, -0.449570, -0.163128,
		27.658083, 34.502644, 39.675823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377663, 35.231293, 39.325603>,  <27.043325, 34.817345, 39.790012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377663, 35.231293, 39.325603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535864, 34.865349, 39.293083>,  <27.630785, 34.645782, 39.273571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535864, 34.865349, 39.293083>,  <27.377663, 35.231293, 39.325603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535864, 34.865349, 39.293083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055642, 0.112227, -0.992124,
		0.916777, 0.387866, 0.095291,
		0.395505, -0.914858, -0.081305,
		27.654516, 34.590893, 39.268692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924135, 35.359173, 38.727360>,  <27.377663, 35.231293, 39.325603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.924135, 35.359173, 38.727360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806705, 34.978451, 38.762863>,  <27.736248, 34.750015, 38.784164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806705, 34.978451, 38.762863>,  <27.924135, 35.359173, 38.727360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806705, 34.978451, 38.762863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089466, -0.119802, -0.988758,
		0.951741, -0.282332, 0.120325,
		-0.293573, -0.951807, 0.088762,
		27.718634, 34.692909, 38.789494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359993, 35.047958, 38.224697>,  <27.924135, 35.359173, 38.727360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359993, 35.047958, 38.224697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034771, 34.826691, 38.297298>,  <27.839638, 34.693928, 38.340858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034771, 34.826691, 38.297298>,  <28.359993, 35.047958, 38.224697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034771, 34.826691, 38.297298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134235, -0.125230, -0.983005,
		0.566500, -0.823601, 0.027564,
		-0.813055, -0.553172, 0.181499,
		27.790854, 34.660740, 38.351749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432135, 34.489605, 37.920609>,  <28.359993, 35.047958, 38.224697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.432135, 34.489605, 37.920609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034641, 34.532436, 37.933464>,  <27.796146, 34.558136, 37.941177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034641, 34.532436, 37.933464>,  <28.432135, 34.489605, 37.920609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034641, 34.532436, 37.933464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058697, -0.255096, -0.965132,
		-0.095146, -0.960968, 0.259782,
		-0.993731, 0.107077, 0.032135,
		27.736523, 34.564560, 37.943104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212763, 33.946194, 37.653015>,  <28.432135, 34.489605, 37.920609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212763, 33.946194, 37.653015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932941, 34.227509, 37.602390>,  <27.765049, 34.396297, 37.572018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932941, 34.227509, 37.602390>,  <28.212763, 33.946194, 37.653015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932941, 34.227509, 37.602390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032511, -0.208251, -0.977535,
		-0.713841, -0.679723, 0.168547,
		-0.699553, 0.703284, -0.126560,
		27.723076, 34.438496, 37.564423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916613, 33.656548, 37.135521>,  <28.212763, 33.946194, 37.653015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916613, 33.656548, 37.135521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.787863, 34.034477, 37.111164>,  <27.710613, 34.261234, 37.096550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.787863, 34.034477, 37.111164>,  <27.916613, 33.656548, 37.135521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.787863, 34.034477, 37.111164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023839, -0.072386, -0.997092,
		-0.946483, -0.319486, 0.045823,
		-0.321873, 0.944822, -0.060896,
		27.691301, 34.317924, 37.092896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428215, 33.678047, 36.622406>,  <27.916613, 33.656548, 37.135521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428215, 33.678047, 36.622406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554375, 34.057228, 36.639885>,  <27.630072, 34.284737, 36.650372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554375, 34.057228, 36.639885>,  <27.428215, 33.678047, 36.622406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554375, 34.057228, 36.639885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045688, 0.061162, -0.997082,
		-0.947858, 0.312485, 0.062600,
		0.315401, 0.947952, 0.043696,
		27.648994, 34.341614, 36.652992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936720, 34.106918, 36.172558>,  <27.428215, 33.678047, 36.622406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936720, 34.106918, 36.172558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308752, 34.251232, 36.200218>,  <27.531971, 34.337818, 36.216816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308752, 34.251232, 36.200218>,  <26.936720, 34.106918, 36.172558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308752, 34.251232, 36.200218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001972, 0.193154, -0.981166,
		-0.367345, 0.912430, 0.180361,
		0.930083, 0.360782, 0.069155,
		27.587776, 34.359467, 36.220966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019495, 34.716293, 35.656204>,  <26.936720, 34.106918, 36.172558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019495, 34.716293, 35.656204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385571, 34.586960, 35.752441>,  <27.605217, 34.509361, 35.810184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385571, 34.586960, 35.752441>,  <27.019495, 34.716293, 35.656204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385571, 34.586960, 35.752441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338146, 0.291226, -0.894899,
		0.219281, 0.900358, 0.375860,
		0.915190, -0.323330, 0.240592,
		27.660128, 34.489960, 35.824619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142649, 34.090496, 35.257698>,  <27.019495, 34.716293, 35.656204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142649, 34.090496, 35.257698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397957, 33.813507, 35.392216>,  <27.551142, 33.647316, 35.472927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397957, 33.813507, 35.392216>,  <27.142649, 34.090496, 35.257698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397957, 33.813507, 35.392216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020405, -0.451915, -0.891827,
		0.769540, 0.562367, -0.302575,
		0.638272, -0.692471, 0.336292,
		27.589439, 33.605766, 35.493103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786911, 33.986977, 34.755123>,  <27.142649, 34.090496, 35.257698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786911, 33.986977, 34.755123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727205, 33.649990, 34.962185>,  <27.691381, 33.447796, 35.086422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727205, 33.649990, 34.962185>,  <27.786911, 33.986977, 34.755123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727205, 33.649990, 34.962185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155265, -0.536992, -0.829176,
		0.976531, -0.043394, 0.210961,
		-0.149265, -0.842470, 0.517652,
		27.682426, 33.397247, 35.117481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437096, 33.619236, 34.713745>,  <27.786911, 33.986977, 34.755123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437096, 33.619236, 34.713745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124195, 33.374432, 34.760254>,  <27.936455, 33.227547, 34.788158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124195, 33.374432, 34.760254>,  <28.437096, 33.619236, 34.713745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124195, 33.374432, 34.760254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378259, -0.614933, -0.691937,
		0.494978, -0.497287, 0.712533,
		-0.782251, -0.612016, 0.116275,
		27.889519, 33.190826, 34.795135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709646, 32.928749, 34.665020>,  <28.437096, 33.619236, 34.713745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709646, 32.928749, 34.665020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313141, 32.894604, 34.624802>,  <28.075237, 32.874119, 34.600670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313141, 32.894604, 34.624802>,  <28.709646, 32.928749, 34.665020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313141, 32.894604, 34.624802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125246, -0.848177, -0.514694,
		-0.041349, -0.522790, 0.851458,
		-0.991264, -0.085360, -0.100549,
		28.015762, 32.868996, 34.594635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607107, 32.259327, 34.806225>,  <28.709646, 32.928749, 34.665020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607107, 32.259327, 34.806225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280603, 32.390057, 34.615685>,  <28.084702, 32.468494, 34.501362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280603, 32.390057, 34.615685>,  <28.607107, 32.259327, 34.806225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280603, 32.390057, 34.615685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046581, -0.784656, -0.618178,
		-0.575805, -0.526782, 0.625259,
		-0.816259, 0.326825, -0.476347,
		28.035727, 32.488106, 34.472778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267736, 31.618900, 34.773930>,  <28.607107, 32.259327, 34.806225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267736, 31.618900, 34.773930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160511, 31.890125, 34.500179>,  <28.096176, 32.052860, 34.335930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160511, 31.890125, 34.500179>,  <28.267736, 31.618900, 34.773930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160511, 31.890125, 34.500179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132125, -0.677788, -0.723289,
		-0.954298, -0.284312, 0.092102,
		-0.268065, 0.678063, -0.684376,
		28.080091, 32.093544, 34.294865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826286, 31.268047, 34.259750>,  <28.267736, 31.618900, 34.773930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826286, 31.268047, 34.259750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.031662, 31.579493, 34.115448>,  <28.154886, 31.766359, 34.028866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.031662, 31.579493, 34.115448>,  <27.826286, 31.268047, 34.259750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.031662, 31.579493, 34.115448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076032, -0.460023, -0.884646,
		-0.854752, 0.426782, -0.295393,
		0.513438, 0.778611, -0.360756,
		28.185694, 31.813076, 34.007221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490938, 31.656178, 33.588348>,  <27.826286, 31.268047, 34.259750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490938, 31.656178, 33.588348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890240, 31.659725, 33.611721>,  <28.129820, 31.661854, 33.625744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890240, 31.659725, 33.611721>,  <27.490938, 31.656178, 33.588348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890240, 31.659725, 33.611721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055665, -0.473302, -0.879140,
		0.019858, 0.880856, -0.472968,
		0.998252, 0.008870, 0.058432,
		28.189714, 31.662386, 33.629250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770298, 32.051857, 33.098068>,  <27.490938, 31.656178, 33.588348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770298, 32.051857, 33.098068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004639, 31.746725, 33.207523>,  <28.145243, 31.563646, 33.273197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004639, 31.746725, 33.207523>,  <27.770298, 32.051857, 33.098068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004639, 31.746725, 33.207523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198654, -0.462520, -0.864067,
		0.785695, 0.451854, -0.422506,
		0.585850, -0.762826, 0.273637,
		28.180393, 31.517878, 33.289616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176800, 31.833008, 32.431656>,  <27.770298, 32.051857, 33.098068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176800, 31.833008, 32.431656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166222, 31.537022, 32.700508>,  <28.159874, 31.359430, 32.861820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166222, 31.537022, 32.700508>,  <28.176800, 31.833008, 32.431656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166222, 31.537022, 32.700508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058851, -0.672349, -0.737891,
		0.997916, 0.020042, 0.061327,
		-0.026445, -0.739963, 0.672127,
		28.158289, 31.315033, 32.902145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648733, 31.336103, 32.330212>,  <28.176800, 31.833008, 32.431656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648733, 31.336103, 32.330212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414755, 31.099337, 32.552013>,  <28.274368, 30.957277, 32.685093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414755, 31.099337, 32.552013>,  <28.648733, 31.336103, 32.330212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414755, 31.099337, 32.552013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234691, -0.777945, -0.582857,
		0.776374, -0.210805, 0.593974,
		-0.584948, -0.591915, 0.554502,
		28.239271, 30.921762, 32.718365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769705, 32.035461, 31.981833>,  <28.648733, 31.336103, 32.330212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769705, 32.035461, 31.981833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414251, 32.001659, 31.801527>,  <28.200979, 31.981379, 31.693344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414251, 32.001659, 31.801527>,  <28.769705, 32.035461, 31.981833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414251, 32.001659, 31.801527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396697, 0.351572, -0.847956,
		0.230131, -0.932339, -0.278896,
		-0.888634, -0.084504, -0.450763,
		28.147661, 31.976307, 31.666298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751909, 31.558733, 31.397537>,  <28.769705, 32.035461, 31.981833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751909, 31.558733, 31.397537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499979, 31.868086, 31.368700>,  <28.348822, 32.053699, 31.351397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499979, 31.868086, 31.368700>,  <28.751909, 31.558733, 31.397537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499979, 31.868086, 31.368700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568359, 0.395607, -0.721431,
		-0.529422, -0.495351, -0.688723,
		-0.629826, 0.773383, -0.072094,
		28.311031, 32.100101, 31.347073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702751, 31.672882, 30.749834>,  <28.751909, 31.558733, 31.397537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702751, 31.672882, 30.749834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550678, 32.012863, 30.895735>,  <28.459435, 32.216850, 30.983274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550678, 32.012863, 30.895735>,  <28.702751, 31.672882, 30.749834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550678, 32.012863, 30.895735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433531, 0.512117, -0.741476,
		-0.817014, -0.123765, -0.563178,
		-0.380182, 0.849952, 0.364751,
		28.436625, 32.267849, 31.005159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372383, 31.962408, 30.111027>,  <28.702751, 31.672882, 30.749834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372383, 31.962408, 30.111027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421659, 32.251541, 30.383009>,  <28.451225, 32.425022, 30.546198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421659, 32.251541, 30.383009>,  <28.372383, 31.962408, 30.111027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421659, 32.251541, 30.383009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034922, 0.681590, -0.730900,
		-0.991769, 0.113784, 0.058721,
		0.123189, 0.722833, 0.679954,
		28.458616, 32.468391, 30.586994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911066, 32.472191, 29.889629>,  <28.372383, 31.962408, 30.111027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911066, 32.472191, 29.889629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172308, 32.656178, 30.130259>,  <28.329052, 32.766567, 30.274635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172308, 32.656178, 30.130259>,  <27.911066, 32.472191, 29.889629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172308, 32.656178, 30.130259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012321, 0.787839, -0.615758,
		-0.757169, 0.409566, 0.508872,
		0.653103, 0.459963, 0.601573,
		28.368238, 32.794167, 30.310730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663008, 33.156490, 29.883360>,  <27.911066, 32.472191, 29.889629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663008, 33.156490, 29.883360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045765, 33.174034, 29.998201>,  <28.275419, 33.184559, 30.067106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045765, 33.174034, 29.998201>,  <27.663008, 33.156490, 29.883360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045765, 33.174034, 29.998201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174876, 0.702248, -0.690120,
		-0.231885, 0.710580, 0.664308,
		0.956895, 0.043857, 0.287104,
		28.332834, 33.187191, 30.084333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806208, 33.794781, 29.801834>,  <27.663008, 33.156490, 29.883360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.806208, 33.794781, 29.801834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166466, 33.620972, 29.799788>,  <28.382620, 33.516685, 29.798559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166466, 33.620972, 29.799788>,  <27.806208, 33.794781, 29.801834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166466, 33.620972, 29.799788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256095, 0.540246, -0.801592,
		0.351077, 0.720639, 0.597850,
		0.900645, -0.434526, -0.005116,
		28.436659, 33.490612, 29.798252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.263273, 34.375069, 29.840847>,  <27.806208, 33.794781, 29.801834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.263273, 34.375069, 29.840847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431747, 34.054836, 29.670353>,  <28.532831, 33.862698, 29.568056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431747, 34.054836, 29.670353>,  <28.263273, 34.375069, 29.840847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431747, 34.054836, 29.670353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286302, 0.563282, -0.775077,
		0.860602, 0.204418, 0.466453,
		0.421184, -0.800579, -0.426236,
		28.558102, 33.814663, 29.542482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803831, 34.589748, 29.556604>,  <28.263273, 34.375069, 29.840847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803831, 34.589748, 29.556604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752552, 34.241386, 29.366827>,  <28.721785, 34.032372, 29.252960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752552, 34.241386, 29.366827>,  <28.803831, 34.589748, 29.556604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752552, 34.241386, 29.366827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040289, 0.473423, -0.879913,
		0.990930, -0.131916, -0.025603,
		-0.128195, -0.870901, -0.474444,
		28.714094, 33.980118, 29.224493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203831, 34.581360, 28.941759>,  <28.803831, 34.589748, 29.556604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203831, 34.581360, 28.941759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958040, 34.275570, 28.863787>,  <28.810566, 34.092094, 28.817003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958040, 34.275570, 28.863787>,  <29.203831, 34.581360, 28.941759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958040, 34.275570, 28.863787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015367, 0.258635, -0.965853,
		0.788787, -0.590497, -0.170672,
		-0.614475, -0.764475, -0.194933,
		28.773697, 34.046227, 28.805307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363970, 34.338287, 28.238195>,  <29.203831, 34.581360, 28.941759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363970, 34.338287, 28.238195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013201, 34.152523, 28.287720>,  <28.802738, 34.041065, 28.317434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013201, 34.152523, 28.287720>,  <29.363970, 34.338287, 28.238195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013201, 34.152523, 28.287720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141630, 0.003524, -0.989913,
		0.459288, -0.885614, -0.068864,
		-0.876924, -0.464409, 0.123810,
		28.750124, 34.013199, 28.324863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320946, 33.681694, 27.762480>,  <29.363970, 34.338287, 28.238195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320946, 33.681694, 27.762480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.973747, 33.858387, 27.853214>,  <28.765429, 33.964401, 27.907656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.973747, 33.858387, 27.853214>,  <29.320946, 33.681694, 27.762480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.973747, 33.858387, 27.853214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130782, 0.237317, -0.962588,
		-0.479038, -0.865190, -0.148220,
		-0.867997, 0.441732, 0.226835,
		28.713348, 33.990906, 27.921265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994143, 33.563709, 27.135242>,  <29.320946, 33.681694, 27.762480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994143, 33.563709, 27.135242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757048, 33.826897, 27.321033>,  <28.614792, 33.984810, 27.432508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757048, 33.826897, 27.321033>,  <28.994143, 33.563709, 27.135242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757048, 33.826897, 27.321033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278039, 0.374086, -0.884734,
		-0.755883, -0.653556, -0.038794,
		-0.592736, 0.657969, 0.464479,
		28.579227, 34.024288, 27.460377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369766, 33.611557, 26.699602>,  <28.994143, 33.563709, 27.135242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369766, 33.611557, 26.699602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379812, 33.953697, 26.906578>,  <28.385839, 34.158981, 27.030764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379812, 33.953697, 26.906578>,  <28.369766, 33.611557, 26.699602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379812, 33.953697, 26.906578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232810, 0.508377, -0.829067,
		-0.972198, -0.099644, 0.211902,
		0.025115, 0.855350, 0.517441,
		28.387346, 34.210300, 27.061810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814720, 34.083447, 26.404337>,  <28.369766, 33.611557, 26.699602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814720, 34.083447, 26.404337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062170, 34.335953, 26.591444>,  <28.210640, 34.487457, 26.703709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062170, 34.335953, 26.591444>,  <27.814720, 34.083447, 26.404337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062170, 34.335953, 26.591444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189631, 0.697721, -0.690815,
		-0.762459, 0.338652, 0.551335,
		0.618624, 0.631268, 0.467765,
		28.247757, 34.525333, 26.731773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473225, 34.651279, 26.454180>,  <27.814720, 34.083447, 26.404337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473225, 34.651279, 26.454180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853012, 34.770523, 26.493448>,  <28.080885, 34.842072, 26.517010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853012, 34.770523, 26.493448>,  <27.473225, 34.651279, 26.454180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853012, 34.770523, 26.493448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164898, 0.739946, -0.652141,
		-0.267052, 0.603000, 0.751715,
		0.949469, 0.298112, 0.098170,
		28.137854, 34.859955, 26.522900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491615, 35.368835, 26.653311>,  <27.473225, 34.651279, 26.454180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491615, 35.368835, 26.653311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860193, 35.335300, 26.501568>,  <28.081341, 35.315182, 26.410522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860193, 35.335300, 26.501568>,  <27.491615, 35.368835, 26.653311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860193, 35.335300, 26.501568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246674, 0.628128, -0.737975,
		0.300153, 0.773581, 0.558105,
		0.921444, -0.083836, -0.379357,
		28.136627, 35.310150, 26.387760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841412, 36.037422, 26.575588>,  <27.491615, 35.368835, 26.653311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841412, 36.037422, 26.575588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041039, 35.834385, 26.294653>,  <28.160814, 35.712563, 26.126091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041039, 35.834385, 26.294653>,  <27.841412, 36.037422, 26.575588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041039, 35.834385, 26.294653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147643, 0.748832, -0.646105,
		0.853894, 0.426145, 0.298774,
		0.499066, -0.507594, -0.702340,
		28.190758, 35.682106, 26.083950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996849, 36.580341, 26.106094>,  <27.841412, 36.037422, 26.575588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996849, 36.580341, 26.106094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104887, 36.254108, 25.901400>,  <28.169710, 36.058369, 25.778582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104887, 36.254108, 25.901400>,  <27.996849, 36.580341, 26.106094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104887, 36.254108, 25.901400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220946, 0.464809, -0.857400,
		0.937140, 0.344647, -0.054656,
		0.270096, -0.815580, -0.511739,
		28.185915, 36.009434, 25.747877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267881, 36.774979, 25.483753>,  <27.996849, 36.580341, 26.106094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267881, 36.774979, 25.483753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149904, 36.399521, 25.412252>,  <28.079119, 36.174244, 25.369352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149904, 36.399521, 25.412252>,  <28.267881, 36.774979, 25.483753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149904, 36.399521, 25.412252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265064, 0.260106, -0.928486,
		0.918014, -0.226469, -0.325518,
		-0.294943, -0.938646, -0.178752,
		28.061422, 36.117928, 25.358627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533430, 36.614384, 24.869629>,  <28.267881, 36.774979, 25.483753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533430, 36.614384, 24.869629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253777, 36.331203, 24.909662>,  <28.085985, 36.161297, 24.933681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253777, 36.331203, 24.909662>,  <28.533430, 36.614384, 24.869629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253777, 36.331203, 24.909662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307231, 0.171065, -0.936134,
		0.645616, -0.685232, -0.337101,
		-0.699134, -0.707951, 0.100082,
		28.044037, 36.118816, 24.939688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622091, 36.153957, 24.285498>,  <28.533430, 36.614384, 24.869629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622091, 36.153957, 24.285498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243523, 36.156567, 24.414646>,  <28.016382, 36.158134, 24.492136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243523, 36.156567, 24.414646>,  <28.622091, 36.153957, 24.285498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.243523, 36.156567, 24.414646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274275, 0.511537, -0.814312,
		-0.170477, -0.859237, -0.482338,
		-0.946420, 0.006528, 0.322872,
		27.959597, 36.158524, 24.511507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193071, 35.832405, 23.724905>,  <28.622091, 36.153957, 24.285498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193071, 35.832405, 23.724905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910000, 36.011925, 23.943176>,  <27.740156, 36.119637, 24.074139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910000, 36.011925, 23.943176>,  <28.193071, 35.832405, 23.724905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910000, 36.011925, 23.943176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362814, 0.431885, -0.825737,
		-0.606263, -0.782337, -0.142805,
		-0.707680, 0.448802, 0.545679,
		27.697697, 36.146564, 24.106880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611444, 35.753670, 23.347834>,  <28.193071, 35.832405, 23.724905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611444, 35.753670, 23.347834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524065, 36.065395, 23.582762>,  <27.471638, 36.252430, 23.723719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524065, 36.065395, 23.582762>,  <27.611444, 35.753670, 23.347834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524065, 36.065395, 23.582762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322368, 0.510437, -0.797203,
		-0.921065, -0.363479, 0.139724,
		-0.218446, 0.779318, 0.587319,
		27.458530, 36.299191, 23.758957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907297, 35.969902, 23.196451>,  <27.611444, 35.753670, 23.347834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907297, 35.969902, 23.196451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.089346, 36.276543, 23.377642>,  <27.198574, 36.460526, 23.486355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.089346, 36.276543, 23.377642>,  <26.907297, 35.969902, 23.196451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089346, 36.276543, 23.377642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259074, 0.600710, -0.756326,
		-0.851908, 0.226865, 0.472002,
		0.455120, 0.766603, 0.452975,
		27.225882, 36.506523, 23.513535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402924, 36.590630, 23.139074>,  <26.907297, 35.969902, 23.196451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402924, 36.590630, 23.139074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747599, 36.769733, 23.234581>,  <26.954403, 36.877193, 23.291885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747599, 36.769733, 23.234581>,  <26.402924, 36.590630, 23.139074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.747599, 36.769733, 23.234581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154621, 0.679837, -0.716879,
		-0.483311, 0.580806, 0.655038,
		0.861686, 0.447758, 0.238768,
		27.006104, 36.904060, 23.306211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253210, 37.308170, 23.362116>,  <26.402924, 36.590630, 23.139074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253210, 37.308170, 23.362116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634655, 37.337807, 23.245401>,  <26.863522, 37.355587, 23.175373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634655, 37.337807, 23.245401>,  <26.253210, 37.308170, 23.362116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634655, 37.337807, 23.245401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238782, 0.776408, -0.583245,
		0.183332, 0.625861, 0.758081,
		0.953610, 0.074089, -0.291785,
		26.920738, 37.360035, 23.157866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446699, 37.946899, 23.356718>,  <26.253210, 37.308170, 23.362116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446699, 37.946899, 23.356718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733618, 37.808895, 23.114576>,  <26.905769, 37.726093, 22.969292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733618, 37.808895, 23.114576>,  <26.446699, 37.946899, 23.356718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733618, 37.808895, 23.114576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114589, 0.798558, -0.590910,
		0.687282, 0.493223, 0.533267,
		0.717295, -0.345015, -0.605353,
		26.948807, 37.705391, 22.932970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689100, 38.547028, 23.072248>,  <26.446699, 37.946899, 23.356718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689100, 38.547028, 23.072248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859692, 38.276733, 22.831751>,  <26.962046, 38.114555, 22.687452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859692, 38.276733, 22.831751>,  <26.689100, 38.547028, 23.072248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859692, 38.276733, 22.831751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055733, 0.643830, -0.763136,
		0.902779, 0.358970, 0.236918,
		0.426478, -0.675739, -0.601243,
		26.987635, 38.074013, 22.651379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217617, 38.879936, 22.773903>,  <26.689100, 38.547028, 23.072248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.217617, 38.879936, 22.773903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.106703, 38.588879, 22.522936>,  <27.040154, 38.414246, 22.372356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.106703, 38.588879, 22.522936>,  <27.217617, 38.879936, 22.773903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.106703, 38.588879, 22.522936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105559, 0.672143, -0.732858,
		0.954971, -0.136982, -0.263185,
		-0.277286, -0.727640, -0.627417,
		27.023518, 38.370586, 22.334711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584068, 39.062538, 22.259121>,  <27.217617, 38.879936, 22.773903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584068, 39.062538, 22.259121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310038, 38.813240, 22.108267>,  <27.145618, 38.663662, 22.017756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310038, 38.813240, 22.108267>,  <27.584068, 39.062538, 22.259121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310038, 38.813240, 22.108267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029091, 0.540700, -0.840712,
		0.727889, -0.564982, -0.388552,
		-0.685077, -0.623249, -0.377134,
		27.104515, 38.626266, 21.995127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.846359, 38.906288, 21.633909>,  <27.584068, 39.062538, 22.259121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.846359, 38.906288, 21.633909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449888, 38.856899, 21.614620>,  <27.212006, 38.827267, 21.603046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449888, 38.856899, 21.614620>,  <27.846359, 38.906288, 21.633909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449888, 38.856899, 21.614620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013627, 0.456776, -0.889477,
		0.131853, -0.880971, -0.454428,
		-0.991176, -0.123473, -0.048222,
		27.152536, 38.819859, 21.600153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705868, 38.718098, 20.954489>,  <27.846359, 38.906288, 21.633909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705868, 38.718098, 20.954489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344563, 38.850845, 21.063286>,  <27.127779, 38.930492, 21.128563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344563, 38.850845, 21.063286>,  <27.705868, 38.718098, 20.954489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344563, 38.850845, 21.063286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078558, 0.495267, -0.865182,
		-0.421836, -0.802853, -0.421285,
		-0.903263, 0.331869, 0.271991,
		27.073584, 38.950405, 21.144884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181719, 38.740341, 20.379221>,  <27.705868, 38.718098, 20.954489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181719, 38.740341, 20.379221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040285, 38.996986, 20.651487>,  <26.955425, 39.150974, 20.814848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040285, 38.996986, 20.651487>,  <27.181719, 38.740341, 20.379221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040285, 38.996986, 20.651487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026806, 0.720423, -0.693017,
		-0.935019, -0.263285, -0.237530,
		-0.353583, 0.641617, 0.680667,
		26.934210, 39.189472, 20.855688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524982, 39.050816, 20.060522>,  <27.181719, 38.740341, 20.379221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.524982, 39.050816, 20.060522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650726, 39.302357, 20.344978>,  <26.726173, 39.453281, 20.515652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650726, 39.302357, 20.344978>,  <26.524982, 39.050816, 20.060522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650726, 39.302357, 20.344978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099160, 0.766773, -0.634214,
		-0.944110, 0.128855, 0.303401,
		0.314361, 0.628853, 0.711140,
		26.745035, 39.491013, 20.558321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.027954, 39.624241, 19.921354>,  <26.524982, 39.050816, 20.060522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.027954, 39.624241, 19.921354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338879, 39.748676, 20.140081>,  <26.525434, 39.823338, 20.271318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338879, 39.748676, 20.140081>,  <26.027954, 39.624241, 19.921354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338879, 39.748676, 20.140081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059233, 0.829138, -0.555897,
		-0.626320, 0.464496, 0.626073,
		0.777312, 0.311085, 0.546820,
		26.572073, 39.842003, 20.304127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836977, 40.370022, 20.220337>,  <26.027954, 39.624241, 19.921354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.836977, 40.370022, 20.220337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.230844, 40.300255, 20.221146>,  <26.467165, 40.258392, 20.221630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.230844, 40.300255, 20.221146>,  <25.836977, 40.370022, 20.220337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.230844, 40.300255, 20.221146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157410, 0.883528, -0.441136,
		0.075159, 0.434691, 0.897438,
		0.984669, -0.174421, 0.002020,
		26.526245, 40.247929, 20.221752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974470, 41.001087, 20.218996>,  <25.836977, 40.370022, 20.220337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.974470, 41.001087, 20.218996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326517, 40.824974, 20.147953>,  <26.537745, 40.719307, 20.105328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326517, 40.824974, 20.147953>,  <25.974470, 41.001087, 20.218996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.326517, 40.824974, 20.147953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354055, 0.857928, -0.372297,
		0.316289, 0.264782, 0.910962,
		0.880117, -0.440283, -0.177605,
		26.590553, 40.692890, 20.094671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467348, 41.507389, 20.532843>,  <25.974470, 41.001087, 20.218996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467348, 41.507389, 20.532843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.646168, 41.277367, 20.258774>,  <26.753460, 41.139355, 20.094332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.646168, 41.277367, 20.258774>,  <26.467348, 41.507389, 20.532843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.646168, 41.277367, 20.258774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275723, 0.817266, -0.506017,
		0.850955, 0.037296, 0.523913,
		0.447049, -0.575053, -0.685173,
		26.780283, 41.104851, 20.053223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020855, 41.773846, 20.404732>,  <26.467348, 41.507389, 20.532843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.020855, 41.773846, 20.404732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993378, 41.563320, 20.065727>,  <26.976892, 41.437004, 19.862324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993378, 41.563320, 20.065727>,  <27.020855, 41.773846, 20.404732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993378, 41.563320, 20.065727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201065, 0.824783, -0.528494,
		0.977167, -0.206708, 0.049168,
		-0.068691, -0.526313, -0.847512,
		26.972771, 41.405426, 19.811474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488400, 42.038624, 20.011915>,  <27.020855, 41.773846, 20.404732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488400, 42.038624, 20.011915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.246399, 41.861965, 19.746910>,  <27.101198, 41.755970, 19.587908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.246399, 41.861965, 19.746910>,  <27.488400, 42.038624, 20.011915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.246399, 41.861965, 19.746910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027456, 0.843144, -0.536986,
		0.795749, -0.306689, -0.522232,
		-0.605004, -0.441644, -0.662511,
		27.064898, 41.729473, 19.548157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755371, 42.334141, 19.408751>,  <27.488400, 42.038624, 20.011915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755371, 42.334141, 19.408751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399839, 42.181618, 19.307093>,  <27.186520, 42.090103, 19.246098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399839, 42.181618, 19.307093>,  <27.755371, 42.334141, 19.408751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399839, 42.181618, 19.307093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080596, 0.676052, -0.732433,
		0.451095, -0.630525, -0.631626,
		-0.888829, -0.381304, -0.254146,
		27.133190, 42.067226, 19.230848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724039, 42.312988, 18.696238>,  <27.755371, 42.334141, 19.408751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724039, 42.312988, 18.696238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336645, 42.307034, 18.795691>,  <27.104210, 42.303459, 18.855362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336645, 42.307034, 18.795691>,  <27.724039, 42.312988, 18.696238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336645, 42.307034, 18.795691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198562, 0.648800, -0.734597,
		-0.150379, -0.760814, -0.631307,
		-0.968483, -0.014886, 0.248635,
		27.046101, 42.302567, 18.870281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410240, 42.279350, 18.067120>,  <27.724039, 42.312988, 18.696238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.410240, 42.279350, 18.067120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110373, 42.387714, 18.308649>,  <26.930452, 42.452732, 18.453568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110373, 42.387714, 18.308649>,  <27.410240, 42.279350, 18.067120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.110373, 42.387714, 18.308649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189423, 0.786376, -0.587990,
		-0.634126, -0.555176, -0.538205,
		-0.749669, 0.270912, 0.603824,
		26.885471, 42.468987, 18.489796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754000, 42.343433, 17.689734>,  <27.410240, 42.279350, 18.067120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754000, 42.343433, 17.689734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790779, 42.598202, 17.995905>,  <26.812847, 42.751060, 18.179607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790779, 42.598202, 17.995905>,  <26.754000, 42.343433, 17.689734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790779, 42.598202, 17.995905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134426, 0.769589, -0.624230,
		-0.986648, -0.045497, 0.156381,
		0.091948, 0.636917, 0.765429,
		26.818363, 42.789276, 18.225534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.088160, 42.699978, 17.869940>,  <26.754000, 42.343433, 17.689734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.088160, 42.699978, 17.869940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408331, 42.929363, 17.939739>,  <26.600433, 43.066994, 17.981619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408331, 42.929363, 17.939739>,  <26.088160, 42.699978, 17.869940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.408331, 42.929363, 17.939739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406530, 0.733268, -0.545024,
		-0.440506, 0.365315, 0.820060,
		0.800430, 0.573466, 0.174498,
		26.648460, 43.101402, 17.992088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.818432, 43.228310, 18.118950>,  <26.088160, 42.699978, 17.869940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.818432, 43.228310, 18.118950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161892, 43.331387, 17.941721>,  <26.367968, 43.393230, 17.835384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161892, 43.331387, 17.941721>,  <25.818432, 43.228310, 18.118950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161892, 43.331387, 17.941721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464457, 0.756787, -0.459949,
		0.216787, 0.600724, 0.769502,
		0.858652, 0.257690, -0.443072,
		26.419487, 43.408695, 17.808800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.734076, 43.605854, 18.750162>,  <25.818432, 43.228310, 18.118950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.734076, 43.605854, 18.750162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098398, 43.512344, 18.614056>,  <26.316992, 43.456238, 18.532391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098398, 43.512344, 18.614056>,  <25.734076, 43.605854, 18.750162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098398, 43.512344, 18.614056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007233, 0.833134, -0.553024,
		0.412771, 0.501236, 0.760515,
		0.910806, -0.233773, -0.340268,
		26.371639, 43.442211, 18.511974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111822, 44.185535, 18.798119>,  <25.734076, 43.605854, 18.750162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111822, 44.185535, 18.798119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251539, 43.950756, 18.505957>,  <26.335369, 43.809891, 18.330660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251539, 43.950756, 18.505957>,  <26.111822, 44.185535, 18.798119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.251539, 43.950756, 18.505957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075516, 0.759334, -0.646304,
		0.933966, 0.280907, 0.220906,
		0.349293, -0.586944, -0.730405,
		26.356327, 43.774673, 18.286835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115330, 44.681183, 19.425930>,  <26.111822, 44.185535, 18.798119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.115330, 44.681183, 19.425930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053305, 44.663010, 19.820673>,  <26.016088, 44.652103, 20.057520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053305, 44.663010, 19.820673>,  <26.115330, 44.681183, 19.425930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.053305, 44.663010, 19.820673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180883, 0.980748, 0.073577,
		-0.971203, 0.189916, -0.143860,
		-0.155064, -0.045437, 0.986859,
		26.006786, 44.649380, 20.116730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.667442, 45.310440, 19.498034>,  <26.115330, 44.681183, 19.425930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.667442, 45.310440, 19.498034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831959, 45.193207, 19.843273>,  <25.930670, 45.122868, 20.050417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831959, 45.193207, 19.843273>,  <25.667442, 45.310440, 19.498034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831959, 45.193207, 19.843273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050165, 0.952741, 0.299613,
		-0.910122, -0.079931, 0.406558,
		0.411293, -0.293079, 0.863101,
		25.955347, 45.105282, 20.102203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.271763, 45.505123, 20.114737>,  <25.667442, 45.310440, 19.498034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.271763, 45.505123, 20.114737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663645, 45.493916, 20.194124>,  <25.898775, 45.487190, 20.241756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663645, 45.493916, 20.194124>,  <25.271763, 45.505123, 20.114737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.663645, 45.493916, 20.194124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070768, 0.878050, 0.473307,
		-0.187528, -0.477747, 0.858249,
		0.979707, -0.028022, 0.198468,
		25.957558, 45.485508, 20.253664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.421135, 45.596756, 20.883417>,  <25.271763, 45.505123, 20.114737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.421135, 45.596756, 20.883417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.715816, 45.735062, 20.650963>,  <25.892626, 45.818043, 20.511490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.715816, 45.735062, 20.650963>,  <25.421135, 45.596756, 20.883417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.715816, 45.735062, 20.650963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088933, 0.802389, 0.590139,
		0.670344, -0.486439, 0.560372,
		0.736702, 0.345760, -0.581136,
		25.936827, 45.838791, 20.476622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.241693, 44.958435, 20.632931>,  <25.421135, 45.596756, 20.883417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.241693, 44.958435, 20.632931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083483, 44.731487, 20.344028>,  <24.988556, 44.595318, 20.170687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083483, 44.731487, 20.344028>,  <25.241693, 44.958435, 20.632931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.083483, 44.731487, 20.344028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004398, -0.785202, 0.619224,
		-0.918443, 0.248098, 0.308075,
		-0.395529, -0.567367, -0.722254,
		24.964825, 44.561275, 20.127352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.615715, 44.605885, 20.894014>,  <25.241693, 44.958435, 20.632931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.615715, 44.605885, 20.894014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.816967, 44.405052, 20.612652>,  <24.937717, 44.284554, 20.443834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.816967, 44.405052, 20.612652>,  <24.615715, 44.605885, 20.894014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.816967, 44.405052, 20.612652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035173, -0.825148, 0.563821,
		-0.863497, -0.258933, -0.432814,
		0.503127, -0.502080, -0.703405,
		24.967905, 44.254429, 20.401630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.356441, 43.894733, 20.841009>,  <24.615715, 44.605885, 20.894014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.356441, 43.894733, 20.841009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.724178, 43.840225, 20.693367>,  <24.944820, 43.807522, 20.604782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.724178, 43.840225, 20.693367>,  <24.356441, 43.894733, 20.841009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.724178, 43.840225, 20.693367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154337, -0.738030, 0.656881,
		-0.361922, -0.660866, -0.657472,
		0.919343, -0.136267, -0.369105,
		24.999981, 43.799343, 20.582636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.424662, 43.222733, 20.703632>,  <24.356441, 43.894733, 20.841009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.424662, 43.222733, 20.703632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.801966, 43.350143, 20.741156>,  <25.028347, 43.426590, 20.763670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.801966, 43.350143, 20.741156>,  <24.424662, 43.222733, 20.703632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.801966, 43.350143, 20.741156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212903, -0.796945, 0.565289,
		0.254822, -0.513242, -0.819542,
		0.943259, 0.318531, 0.093809,
		25.084944, 43.445702, 20.769299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.868149, 42.638153, 20.630054>,  <24.424662, 43.222733, 20.703632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.868149, 42.638153, 20.630054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146908, 42.877445, 20.788271>,  <25.314163, 43.021019, 20.883202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146908, 42.877445, 20.788271>,  <24.868149, 42.638153, 20.630054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.146908, 42.877445, 20.788271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370418, -0.772521, 0.515753,
		0.614104, -0.212911, -0.759964,
		0.696898, 0.598230, 0.395543,
		25.355978, 43.056915, 20.906933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.515694, 42.359352, 20.506145>,  <24.868149, 42.638153, 20.630054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.515694, 42.359352, 20.506145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.607786, 42.610874, 20.803225>,  <25.663042, 42.761787, 20.981472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.607786, 42.610874, 20.803225>,  <25.515694, 42.359352, 20.506145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.607786, 42.610874, 20.803225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543014, -0.716345, 0.438161,
		0.807546, 0.302418, -0.506373,
		0.230230, 0.628803, 0.742698,
		25.676855, 42.799515, 21.026033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258226, 42.220768, 20.681986>,  <25.515694, 42.359352, 20.506145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.258226, 42.220768, 20.681986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090170, 42.408089, 20.992901>,  <25.989336, 42.520481, 21.179449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090170, 42.408089, 20.992901>,  <26.258226, 42.220768, 20.681986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.090170, 42.408089, 20.992901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470582, -0.619945, 0.627870,
		0.775910, 0.629569, 0.040086,
		-0.420139, 0.468306, 0.777285,
		25.964128, 42.548580, 21.226086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801069, 42.353374, 21.252924>,  <26.258226, 42.220768, 20.681986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801069, 42.353374, 21.252924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462626, 42.406986, 21.459276>,  <26.259560, 42.439156, 21.583088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462626, 42.406986, 21.459276>,  <26.801069, 42.353374, 21.252924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462626, 42.406986, 21.459276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398886, -0.482747, 0.779644,
		0.353537, 0.865443, 0.354993,
		-0.846109, 0.134031, 0.515882,
		26.208794, 42.447197, 21.614040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977253, 42.676846, 21.985041>,  <26.801069, 42.353374, 21.252924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977253, 42.676846, 21.985041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633118, 42.472977, 21.988003>,  <26.426638, 42.350655, 21.989780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633118, 42.472977, 21.988003>,  <26.977253, 42.676846, 21.985041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.633118, 42.472977, 21.988003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280621, -0.461461, 0.841609,
		-0.425528, 0.726145, 0.540036,
		-0.860336, -0.509673, 0.007407,
		26.375017, 42.320076, 21.990225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723211, 42.666267, 22.672468>,  <26.977253, 42.676846, 21.985041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.723211, 42.666267, 22.672468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514896, 42.373165, 22.497269>,  <26.389908, 42.197304, 22.392149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514896, 42.373165, 22.497269>,  <26.723211, 42.666267, 22.672468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.514896, 42.373165, 22.497269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156157, -0.586182, 0.794988,
		-0.839282, 0.345623, 0.419702,
		-0.520788, -0.732759, -0.438001,
		26.358660, 42.153339, 22.365868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321224, 42.421463, 23.169029>,  <26.723211, 42.666267, 22.672468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321224, 42.421463, 23.169029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.278343, 42.117897, 22.912109>,  <26.252615, 41.935757, 22.757957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.278343, 42.117897, 22.912109>,  <26.321224, 42.421463, 23.169029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.278343, 42.117897, 22.912109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031848, -0.648313, 0.760708,
		-0.993727, 0.061093, 0.093670,
		-0.107202, -0.758919, -0.642300,
		26.246183, 41.890221, 22.719419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.821705, 41.929726, 23.464714>,  <26.321224, 42.421463, 23.169029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.821705, 41.929726, 23.464714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.057564, 41.729168, 23.211441>,  <26.199080, 41.608833, 23.059477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.057564, 41.729168, 23.211441>,  <25.821705, 41.929726, 23.464714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.057564, 41.729168, 23.211441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230007, -0.647260, 0.726740,
		-0.774218, -0.574155, -0.266329,
		0.589646, -0.501397, -0.633181,
		26.234457, 41.578751, 23.021486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.645966, 41.207474, 23.490273>,  <25.821705, 41.929726, 23.464714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.645966, 41.207474, 23.490273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017227, 41.198818, 23.341644>,  <26.239985, 41.193626, 23.252466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017227, 41.198818, 23.341644>,  <25.645966, 41.207474, 23.490273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.017227, 41.198818, 23.341644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285370, -0.599548, 0.747734,
		-0.238952, -0.800046, -0.550298,
		0.928151, -0.021634, -0.371573,
		26.295673, 41.192329, 23.230173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.755638, 40.478348, 23.331806>,  <25.645966, 41.207474, 23.490273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.755638, 40.478348, 23.331806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122311, 40.636982, 23.351467>,  <26.342314, 40.732162, 23.363264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122311, 40.636982, 23.351467>,  <25.755638, 40.478348, 23.331806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122311, 40.636982, 23.351467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256670, -0.678578, 0.688224,
		0.306294, -0.618266, -0.723831,
		0.916681, 0.396584, 0.049154,
		26.397316, 40.755959, 23.366213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.251898, 39.973957, 23.189430>,  <25.755638, 40.478348, 23.331806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.251898, 39.973957, 23.189430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444054, 40.255032, 23.399368>,  <26.559347, 40.423676, 23.525331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444054, 40.255032, 23.399368>,  <26.251898, 39.973957, 23.189430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444054, 40.255032, 23.399368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139007, -0.651853, 0.745496,
		0.865969, -0.285173, -0.410822,
		0.480391, 0.702683, 0.524843,
		26.588171, 40.465836, 23.556822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869137, 39.624989, 23.376781>,  <26.251898, 39.973957, 23.189430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869137, 39.624989, 23.376781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858715, 39.920898, 23.645723>,  <26.852463, 40.098442, 23.807089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858715, 39.920898, 23.645723>,  <26.869137, 39.624989, 23.376781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858715, 39.920898, 23.645723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244532, -0.647433, 0.721827,
		0.969291, 0.183217, -0.164031,
		-0.026052, 0.739772, 0.672353,
		26.850899, 40.142830, 23.847429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501665, 39.571480, 23.871048>,  <26.869137, 39.624989, 23.376781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501665, 39.571480, 23.871048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.241568, 39.799274, 24.072193>,  <27.085508, 39.935951, 24.192881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.241568, 39.799274, 24.072193>,  <27.501665, 39.571480, 23.871048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241568, 39.799274, 24.072193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050350, -0.628141, 0.776469,
		0.758055, 0.530213, 0.379771,
		-0.650244, 0.569485, 0.502862,
		27.046494, 39.970119, 24.223051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841162, 39.668201, 24.537661>,  <27.501665, 39.571480, 23.871048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841162, 39.668201, 24.537661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455400, 39.760788, 24.588802>,  <27.223944, 39.816341, 24.619488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455400, 39.760788, 24.588802>,  <27.841162, 39.668201, 24.537661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455400, 39.760788, 24.588802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054240, -0.646385, 0.761081,
		0.258807, 0.727056, 0.635931,
		-0.964405, 0.231466, 0.127854,
		27.166079, 39.830227, 24.627159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738852, 39.745441, 25.275412>,  <27.841162, 39.668201, 24.537661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738852, 39.745441, 25.275412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365047, 39.693016, 25.143042>,  <27.140764, 39.661560, 25.063620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365047, 39.693016, 25.143042>,  <27.738852, 39.745441, 25.275412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365047, 39.693016, 25.143042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199499, -0.577103, 0.791929,
		-0.294767, 0.806086, 0.513164,
		-0.934512, -0.131059, -0.330924,
		27.084694, 39.653698, 25.043764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364809, 39.838165, 25.885155>,  <27.738852, 39.745441, 25.275412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364809, 39.838165, 25.885155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112566, 39.656307, 25.633556>,  <26.961220, 39.547192, 25.482597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112566, 39.656307, 25.633556>,  <27.364809, 39.838165, 25.885155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112566, 39.656307, 25.633556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311899, -0.593669, 0.741806,
		-0.710673, 0.663970, 0.232568,
		-0.630606, -0.454643, -0.628996,
		26.923384, 39.519913, 25.444857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.556433, 39.961010, 26.063213>,  <27.364809, 39.838165, 25.885155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.556433, 39.961010, 26.063213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590776, 39.614899, 25.865662>,  <26.611383, 39.407230, 25.747131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590776, 39.614899, 25.865662>,  <26.556433, 39.961010, 26.063213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590776, 39.614899, 25.865662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404221, -0.483330, 0.776529,
		-0.910622, 0.132962, -0.391265,
		0.085861, -0.865282, -0.493877,
		26.616535, 39.355312, 25.717499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.005669, 39.668613, 26.110195>,  <26.556433, 39.961010, 26.063213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.005669, 39.668613, 26.110195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224884, 39.345215, 26.024420>,  <26.356413, 39.151176, 25.972954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224884, 39.345215, 26.024420>,  <26.005669, 39.668613, 26.110195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224884, 39.345215, 26.024420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537968, -0.537005, 0.649781,
		-0.640501, -0.240746, -0.729246,
		0.548041, -0.808497, -0.214438,
		26.389296, 39.102665, 25.960089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.536879, 39.092442, 26.026867>,  <26.005669, 39.668613, 26.110195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.536879, 39.092442, 26.026867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.883553, 38.897408, 26.069050>,  <26.091557, 38.780388, 26.094360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.883553, 38.897408, 26.069050>,  <25.536879, 39.092442, 26.026867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.883553, 38.897408, 26.069050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459626, -0.698298, 0.548748,
		-0.193921, -0.524061, -0.829310,
		0.866683, -0.487586, 0.105457,
		26.143557, 38.751133, 26.100687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.325029, 38.372978, 26.141611>,  <25.536879, 39.092442, 26.026867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.325029, 38.372978, 26.141611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711723, 38.356369, 26.242563>,  <25.943741, 38.346405, 26.303135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711723, 38.356369, 26.242563>,  <25.325029, 38.372978, 26.141611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711723, 38.356369, 26.242563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234800, -0.535394, 0.811309,
		0.101438, -0.843581, -0.527334,
		0.966737, -0.041520, 0.252382,
		26.001745, 38.343914, 26.318277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.427830, 37.679371, 26.283253>,  <25.325029, 38.372978, 26.141611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.427830, 37.679371, 26.283253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740948, 37.851044, 26.463490>,  <25.928820, 37.954048, 26.571630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740948, 37.851044, 26.463490>,  <25.427830, 37.679371, 26.283253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.740948, 37.851044, 26.463490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163513, -0.556789, 0.814401,
		0.600410, -0.711188, -0.365676,
		0.782797, 0.429182, 0.450590,
		25.975786, 37.979797, 26.598667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951399, 37.134247, 26.349371>,  <25.427830, 37.679371, 26.283253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951399, 37.134247, 26.349371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.978436, 37.416306, 26.631704>,  <25.994658, 37.585541, 26.801104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.978436, 37.416306, 26.631704>,  <25.951399, 37.134247, 26.349371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.978436, 37.416306, 26.631704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084723, -0.700839, 0.708270,
		0.994109, -0.107674, 0.012371,
		0.067592, 0.705146, 0.705833,
		25.998713, 37.627850, 26.843454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369127, 36.780548, 26.831516>,  <25.951399, 37.134247, 26.349371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369127, 36.780548, 26.831516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243187, 37.093967, 27.045774>,  <26.167624, 37.282021, 27.174330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243187, 37.093967, 27.045774>,  <26.369127, 36.780548, 26.831516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243187, 37.093967, 27.045774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138289, -0.520457, 0.842616,
		0.939013, 0.339373, 0.055510,
		-0.314851, 0.783550, 0.535647,
		26.148731, 37.329033, 27.206469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.899120, 36.842525, 27.267696>,  <26.369127, 36.780548, 26.831516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.899120, 36.842525, 27.267696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572727, 37.029671, 27.403505>,  <26.376892, 37.141960, 27.484991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572727, 37.029671, 27.403505>,  <26.899120, 36.842525, 27.267696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572727, 37.029671, 27.403505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025574, -0.557536, 0.829759,
		0.577513, 0.685750, 0.442973,
		-0.815981, 0.467868, 0.339522,
		26.327932, 37.170033, 27.505362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013126, 36.934597, 27.969707>,  <26.899120, 36.842525, 27.267696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013126, 36.934597, 27.969707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.615658, 36.950947, 27.927853>,  <26.377176, 36.960758, 27.902740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.615658, 36.950947, 27.927853>,  <27.013126, 36.934597, 27.969707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.615658, 36.950947, 27.927853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112262, -0.327009, 0.938330,
		0.004139, 0.944137, 0.329528,
		-0.993670, 0.040877, -0.104637,
		26.317556, 36.963211, 27.896461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738436, 37.261406, 28.570375>,  <27.013126, 36.934597, 27.969707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738436, 37.261406, 28.570375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403587, 37.072140, 28.460587>,  <26.202679, 36.958580, 28.394712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403587, 37.072140, 28.460587>,  <26.738436, 37.261406, 28.570375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.403587, 37.072140, 28.460587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080408, -0.389876, 0.917350,
		-0.541072, 0.790005, 0.288328,
		-0.837123, -0.473169, -0.274474,
		26.152451, 36.930187, 28.378244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168629, 37.338856, 29.153677>,  <26.738436, 37.261406, 28.570375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168629, 37.338856, 29.153677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056883, 37.019932, 28.939669>,  <25.989836, 36.828575, 28.811264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056883, 37.019932, 28.939669>,  <26.168629, 37.338856, 29.153677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.056883, 37.019932, 28.939669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054000, -0.543278, 0.837815,
		-0.958665, 0.262947, 0.108718,
		-0.279365, -0.797313, -0.535021,
		25.973074, 36.780739, 28.779163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.548094, 37.045322, 29.512705>,  <26.168629, 37.338856, 29.153677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.548094, 37.045322, 29.512705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.699764, 36.752911, 29.285789>,  <25.790766, 36.577461, 29.149639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.699764, 36.752911, 29.285789>,  <25.548094, 37.045322, 29.512705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.699764, 36.752911, 29.285789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067485, -0.633286, 0.770969,
		-0.922860, -0.254050, -0.289461,
		0.379177, -0.731031, -0.567290,
		25.813517, 36.533600, 29.115602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.133627, 36.542351, 29.605225>,  <25.548094, 37.045322, 29.512705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.133627, 36.542351, 29.605225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.450861, 36.341267, 29.467646>,  <25.641201, 36.220615, 29.385099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.450861, 36.341267, 29.467646>,  <25.133627, 36.542351, 29.605225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.450861, 36.341267, 29.467646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199774, -0.748109, 0.632790,
		-0.575420, -0.433144, -0.693742,
		0.793084, -0.502711, -0.343945,
		25.688786, 36.190453, 29.364462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.948601, 35.814663, 29.551613>,  <25.133627, 36.542351, 29.605225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.948601, 35.814663, 29.551613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346376, 35.845329, 29.580490>,  <25.585041, 35.863731, 29.597816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346376, 35.845329, 29.580490>,  <24.948601, 35.814663, 29.551613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.346376, 35.845329, 29.580490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022183, -0.822658, 0.568104,
		0.102948, -0.563343, -0.819784,
		0.994439, 0.076670, 0.072194,
		25.644709, 35.868332, 29.602148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.214268, 35.167591, 29.625580>,  <24.948601, 35.814663, 29.551613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.214268, 35.167591, 29.625580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548603, 35.361626, 29.728394>,  <25.749205, 35.478046, 29.790081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548603, 35.361626, 29.728394>,  <25.214268, 35.167591, 29.625580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.548603, 35.361626, 29.728394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266041, -0.767475, 0.583271,
		0.480202, -0.419139, -0.770537,
		0.835840, 0.485082, 0.257035,
		25.799355, 35.507149, 29.805504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.716831, 34.613914, 29.610596>,  <25.214268, 35.167591, 29.625580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.716831, 34.613914, 29.610596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879950, 34.909245, 29.825474>,  <25.977821, 35.086441, 29.954401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879950, 34.909245, 29.825474>,  <25.716831, 34.613914, 29.610596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879950, 34.909245, 29.825474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358272, -0.670544, 0.649625,
		0.839847, -0.072453, -0.537967,
		0.407798, 0.738324, 0.537196,
		26.002289, 35.130741, 29.986633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.445900, 34.451977, 29.744648>,  <25.716831, 34.613914, 29.610596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.445900, 34.451977, 29.744648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348642, 34.728813, 30.016499>,  <26.290287, 34.894917, 30.179609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348642, 34.728813, 30.016499>,  <26.445900, 34.451977, 29.744648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.348642, 34.728813, 30.016499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436450, -0.547661, 0.713848,
		0.866252, 0.470191, -0.168902,
		-0.243144, 0.692090, 0.679627,
		26.275700, 34.936440, 30.220387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013277, 34.565571, 30.143602>,  <26.445900, 34.451977, 29.744648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013277, 34.565571, 30.143602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756989, 34.754070, 30.386059>,  <26.603216, 34.867168, 30.531532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756989, 34.754070, 30.386059>,  <27.013277, 34.565571, 30.143602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756989, 34.754070, 30.386059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357293, -0.515772, 0.778666,
		0.679572, 0.715477, 0.162094,
		-0.640721, 0.471245, 0.606139,
		26.564772, 34.895443, 30.567900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364098, 34.926186, 30.657570>,  <27.013277, 34.565571, 30.143602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364098, 34.926186, 30.657570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.997080, 34.819626, 30.775648>,  <26.776869, 34.755688, 30.846495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.997080, 34.819626, 30.775648>,  <27.364098, 34.926186, 30.657570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.997080, 34.819626, 30.775648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395242, -0.529763, 0.750423,
		-0.043530, 0.805221, 0.591375,
		-0.917545, -0.266402, 0.295197,
		26.721817, 34.739704, 30.864206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496927, 34.781113, 31.336306>,  <27.364098, 34.926186, 30.657570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496927, 34.781113, 31.336306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139179, 34.606804, 31.295891>,  <26.924530, 34.502220, 31.271643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139179, 34.606804, 31.295891>,  <27.496927, 34.781113, 31.336306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139179, 34.606804, 31.295891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216501, -0.619326, 0.754694,
		-0.391444, 0.653102, 0.648251,
		-0.894371, -0.435767, -0.101035,
		26.870869, 34.476074, 31.265581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964996, 35.343102, 31.529770>,  <27.496927, 34.781113, 31.336306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964996, 35.343102, 31.529770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250765, 35.542477, 31.726206>,  <28.422226, 35.662102, 31.844067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250765, 35.542477, 31.726206>,  <27.964996, 35.343102, 31.529770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250765, 35.542477, 31.726206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223858, 0.827764, -0.514484,
		-0.662942, 0.257623, 0.702950,
		0.714420, 0.498434, 0.491089,
		28.465092, 35.692005, 31.873533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682426, 35.953110, 31.906078>,  <27.964996, 35.343102, 31.529770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682426, 35.953110, 31.906078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058235, 36.025646, 31.789864>,  <28.283720, 36.069168, 31.720135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058235, 36.025646, 31.789864>,  <27.682426, 35.953110, 31.906078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058235, 36.025646, 31.789864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292307, 0.866649, -0.404323,
		0.178474, 0.464797, 0.867243,
		0.939523, 0.181340, -0.290537,
		28.340092, 36.080048, 31.702702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778469, 36.734921, 32.071980>,  <27.682426, 35.953110, 31.906078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778469, 36.734921, 32.071980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057981, 36.647831, 31.799421>,  <28.225689, 36.595577, 31.635885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057981, 36.647831, 31.799421>,  <27.778469, 36.734921, 32.071980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057981, 36.647831, 31.799421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310358, 0.765959, -0.563014,
		0.644502, 0.604901, 0.467667,
		0.698782, -0.217719, -0.681398,
		28.267616, 36.582516, 31.595001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.904440, 37.352001, 31.734436>,  <27.778469, 36.734921, 32.071980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.904440, 37.352001, 31.734436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045517, 37.099094, 31.458511>,  <28.130163, 36.947350, 31.292957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045517, 37.099094, 31.458511>,  <27.904440, 37.352001, 31.734436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045517, 37.099094, 31.458511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232182, 0.654999, -0.719074,
		0.906476, 0.413774, 0.084212,
		0.352693, -0.632271, -0.689812,
		28.151325, 36.909412, 31.251568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511835, 37.648144, 31.503807>,  <27.904440, 37.352001, 31.734436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511835, 37.648144, 31.503807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415520, 37.388165, 31.215479>,  <28.357731, 37.232178, 31.042482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415520, 37.388165, 31.215479>,  <28.511835, 37.648144, 31.503807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415520, 37.388165, 31.215479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053900, 0.732571, -0.678553,
		0.969079, -0.202241, -0.141364,
		-0.240791, -0.649952, -0.720820,
		28.343283, 37.193180, 30.999233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911022, 37.737041, 30.917795>,  <28.511835, 37.648144, 31.503807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911022, 37.737041, 30.917795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583641, 37.556496, 30.775579>,  <28.387213, 37.448170, 30.690250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583641, 37.556496, 30.775579>,  <28.911022, 37.737041, 30.917795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583641, 37.556496, 30.775579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043507, 0.665694, -0.744955,
		0.572924, -0.594242, -0.564477,
		-0.818453, -0.451361, -0.355539,
		28.338106, 37.421085, 30.668919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972795, 37.914154, 30.224506>,  <28.911022, 37.737041, 30.917795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972795, 37.914154, 30.224506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580824, 37.835800, 30.239302>,  <28.345640, 37.788788, 30.248178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580824, 37.835800, 30.239302>,  <28.972795, 37.914154, 30.224506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580824, 37.835800, 30.239302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178207, 0.777651, -0.602911,
		0.089337, -0.597401, -0.796951,
		-0.979930, -0.195884, 0.036988,
		28.286844, 37.777035, 30.250399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767117, 37.856003, 29.501385>,  <28.972795, 37.914154, 30.224506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767117, 37.856003, 29.501385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449633, 37.941025, 29.729366>,  <28.259142, 37.992039, 29.866156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449633, 37.941025, 29.729366>,  <28.767117, 37.856003, 29.501385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449633, 37.941025, 29.729366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329795, 0.636949, -0.696801,
		-0.511139, -0.741025, -0.435453,
		-0.793708, 0.212552, 0.569956,
		28.211521, 38.004791, 29.900352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182833, 37.599476, 29.098728>,  <28.767117, 37.856003, 29.501385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182833, 37.599476, 29.098728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033358, 37.874134, 29.348167>,  <27.943672, 38.038929, 29.497831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033358, 37.874134, 29.348167>,  <28.182833, 37.599476, 29.098728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033358, 37.874134, 29.348167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145734, 0.620490, -0.770554,
		-0.916034, -0.378827, -0.131802,
		-0.373689, 0.686645, 0.623598,
		27.921251, 38.080128, 29.535248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.564335, 37.982628, 28.733326>,  <28.182833, 37.599476, 29.098728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.564335, 37.982628, 28.733326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676004, 38.207500, 29.044714>,  <27.743006, 38.342422, 29.231546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676004, 38.207500, 29.044714>,  <27.564335, 37.982628, 28.733326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.676004, 38.207500, 29.044714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087453, 0.822221, -0.562409,
		-0.956250, 0.088931, 0.278708,
		0.279175, 0.562178, 0.778471,
		27.759756, 38.376152, 29.278255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168955, 38.604813, 28.675440>,  <27.564335, 37.982628, 28.733326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168955, 38.604813, 28.675440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449812, 38.723560, 28.934319>,  <27.618326, 38.794807, 29.089645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449812, 38.723560, 28.934319>,  <27.168955, 38.604813, 28.675440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449812, 38.723560, 28.934319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032123, 0.921220, -0.387714,
		-0.711313, 0.251440, 0.656362,
		0.702141, 0.296870, 0.647199,
		27.660454, 38.812622, 29.128479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891573, 39.250660, 29.005087>,  <27.168955, 38.604813, 28.675440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891573, 39.250660, 29.005087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290251, 39.262890, 29.035198>,  <27.529457, 39.270226, 29.053265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290251, 39.262890, 29.035198>,  <26.891573, 39.250660, 29.005087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290251, 39.262890, 29.035198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015139, 0.840405, -0.541747,
		-0.079827, 0.541096, 0.837164,
		0.996694, 0.030572, 0.075279,
		27.589258, 39.272060, 29.057781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053402, 39.962631, 29.059650>,  <26.891573, 39.250660, 29.005087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053402, 39.962631, 29.059650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404339, 39.798656, 28.959873>,  <27.614901, 39.700272, 28.900007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404339, 39.798656, 28.959873>,  <27.053402, 39.962631, 29.059650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.404339, 39.798656, 28.959873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216766, 0.802320, -0.556143,
		0.428117, 0.433857, 0.792770,
		0.877342, -0.409940, -0.249441,
		27.667542, 39.675674, 28.885040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463869, 40.547146, 29.174442>,  <27.053402, 39.962631, 29.059650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463869, 40.547146, 29.174442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647224, 40.294865, 28.923973>,  <27.757238, 40.143497, 28.773691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647224, 40.294865, 28.923973>,  <27.463869, 40.547146, 29.174442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647224, 40.294865, 28.923973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216827, 0.762626, -0.609416,
		0.861896, 0.143579, 0.486334,
		0.458390, -0.630703, -0.626173,
		27.784742, 40.105656, 28.736122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.233416, 40.807262, 29.034081>,  <27.463869, 40.547146, 29.174442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.233416, 40.807262, 29.034081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129122, 40.558357, 28.738836>,  <28.066545, 40.409016, 28.561689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129122, 40.558357, 28.738836>,  <28.233416, 40.807262, 29.034081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129122, 40.558357, 28.738836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222540, 0.705229, -0.673148,
		0.939411, -0.339773, -0.045401,
		-0.260736, -0.622259, -0.738113,
		28.050901, 40.371681, 28.517403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.582392, 41.002670, 28.478102>,  <28.233416, 40.807262, 29.034081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.582392, 41.002670, 28.478102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321840, 40.796486, 28.255390>,  <28.165508, 40.672775, 28.121763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321840, 40.796486, 28.255390>,  <28.582392, 41.002670, 28.478102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321840, 40.796486, 28.255390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126464, 0.649789, -0.749521,
		0.748138, -0.558636, -0.358072,
		-0.651381, -0.515461, -0.556779,
		28.126427, 40.641846, 28.088356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909603, 40.907295, 27.912640>,  <28.582392, 41.002670, 28.478102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909603, 40.907295, 27.912640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531420, 40.847134, 27.797066>,  <28.304510, 40.811035, 27.727720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531420, 40.847134, 27.797066>,  <28.909603, 40.907295, 27.912640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531420, 40.847134, 27.797066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108700, 0.690497, -0.715121,
		0.307067, -0.707526, -0.636488,
		-0.945459, -0.150404, -0.288937,
		28.247782, 40.802013, 27.710384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973507, 41.084515, 27.269470>,  <28.909603, 40.907295, 27.912640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973507, 41.084515, 27.269470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575129, 41.064491, 27.299356>,  <28.336102, 41.052475, 27.317289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575129, 41.064491, 27.299356>,  <28.973507, 41.084515, 27.269470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575129, 41.064491, 27.299356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089567, 0.627504, -0.773445,
		-0.008167, -0.777003, -0.629444,
		-0.995947, -0.050061, 0.074718,
		28.276344, 41.049473, 27.321772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673994, 40.832127, 26.624325>,  <28.973507, 41.084515, 27.269470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673994, 40.832127, 26.624325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383480, 41.032616, 26.812489>,  <28.209171, 41.152908, 26.925386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383480, 41.032616, 26.812489>,  <28.673994, 40.832127, 26.624325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383480, 41.032616, 26.812489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200390, 0.500227, -0.842387,
		-0.657539, -0.706077, -0.262866,
		-0.726283, 0.501227, 0.470409,
		28.165596, 41.182983, 26.953611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113798, 40.657082, 26.165504>,  <28.673994, 40.832127, 26.624325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113798, 40.657082, 26.165504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053316, 40.989414, 26.379742>,  <28.017027, 41.188812, 26.508284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053316, 40.989414, 26.379742>,  <28.113798, 40.657082, 26.165504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.053316, 40.989414, 26.379742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102581, 0.525708, -0.844458,
		-0.983165, -0.182629, 0.005736,
		-0.151207, 0.830830, 0.535592,
		28.007954, 41.238663, 26.540419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545603, 40.901123, 25.764130>,  <28.113798, 40.657082, 26.165504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545603, 40.901123, 25.764130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706593, 41.197723, 25.978863>,  <27.803186, 41.375683, 26.107702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706593, 41.197723, 25.978863>,  <27.545603, 40.901123, 25.764130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706593, 41.197723, 25.978863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023394, 0.577902, -0.815771,
		-0.915131, 0.340887, 0.215245,
		0.402476, 0.741502, 0.536831,
		27.827335, 41.420174, 26.139912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163017, 41.426949, 25.633598>,  <27.545603, 40.901123, 25.764130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163017, 41.426949, 25.633598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500010, 41.608990, 25.748915>,  <27.702204, 41.718216, 25.818104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500010, 41.608990, 25.748915>,  <27.163017, 41.426949, 25.633598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500010, 41.608990, 25.748915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031153, 0.493081, -0.869425,
		-0.537829, 0.741453, 0.401232,
		0.842479, 0.455102, 0.288292,
		27.752752, 41.745522, 25.835402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938110, 42.090996, 25.513182>,  <27.163017, 41.426949, 25.633598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938110, 42.090996, 25.513182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333981, 42.074062, 25.567961>,  <27.571503, 42.063904, 25.600828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333981, 42.074062, 25.567961>,  <26.938110, 42.090996, 25.513182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333981, 42.074062, 25.567961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133213, 0.624395, -0.769666,
		-0.052926, 0.779961, 0.623587,
		0.989673, -0.042334, 0.136948,
		27.630882, 42.061363, 25.609045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083200, 42.716068, 25.286865>,  <26.938110, 42.090996, 25.513182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083200, 42.716068, 25.286865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443733, 42.543320, 25.273695>,  <27.660053, 42.439671, 25.265793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443733, 42.543320, 25.273695>,  <27.083200, 42.716068, 25.286865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443733, 42.543320, 25.273695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218009, 0.518041, -0.827107,
		0.374263, 0.738320, 0.561080,
		0.901332, -0.431876, -0.032924,
		27.714132, 42.413757, 25.263819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645906, 43.212795, 25.209341>,  <27.083200, 42.716068, 25.286865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.645906, 43.212795, 25.209341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832294, 42.883091, 25.080679>,  <27.944128, 42.685268, 25.003481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832294, 42.883091, 25.080679>,  <27.645906, 43.212795, 25.209341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832294, 42.883091, 25.080679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373963, 0.512938, -0.772688,
		0.801886, 0.239764, 0.547258,
		0.465972, -0.824262, -0.321655,
		27.972086, 42.635811, 24.984182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295416, 43.478134, 24.989325>,  <27.645906, 43.212795, 25.209341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.295416, 43.478134, 24.989325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.228695, 43.127586, 24.808592>,  <28.188662, 42.917259, 24.700151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.228695, 43.127586, 24.808592>,  <28.295416, 43.478134, 24.989325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.228695, 43.127586, 24.808592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315055, 0.386854, -0.866651,
		0.934300, -0.286913, 0.211576,
		-0.166804, -0.876370, -0.451832,
		28.178654, 42.864674, 24.673042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831844, 43.464706, 24.482193>,  <28.295416, 43.478134, 24.989325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831844, 43.464706, 24.482193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.570353, 43.198936, 24.337320>,  <28.413458, 43.039474, 24.250397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.570353, 43.198936, 24.337320>,  <28.831844, 43.464706, 24.482193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570353, 43.198936, 24.337320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296713, 0.215226, -0.930397,
		0.696133, -0.715690, 0.056445,
		-0.653728, -0.664428, -0.362181,
		28.374233, 42.999607, 24.228666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214272, 43.029808, 23.963507>,  <28.831844, 43.464706, 24.482193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214272, 43.029808, 23.963507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822390, 43.012497, 23.885220>,  <28.587261, 43.002110, 23.838247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822390, 43.012497, 23.885220>,  <29.214272, 43.029808, 23.963507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822390, 43.012497, 23.885220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184198, 0.190724, -0.964207,
		0.079054, -0.980689, -0.178882,
		-0.979705, -0.043275, -0.195718,
		28.528479, 42.999516, 23.826504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102716, 42.579063, 23.393135>,  <29.214272, 43.029808, 23.963507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102716, 42.579063, 23.393135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763899, 42.791492, 23.401920>,  <28.560608, 42.918949, 23.407192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763899, 42.791492, 23.401920>,  <29.102716, 42.579063, 23.393135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763899, 42.791492, 23.401920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075166, 0.160592, -0.984154,
		-0.526184, -0.831969, -0.175946,
		-0.847042, 0.531072, 0.021964,
		28.509787, 42.950813, 23.408510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878693, 42.332607, 22.756979>,  <29.102716, 42.579063, 23.393135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878693, 42.332607, 22.756979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664400, 42.656055, 22.854240>,  <28.535824, 42.850124, 22.912598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664400, 42.656055, 22.854240>,  <28.878693, 42.332607, 22.756979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664400, 42.656055, 22.854240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081284, 0.237237, -0.968045,
		-0.840466, -0.538378, -0.061368,
		-0.535733, 0.808621, 0.243151,
		28.503679, 42.898643, 22.927185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151644, 42.299137, 22.358995>,  <28.878693, 42.332607, 22.756979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151644, 42.299137, 22.358995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263222, 42.670650, 22.456602>,  <28.330168, 42.893559, 22.515165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263222, 42.670650, 22.456602>,  <28.151644, 42.299137, 22.358995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263222, 42.670650, 22.456602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037060, 0.243500, -0.969193,
		-0.959592, 0.279395, 0.033502,
		0.278945, 0.928787, 0.244015,
		28.346905, 42.949287, 22.529806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783369, 42.664143, 21.882832>,  <28.151644, 42.299137, 22.358995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783369, 42.664143, 21.882832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039875, 42.939236, 22.018953>,  <28.193779, 43.104290, 22.100626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039875, 42.939236, 22.018953>,  <27.783369, 42.664143, 21.882832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039875, 42.939236, 22.018953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114635, 0.352653, -0.928706,
		-0.758709, 0.634556, 0.147306,
		0.641264, 0.687732, 0.340303,
		28.232254, 43.145554, 22.121044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503464, 43.263798, 21.591099>,  <27.783369, 42.664143, 21.882832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503464, 43.263798, 21.591099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891937, 43.315506, 21.671190>,  <28.125021, 43.346531, 21.719246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891937, 43.315506, 21.671190>,  <27.503464, 43.263798, 21.591099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891937, 43.315506, 21.671190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129712, 0.418119, -0.899084,
		-0.199943, 0.899148, 0.389303,
		0.971184, 0.129268, 0.200231,
		28.183292, 43.354286, 21.731260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673336, 43.935619, 21.352079>,  <27.503464, 43.263798, 21.591099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673336, 43.935619, 21.352079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.036318, 43.771305, 21.387377>,  <28.254107, 43.672718, 21.408556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.036318, 43.771305, 21.387377>,  <27.673336, 43.935619, 21.352079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.036318, 43.771305, 21.387377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249760, 0.358511, -0.899495,
		0.337860, 0.838289, 0.427928,
		0.907453, -0.410782, 0.088245,
		28.308554, 43.648071, 21.413851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081158, 44.431221, 21.026604>,  <27.673336, 43.935619, 21.352079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081158, 44.431221, 21.026604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319906, 44.110382, 21.034515>,  <28.463156, 43.917881, 21.039263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319906, 44.110382, 21.034515>,  <28.081158, 44.431221, 21.026604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319906, 44.110382, 21.034515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148004, 0.085839, -0.985255,
		0.788569, 0.590997, 0.169948,
		0.596870, -0.802094, 0.019780,
		28.498968, 43.869755, 21.040449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688824, 44.702995, 20.739658>,  <28.081158, 44.431221, 21.026604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688824, 44.702995, 20.739658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708635, 44.304424, 20.712305>,  <28.720522, 44.065281, 20.695892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708635, 44.304424, 20.712305>,  <28.688824, 44.702995, 20.739658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708635, 44.304424, 20.712305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153036, 0.075231, -0.985353,
		0.986978, 0.038340, 0.156216,
		0.049531, -0.996429, -0.068384,
		28.723494, 44.005497, 20.691790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348801, 44.473793, 20.411465>,  <28.688824, 44.702995, 20.739658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348801, 44.473793, 20.411465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074196, 44.192055, 20.339251>,  <28.909433, 44.023010, 20.295921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074196, 44.192055, 20.339251>,  <29.348801, 44.473793, 20.411465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074196, 44.192055, 20.339251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176304, 0.079637, -0.981109,
		0.705420, -0.705374, 0.069507,
		-0.686513, -0.704348, -0.180538,
		28.868242, 43.980751, 20.285089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691963, 44.135086, 19.889477>,  <29.348801, 44.473793, 20.411465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691963, 44.135086, 19.889477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304094, 44.047653, 19.845732>,  <29.071373, 43.995193, 19.819485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304094, 44.047653, 19.845732>,  <29.691963, 44.135086, 19.889477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304094, 44.047653, 19.845732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113076, -0.004507, -0.993576,
		0.216684, -0.975809, 0.029086,
		-0.969671, -0.218581, -0.109364,
		29.013193, 43.982079, 19.812923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360472, 44.204849, 19.944756>,  <29.691963, 44.135086, 19.889477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360472, 44.204849, 19.944756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686995, 43.987846, 19.865431>,  <30.882908, 43.857643, 19.817837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686995, 43.987846, 19.865431>,  <30.360472, 44.204849, 19.944756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686995, 43.987846, 19.865431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192940, -0.579701, 0.791657,
		-0.544436, -0.607977, -0.577887,
		0.816311, -0.542504, -0.198308,
		30.931887, 43.825092, 19.805937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191502, 43.474949, 20.042318>,  <30.360472, 44.204849, 19.944756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191502, 43.474949, 20.042318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589880, 43.505459, 20.061386>,  <30.828907, 43.523766, 20.072826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589880, 43.505459, 20.061386>,  <30.191502, 43.474949, 20.042318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589880, 43.505459, 20.061386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021020, -0.712659, 0.701195,
		0.087458, -0.697351, -0.711374,
		0.995946, 0.076279, 0.047670,
		30.888664, 43.528343, 20.075687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453079, 42.828041, 19.971155>,  <30.191502, 43.474949, 20.042318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453079, 42.828041, 19.971155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750393, 43.029335, 20.147465>,  <30.928782, 43.150112, 20.253250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750393, 43.029335, 20.147465>,  <30.453079, 42.828041, 19.971155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750393, 43.029335, 20.147465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016699, -0.644715, 0.764240,
		0.668765, -0.575410, -0.470804,
		0.743286, 0.503235, 0.440772,
		30.973379, 43.180305, 20.279696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835354, 42.342747, 20.291876>,  <30.453079, 42.828041, 19.971155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835354, 42.342747, 20.291876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979176, 42.659943, 20.488604>,  <31.065470, 42.850262, 20.606640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979176, 42.659943, 20.488604>,  <30.835354, 42.342747, 20.291876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979176, 42.659943, 20.488604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140074, -0.566965, 0.811745,
		0.922551, -0.222975, -0.314932,
		0.359555, 0.792990, 0.491820,
		31.087042, 42.897839, 20.636150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456638, 42.052505, 20.586052>,  <30.835354, 42.342747, 20.291876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456638, 42.052505, 20.586052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371674, 42.390156, 20.782963>,  <31.320696, 42.592747, 20.901110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371674, 42.390156, 20.782963>,  <31.456638, 42.052505, 20.586052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371674, 42.390156, 20.782963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062726, -0.490954, 0.868925,
		0.975165, 0.215447, 0.051335,
		-0.212410, 0.844125, 0.492275,
		31.307951, 42.643394, 20.930645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015957, 42.199787, 21.135759>,  <31.456638, 42.052505, 20.586052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015957, 42.199787, 21.135759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672943, 42.371159, 21.249660>,  <31.467134, 42.473980, 21.318001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672943, 42.371159, 21.249660>,  <32.015957, 42.199787, 21.135759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672943, 42.371159, 21.249660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015050, -0.532399, 0.846360,
		0.514207, 0.730068, 0.450102,
		-0.857534, 0.428429, 0.284751,
		31.415684, 42.499687, 21.335085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064934, 42.354195, 21.943047>,  <32.015957, 42.199787, 21.135759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064934, 42.354195, 21.943047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683823, 42.362946, 21.821896>,  <31.455156, 42.368195, 21.749205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683823, 42.362946, 21.821896>,  <32.064934, 42.354195, 21.943047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683823, 42.362946, 21.821896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280408, -0.446204, 0.849867,
		-0.116552, 0.894663, 0.431269,
		-0.952779, 0.021878, -0.302876,
		31.397989, 42.369511, 21.731033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655647, 42.522869, 22.510075>,  <32.064934, 42.354195, 21.943047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655647, 42.522869, 22.510075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354424, 42.358395, 22.304617>,  <31.173689, 42.259712, 22.181343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354424, 42.358395, 22.304617>,  <31.655647, 42.522869, 22.510075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354424, 42.358395, 22.304617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230770, -0.566010, 0.791440,
		-0.616153, 0.714536, 0.331351,
		-0.753061, -0.411182, -0.513642,
		31.128506, 42.235039, 22.150524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101353, 42.462513, 23.038013>,  <31.655647, 42.522869, 22.510075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101353, 42.462513, 23.038013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038866, 42.217873, 22.727776>,  <31.001375, 42.071091, 22.541634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038866, 42.217873, 22.727776>,  <31.101353, 42.462513, 23.038013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038866, 42.217873, 22.727776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424643, -0.667375, 0.611791,
		-0.891782, 0.424921, -0.155457,
		-0.156214, -0.611598, -0.775593,
		30.992002, 42.034393, 22.495098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407032, 42.279884, 23.131630>,  <31.101353, 42.462513, 23.038013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407032, 42.279884, 23.131630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574081, 42.011692, 22.886339>,  <30.674311, 41.850777, 22.739164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574081, 42.011692, 22.886339>,  <30.407032, 42.279884, 23.131630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574081, 42.011692, 22.886339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506927, -0.732029, 0.455146,
		-0.754069, 0.120786, -0.645593,
		0.417618, -0.670480, -0.613230,
		30.699368, 41.810547, 22.702372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858908, 41.826553, 22.880880>,  <30.407032, 42.279884, 23.131630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858908, 41.826553, 22.880880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205935, 41.628433, 22.862997>,  <30.414150, 41.509560, 22.852266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205935, 41.628433, 22.862997>,  <29.858908, 41.826553, 22.880880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205935, 41.628433, 22.862997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432764, -0.796193, 0.422838,
		-0.245029, -0.347493, -0.905102,
		0.867569, -0.495303, -0.044707,
		30.466206, 41.479843, 22.849585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683962, 41.207722, 22.709713>,  <29.858908, 41.826553, 22.880880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683962, 41.207722, 22.709713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047161, 41.133533, 22.859985>,  <30.265081, 41.089020, 22.950150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047161, 41.133533, 22.859985>,  <29.683962, 41.207722, 22.709713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047161, 41.133533, 22.859985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349335, -0.830190, 0.434453,
		0.231308, -0.525722, -0.818604,
		0.907998, -0.185475, 0.375683,
		30.319561, 41.077892, 22.972691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806421, 40.455208, 22.613125>,  <29.683962, 41.207722, 22.709713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806421, 40.455208, 22.613125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083157, 40.574196, 22.876297>,  <30.249197, 40.645588, 23.034201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083157, 40.574196, 22.876297>,  <29.806421, 40.455208, 22.613125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083157, 40.574196, 22.876297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189090, -0.804750, 0.562693,
		0.696854, -0.513700, -0.500507,
		0.691838, 0.297474, 0.657929,
		30.290709, 40.663437, 23.073675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212753, 39.852341, 22.899439>,  <29.806421, 40.455208, 22.613125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212753, 39.852341, 22.899439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250011, 40.143665, 23.170996>,  <30.272366, 40.318459, 23.333929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250011, 40.143665, 23.170996>,  <30.212753, 39.852341, 22.899439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250011, 40.143665, 23.170996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180163, -0.658271, 0.730904,
		0.979217, -0.190390, 0.069900,
		0.093144, 0.728307, 0.678891,
		30.277954, 40.362156, 23.374662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604239, 39.592541, 23.397158>,  <30.212753, 39.852341, 22.899439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604239, 39.592541, 23.397158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417171, 39.893387, 23.582891>,  <30.304932, 40.073895, 23.694332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417171, 39.893387, 23.582891>,  <30.604239, 39.592541, 23.397158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417171, 39.893387, 23.582891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041316, -0.543351, 0.838488,
		0.882938, 0.372949, 0.285182,
		-0.467667, 0.752116, 0.464336,
		30.276871, 40.119022, 23.722193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005808, 39.589657, 24.059160>,  <30.604239, 39.592541, 23.397158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005808, 39.589657, 24.059160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681902, 39.811134, 24.136833>,  <30.487558, 39.944019, 24.183437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681902, 39.811134, 24.136833>,  <31.005808, 39.589657, 24.059160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681902, 39.811134, 24.136833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011364, -0.345683, 0.938282,
		0.586646, 0.757580, 0.286214,
		-0.809764, 0.553692, 0.194185,
		30.438972, 39.977242, 24.195089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100939, 39.959908, 24.715824>,  <31.005808, 39.589657, 24.059160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100939, 39.959908, 24.715824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704866, 39.936649, 24.664970>,  <30.467224, 39.922695, 24.634459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704866, 39.936649, 24.664970>,  <31.100939, 39.959908, 24.715824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704866, 39.936649, 24.664970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106894, -0.271223, 0.956562,
		-0.090099, 0.960759, 0.262344,
		-0.990180, -0.058142, -0.127137,
		30.407812, 39.919205, 24.626829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860468, 40.201698, 25.376480>,  <31.100939, 39.959908, 24.715824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860468, 40.201698, 25.376480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531549, 40.040867, 25.215401>,  <30.334198, 39.944370, 25.118753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531549, 40.040867, 25.215401>,  <30.860468, 40.201698, 25.376480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531549, 40.040867, 25.215401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366779, -0.166585, 0.915272,
		-0.435093, 0.900324, -0.010491,
		-0.822294, -0.402076, -0.402700,
		30.284861, 39.920242, 25.094591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354279, 40.597534, 25.621046>,  <30.860468, 40.201698, 25.376480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354279, 40.597534, 25.621046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235233, 40.225288, 25.535831>,  <30.163807, 40.001942, 25.484703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235233, 40.225288, 25.535831>,  <30.354279, 40.597534, 25.621046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235233, 40.225288, 25.535831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254332, -0.137799, 0.957249,
		-0.920186, 0.339072, -0.195674,
		-0.297612, -0.930614, -0.213038,
		30.145950, 39.946106, 25.471920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748331, 40.553967, 26.094828>,  <30.354279, 40.597534, 25.621046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748331, 40.553967, 26.094828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848249, 40.183708, 25.981134>,  <29.908201, 39.961555, 25.912918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848249, 40.183708, 25.981134>,  <29.748331, 40.553967, 26.094828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848249, 40.183708, 25.981134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012209, -0.296525, 0.954947,
		-0.968221, -0.235073, -0.085372,
		0.249797, -0.925642, -0.284231,
		29.923189, 39.906017, 25.895864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216364, 40.225864, 26.318611>,  <29.748331, 40.553967, 26.094828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216364, 40.225864, 26.318611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496157, 39.946766, 26.256815>,  <29.664032, 39.779305, 26.219738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496157, 39.946766, 26.256815>,  <29.216364, 40.225864, 26.318611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496157, 39.946766, 26.256815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173036, -0.375104, 0.910689,
		-0.693384, -0.610280, -0.383115,
		0.699484, -0.697750, -0.154491,
		29.706001, 39.737442, 26.210468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971457, 39.634670, 26.623121>,  <29.216364, 40.225864, 26.318611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971457, 39.634670, 26.623121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359392, 39.543514, 26.588533>,  <29.592154, 39.488823, 26.567781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359392, 39.543514, 26.588533>,  <28.971457, 39.634670, 26.623121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359392, 39.543514, 26.588533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014258, -0.407193, 0.913231,
		-0.243321, -0.884456, -0.398162,
		0.969841, -0.227885, -0.086467,
		29.650345, 39.475147, 26.562593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958206, 38.940914, 26.795498>,  <28.971457, 39.634670, 26.623121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958206, 38.940914, 26.795498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324120, 39.091763, 26.853394>,  <29.543667, 39.182270, 26.888130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324120, 39.091763, 26.853394>,  <28.958206, 38.940914, 26.795498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324120, 39.091763, 26.853394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069280, -0.499478, 0.863552,
		0.397958, -0.779936, -0.483042,
		0.914784, 0.377123, 0.144738,
		29.598555, 39.204899, 26.896814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499643, 38.350986, 26.930355>,  <28.958206, 38.940914, 26.795498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499643, 38.350986, 26.930355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653471, 38.687256, 27.082867>,  <29.745768, 38.889019, 27.174374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653471, 38.687256, 27.082867>,  <29.499643, 38.350986, 26.930355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653471, 38.687256, 27.082867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197682, -0.478461, 0.855568,
		0.901682, -0.253652, -0.350187,
		0.384567, 0.840676, 0.381277,
		29.768841, 38.939457, 27.197250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009661, 38.044495, 27.288160>,  <29.499643, 38.350986, 26.930355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009661, 38.044495, 27.288160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002213, 38.421326, 27.422108>,  <29.997744, 38.647427, 27.502476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002213, 38.421326, 27.422108>,  <30.009661, 38.044495, 27.288160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002213, 38.421326, 27.422108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389252, -0.301673, 0.870331,
		0.920943, 0.146553, -0.361090,
		-0.018618, 0.942081, 0.334869,
		29.996628, 38.703949, 27.522568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615501, 38.131130, 27.563587>,  <30.009661, 38.044495, 27.288160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615501, 38.131130, 27.563587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391647, 38.412678, 27.738571>,  <30.257334, 38.581608, 27.843561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391647, 38.412678, 27.738571>,  <30.615501, 38.131130, 27.563587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391647, 38.412678, 27.738571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303052, -0.317490, 0.898532,
		0.771341, 0.635424, -0.035631,
		-0.559636, 0.703872, 0.437460,
		30.223757, 38.623840, 27.869808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062784, 38.537880, 27.948330>,  <30.615501, 38.131130, 27.563587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062784, 38.537880, 27.948330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711975, 38.603523, 28.128950>,  <30.501490, 38.642910, 28.237322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711975, 38.603523, 28.128950>,  <31.062784, 38.537880, 27.948330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711975, 38.603523, 28.128950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441729, -0.094214, 0.892188,
		0.188960, 0.981933, 0.010135,
		-0.877023, 0.164111, 0.451550,
		30.448868, 38.652756, 28.264416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152458, 38.991089, 28.512842>,  <31.062784, 38.537880, 27.948330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152458, 38.991089, 28.512842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816759, 38.798424, 28.613768>,  <30.615339, 38.682823, 28.674324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816759, 38.798424, 28.613768>,  <31.152458, 38.991089, 28.512842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816759, 38.798424, 28.613768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312381, -0.047280, 0.948779,
		-0.445064, 0.875079, 0.190143,
		-0.839247, -0.481665, 0.252316,
		30.564985, 38.653923, 28.689463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024797, 39.275944, 29.165815>,  <31.152458, 38.991089, 28.512842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024797, 39.275944, 29.165815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820217, 38.932232, 29.168900>,  <30.697470, 38.726006, 29.170750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820217, 38.932232, 29.168900>,  <31.024797, 39.275944, 29.165815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820217, 38.932232, 29.168900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478614, -0.277401, 0.833053,
		-0.713685, 0.429755, 0.553140,
		-0.511450, -0.859278, 0.007710,
		30.666782, 38.674450, 29.171213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765940, 39.171360, 29.816845>,  <31.024797, 39.275944, 29.165815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765940, 39.171360, 29.816845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768578, 38.792137, 29.689629>,  <30.770161, 38.564606, 29.613298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768578, 38.792137, 29.689629>,  <30.765940, 39.171360, 29.816845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768578, 38.792137, 29.689629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311092, -0.300320, 0.901681,
		-0.950357, -0.104884, 0.292953,
		0.006593, -0.948054, -0.318039,
		30.770555, 38.507721, 29.594217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373678, 38.806530, 30.303476>,  <30.765940, 39.171360, 29.816845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373678, 38.806530, 30.303476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592863, 38.524071, 30.124105>,  <30.724375, 38.354595, 30.016483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592863, 38.524071, 30.124105>,  <30.373678, 38.806530, 30.303476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592863, 38.524071, 30.124105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240536, -0.380418, 0.892986,
		-0.801173, -0.597186, -0.038601,
		0.547964, -0.706152, -0.448426,
		30.757252, 38.312225, 29.989578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225159, 38.263813, 30.672632>,  <30.373678, 38.806530, 30.303476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225159, 38.263813, 30.672632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550457, 38.151932, 30.468513>,  <30.745636, 38.084805, 30.346043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550457, 38.151932, 30.468513>,  <30.225159, 38.263813, 30.672632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550457, 38.151932, 30.468513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412548, -0.341347, 0.844563,
		-0.410416, -0.897356, -0.162206,
		0.813242, -0.279704, -0.510297,
		30.794430, 38.068020, 30.315424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406286, 37.563953, 30.932226>,  <30.225159, 38.263813, 30.672632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406286, 37.563953, 30.932226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743895, 37.708939, 30.774113>,  <30.946459, 37.795929, 30.679245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743895, 37.708939, 30.774113>,  <30.406286, 37.563953, 30.932226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743895, 37.708939, 30.774113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522512, -0.389637, 0.758396,
		0.120873, -0.846642, -0.518254,
		0.844021, 0.362463, -0.395284,
		30.997101, 37.817677, 30.655527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828264, 36.955074, 30.856520>,  <30.406286, 37.563953, 30.932226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828264, 36.955074, 30.856520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053165, 37.283195, 30.898426>,  <31.188107, 37.480068, 30.923571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053165, 37.283195, 30.898426>,  <30.828264, 36.955074, 30.856520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053165, 37.283195, 30.898426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521577, -0.450076, 0.724837,
		0.641738, -0.352899, -0.680907,
		0.562255, 0.820301, 0.104767,
		31.221842, 37.529285, 30.929855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527803, 36.647102, 30.895775>,  <30.828264, 36.955074, 30.856520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527803, 36.647102, 30.895775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562912, 37.031700, 30.999947>,  <31.583977, 37.262459, 31.062450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562912, 37.031700, 30.999947>,  <31.527803, 36.647102, 30.895775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562912, 37.031700, 30.999947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741826, -0.237574, 0.627098,
		0.664823, 0.138152, -0.734115,
		0.087772, 0.961495, 0.260429,
		31.589243, 37.320148, 31.078075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237778, 36.873222, 30.921810>,  <31.527803, 36.647102, 30.895775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237778, 36.873222, 30.921810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054298, 37.092842, 31.201279>,  <31.944210, 37.224613, 31.368959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054298, 37.092842, 31.201279>,  <32.237778, 36.873222, 30.921810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054298, 37.092842, 31.201279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697369, -0.264853, 0.665980,
		0.550701, 0.792715, -0.261403,
		-0.458699, 0.549050, 0.698669,
		31.916689, 37.257557, 31.410879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740211, 36.931602, 31.293673>,  <32.237778, 36.873222, 30.921810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740211, 36.931602, 31.293673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464294, 37.096687, 31.531616>,  <32.298744, 37.195736, 31.674381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464294, 37.096687, 31.531616>,  <32.740211, 36.931602, 31.293673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464294, 37.096687, 31.531616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554914, -0.226359, 0.800520,
		0.465034, 0.882288, -0.072878,
		-0.689793, 0.412710, 0.594858,
		32.257355, 37.220501, 31.710073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168125, 37.413525, 31.701450>,  <32.740211, 36.931602, 31.293673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168125, 37.413525, 31.701450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840393, 37.261810, 31.873425>,  <32.643753, 37.170784, 31.976608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840393, 37.261810, 31.873425>,  <33.168125, 37.413525, 31.701450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840393, 37.261810, 31.873425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557489, -0.352039, 0.751847,
		-0.133810, 0.855694, 0.499882,
		-0.819330, -0.379283, 0.429934,
		32.594593, 37.148026, 32.002403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341209, 37.438370, 32.382187>,  <33.168125, 37.413525, 31.701450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341209, 37.438370, 32.382187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992844, 37.245773, 32.421520>,  <32.783825, 37.130215, 32.445118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992844, 37.245773, 32.421520>,  <33.341209, 37.438370, 32.382187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992844, 37.245773, 32.421520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270365, -0.302365, 0.914045,
		-0.410374, 0.822642, 0.393514,
		-0.870917, -0.481493, 0.098330,
		32.731567, 37.101326, 32.451019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954048, 37.566010, 33.053665>,  <33.341209, 37.438370, 32.382187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954048, 37.566010, 33.053665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848644, 37.201870, 32.926018>,  <32.785404, 36.983387, 32.849430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848644, 37.201870, 32.926018>,  <32.954048, 37.566010, 33.053665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848644, 37.201870, 32.926018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353528, -0.398924, 0.846095,
		-0.897542, 0.110136, 0.426952,
		-0.263507, -0.910346, -0.319115,
		32.769592, 36.928764, 32.830284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473263, 37.332649, 33.442928>,  <32.954048, 37.566010, 33.053665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473263, 37.332649, 33.442928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634216, 37.000568, 33.288601>,  <32.730789, 36.801319, 33.196007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634216, 37.000568, 33.288601>,  <32.473263, 37.332649, 33.442928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634216, 37.000568, 33.288601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246945, -0.307387, 0.918984,
		-0.881537, -0.465058, 0.081328,
		0.402381, -0.830202, -0.385817,
		32.754932, 36.751507, 33.172855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313961, 36.655640, 33.831810>,  <32.473263, 37.332649, 33.442928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313961, 36.655640, 33.831810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650669, 36.583035, 33.628448>,  <32.852695, 36.539471, 33.506432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650669, 36.583035, 33.628448>,  <32.313961, 36.655640, 33.831810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650669, 36.583035, 33.628448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401119, -0.419982, 0.814075,
		-0.361285, -0.889195, -0.280721,
		0.841770, -0.181511, -0.508407,
		32.903198, 36.528580, 33.475925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554630, 35.925999, 33.999748>,  <32.313961, 36.655640, 33.831810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554630, 35.925999, 33.999748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875969, 36.109394, 33.847736>,  <33.068771, 36.219429, 33.756527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875969, 36.109394, 33.847736>,  <32.554630, 35.925999, 33.999748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875969, 36.109394, 33.847736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560985, -0.368504, 0.741283,
		0.199822, -0.808701, -0.553240,
		0.803347, 0.458484, -0.380034,
		33.116974, 36.246941, 33.733727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090321, 35.488838, 33.825592>,  <32.554630, 35.925999, 33.999748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090321, 35.488838, 33.825592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285038, 35.830673, 33.897949>,  <33.401867, 36.035774, 33.941364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285038, 35.830673, 33.897949>,  <33.090321, 35.488838, 33.825592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285038, 35.830673, 33.897949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452096, -0.423673, 0.784927,
		0.747426, -0.300313, -0.592593,
		0.486790, 0.854584, 0.180894,
		33.431076, 36.087048, 33.952217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789864, 35.412132, 33.994015>,  <33.090321, 35.488838, 33.825592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789864, 35.412132, 33.994015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740757, 35.772053, 34.161480>,  <33.711292, 35.988007, 34.261959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740757, 35.772053, 34.161480>,  <33.789864, 35.412132, 33.994015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740757, 35.772053, 34.161480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379577, -0.347206, 0.857537,
		0.916979, 0.264192, -0.298920,
		-0.122767, 0.899806, 0.418662,
		33.703926, 36.041996, 34.287079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233799, 35.541740, 34.502060>,  <33.789864, 35.412132, 33.994015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233799, 35.541740, 34.502060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934711, 35.784225, 34.610447>,  <33.755260, 35.929718, 34.675480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934711, 35.784225, 34.610447>,  <34.233799, 35.541740, 34.502060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934711, 35.784225, 34.610447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148286, -0.245328, 0.958032,
		0.647246, 0.756520, 0.093544,
		-0.747719, 0.606211, 0.270969,
		33.710396, 35.966087, 34.691738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307522, 36.006634, 35.109261>,  <34.233799, 35.541740, 34.502060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307522, 36.006634, 35.109261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929173, 35.878635, 35.087650>,  <33.702164, 35.801838, 35.074684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929173, 35.878635, 35.087650>,  <34.307522, 36.006634, 35.109261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929173, 35.878635, 35.087650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011023, -0.134698, 0.990825,
		-0.324337, 0.937795, 0.123881,
		-0.945877, -0.319996, -0.054025,
		33.645409, 35.782639, 35.071442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586147, 35.929188, 35.756493>,  <34.307522, 36.006634, 35.109261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586147, 35.929188, 35.756493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889812, 35.710514, 35.897804>,  <35.072014, 35.579311, 35.982590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889812, 35.710514, 35.897804>,  <34.586147, 35.929188, 35.756493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889812, 35.710514, 35.897804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276107, -0.221026, -0.935367,
		0.589433, 0.807642, -0.016853,
		0.759167, -0.546683, 0.353276,
		35.117561, 35.546509, 36.003788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211872, 36.150196, 35.393246>,  <34.586147, 35.929188, 35.756493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211872, 36.150196, 35.393246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308384, 35.790516, 35.539238>,  <35.366291, 35.574707, 35.626835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308384, 35.790516, 35.539238>,  <35.211872, 36.150196, 35.393246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308384, 35.790516, 35.539238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340134, -0.273881, -0.899610,
		0.908896, 0.341203, 0.239768,
		0.241282, -0.899205, 0.364984,
		35.380768, 35.520756, 35.648735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909985, 36.018959, 35.164383>,  <35.211872, 36.150196, 35.393246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909985, 36.018959, 35.164383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782650, 35.651352, 35.257397>,  <35.706249, 35.430786, 35.313206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782650, 35.651352, 35.257397>,  <35.909985, 36.018959, 35.164383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782650, 35.651352, 35.257397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245707, -0.316902, -0.916080,
		0.915584, -0.234482, 0.326688,
		-0.318332, -0.919017, 0.232536,
		35.687149, 35.375648, 35.327156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430248, 35.459084, 35.035606>,  <35.909985, 36.018959, 35.164383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430248, 35.459084, 35.035606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095322, 35.240505, 35.042561>,  <35.894367, 35.109360, 35.046734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095322, 35.240505, 35.042561>,  <36.430248, 35.459084, 35.035606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095322, 35.240505, 35.042561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281823, -0.458654, -0.842741,
		0.468487, -0.700738, 0.538039,
		-0.837314, -0.546445, 0.017390,
		35.844128, 35.076572, 35.047779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116348, 35.369255, 34.849388>,  <36.430248, 35.459084, 35.035606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116348, 35.369255, 34.849388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321186, 35.556271, 35.137604>,  <37.444088, 35.668480, 35.310532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321186, 35.556271, 35.137604>,  <37.116348, 35.369255, 34.849388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321186, 35.556271, 35.137604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743914, -0.177920, 0.644156,
		0.429364, -0.865884, 0.256695,
		0.512092, 0.467536, 0.720535,
		37.474815, 35.696533, 35.353764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129623, 34.944626, 35.512989>,  <37.116348, 35.369255, 34.849388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129623, 34.944626, 35.512989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192997, 35.326611, 35.613338>,  <37.231022, 35.555801, 35.673550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192997, 35.326611, 35.613338>,  <37.129623, 34.944626, 35.512989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192997, 35.326611, 35.613338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714306, -0.064556, 0.696850,
		0.681663, -0.289607, 0.671910,
		0.158437, 0.954966, 0.250873,
		37.240528, 35.613102, 35.688599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593697, 34.708263, 34.967678>,  <37.129623, 34.944626, 35.512989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593697, 34.708263, 34.967678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214237, 34.697460, 34.841614>,  <35.986561, 34.690979, 34.765976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214237, 34.697460, 34.841614>,  <36.593697, 34.708263, 34.967678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214237, 34.697460, 34.841614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275770, -0.558676, -0.782197,
		-0.154946, -0.828946, 0.537438,
		-0.948653, -0.027011, -0.315163,
		35.929642, 34.689358, 34.747066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475685, 34.082932, 34.651604>,  <36.593697, 34.708263, 34.967678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475685, 34.082932, 34.651604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167389, 34.288246, 34.500614>,  <35.982410, 34.411434, 34.410019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167389, 34.288246, 34.500614>,  <36.475685, 34.082932, 34.651604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167389, 34.288246, 34.500614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147770, -0.432283, -0.889548,
		-0.619772, -0.741393, 0.257331,
		-0.770744, 0.513291, -0.377473,
		35.936165, 34.442234, 34.387371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974438, 33.693295, 34.217419>,  <36.475685, 34.082932, 34.651604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974438, 33.693295, 34.217419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886868, 34.065422, 34.099724>,  <35.834328, 34.288700, 34.029106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886868, 34.065422, 34.099724>,  <35.974438, 33.693295, 34.217419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886868, 34.065422, 34.099724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020433, -0.297113, -0.954624,
		-0.975528, -0.215000, 0.046035,
		-0.218922, 0.930322, -0.294236,
		35.821190, 34.344517, 34.011452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440041, 33.669655, 33.770824>,  <35.974438, 33.693295, 34.217419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440041, 33.669655, 33.770824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626709, 34.006268, 33.661983>,  <35.738708, 34.208237, 33.596680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626709, 34.006268, 33.661983>,  <35.440041, 33.669655, 33.770824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626709, 34.006268, 33.661983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024895, -0.295033, -0.955163,
		-0.884082, 0.452518, -0.116732,
		0.466668, 0.841536, -0.272099,
		35.766708, 34.258728, 33.580353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085133, 33.799145, 33.117710>,  <35.440041, 33.669655, 33.770824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085133, 33.799145, 33.117710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406048, 34.037197, 33.099178>,  <35.598598, 34.180027, 33.088058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406048, 34.037197, 33.099178>,  <35.085133, 33.799145, 33.117710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406048, 34.037197, 33.099178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098476, -0.208502, -0.973051,
		-0.588753, 0.776109, -0.225886,
		0.802292, 0.595132, -0.046328,
		35.646736, 34.215736, 33.085281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959713, 34.185337, 32.581772>,  <35.085133, 33.799145, 33.117710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959713, 34.185337, 32.581772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354702, 34.222565, 32.632729>,  <35.591698, 34.244900, 32.663303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354702, 34.222565, 32.632729>,  <34.959713, 34.185337, 32.581772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354702, 34.222565, 32.632729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136861, -0.103670, -0.985151,
		-0.078481, 0.990248, -0.115109,
		0.987476, 0.093070, 0.127390,
		35.650944, 34.250484, 32.670944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138783, 33.931751, 31.911892>,  <34.959713, 34.185337, 32.581772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138783, 33.931751, 31.911892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474884, 34.029446, 32.105518>,  <35.676544, 34.088062, 32.221695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474884, 34.029446, 32.105518>,  <35.138783, 33.931751, 31.911892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474884, 34.029446, 32.105518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515171, -0.081304, -0.853222,
		-0.169031, 0.966302, -0.194139,
		0.840254, 0.244235, 0.484068,
		35.726959, 34.102715, 32.250740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997269, 33.884094, 31.159733>,  <35.138783, 33.931751, 31.911892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997269, 33.884094, 31.159733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384895, 33.801674, 31.214056>,  <35.617474, 33.752220, 31.246651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384895, 33.801674, 31.214056>,  <34.997269, 33.884094, 31.159733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384895, 33.801674, 31.214056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245600, -0.859075, 0.449077,
		0.024137, -0.468543, -0.883111,
		0.969071, -0.206053, 0.135810,
		35.675617, 33.739857, 31.254799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169250, 33.258495, 30.798092>,  <34.997269, 33.884094, 31.159733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169250, 33.258495, 30.798092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373589, 33.340633, 31.132006>,  <35.496193, 33.389915, 31.332354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373589, 33.340633, 31.132006>,  <35.169250, 33.258495, 30.798092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373589, 33.340633, 31.132006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087893, -0.953489, 0.288330,
		0.855166, -0.220665, -0.469040,
		0.510848, 0.205345, 0.834786,
		35.526844, 33.402237, 31.382441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842537, 32.878361, 31.017015>,  <35.169250, 33.258495, 30.798092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842537, 32.878361, 31.017015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572029, 32.984089, 31.292055>,  <35.409725, 33.047527, 31.457079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572029, 32.984089, 31.292055>,  <35.842537, 32.878361, 31.017015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572029, 32.984089, 31.292055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147506, -0.963093, 0.225152,
		0.721734, 0.050839, 0.690301,
		-0.676271, 0.264323, 0.687598,
		35.369148, 33.063385, 31.498335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083069, 32.832600, 31.762514>,  <35.842537, 32.878361, 31.017015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083069, 32.832600, 31.762514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687782, 32.789268, 31.719267>,  <35.450611, 32.763271, 31.693319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687782, 32.789268, 31.719267>,  <36.083069, 32.832600, 31.762514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687782, 32.789268, 31.719267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064190, -0.934649, 0.349730,
		-0.138936, 0.338670, 0.930591,
		-0.988219, -0.108325, -0.108117,
		35.391315, 32.756771, 31.686832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324516, 33.381634, 32.155910>,  <36.083069, 32.832600, 31.762514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324516, 33.381634, 32.155910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383537, 33.771046, 32.086090>,  <36.418949, 34.004692, 32.044197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383537, 33.771046, 32.086090>,  <36.324516, 33.381634, 32.155910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383537, 33.771046, 32.086090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300710, 0.212284, 0.929790,
		0.942233, -0.084700, 0.324072,
		0.147548, 0.973530, -0.174551,
		36.427803, 34.063107, 32.033726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858891, 33.555321, 32.671410>,  <36.324516, 33.381634, 32.155910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858891, 33.555321, 32.671410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617607, 33.852772, 32.556061>,  <36.472839, 34.031242, 32.486851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617607, 33.852772, 32.556061>,  <36.858891, 33.555321, 32.671410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617607, 33.852772, 32.556061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070979, 0.310078, 0.948058,
		0.794421, 0.592343, -0.134259,
		-0.603206, 0.743628, -0.288376,
		36.436646, 34.075859, 32.469547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007862, 34.302662, 32.950829>,  <36.858891, 33.555321, 32.671410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007862, 34.302662, 32.950829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618740, 34.290359, 32.858997>,  <36.385265, 34.282978, 32.803898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618740, 34.290359, 32.858997>,  <37.007862, 34.302662, 32.950829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618740, 34.290359, 32.858997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223630, 0.382921, 0.896304,
		0.060342, 0.923269, -0.379386,
		-0.972804, -0.030757, -0.229577,
		36.326900, 34.281132, 32.790123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683533, 34.961544, 33.094467>,  <37.007862, 34.302662, 32.950829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683533, 34.961544, 33.094467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359390, 34.727177, 33.092472>,  <36.164906, 34.586555, 33.091274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359390, 34.727177, 33.092472>,  <36.683533, 34.961544, 33.094467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359390, 34.727177, 33.092472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264876, 0.358720, 0.895076,
		-0.522650, 0.726652, -0.445886,
		-0.810357, -0.585916, -0.004988,
		36.116283, 34.551403, 33.090977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196819, 35.407913, 33.234665>,  <36.683533, 34.961544, 33.094467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196819, 35.407913, 33.234665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051632, 35.047462, 33.329510>,  <35.964520, 34.831192, 33.386417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051632, 35.047462, 33.329510>,  <36.196819, 35.407913, 33.234665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051632, 35.047462, 33.329510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318170, 0.359029, 0.877420,
		-0.875796, 0.243038, -0.417029,
		-0.362972, -0.901128, 0.237109,
		35.942741, 34.777122, 33.400642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754189, 35.542782, 33.700722>,  <36.196819, 35.407913, 33.234665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754189, 35.542782, 33.700722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730942, 35.145088, 33.736759>,  <35.716991, 34.906471, 33.758381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730942, 35.145088, 33.736759>,  <35.754189, 35.542782, 33.700722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730942, 35.145088, 33.736759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352356, 0.104865, 0.929972,
		-0.934060, 0.022307, -0.356420,
		-0.058121, -0.994236, 0.090091,
		35.713505, 34.846817, 33.763786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005112, 35.174545, 33.900669>,  <35.754189, 35.542782, 33.700722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005112, 35.174545, 33.900669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285511, 34.942551, 34.066666>,  <35.453751, 34.803356, 34.166264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285511, 34.942551, 34.066666>,  <35.005112, 35.174545, 33.900669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285511, 34.942551, 34.066666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382643, 0.185174, 0.905149,
		-0.601816, -0.793304, -0.092119,
		0.701001, -0.579982, 0.414993,
		35.495811, 34.768555, 34.191162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690510, 34.840816, 34.395130>,  <35.005112, 35.174545, 33.900669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690510, 34.840816, 34.395130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066959, 34.780113, 34.515968>,  <35.292828, 34.743690, 34.588470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066959, 34.780113, 34.515968>,  <34.690510, 34.840816, 34.395130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066959, 34.780113, 34.515968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274781, 0.177171, 0.945043,
		-0.196944, -0.972409, 0.125037,
		0.941121, -0.151763, 0.302092,
		35.349297, 34.734585, 34.606598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744499, 34.368797, 35.017895>,  <34.690510, 34.840816, 34.395130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744499, 34.368797, 35.017895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073597, 34.595966, 35.027294>,  <35.271057, 34.732269, 35.032932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073597, 34.595966, 35.027294>,  <34.744499, 34.368797, 35.017895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073597, 34.595966, 35.027294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084832, 0.081804, 0.993032,
		0.562044, -0.819006, 0.115482,
		0.822746, 0.567924, 0.023500,
		35.320419, 34.766342, 35.034344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098465, 34.239964, 35.727093>,  <34.744499, 34.368797, 35.017895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098465, 34.239964, 35.727093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245853, 34.594334, 35.614407>,  <35.334286, 34.806957, 35.546795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245853, 34.594334, 35.614407>,  <35.098465, 34.239964, 35.727093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245853, 34.594334, 35.614407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055018, 0.323287, 0.944700,
		0.928011, -0.332591, 0.167863,
		0.368467, 0.885928, -0.281716,
		35.356392, 34.860111, 35.529892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656887, 34.347530, 36.145210>,  <35.098465, 34.239964, 35.727093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656887, 34.347530, 36.145210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561424, 34.700676, 35.983425>,  <35.504147, 34.912563, 35.886353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561424, 34.700676, 35.983425>,  <35.656887, 34.347530, 36.145210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561424, 34.700676, 35.983425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111239, 0.388902, 0.914539,
		0.964711, 0.263256, 0.005394,
		-0.238660, 0.882865, -0.404463,
		35.489826, 34.965534, 35.862087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148067, 34.909081, 36.401207>,  <35.656887, 34.347530, 36.145210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148067, 34.909081, 36.401207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799019, 35.075935, 36.299603>,  <35.589588, 35.176048, 36.238640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799019, 35.075935, 36.299603>,  <36.148067, 34.909081, 36.401207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799019, 35.075935, 36.299603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046783, 0.446308, 0.893655,
		0.486143, 0.791710, -0.369945,
		-0.872626, 0.417137, -0.254008,
		35.537231, 35.201077, 36.223400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153461, 35.619621, 36.622974>,  <36.148067, 34.909081, 36.401207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153461, 35.619621, 36.622974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781513, 35.472626, 36.616028>,  <35.558346, 35.384430, 36.611858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781513, 35.472626, 36.616028>,  <36.153461, 35.619621, 36.622974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781513, 35.472626, 36.616028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164395, 0.372821, 0.913224,
		-0.329121, 0.852033, -0.407087,
		-0.929867, -0.367485, -0.017367,
		35.502552, 35.362381, 36.610817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644638, 35.177982, 37.139011>,  <36.153461, 35.619621, 36.622974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644638, 35.177982, 37.139011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954372, 35.415649, 37.226070>,  <37.140213, 35.558250, 37.278305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954372, 35.415649, 37.226070>,  <36.644638, 35.177982, 37.139011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954372, 35.415649, 37.226070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632769, -0.728336, -0.262927,
		0.002301, 0.341316, -0.939946,
		0.774337, 0.594163, 0.217650,
		37.186672, 35.593899, 37.291367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290115, 35.211910, 36.582581>,  <36.644638, 35.177982, 37.139011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290115, 35.211910, 36.582581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378410, 35.255272, 36.970295>,  <37.431389, 35.281288, 37.202923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378410, 35.255272, 36.970295>,  <37.290115, 35.211910, 36.582581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378410, 35.255272, 36.970295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551744, -0.833382, -0.032443,
		0.804272, 0.541961, -0.243770,
		0.220737, 0.108406, 0.969290,
		37.444630, 35.287792, 37.261082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974419, 35.237934, 36.861389>,  <37.290115, 35.211910, 36.582581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974419, 35.237934, 36.861389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763172, 35.071781, 37.157646>,  <37.636425, 34.972088, 37.335400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763172, 35.071781, 37.157646>,  <37.974419, 35.237934, 36.861389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763172, 35.071781, 37.157646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713299, -0.690248, 0.121499,
		0.460756, 0.592463, 0.660827,
		-0.528118, -0.415386, 0.740639,
		37.604736, 34.947166, 37.379837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393871, 35.031212, 37.464443>,  <37.974419, 35.237934, 36.861389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393871, 35.031212, 37.464443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091076, 34.772854, 37.424873>,  <37.909397, 34.617840, 37.401131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091076, 34.772854, 37.424873>,  <38.393871, 35.031212, 37.464443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091076, 34.772854, 37.424873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652150, -0.737357, -0.176083,
		0.040788, -0.197807, 0.979392,
		-0.756992, -0.645893, -0.098924,
		37.863979, 34.579086, 37.395195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480103, 34.294765, 37.703182>,  <38.393871, 35.031212, 37.464443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480103, 34.294765, 37.703182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211384, 34.263885, 37.408501>,  <38.050152, 34.245358, 37.231693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211384, 34.263885, 37.408501>,  <38.480103, 34.294765, 37.703182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211384, 34.263885, 37.408501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497578, -0.783790, -0.371604,
		-0.548728, -0.616208, 0.564964,
		-0.671798, -0.077204, -0.736699,
		38.009846, 34.240723, 37.187492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155502, 34.355267, 37.466888>,  <38.480103, 34.294765, 37.703182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155502, 34.355267, 37.466888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064053, 33.966026, 37.478298>,  <39.009182, 33.732483, 37.485142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064053, 33.966026, 37.478298>,  <39.155502, 34.355267, 37.466888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064053, 33.966026, 37.478298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859803, -0.188091, 0.474721,
		-0.456585, 0.133054, 0.879674,
		-0.228622, -0.973097, 0.028521,
		38.995464, 33.674099, 37.486855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364990, 34.078148, 38.176441>,  <39.155502, 34.355267, 37.466888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364990, 34.078148, 38.176441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355324, 33.798531, 37.890572>,  <39.349525, 33.630760, 37.719051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355324, 33.798531, 37.890572>,  <39.364990, 34.078148, 38.176441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355324, 33.798531, 37.890572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811763, -0.430967, 0.394091,
		-0.583486, -0.570621, 0.577872,
		-0.024167, -0.699042, -0.714672,
		39.348072, 33.588818, 37.676170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491356, 33.402214, 38.414722>,  <39.364990, 34.078148, 38.176441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491356, 33.402214, 38.414722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602272, 33.346302, 38.034496>,  <39.668823, 33.312756, 37.806362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602272, 33.346302, 38.034496>,  <39.491356, 33.402214, 38.414722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602272, 33.346302, 38.034496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823499, -0.475078, 0.310082,
		-0.494935, -0.868771, -0.016628,
		0.277290, -0.139777, -0.950565,
		39.685459, 33.304371, 37.749329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550526, 32.688255, 38.255356>,  <39.491356, 33.402214, 38.414722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550526, 32.688255, 38.255356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787167, 32.955215, 38.074432>,  <39.929150, 33.115391, 37.965878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787167, 32.955215, 38.074432>,  <39.550526, 32.688255, 38.255356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787167, 32.955215, 38.074432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806230, -0.489342, 0.332471,
		0.000559, -0.561354, -0.827576,
		0.591601, 0.667403, -0.452307,
		39.964645, 33.155437, 37.938740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064148, 32.260975, 37.914391>,  <39.550526, 32.688255, 38.255356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064148, 32.260975, 37.914391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218784, 32.628540, 37.945744>,  <40.311565, 32.849079, 37.964558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218784, 32.628540, 37.945744>,  <40.064148, 32.260975, 37.914391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218784, 32.628540, 37.945744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774720, -0.369685, 0.512973,
		0.500356, -0.137583, -0.854818,
		0.386590, 0.918915, 0.078386,
		40.334763, 32.904213, 37.969257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746338, 32.142342, 37.708961>,  <40.064148, 32.260975, 37.914391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746338, 32.142342, 37.708961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707588, 32.442108, 37.970951>,  <40.684338, 32.621967, 38.128143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707588, 32.442108, 37.970951>,  <40.746338, 32.142342, 37.708961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707588, 32.442108, 37.970951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784771, -0.347236, 0.513383,
		0.612168, 0.563738, -0.554482,
		-0.096878, 0.749418, 0.654972,
		40.678524, 32.666935, 38.167442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445641, 32.601719, 37.800503>,  <40.746338, 32.142342, 37.708961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445641, 32.601719, 37.800503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195278, 32.575375, 38.111347>,  <41.045059, 32.559570, 38.297855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195278, 32.575375, 38.111347>,  <41.445641, 32.601719, 37.800503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195278, 32.575375, 38.111347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744859, -0.345793, 0.570625,
		0.231141, 0.935997, 0.265488,
		-0.625907, -0.065857, 0.777112,
		41.007507, 32.555618, 38.344482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831593, 32.831692, 38.216980>,  <41.445641, 32.601719, 37.800503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831593, 32.831692, 38.216980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541653, 32.616722, 38.389385>,  <41.367691, 32.487740, 38.492828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541653, 32.616722, 38.389385>,  <41.831593, 32.831692, 38.216980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541653, 32.616722, 38.389385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684065, -0.635559, 0.357940,
		0.081568, 0.554292, 0.828316,
		-0.724846, -0.537425, 0.431013,
		41.324200, 32.455494, 38.518688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259647, 33.343082, 37.876553>,  <41.831593, 32.831692, 38.216980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259647, 33.343082, 37.876553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435589, 33.575325, 37.602493>,  <42.541153, 33.714668, 37.438057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435589, 33.575325, 37.602493>,  <42.259647, 33.343082, 37.876553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435589, 33.575325, 37.602493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740296, 0.197491, 0.642619,
		0.508417, -0.789871, -0.342951,
		0.439856, 0.580604, -0.685147,
		42.567547, 33.749508, 37.396950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947567, 33.071609, 37.818184>,  <42.259647, 33.343082, 37.876553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947567, 33.071609, 37.818184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899769, 33.459282, 37.732018>,  <42.871090, 33.691887, 37.680317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899769, 33.459282, 37.732018>,  <42.947567, 33.071609, 37.818184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899769, 33.459282, 37.732018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479783, 0.246325, 0.842100,
		0.869211, -0.002722, -0.494433,
		-0.119499, 0.969183, -0.215414,
		42.863918, 33.750038, 37.667393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466290, 33.513092, 38.053955>,  <42.947567, 33.071609, 37.818184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466290, 33.513092, 38.053955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596951, 33.337776, 37.719002>,  <43.675346, 33.232586, 37.518032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596951, 33.337776, 37.719002>,  <43.466290, 33.513092, 38.053955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596951, 33.337776, 37.719002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786746, -0.364890, 0.497882,
		-0.523767, -0.821437, 0.225631,
		0.326648, -0.438289, -0.837379,
		43.694946, 33.206291, 37.467789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617149, 32.782871, 38.196999>,  <43.466290, 33.513092, 38.053955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617149, 32.782871, 38.196999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846325, 32.922333, 37.900303>,  <43.983829, 33.006008, 37.722286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846325, 32.922333, 37.900303>,  <43.617149, 32.782871, 38.196999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846325, 32.922333, 37.900303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807187, -0.396918, 0.436926,
		-0.142073, -0.849056, -0.508841,
		0.572943, 0.348655, -0.741738,
		44.018208, 33.026928, 37.677780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.994270, 32.197598, 37.984047>,  <43.617149, 32.782871, 38.196999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.994270, 32.197598, 37.984047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.188019, 32.525379, 37.861492>,  <44.304268, 32.722050, 37.787960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.188019, 32.525379, 37.861492>,  <43.994270, 32.197598, 37.984047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.188019, 32.525379, 37.861492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871100, -0.419313, 0.255659,
		0.081030, -0.390727, -0.916934,
		0.484375, 0.819457, -0.306385,
		44.333332, 32.771217, 37.769577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.532707, 32.081406, 37.427307>,  <43.994270, 32.197598, 37.984047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.532707, 32.081406, 37.427307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628601, 32.393902, 37.657852>,  <44.686138, 32.581398, 37.796177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628601, 32.393902, 37.657852>,  <44.532707, 32.081406, 37.427307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.628601, 32.393902, 37.657852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935190, -0.345232, 0.078959,
		0.260664, 0.520075, -0.813373,
		0.239738, 0.781240, 0.576359,
		44.700523, 32.628273, 37.830761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.027420, 32.588062, 37.103748>,  <44.532707, 32.081406, 37.427307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.027420, 32.588062, 37.103748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066956, 32.614597, 37.500904>,  <45.090679, 32.630520, 37.739197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066956, 32.614597, 37.500904>,  <45.027420, 32.588062, 37.103748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.066956, 32.614597, 37.500904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969624, -0.230762, -0.081108,
		0.223741, 0.970746, -0.087135,
		0.098843, 0.066341, 0.992889,
		45.096607, 32.634499, 37.798771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.126022, 33.314064, 37.471382>,  <45.027420, 32.588062, 37.103748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.126022, 33.314064, 37.471382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.208874, 33.701206, 37.414326>,  <45.258583, 33.933491, 37.380093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.208874, 33.701206, 37.414326>,  <45.126022, 33.314064, 37.471382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208874, 33.701206, 37.414326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416511, -0.219169, -0.882317,
		-0.885222, 0.123337, -0.448519,
		0.207124, 0.967860, -0.142642,
		45.271011, 33.991566, 37.371532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818932, 33.500103, 36.905140>,  <45.126022, 33.314064, 37.471382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818932, 33.500103, 36.905140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.127720, 33.746910, 36.966263>,  <45.312992, 33.894997, 37.002937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.127720, 33.746910, 36.966263>,  <44.818932, 33.500103, 36.905140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.127720, 33.746910, 36.966263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426898, -0.325124, -0.843832,
		-0.470981, 0.716644, -0.514391,
		0.771968, 0.617021, 0.152807,
		45.359310, 33.932018, 37.012104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.933445, 33.916363, 36.290306>,  <44.818932, 33.500103, 36.905140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.933445, 33.916363, 36.290306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.279232, 33.866745, 36.485165>,  <45.486702, 33.836975, 36.602081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.279232, 33.866745, 36.485165>,  <44.933445, 33.916363, 36.290306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.279232, 33.866745, 36.485165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358924, -0.526180, -0.770914,
		0.351959, 0.841277, -0.410340,
		0.864464, -0.124049, 0.487148,
		45.538570, 33.829529, 36.631310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.656010, 34.192131, 36.067844>,  <44.933445, 33.916363, 36.290306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.656010, 34.192131, 36.067844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.700077, 33.834877, 36.242283>,  <45.726517, 33.620525, 36.346947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.700077, 33.834877, 36.242283>,  <45.656010, 34.192131, 36.067844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.700077, 33.834877, 36.242283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601303, -0.289470, -0.744743,
		0.791390, 0.344270, 0.505154,
		0.110166, -0.893132, 0.436094,
		45.733128, 33.566936, 36.373112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434975, 33.858402, 36.157570>,  <45.656010, 34.192131, 36.067844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434975, 33.858402, 36.157570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.783268, 33.909786, 35.967697>,  <46.992245, 33.940617, 35.853775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.783268, 33.909786, 35.967697>,  <46.434975, 33.858402, 36.157570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.783268, 33.909786, 35.967697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366519, 0.813075, -0.452297,
		0.327849, 0.567810, 0.755054,
		0.870735, 0.128457, -0.474679,
		47.044487, 33.948322, 35.825294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.503700, 34.576729, 36.096260>,  <46.434975, 33.858402, 36.157570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.503700, 34.576729, 36.096260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.738914, 34.431343, 35.807232>,  <46.880043, 34.344112, 35.633816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.738914, 34.431343, 35.807232>,  <46.503700, 34.576729, 36.096260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.738914, 34.431343, 35.807232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081818, 0.862036, -0.500200,
		0.804689, 0.353253, 0.477166,
		0.588031, -0.363465, -0.722573,
		46.915325, 34.322304, 35.590462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.978466, 34.953735, 36.070572>,  <46.503700, 34.576729, 36.096260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.978466, 34.953735, 36.070572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.968353, 34.807335, 35.698463>,  <46.962288, 34.719494, 35.475197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.968353, 34.807335, 35.698463>,  <46.978466, 34.953735, 36.070572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.968353, 34.807335, 35.698463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075068, 0.927248, -0.366847,
		0.996858, -0.079107, 0.004036,
		-0.025278, -0.365997, -0.930273,
		46.960770, 34.697536, 35.419380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.519440, 35.124016, 35.761982>,  <46.978466, 34.953735, 36.070572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.519440, 35.124016, 35.761982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.195530, 35.089050, 35.529903>,  <47.001186, 35.068073, 35.390656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.195530, 35.089050, 35.529903>,  <47.519440, 35.124016, 35.761982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.195530, 35.089050, 35.529903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016348, 0.991818, -0.126605,
		0.586519, -0.093036, -0.804574,
		-0.809771, -0.087410, -0.580199,
		46.952599, 35.062828, 35.355843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.727161, 35.476025, 35.151878>,  <47.519440, 35.124016, 35.761982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.727161, 35.476025, 35.151878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.333580, 35.455257, 35.220165>,  <47.097431, 35.442799, 35.261135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.333580, 35.455257, 35.220165>,  <47.727161, 35.476025, 35.151878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.333580, 35.455257, 35.220165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076052, 0.987502, -0.138041,
		-0.161415, -0.148809, -0.975603,
		-0.983952, -0.051915, 0.170715,
		47.038395, 35.439682, 35.271381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.856831, 34.762207, 35.207935>,  <47.727161, 35.476025, 35.151878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.856831, 34.762207, 35.207935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.714344, 34.824677, 34.839432>,  <47.628853, 34.862160, 34.618328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.714344, 34.824677, 34.839432>,  <47.856831, 34.762207, 35.207935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.714344, 34.824677, 34.839432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158992, -0.981687, -0.104942,
		-0.920778, 0.109091, 0.374523,
		-0.356216, 0.156175, -0.921260,
		47.607479, 34.871529, 34.563053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.295687, 36.884541, 23.435877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.905027, 36.815750, 23.487392>,  <30.670631, 36.774475, 23.518301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.905027, 36.815750, 23.487392>,  <31.295687, 36.884541, 23.435877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905027, 36.815750, 23.487392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179880, -0.326676, 0.927861,
		-0.117498, 0.929359, 0.349982,
		-0.976646, -0.171977, 0.128789,
		30.612034, 36.764156, 23.526030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988605, 37.172344, 24.084345>,  <31.295687, 36.884541, 23.435877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988605, 37.172344, 24.084345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.708681, 36.899609, 23.999155>,  <30.540726, 36.735966, 23.948042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.708681, 36.899609, 23.999155>,  <30.988605, 37.172344, 24.084345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708681, 36.899609, 23.999155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023413, -0.319878, 0.947169,
		-0.713943, 0.657854, 0.239819,
		-0.699812, -0.681840, -0.212972,
		30.498737, 36.695057, 23.935263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390528, 37.168179, 24.573502>,  <30.988605, 37.172344, 24.084345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390528, 37.168179, 24.573502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.421629, 36.805183, 24.408369>,  <30.440289, 36.587387, 24.309290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.421629, 36.805183, 24.408369>,  <30.390528, 37.168179, 24.573502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421629, 36.805183, 24.408369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170151, -0.420086, 0.891390,
		-0.982346, 0.000937, -0.187072,
		0.077752, -0.907484, -0.412829,
		30.444954, 36.532940, 24.284521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946199, 36.818317, 24.901266>,  <30.390528, 37.168179, 24.573502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946199, 36.818317, 24.901266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.195591, 36.542919, 24.753077>,  <30.345226, 36.377682, 24.664164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.195591, 36.542919, 24.753077>,  <29.946199, 36.818317, 24.901266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195591, 36.542919, 24.753077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035131, -0.448697, 0.892993,
		-0.781051, -0.569777, -0.255565,
		0.623479, -0.688495, -0.370472,
		30.382635, 36.336372, 24.641935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649731, 36.252151, 25.127110>,  <29.946199, 36.818317, 24.901266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649731, 36.252151, 25.127110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.025522, 36.149204, 25.036654>,  <30.250998, 36.087437, 24.982380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.025522, 36.149204, 25.036654>,  <29.649731, 36.252151, 25.127110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025522, 36.149204, 25.036654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040911, -0.571067, 0.819883,
		-0.340150, -0.779516, -0.525978,
		0.939481, -0.257365, -0.226139,
		30.307367, 36.071995, 24.968811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652182, 35.568233, 25.176090>,  <29.649731, 36.252151, 25.127110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652182, 35.568233, 25.176090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.044643, 35.645519, 25.176720>,  <30.280121, 35.691891, 25.177097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.044643, 35.645519, 25.176720>,  <29.652182, 35.568233, 25.176090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044643, 35.645519, 25.176720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108221, -0.556245, 0.823942,
		0.160075, -0.808244, -0.566672,
		0.981155, 0.193218, 0.001572,
		30.338989, 35.703484, 25.177191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847759, 34.948593, 25.303684>,  <29.652182, 35.568233, 25.176090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847759, 34.948593, 25.303684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.150284, 35.197186, 25.385418>,  <30.331799, 35.346340, 25.434458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.150284, 35.197186, 25.385418>,  <29.847759, 34.948593, 25.303684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150284, 35.197186, 25.385418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108251, -0.426918, 0.897788,
		0.645195, -0.656886, -0.390158,
		0.756310, 0.621483, 0.204336,
		30.377176, 35.383629, 25.446718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453415, 34.537865, 25.578028>,  <29.847759, 34.948593, 25.303684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453415, 34.537865, 25.578028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.503124, 34.907555, 25.722448>,  <30.532949, 35.129368, 25.809101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.503124, 34.907555, 25.722448>,  <30.453415, 34.537865, 25.578028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503124, 34.907555, 25.722448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236193, -0.380965, 0.893912,
		0.963727, -0.025812, -0.265640,
		0.124273, 0.924229, 0.361049,
		30.540405, 35.184822, 25.830763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018192, 34.497684, 26.018419>,  <30.453415, 34.537865, 25.578028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018192, 34.497684, 26.018419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.860867, 34.842674, 26.145817>,  <30.766472, 35.049667, 26.222256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.860867, 34.842674, 26.145817>,  <31.018192, 34.497684, 26.018419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860867, 34.842674, 26.145817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139743, -0.286308, 0.947892,
		0.908723, 0.417325, -0.007917,
		-0.393312, 0.862478, 0.318493,
		30.742872, 35.101418, 26.241365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471451, 34.642242, 26.634510>,  <31.018192, 34.497684, 26.018419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471451, 34.642242, 26.634510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.162699, 34.894718, 26.664978>,  <30.977448, 35.046204, 26.683258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.162699, 34.894718, 26.664978>,  <31.471451, 34.642242, 26.634510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162699, 34.894718, 26.664978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040435, -0.070824, 0.996669,
		0.634481, 0.772388, 0.029145,
		-0.771880, 0.631189, 0.076168,
		30.931135, 35.084076, 26.687828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681969, 35.115261, 27.048899>,  <31.471451, 34.642242, 26.634510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681969, 35.115261, 27.048899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.283302, 35.096039, 27.075285>,  <31.044104, 35.084507, 27.091116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.283302, 35.096039, 27.075285>,  <31.681969, 35.115261, 27.048899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283302, 35.096039, 27.075285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070684, -0.104245, 0.992037,
		-0.040796, 0.993390, 0.107294,
		-0.996664, -0.048055, 0.065964,
		30.984303, 35.081623, 27.095074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368166, 35.547413, 27.679087>,  <31.681969, 35.115261, 27.048899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368166, 35.547413, 27.679087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.059114, 35.300529, 27.619621>,  <30.873684, 35.152401, 27.583942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.059114, 35.300529, 27.619621>,  <31.368166, 35.547413, 27.679087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059114, 35.300529, 27.619621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059437, -0.162812, 0.984865,
		-0.632071, 0.769770, 0.089108,
		-0.772628, -0.617208, -0.148662,
		30.827326, 35.115368, 27.575022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904333, 35.901348, 28.053041>,  <31.368166, 35.547413, 27.679087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904333, 35.901348, 28.053041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.817305, 35.513252, 28.010519>,  <30.765087, 35.280396, 27.985006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.817305, 35.513252, 28.010519>,  <30.904333, 35.901348, 28.053041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817305, 35.513252, 28.010519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294996, -0.038455, 0.954724,
		-0.930397, 0.239082, -0.277850,
		-0.217573, -0.970238, -0.106306,
		30.752033, 35.222179, 27.978626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315977, 35.785561, 28.411463>,  <30.904333, 35.901348, 28.053041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315977, 35.785561, 28.411463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.441502, 35.407269, 28.377739>,  <30.516817, 35.180294, 28.357506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.441502, 35.407269, 28.377739>,  <30.315977, 35.785561, 28.411463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441502, 35.407269, 28.377739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169717, -0.143236, 0.975028,
		-0.934193, -0.291668, -0.205457,
		0.313813, -0.945734, -0.084309,
		30.535645, 35.123547, 28.352446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932495, 35.392460, 28.943516>,  <30.315977, 35.785561, 28.411463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932495, 35.392460, 28.943516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.250948, 35.161381, 28.871473>,  <30.442020, 35.022736, 28.828249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.250948, 35.161381, 28.871473>,  <29.932495, 35.392460, 28.943516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250948, 35.161381, 28.871473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141491, -0.111665, 0.983621,
		-0.588346, -0.808578, -0.007161,
		0.796134, -0.577696, -0.180104,
		30.489788, 34.988071, 28.817442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759634, 34.822838, 29.400433>,  <29.932495, 35.392460, 28.943516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759634, 34.822838, 29.400433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.144920, 34.776913, 29.303244>,  <30.376091, 34.749355, 29.244930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.144920, 34.776913, 29.303244>,  <29.759634, 34.822838, 29.400433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144920, 34.776913, 29.303244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185467, -0.370278, 0.910218,
		-0.194475, -0.921798, -0.335362,
		0.963214, -0.114816, -0.242973,
		30.433884, 34.742466, 29.230352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954765, 34.144054, 29.605963>,  <29.759634, 34.822838, 29.400433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954765, 34.144054, 29.605963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.289003, 34.362492, 29.582069>,  <30.489546, 34.493553, 29.567734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.289003, 34.362492, 29.582069>,  <29.954765, 34.144054, 29.605963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289003, 34.362492, 29.582069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279652, -0.329254, 0.901880,
		0.472841, -0.770309, -0.427838,
		0.835593, 0.546092, -0.059734,
		30.539680, 34.526318, 29.564150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486027, 33.677410, 29.792076>,  <29.954765, 34.144054, 29.605963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486027, 33.677410, 29.792076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.628660, 34.048294, 29.837919>,  <30.714239, 34.270824, 29.865425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.628660, 34.048294, 29.837919>,  <30.486027, 33.677410, 29.792076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628660, 34.048294, 29.837919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125657, -0.169154, 0.977547,
		0.925775, -0.334174, -0.176828,
		0.356582, 0.927208, 0.114608,
		30.735634, 34.326458, 29.872301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930662, 33.558300, 30.311064>,  <30.486027, 33.677410, 29.792076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930662, 33.558300, 30.311064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.863047, 33.952541, 30.309774>,  <30.822477, 34.189087, 30.309000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.863047, 33.952541, 30.309774>,  <30.930662, 33.558300, 30.311064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863047, 33.952541, 30.309774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154935, 0.029801, 0.987475,
		0.973356, 0.166420, -0.157742,
		-0.169036, 0.985605, -0.003223,
		30.812336, 34.248222, 30.308807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372808, 33.806854, 30.777594>,  <30.930662, 33.558300, 30.311064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372808, 33.806854, 30.777594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.085318, 34.084259, 30.757704>,  <30.912823, 34.250702, 30.745770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.085318, 34.084259, 30.757704>,  <31.372808, 33.806854, 30.777594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085318, 34.084259, 30.757704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026832, 0.099130, 0.994713,
		0.694776, 0.713591, -0.089855,
		-0.718726, 0.693513, -0.049726,
		30.869699, 34.292313, 30.742786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624969, 34.398148, 31.118509>,  <31.372808, 33.806854, 30.777594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624969, 34.398148, 31.118509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.225410, 34.414806, 31.127174>,  <30.985676, 34.424801, 31.132374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.225410, 34.414806, 31.127174>,  <31.624969, 34.398148, 31.118509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225410, 34.414806, 31.127174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030381, 0.221752, 0.974630,
		0.035789, 0.974213, -0.222773,
		-0.998897, 0.041649, 0.021661,
		30.925741, 34.427299, 31.133673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963039, 34.389809, 31.797117>,  <31.624969, 34.398148, 31.118509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963039, 34.389809, 31.797117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.259678, 34.624290, 31.927593>,  <32.437660, 34.764980, 32.005878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.259678, 34.624290, 31.927593>,  <31.963039, 34.389809, 31.797117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259678, 34.624290, 31.927593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139144, 0.341253, -0.929616,
		-0.656258, 0.734787, 0.171505,
		0.741596, 0.586203, 0.326191,
		32.482155, 34.800152, 32.025452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860374, 35.057793, 31.476732>,  <31.963039, 34.389809, 31.797117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860374, 35.057793, 31.476732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.249043, 34.982021, 31.533270>,  <32.482243, 34.936558, 31.567192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.249043, 34.982021, 31.533270>,  <31.860374, 35.057793, 31.476732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249043, 34.982021, 31.533270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179871, 0.204730, -0.962150,
		0.153323, 0.960313, 0.233003,
		0.971668, -0.189430, 0.141343,
		32.540543, 34.925194, 31.575672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123493, 35.649975, 31.286419>,  <31.860374, 35.057793, 31.476732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123493, 35.649975, 31.286419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.428776, 35.391716, 31.276155>,  <32.611946, 35.236759, 31.269999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.428776, 35.391716, 31.276155>,  <32.123493, 35.649975, 31.286419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428776, 35.391716, 31.276155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195654, 0.268758, -0.943127,
		0.615822, 0.714780, 0.331441,
		0.763206, -0.645646, -0.025657,
		32.657738, 35.198021, 31.268457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723740, 35.975437, 30.938948>,  <32.123493, 35.649975, 31.286419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723740, 35.975437, 30.938948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.864613, 35.601097, 30.933954>,  <32.949139, 35.376495, 30.930958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.864613, 35.601097, 30.933954>,  <32.723740, 35.975437, 30.938948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864613, 35.601097, 30.933954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160548, 0.073547, -0.984284,
		0.922057, 0.344647, 0.176150,
		0.352186, -0.935847, -0.012482,
		32.970268, 35.320343, 30.930210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398056, 36.020416, 30.622154>,  <32.723740, 35.975437, 30.938948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398056, 36.020416, 30.622154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.290642, 35.636566, 30.588667>,  <33.226192, 35.406258, 30.568575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.290642, 35.636566, 30.588667>,  <33.398056, 36.020416, 30.622154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290642, 35.636566, 30.588667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225316, 0.021926, -0.974039,
		0.936549, -0.280424, 0.210331,
		-0.268532, -0.959626, -0.083719,
		33.210083, 35.348679, 30.563551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021454, 35.544621, 30.503500>,  <33.398056, 36.020416, 30.622154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021454, 35.544621, 30.503500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.702480, 35.358070, 30.350355>,  <33.511093, 35.246140, 30.258469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.702480, 35.358070, 30.350355>,  <34.021454, 35.544621, 30.503500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702480, 35.358070, 30.350355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342152, 0.173143, -0.923555,
		0.497015, -0.867475, 0.021501,
		-0.797438, -0.466377, -0.382863,
		33.463249, 35.218159, 30.235497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316956, 35.032574, 29.842747>,  <34.021454, 35.544621, 30.503500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316956, 35.032574, 29.842747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.922733, 35.086319, 29.801512>,  <33.686199, 35.118568, 29.776772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.922733, 35.086319, 29.801512>,  <34.316956, 35.032574, 29.842747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922733, 35.086319, 29.801512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102205, -0.013455, -0.994672,
		-0.135038, -0.990840, -0.000473,
		-0.985555, 0.134367, -0.103086,
		33.627068, 35.126629, 29.770586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081799, 34.521191, 29.238684>,  <34.316956, 35.032574, 29.842747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081799, 34.521191, 29.238684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.797100, 34.801239, 29.261480>,  <33.626282, 34.969269, 29.275158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.797100, 34.801239, 29.261480>,  <34.081799, 34.521191, 29.238684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797100, 34.801239, 29.261480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098922, -0.019578, -0.994903,
		-0.695441, -0.713752, 0.083192,
		-0.711742, 0.700125, 0.056990,
		33.583576, 35.011276, 29.278578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565414, 34.376099, 28.642679>,  <34.081799, 34.521191, 29.238684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565414, 34.376099, 28.642679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.482845, 34.754795, 28.741528>,  <33.433304, 34.982014, 28.800837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.482845, 34.754795, 28.741528>,  <33.565414, 34.376099, 28.642679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482845, 34.754795, 28.741528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185991, 0.209989, -0.959850,
		-0.960623, -0.244097, 0.132739,
		-0.206423, 0.946742, 0.247121,
		33.420918, 35.038818, 28.815664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036171, 34.592762, 28.221617>,  <33.565414, 34.376099, 28.642679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036171, 34.592762, 28.221617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.170906, 34.950394, 28.339708>,  <33.251747, 35.164974, 28.410563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.170906, 34.950394, 28.339708>,  <33.036171, 34.592762, 28.221617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170906, 34.950394, 28.339708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326826, 0.405080, -0.853871,
		-0.883020, 0.191129, 0.428655,
		0.336839, 0.894081, 0.295228,
		33.271957, 35.218616, 28.428276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512768, 35.147438, 28.022266>,  <33.036171, 34.592762, 28.221617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512768, 35.147438, 28.022266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.861130, 35.341473, 28.053782>,  <33.070148, 35.457893, 28.072691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.861130, 35.341473, 28.053782>,  <32.512768, 35.147438, 28.022266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861130, 35.341473, 28.053782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201694, 0.499004, -0.842802,
		-0.448150, 0.718111, 0.532426,
		0.870908, 0.485089, 0.078790,
		33.122402, 35.487000, 28.077419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343140, 35.783642, 27.876543>,  <32.512768, 35.147438, 28.022266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343140, 35.783642, 27.876543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.734058, 35.748089, 27.799616>,  <32.968609, 35.726757, 27.753460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.734058, 35.748089, 27.799616>,  <32.343140, 35.783642, 27.876543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734058, 35.748089, 27.799616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134226, 0.442588, -0.886622,
		0.163920, 0.892309, 0.420611,
		0.977299, -0.088878, -0.192320,
		33.027248, 35.721424, 27.741920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648472, 36.418846, 27.624405>,  <32.343140, 35.783642, 27.876543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648472, 36.418846, 27.624405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.929604, 36.159904, 27.506454>,  <33.098282, 36.004539, 27.435684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.929604, 36.159904, 27.506454>,  <32.648472, 36.418846, 27.624405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929604, 36.159904, 27.506454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032183, 0.385165, -0.922286,
		0.710625, 0.657704, 0.249873,
		0.702834, -0.647359, -0.294874,
		33.140453, 35.965698, 27.417992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010639, 36.752197, 27.251919>,  <32.648472, 36.418846, 27.624405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010639, 36.752197, 27.251919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.151253, 36.403252, 27.116037>,  <33.235622, 36.193882, 27.034508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.151253, 36.403252, 27.116037>,  <33.010639, 36.752197, 27.251919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151253, 36.403252, 27.116037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043591, 0.377722, -0.924892,
		0.935160, 0.310322, 0.170809,
		0.351533, -0.872368, -0.339703,
		33.256714, 36.141541, 27.014126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591095, 36.954121, 26.731983>,  <33.010639, 36.752197, 27.251919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591095, 36.954121, 26.731983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.447147, 36.589378, 26.652977>,  <33.360779, 36.370533, 26.605574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.447147, 36.589378, 26.652977>,  <33.591095, 36.954121, 26.731983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447147, 36.589378, 26.652977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119232, 0.254910, -0.959586,
		0.925353, -0.321774, -0.200456,
		-0.359868, -0.911856, -0.197516,
		33.339188, 36.315823, 26.593721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023266, 36.703453, 26.241505>,  <33.591095, 36.954121, 26.731983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023266, 36.703453, 26.241505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.694710, 36.476349, 26.219709>,  <33.497578, 36.340084, 26.206633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.694710, 36.476349, 26.219709>,  <34.023266, 36.703453, 26.241505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694710, 36.476349, 26.219709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009026, 0.082582, -0.996544,
		0.570302, -0.819038, -0.062706,
		-0.821386, -0.567765, -0.054489,
		33.448296, 36.306019, 26.203363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147373, 36.263657, 25.700054>,  <34.023266, 36.703453, 26.241505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147373, 36.263657, 25.700054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.749439, 36.263779, 25.740662>,  <33.510677, 36.263851, 25.765026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.749439, 36.263779, 25.740662>,  <34.147373, 36.263657, 25.700054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749439, 36.263779, 25.740662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101513, -0.014743, -0.994725,
		0.001202, -0.999891, 0.014697,
		-0.994834, 0.000296, 0.101520,
		33.450989, 36.263870, 25.771118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919937, 35.978951, 25.178356>,  <34.147373, 36.263657, 25.700054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919937, 35.978951, 25.178356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.562225, 36.130615, 25.273439>,  <33.347599, 36.221615, 25.330488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.562225, 36.130615, 25.273439>,  <33.919937, 35.978951, 25.178356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562225, 36.130615, 25.273439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198483, 0.140016, -0.970052,
		-0.401088, -0.914677, -0.049956,
		-0.894278, 0.379160, 0.237707,
		33.293941, 36.244362, 25.344751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426411, 35.701847, 24.728991>,  <33.919937, 35.978951, 25.178356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426411, 35.701847, 24.728991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.276131, 36.048889, 24.859289>,  <33.185963, 36.257114, 24.937468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.276131, 36.048889, 24.859289>,  <33.426411, 35.701847, 24.728991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276131, 36.048889, 24.859289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236329, 0.250182, -0.938913,
		-0.896101, -0.429734, 0.111047,
		-0.375701, 0.867605, 0.325747,
		33.163422, 36.309170, 24.957014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.853783, 35.778397, 24.299965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.892139, 36.147015, 24.450466>,  <32.915154, 36.368183, 24.540768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.892139, 36.147015, 24.450466>,  <32.853783, 35.778397, 24.299965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892139, 36.147015, 24.450466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469082, 0.375227, -0.799479,
		-0.877934, -0.099833, 0.468259,
		0.095888, 0.921541, 0.376254,
		32.920906, 36.423477, 24.563343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117977, 36.250168, 24.313692>,  <32.853783, 35.778397, 24.299965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117977, 36.250168, 24.313692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.426056, 36.503376, 24.282480>,  <32.610901, 36.655300, 24.263752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.426056, 36.503376, 24.282480>,  <32.117977, 36.250168, 24.313692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426056, 36.503376, 24.282480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409030, 0.396346, -0.821952,
		-0.489385, 0.664978, 0.564187,
		0.770193, 0.633020, -0.078030,
		32.657112, 36.693283, 24.259071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794060, 36.939014, 24.134750>,  <32.117977, 36.250168, 24.313692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794060, 36.939014, 24.134750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.185844, 36.975746, 24.062948>,  <32.420914, 36.997784, 24.019867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.185844, 36.975746, 24.062948>,  <31.794060, 36.939014, 24.134750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185844, 36.975746, 24.062948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198724, 0.590261, -0.782369,
		0.034114, 0.801973, 0.596386,
		0.979462, 0.091826, -0.179507,
		32.479683, 37.003292, 24.009096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881262, 37.678997, 24.144506>,  <31.794060, 36.939014, 24.134750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881262, 37.678997, 24.144506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.203003, 37.533421, 23.956650>,  <32.396049, 37.446075, 23.843935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.203003, 37.533421, 23.956650>,  <31.881262, 37.678997, 24.144506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203003, 37.533421, 23.956650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128768, 0.664878, -0.735769,
		0.580029, 0.652293, 0.487933,
		0.804354, -0.363938, -0.469643,
		32.444309, 37.424240, 23.815758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109631, 38.319759, 23.731319>,  <31.881262, 37.678997, 24.144506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109631, 38.319759, 23.731319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302971, 38.004322, 23.579269>,  <32.418976, 37.815060, 23.488039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302971, 38.004322, 23.579269>,  <32.109631, 38.319759, 23.731319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302971, 38.004322, 23.579269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178779, 0.513980, -0.838965,
		0.856980, 0.337553, 0.389415,
		0.483347, -0.788595, -0.380123,
		32.447975, 37.767742, 23.465233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758324, 38.562069, 23.597820>,  <32.109631, 38.319759, 23.731319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758324, 38.562069, 23.597820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.686378, 38.243496, 23.366877>,  <32.643211, 38.052353, 23.228310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.686378, 38.243496, 23.366877>,  <32.758324, 38.562069, 23.597820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686378, 38.243496, 23.366877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222107, 0.538895, -0.812564,
		0.958289, -0.274388, 0.079965,
		-0.179865, -0.796432, -0.577360,
		32.632420, 38.004566, 23.193668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336304, 38.452328, 23.111795>,  <32.758324, 38.562069, 23.597820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336304, 38.452328, 23.111795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.007328, 38.287716, 22.954702>,  <32.809944, 38.188950, 22.860447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.007328, 38.287716, 22.954702>,  <33.336304, 38.452328, 23.111795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007328, 38.287716, 22.954702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121782, 0.547010, -0.828221,
		0.555695, -0.728974, -0.399751,
		-0.822418, -0.411555, -0.392746,
		32.760597, 38.164257, 22.836882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325390, 38.700642, 22.491690>,  <33.336304, 38.452328, 23.111795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325390, 38.700642, 22.491690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.976967, 38.508850, 22.449055>,  <32.767914, 38.393776, 22.423473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.976967, 38.508850, 22.449055>,  <33.325390, 38.700642, 22.491690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976967, 38.508850, 22.449055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095564, 0.378283, -0.920744,
		0.481801, -0.791832, -0.375326,
		-0.871054, -0.479483, -0.106587,
		32.715649, 38.365005, 22.417078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356750, 38.291389, 21.884758>,  <33.325390, 38.700642, 22.491690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356750, 38.291389, 21.884758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.984863, 38.407967, 21.974808>,  <32.761730, 38.477913, 22.028837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.984863, 38.407967, 21.974808>,  <33.356750, 38.291389, 21.884758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984863, 38.407967, 21.974808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040068, 0.527616, -0.848538,
		-0.366082, -0.797922, -0.478857,
		-0.929719, 0.291447, 0.225122,
		32.705948, 38.495399, 22.042345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936188, 38.122219, 21.311697>,  <33.356750, 38.291389, 21.884758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936188, 38.122219, 21.311697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.714027, 38.398167, 21.497433>,  <32.580730, 38.563736, 21.608873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.714027, 38.398167, 21.497433>,  <32.936188, 38.122219, 21.311697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714027, 38.398167, 21.497433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105933, 0.495136, -0.862333,
		-0.824810, -0.528127, -0.201917,
		-0.555398, 0.689871, 0.464339,
		32.547409, 38.605129, 21.636734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607449, 38.436901, 20.770235>,  <32.936188, 38.122219, 21.311697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607449, 38.436901, 20.770235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.516949, 38.670540, 21.082039>,  <32.462650, 38.810722, 21.269121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.516949, 38.670540, 21.082039>,  <32.607449, 38.436901, 20.770235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516949, 38.670540, 21.082039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230316, 0.745492, -0.625457,
		-0.946449, -0.321044, -0.034140,
		-0.226250, 0.584100, 0.779512,
		32.449074, 38.845768, 21.315893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941442, 38.730301, 20.640507>,  <32.607449, 38.436901, 20.770235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941442, 38.730301, 20.640507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.158173, 38.978210, 20.867596>,  <32.288212, 39.126957, 21.003849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.158173, 38.978210, 20.867596>,  <31.941442, 38.730301, 20.640507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158173, 38.978210, 20.867596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195081, 0.749754, -0.632308,
		-0.817540, 0.231847, 0.527140,
		0.541824, 0.619771, 0.567724,
		32.320721, 39.164143, 21.037912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558931, 39.367489, 20.573769>,  <31.941442, 38.730301, 20.640507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558931, 39.367489, 20.573769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.904251, 39.478794, 20.742191>,  <32.111443, 39.545578, 20.843245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.904251, 39.478794, 20.742191>,  <31.558931, 39.367489, 20.573769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904251, 39.478794, 20.742191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015905, 0.848862, -0.528375,
		-0.504444, 0.449448, 0.737246,
		0.863298, 0.278262, 0.421055,
		32.163239, 39.562271, 20.868507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446781, 40.065586, 20.790348>,  <31.558931, 39.367489, 20.573769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446781, 40.065586, 20.790348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841415, 40.005180, 20.765547>,  <32.078197, 39.968937, 20.750666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841415, 40.005180, 20.765547>,  <31.446781, 40.065586, 20.790348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841415, 40.005180, 20.765547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109598, 0.894228, -0.433987,
		0.120982, 0.421370, 0.898783,
		0.986586, -0.151010, -0.062005,
		32.137390, 39.959877, 20.746946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814936, 40.778427, 21.015951>,  <31.446781, 40.065586, 20.790348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814936, 40.778427, 21.015951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.053101, 40.539356, 20.801191>,  <32.195999, 40.395912, 20.672335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.053101, 40.539356, 20.801191>,  <31.814936, 40.778427, 21.015951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053101, 40.539356, 20.801191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080666, 0.709364, -0.700211,
		0.799359, 0.373606, 0.470578,
		0.595414, -0.597679, -0.536900,
		32.231724, 40.360054, 20.640121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337353, 41.355877, 20.801182>,  <31.814936, 40.778427, 21.015951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337353, 41.355877, 20.801182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.360584, 41.025703, 20.576578>,  <32.374523, 40.827599, 20.441816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.360584, 41.025703, 20.576578>,  <32.337353, 41.355877, 20.801182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360584, 41.025703, 20.576578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008468, 0.562844, -0.826520,
		0.998276, 0.043252, 0.039681,
		0.058083, -0.825431, -0.561507,
		32.378010, 40.778072, 20.408127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715656, 41.515400, 20.258026>,  <32.337353, 41.355877, 20.801182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715656, 41.515400, 20.258026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.494663, 41.213276, 20.117020>,  <32.362068, 41.032001, 20.032415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.494663, 41.213276, 20.117020>,  <32.715656, 41.515400, 20.258026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494663, 41.213276, 20.117020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213485, 0.537041, -0.816095,
		0.805724, -0.375618, -0.457952,
		-0.552479, -0.755313, -0.352518,
		32.328918, 40.986683, 20.011265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763615, 41.547417, 19.655943>,  <32.715656, 41.515400, 20.258026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763615, 41.547417, 19.655943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.443523, 41.311440, 19.612865>,  <32.251469, 41.169853, 19.587019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.443523, 41.311440, 19.612865>,  <32.763615, 41.547417, 19.655943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443523, 41.311440, 19.612865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180006, 0.407591, -0.895247,
		0.572043, -0.697016, -0.432359,
		-0.800228, -0.589947, -0.107693,
		32.203453, 41.134457, 19.580557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758335, 41.313393, 18.968029>,  <32.763615, 41.547417, 19.655943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758335, 41.313393, 18.968029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.373928, 41.282211, 19.074142>,  <32.143284, 41.263504, 19.137810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.373928, 41.282211, 19.074142>,  <32.758335, 41.313393, 18.968029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373928, 41.282211, 19.074142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275550, 0.349356, -0.895557,
		-0.022869, -0.933742, -0.357215,
		-0.961015, -0.077950, 0.265282,
		32.085625, 41.258827, 19.153727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438293, 41.220592, 18.382637>,  <32.758335, 41.313393, 18.968029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438293, 41.220592, 18.382637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.141483, 41.321484, 18.631083>,  <31.963398, 41.382019, 18.780149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.141483, 41.321484, 18.631083>,  <32.438293, 41.220592, 18.382637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141483, 41.321484, 18.631083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387063, 0.595279, -0.704149,
		-0.547342, -0.762905, -0.344083,
		-0.742024, 0.252228, 0.621113,
		31.918877, 41.397152, 18.817417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824745, 41.081020, 18.025101>,  <32.438293, 41.220592, 18.382637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824745, 41.081020, 18.025101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.697897, 41.338203, 18.303967>,  <31.621788, 41.492512, 18.471287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.697897, 41.338203, 18.303967>,  <31.824745, 41.081020, 18.025101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697897, 41.338203, 18.303967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528207, 0.490800, -0.692902,
		-0.787675, -0.587983, 0.183970,
		-0.317122, 0.642956, 0.697167,
		31.602760, 41.531090, 18.513117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115057, 41.151104, 17.904863>,  <31.824745, 41.081020, 18.025101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115057, 41.151104, 17.904863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.184929, 41.467911, 18.138853>,  <31.226852, 41.657993, 18.279247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.184929, 41.467911, 18.138853>,  <31.115057, 41.151104, 17.904863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184929, 41.467911, 18.138853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673409, 0.529532, -0.515864,
		-0.718336, -0.303816, 0.625850,
		0.174680, 0.792017, 0.584975,
		31.237333, 41.705517, 18.314346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563520, 41.414448, 18.051809>,  <31.115057, 41.151104, 17.904863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563520, 41.414448, 18.051809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.779011, 41.750191, 18.080799>,  <30.908306, 41.951637, 18.098192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.779011, 41.750191, 18.080799>,  <30.563520, 41.414448, 18.051809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779011, 41.750191, 18.080799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642466, 0.464952, -0.609145,
		-0.544987, 0.281601, 0.789740,
		0.538727, 0.839357, 0.072474,
		30.940628, 42.001999, 18.102541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109245, 42.090805, 18.213484>,  <30.563520, 41.414448, 18.051809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109245, 42.090805, 18.213484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.445215, 42.154778, 18.006044>,  <30.646797, 42.193161, 17.881580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.445215, 42.154778, 18.006044>,  <30.109245, 42.090805, 18.213484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445215, 42.154778, 18.006044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536298, 0.390965, -0.748018,
		0.083119, 0.906403, 0.414154,
		0.839926, 0.159936, -0.518599,
		30.697193, 42.202759, 17.850464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701653, 42.636581, 17.955889>,  <30.109245, 42.090805, 18.213484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701653, 42.636581, 17.955889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.358835, 42.487377, 17.813709>,  <29.153145, 42.397854, 17.728401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.358835, 42.487377, 17.813709>,  <29.701653, 42.636581, 17.955889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358835, 42.487377, 17.813709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189205, -0.413833, 0.890474,
		-0.479251, 0.830426, 0.284097,
		-0.857041, -0.373008, -0.355451,
		29.101723, 42.375473, 17.707073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310007, 42.633213, 18.471806>,  <29.701653, 42.636581, 17.955889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310007, 42.633213, 18.471806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.128265, 42.367989, 18.233843>,  <29.019220, 42.208855, 18.091066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.128265, 42.367989, 18.233843>,  <29.310007, 42.633213, 18.471806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128265, 42.367989, 18.233843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059442, -0.643762, 0.762914,
		-0.888835, 0.381997, 0.253083,
		-0.454356, -0.663061, -0.594904,
		28.991959, 42.169071, 18.055372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651361, 42.467041, 18.769926>,  <29.310007, 42.633213, 18.471806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651361, 42.467041, 18.769926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.745872, 42.153770, 18.539860>,  <28.802580, 41.965809, 18.401821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.745872, 42.153770, 18.539860>,  <28.651361, 42.467041, 18.769926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745872, 42.153770, 18.539860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194392, -0.618056, 0.761720,
		-0.952042, -0.068172, -0.298276,
		0.236280, -0.783172, -0.575163,
		28.816757, 41.918819, 18.367311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182306, 41.885506, 19.045275>,  <28.651361, 42.467041, 18.769926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182306, 41.885506, 19.045275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.443060, 41.686890, 18.816017>,  <28.599512, 41.567719, 18.678463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.443060, 41.686890, 18.816017>,  <28.182306, 41.885506, 19.045275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443060, 41.686890, 18.816017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112838, -0.810911, 0.574187,
		-0.749875, -0.309632, -0.584650,
		0.651885, -0.496539, -0.573144,
		28.638624, 41.537930, 18.644073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885839, 41.205452, 18.927494>,  <28.182306, 41.885506, 19.045275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885839, 41.205452, 18.927494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.280718, 41.177517, 18.870131>,  <28.517645, 41.160755, 18.835712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.280718, 41.177517, 18.870131>,  <27.885839, 41.205452, 18.927494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280718, 41.177517, 18.870131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019361, -0.839949, 0.542320,
		-0.158328, -0.538153, -0.827843,
		0.987197, -0.069836, -0.143406,
		28.576878, 41.156567, 18.827108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031946, 40.484322, 18.735142>,  <27.885839, 41.205452, 18.927494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031946, 40.484322, 18.735142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.371500, 40.618454, 18.898577>,  <28.575233, 40.698933, 18.996637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.371500, 40.618454, 18.898577>,  <28.031946, 40.484322, 18.735142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371500, 40.618454, 18.898577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091430, -0.854502, 0.511339,
		0.520608, -0.396711, -0.756034,
		0.848886, 0.335331, 0.408590,
		28.626165, 40.719051, 19.021154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338312, 39.877731, 18.895767>,  <28.031946, 40.484322, 18.735142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338312, 39.877731, 18.895767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.565281, 40.130287, 19.107193>,  <28.701462, 40.281822, 19.234049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.565281, 40.130287, 19.107193>,  <28.338312, 39.877731, 18.895767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565281, 40.130287, 19.107193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257575, -0.745794, 0.614367,
		0.782105, -0.212459, -0.585810,
		0.567421, 0.631389, 0.528565,
		28.735508, 40.319702, 19.265762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964180, 39.486279, 19.120176>,  <28.338312, 39.877731, 18.895767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964180, 39.486279, 19.120176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.980663, 39.816616, 19.345131>,  <28.990553, 40.014820, 19.480104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.980663, 39.816616, 19.345131>,  <28.964180, 39.486279, 19.120176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980663, 39.816616, 19.345131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580293, -0.477985, 0.659386,
		0.813365, 0.299178, -0.498929,
		0.041207, 0.825846, 0.562387,
		28.993025, 40.064369, 19.513847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642567, 39.542847, 19.344847>,  <28.964180, 39.486279, 19.120176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642567, 39.542847, 19.344847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.406372, 39.727753, 19.609465>,  <29.264656, 39.838696, 19.768234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.406372, 39.727753, 19.609465>,  <29.642567, 39.542847, 19.344847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406372, 39.727753, 19.609465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442147, -0.500447, 0.744351,
		0.675155, 0.732027, 0.091117,
		-0.590485, 0.462265, 0.661543,
		29.229227, 39.866432, 19.807928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026943, 39.602257, 19.917622>,  <29.642567, 39.542847, 19.344847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026943, 39.602257, 19.917622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.674873, 39.658352, 20.099003>,  <29.463631, 39.692009, 20.207832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.674873, 39.658352, 20.099003>,  <30.026943, 39.602257, 19.917622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674873, 39.658352, 20.099003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297330, -0.581775, 0.757055,
		0.369978, 0.801168, 0.470368,
		-0.880177, 0.140240, 0.453455,
		29.410820, 39.700424, 20.235039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178446, 39.806538, 20.624899>,  <30.026943, 39.602257, 19.917622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178446, 39.806538, 20.624899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.806719, 39.659443, 20.638390>,  <29.583683, 39.571186, 20.646484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.806719, 39.659443, 20.638390>,  <30.178446, 39.806538, 20.624899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806719, 39.659443, 20.638390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239220, -0.529917, 0.813610,
		-0.281321, 0.764171, 0.580432,
		-0.929318, -0.367737, 0.033728,
		29.527924, 39.549122, 20.648508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904587, 39.847187, 21.337339>,  <30.178446, 39.806538, 20.624899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904587, 39.847187, 21.337339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.693033, 39.576576, 21.132364>,  <29.566101, 39.414211, 21.009378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.693033, 39.576576, 21.132364>,  <29.904587, 39.847187, 21.337339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693033, 39.576576, 21.132364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192681, -0.683744, 0.703824,
		-0.826533, 0.273503, 0.491974,
		-0.528883, -0.676528, -0.512438,
		29.534369, 39.373619, 20.978632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551569, 39.516926, 21.869938>,  <29.904587, 39.847187, 21.337339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551569, 39.516926, 21.869938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.558233, 39.247517, 21.574345>,  <29.562231, 39.085873, 21.396990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.558233, 39.247517, 21.574345>,  <29.551569, 39.516926, 21.869938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558233, 39.247517, 21.574345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321795, -0.696149, 0.641736,
		-0.946663, -0.248493, 0.205137,
		0.016661, -0.673520, -0.738982,
		29.563231, 39.045460, 21.352650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176155, 38.954262, 22.150640>,  <29.551569, 39.516926, 21.869938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176155, 38.954262, 22.150640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.416414, 38.799587, 21.870728>,  <29.560570, 38.706783, 21.702780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.416414, 38.799587, 21.870728>,  <29.176155, 38.954262, 22.150640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416414, 38.799587, 21.870728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286703, -0.712874, 0.640010,
		-0.746340, -0.585050, -0.317322,
		0.600648, -0.386688, -0.699782,
		29.596609, 38.683582, 21.660793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154177, 38.285275, 22.335060>,  <29.176155, 38.954262, 22.150640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154177, 38.285275, 22.335060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.450233, 38.250504, 22.068336>,  <29.627869, 38.229641, 21.908302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.450233, 38.250504, 22.068336>,  <29.154177, 38.285275, 22.335060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450233, 38.250504, 22.068336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311865, -0.834149, 0.454902,
		-0.595759, -0.544647, -0.590281,
		0.740143, -0.086924, -0.666808,
		29.672276, 38.224426, 21.868294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124550, 37.609936, 22.103376>,  <29.154177, 38.285275, 22.335060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124550, 37.609936, 22.103376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.500608, 37.744156, 22.079617>,  <29.726244, 37.824688, 22.065361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.500608, 37.744156, 22.079617>,  <29.124550, 37.609936, 22.103376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500608, 37.744156, 22.079617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324297, -0.827481, 0.458375,
		0.104657, -0.450203, -0.886772,
		0.940148, 0.335550, -0.059398,
		29.782654, 37.844822, 22.061796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503807, 37.036392, 21.856674>,  <29.124550, 37.609936, 22.103376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503807, 37.036392, 21.856674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.747326, 37.293652, 22.042459>,  <29.893438, 37.448006, 22.153931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.747326, 37.293652, 22.042459>,  <29.503807, 37.036392, 21.856674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747326, 37.293652, 22.042459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307662, -0.731052, 0.609021,
		0.731238, -0.227873, -0.642935,
		0.608798, 0.643146, 0.464465,
		29.929966, 37.486595, 22.181799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012846, 36.572468, 22.017097>,  <29.503807, 37.036392, 21.856674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012846, 36.572468, 22.017097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.075998, 36.899872, 22.238045>,  <30.113890, 37.096313, 22.370613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.075998, 36.899872, 22.238045>,  <30.012846, 36.572468, 22.017097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075998, 36.899872, 22.238045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400428, -0.564396, 0.721883,
		0.902625, 0.107214, -0.416861,
		0.157879, 0.818512, 0.552370,
		30.123362, 37.145424, 22.403755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592146, 36.402058, 22.359358>,  <30.012846, 36.572468, 22.017097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592146, 36.402058, 22.359358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.428442, 36.696629, 22.574833>,  <30.330219, 36.873371, 22.704119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.428442, 36.696629, 22.574833>,  <30.592146, 36.402058, 22.359358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428442, 36.696629, 22.574833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308782, -0.443775, 0.841260,
		0.858581, 0.510630, -0.045776,
		-0.409258, 0.736424, 0.538690,
		30.305664, 36.917557, 22.736441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139395, 36.706047, 22.751749>,  <30.592146, 36.402058, 22.359358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139395, 36.706047, 22.751749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.785072, 36.767101, 22.927044>,  <30.572479, 36.803734, 23.032221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.785072, 36.767101, 22.927044>,  <31.139395, 36.706047, 22.751749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785072, 36.767101, 22.927044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346023, -0.412017, 0.842918,
		0.309220, 0.898301, 0.312152,
		-0.885805, 0.152635, 0.438237,
		30.519331, 36.812893, 23.058516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<34.066429, 35.151741, 26.997734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.791191, 35.412720, 27.124748>,  <33.626049, 35.569309, 27.200956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.791191, 35.412720, 27.124748>,  <34.066429, 35.151741, 26.997734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791191, 35.412720, 27.124748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153313, -0.297001, 0.942489,
		0.709235, 0.697208, 0.104337,
		-0.688099, 0.652450, 0.317534,
		33.584763, 35.608456, 27.220009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308117, 35.644062, 27.498274>,  <34.066429, 35.151741, 26.997734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308117, 35.644062, 27.498274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.915752, 35.635765, 27.575613>,  <33.680332, 35.630787, 27.622017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.915752, 35.635765, 27.575613>,  <34.308117, 35.644062, 27.498274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915752, 35.635765, 27.575613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194414, -0.125624, 0.972842,
		0.004110, 0.991861, 0.127258,
		-0.980911, -0.020742, 0.193348,
		33.621479, 35.629543, 27.633617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263527, 36.028202, 28.176134>,  <34.308117, 35.644062, 27.498274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263527, 36.028202, 28.176134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.901264, 35.860268, 28.152378>,  <33.683907, 35.759506, 28.138124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.901264, 35.860268, 28.152378>,  <34.263527, 36.028202, 28.176134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901264, 35.860268, 28.152378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007558, -0.156030, 0.987723,
		-0.423945, 0.894089, 0.144482,
		-0.905656, -0.419833, -0.059391,
		33.629566, 35.734318, 28.134562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916954, 36.316330, 28.707209>,  <34.263527, 36.028202, 28.176134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916954, 36.316330, 28.707209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.715412, 35.980244, 28.627050>,  <33.594486, 35.778591, 28.578955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.715412, 35.980244, 28.627050>,  <33.916954, 36.316330, 28.707209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715412, 35.980244, 28.627050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185807, -0.121141, 0.975090,
		-0.843565, 0.528544, -0.095080,
		-0.503859, -0.840218, -0.200398,
		33.564255, 35.728180, 28.566931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261246, 36.320839, 29.110239>,  <33.916954, 36.316330, 28.707209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261246, 36.320839, 29.110239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.315334, 35.929848, 29.045441>,  <33.347790, 35.695251, 29.006561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.315334, 35.929848, 29.045441>,  <33.261246, 36.320839, 29.110239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315334, 35.929848, 29.045441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261917, -0.192945, 0.945606,
		-0.955570, -0.085439, -0.282110,
		0.135224, -0.977483, -0.161994,
		33.355900, 35.636604, 28.996841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656353, 35.993740, 29.400702>,  <33.261246, 36.320839, 29.110239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656353, 35.993740, 29.400702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.928333, 35.703876, 29.355915>,  <33.091522, 35.529957, 29.329042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.928333, 35.703876, 29.355915>,  <32.656353, 35.993740, 29.400702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928333, 35.703876, 29.355915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248728, -0.371587, 0.894460,
		-0.689784, -0.580338, -0.432903,
		0.679950, -0.724659, -0.111968,
		33.132320, 35.486481, 29.322325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336315, 35.450188, 29.696095>,  <32.656353, 35.993740, 29.400702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336315, 35.450188, 29.696095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.722008, 35.348179, 29.724995>,  <32.953423, 35.286972, 29.742334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.722008, 35.348179, 29.724995>,  <32.336315, 35.450188, 29.696095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722008, 35.348179, 29.724995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160770, -0.345974, 0.924367,
		-0.210739, -0.902920, -0.374600,
		0.964232, -0.255024, 0.072252,
		33.011276, 35.271671, 29.746670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320385, 34.692688, 29.846014>,  <32.336315, 35.450188, 29.696095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320385, 34.692688, 29.846014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.671104, 34.850460, 29.956030>,  <32.881538, 34.945122, 30.022039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.671104, 34.850460, 29.956030>,  <32.320385, 34.692688, 29.846014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671104, 34.850460, 29.956030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135454, -0.346218, 0.928324,
		0.461382, -0.851210, -0.250137,
		0.876801, 0.394430, 0.275038,
		32.934143, 34.968788, 30.038542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734379, 34.210697, 30.253487>,  <32.320385, 34.692688, 29.846014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734379, 34.210697, 30.253487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.896828, 34.559074, 30.364136>,  <32.994297, 34.768101, 30.430525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.896828, 34.559074, 30.364136>,  <32.734379, 34.210697, 30.253487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896828, 34.559074, 30.364136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051740, -0.280311, 0.958514,
		0.912353, -0.403587, -0.068778,
		0.406123, 0.870944, 0.276625,
		33.018665, 34.820358, 30.447123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274525, 34.082378, 30.844679>,  <32.734379, 34.210697, 30.253487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274525, 34.082378, 30.844679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.162159, 34.465034, 30.875469>,  <33.094738, 34.694630, 30.893944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.162159, 34.465034, 30.875469>,  <33.274525, 34.082378, 30.844679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162159, 34.465034, 30.875469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015239, -0.075748, 0.997011,
		0.959612, 0.281248, 0.006700,
		-0.280915, 0.956641, 0.076975,
		33.077885, 34.752026, 30.898561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604404, 34.362728, 31.387539>,  <33.274525, 34.082378, 30.844679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604404, 34.362728, 31.387539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.303371, 34.623775, 31.352394>,  <33.122753, 34.780403, 31.331306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.303371, 34.623775, 31.352394>,  <33.604404, 34.362728, 31.387539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303371, 34.623775, 31.352394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005897, 0.126745, 0.991918,
		0.658476, 0.747014, -0.091537,
		-0.752578, 0.652615, -0.087864,
		33.077599, 34.819561, 31.326035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837681, 34.831085, 31.839838>,  <33.604404, 34.362728, 31.387539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837681, 34.831085, 31.839838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.444328, 34.857620, 31.772247>,  <33.208317, 34.873543, 31.731693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.444328, 34.857620, 31.772247>,  <33.837681, 34.831085, 31.839838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444328, 34.857620, 31.772247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163679, 0.078503, 0.983385,
		0.078503, 0.994704, -0.066341,
		-0.983385, 0.066341, -0.168975,
		33.149311, 34.877522, 31.721556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611832, 35.364525, 32.297142>,  <33.837681, 34.831085, 31.839838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611832, 35.364525, 32.297142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.262196, 35.193550, 32.204819>,  <33.052414, 35.090965, 32.149426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.262196, 35.193550, 32.204819>,  <33.611832, 35.364525, 32.297142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262196, 35.193550, 32.204819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274710, 0.043077, 0.960562,
		-0.400636, 0.903019, -0.155074,
		-0.874086, -0.427436, -0.230810,
		32.999969, 35.065319, 32.135574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999790, 35.720551, 32.606617>,  <33.611832, 35.364525, 32.297142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999790, 35.720551, 32.606617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.818501, 36.013672, 32.809631>,  <32.709728, 36.189545, 32.931438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.818501, 36.013672, 32.809631>,  <32.999790, 35.720551, 32.606617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818501, 36.013672, 32.809631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159761, 0.493372, -0.855020,
		-0.876965, -0.468598, -0.106533,
		-0.453221, 0.732803, 0.507534,
		32.682533, 36.233513, 32.961891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331581, 35.871822, 32.289463>,  <32.999790, 35.720551, 32.606617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331581, 35.871822, 32.289463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.463531, 36.205555, 32.466133>,  <32.542702, 36.405792, 32.572136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.463531, 36.205555, 32.466133>,  <32.331581, 35.871822, 32.289463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463531, 36.205555, 32.466133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308322, 0.537429, -0.784925,
		-0.892256, 0.122747, 0.434525,
		0.329874, 0.834328, 0.441678,
		32.562492, 36.455853, 32.598637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761265, 36.276691, 32.178375>,  <32.331581, 35.871822, 32.289463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761265, 36.276691, 32.178375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.052238, 36.526951, 32.291088>,  <32.226822, 36.677105, 32.358715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.052238, 36.526951, 32.291088>,  <31.761265, 36.276691, 32.178375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052238, 36.526951, 32.291088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262496, 0.633155, -0.728155,
		-0.633984, 0.455717, 0.624809,
		0.727434, 0.625649, 0.281786,
		32.270470, 36.714645, 32.375626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463211, 36.844643, 32.543575>,  <31.761265, 36.276691, 32.178375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463211, 36.844643, 32.543575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.810904, 36.947487, 32.374657>,  <32.019520, 37.009193, 32.273304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.810904, 36.947487, 32.374657>,  <31.463211, 36.844643, 32.543575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810904, 36.947487, 32.374657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477005, 0.660751, -0.579547,
		0.130027, 0.705197, 0.696986,
		0.869229, 0.257109, -0.422298,
		32.071671, 37.024620, 32.247967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364973, 37.635208, 32.519836>,  <31.463211, 36.844643, 32.543575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364973, 37.635208, 32.519836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.635094, 37.507977, 32.253666>,  <31.797167, 37.431637, 32.093964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.635094, 37.507977, 32.253666>,  <31.364973, 37.635208, 32.519836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635094, 37.507977, 32.253666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554009, 0.376815, -0.742351,
		0.486868, 0.869964, 0.078246,
		0.675303, -0.318078, -0.665427,
		31.837685, 37.412552, 32.054039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561270, 38.184067, 32.129345>,  <31.364973, 37.635208, 32.519836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561270, 38.184067, 32.129345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.638474, 37.854362, 31.916428>,  <31.684795, 37.656540, 31.788677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.638474, 37.854362, 31.916428>,  <31.561270, 38.184067, 32.129345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638474, 37.854362, 31.916428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497177, 0.385540, -0.777286,
		0.845909, 0.414668, -0.335392,
		0.193009, -0.824263, -0.532295,
		31.696377, 37.607082, 31.756739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639465, 38.541798, 31.528864>,  <31.561270, 38.184067, 32.129345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639465, 38.541798, 31.528864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.649954, 38.167446, 31.388330>,  <31.656246, 37.942833, 31.304010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.649954, 38.167446, 31.388330>,  <31.639465, 38.541798, 31.528864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649954, 38.167446, 31.388330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395107, 0.313135, -0.863618,
		0.918261, 0.161459, -0.361564,
		0.026221, -0.935883, -0.351333,
		31.657820, 37.886681, 31.282930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044590, 38.598614, 30.826778>,  <31.639465, 38.541798, 31.528864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044590, 38.598614, 30.826778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.815502, 38.271946, 30.855164>,  <31.678049, 38.075947, 30.872194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.815502, 38.271946, 30.855164>,  <32.044590, 38.598614, 30.826778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815502, 38.271946, 30.855164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539910, 0.310660, -0.782296,
		0.616834, -0.486352, -0.618851,
		-0.572724, -0.816671, 0.070961,
		31.643684, 38.026943, 30.876451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117203, 38.269669, 30.160866>,  <32.044590, 38.598614, 30.826778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117203, 38.269669, 30.160866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.772001, 38.121830, 30.298630>,  <31.564880, 38.033127, 30.381289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.772001, 38.121830, 30.298630>,  <32.117203, 38.269669, 30.160866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772001, 38.121830, 30.298630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421386, 0.150590, -0.894291,
		0.278664, -0.916908, -0.285704,
		-0.863007, -0.369598, 0.344408,
		31.513100, 38.010952, 30.401953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826294, 37.826656, 29.598593>,  <32.117203, 38.269669, 30.160866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826294, 37.826656, 29.598593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.513046, 37.904022, 29.835005>,  <31.325098, 37.950439, 29.976852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.513046, 37.904022, 29.835005>,  <31.826294, 37.826656, 29.598593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513046, 37.904022, 29.835005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585055, 0.093019, -0.805641,
		-0.210798, -0.976698, 0.040312,
		-0.783119, 0.193412, 0.591031,
		31.278111, 37.962048, 30.012314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405882, 37.341461, 29.399031>,  <31.826294, 37.826656, 29.598593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405882, 37.341461, 29.399031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.203892, 37.642334, 29.568369>,  <31.082697, 37.822857, 29.669971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.203892, 37.642334, 29.568369>,  <31.405882, 37.341461, 29.399031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203892, 37.642334, 29.568369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402065, 0.229024, -0.886506,
		-0.763769, -0.617877, 0.186774,
		-0.504976, 0.752181, 0.423348,
		31.052399, 37.867989, 29.695374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690790, 37.268349, 29.257578>,  <31.405882, 37.341461, 29.399031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690790, 37.268349, 29.257578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.728563, 37.656551, 29.346298>,  <30.751226, 37.889473, 29.399530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.728563, 37.656551, 29.346298>,  <30.690790, 37.268349, 29.257578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728563, 37.656551, 29.346298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547573, 0.236704, -0.802580,
		-0.831412, -0.045662, 0.553777,
		0.094433, 0.970508, 0.221802,
		30.756893, 37.947704, 29.412838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076157, 37.530968, 29.010416>,  <30.690790, 37.268349, 29.257578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076157, 37.530968, 29.010416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.268496, 37.876972, 29.067751>,  <30.383900, 38.084576, 29.102152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.268496, 37.876972, 29.067751>,  <30.076157, 37.530968, 29.010416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268496, 37.876972, 29.067751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584088, 0.437931, -0.683417,
		-0.653933, 0.244899, 0.715819,
		0.480847, 0.865009, 0.143335,
		30.412750, 38.136475, 29.110752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546350, 38.055443, 29.114292>,  <30.076157, 37.530968, 29.010416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546350, 38.055443, 29.114292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.886223, 38.206463, 28.967054>,  <30.090147, 38.297077, 28.878712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.886223, 38.206463, 28.967054>,  <29.546350, 38.055443, 29.114292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886223, 38.206463, 28.967054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515888, 0.450790, -0.728456,
		-0.109097, 0.808851, 0.577804,
		0.849681, 0.377554, -0.368097,
		30.141127, 38.319729, 28.856625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314329, 38.706303, 28.893597>,  <29.546350, 38.055443, 29.114292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314329, 38.706303, 28.893597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.664715, 38.670753, 28.703951>,  <29.874947, 38.649422, 28.590162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.664715, 38.670753, 28.703951>,  <29.314329, 38.706303, 28.893597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664715, 38.670753, 28.703951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402015, 0.408689, -0.819364,
		0.266587, 0.908336, 0.322268,
		0.875965, -0.088875, -0.474116,
		29.927504, 38.644093, 28.561716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846048, 39.273880, 29.233820>,  <29.314329, 38.706303, 28.893597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846048, 39.273880, 29.233820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.448704, 39.276978, 29.187904>,  <28.210297, 39.278835, 29.160355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.448704, 39.276978, 29.187904>,  <28.846048, 39.273880, 29.233820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448704, 39.276978, 29.187904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093823, -0.631933, 0.769323,
		-0.066584, 0.774985, 0.628463,
		-0.993360, 0.007739, -0.114788,
		28.150696, 39.279301, 29.153467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626560, 39.105019, 29.916809>,  <28.846048, 39.273880, 29.233820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626560, 39.105019, 29.916809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.303455, 39.045135, 29.688736>,  <28.109592, 39.009205, 29.551891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.303455, 39.045135, 29.688736>,  <28.626560, 39.105019, 29.916809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303455, 39.045135, 29.688736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240393, -0.799493, 0.550474,
		-0.538267, 0.581720, 0.609811,
		-0.807762, -0.149708, -0.570182,
		28.061127, 39.000225, 29.517681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038631, 39.081043, 30.340113>,  <28.626560, 39.105019, 29.916809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038631, 39.081043, 30.340113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.945158, 38.866001, 30.016045>,  <27.889074, 38.736977, 29.821604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.945158, 38.866001, 30.016045>,  <28.038631, 39.081043, 30.340113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945158, 38.866001, 30.016045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176966, -0.795806, 0.579117,
		-0.956072, 0.278704, 0.090830,
		-0.233685, -0.537604, -0.810169,
		27.875053, 38.704720, 29.772993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299377, 38.802559, 30.375502>,  <28.038631, 39.081043, 30.340113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.299377, 38.802559, 30.375502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.528164, 38.567810, 30.146263>,  <27.665436, 38.426960, 30.008720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.528164, 38.567810, 30.146263>,  <27.299377, 38.802559, 30.375502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528164, 38.567810, 30.146263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036290, -0.716078, 0.697076,
		-0.819476, -0.377905, -0.430868,
		0.571964, -0.586873, -0.573095,
		27.699753, 38.391747, 29.974335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203691, 38.227001, 30.627222>,  <27.299377, 38.802559, 30.375502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203691, 38.227001, 30.627222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.488110, 38.112411, 30.370363>,  <27.658760, 38.043659, 30.216248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.488110, 38.112411, 30.370363>,  <27.203691, 38.227001, 30.627222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488110, 38.112411, 30.370363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216617, -0.779585, 0.587643,
		-0.668948, -0.556940, -0.492266,
		0.711046, -0.286470, -0.642144,
		27.701424, 38.026470, 30.177719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060410, 37.530048, 30.313293>,  <27.203691, 38.227001, 30.627222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060410, 37.530048, 30.313293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.450603, 37.616596, 30.329388>,  <27.684719, 37.668526, 30.339045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.450603, 37.616596, 30.329388>,  <27.060410, 37.530048, 30.313293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450603, 37.616596, 30.329388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155686, -0.807665, 0.568717,
		0.155547, -0.548510, -0.821549,
		0.975483, 0.216365, 0.040235,
		27.743248, 37.681507, 30.341457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.193129, 36.852489, 30.332438>,  <27.060410, 37.530048, 30.313293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.193129, 36.852489, 30.332438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.538916, 37.033707, 30.419563>,  <27.746387, 37.142437, 30.471838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.538916, 37.033707, 30.419563>,  <27.193129, 36.852489, 30.332438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538916, 37.033707, 30.419563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286445, -0.800026, 0.527169,
		0.413089, -0.393329, -0.821371,
		0.864469, 0.453045, 0.217815,
		27.798256, 37.169621, 30.484907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827578, 36.326302, 30.231205>,  <27.193129, 36.852489, 30.332438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827578, 36.326302, 30.231205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.994513, 36.612694, 30.455063>,  <28.094673, 36.784531, 30.589378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.994513, 36.612694, 30.455063>,  <27.827578, 36.326302, 30.231205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994513, 36.612694, 30.455063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483529, -0.696379, 0.530336,
		0.769436, 0.049277, -0.636821,
		0.417335, 0.715981, 0.559646,
		28.119713, 36.827488, 30.622957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531012, 36.093563, 30.389973>,  <27.827578, 36.326302, 30.231205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531012, 36.093563, 30.389973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.461262, 36.380405, 30.659891>,  <28.419413, 36.552513, 30.821842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.461262, 36.380405, 30.659891>,  <28.531012, 36.093563, 30.389973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461262, 36.380405, 30.659891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494017, -0.529094, 0.689933,
		0.851787, 0.453666, -0.262005,
		-0.174374, 0.717110, 0.674794,
		28.408949, 36.595539, 30.862329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183128, 36.286491, 30.733759>,  <28.531012, 36.093563, 30.389973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183128, 36.286491, 30.733759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.898727, 36.365219, 31.003792>,  <28.728086, 36.412457, 31.165812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.898727, 36.365219, 31.003792>,  <29.183128, 36.286491, 30.733759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.898727, 36.365219, 31.003792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486456, -0.555572, 0.674314,
		0.507775, 0.807838, 0.299270,
		-0.711003, 0.196818, 0.675083,
		28.685427, 36.424263, 31.206316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606178, 36.324703, 31.353445>,  <29.183128, 36.286491, 30.733759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606178, 36.324703, 31.353445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.224609, 36.259251, 31.454050>,  <28.995668, 36.219978, 31.514414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.224609, 36.259251, 31.454050>,  <29.606178, 36.324703, 31.353445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224609, 36.259251, 31.454050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296164, -0.648101, 0.701606,
		0.048199, 0.743766, 0.666700,
		-0.953920, -0.163636, 0.251515,
		28.938433, 36.210159, 31.529505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574753, 36.396141, 32.111172>,  <29.606178, 36.324703, 31.353445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574753, 36.396141, 32.111172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.268827, 36.163685, 31.999931>,  <29.085272, 36.024212, 31.933186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.268827, 36.163685, 31.999931>,  <29.574753, 36.396141, 32.111172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268827, 36.163685, 31.999931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316417, -0.714848, 0.623596,
		-0.561198, 0.388937, 0.730606,
		-0.764812, -0.581137, -0.278105,
		29.039383, 35.989346, 31.916500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.343653, 42.451954, 26.893406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177094, 42.168961, 26.664991>,  <28.077158, 41.999165, 26.527943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177094, 42.168961, 26.664991>,  <28.343653, 42.451954, 26.893406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177094, 42.168961, 26.664991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350617, -0.454542, 0.818816,
		-0.838857, 0.541169, -0.058784,
		-0.416398, -0.707480, -0.571038,
		28.052174, 41.956715, 26.493679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709070, 42.298996, 27.263481>,  <28.343653, 42.451954, 26.893406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709070, 42.298996, 27.263481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824604, 41.993931, 27.031992>,  <27.893925, 41.810890, 26.893099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824604, 41.993931, 27.031992>,  <27.709070, 42.298996, 27.263481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.824604, 41.993931, 27.031992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241778, -0.642999, 0.726702,
		-0.926347, -0.069973, -0.370115,
		0.288833, -0.762663, -0.578723,
		27.911255, 41.765133, 26.858376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120756, 41.805645, 27.400167>,  <27.709070, 42.298996, 27.263481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120756, 41.805645, 27.400167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449026, 41.621151, 27.265259>,  <27.645988, 41.510452, 27.184313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449026, 41.621151, 27.265259>,  <27.120756, 41.805645, 27.400167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449026, 41.621151, 27.265259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127820, -0.723494, 0.678394,
		-0.556915, -0.513631, -0.652709,
		0.820675, -0.461237, -0.337272,
		27.695229, 41.482780, 27.164078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921717, 41.144054, 27.326199>,  <27.120756, 41.805645, 27.400167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921717, 41.144054, 27.326199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.317127, 41.083645, 27.327017>,  <27.554375, 41.047401, 27.327509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.317127, 41.083645, 27.327017>,  <26.921717, 41.144054, 27.326199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317127, 41.083645, 27.327017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119410, -0.773169, 0.622858,
		-0.092481, -0.615957, -0.782333,
		0.988528, -0.151020, 0.002048,
		27.613686, 41.038338, 27.327631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037533, 40.459930, 27.322172>,  <26.921717, 41.144054, 27.326199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037533, 40.459930, 27.322172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396301, 40.574451, 27.456970>,  <27.611563, 40.643166, 27.537849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396301, 40.574451, 27.456970>,  <27.037533, 40.459930, 27.322172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396301, 40.574451, 27.456970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024403, -0.792981, 0.608758,
		0.441520, -0.537783, -0.718227,
		0.896919, 0.286306, 0.336993,
		27.665377, 40.660343, 27.558067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259745, 39.842999, 27.526894>,  <27.037533, 40.459930, 27.322172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259745, 39.842999, 27.526894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534079, 40.089073, 27.682419>,  <27.698679, 40.236717, 27.775734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534079, 40.089073, 27.682419>,  <27.259745, 39.842999, 27.526894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534079, 40.089073, 27.682419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258982, -0.705601, 0.659587,
		0.680116, -0.351673, -0.643249,
		0.685836, 0.615186, 0.388814,
		27.739830, 40.273628, 27.799063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896957, 39.582142, 27.519970>,  <27.259745, 39.842999, 27.526894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896957, 39.582142, 27.519970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937445, 39.824654, 27.835484>,  <27.961737, 39.970161, 28.024792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937445, 39.824654, 27.835484>,  <27.896957, 39.582142, 27.519970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937445, 39.824654, 27.835484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263524, -0.780873, 0.566386,
		0.959328, 0.150533, -0.238809,
		0.101220, 0.606282, 0.788782,
		27.967812, 40.006538, 28.072119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454594, 39.305202, 27.924913>,  <27.896957, 39.582142, 27.519970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454594, 39.305202, 27.924913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249834, 39.535603, 28.179844>,  <28.126978, 39.673843, 28.332802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249834, 39.535603, 28.179844>,  <28.454594, 39.305202, 27.924913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249834, 39.535603, 28.179844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031560, -0.728792, 0.684008,
		0.858465, 0.370257, 0.354890,
		-0.511900, 0.575996, 0.637328,
		28.096264, 39.708401, 28.371042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767988, 39.184586, 28.485970>,  <28.454594, 39.305202, 27.924913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767988, 39.184586, 28.485970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433498, 39.348087, 28.632200>,  <28.232805, 39.446190, 28.719938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433498, 39.348087, 28.632200>,  <28.767988, 39.184586, 28.485970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433498, 39.348087, 28.632200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099547, -0.768711, 0.631802,
		0.539275, 0.491937, 0.683506,
		-0.836225, 0.408756, 0.365576,
		28.182631, 39.470715, 28.741873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400076, 39.449268, 28.513956>,  <28.767988, 39.184586, 28.485970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400076, 39.449268, 28.513956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647423, 39.186253, 28.341787>,  <29.795832, 39.028442, 28.238487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647423, 39.186253, 28.341787>,  <29.400076, 39.449268, 28.513956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647423, 39.186253, 28.341787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036768, 0.522880, -0.851613,
		0.785029, 0.542435, 0.299155,
		0.618367, -0.657542, -0.430420,
		29.832933, 38.988991, 28.212662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676394, 39.876141, 27.979769>,  <29.400076, 39.449268, 28.513956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676394, 39.876141, 27.979769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818079, 39.524811, 27.851347>,  <29.903090, 39.314014, 27.774294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818079, 39.524811, 27.851347>,  <29.676394, 39.876141, 27.979769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818079, 39.524811, 27.851347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164970, 0.396619, -0.903038,
		0.920499, 0.266903, 0.285385,
		0.354213, -0.878326, -0.321056,
		29.924343, 39.261314, 27.755030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434639, 39.966194, 27.672779>,  <29.676394, 39.876141, 27.979769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434639, 39.966194, 27.672779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247795, 39.644276, 27.526295>,  <30.135689, 39.451126, 27.438404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247795, 39.644276, 27.526295>,  <30.434639, 39.966194, 27.672779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.247795, 39.644276, 27.526295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213169, 0.299453, -0.929993,
		0.858118, -0.512473, 0.031680,
		-0.467110, -0.804797, -0.366210,
		30.107662, 39.402836, 27.416431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832199, 39.750050, 27.095404>,  <30.434639, 39.966194, 27.672779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832199, 39.750050, 27.095404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459940, 39.613354, 27.043081>,  <30.236584, 39.531338, 27.011688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459940, 39.613354, 27.043081>,  <30.832199, 39.750050, 27.095404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459940, 39.613354, 27.043081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042470, 0.254180, -0.966224,
		0.363444, -0.904769, -0.222039,
		-0.930647, -0.341738, -0.130806,
		30.180746, 39.510834, 27.003839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903887, 39.340359, 26.605370>,  <30.832199, 39.750050, 27.095404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903887, 39.340359, 26.605370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505005, 39.366886, 26.591591>,  <30.265676, 39.382805, 26.583324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505005, 39.366886, 26.591591>,  <30.903887, 39.340359, 26.605370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505005, 39.366886, 26.591591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049945, 0.248572, -0.967325,
		-0.055594, -0.966340, -0.251189,
		-0.997203, 0.066323, -0.034444,
		30.205843, 39.386784, 26.581257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693344, 38.872074, 25.995647>,  <30.903887, 39.340359, 26.605370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.693344, 38.872074, 25.995647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382391, 39.113953, 26.064960>,  <30.195820, 39.259079, 26.106548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382391, 39.113953, 26.064960>,  <30.693344, 38.872074, 25.995647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382391, 39.113953, 26.064960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091940, 0.163287, -0.982285,
		-0.622275, -0.779541, -0.071341,
		-0.777381, 0.604692, 0.173280,
		30.149176, 39.295361, 26.116945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258772, 38.705719, 25.477287>,  <30.693344, 38.872074, 25.995647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258772, 38.705719, 25.477287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114328, 39.056599, 25.603851>,  <30.027662, 39.267128, 25.679790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114328, 39.056599, 25.603851>,  <30.258772, 38.705719, 25.477287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114328, 39.056599, 25.603851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237369, 0.241665, -0.940880,
		-0.901808, -0.414866, 0.120953,
		-0.361109, 0.877203, 0.316411,
		30.005997, 39.319759, 25.698774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559193, 38.820236, 25.144310>,  <30.258772, 38.705719, 25.477287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559193, 38.820236, 25.144310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726974, 39.170155, 25.241293>,  <29.827644, 39.380108, 25.299482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726974, 39.170155, 25.241293>,  <29.559193, 38.820236, 25.144310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726974, 39.170155, 25.241293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075229, 0.299668, -0.951073,
		-0.904654, 0.380692, 0.191507,
		0.419454, 0.874799, 0.242456,
		29.852810, 39.432594, 25.314030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272736, 39.252682, 24.704294>,  <29.559193, 38.820236, 25.144310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272736, 39.252682, 24.704294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595263, 39.451912, 24.831902>,  <29.788778, 39.571449, 24.908466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595263, 39.451912, 24.831902>,  <29.272736, 39.252682, 24.704294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595263, 39.451912, 24.831902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086561, 0.434181, -0.896657,
		-0.585114, 0.750606, 0.306974,
		0.806319, 0.498074, 0.319018,
		29.837158, 39.601334, 24.927607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148882, 39.936600, 24.449574>,  <29.272736, 39.252682, 24.704294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148882, 39.936600, 24.449574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544209, 39.951302, 24.508739>,  <29.781404, 39.960121, 24.544239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544209, 39.951302, 24.508739>,  <29.148882, 39.936600, 24.449574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544209, 39.951302, 24.508739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122438, 0.386533, -0.914112,
		-0.090768, 0.921543, 0.377517,
		0.988317, 0.036750, 0.147917,
		29.840704, 39.962326, 24.553114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326200, 40.606815, 24.269167>,  <29.148882, 39.936600, 24.449574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326200, 40.606815, 24.269167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681753, 40.423576, 24.271578>,  <29.895084, 40.313633, 24.273024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681753, 40.423576, 24.271578>,  <29.326200, 40.606815, 24.269167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681753, 40.423576, 24.271578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347166, 0.664928, -0.661321,
		0.298943, 0.589928, 0.750078,
		0.888881, -0.458099, 0.006027,
		29.948418, 40.286148, 24.273386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790478, 41.194168, 24.226152>,  <29.326200, 40.606815, 24.269167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790478, 41.194168, 24.226152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955832, 40.858768, 24.084148>,  <30.055044, 40.657528, 23.998945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955832, 40.858768, 24.084148>,  <29.790478, 41.194168, 24.226152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955832, 40.858768, 24.084148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503400, 0.535338, -0.678234,
		0.758749, 0.101660, 0.643401,
		0.413387, -0.838498, -0.355011,
		30.079847, 40.607220, 23.977646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614622, 41.339108, 24.090298>,  <29.790478, 41.194168, 24.226152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614622, 41.339108, 24.090298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476526, 41.037914, 23.866215>,  <30.393669, 40.857201, 23.731766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476526, 41.037914, 23.866215>,  <30.614622, 41.339108, 24.090298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476526, 41.037914, 23.866215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343819, 0.453935, -0.822029,
		0.873269, -0.476406, 0.102173,
		-0.345239, -0.752981, -0.560205,
		30.372955, 40.812019, 23.698153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271175, 41.072803, 23.875599>,  <30.614622, 41.339108, 24.090298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271175, 41.072803, 23.875599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957054, 40.980633, 23.645746>,  <30.768581, 40.925331, 23.507833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957054, 40.980633, 23.645746>,  <31.271175, 41.072803, 23.875599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957054, 40.980633, 23.645746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398767, 0.521734, -0.754174,
		0.473587, -0.821399, -0.317833,
		-0.785303, -0.230426, -0.574634,
		30.721464, 40.911507, 23.473356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.411385, 37.240398, 21.735411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.297327, 37.500809, 22.016796>,  <27.228893, 37.657055, 22.185627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.297327, 37.500809, 22.016796>,  <27.411385, 37.240398, 21.735411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297327, 37.500809, 22.016796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410762, -0.580120, 0.703374,
		0.866006, 0.489520, -0.101998,
		-0.285145, 0.651024, 0.703464,
		27.211784, 37.696117, 22.227835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863993, 37.204266, 22.162933>,  <27.411385, 37.240398, 21.735411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863993, 37.204266, 22.162933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.595263, 37.371815, 22.407291>,  <27.434025, 37.472343, 22.553907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.595263, 37.371815, 22.407291>,  <27.863993, 37.204266, 22.162933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595263, 37.371815, 22.407291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335697, -0.562996, 0.755211,
		0.660272, 0.712445, 0.237620,
		-0.671825, 0.418876, 0.610896,
		27.393715, 37.497478, 22.590561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133816, 37.422451, 22.752144>,  <27.863993, 37.204266, 22.162933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133816, 37.422451, 22.752144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.754112, 37.408291, 22.877144>,  <27.526291, 37.399796, 22.952143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.754112, 37.408291, 22.877144>,  <28.133816, 37.422451, 22.752144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754112, 37.408291, 22.877144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302472, -0.374890, 0.876338,
		0.086132, 0.926393, 0.366574,
		-0.949259, -0.035398, 0.312498,
		27.469336, 37.397671, 22.970894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168030, 37.454834, 23.497633>,  <28.133816, 37.422451, 22.752144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168030, 37.454834, 23.497633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.806097, 37.290230, 23.453926>,  <27.588938, 37.191467, 23.427702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.806097, 37.290230, 23.453926>,  <28.168030, 37.454834, 23.497633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806097, 37.290230, 23.453926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087030, -0.429978, 0.898635,
		-0.416779, 0.803604, 0.424871,
		-0.904832, -0.411509, -0.109268,
		27.534647, 37.166779, 23.421146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811810, 37.570129, 24.076643>,  <28.168030, 37.454834, 23.497633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811810, 37.570129, 24.076643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.633097, 37.247414, 23.921997>,  <27.525869, 37.053783, 23.829210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.633097, 37.247414, 23.921997>,  <27.811810, 37.570129, 24.076643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633097, 37.247414, 23.921997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035736, -0.447893, 0.893373,
		-0.893929, 0.385327, 0.228942,
		-0.446782, -0.806793, -0.386614,
		27.499062, 37.005375, 23.806013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.177912, 37.323200, 24.511648>,  <27.811810, 37.570129, 24.076643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.177912, 37.323200, 24.511648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.259081, 36.999069, 24.291761>,  <27.307783, 36.804588, 24.159830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.259081, 36.999069, 24.291761>,  <27.177912, 37.323200, 24.511648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259081, 36.999069, 24.291761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220934, -0.509031, 0.831911,
		-0.953945, -0.290266, 0.075734,
		0.202924, -0.810329, -0.549717,
		27.319958, 36.755970, 24.126846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838440, 36.818386, 24.887632>,  <27.177912, 37.323200, 24.511648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838440, 36.818386, 24.887632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.083654, 36.620609, 24.641150>,  <27.230783, 36.501942, 24.493259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.083654, 36.620609, 24.641150>,  <26.838440, 36.818386, 24.887632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083654, 36.620609, 24.641150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233103, -0.632034, 0.739051,
		-0.754884, -0.596704, -0.272202,
		0.613036, -0.494446, -0.616206,
		27.267565, 36.472275, 24.456287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737387, 36.074059, 24.992002>,  <26.838440, 36.818386, 24.887632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737387, 36.074059, 24.992002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.095194, 36.097786, 24.814770>,  <27.309877, 36.112022, 24.708429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.095194, 36.097786, 24.814770>,  <26.737387, 36.074059, 24.992002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.095194, 36.097786, 24.814770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380299, -0.621961, 0.684498,
		-0.234978, -0.780798, -0.578913,
		0.894516, 0.059318, -0.443084,
		27.363548, 36.115582, 24.681845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043680, 35.395893, 25.170103>,  <26.737387, 36.074059, 24.992002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043680, 35.395893, 25.170103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.354034, 35.627724, 25.070431>,  <27.540247, 35.766823, 25.010628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.354034, 35.627724, 25.070431>,  <27.043680, 35.395893, 25.170103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354034, 35.627724, 25.070431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534539, -0.394180, 0.747589,
		0.335065, -0.713240, -0.615646,
		0.775886, 0.579578, -0.249179,
		27.586800, 35.801598, 24.995678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.587038, 34.949566, 25.173466>,  <27.043680, 35.395893, 25.170103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.587038, 34.949566, 25.173466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.728899, 35.321301, 25.214554>,  <27.814016, 35.544342, 25.239206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.728899, 35.321301, 25.214554>,  <27.587038, 34.949566, 25.173466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728899, 35.321301, 25.214554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651062, -0.324310, 0.686252,
		0.671073, -0.176505, -0.720074,
		0.354654, 0.929338, 0.102720,
		27.835295, 35.600101, 25.245369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301735, 34.909328, 25.075657>,  <27.587038, 34.949566, 25.173466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301735, 34.909328, 25.075657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.257893, 35.238201, 25.299088>,  <28.231586, 35.435524, 25.433146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.257893, 35.238201, 25.299088>,  <28.301735, 34.909328, 25.075657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257893, 35.238201, 25.299088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690417, -0.341297, 0.637841,
		0.715060, 0.455560, -0.530240,
		-0.109606, 0.822181, 0.558574,
		28.225010, 35.484856, 25.466660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011158, 35.130642, 25.312284>,  <28.301735, 34.909328, 25.075657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011158, 35.130642, 25.312284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.752342, 35.298019, 25.567234>,  <28.597054, 35.398445, 25.720203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.752342, 35.298019, 25.567234>,  <29.011158, 35.130642, 25.312284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752342, 35.298019, 25.567234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512182, -0.380713, 0.769888,
		0.564810, 0.824600, 0.032018,
		-0.647039, 0.418441, 0.637375,
		28.558231, 35.423553, 25.758446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345940, 35.201275, 25.945066>,  <29.011158, 35.130642, 25.312284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345940, 35.201275, 25.945066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.966404, 35.235291, 26.066702>,  <28.738682, 35.255699, 26.139683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.966404, 35.235291, 26.066702>,  <29.345940, 35.201275, 25.945066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966404, 35.235291, 26.066702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239513, -0.433708, 0.868637,
		0.205757, 0.897031, 0.391151,
		-0.948840, 0.085042, 0.304089,
		28.681751, 35.260803, 26.157928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409796, 35.166416, 26.685186>,  <29.345940, 35.201275, 25.945066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409796, 35.166416, 26.685186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.015875, 35.111889, 26.642145>,  <28.779522, 35.079174, 26.616320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.015875, 35.111889, 26.642145>,  <29.409796, 35.166416, 26.685186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015875, 35.111889, 26.642145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025379, -0.499980, 0.865665,
		-0.171805, 0.855241, 0.488923,
		-0.984804, -0.136317, -0.107604,
		28.720434, 35.070995, 26.609863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829430, 35.768875, 26.804598>,  <29.409796, 35.166416, 26.685186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829430, 35.768875, 26.804598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.180855, 35.580051, 26.775528>,  <30.391710, 35.466755, 26.758085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.180855, 35.580051, 26.775528>,  <29.829430, 35.768875, 26.804598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180855, 35.580051, 26.775528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099651, 0.329984, -0.938712,
		0.467112, 0.817477, 0.336953,
		0.878565, -0.472061, -0.072677,
		30.444424, 35.438435, 26.753725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295111, 36.243717, 26.625393>,  <29.829430, 35.768875, 26.804598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295111, 36.243717, 26.625393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.433491, 35.889233, 26.502142>,  <30.516518, 35.676540, 26.428190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.433491, 35.889233, 26.502142>,  <30.295111, 36.243717, 26.625393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433491, 35.889233, 26.502142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059353, 0.348419, -0.935458,
		0.936374, 0.305333, 0.173135,
		0.345949, -0.886214, -0.308128,
		30.537275, 35.623367, 26.409704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888264, 36.369846, 26.211008>,  <30.295111, 36.243717, 26.625393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888264, 36.369846, 26.211008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.792582, 35.996613, 26.103580>,  <30.735172, 35.772671, 26.039124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.792582, 35.996613, 26.103580>,  <30.888264, 36.369846, 26.211008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792582, 35.996613, 26.103580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141543, 0.240133, -0.960365,
		0.960597, -0.267738, 0.074631,
		-0.239205, -0.933088, -0.268567,
		30.720819, 35.716686, 26.023010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459747, 36.075424, 25.842894>,  <30.888264, 36.369846, 26.211008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459747, 36.075424, 25.842894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.128149, 35.888760, 25.719612>,  <30.929190, 35.776760, 25.645643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.128149, 35.888760, 25.719612>,  <31.459747, 36.075424, 25.842894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128149, 35.888760, 25.719612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245041, 0.192283, -0.950254,
		0.502714, -0.863278, -0.045049,
		-0.828995, -0.466667, -0.308202,
		30.879450, 35.748760, 25.627151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663403, 35.810139, 25.234011>,  <31.459747, 36.075424, 25.842894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663403, 35.810139, 25.234011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.263901, 35.819012, 25.216120>,  <31.024200, 35.824333, 25.205385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.263901, 35.819012, 25.216120>,  <31.663403, 35.810139, 25.234011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263901, 35.819012, 25.216120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049870, 0.401482, -0.914508,
		-0.002327, -0.915598, -0.402088,
		-0.998753, 0.022180, -0.044727,
		30.964275, 35.825665, 25.202702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483253, 35.603786, 24.586958>,  <31.663403, 35.810139, 25.234011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483253, 35.603786, 24.586958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.120768, 35.729164, 24.700468>,  <30.903276, 35.804390, 24.768574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.120768, 35.729164, 24.700468>,  <31.483253, 35.603786, 24.586958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120768, 35.729164, 24.700468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227987, 0.202984, -0.952271,
		-0.356084, -0.927659, -0.112486,
		-0.906215, 0.313443, 0.283774,
		30.848904, 35.823196, 24.785601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981905, 35.316971, 24.144529>,  <31.483253, 35.603786, 24.586958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981905, 35.316971, 24.144529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.814596, 35.649403, 24.291149>,  <30.714211, 35.848862, 24.379122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.814596, 35.649403, 24.291149>,  <30.981905, 35.316971, 24.144529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814596, 35.649403, 24.291149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192141, 0.313460, -0.929959,
		-0.887767, -0.459405, 0.028573,
		-0.418271, 0.831078, 0.366550,
		30.689116, 35.898727, 24.401114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355198, 35.368290, 23.751890>,  <30.981905, 35.316971, 24.144529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355198, 35.368290, 23.751890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.400429, 35.726837, 23.923351>,  <30.427568, 35.941963, 24.026228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.400429, 35.726837, 23.923351>,  <30.355198, 35.368290, 23.751890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400429, 35.726837, 23.923351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412259, 0.434860, -0.800587,
		-0.904022, -0.086188, 0.418708,
		0.113078, 0.896364, 0.428655,
		30.434353, 35.995747, 24.051949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774950, 35.715950, 23.597376>,  <30.355198, 35.368290, 23.751890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774950, 35.715950, 23.597376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.008158, 36.024502, 23.699402>,  <30.148083, 36.209633, 23.760616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.008158, 36.024502, 23.699402>,  <29.774950, 35.715950, 23.597376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008158, 36.024502, 23.699402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389917, 0.541081, -0.745115,
		-0.712779, 0.334962, 0.616236,
		0.583019, 0.771383, 0.255063,
		30.183064, 36.255917, 23.775921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392567, 36.380146, 23.457958>,  <29.774950, 35.715950, 23.597376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392567, 36.380146, 23.457958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.768499, 36.510857, 23.497814>,  <29.994059, 36.589283, 23.521729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.768499, 36.510857, 23.497814>,  <29.392567, 36.380146, 23.457958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768499, 36.510857, 23.497814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140543, 0.635659, -0.759069,
		-0.311386, 0.699395, 0.643340,
		0.939833, 0.326780, 0.099640,
		30.050449, 36.608891, 23.527706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402163, 37.149300, 23.626890>,  <29.392567, 36.380146, 23.457958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402163, 37.149300, 23.626890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.740700, 37.044319, 23.441492>,  <29.943821, 36.981331, 23.330254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.740700, 37.044319, 23.441492>,  <29.402163, 37.149300, 23.626890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740700, 37.044319, 23.441492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194750, 0.657458, -0.727888,
		0.495762, 0.706308, 0.505322,
		0.846341, -0.262448, -0.463496,
		29.994602, 36.965584, 23.302443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709974, 37.793583, 23.470228>,  <29.402163, 37.149300, 23.626890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709974, 37.793583, 23.470228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.872255, 37.519875, 23.227848>,  <29.969624, 37.355648, 23.082420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.872255, 37.519875, 23.227848>,  <29.709974, 37.793583, 23.470228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872255, 37.519875, 23.227848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028192, 0.653276, -0.756595,
		0.913570, 0.324037, 0.245745,
		0.405704, -0.684274, -0.605948,
		29.993967, 37.314590, 23.046064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215883, 38.217094, 23.171368>,  <29.709974, 37.793583, 23.470228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215883, 38.217094, 23.171368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.205473, 37.905449, 22.920832>,  <30.199226, 37.718460, 22.770512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.205473, 37.905449, 22.920832>,  <30.215883, 38.217094, 23.171368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205473, 37.905449, 22.920832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034742, 0.626876, -0.778344,
		0.999057, 0.001503, -0.043384,
		-0.026027, -0.779117, -0.626338,
		30.197664, 37.671715, 22.732931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829039, 38.263927, 22.643482>,  <30.215883, 38.217094, 23.171368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829039, 38.263927, 22.643482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.547012, 38.033806, 22.477633>,  <30.377796, 37.895733, 22.378122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.547012, 38.033806, 22.477633>,  <30.829039, 38.263927, 22.643482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547012, 38.033806, 22.477633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022740, 0.566041, -0.824063,
		0.708779, -0.590446, -0.386013,
		-0.705064, -0.575301, -0.414625,
		30.335493, 37.861217, 22.353245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481146, 37.991535, 22.429085>,  <30.829039, 38.263927, 22.643482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481146, 37.991535, 22.429085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.865139, 38.101456, 22.407492>,  <32.095535, 38.167408, 22.394535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.865139, 38.101456, 22.407492>,  <31.481146, 37.991535, 22.429085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865139, 38.101456, 22.407492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251464, -0.760959, 0.598087,
		0.123276, -0.587729, -0.799611,
		0.959984, 0.274803, -0.053985,
		32.153133, 38.183895, 22.391296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817747, 37.409561, 22.270975>,  <31.481146, 37.991535, 22.429085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817747, 37.409561, 22.270975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.107563, 37.635887, 22.428402>,  <32.281452, 37.771683, 22.522858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.107563, 37.635887, 22.428402>,  <31.817747, 37.409561, 22.270975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107563, 37.635887, 22.428402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280528, -0.763678, 0.581464,
		0.629560, -0.310887, -0.712042,
		0.724540, 0.565814, 0.393568,
		32.324924, 37.805630, 22.546473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384792, 36.997887, 22.425026>,  <31.817747, 37.409561, 22.270975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384792, 36.997887, 22.425026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.474911, 37.307648, 22.661516>,  <32.528984, 37.493504, 22.803410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.474911, 37.307648, 22.661516>,  <32.384792, 36.997887, 22.425026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474911, 37.307648, 22.661516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280931, -0.632688, 0.721654,
		0.932909, 0.003505, -0.360097,
		0.225299, 0.774399, 0.591224,
		32.542500, 37.539967, 22.838884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894913, 36.761028, 22.750957>,  <32.384792, 36.997887, 22.425026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894913, 36.761028, 22.750957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.795418, 37.072464, 22.981413>,  <32.735722, 37.259323, 23.119686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.795418, 37.072464, 22.981413>,  <32.894913, 36.761028, 22.750957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795418, 37.072464, 22.981413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182253, -0.546585, 0.817330,
		0.951270, 0.308301, -0.005945,
		-0.248734, 0.778586, 0.576139,
		32.720798, 37.306038, 23.154255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405800, 36.863434, 23.174805>,  <32.894913, 36.761028, 22.750957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405800, 36.863434, 23.174805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.109837, 37.034943, 23.382141>,  <32.932259, 37.137848, 23.506544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.109837, 37.034943, 23.382141>,  <33.405800, 36.863434, 23.174805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109837, 37.034943, 23.382141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366722, -0.388872, 0.845159,
		0.563953, 0.815432, 0.130490,
		-0.739913, 0.428777, 0.518343,
		32.887863, 37.163574, 23.537643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713490, 37.185673, 23.764580>,  <33.405800, 36.863434, 23.174805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713490, 37.185673, 23.764580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.327229, 37.138142, 23.857004>,  <33.095470, 37.109623, 23.912458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.327229, 37.138142, 23.857004>,  <33.713490, 37.185673, 23.764580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327229, 37.138142, 23.857004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254999, -0.262850, 0.930530,
		-0.049836, 0.957492, 0.284122,
		-0.965656, -0.118824, 0.231060,
		33.037533, 37.102493, 23.926323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614517, 37.521725, 24.415359>,  <33.713490, 37.185673, 23.764580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614517, 37.521725, 24.415359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.306786, 37.269798, 24.372545>,  <33.122147, 37.118641, 24.346857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.306786, 37.269798, 24.372545>,  <33.614517, 37.521725, 24.415359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306786, 37.269798, 24.372545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075849, -0.256408, 0.963588,
		-0.634332, 0.733199, 0.245034,
		-0.769331, -0.629821, -0.107035,
		33.075985, 37.080853, 24.340435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211044, 37.652275, 24.930775>,  <33.614517, 37.521725, 24.415359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211044, 37.652275, 24.930775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.094425, 37.282600, 24.832081>,  <33.024456, 37.060795, 24.772863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.094425, 37.282600, 24.832081>,  <33.211044, 37.652275, 24.930775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094425, 37.282600, 24.832081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108586, -0.224299, 0.968452,
		-0.950374, 0.309138, -0.034961,
		-0.291544, -0.924188, -0.246736,
		33.006962, 37.005344, 24.758060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626526, 37.424908, 25.312899>,  <33.211044, 37.652275, 24.930775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626526, 37.424908, 25.312899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.781952, 37.073212, 25.202662>,  <32.875210, 36.862194, 25.136518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.781952, 37.073212, 25.202662>,  <32.626526, 37.424908, 25.312899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781952, 37.073212, 25.202662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138366, -0.351383, 0.925951,
		-0.910972, -0.321661, -0.258193,
		0.388567, -0.879240, -0.275593,
		32.898521, 36.809441, 25.119984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279030, 36.925846, 25.717827>,  <32.626526, 37.424908, 25.312899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279030, 36.925846, 25.717827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.608101, 36.732067, 25.598827>,  <32.805546, 36.615799, 25.527428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.608101, 36.732067, 25.598827>,  <32.279030, 36.925846, 25.717827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608101, 36.732067, 25.598827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168349, -0.292234, 0.941413,
		-0.543004, -0.824567, -0.158859,
		0.822682, -0.484447, -0.297499,
		32.854904, 36.586735, 25.509577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191132, 36.208439, 26.025959>,  <32.279030, 36.925846, 25.717827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191132, 36.208439, 26.025959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.581406, 36.229752, 25.940920>,  <32.815571, 36.242538, 25.889896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.581406, 36.229752, 25.940920>,  <32.191132, 36.208439, 26.025959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581406, 36.229752, 25.940920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218835, -0.290602, 0.931484,
		-0.012149, -0.955359, -0.295196,
		0.975686, 0.053283, -0.212596,
		32.874111, 36.245735, 25.877140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406853, 35.500877, 26.190765>,  <32.191132, 36.208439, 26.025959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406853, 35.500877, 26.190765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.704269, 35.768272, 26.184074>,  <32.882717, 35.928707, 26.180059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.704269, 35.768272, 26.184074>,  <32.406853, 35.500877, 26.190765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704269, 35.768272, 26.184074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210919, -0.210715, 0.954522,
		0.634559, -0.713251, -0.297671,
		0.743538, 0.668485, -0.016727,
		32.927330, 35.968819, 26.179056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802010, 35.132957, 26.520250>,  <32.406853, 35.500877, 26.190765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802010, 35.132957, 26.520250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.973755, 35.494205, 26.518280>,  <33.076801, 35.710953, 26.517097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.973755, 35.494205, 26.518280>,  <32.802010, 35.132957, 26.520250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973755, 35.494205, 26.518280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343195, -0.158111, 0.925861,
		0.835385, -0.399217, -0.377833,
		0.429359, 0.903121, -0.004926,
		33.102562, 35.765141, 26.516802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493889, 35.020653, 26.506247>,  <32.802010, 35.132957, 26.520250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493889, 35.020653, 26.506247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.432796, 35.380482, 26.669926>,  <33.396141, 35.596378, 26.768133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.432796, 35.380482, 26.669926>,  <33.493889, 35.020653, 26.506247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432796, 35.380482, 26.669926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503462, -0.285477, 0.815493,
		0.850412, 0.330565, -0.409300,
		-0.152728, 0.899572, 0.409200,
		33.386978, 35.650352, 26.792686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.482790, 40.650017, 23.239937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.130331, 40.824036, 23.165842>,  <30.918856, 40.928448, 23.121386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.130331, 40.824036, 23.165842>,  <31.482790, 40.650017, 23.239937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130331, 40.824036, 23.165842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438617, 0.605695, -0.663889,
		-0.176628, -0.666232, -0.724526,
		-0.881146, 0.435051, -0.185238,
		30.865988, 40.954552, 23.110271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578396, 40.837238, 22.584299>,  <31.482790, 40.650017, 23.239937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578396, 40.837238, 22.584299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.241611, 41.032799, 22.675579>,  <31.039541, 41.150135, 22.730347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.241611, 41.032799, 22.675579>,  <31.578396, 40.837238, 22.584299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241611, 41.032799, 22.675579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164162, 0.635039, -0.754835,
		-0.513957, -0.598081, -0.614937,
		-0.841962, 0.488902, 0.228201,
		30.989023, 41.179470, 22.744040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189581, 40.918549, 21.945332>,  <31.578396, 40.837238, 22.584299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189581, 40.918549, 21.945332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.060184, 41.202885, 22.195150>,  <30.982548, 41.373486, 22.345041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.060184, 41.202885, 22.195150>,  <31.189581, 40.918549, 21.945332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060184, 41.202885, 22.195150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236058, 0.699792, -0.674216,
		-0.916314, -0.070672, -0.394175,
		-0.323489, 0.710842, 0.624547,
		30.963139, 41.416138, 22.382515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623016, 41.210724, 21.570230>,  <31.189581, 40.918549, 21.945332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623016, 41.210724, 21.570230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.718313, 41.480854, 21.849422>,  <30.775492, 41.642933, 22.016937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.718313, 41.480854, 21.849422>,  <30.623016, 41.210724, 21.570230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718313, 41.480854, 21.849422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025301, 0.722747, -0.690649,
		-0.970877, 0.146881, 0.189275,
		0.238241, 0.675324, 0.697982,
		30.789785, 41.683453, 22.058817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.251871, 41.785992, 21.394054>,  <30.623016, 41.210724, 21.570230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.251871, 41.785992, 21.394054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.534849, 41.933132, 21.635454>,  <30.704636, 42.021416, 21.780294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.534849, 41.933132, 21.635454>,  <30.251871, 41.785992, 21.394054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534849, 41.933132, 21.635454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070304, 0.813024, -0.577970,
		-0.703265, 0.451310, 0.549307,
		0.707443, 0.367848, 0.603500,
		30.747082, 42.043488, 21.816504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090269, 42.451511, 21.579895>,  <30.251871, 41.785992, 21.394054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090269, 42.451511, 21.579895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.488323, 42.430580, 21.613289>,  <30.727156, 42.418022, 21.633326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.488323, 42.430580, 21.613289>,  <30.090269, 42.451511, 21.579895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488323, 42.430580, 21.613289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092233, 0.792817, -0.602441,
		-0.034660, 0.607209, 0.793786,
		0.995134, -0.052333, 0.083483,
		30.786863, 42.414879, 21.638334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302065, 43.149731, 21.589314>,  <30.090269, 42.451511, 21.579895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302065, 43.149731, 21.589314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.636200, 42.948971, 21.499592>,  <30.836681, 42.828514, 21.445759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.636200, 42.948971, 21.499592>,  <30.302065, 43.149731, 21.589314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636200, 42.948971, 21.499592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239529, 0.699547, -0.673246,
		0.494810, 0.508660, 0.704576,
		0.835337, -0.501896, -0.224304,
		30.886801, 42.798401, 21.432301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799564, 43.710056, 21.620806>,  <30.302065, 43.149731, 21.589314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799564, 43.710056, 21.620806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.984037, 43.418411, 21.418535>,  <31.094721, 43.243423, 21.297173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.984037, 43.418411, 21.418535>,  <30.799564, 43.710056, 21.620806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984037, 43.418411, 21.418535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300507, 0.664564, -0.684142,
		0.834869, 0.163555, 0.525588,
		0.461182, -0.729112, -0.505674,
		31.122393, 43.199677, 21.266832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562721, 43.897812, 21.351656>,  <30.799564, 43.710056, 21.620806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562721, 43.897812, 21.351656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.451250, 43.589676, 21.122252>,  <31.384367, 43.404793, 20.984608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.451250, 43.589676, 21.122252>,  <31.562721, 43.897812, 21.351656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451250, 43.589676, 21.122252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173887, 0.546826, -0.818990,
		0.944512, -0.327960, -0.018436,
		-0.278677, -0.770340, -0.573512,
		31.367647, 43.358574, 20.950197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967943, 43.848721, 20.761391>,  <31.562721, 43.897812, 21.351656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967943, 43.848721, 20.761391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.667940, 43.629715, 20.612947>,  <31.487938, 43.498314, 20.523882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.667940, 43.629715, 20.612947>,  <31.967943, 43.848721, 20.761391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667940, 43.629715, 20.612947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150062, 0.405588, -0.901654,
		0.644184, -0.731935, -0.222032,
		-0.750006, -0.547512, -0.371109,
		31.442938, 43.465462, 20.501616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197491, 43.453217, 20.187223>,  <31.967943, 43.848721, 20.761391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197491, 43.453217, 20.187223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.801004, 43.480370, 20.141836>,  <31.563112, 43.496662, 20.114605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.801004, 43.480370, 20.141836>,  <32.197491, 43.453217, 20.187223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801004, 43.480370, 20.141836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132037, 0.553404, -0.822381,
		0.006970, -0.830142, -0.557508,
		-0.991220, 0.067880, -0.113467,
		31.503639, 43.500732, 20.107796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089077, 43.278759, 19.509880>,  <32.197491, 43.453217, 20.187223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089077, 43.278759, 19.509880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.752369, 43.466248, 19.617004>,  <31.550344, 43.578739, 19.681278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.752369, 43.466248, 19.617004>,  <32.089077, 43.278759, 19.509880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752369, 43.466248, 19.617004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032221, 0.451589, -0.891644,
		-0.538873, -0.759189, -0.365032,
		-0.841770, 0.468721, 0.267811,
		31.499838, 43.606865, 19.697348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749586, 43.391521, 18.834436>,  <32.089077, 43.278759, 19.509880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749586, 43.391521, 18.834436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.569704, 43.625923, 19.104065>,  <31.461775, 43.766563, 19.265842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.569704, 43.625923, 19.104065>,  <31.749586, 43.391521, 18.834436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569704, 43.625923, 19.104065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224385, 0.656364, -0.720304,
		-0.864534, -0.475174, -0.163679,
		-0.449703, 0.586000, 0.674070,
		31.434793, 43.801723, 19.306286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824703, 42.822659, 18.347239>,  <31.749586, 43.391521, 18.834436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824703, 42.822659, 18.347239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.509123, 42.583630, 18.290028>,  <31.319775, 42.440212, 18.255701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.509123, 42.583630, 18.290028>,  <31.824703, 42.822659, 18.347239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509123, 42.583630, 18.290028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309555, -0.587624, 0.747579,
		-0.530782, 0.545529, 0.648590,
		-0.788952, -0.597576, -0.143029,
		31.272438, 42.404358, 18.247118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551184, 42.726788, 19.004353>,  <31.824703, 42.822659, 18.347239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551184, 42.726788, 19.004353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.421560, 42.413033, 18.792799>,  <31.343786, 42.224781, 18.665867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.421560, 42.413033, 18.792799>,  <31.551184, 42.726788, 19.004353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421560, 42.413033, 18.792799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403806, -0.620254, 0.672478,
		-0.855527, 0.004356, 0.517740,
		-0.324060, -0.784389, -0.528885,
		31.324343, 42.177715, 18.634134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343826, 42.354034, 19.496862>,  <31.551184, 42.726788, 19.004353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343826, 42.354034, 19.496862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.401367, 42.105827, 19.188507>,  <31.435892, 41.956902, 19.003494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.401367, 42.105827, 19.188507>,  <31.343826, 42.354034, 19.496862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401367, 42.105827, 19.188507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451140, -0.652210, 0.609175,
		-0.880783, -0.435409, 0.186118,
		0.143852, -0.620517, -0.770886,
		31.444523, 41.919674, 18.957241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980156, 41.758816, 19.585135>,  <31.343826, 42.354034, 19.496862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980156, 41.758816, 19.585135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.241425, 41.600979, 19.326628>,  <31.398186, 41.506275, 19.171524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.241425, 41.600979, 19.326628>,  <30.980156, 41.758816, 19.585135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241425, 41.600979, 19.326628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240521, -0.701165, 0.671206,
		-0.717998, -0.593851, -0.363070,
		0.653168, -0.394599, -0.646269,
		31.437376, 41.482601, 19.132748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850183, 40.997639, 19.496605>,  <30.980156, 41.758816, 19.585135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850183, 40.997639, 19.496605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.230051, 41.079979, 19.402157>,  <31.457972, 41.129383, 19.345488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.230051, 41.079979, 19.402157>,  <30.850183, 40.997639, 19.496605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230051, 41.079979, 19.402157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310355, -0.720613, 0.619997,
		-0.042522, -0.662073, -0.748232,
		0.949669, 0.205854, -0.236120,
		31.514952, 41.141735, 19.331322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233799, 40.341282, 19.383904>,  <30.850183, 40.997639, 19.496605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233799, 40.341282, 19.383904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.530586, 40.594170, 19.473154>,  <31.708658, 40.745903, 19.526705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.530586, 40.594170, 19.473154>,  <31.233799, 40.341282, 19.383904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530586, 40.594170, 19.473154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291702, -0.604080, 0.741618,
		0.603650, -0.485170, -0.632627,
		0.741968, 0.632216, 0.223128,
		31.753178, 40.783833, 19.540092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705091, 39.940903, 19.548571>,  <31.233799, 40.341282, 19.383904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705091, 39.940903, 19.548571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.871290, 40.268871, 19.706097>,  <31.971010, 40.465652, 19.800611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.871290, 40.268871, 19.706097>,  <31.705091, 39.940903, 19.548571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871290, 40.268871, 19.706097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444455, -0.560759, 0.698577,
		0.793613, -0.115225, -0.597412,
		0.415498, 0.819922, 0.393813,
		31.995939, 40.514847, 19.824240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434608, 39.753597, 19.542011>,  <31.705091, 39.940903, 19.548571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434608, 39.753597, 19.542011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.382744, 40.051720, 19.803610>,  <32.351624, 40.230591, 19.960569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.382744, 40.051720, 19.803610>,  <32.434608, 39.753597, 19.542011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382744, 40.051720, 19.803610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392029, -0.567294, 0.724217,
		0.910770, 0.350288, -0.218624,
		-0.129661, 0.745302, 0.653997,
		32.343845, 40.275311, 19.999809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962109, 39.620983, 19.880871>,  <32.434608, 39.753597, 19.542011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962109, 39.620983, 19.880871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.766563, 39.864620, 20.130676>,  <32.649235, 40.010803, 20.280560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.766563, 39.864620, 20.130676>,  <32.962109, 39.620983, 19.880871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766563, 39.864620, 20.130676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121651, -0.661296, 0.740195,
		0.863835, 0.437828, 0.249188,
		-0.488866, 0.609093, 0.624513,
		32.619904, 40.047348, 20.318029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407001, 39.668236, 20.534695>,  <32.962109, 39.620983, 19.880871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407001, 39.668236, 20.534695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.026859, 39.772667, 20.602413>,  <32.798775, 39.835327, 20.643044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.026859, 39.772667, 20.602413>,  <33.407001, 39.668236, 20.534695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026859, 39.772667, 20.602413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069966, -0.709437, 0.701287,
		0.303195, 0.654628, 0.692485,
		-0.950356, 0.261077, 0.169296,
		32.741753, 39.850990, 20.653202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308754, 39.898296, 21.313160>,  <33.407001, 39.668236, 20.534695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308754, 39.898296, 21.313160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.955746, 39.785183, 21.162861>,  <32.743938, 39.717316, 21.072681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.955746, 39.785183, 21.162861>,  <33.308754, 39.898296, 21.313160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955746, 39.785183, 21.162861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128035, -0.624342, 0.770587,
		-0.452504, 0.728170, 0.514790,
		-0.882523, -0.282783, -0.375748,
		32.690990, 39.700348, 21.050137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945679, 39.951153, 21.891981>,  <33.308754, 39.898296, 21.313160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945679, 39.951153, 21.891981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.756653, 39.712704, 21.632347>,  <32.643238, 39.569633, 21.476566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.756653, 39.712704, 21.632347>,  <32.945679, 39.951153, 21.891981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756653, 39.712704, 21.632347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157739, -0.667408, 0.727794,
		-0.867063, 0.446318, 0.221364,
		-0.472568, -0.596126, -0.649087,
		32.614883, 39.533867, 21.437620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525360, 39.683613, 22.360544>,  <32.945679, 39.951153, 21.891981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525360, 39.683613, 22.360544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.480457, 39.449902, 22.039045>,  <32.453514, 39.309673, 21.846146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.480457, 39.449902, 22.039045>,  <32.525360, 39.683613, 22.360544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480457, 39.449902, 22.039045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265986, -0.761677, 0.590846,
		-0.957418, 0.280112, -0.069908,
		-0.112256, -0.584282, -0.803749,
		32.446781, 39.274616, 21.797920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819784, 39.416782, 22.331341>,  <32.525360, 39.683613, 22.360544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819784, 39.416782, 22.331341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.050518, 39.179615, 22.106588>,  <32.188957, 39.037315, 21.971737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.050518, 39.179615, 22.106588>,  <31.819784, 39.416782, 22.331341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050518, 39.179615, 22.106588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037967, -0.706573, 0.706621,
		-0.815978, -0.386271, -0.430087,
		0.576835, -0.592916, -0.561882,
		32.223568, 39.001740, 21.938025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435570, 38.734627, 22.268482>,  <31.819784, 39.416782, 22.331341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435570, 38.734627, 22.268482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.823896, 38.671070, 22.196627>,  <32.056892, 38.632938, 22.153513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.823896, 38.671070, 22.196627>,  <31.435570, 38.734627, 22.268482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823896, 38.671070, 22.196627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014626, -0.786876, 0.616938,
		-0.239375, -0.596306, -0.766236,
		0.970817, -0.158887, -0.179637,
		32.115143, 38.623405, 22.142735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007603, 38.177662, 21.786194>,  <31.435570, 38.734627, 22.268482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007603, 38.177662, 21.786194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.630234, 38.087826, 21.883774>,  <30.403812, 38.033924, 21.942322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.630234, 38.087826, 21.883774>,  <31.007603, 38.177662, 21.786194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630234, 38.087826, 21.883774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331591, 0.639128, -0.693947,
		-0.000059, -0.735577, -0.677441,
		-0.943423, -0.224593, 0.243949,
		30.347206, 38.020447, 21.956959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757807, 38.287811, 21.155447>,  <31.007603, 38.177662, 21.786194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757807, 38.287811, 21.155447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.423195, 38.266396, 21.373568>,  <30.222427, 38.253548, 21.504440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.423195, 38.266396, 21.373568>,  <30.757807, 38.287811, 21.155447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423195, 38.266396, 21.373568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505030, 0.461335, -0.729462,
		-0.212515, -0.885610, -0.412957,
		-0.836529, -0.053534, 0.545300,
		30.172235, 38.250336, 21.537157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249846, 38.038029, 20.735136>,  <30.757807, 38.287811, 21.155447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249846, 38.038029, 20.735136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.027454, 38.226223, 21.009226>,  <29.894020, 38.339138, 21.173679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.027454, 38.226223, 21.009226>,  <30.249846, 38.038029, 20.735136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027454, 38.226223, 21.009226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413469, 0.558607, -0.719029,
		-0.721063, -0.683083, -0.116043,
		-0.555979, 0.470484, 0.685224,
		29.860661, 38.367367, 21.214792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513205, 38.174454, 20.436193>,  <30.249846, 38.038029, 20.735136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513205, 38.174454, 20.436193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.495417, 38.441166, 20.733765>,  <29.484745, 38.601192, 20.912308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.495417, 38.441166, 20.733765>,  <29.513205, 38.174454, 20.436193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495417, 38.441166, 20.733765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502151, 0.628837, -0.593640,
		-0.863636, -0.399961, 0.306861,
		-0.044468, 0.666780, 0.743927,
		29.482077, 38.641201, 20.956944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851397, 38.474197, 20.381048>,  <29.513205, 38.174454, 20.436193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851397, 38.474197, 20.381048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.063646, 38.760090, 20.563297>,  <29.190996, 38.931625, 20.672647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.063646, 38.760090, 20.563297>,  <28.851397, 38.474197, 20.381048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063646, 38.760090, 20.563297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531757, 0.699307, -0.477707,
		-0.660053, 0.011204, 0.751135,
		0.530626, 0.714734, 0.455622,
		29.222834, 38.974510, 20.699984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369150, 38.993542, 20.665607>,  <28.851397, 38.474197, 20.381048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369150, 38.993542, 20.665607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.725346, 39.163040, 20.599314>,  <28.939062, 39.264740, 20.559538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.725346, 39.163040, 20.599314>,  <28.369150, 38.993542, 20.665607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725346, 39.163040, 20.599314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443125, 0.724972, -0.527310,
		-0.103294, 0.543005, 0.833353,
		0.890489, 0.423747, -0.165733,
		28.992493, 39.290165, 20.549593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238718, 39.725456, 20.687304>,  <28.369150, 38.993542, 20.665607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.238718, 39.725456, 20.687304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.609495, 39.705959, 20.538496>,  <28.831963, 39.694260, 20.449211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.609495, 39.705959, 20.538496>,  <28.238718, 39.725456, 20.687304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609495, 39.705959, 20.538496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194936, 0.784628, -0.588523,
		0.320586, 0.618048, 0.717804,
		0.926944, -0.048746, -0.372021,
		28.887579, 39.691334, 20.426889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567312, 40.199959, 21.014668>,  <28.238718, 39.725456, 20.687304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567312, 40.199959, 21.014668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.241392, 40.095329, 20.807716>,  <27.045841, 40.032551, 20.683546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.241392, 40.095329, 20.807716>,  <27.567312, 40.199959, 21.014668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241392, 40.095329, 20.807716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174853, -0.739994, 0.649488,
		-0.552746, 0.619668, 0.557210,
		-0.814799, -0.261572, -0.517380,
		26.996952, 40.016857, 20.652502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964142, 40.277725, 21.549213>,  <27.567312, 40.199959, 21.014668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964142, 40.277725, 21.549213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.916840, 40.019096, 21.247763>,  <26.888458, 39.863918, 21.066893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.916840, 40.019096, 21.247763>,  <26.964142, 40.277725, 21.549213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.916840, 40.019096, 21.247763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330438, -0.690075, 0.643900,
		-0.936390, 0.325172, -0.132049,
		-0.118254, -0.646576, -0.753628,
		26.881363, 39.825123, 21.021675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.300423, 40.037937, 21.629679>,  <26.964142, 40.277725, 21.549213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.300423, 40.037937, 21.629679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.491741, 39.775127, 21.396593>,  <26.606531, 39.617443, 21.256742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.491741, 39.775127, 21.396593>,  <26.300423, 40.037937, 21.629679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491741, 39.775127, 21.396593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261798, -0.740035, 0.619524,
		-0.838270, -0.143761, -0.525961,
		0.478293, -0.657024, -0.582713,
		26.635229, 39.578018, 21.221779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.937025, 39.349556, 21.707041>,  <26.300423, 40.037937, 21.629679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.937025, 39.349556, 21.707041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.281895, 39.221424, 21.550047>,  <26.488815, 39.144543, 21.455851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.281895, 39.221424, 21.550047>,  <25.937025, 39.349556, 21.707041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.281895, 39.221424, 21.550047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155597, -0.904710, 0.396597,
		-0.482128, -0.280865, -0.829860,
		0.862173, -0.320334, -0.392484,
		26.540546, 39.125324, 21.432301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.901196, 38.535954, 21.572933>,  <25.937025, 39.349556, 21.707041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.901196, 38.535954, 21.572933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.288973, 38.632355, 21.591242>,  <26.521639, 38.690197, 21.602226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.288973, 38.632355, 21.591242>,  <25.901196, 38.535954, 21.572933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288973, 38.632355, 21.591242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186318, -0.844751, 0.501679,
		0.159572, -0.477822, -0.863842,
		0.969444, 0.241003, 0.045772,
		26.579805, 38.704655, 21.604973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.202852, 37.867485, 21.487093>,  <25.901196, 38.535954, 21.572933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.202852, 37.867485, 21.487093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.485544, 38.105309, 21.640472>,  <26.655159, 38.248001, 21.732500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.485544, 38.105309, 21.640472>,  <26.202852, 37.867485, 21.487093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.485544, 38.105309, 21.640472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295911, -0.740721, 0.603133,
		0.642625, -0.312786, -0.699427,
		0.706732, 0.594557, 0.383448,
		26.697563, 38.283676, 21.755507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702652, 37.398060, 21.548775>,  <26.202852, 37.867485, 21.487093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702652, 37.398060, 21.548775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.807442, 37.702915, 21.785593>,  <26.870316, 37.885830, 21.927683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.807442, 37.702915, 21.785593>,  <26.702652, 37.398060, 21.548775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.807442, 37.702915, 21.785593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386036, -0.645008, 0.659501,
		0.884503, 0.055780, -0.463187,
		0.261972, 0.762138, 0.592045,
		26.886034, 37.931557, 21.963207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.763039, 43.503971, 19.822315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.145176, 43.622169, 19.823448>,  <28.374458, 43.693089, 19.824129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.145176, 43.622169, 19.823448>,  <27.763039, 43.503971, 19.822315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145176, 43.622169, 19.823448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074520, -0.250184, 0.965326,
		0.285956, -0.922004, -0.261031,
		0.955341, 0.295493, 0.002834,
		28.431778, 43.710815, 19.824299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212830, 42.907379, 20.035622>,  <27.763039, 43.503971, 19.822315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212830, 42.907379, 20.035622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.400822, 43.253609, 20.104788>,  <28.513617, 43.461346, 20.146288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.400822, 43.253609, 20.104788>,  <28.212830, 42.907379, 20.035622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400822, 43.253609, 20.104788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048735, -0.221048, 0.974045,
		0.881330, -0.449355, -0.146072,
		0.469981, 0.865574, 0.172917,
		28.541817, 43.513279, 20.156662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652941, 42.689529, 20.549231>,  <28.212830, 42.907379, 20.035622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652941, 42.689529, 20.549231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.652412, 43.087021, 20.593950>,  <28.652096, 43.325516, 20.620781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.652412, 43.087021, 20.593950>,  <28.652941, 42.689529, 20.549231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.652412, 43.087021, 20.593950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025487, -0.111728, 0.993412,
		0.999674, 0.004160, -0.025180,
		-0.001320, 0.993730, 0.111798,
		28.652016, 43.385139, 20.627489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200144, 42.781742, 21.009211>,  <28.652941, 42.689529, 20.549231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200144, 42.781742, 21.009211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.971075, 43.109413, 21.021814>,  <28.833633, 43.306015, 21.029377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.971075, 43.109413, 21.021814>,  <29.200144, 42.781742, 21.009211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971075, 43.109413, 21.021814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094059, 0.027476, 0.995187,
		0.814372, 0.572877, -0.092786,
		-0.572670, 0.819180, 0.031508,
		28.799274, 43.355167, 21.031267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390644, 43.103283, 21.672653>,  <29.200144, 42.781742, 21.009211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390644, 43.103283, 21.672653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.049875, 43.291798, 21.581335>,  <28.845415, 43.404907, 21.526545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.049875, 43.291798, 21.581335>,  <29.390644, 43.103283, 21.672653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049875, 43.291798, 21.581335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226378, 0.061677, 0.972085,
		0.472214, 0.879820, 0.054145,
		-0.851920, 0.471289, -0.228297,
		28.794300, 43.433186, 21.512846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381275, 43.650898, 22.136913>,  <29.390644, 43.103283, 21.672653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381275, 43.650898, 22.136913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.008663, 43.574726, 22.012987>,  <28.785095, 43.529022, 21.938631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.008663, 43.574726, 22.012987>,  <29.381275, 43.650898, 22.136913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008663, 43.574726, 22.012987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308986, -0.034805, 0.950430,
		-0.191775, 0.981083, -0.026419,
		-0.931531, -0.190432, -0.309815,
		28.729204, 43.517597, 21.920042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043802, 44.078129, 22.585505>,  <29.381275, 43.650898, 22.136913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043802, 44.078129, 22.585505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.794718, 43.799969, 22.442028>,  <28.645267, 43.633072, 22.355942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.794718, 43.799969, 22.442028>,  <29.043802, 44.078129, 22.585505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794718, 43.799969, 22.442028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225356, -0.279598, 0.933295,
		-0.749299, 0.662004, 0.017396,
		-0.622709, -0.695396, -0.358689,
		28.607904, 43.591351, 22.334421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359177, 44.194508, 22.906986>,  <29.043802, 44.078129, 22.585505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359177, 44.194508, 22.906986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.356007, 43.813164, 22.786291>,  <28.354105, 43.584358, 22.713873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.356007, 43.813164, 22.786291>,  <28.359177, 44.194508, 22.906986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356007, 43.813164, 22.786291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294445, -0.286146, 0.911824,
		-0.955636, 0.096072, -0.278444,
		-0.007925, -0.953358, -0.301739,
		28.353630, 43.527157, 22.695770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799351, 44.018463, 23.058905>,  <28.359177, 44.194508, 22.906986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799351, 44.018463, 23.058905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.023525, 43.687580, 23.042740>,  <28.158030, 43.489048, 23.033041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.023525, 43.687580, 23.042740>,  <27.799351, 44.018463, 23.058905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023525, 43.687580, 23.042740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372526, -0.295364, 0.879764,
		-0.739686, -0.477998, -0.473690,
		0.560436, -0.827211, -0.040410,
		28.191656, 43.439415, 23.030617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352573, 43.474770, 23.348030>,  <27.799351, 44.018463, 23.058905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352573, 43.474770, 23.348030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.705862, 43.288494, 23.370132>,  <27.917835, 43.176727, 23.383394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.705862, 43.288494, 23.370132>,  <27.352573, 43.474770, 23.348030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.705862, 43.288494, 23.370132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236917, -0.341409, 0.909566,
		-0.404716, -0.816436, -0.411870,
		0.883219, -0.465695, 0.055254,
		27.970829, 43.148788, 23.386709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186182, 42.864513, 23.725849>,  <27.352573, 43.474770, 23.348030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.186182, 42.864513, 23.725849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.585526, 42.886364, 23.732719>,  <27.825132, 42.899475, 23.736841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.585526, 42.886364, 23.732719>,  <27.186182, 42.864513, 23.725849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585526, 42.886364, 23.732719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015506, -0.546672, 0.837204,
		0.055119, -0.835564, -0.546622,
		0.998360, 0.054622, 0.017176,
		27.885033, 42.902752, 23.737873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453241, 42.195854, 23.801537>,  <27.186182, 42.864513, 23.725849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453241, 42.195854, 23.801537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.746624, 42.432133, 23.936071>,  <27.922653, 42.573898, 24.016792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.746624, 42.432133, 23.936071>,  <27.453241, 42.195854, 23.801537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746624, 42.432133, 23.936071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046560, -0.537299, 0.842106,
		0.678141, -0.601988, -0.421588,
		0.733456, 0.590695, 0.336335,
		27.966661, 42.609341, 24.036972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518677, 41.413879, 23.547560>,  <27.453241, 42.195854, 23.801537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518677, 41.413879, 23.547560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186359, 41.199352, 23.488035>,  <26.986969, 41.070637, 23.452320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186359, 41.199352, 23.488035>,  <27.518677, 41.413879, 23.547560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186359, 41.199352, 23.488035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083664, 0.384665, -0.919257,
		0.550259, -0.751261, -0.364447,
		-0.830792, -0.536321, -0.148812,
		26.937122, 41.038456, 23.443392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481289, 41.258244, 22.755814>,  <27.518677, 41.413879, 23.547560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481289, 41.258244, 22.755814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.108742, 41.209415, 22.893017>,  <26.885214, 41.180119, 22.975338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.108742, 41.209415, 22.893017>,  <27.481289, 41.258244, 22.755814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108742, 41.209415, 22.893017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361517, 0.198490, -0.910993,
		0.043122, -0.972471, -0.228997,
		-0.931368, -0.122070, 0.343006,
		26.829330, 41.172794, 22.995918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012577, 40.889187, 22.258945>,  <27.481289, 41.258244, 22.755814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012577, 40.889187, 22.258945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.761013, 41.097275, 22.490063>,  <26.610075, 41.222126, 22.628733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.761013, 41.097275, 22.490063>,  <27.012577, 40.889187, 22.258945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761013, 41.097275, 22.490063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256614, 0.562623, -0.785878,
		-0.733907, -0.642517, -0.220344,
		-0.628911, 0.520219, 0.577792,
		26.572340, 41.253342, 22.663401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.324480, 40.884182, 21.921272>,  <27.012577, 40.889187, 22.258945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.324480, 40.884182, 21.921272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.328306, 41.196144, 22.171602>,  <26.330603, 41.383320, 22.321800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.328306, 41.196144, 22.171602>,  <26.324480, 40.884182, 21.921272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328306, 41.196144, 22.171602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478994, 0.552953, -0.681768,
		-0.877766, -0.293245, 0.378859,
		0.009566, 0.779904, 0.625826,
		26.331177, 41.430115, 22.359350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.741014, 41.296387, 21.673029>,  <26.324480, 40.884182, 21.921272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.741014, 41.296387, 21.673029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.918329, 41.535347, 21.940346>,  <26.024717, 41.678722, 22.100737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.918329, 41.535347, 21.940346>,  <25.741014, 41.296387, 21.673029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.918329, 41.535347, 21.940346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438662, 0.794747, -0.419468,
		-0.781711, -0.107209, 0.614356,
		0.443287, 0.597397, 0.668291,
		26.051315, 41.714565, 22.140833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.204147, 41.739613, 21.989773>,  <25.741014, 41.296387, 21.673029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.204147, 41.739613, 21.989773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.570219, 41.900780, 21.985733>,  <25.789862, 41.997478, 21.983309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.570219, 41.900780, 21.985733>,  <25.204147, 41.739613, 21.989773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.570219, 41.900780, 21.985733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361515, 0.809544, -0.462542,
		-0.178189, 0.426961, 0.886540,
		0.915181, 0.402917, -0.010101,
		25.844772, 42.021656, 21.982702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.038088, 42.388073, 22.150209>,  <25.204147, 41.739613, 21.989773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.038088, 42.388073, 22.150209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.391787, 42.389339, 21.963406>,  <25.604006, 42.390099, 21.851324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.391787, 42.389339, 21.963406>,  <25.038088, 42.388073, 22.150209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.391787, 42.389339, 21.963406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234764, 0.867467, -0.438620,
		0.403723, 0.497485, 0.767800,
		0.884247, 0.003170, -0.467008,
		25.657061, 42.390289, 21.823303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.371187, 42.955158, 22.332386>,  <25.038088, 42.388073, 22.150209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.371187, 42.955158, 22.332386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.544874, 42.850834, 21.987495>,  <25.649086, 42.788239, 21.780561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.544874, 42.850834, 21.987495>,  <25.371187, 42.955158, 22.332386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.544874, 42.850834, 21.987495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225444, 0.895246, -0.384330,
		0.872140, 0.361267, 0.329935,
		0.434219, -0.260807, -0.862226,
		25.675140, 42.772591, 21.728828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.640396, 43.535683, 22.110920>,  <25.371187, 42.955158, 22.332386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.640396, 43.535683, 22.110920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.673244, 43.317181, 21.777487>,  <25.692953, 43.186081, 21.577427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.673244, 43.317181, 21.777487>,  <25.640396, 43.535683, 22.110920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673244, 43.317181, 21.777487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006733, 0.836086, -0.548557,
		0.996600, 0.050660, 0.064982,
		0.082120, -0.546254, -0.833584,
		25.697880, 43.153305, 21.527411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056940, 43.903866, 21.575159>,  <25.640396, 43.535683, 22.110920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056940, 43.903866, 21.575159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.835295, 43.653229, 21.355946>,  <25.702307, 43.502846, 21.224419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.835295, 43.653229, 21.355946>,  <26.056940, 43.903866, 21.575159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.835295, 43.653229, 21.355946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091330, 0.700132, -0.708148,
		0.827415, -0.342344, -0.445181,
		-0.554115, -0.626591, -0.548033,
		25.669060, 43.465252, 21.191536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.345318, 43.832806, 20.885696>,  <26.056940, 43.903866, 21.575159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.345318, 43.832806, 20.885696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.968384, 43.709805, 20.832859>,  <25.742224, 43.636002, 20.801157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.968384, 43.709805, 20.832859>,  <26.345318, 43.832806, 20.885696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.968384, 43.709805, 20.832859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148322, 0.737529, -0.658826,
		0.300015, -0.601242, -0.740608,
		-0.942333, -0.307506, -0.132093,
		25.685684, 43.617554, 20.793232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223192, 43.724918, 20.149672>,  <26.345318, 43.832806, 20.885696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.223192, 43.724918, 20.149672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.852180, 43.755833, 20.295942>,  <25.629574, 43.774380, 20.383705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.852180, 43.755833, 20.295942>,  <26.223192, 43.724918, 20.149672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.852180, 43.755833, 20.295942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179164, 0.766708, -0.616490,
		-0.328013, -0.637328, -0.697296,
		-0.927528, 0.077286, 0.365676,
		25.573921, 43.779018, 20.405645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790033, 43.721863, 19.586405>,  <26.223192, 43.724918, 20.149672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790033, 43.721863, 19.586405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.561802, 43.903042, 19.860420>,  <25.424862, 44.011749, 20.024830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.561802, 43.903042, 19.860420>,  <25.790033, 43.721863, 19.586405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.561802, 43.903042, 19.860420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037897, 0.818738, -0.572915,
		-0.820367, -0.352855, -0.449991,
		-0.570580, 0.452947, 0.685038,
		25.390627, 44.038925, 20.065931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.020535, 42.994213, 19.323923>,  <25.790033, 43.721863, 19.586405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.020535, 42.994213, 19.323923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.262501, 42.817924, 19.058640>,  <26.407681, 42.712151, 18.899469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.262501, 42.817924, 19.058640>,  <26.020535, 42.994213, 19.323923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.262501, 42.817924, 19.058640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048389, -0.810986, 0.583061,
		-0.794817, -0.384795, -0.469253,
		0.604917, -0.440720, -0.663205,
		26.443975, 42.685707, 18.859678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790873, 42.384331, 19.213940>,  <26.020535, 42.994213, 19.323923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790873, 42.384331, 19.213940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.174381, 42.344597, 19.107441>,  <26.404486, 42.320755, 19.043541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.174381, 42.344597, 19.107441>,  <25.790873, 42.384331, 19.213940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174381, 42.344597, 19.107441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076353, -0.812409, 0.578067,
		-0.273726, -0.574564, -0.771330,
		0.958772, -0.099339, -0.266248,
		26.462013, 42.314796, 19.027567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.933193, 41.619892, 18.970726>,  <25.790873, 42.384331, 19.213940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.933193, 41.619892, 18.970726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.293236, 41.770870, 19.057760>,  <26.509260, 41.861458, 19.109982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.293236, 41.770870, 19.057760>,  <25.933193, 41.619892, 18.970726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.293236, 41.770870, 19.057760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244858, -0.851358, 0.463934,
		0.360356, -0.364311, -0.858732,
		0.900104, 0.377449, 0.217587,
		26.563267, 41.884106, 19.123037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.395765, 41.203369, 18.609613>,  <25.933193, 41.619892, 18.970726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.395765, 41.203369, 18.609613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.615849, 41.354034, 18.907715>,  <26.747898, 41.444431, 19.086575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.615849, 41.354034, 18.907715>,  <26.395765, 41.203369, 18.609613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.615849, 41.354034, 18.907715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185823, -0.925337, 0.330485,
		0.814090, -0.043350, -0.579119,
		0.550207, 0.376658, 0.745252,
		26.780910, 41.467033, 19.131290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.928377, 40.784267, 18.666090>,  <26.395765, 41.203369, 18.609613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.928377, 40.784267, 18.666090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.949806, 40.974621, 19.017239>,  <26.962664, 41.088833, 19.227928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.949806, 40.974621, 19.017239>,  <26.928377, 40.784267, 18.666090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949806, 40.974621, 19.017239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035083, -0.879490, 0.474622,
		0.997948, 0.005372, -0.063811,
		0.053571, 0.475887, 0.877873,
		26.965878, 41.117386, 19.280602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291641, 40.429752, 19.029570>,  <26.928377, 40.784267, 18.666090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.291641, 40.429752, 19.029570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.165508, 40.622108, 19.356813>,  <27.089828, 40.737522, 19.553160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.165508, 40.622108, 19.356813>,  <27.291641, 40.429752, 19.029570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165508, 40.622108, 19.356813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045737, -0.853391, 0.519260,
		0.947878, 0.201158, 0.247109,
		-0.315334, 0.480894, 0.818111,
		27.070908, 40.766376, 19.602247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744678, 40.172714, 19.598322>,  <27.291641, 40.429752, 19.029570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744678, 40.172714, 19.598322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.427408, 40.344559, 19.770975>,  <27.237045, 40.447666, 19.874567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.427408, 40.344559, 19.770975>,  <27.744678, 40.172714, 19.598322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427408, 40.344559, 19.770975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043105, -0.746588, 0.663889,
		0.607466, 0.507975, 0.610694,
		-0.793175, 0.429613, 0.431631,
		27.189455, 40.473442, 19.900465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803642, 40.258549, 20.317432>,  <27.744678, 40.172714, 19.598322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803642, 40.258549, 20.317432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.405708, 40.236057, 20.283625>,  <27.166948, 40.222561, 20.263340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.405708, 40.236057, 20.283625>,  <27.803642, 40.258549, 20.317432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405708, 40.236057, 20.283625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008725, -0.782133, 0.623051,
		-0.101143, 0.620569, 0.777601,
		-0.994834, -0.056233, -0.084522,
		27.107258, 40.219189, 20.258268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444138, 40.405853, 20.672461>,  <27.803642, 40.258549, 20.317432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444138, 40.405853, 20.672461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.708420, 40.267086, 20.406193>,  <28.866989, 40.183826, 20.246433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.708420, 40.267086, 20.406193>,  <28.444138, 40.405853, 20.672461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708420, 40.267086, 20.406193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214612, 0.762476, -0.610387,
		0.719313, 0.546146, 0.429318,
		0.660705, -0.346922, -0.665668,
		28.906631, 40.163010, 20.206491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787468, 41.054996, 20.323656>,  <28.444138, 40.405853, 20.672461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787468, 41.054996, 20.323656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.843956, 40.748257, 20.073215>,  <28.877850, 40.564213, 19.922951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.843956, 40.748257, 20.073215>,  <28.787468, 41.054996, 20.323656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843956, 40.748257, 20.073215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101326, 0.640313, -0.761401,
		0.984779, 0.044085, 0.168126,
		0.141220, -0.766848, -0.626101,
		28.886322, 40.518204, 19.885386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401682, 41.136585, 19.949617>,  <28.787468, 41.054996, 20.323656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401682, 41.136585, 19.949617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.182697, 40.885426, 19.728338>,  <29.051308, 40.734730, 19.595572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.182697, 40.885426, 19.728338>,  <29.401682, 41.136585, 19.949617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182697, 40.885426, 19.728338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127348, 0.590852, -0.796666,
		0.827085, -0.506591, -0.243506,
		-0.547460, -0.627901, -0.553199,
		29.018459, 40.697056, 19.562378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773500, 41.198601, 19.404198>,  <29.401682, 41.136585, 19.949617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773500, 41.198601, 19.404198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.418221, 41.053623, 19.291250>,  <29.205051, 40.966637, 19.223482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.418221, 41.053623, 19.291250>,  <29.773500, 41.198601, 19.404198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418221, 41.053623, 19.291250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042203, 0.547614, -0.835666,
		0.457512, -0.754157, -0.471095,
		-0.888201, -0.362445, -0.282368,
		29.151760, 40.944889, 19.206539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839422, 41.010506, 18.686859>,  <29.773500, 41.198601, 19.404198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839422, 41.010506, 18.686859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.446007, 41.059170, 18.740297>,  <29.209957, 41.088367, 18.772360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.446007, 41.059170, 18.740297>,  <29.839422, 41.010506, 18.686859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446007, 41.059170, 18.740297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021308, 0.656104, -0.754370,
		-0.179428, -0.744800, -0.642712,
		-0.983540, 0.121660, 0.133594,
		29.150944, 41.095669, 18.780375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554947, 40.896244, 18.016361>,  <29.839422, 41.010506, 18.686859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554947, 40.896244, 18.016361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.275578, 41.100933, 18.216499>,  <29.107956, 41.223747, 18.336582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.275578, 41.100933, 18.216499>,  <29.554947, 40.896244, 18.016361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275578, 41.100933, 18.216499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073277, 0.644309, -0.761246,
		-0.711922, -0.568337, -0.412504,
		-0.698425, 0.511721, 0.500344,
		29.066050, 41.254448, 18.366602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050192, 40.918396, 17.526714>,  <29.554947, 40.896244, 18.016361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050192, 40.918396, 17.526714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.960184, 41.205959, 17.789785>,  <28.906179, 41.378498, 17.947628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.960184, 41.205959, 17.789785>,  <29.050192, 40.918396, 17.526714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960184, 41.205959, 17.789785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203759, 0.625344, -0.753277,
		-0.952810, -0.303511, 0.005768,
		-0.225021, 0.718906, 0.657678,
		28.892677, 41.421631, 17.987089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447445, 41.219822, 17.320543>,  <29.050192, 40.918396, 17.526714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.447445, 41.219822, 17.320543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.602343, 41.511337, 17.546431>,  <28.695280, 41.686249, 17.681963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.602343, 41.511337, 17.546431>,  <28.447445, 41.219822, 17.320543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602343, 41.511337, 17.546431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228773, 0.669306, -0.706890,
		-0.893144, 0.144546, 0.425912,
		0.387243, 0.728791, 0.564718,
		28.718515, 41.729973, 17.715845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946125, 41.830647, 17.409267>,  <28.447445, 41.219822, 17.320543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946125, 41.830647, 17.409267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.321360, 41.964966, 17.443300>,  <28.546499, 42.045555, 17.463720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.321360, 41.964966, 17.443300>,  <27.946125, 41.830647, 17.409267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321360, 41.964966, 17.443300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196048, 0.717141, -0.668786,
		-0.285592, 0.610697, 0.738571,
		0.938085, 0.335795, 0.085084,
		28.602785, 42.065704, 17.468826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<30.103886, 34.112144, 31.359716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.263968, 34.475132, 31.410835>,  <30.360016, 34.692924, 31.441505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.263968, 34.475132, 31.410835>,  <30.103886, 34.112144, 31.359716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263968, 34.475132, 31.410835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277404, 0.012949, -0.960666,
		-0.873432, 0.419914, -0.246554,
		0.400204, 0.907472, 0.127796,
		30.384029, 34.747372, 31.449175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784954, 34.674118, 31.071285>,  <30.103886, 34.112144, 31.359716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784954, 34.674118, 31.071285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.179491, 34.739349, 31.080477>,  <30.416214, 34.778488, 31.085993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.179491, 34.739349, 31.080477>,  <29.784954, 34.674118, 31.071285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179491, 34.739349, 31.080477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052049, -0.176285, -0.982962,
		-0.156253, 0.970736, -0.182366,
		0.986345, 0.163082, 0.022980,
		30.475395, 34.788273, 31.087372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037273, 35.252377, 30.631962>,  <29.784954, 34.674118, 31.071285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.037273, 35.252377, 30.631962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.321774, 34.973885, 30.670713>,  <30.492474, 34.806789, 30.693964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.321774, 34.973885, 30.670713>,  <30.037273, 35.252377, 30.631962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321774, 34.973885, 30.670713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112782, -0.023007, -0.993353,
		0.693830, 0.717451, 0.062158,
		0.711253, -0.696229, 0.096879,
		30.535149, 34.765015, 30.699778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637377, 35.550617, 30.371237>,  <30.037273, 35.252377, 30.631962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637377, 35.550617, 30.371237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.702684, 35.156586, 30.349482>,  <30.741869, 34.920166, 30.336428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.702684, 35.156586, 30.349482>,  <30.637377, 35.550617, 30.371237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702684, 35.156586, 30.349482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181528, 0.084183, -0.979776,
		0.969738, 0.150093, 0.192564,
		0.163269, -0.985081, -0.054389,
		30.751665, 34.861061, 30.333164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335045, 35.483517, 30.036573>,  <30.637377, 35.550617, 30.371237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335045, 35.483517, 30.036573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.146286, 35.132919, 29.998465>,  <31.033031, 34.922562, 29.975599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.146286, 35.132919, 29.998465>,  <31.335045, 35.483517, 30.036573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146286, 35.132919, 29.998465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283041, -0.048267, -0.957892,
		0.834985, -0.478993, 0.270860,
		-0.471897, -0.876491, -0.095273,
		31.004717, 34.869972, 29.969883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646139, 35.208542, 29.472658>,  <31.335045, 35.483517, 30.036573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646139, 35.208542, 29.472658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.315432, 34.985161, 29.499743>,  <31.117008, 34.851131, 29.515993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.315432, 34.985161, 29.499743>,  <31.646139, 35.208542, 29.472658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315432, 34.985161, 29.499743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046930, -0.051477, -0.997571,
		0.560583, -0.827937, 0.016351,
		-0.826767, -0.558453, 0.067712,
		31.067402, 34.817623, 29.520056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720455, 34.698040, 29.036665>,  <31.646139, 35.208542, 29.472658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720455, 34.698040, 29.036665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.326166, 34.713341, 29.102259>,  <31.089594, 34.722523, 29.141615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.326166, 34.713341, 29.102259>,  <31.720455, 34.698040, 29.036665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326166, 34.713341, 29.102259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162081, 0.048474, -0.985586,
		-0.045652, -0.998091, -0.041581,
		-0.985721, 0.038254, 0.163985,
		31.030449, 34.724815, 29.151455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508905, 34.251537, 28.564512>,  <31.720455, 34.698040, 29.036665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508905, 34.251537, 28.564512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.189394, 34.473576, 28.657310>,  <30.997686, 34.606800, 28.712990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.189394, 34.473576, 28.657310>,  <31.508905, 34.251537, 28.564512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189394, 34.473576, 28.657310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292894, -0.021972, -0.955892,
		-0.525514, -0.831497, 0.180135,
		-0.798779, 0.555095, 0.231994,
		30.949760, 34.640102, 28.726910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032259, 33.963329, 28.152321>,  <31.508905, 34.251537, 28.564512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032259, 33.963329, 28.152321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.874588, 34.319561, 28.243082>,  <30.779985, 34.533302, 28.297539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.874588, 34.319561, 28.243082>,  <31.032259, 33.963329, 28.152321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874588, 34.319561, 28.243082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310936, 0.103100, -0.944822,
		-0.864836, -0.442982, 0.236274,
		-0.394180, 0.890583, 0.226903,
		30.756334, 34.586735, 28.311153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352095, 33.982246, 27.753687>,  <31.032259, 33.963329, 28.152321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352095, 33.982246, 27.753687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.481285, 34.352825, 27.831022>,  <30.558800, 34.575172, 27.877424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.481285, 34.352825, 27.831022>,  <30.352095, 33.982246, 27.753687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481285, 34.352825, 27.831022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295121, 0.292692, -0.909524,
		-0.899216, 0.236696, 0.367947,
		0.322976, 0.926448, 0.193340,
		30.578178, 34.630760, 27.889025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780918, 34.447437, 27.400194>,  <30.352095, 33.982246, 27.753687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780918, 34.447437, 27.400194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.118229, 34.654675, 27.457415>,  <30.320616, 34.779018, 27.491747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.118229, 34.654675, 27.457415>,  <29.780918, 34.447437, 27.400194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118229, 34.654675, 27.457415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131573, 0.457042, -0.879660,
		-0.521126, 0.722976, 0.453580,
		0.843277, 0.518092, 0.143052,
		30.371212, 34.810101, 27.500330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698332, 35.227844, 27.343225>,  <29.780918, 34.447437, 27.400194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698332, 35.227844, 27.343225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.076670, 35.144115, 27.243977>,  <30.303673, 35.093876, 27.184427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.076670, 35.144115, 27.243977>,  <29.698332, 35.227844, 27.343225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076670, 35.144115, 27.243977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129876, 0.456493, -0.880197,
		0.297514, 0.864753, 0.404584,
		0.945842, -0.209325, -0.248124,
		30.360422, 35.081318, 27.169538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003223, 35.355156, 27.312120>,  <29.698332, 35.227844, 27.343225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003223, 35.355156, 27.312120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.764256, 35.083500, 27.141537>,  <28.620874, 34.920506, 27.039186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.764256, 35.083500, 27.141537>,  <29.003223, 35.355156, 27.312120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764256, 35.083500, 27.141537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187023, -0.399132, 0.897617,
		-0.779816, 0.616011, 0.111435,
		-0.597419, -0.679135, -0.426457,
		28.585030, 34.879761, 27.013599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528414, 35.252926, 27.842709>,  <29.003223, 35.355156, 27.312120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528414, 35.252926, 27.842709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.474907, 34.934147, 27.607088>,  <28.442802, 34.742878, 27.465715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.474907, 34.934147, 27.607088>,  <28.528414, 35.252926, 27.842709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474907, 34.934147, 27.607088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104993, -0.579650, 0.808073,
		-0.985435, 0.169941, -0.006135,
		-0.133769, -0.796948, -0.589050,
		28.434776, 34.695061, 27.430372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912071, 34.931000, 28.077719>,  <28.528414, 35.252926, 27.842709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912071, 34.931000, 28.077719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.096712, 34.637756, 27.877930>,  <28.207497, 34.461811, 27.758057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.096712, 34.637756, 27.877930>,  <27.912071, 34.931000, 28.077719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096712, 34.637756, 27.877930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025284, -0.573691, 0.818681,
		-0.886726, -0.365277, -0.283353,
		0.461603, -0.733111, -0.499471,
		28.235193, 34.417824, 27.728088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505341, 34.332333, 28.170111>,  <27.912071, 34.931000, 28.077719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505341, 34.332333, 28.170111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.879274, 34.210854, 28.096514>,  <28.103634, 34.137966, 28.052355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.879274, 34.210854, 28.096514>,  <27.505341, 34.332333, 28.170111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879274, 34.210854, 28.096514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006414, -0.532521, 0.846392,
		-0.355028, -0.790056, -0.499767,
		0.934834, -0.303698, -0.183992,
		28.159725, 34.119743, 28.041315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552706, 33.587345, 28.395380>,  <27.505341, 34.332333, 28.170111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552706, 33.587345, 28.395380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.921812, 33.741463, 28.398321>,  <28.143276, 33.833935, 28.400085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.921812, 33.741463, 28.398321>,  <27.552706, 33.587345, 28.395380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921812, 33.741463, 28.398321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206790, -0.511176, 0.834229,
		0.325184, -0.768275, -0.551370,
		0.922764, 0.385296, 0.007355,
		28.198641, 33.857052, 28.400528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935106, 33.070461, 28.584063>,  <27.552706, 33.587345, 28.395380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935106, 33.070461, 28.584063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.204798, 33.360546, 28.639893>,  <28.366613, 33.534595, 28.673391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.204798, 33.360546, 28.639893>,  <27.935106, 33.070461, 28.584063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204798, 33.360546, 28.639893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362563, -0.489685, 0.792942,
		0.643399, -0.484020, -0.593096,
		0.674230, 0.725213, 0.139575,
		28.407066, 33.578110, 28.681765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602106, 32.811405, 28.702288>,  <27.935106, 33.070461, 28.584063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602106, 32.811405, 28.702288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.629469, 33.180332, 28.854424>,  <28.645887, 33.401688, 28.945705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.629469, 33.180332, 28.854424>,  <28.602106, 32.811405, 28.702288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629469, 33.180332, 28.854424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303195, -0.382421, 0.872827,
		0.950470, 0.055609, -0.305801,
		0.068407, 0.922313, 0.380340,
		28.649992, 33.457027, 28.968525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246120, 32.836483, 29.081070>,  <28.602106, 32.811405, 28.702288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246120, 32.836483, 29.081070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.046812, 33.146805, 29.235910>,  <28.927227, 33.333000, 29.328814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.046812, 33.146805, 29.235910>,  <29.246120, 32.836483, 29.081070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046812, 33.146805, 29.235910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213495, -0.322937, 0.922026,
		0.840324, 0.542064, -0.004720,
		-0.498273, 0.775808, 0.387100,
		28.897329, 33.379547, 29.352041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559080, 33.016911, 29.701782>,  <29.246120, 32.836483, 29.081070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559080, 33.016911, 29.701782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.206921, 33.200573, 29.749233>,  <28.995625, 33.310772, 29.777704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.206921, 33.200573, 29.749233>,  <29.559080, 33.016911, 29.701782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206921, 33.200573, 29.749233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019847, -0.285600, 0.958143,
		0.473821, 0.841192, 0.260555,
		-0.880397, 0.459160, 0.118628,
		28.942801, 33.338322, 29.784822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547636, 33.529636, 30.356010>,  <29.559080, 33.016911, 29.701782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547636, 33.529636, 30.356010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.194962, 33.360645, 30.271975>,  <28.983356, 33.259251, 30.221554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.194962, 33.360645, 30.271975>,  <29.547636, 33.529636, 30.356010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194962, 33.360645, 30.271975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135275, -0.200232, 0.970365,
		-0.452029, 0.883977, 0.119390,
		-0.881686, -0.422482, -0.210090,
		28.930456, 33.233902, 30.208948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181362, 33.592609, 30.937180>,  <29.547636, 33.529636, 30.356010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181362, 33.592609, 30.937180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.945738, 33.330963, 30.747387>,  <28.804363, 33.173973, 30.633511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.945738, 33.330963, 30.747387>,  <29.181362, 33.592609, 30.937180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.945738, 33.330963, 30.747387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235284, -0.422896, 0.875100,
		-0.773076, 0.627127, 0.095209,
		-0.589063, -0.654118, -0.474483,
		28.769018, 33.134727, 30.605042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729706, 33.430695, 31.434311>,  <29.181362, 33.592609, 30.937180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729706, 33.430695, 31.434311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.637133, 33.148422, 31.166447>,  <28.581589, 32.979057, 31.005728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.637133, 33.148422, 31.166447>,  <28.729706, 33.430695, 31.434311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637133, 33.148422, 31.166447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428203, -0.544193, 0.721454,
		-0.873545, 0.453721, -0.176231,
		-0.231435, -0.705685, -0.669661,
		28.567701, 32.936718, 30.965548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043423, 33.323132, 31.618345>,  <28.729706, 33.430695, 31.434311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043423, 33.323132, 31.618345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.169891, 33.009632, 31.404512>,  <28.245773, 32.821533, 31.276213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.169891, 33.009632, 31.404512>,  <28.043423, 33.323132, 31.618345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169891, 33.009632, 31.404512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504571, -0.616100, 0.604837,
		-0.803394, 0.078501, -0.590250,
		0.316173, -0.783746, -0.534581,
		28.264744, 32.774509, 31.244139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.437677, 33.013359, 31.474222>,  <28.043423, 33.323132, 31.618345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.437677, 33.013359, 31.474222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.733358, 32.745544, 31.445107>,  <27.910767, 32.584854, 31.427637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.733358, 32.745544, 31.445107>,  <27.437677, 33.013359, 31.474222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733358, 32.745544, 31.445107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492728, -0.611319, 0.619281,
		-0.459132, -0.421907, -0.781788,
		0.739200, -0.669540, -0.072790,
		27.955118, 32.544682, 31.423269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.915789, 33.582787, 31.445456>,  <27.437677, 33.013359, 31.474222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.915789, 33.582787, 31.445456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.609272, 33.664421, 31.689142>,  <26.425362, 33.713402, 31.835354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.609272, 33.664421, 31.689142>,  <26.915789, 33.582787, 31.445456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609272, 33.664421, 31.689142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308925, 0.948444, 0.070841,
		-0.563352, 0.242488, -0.789832,
		-0.766290, 0.204091, 0.609218,
		26.379385, 33.725647, 31.871908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226933, 33.402634, 31.109718>,  <26.915789, 33.582787, 31.445456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226933, 33.402634, 31.109718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.355276, 33.720741, 31.315475>,  <26.432283, 33.911606, 31.438931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.355276, 33.720741, 31.315475>,  <26.226933, 33.402634, 31.109718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.355276, 33.720741, 31.315475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105908, 0.569830, -0.814910,
		-0.941187, 0.206993, 0.267061,
		0.320860, 0.795266, 0.514394,
		26.451534, 33.959320, 31.469793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.711006, 33.882812, 31.177689>,  <26.226933, 33.402634, 31.109718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.711006, 33.882812, 31.177689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.066790, 34.064491, 31.197979>,  <26.280260, 34.173500, 31.210154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.066790, 34.064491, 31.197979>,  <25.711006, 33.882812, 31.177689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.066790, 34.064491, 31.197979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323603, 0.704282, -0.631876,
		-0.322720, 0.545612, 0.773408,
		0.889457, 0.454196, 0.050724,
		26.333626, 34.200748, 31.213196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.516636, 34.572670, 31.319599>,  <25.711006, 33.882812, 31.177689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.516636, 34.572670, 31.319599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.884722, 34.600128, 31.165459>,  <26.105574, 34.616604, 31.072975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.884722, 34.600128, 31.165459>,  <25.516636, 34.572670, 31.319599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884722, 34.600128, 31.165459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257187, 0.848194, -0.463058,
		0.295064, 0.525219, 0.798174,
		0.920213, 0.068648, -0.385351,
		26.160786, 34.620724, 31.049854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.545172, 35.284824, 31.272402>,  <25.516636, 34.572670, 31.319599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.545172, 35.284824, 31.272402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.870533, 35.161808, 31.074900>,  <26.065750, 35.087997, 30.956398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.870533, 35.161808, 31.074900>,  <25.545172, 35.284824, 31.272402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.870533, 35.161808, 31.074900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129712, 0.731550, -0.669335,
		0.567053, 0.608486, 0.555154,
		0.813404, -0.307539, -0.493756,
		26.114553, 35.069546, 30.926773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.950966, 35.840336, 31.118053>,  <25.545172, 35.284824, 31.272402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.950966, 35.840336, 31.118053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.082441, 35.566448, 30.857862>,  <26.161327, 35.402115, 30.701748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.082441, 35.566448, 30.857862>,  <25.950966, 35.840336, 31.118053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082441, 35.566448, 30.857862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177971, 0.721314, -0.669353,
		0.927518, 0.104244, 0.358949,
		0.328690, -0.684719, -0.650479,
		26.181049, 35.361034, 30.662720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532488, 36.071106, 30.771482>,  <25.950966, 35.840336, 31.118053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532488, 36.071106, 30.771482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.407923, 35.794964, 30.510275>,  <26.333183, 35.629280, 30.353550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.407923, 35.794964, 30.510275>,  <26.532488, 36.071106, 30.771482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.407923, 35.794964, 30.510275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011908, 0.684300, -0.729104,
		0.950201, -0.234827, -0.204877,
		-0.311411, -0.690355, -0.653018,
		26.314499, 35.587856, 30.314369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896982, 36.116344, 30.147306>,  <26.532488, 36.071106, 30.771482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896982, 36.116344, 30.147306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.557894, 35.929634, 30.046520>,  <26.354441, 35.817608, 29.986048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.557894, 35.929634, 30.046520>,  <26.896982, 36.116344, 30.147306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.557894, 35.929634, 30.046520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069278, 0.568373, -0.819850,
		0.525895, -0.677550, -0.514160,
		-0.847723, -0.466775, -0.251965,
		26.303577, 35.789600, 29.970930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.911034, 36.062107, 29.465559>,  <26.896982, 36.116344, 30.147306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.911034, 36.062107, 29.465559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.529392, 35.954098, 29.517370>,  <26.300407, 35.889294, 29.548456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.529392, 35.954098, 29.517370>,  <26.911034, 36.062107, 29.465559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.529392, 35.954098, 29.517370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220770, 0.341904, -0.913434,
		0.202362, -0.900105, -0.385824,
		-0.954102, -0.270023, 0.129528,
		26.243162, 35.873089, 29.556229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.763231, 35.664021, 28.886003>,  <26.911034, 36.062107, 29.465559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.763231, 35.664021, 28.886003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.427937, 35.822945, 29.035402>,  <26.226759, 35.918301, 29.125042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.427937, 35.822945, 29.035402>,  <26.763231, 35.664021, 28.886003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.427937, 35.822945, 29.035402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191216, 0.427280, -0.883667,
		-0.510682, -0.812141, -0.282189,
		-0.838237, 0.397314, 0.373499,
		26.176466, 35.942139, 29.147451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292109, 35.648609, 28.336643>,  <26.763231, 35.664021, 28.886003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292109, 35.648609, 28.336643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.151693, 35.930080, 28.583742>,  <26.067444, 36.098961, 28.732002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.151693, 35.930080, 28.583742>,  <26.292109, 35.648609, 28.336643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.151693, 35.930080, 28.583742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048818, 0.645083, -0.762552,
		-0.935089, -0.297840, -0.192095,
		-0.351036, 0.703676, 0.617749,
		26.046383, 36.141182, 28.769068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.750313, 35.836712, 27.954576>,  <26.292109, 35.648609, 28.336643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.750313, 35.836712, 27.954576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.826483, 36.124161, 28.222103>,  <25.872185, 36.296631, 28.382620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.826483, 36.124161, 28.222103>,  <25.750313, 35.836712, 27.954576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.826483, 36.124161, 28.222103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131991, 0.693840, -0.707930,
		-0.972789, 0.046529, 0.226975,
		0.190424, 0.718625, 0.668818,
		25.883610, 36.339748, 28.422749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.178080, 36.367561, 27.842106>,  <25.750313, 35.836712, 27.954576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.178080, 36.367561, 27.842106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.476997, 36.561649, 28.023706>,  <25.656347, 36.678101, 28.132666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.476997, 36.561649, 28.023706>,  <25.178080, 36.367561, 27.842106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.476997, 36.561649, 28.023706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001722, 0.684636, -0.728883,
		-0.664492, 0.543908, 0.512460,
		0.747293, 0.485219, 0.453999,
		25.701185, 36.707214, 28.159906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.016224, 37.020443, 27.763693>,  <25.178080, 36.367561, 27.842106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.016224, 37.020443, 27.763693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.410793, 37.019608, 27.829374>,  <25.647535, 37.019104, 27.868784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.410793, 37.019608, 27.829374>,  <25.016224, 37.020443, 27.763693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.410793, 37.019608, 27.829374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108989, 0.756290, -0.645095,
		-0.122835, 0.654233, 0.746251,
		0.986424, -0.002093, 0.164203,
		25.706720, 37.018978, 27.878635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.175192, 37.778454, 27.863808>,  <25.016224, 37.020443, 27.763693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.175192, 37.778454, 27.863808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.513279, 37.587170, 27.768370>,  <25.716131, 37.472401, 27.711107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.513279, 37.587170, 27.768370>,  <25.175192, 37.778454, 27.863808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.513279, 37.587170, 27.768370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175384, 0.669928, -0.721413,
		0.504828, 0.567904, 0.650103,
		0.845216, -0.478207, -0.238597,
		25.766844, 37.443707, 27.696791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.592724, 38.303978, 27.883619>,  <25.175192, 37.778454, 27.863808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.592724, 38.303978, 27.883619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.801474, 38.033768, 27.675272>,  <25.926723, 37.871639, 27.550262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.801474, 38.033768, 27.675272>,  <25.592724, 38.303978, 27.883619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801474, 38.033768, 27.675272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147067, 0.672728, -0.725126,
		0.840248, 0.301824, 0.450429,
		0.521876, -0.675529, -0.520870,
		25.958036, 37.831108, 27.519011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.224712, 38.579605, 27.740511>,  <25.592724, 38.303978, 27.883619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.224712, 38.579605, 27.740511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.157951, 38.293274, 27.469297>,  <26.117895, 38.121475, 27.306570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.157951, 38.293274, 27.469297>,  <26.224712, 38.579605, 27.740511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.157951, 38.293274, 27.469297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382675, 0.586741, -0.713649,
		0.908682, -0.378577, 0.176002,
		-0.166904, -0.715832, -0.678033,
		26.107880, 38.078526, 27.265888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.795931, 38.585320, 27.327658>,  <26.224712, 38.579605, 27.740511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.795931, 38.585320, 27.327658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.544596, 38.390240, 27.085220>,  <26.393795, 38.273193, 26.939758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.544596, 38.390240, 27.085220>,  <26.795931, 38.585320, 27.327658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.544596, 38.390240, 27.085220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430073, 0.431449, -0.793025,
		0.648253, -0.758949, -0.061350,
		-0.628335, -0.487696, -0.606092,
		26.356094, 38.243931, 26.903393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156250, 38.424564, 26.803900>,  <26.795931, 38.585320, 27.327658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156250, 38.424564, 26.803900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.795538, 38.376705, 26.637777>,  <26.579111, 38.347992, 26.538103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.795538, 38.376705, 26.637777>,  <27.156250, 38.424564, 26.803900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795538, 38.376705, 26.637777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351223, 0.357121, -0.865510,
		0.251869, -0.926364, -0.280022,
		-0.901779, -0.119645, -0.415308,
		26.525005, 38.340813, 26.513186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292852, 38.085297, 26.314880>,  <27.156250, 38.424564, 26.803900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292852, 38.085297, 26.314880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.950706, 38.278851, 26.240898>,  <26.745419, 38.394981, 26.196508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.950706, 38.278851, 26.240898>,  <27.292852, 38.085297, 26.314880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.950706, 38.278851, 26.240898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370690, 0.322341, -0.871025,
		-0.361858, -0.813604, -0.455091,
		-0.855364, 0.483885, -0.184953,
		26.694098, 38.424015, 26.185411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097834, 38.120586, 25.552280>,  <27.292852, 38.085297, 26.314880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097834, 38.120586, 25.552280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.873552, 38.425430, 25.681774>,  <26.738983, 38.608337, 25.759470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.873552, 38.425430, 25.681774>,  <27.097834, 38.120586, 25.552280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873552, 38.425430, 25.681774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192953, 0.500470, -0.843978,
		-0.805222, -0.410755, -0.427666,
		-0.560702, 0.762109, 0.323733,
		26.705341, 38.654064, 25.778894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787596, 38.363369, 24.881485>,  <27.097834, 38.120586, 25.552280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787596, 38.363369, 24.881485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.714479, 38.652077, 25.148506>,  <26.670609, 38.825302, 25.308720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.714479, 38.652077, 25.148506>,  <26.787596, 38.363369, 24.881485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714479, 38.652077, 25.148506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027234, 0.682452, -0.730423,
		-0.982774, -0.115335, -0.144404,
		-0.182792, 0.721774, 0.667555,
		26.659641, 38.868610, 25.348772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.134340, 38.843269, 24.655529>,  <26.787596, 38.363369, 24.881485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.134340, 38.843269, 24.655529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.397964, 39.039608, 24.883461>,  <26.556139, 39.157413, 25.020220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.397964, 39.039608, 24.883461>,  <26.134340, 38.843269, 24.655529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397964, 39.039608, 24.883461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051579, 0.726379, -0.685356,
		-0.750318, 0.481083, 0.453411,
		0.659062, 0.490849, 0.569829,
		26.595682, 39.186863, 25.054409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870436, 39.485294, 24.648046>,  <26.134340, 38.843269, 24.655529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870436, 39.485294, 24.648046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.241049, 39.553352, 24.782265>,  <26.463417, 39.594189, 24.862797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.241049, 39.553352, 24.782265>,  <25.870436, 39.485294, 24.648046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.241049, 39.553352, 24.782265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118960, 0.713636, -0.690343,
		-0.356917, 0.679540, 0.640965,
		0.926531, 0.170145, 0.335547,
		26.519009, 39.604397, 24.882929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.883286, 40.156548, 24.783352>,  <25.870436, 39.485294, 24.648046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.883286, 40.156548, 24.783352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.264746, 40.047729, 24.731901>,  <26.493622, 39.982441, 24.701031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.264746, 40.047729, 24.731901>,  <25.883286, 40.156548, 24.783352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.264746, 40.047729, 24.731901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067492, 0.609927, -0.789578,
		0.293253, 0.744299, 0.600017,
		0.953650, -0.272043, -0.128629,
		26.550840, 39.966118, 24.693312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.160185, 40.721703, 24.878880>,  <25.883286, 40.156548, 24.783352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.160185, 40.721703, 24.878880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.422499, 40.512707, 24.660908>,  <26.579887, 40.387310, 24.530125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.422499, 40.512707, 24.660908>,  <26.160185, 40.721703, 24.878880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.422499, 40.512707, 24.660908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171608, 0.806083, -0.566375,
		0.735187, 0.277904, 0.618279,
		0.655782, -0.522493, -0.544932,
		26.619234, 40.355957, 24.497429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822140, 41.132202, 24.735386>,  <26.160185, 40.721703, 24.878880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822140, 41.132202, 24.735386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.824871, 40.838116, 24.464264>,  <26.826509, 40.661663, 24.301592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.824871, 40.838116, 24.464264>,  <26.822140, 41.132202, 24.735386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824871, 40.838116, 24.464264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066537, 0.675982, -0.733908,
		0.997761, 0.050111, -0.044302,
		0.006829, -0.735212, -0.677803,
		26.826920, 40.617554, 24.260923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342197, 41.316933, 24.242058>,  <26.822140, 41.132202, 24.735386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342197, 41.316933, 24.242058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.105051, 41.068394, 24.037146>,  <26.962763, 40.919270, 23.914198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.105051, 41.068394, 24.037146>,  <27.342197, 41.316933, 24.242058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105051, 41.068394, 24.037146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030228, 0.618515, -0.785191,
		0.804733, -0.480999, -0.347915,
		-0.592867, -0.621352, -0.512279,
		26.927191, 40.881989, 23.883463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927248, 41.751934, 24.109205>,  <27.342197, 41.316933, 24.242058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927248, 41.751934, 24.109205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.009384, 42.094166, 24.299288>,  <28.058666, 42.299503, 24.413338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.009384, 42.094166, 24.299288>,  <27.927248, 41.751934, 24.109205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009384, 42.094166, 24.299288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088243, -0.499762, 0.861656,
		0.974704, -0.135000, -0.178120,
		0.205341, 0.855578, 0.475208,
		28.070986, 42.350838, 24.441851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453930, 41.511208, 24.649614>,  <27.927248, 41.751934, 24.109205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453930, 41.511208, 24.649614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.316517, 41.869747, 24.761723>,  <28.234068, 42.084869, 24.828987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.316517, 41.869747, 24.761723>,  <28.453930, 41.511208, 24.649614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316517, 41.869747, 24.761723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009125, -0.301604, 0.953390,
		0.939096, 0.324964, 0.111791,
		-0.343534, 0.896344, 0.280270,
		28.213457, 42.138649, 24.845804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840956, 41.697826, 25.152969>,  <28.453930, 41.511208, 24.649614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840956, 41.697826, 25.152969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.498188, 41.896900, 25.206625>,  <28.292526, 42.016346, 25.238819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.498188, 41.896900, 25.206625>,  <28.840956, 41.697826, 25.152969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498188, 41.896900, 25.206625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043659, -0.329385, 0.943186,
		0.513595, 0.802380, 0.303985,
		-0.856921, 0.497687, 0.134139,
		28.241112, 42.046207, 25.246866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933226, 41.984360, 25.743979>,  <28.840956, 41.697826, 25.152969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933226, 41.984360, 25.743979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.536581, 42.014149, 25.701727>,  <28.298594, 42.032024, 25.676376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.536581, 42.014149, 25.701727>,  <28.933226, 41.984360, 25.743979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536581, 42.014149, 25.701727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115586, -0.145354, 0.982605,
		0.057826, 0.986572, 0.152743,
		-0.991613, 0.074476, -0.105629,
		28.239098, 42.036491, 25.670038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839228, 42.293827, 26.371504>,  <28.933226, 41.984360, 25.743979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839228, 42.293827, 26.371504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.495106, 42.166492, 26.212236>,  <28.288633, 42.090092, 26.116676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.495106, 42.166492, 26.212236>,  <28.839228, 42.293827, 26.371504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495106, 42.166492, 26.212236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229785, -0.455058, 0.860303,
		-0.455058, 0.831615, 0.318338,
		-0.860303, -0.318338, -0.398170,
		28.237015, 42.070992, 26.092785>
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
