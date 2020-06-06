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
	<24.265322, 34.915413, 35.288116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.113697, 35.130093, 34.986584>,  <24.022722, 35.258900, 34.805664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.113697, 35.130093, 34.986584>,  <24.265322, 34.915413, 35.288116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.113697, 35.130093, 34.986584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421665, 0.825318, 0.375566,
		0.823719, -0.175503, -0.539154,
		-0.379060, 0.536702, -0.753833,
		23.999979, 35.291103, 34.760433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.748928, 35.401455, 35.072983>,  <24.265322, 34.915413, 35.288116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.748928, 35.401455, 35.072983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.402636, 35.531769, 34.920998>,  <24.194860, 35.609959, 34.829807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.402636, 35.531769, 34.920998>,  <24.748928, 35.401455, 35.072983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.402636, 35.531769, 34.920998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247059, 0.938380, 0.241673,
		0.435285, 0.115350, -0.892873,
		-0.865730, 0.325788, -0.379964,
		24.142916, 35.629505, 34.807007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.991327, 35.849705, 34.580898>,  <24.748928, 35.401455, 35.072983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.991327, 35.849705, 34.580898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615768, 35.941021, 34.683933>,  <24.390432, 35.995811, 34.745754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615768, 35.941021, 34.683933>,  <24.991327, 35.849705, 34.580898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.615768, 35.941021, 34.683933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284011, 0.936626, 0.205109,
		-0.194442, 0.265735, -0.944234,
		-0.938898, 0.228291, 0.257591,
		24.334099, 36.009510, 34.761211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650099, 35.994556, 34.836090>,  <24.991327, 35.849705, 34.580898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650099, 35.994556, 34.836090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781551, 35.628395, 34.929073>,  <25.860422, 35.408699, 34.984863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781551, 35.628395, 34.929073>,  <25.650099, 35.994556, 34.836090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781551, 35.628395, 34.929073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861830, 0.391331, 0.322660,
		-0.386331, 0.094300, 0.917527,
		0.328630, -0.915406, 0.232453,
		25.880140, 35.353775, 34.998810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908798, 35.936714, 35.496208>,  <25.650099, 35.994556, 34.836090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.908798, 35.936714, 35.496208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103476, 35.622795, 35.342728>,  <26.220282, 35.434444, 35.250637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103476, 35.622795, 35.342728>,  <25.908798, 35.936714, 35.496208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.103476, 35.622795, 35.342728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819378, 0.257805, 0.512011,
		-0.302904, -0.563589, 0.768516,
		0.486691, -0.784795, -0.383703,
		26.249483, 35.387356, 35.227615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225199, 35.531464, 36.062759>,  <25.908798, 35.936714, 35.496208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225199, 35.531464, 36.062759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405005, 35.495564, 35.707256>,  <26.512888, 35.474022, 35.493954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405005, 35.495564, 35.707256>,  <26.225199, 35.531464, 36.062759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405005, 35.495564, 35.707256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842267, 0.373977, 0.388236,
		0.297530, -0.923085, 0.243701,
		0.449514, -0.089749, -0.888754,
		26.539858, 35.468639, 35.440632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921455, 35.226364, 36.115330>,  <26.225199, 35.531464, 36.062759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921455, 35.226364, 36.115330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.912304, 35.442707, 35.779007>,  <26.906813, 35.572510, 35.577213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.912304, 35.442707, 35.779007>,  <26.921455, 35.226364, 36.115330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.912304, 35.442707, 35.779007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840818, 0.465385, 0.276482,
		0.540835, -0.700639, -0.465406,
		-0.022879, 0.540853, -0.840806,
		26.905439, 35.604961, 35.526764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569815, 35.432446, 36.047127>,  <26.921455, 35.226364, 36.115330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569815, 35.432446, 36.047127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387300, 35.672600, 35.784420>,  <27.277792, 35.816692, 35.626797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387300, 35.672600, 35.784420>,  <27.569815, 35.432446, 36.047127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387300, 35.672600, 35.784420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804589, 0.593607, -0.016334,
		0.380054, -0.535879, -0.753918,
		-0.456284, 0.600386, -0.656766,
		27.250416, 35.852715, 35.587391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038624, 35.680210, 35.596756>,  <27.569815, 35.432446, 36.047127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038624, 35.680210, 35.596756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740097, 35.944855, 35.567684>,  <27.560982, 36.103642, 35.550240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740097, 35.944855, 35.567684>,  <28.038624, 35.680210, 35.596756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.740097, 35.944855, 35.567684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664950, 0.745930, -0.037810,
		0.029198, -0.076547, -0.996638,
		-0.746317, 0.661611, -0.072679,
		27.516203, 36.143337, 35.545879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326960, 36.193691, 35.182171>,  <28.038624, 35.680210, 35.596756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326960, 36.193691, 35.182171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011126, 36.378296, 35.343945>,  <27.821625, 36.489059, 35.441010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011126, 36.378296, 35.343945>,  <28.326960, 36.193691, 35.182171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011126, 36.378296, 35.343945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500652, 0.865587, -0.010303,
		-0.354826, 0.194345, -0.914510,
		-0.789586, 0.461507, 0.404432,
		27.774250, 36.516747, 35.465275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287045, 36.679920, 34.739956>,  <28.326960, 36.193691, 35.182171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287045, 36.679920, 34.739956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093098, 36.765762, 35.079098>,  <27.976730, 36.817268, 35.282581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093098, 36.765762, 35.079098>,  <28.287045, 36.679920, 34.739956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093098, 36.765762, 35.079098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401482, 0.915864, -0.002219,
		-0.776992, 0.339321, -0.530230,
		-0.484866, 0.214602, 0.847851,
		27.947638, 36.830143, 35.333454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801159, 37.196808, 34.618103>,  <28.287045, 36.679920, 34.739956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.801159, 37.196808, 34.618103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.879766, 37.224201, 35.009346>,  <27.926931, 37.240635, 35.244091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.879766, 37.224201, 35.009346>,  <27.801159, 37.196808, 34.618103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879766, 37.224201, 35.009346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101602, 0.990766, -0.089779,
		-0.975222, 0.117021, 0.187746,
		0.196519, 0.068479, 0.978106,
		27.938723, 37.244743, 35.302776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.687716, 37.850826, 34.813881>,  <27.801159, 37.196808, 34.618103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.687716, 37.850826, 34.813881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.887985, 37.730843, 35.138683>,  <28.008148, 37.658852, 35.333565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.887985, 37.730843, 35.138683>,  <27.687716, 37.850826, 34.813881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887985, 37.730843, 35.138683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349517, 0.928230, 0.127382,
		-0.791935, 0.220032, 0.569583,
		0.500676, -0.299958, 0.812003,
		28.038189, 37.640854, 35.382286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453472, 38.263481, 35.358124>,  <27.687716, 37.850826, 34.813881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453472, 38.263481, 35.358124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816374, 38.130268, 35.460869>,  <28.034115, 38.050339, 35.522514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816374, 38.130268, 35.460869>,  <27.453472, 38.263481, 35.358124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816374, 38.130268, 35.460869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306606, 0.941765, 0.138099,
		-0.287892, -0.046537, 0.956532,
		0.907255, -0.333036, 0.256858,
		28.088551, 38.030357, 35.537926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525623, 38.589539, 36.011089>,  <27.453472, 38.263481, 35.358124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525623, 38.589539, 36.011089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884815, 38.461777, 35.890018>,  <28.100330, 38.385120, 35.817375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884815, 38.461777, 35.890018>,  <27.525623, 38.589539, 36.011089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884815, 38.461777, 35.890018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415005, 0.843418, 0.341199,
		0.146304, -0.432002, 0.889927,
		0.897979, -0.319405, -0.302678,
		28.154209, 38.365955, 35.799213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999269, 38.724480, 36.540005>,  <27.525623, 38.589539, 36.011089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999269, 38.724480, 36.540005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232069, 38.682209, 36.217487>,  <28.371748, 38.656845, 36.023975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232069, 38.682209, 36.217487>,  <27.999269, 38.724480, 36.540005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232069, 38.682209, 36.217487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492939, 0.834431, 0.246447,
		0.646754, -0.540885, 0.537728,
		0.581997, -0.105677, -0.806295,
		28.406668, 38.650505, 35.975597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735687, 38.699306, 36.786507>,  <27.999269, 38.724480, 36.540005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735687, 38.699306, 36.786507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725315, 38.813202, 36.403206>,  <28.719091, 38.881538, 36.173225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725315, 38.813202, 36.403206>,  <28.735687, 38.699306, 36.786507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725315, 38.813202, 36.403206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379425, 0.889649, 0.254089,
		0.924859, -0.356997, -0.131105,
		-0.025929, 0.284741, -0.958254,
		28.717537, 38.898624, 36.115730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409958, 38.821625, 36.602608>,  <28.735687, 38.699306, 36.786507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409958, 38.821625, 36.602608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171370, 39.012882, 36.344738>,  <29.028217, 39.127636, 36.190018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171370, 39.012882, 36.344738>,  <29.409958, 38.821625, 36.602608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171370, 39.012882, 36.344738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540828, 0.832906, 0.117358,
		0.593065, -0.278656, -0.755397,
		-0.596472, 0.478141, -0.644673,
		28.992428, 39.156326, 36.151337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917370, 39.247295, 36.236923>,  <29.409958, 38.821625, 36.602608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917370, 39.247295, 36.236923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545038, 39.382023, 36.180195>,  <29.321640, 39.462860, 36.146156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545038, 39.382023, 36.180195>,  <29.917370, 39.247295, 36.236923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545038, 39.382023, 36.180195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337954, 0.941014, 0.016744,
		0.139095, -0.032343, -0.989751,
		-0.930828, 0.336819, -0.141821,
		29.265789, 39.483070, 36.137650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038338, 39.771450, 35.976028>,  <29.917370, 39.247295, 36.236923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038338, 39.771450, 35.976028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668739, 39.845505, 36.109867>,  <29.446980, 39.889938, 36.190170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668739, 39.845505, 36.109867>,  <30.038338, 39.771450, 35.976028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668739, 39.845505, 36.109867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206357, 0.978056, 0.028684,
		-0.321947, 0.095551, -0.941924,
		-0.923995, 0.185138, 0.334600,
		29.391541, 39.901047, 36.210247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666513, 40.191483, 35.424633>,  <30.038338, 39.771450, 35.976028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666513, 40.191483, 35.424633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500641, 40.250389, 35.783821>,  <29.401117, 40.285732, 35.999332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500641, 40.250389, 35.783821>,  <29.666513, 40.191483, 35.424633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500641, 40.250389, 35.783821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109445, 0.987726, -0.111442,
		-0.903361, 0.052065, -0.425710,
		-0.414682, 0.147264, 0.897971,
		29.376236, 40.294567, 36.053211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334059, 40.905499, 35.494957>,  <29.666513, 40.191483, 35.424633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334059, 40.905499, 35.494957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321047, 40.852341, 35.891197>,  <29.313240, 40.820446, 36.128941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321047, 40.852341, 35.891197>,  <29.334059, 40.905499, 35.494957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321047, 40.852341, 35.891197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144902, 0.980022, 0.136237,
		-0.988911, 0.147971, -0.012624,
		-0.032531, -0.132897, 0.990596,
		29.311287, 40.812473, 36.188377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944508, 41.455791, 35.682911>,  <29.334059, 40.905499, 35.494957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944508, 41.455791, 35.682911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108974, 41.332981, 36.026230>,  <29.207655, 41.259293, 36.232220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108974, 41.332981, 36.026230>,  <28.944508, 41.455791, 35.682911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108974, 41.332981, 36.026230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094187, 0.950840, 0.295014,
		-0.906680, -0.040460, 0.419874,
		0.411169, -0.307030, 0.858296,
		29.232325, 41.240871, 36.283718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615662, 41.889992, 36.226509>,  <28.944508, 41.455791, 35.682911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615662, 41.889992, 36.226509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964609, 41.741070, 36.353226>,  <29.173977, 41.651714, 36.429256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964609, 41.741070, 36.353226>,  <28.615662, 41.889992, 36.226509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964609, 41.741070, 36.353226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288455, 0.915241, 0.281297,
		-0.394673, -0.154013, 0.905822,
		0.872368, -0.372309, 0.316795,
		29.226320, 41.629375, 36.448265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882654, 42.467609, 36.681355>,  <28.615662, 41.889992, 36.226509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882654, 42.467609, 36.681355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195801, 42.224209, 36.629436>,  <29.383688, 42.078167, 36.598286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195801, 42.224209, 36.629436>,  <28.882654, 42.467609, 36.681355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195801, 42.224209, 36.629436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620194, 0.779882, 0.084513,
		0.049798, -0.146659, 0.987933,
		0.782866, -0.608502, -0.129794,
		29.430660, 42.041656, 36.590500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386845, 42.391388, 37.239193>,  <28.882654, 42.467609, 36.681355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386845, 42.391388, 37.239193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545347, 42.393261, 36.871941>,  <29.640448, 42.394386, 36.651588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545347, 42.393261, 36.871941>,  <29.386845, 42.391388, 37.239193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545347, 42.393261, 36.871941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320599, 0.936337, 0.143143,
		0.860348, -0.351072, 0.369526,
		0.396255, 0.004683, -0.918129,
		29.664223, 42.394665, 36.596500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990221, 42.384518, 37.272610>,  <29.386845, 42.391388, 37.239193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990221, 42.384518, 37.272610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.951086, 42.571301, 36.921070>,  <29.927605, 42.683372, 36.710148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.951086, 42.571301, 36.921070>,  <29.990221, 42.384518, 37.272610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951086, 42.571301, 36.921070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418807, 0.820403, 0.389282,
		0.902789, -0.329982, -0.275832,
		-0.097838, 0.466960, -0.878849,
		29.921734, 42.711388, 36.657413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636436, 42.560604, 36.808651>,  <29.990221, 42.384518, 37.272610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636436, 42.560604, 36.808651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346388, 42.828358, 36.873302>,  <30.172358, 42.989010, 36.912094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346388, 42.828358, 36.873302>,  <30.636436, 42.560604, 36.808651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346388, 42.828358, 36.873302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679995, 0.659004, 0.321435,
		0.108646, 0.342989, -0.933035,
		-0.725122, 0.669382, 0.161633,
		30.128851, 43.029171, 36.921791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316553, 42.206188, 36.485470>,  <30.636436, 42.560604, 36.808651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316553, 42.206188, 36.485470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669474, 42.070759, 36.354679>,  <31.881226, 41.989502, 36.276203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669474, 42.070759, 36.354679>,  <31.316553, 42.206188, 36.485470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669474, 42.070759, 36.354679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243448, 0.922801, -0.298616,
		0.402838, 0.183866, 0.896613,
		0.882300, -0.338573, -0.326978,
		31.934164, 41.969189, 36.256584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781645, 42.683933, 36.887402>,  <31.316553, 42.206188, 36.485470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781645, 42.683933, 36.887402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928316, 42.515121, 36.555756>,  <32.016319, 42.413834, 36.356766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928316, 42.515121, 36.555756>,  <31.781645, 42.683933, 36.887402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928316, 42.515121, 36.555756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145636, 0.906243, -0.396880,
		0.918878, 0.024778, 0.393762,
		0.366678, -0.422030, -0.829119,
		32.038319, 42.388512, 36.307018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463745, 42.816383, 36.732277>,  <31.781645, 42.683933, 36.887402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463745, 42.816383, 36.732277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245468, 42.766781, 36.400772>,  <32.114502, 42.737019, 36.201870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245468, 42.766781, 36.400772>,  <32.463745, 42.816383, 36.732277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245468, 42.766781, 36.400772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206613, 0.938549, -0.276471,
		0.812118, -0.322100, -0.486535,
		-0.545689, -0.124003, -0.828763,
		32.081760, 42.729580, 36.152142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857605, 42.550484, 36.165337>,  <32.463745, 42.816383, 36.732277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857605, 42.550484, 36.165337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540798, 42.776020, 36.071705>,  <32.350716, 42.911343, 36.015526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540798, 42.776020, 36.071705>,  <32.857605, 42.550484, 36.165337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540798, 42.776020, 36.071705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603576, 0.780767, -0.161553,
		0.091674, -0.269239, -0.958700,
		-0.792018, 0.563838, -0.234082,
		32.303192, 42.945171, 36.001480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995564, 41.808372, 36.030502>,  <32.857605, 42.550484, 36.165337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995564, 41.808372, 36.030502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683807, 41.881176, 36.270309>,  <32.496754, 41.924858, 36.414192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683807, 41.881176, 36.270309>,  <32.995564, 41.808372, 36.030502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683807, 41.881176, 36.270309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080604, -0.978052, 0.192141,
		0.621330, 0.101430, 0.776957,
		-0.779392, 0.182009, 0.599517,
		32.449989, 41.935780, 36.450165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078190, 41.604420, 36.687538>,  <32.995564, 41.808372, 36.030502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078190, 41.604420, 36.687538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686222, 41.569370, 36.615902>,  <32.451042, 41.548340, 36.572922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686222, 41.569370, 36.615902>,  <33.078190, 41.604420, 36.687538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686222, 41.569370, 36.615902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095232, -0.994864, -0.034306,
		-0.175165, -0.050673, 0.983234,
		-0.979923, -0.087627, -0.179091,
		32.392246, 41.543083, 36.562176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873436, 41.088608, 37.195484>,  <33.078190, 41.604420, 36.687538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873436, 41.088608, 37.195484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620193, 41.123398, 36.887817>,  <32.468246, 41.144272, 36.703217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620193, 41.123398, 36.887817>,  <32.873436, 41.088608, 37.195484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620193, 41.123398, 36.887817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200300, -0.941417, -0.271319,
		-0.747700, -0.325837, 0.578598,
		-0.633108, 0.086972, -0.769162,
		32.430260, 41.149490, 36.657070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999023, 40.383503, 36.885227>,  <32.873436, 41.088608, 37.195484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999023, 40.383503, 36.885227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689861, 40.544106, 36.688694>,  <32.504364, 40.640469, 36.570774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689861, 40.544106, 36.688694>,  <32.999023, 40.383503, 36.885227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689861, 40.544106, 36.688694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151940, -0.868922, -0.471050,
		-0.616059, -0.289425, 0.732601,
		-0.772908, 0.401506, -0.491332,
		32.457989, 40.664558, 36.541294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435963, 40.032974, 36.991276>,  <32.999023, 40.383503, 36.885227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435963, 40.032974, 36.991276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316513, 40.204174, 36.650070>,  <32.244843, 40.306896, 36.445347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316513, 40.204174, 36.650070>,  <32.435963, 40.032974, 36.991276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316513, 40.204174, 36.650070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177896, -0.903098, -0.390854,
		-0.937644, 0.035029, 0.345829,
		-0.298626, 0.428003, -0.853016,
		32.226925, 40.332577, 36.394165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829292, 39.741257, 36.878036>,  <32.435963, 40.032974, 36.991276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829292, 39.741257, 36.878036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987982, 39.871933, 36.534901>,  <32.083195, 39.950340, 36.329021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987982, 39.871933, 36.534901>,  <31.829292, 39.741257, 36.878036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987982, 39.871933, 36.534901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385165, -0.789033, -0.478617,
		-0.833221, 0.520287, -0.187199,
		0.396725, 0.326692, -0.857836,
		32.106998, 39.969940, 36.277550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304455, 39.703770, 36.439240>,  <31.829292, 39.741257, 36.878036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304455, 39.703770, 36.439240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631645, 39.711891, 36.209282>,  <31.827959, 39.716766, 36.071308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631645, 39.711891, 36.209282>,  <31.304455, 39.703770, 36.439240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631645, 39.711891, 36.209282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357766, -0.764628, -0.536048,
		-0.450466, 0.644152, -0.618182,
		0.817975, 0.020306, -0.574895,
		31.877037, 39.717983, 36.036812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035009, 39.684563, 35.676090>,  <31.304455, 39.703770, 36.439240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035009, 39.684563, 35.676090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413622, 39.556072, 35.688053>,  <31.640789, 39.478977, 35.695229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413622, 39.556072, 35.688053>,  <31.035009, 39.684563, 35.676090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413622, 39.556072, 35.688053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252143, -0.794405, -0.552580,
		0.201259, 0.515494, -0.832923,
		0.946530, -0.321228, 0.029903,
		31.697580, 39.459705, 35.697025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098591, 39.348808, 35.130219>,  <31.035009, 39.684563, 35.676090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098591, 39.348808, 35.130219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456411, 39.227367, 35.261429>,  <31.671104, 39.154503, 35.340157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456411, 39.227367, 35.261429>,  <31.098591, 39.348808, 35.130219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456411, 39.227367, 35.261429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152417, -0.897116, -0.414670,
		0.420172, 0.320947, -0.848792,
		0.894553, -0.303604, 0.328025,
		31.724777, 39.136288, 35.359837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300373, 39.014626, 34.574272>,  <31.098591, 39.348808, 35.130219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300373, 39.014626, 34.574272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526676, 38.895397, 34.881798>,  <31.662458, 38.823860, 35.066311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526676, 38.895397, 34.881798>,  <31.300373, 39.014626, 34.574272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526676, 38.895397, 34.881798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190986, -0.954392, -0.229477,
		0.802148, -0.017003, -0.596883,
		0.565759, -0.298071, 0.768812,
		31.696404, 38.805977, 35.112442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818905, 38.605217, 34.354462>,  <31.300373, 39.014626, 34.574272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818905, 38.605217, 34.354462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751392, 38.498158, 34.733910>,  <31.710884, 38.433922, 34.961578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751392, 38.498158, 34.733910>,  <31.818905, 38.605217, 34.354462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751392, 38.498158, 34.733910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295271, -0.904495, -0.307739,
		0.940387, -0.332040, 0.073634,
		-0.168784, -0.267652, 0.948617,
		31.700758, 38.417862, 35.018494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135071, 37.946083, 34.370415>,  <31.818905, 38.605217, 34.354462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135071, 37.946083, 34.370415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906019, 37.916630, 34.697018>,  <31.768589, 37.898960, 34.892979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906019, 37.916630, 34.697018>,  <32.135071, 37.946083, 34.370415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906019, 37.916630, 34.697018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285279, -0.915817, -0.282656,
		0.768581, -0.394787, 0.503414,
		-0.572624, -0.073631, 0.816504,
		31.734232, 37.894539, 34.941971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243336, 37.240814, 34.551006>,  <32.135071, 37.946083, 34.370415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243336, 37.240814, 34.551006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921795, 37.335499, 34.769283>,  <31.728870, 37.392307, 34.900249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921795, 37.335499, 34.769283>,  <32.243336, 37.240814, 34.551006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921795, 37.335499, 34.769283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373575, -0.914813, -0.153486,
		0.462879, -0.327240, 0.823806,
		-0.803856, 0.236708, 0.545697,
		31.680637, 37.406513, 34.932991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124622, 36.619205, 34.922951>,  <32.243336, 37.240814, 34.551006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124622, 36.619205, 34.922951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783197, 36.826679, 34.903385>,  <31.578342, 36.951164, 34.891644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783197, 36.826679, 34.903385>,  <32.124622, 36.619205, 34.922951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783197, 36.826679, 34.903385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502523, -0.844451, -0.185401,
		-0.137472, -0.133670, 0.981445,
		-0.853565, 0.518686, -0.048916,
		31.527128, 36.982285, 34.888710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607119, 36.287010, 35.377171>,  <32.124622, 36.619205, 34.922951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607119, 36.287010, 35.377171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416374, 36.529533, 35.122616>,  <31.301928, 36.675049, 34.969883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416374, 36.529533, 35.122616>,  <31.607119, 36.287010, 35.377171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416374, 36.529533, 35.122616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625727, -0.742634, -0.238664,
		-0.617309, 0.284398, 0.733517,
		-0.476859, 0.606311, -0.636390,
		31.273317, 36.711426, 34.931698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894964, 36.236820, 35.548046>,  <31.607119, 36.287010, 35.377171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894964, 36.236820, 35.548046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889645, 36.347626, 35.163734>,  <30.886454, 36.414108, 34.933147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889645, 36.347626, 35.163734>,  <30.894964, 36.236820, 35.548046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889645, 36.347626, 35.163734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657194, -0.726593, -0.200395,
		-0.753604, 0.628751, 0.191711,
		-0.013297, 0.277010, -0.960775,
		30.885654, 36.430729, 34.875504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223318, 36.425163, 35.481903>,  <30.894964, 36.236820, 35.548046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223318, 36.425163, 35.481903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371771, 36.343353, 35.119591>,  <30.460842, 36.294270, 34.902203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371771, 36.343353, 35.119591>,  <30.223318, 36.425163, 35.481903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371771, 36.343353, 35.119591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815152, -0.538936, -0.212306,
		-0.444735, 0.817140, -0.366733,
		0.371130, -0.204523, -0.905778,
		30.483110, 36.281998, 34.847858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704550, 36.283417, 35.155289>,  <30.223318, 36.425163, 35.481903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704550, 36.283417, 35.155289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930819, 36.141056, 34.857738>,  <30.066580, 36.055637, 34.679211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930819, 36.141056, 34.857738>,  <29.704550, 36.283417, 35.155289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930819, 36.141056, 34.857738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803193, -0.442141, -0.399240,
		-0.186806, 0.823313, -0.535966,
		0.565672, -0.355903, -0.743874,
		30.100521, 36.034286, 34.634575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379740, 36.422394, 34.572750>,  <29.704550, 36.283417, 35.155289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379740, 36.422394, 34.572750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625288, 36.122993, 34.472427>,  <29.772617, 35.943352, 34.412235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625288, 36.122993, 34.472427>,  <29.379740, 36.422394, 34.572750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625288, 36.122993, 34.472427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778278, -0.520707, -0.350924,
		0.132073, 0.410618, -0.902192,
		0.613873, -0.748504, -0.250804,
		29.809450, 35.898441, 34.397186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218166, 36.260662, 33.895496>,  <29.379740, 36.422394, 34.572750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218166, 36.260662, 33.895496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390337, 35.937683, 34.056873>,  <29.493639, 35.743896, 34.153702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390337, 35.937683, 34.056873>,  <29.218166, 36.260662, 33.895496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390337, 35.937683, 34.056873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765071, -0.563533, -0.311602,
		0.478956, -0.174541, -0.860312,
		0.430427, -0.807444, 0.403444,
		29.519464, 35.695450, 34.177906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191645, 35.764694, 33.421692>,  <29.218166, 36.260662, 33.895496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191645, 35.764694, 33.421692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247648, 35.559025, 33.760166>,  <29.281250, 35.435623, 33.963249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247648, 35.559025, 33.760166>,  <29.191645, 35.764694, 33.421692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247648, 35.559025, 33.760166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583286, -0.733405, -0.349134,
		0.800110, -0.444684, -0.402592,
		0.140009, -0.514172, 0.846183,
		29.289650, 35.404774, 34.014023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071697, 35.103275, 33.176205>,  <29.191645, 35.764694, 33.421692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071697, 35.103275, 33.176205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077353, 35.016174, 33.566566>,  <29.080746, 34.963913, 33.800781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077353, 35.016174, 33.566566>,  <29.071697, 35.103275, 33.176205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077353, 35.016174, 33.566566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539702, -0.823279, -0.175880,
		0.841738, -0.524209, -0.129160,
		0.014137, -0.217753, 0.975902,
		29.081594, 34.950848, 33.859337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248938, 34.315628, 33.218109>,  <29.071697, 35.103275, 33.176205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248938, 34.315628, 33.218109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078623, 34.432568, 33.560627>,  <28.976433, 34.502731, 33.766136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078623, 34.432568, 33.560627>,  <29.248938, 34.315628, 33.218109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078623, 34.432568, 33.560627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535475, -0.844265, 0.021983,
		0.729363, -0.449162, 0.516026,
		-0.425788, 0.292353, 0.856291,
		28.950886, 34.520275, 33.817513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197363, 33.743626, 33.618771>,  <29.248938, 34.315628, 33.218109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197363, 33.743626, 33.618771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925451, 34.008972, 33.743889>,  <28.762304, 34.168182, 33.818962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925451, 34.008972, 33.743889>,  <29.197363, 33.743626, 33.618771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925451, 34.008972, 33.743889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652168, -0.741852, 0.155988,
		0.335528, -0.097961, 0.936923,
		-0.679778, 0.663370, 0.312799,
		28.721518, 34.207985, 33.837730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896168, 33.407661, 34.156094>,  <29.197363, 33.743626, 33.618771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896168, 33.407661, 34.156094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631485, 33.696358, 34.074867>,  <28.472675, 33.869576, 34.026131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631485, 33.696358, 34.074867>,  <28.896168, 33.407661, 34.156094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631485, 33.696358, 34.074867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744200, -0.665182, 0.060828,
		-0.091174, 0.191372, 0.977274,
		-0.661705, 0.721741, -0.203066,
		28.432974, 33.912880, 34.013947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517530, 33.419956, 34.716343>,  <28.896168, 33.407661, 34.156094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517530, 33.419956, 34.716343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350407, 33.532612, 34.370831>,  <28.250132, 33.600204, 34.163525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350407, 33.532612, 34.370831>,  <28.517530, 33.419956, 34.716343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350407, 33.532612, 34.370831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755419, -0.635892, 0.158062,
		-0.504754, 0.718555, 0.478437,
		-0.417810, 0.281638, -0.863779,
		28.225063, 33.617104, 34.111698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861389, 33.683853, 34.791878>,  <28.517530, 33.419956, 34.716343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861389, 33.683853, 34.791878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837671, 33.569778, 34.409222>,  <27.823441, 33.501335, 34.179630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837671, 33.569778, 34.409222>,  <27.861389, 33.683853, 34.791878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837671, 33.569778, 34.409222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940337, -0.305683, 0.149412,
		-0.335038, 0.908420, -0.250047,
		-0.059294, -0.285187, -0.956636,
		27.819883, 33.484222, 34.122231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834747, 32.988091, 35.082840>,  <27.861389, 33.683853, 34.791878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834747, 32.988091, 35.082840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180792, 32.945599, 34.886761>,  <28.388418, 32.920101, 34.769112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180792, 32.945599, 34.886761>,  <27.834747, 32.988091, 35.082840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180792, 32.945599, 34.886761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497768, 0.061577, 0.865122,
		-0.061721, -0.992433, 0.106151,
		0.865111, -0.106234, -0.490200,
		28.440325, 32.913727, 34.739700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142958, 32.428020, 35.360268>,  <27.834747, 32.988091, 35.082840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142958, 32.428020, 35.360268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393183, 32.708172, 35.222778>,  <28.543318, 32.876263, 35.140285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393183, 32.708172, 35.222778>,  <28.142958, 32.428020, 35.360268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393183, 32.708172, 35.222778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472554, 0.010407, 0.881240,
		0.620778, -0.713696, -0.324456,
		0.625561, 0.700378, -0.343720,
		28.580851, 32.918285, 35.119663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874094, 32.198761, 35.418270>,  <28.142958, 32.428020, 35.360268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874094, 32.198761, 35.418270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.856222, 32.598358, 35.420048>,  <28.845499, 32.838116, 35.421116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.856222, 32.598358, 35.420048>,  <28.874094, 32.198761, 35.418270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856222, 32.598358, 35.420048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554001, 0.021071, 0.832249,
		0.831316, 0.039647, -0.554384,
		-0.044678, 0.998991, 0.004447,
		28.842819, 32.898056, 35.421383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549395, 32.458771, 35.697701>,  <28.874094, 32.198761, 35.418270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549395, 32.458771, 35.697701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320122, 32.782784, 35.747192>,  <29.182558, 32.977192, 35.776890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320122, 32.782784, 35.747192>,  <29.549395, 32.458771, 35.697701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320122, 32.782784, 35.747192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546914, 0.265732, 0.793896,
		0.610201, 0.522719, -0.595331,
		-0.573183, 0.810031, 0.123732,
		29.148167, 33.025791, 35.784313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963871, 33.146751, 35.757256>,  <29.549395, 32.458771, 35.697701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963871, 33.146751, 35.757256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608612, 33.156044, 35.940845>,  <29.395456, 33.161617, 36.050999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608612, 33.156044, 35.940845>,  <29.963871, 33.146751, 35.757256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608612, 33.156044, 35.940845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456392, 0.161664, 0.874969,
		-0.053874, 0.986572, -0.154183,
		-0.888146, 0.023230, 0.458973,
		29.342169, 33.163013, 36.078537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609703, 32.884689, 35.606586>,  <29.963871, 33.146751, 35.757256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609703, 32.884689, 35.606586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989159, 32.758419, 35.614902>,  <31.216831, 32.682655, 35.619892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989159, 32.758419, 35.614902>,  <30.609703, 32.884689, 35.606586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989159, 32.758419, 35.614902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018090, 0.011470, 0.999771,
		-0.315846, -0.948796, 0.005170,
		0.948638, -0.315680, 0.020787,
		31.273750, 32.663715, 35.621140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700571, 32.341228, 36.104733>,  <30.609703, 32.884689, 35.606586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700571, 32.341228, 36.104733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060963, 32.500431, 36.035645>,  <31.277197, 32.595951, 35.994190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060963, 32.500431, 36.035645>,  <30.700571, 32.341228, 36.104733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060963, 32.500431, 36.035645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134485, 0.122296, 0.983340,
		0.412497, -0.909195, 0.056660,
		0.900977, 0.398005, -0.172720,
		31.331257, 32.619831, 35.983829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138584, 32.015862, 36.622997>,  <30.700571, 32.341228, 36.104733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138584, 32.015862, 36.622997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315413, 32.358051, 36.515121>,  <31.421509, 32.563366, 36.450394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315413, 32.358051, 36.515121>,  <31.138584, 32.015862, 36.622997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315413, 32.358051, 36.515121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326879, 0.126347, 0.936582,
		0.835299, -0.502191, -0.223784,
		0.442069, 0.855477, -0.269694,
		31.448032, 32.614693, 36.434212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772942, 32.006809, 37.014542>,  <31.138584, 32.015862, 36.622997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772942, 32.006809, 37.014542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727911, 32.390343, 36.910255>,  <31.700893, 32.620461, 36.847683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727911, 32.390343, 36.910255>,  <31.772942, 32.006809, 37.014542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727911, 32.390343, 36.910255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192542, 0.278457, 0.940951,
		0.974810, 0.055730, -0.215962,
		-0.112576, 0.958830, -0.260712,
		31.694138, 32.677990, 36.832043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387817, 32.244350, 37.152950>,  <31.772942, 32.006809, 37.014542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387817, 32.244350, 37.152950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115696, 32.537521, 37.151436>,  <31.952423, 32.713425, 37.150528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115696, 32.537521, 37.151436>,  <32.387817, 32.244350, 37.152950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115696, 32.537521, 37.151436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282080, 0.266591, 0.921607,
		0.676478, 0.625901, -0.388105,
		-0.680300, 0.732924, -0.003789,
		31.911606, 32.757401, 37.150299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615486, 32.839123, 37.514225>,  <32.387817, 32.244350, 37.152950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615486, 32.839123, 37.514225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221764, 32.908993, 37.524326>,  <31.985531, 32.950916, 37.530388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221764, 32.908993, 37.524326>,  <32.615486, 32.839123, 37.514225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221764, 32.908993, 37.524326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067371, 0.239609, 0.968529,
		0.163126, 0.955027, -0.247615,
		-0.984302, 0.174675, 0.025255,
		31.926474, 32.961395, 37.531902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595066, 33.366844, 37.995022>,  <32.615486, 32.839123, 37.514225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595066, 33.366844, 37.995022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215961, 33.240631, 37.976326>,  <31.988499, 33.164906, 37.965107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215961, 33.240631, 37.976326>,  <32.595066, 33.366844, 37.995022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215961, 33.240631, 37.976326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110710, 0.187965, 0.975916,
		-0.299145, 0.930113, -0.213079,
		-0.947764, -0.315530, -0.046744,
		31.931633, 33.145973, 37.962303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285759, 33.848724, 38.436749>,  <32.595066, 33.366844, 37.995022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285759, 33.848724, 38.436749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018906, 33.557041, 38.375839>,  <31.858793, 33.382030, 38.339294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018906, 33.557041, 38.375839>,  <32.285759, 33.848724, 38.436749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018906, 33.557041, 38.375839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200543, -0.021064, 0.979458,
		-0.717435, 0.683969, -0.132185,
		-0.667135, -0.729207, -0.152278,
		31.818766, 33.338280, 38.330154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761082, 33.996155, 38.939182>,  <32.285759, 33.848724, 38.436749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761082, 33.996155, 38.939182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697006, 33.613426, 38.842163>,  <31.658560, 33.383789, 38.783951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697006, 33.613426, 38.842163>,  <31.761082, 33.996155, 38.939182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697006, 33.613426, 38.842163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241676, -0.200227, 0.949474,
		-0.957043, 0.210716, -0.199166,
		-0.160191, -0.956822, -0.242551,
		31.648949, 33.326378, 38.769398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170538, 33.841698, 39.196888>,  <31.761082, 33.996155, 38.939182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170538, 33.841698, 39.196888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356794, 33.489716, 39.159252>,  <31.468548, 33.278526, 39.136669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356794, 33.489716, 39.159252>,  <31.170538, 33.841698, 39.196888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356794, 33.489716, 39.159252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117889, -0.167053, 0.978874,
		-0.877085, -0.444713, -0.181525,
		0.465643, -0.879956, -0.094092,
		31.496487, 33.225727, 39.131023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648478, 33.481285, 39.477440>,  <31.170538, 33.841698, 39.196888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648478, 33.481285, 39.477440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002275, 33.295685, 39.496922>,  <31.214554, 33.184322, 39.508610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002275, 33.295685, 39.496922>,  <30.648478, 33.481285, 39.477440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002275, 33.295685, 39.496922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250776, -0.384789, 0.888284,
		-0.393428, -0.797895, -0.456704,
		0.884492, -0.464006, 0.048707,
		31.267624, 33.156483, 39.511536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509508, 32.707764, 39.732059>,  <30.648478, 33.481285, 39.477440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509508, 32.707764, 39.732059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896349, 32.794212, 39.785732>,  <31.128454, 32.846081, 39.817936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896349, 32.794212, 39.785732>,  <30.509508, 32.707764, 39.732059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896349, 32.794212, 39.785732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013764, -0.482232, 0.875935,
		0.254012, -0.848967, -0.463393,
		0.967103, 0.216120, 0.134178,
		31.186480, 32.859047, 39.825985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630692, 32.195648, 40.095764>,  <30.509508, 32.707764, 39.732059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630692, 32.195648, 40.095764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929768, 32.457100, 40.142643>,  <31.109213, 32.613972, 40.170773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929768, 32.457100, 40.142643>,  <30.630692, 32.195648, 40.095764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929768, 32.457100, 40.142643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088416, -0.272911, 0.957968,
		0.658138, -0.705898, -0.261844,
		0.747688, 0.653626, 0.117200,
		31.154074, 32.653187, 40.177803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312922, 31.856693, 40.270313>,  <30.630692, 32.195648, 40.095764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312922, 31.856693, 40.270313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265186, 32.216522, 40.438374>,  <31.236546, 32.432419, 40.539211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265186, 32.216522, 40.438374>,  <31.312922, 31.856693, 40.270313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265186, 32.216522, 40.438374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100092, -0.431924, 0.896339,
		0.987795, 0.064914, 0.141585,
		-0.119339, 0.899571, 0.420155,
		31.229385, 32.486393, 40.564419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786798, 31.851471, 40.801449>,  <31.312922, 31.856693, 40.270313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786798, 31.851471, 40.801449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586468, 32.174797, 40.925255>,  <31.466270, 32.368793, 40.999538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586468, 32.174797, 40.925255>,  <31.786798, 31.851471, 40.801449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586468, 32.174797, 40.925255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034875, -0.338462, 0.940334,
		0.864845, 0.481738, 0.141320,
		-0.500826, 0.808315, 0.309518,
		31.436220, 32.417290, 41.018108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882414, 31.859894, 41.500401>,  <31.786798, 31.851471, 40.801449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882414, 31.859894, 41.500401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600729, 32.143852, 41.495735>,  <31.431719, 32.314228, 41.492935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600729, 32.143852, 41.495735>,  <31.882414, 31.859894, 41.500401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600729, 32.143852, 41.495735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258876, -0.241432, 0.935251,
		0.661113, 0.661634, 0.353794,
		-0.704211, 0.709895, -0.011667,
		31.389465, 32.356819, 41.492233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072033, 32.266521, 41.953289>,  <31.882414, 31.859894, 41.500401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072033, 32.266521, 41.953289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690651, 32.378250, 41.907845>,  <31.461823, 32.445290, 41.880577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690651, 32.378250, 41.907845>,  <32.072033, 32.266521, 41.953289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690651, 32.378250, 41.907845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169153, -0.183539, 0.968349,
		0.249632, 0.942492, 0.222244,
		-0.953452, 0.279325, -0.113608,
		31.404615, 32.462048, 41.873760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846979, 32.670097, 42.606796>,  <32.072033, 32.266521, 41.953289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846979, 32.670097, 42.606796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509966, 32.527954, 42.444881>,  <31.307758, 32.442669, 42.347733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509966, 32.527954, 42.444881>,  <31.846979, 32.670097, 42.606796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509966, 32.527954, 42.444881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259391, -0.390942, 0.883108,
		-0.472071, 0.849048, 0.237205,
		-0.842535, -0.355361, -0.404788,
		31.257206, 32.421345, 42.323444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236261, 32.946587, 43.038898>,  <31.846979, 32.670097, 42.606796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236261, 32.946587, 43.038898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087563, 32.644188, 42.823387>,  <30.998343, 32.462749, 42.694080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087563, 32.644188, 42.823387>,  <31.236261, 32.946587, 43.038898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087563, 32.644188, 42.823387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579643, -0.264309, 0.770814,
		-0.725133, 0.598846, -0.339950,
		-0.371747, -0.755993, -0.538776,
		30.976038, 32.417389, 42.661755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602522, 32.842743, 43.290195>,  <31.236261, 32.946587, 43.038898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602522, 32.842743, 43.290195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636440, 32.494030, 43.097198>,  <30.656792, 32.284801, 42.981400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636440, 32.494030, 43.097198>,  <30.602522, 32.842743, 43.290195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636440, 32.494030, 43.097198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596122, -0.432403, 0.676511,
		-0.798404, 0.230259, -0.556356,
		0.084797, -0.871785, -0.482495,
		30.661879, 32.232494, 42.952450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855183, 32.535511, 43.154179>,  <30.602522, 32.842743, 43.290195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855183, 32.535511, 43.154179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.130211, 32.245068, 43.155167>,  <30.295229, 32.070801, 43.155758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.130211, 32.245068, 43.155167>,  <29.855183, 32.535511, 43.154179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130211, 32.245068, 43.155167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536630, -0.505849, 0.675385,
		-0.489161, -0.465696, -0.737461,
		0.687568, -0.726116, 0.002465,
		30.336483, 32.027233, 43.155907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443151, 31.971489, 43.123405>,  <29.855183, 32.535511, 43.154179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443151, 31.971489, 43.123405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798748, 31.858170, 43.267315>,  <30.012106, 31.790178, 43.353661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798748, 31.858170, 43.267315>,  <29.443151, 31.971489, 43.123405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798748, 31.858170, 43.267315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457915, -0.554667, 0.694736,
		0.002735, -0.782359, -0.622821,
		0.888992, -0.283299, 0.359771,
		30.065445, 31.773180, 43.375248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306032, 31.244572, 43.324844>,  <29.443151, 31.971489, 43.123405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306032, 31.244572, 43.324844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648462, 31.338455, 43.509037>,  <29.853920, 31.394785, 43.619553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648462, 31.338455, 43.509037>,  <29.306032, 31.244572, 43.324844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648462, 31.338455, 43.509037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305682, -0.488490, 0.817273,
		0.416761, -0.840411, -0.346440,
		0.856077, 0.234707, 0.460482,
		29.905285, 31.408867, 43.647182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537285, 30.611670, 43.671207>,  <29.306032, 31.244572, 43.324844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537285, 30.611670, 43.671207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724455, 30.913157, 43.855797>,  <29.836758, 31.094048, 43.966549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724455, 30.913157, 43.855797>,  <29.537285, 30.611670, 43.671207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724455, 30.913157, 43.855797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128758, -0.458453, 0.879342,
		0.874338, -0.470885, -0.117475,
		0.467926, 0.753716, 0.461473,
		29.864832, 31.139271, 43.994240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744255, 30.429245, 44.368923>,  <29.537285, 30.611670, 43.671207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744255, 30.429245, 44.368923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809490, 30.815285, 44.450886>,  <29.848631, 31.046907, 44.500065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809490, 30.815285, 44.450886>,  <29.744255, 30.429245, 44.368923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809490, 30.815285, 44.450886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119247, -0.186886, 0.975117,
		0.979379, -0.183462, 0.084607,
		0.163085, 0.965098, 0.204910,
		29.858416, 31.104815, 44.512360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144821, 30.445951, 44.917355>,  <29.744255, 30.429245, 44.368923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144821, 30.445951, 44.917355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980850, 30.810799, 44.916988>,  <29.882467, 31.029707, 44.916771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980850, 30.810799, 44.916988>,  <30.144821, 30.445951, 44.917355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980850, 30.810799, 44.916988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001728, 0.000225, 0.999998,
		0.912115, 0.409931, 0.001484,
		-0.409930, 0.912117, -0.000913,
		29.857872, 31.084435, 44.916714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383228, 30.695427, 45.579468>,  <30.144821, 30.445951, 44.917355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383228, 30.695427, 45.579468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083458, 30.940477, 45.479031>,  <29.903597, 31.087507, 45.418766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083458, 30.940477, 45.479031>,  <30.383228, 30.695427, 45.579468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083458, 30.940477, 45.479031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184454, 0.171046, 0.967843,
		0.635877, 0.771641, -0.015184,
		-0.749425, 0.612628, -0.251096,
		29.858631, 31.124266, 45.403702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499168, 31.397369, 45.961975>,  <30.383228, 30.695427, 45.579468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499168, 31.397369, 45.961975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115253, 31.355101, 45.857941>,  <29.884905, 31.329739, 45.795521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115253, 31.355101, 45.857941>,  <30.499168, 31.397369, 45.961975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115253, 31.355101, 45.857941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274040, 0.151614, 0.949692,
		-0.060923, 0.982775, -0.174476,
		-0.959787, -0.105672, -0.260083,
		29.827318, 31.323399, 45.779915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189600, 32.006382, 46.153782>,  <30.499168, 31.397369, 45.961975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189600, 32.006382, 46.153782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904406, 31.727701, 46.122135>,  <29.733288, 31.560493, 46.103146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904406, 31.727701, 46.122135>,  <30.189600, 32.006382, 46.153782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904406, 31.727701, 46.122135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278639, 0.177979, 0.943760,
		-0.643435, 0.694935, -0.321024,
		-0.712988, -0.696698, -0.079118,
		29.690510, 31.518692, 46.098400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600775, 32.249062, 46.529408>,  <30.189600, 32.006382, 46.153782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600775, 32.249062, 46.529408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531244, 31.855549, 46.511692>,  <29.489527, 31.619442, 46.501064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531244, 31.855549, 46.511692>,  <29.600775, 32.249062, 46.529408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531244, 31.855549, 46.511692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330296, 0.015875, 0.943744,
		-0.927733, 0.178676, -0.327698,
		-0.173827, -0.983780, -0.044288,
		29.479095, 31.560415, 46.498405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112762, 32.196911, 47.049755>,  <29.600775, 32.249062, 46.529408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112762, 32.196911, 47.049755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224566, 31.814922, 47.009937>,  <29.291647, 31.585730, 46.986046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224566, 31.814922, 47.009937>,  <29.112762, 32.196911, 47.049755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224566, 31.814922, 47.009937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152984, -0.146645, 0.977288,
		-0.947878, -0.257929, -0.187083,
		0.279505, -0.954970, -0.099542,
		29.308416, 31.528431, 46.980076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.677855, 31.812325, 47.444668>,  <29.112762, 32.196911, 47.049755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.677855, 31.812325, 47.444668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997330, 31.577089, 47.393677>,  <29.189014, 31.435949, 47.363083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997330, 31.577089, 47.393677>,  <28.677855, 31.812325, 47.444668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997330, 31.577089, 47.393677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005418, -0.218872, 0.975739,
		-0.601721, -0.778620, -0.177996,
		0.798688, -0.588087, -0.127481,
		29.236937, 31.400663, 47.355431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534912, 31.154896, 47.804459>,  <28.677855, 31.812325, 47.444668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534912, 31.154896, 47.804459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934135, 31.143951, 47.782089>,  <29.173670, 31.137384, 47.768665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934135, 31.143951, 47.782089>,  <28.534912, 31.154896, 47.804459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934135, 31.143951, 47.782089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035721, -0.484064, 0.874304,
		-0.050994, -0.874605, -0.482147,
		0.998060, -0.027361, -0.055926,
		29.233553, 31.135742, 47.765312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738573, 30.421865, 47.845078>,  <28.534912, 31.154896, 47.804459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738573, 30.421865, 47.845078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.043703, 30.657982, 47.950645>,  <29.226782, 30.799652, 48.013985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.043703, 30.657982, 47.950645>,  <28.738573, 30.421865, 47.845078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043703, 30.657982, 47.950645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169078, -0.576056, 0.799733,
		0.624107, -0.565434, -0.539235,
		0.762826, 0.590291, 0.263918,
		29.272551, 30.835070, 48.029819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313831, 30.026182, 47.980190>,  <28.738573, 30.421865, 47.845078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313831, 30.026182, 47.980190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393963, 30.364561, 48.177876>,  <29.442041, 30.567589, 48.296486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393963, 30.364561, 48.177876>,  <29.313831, 30.026182, 47.980190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393963, 30.364561, 48.177876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033801, -0.510103, 0.859448,
		0.979145, -0.155469, -0.130784,
		0.200331, 0.845945, 0.494210,
		29.454062, 30.618345, 48.326138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722073, 29.812271, 48.486309>,  <29.313831, 30.026182, 47.980190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722073, 29.812271, 48.486309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644039, 30.177755, 48.628902>,  <29.597219, 30.397045, 48.714458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644039, 30.177755, 48.628902>,  <29.722073, 29.812271, 48.486309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644039, 30.177755, 48.628902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045683, -0.371535, 0.927294,
		0.979722, 0.164613, 0.114221,
		-0.195082, 0.913709, 0.356481,
		29.585514, 30.451868, 48.735847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159349, 29.859747, 49.024155>,  <29.722073, 29.812271, 48.486309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159349, 29.859747, 49.024155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867163, 30.126072, 49.084965>,  <29.691851, 30.285866, 49.121452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867163, 30.126072, 49.084965>,  <30.159349, 29.859747, 49.024155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867163, 30.126072, 49.084965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067689, -0.292089, 0.953993,
		0.679583, 0.686572, 0.258429,
		-0.730469, 0.665810, 0.152025,
		29.648022, 30.325815, 49.130573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434971, 30.256289, 49.517239>,  <30.159349, 29.859747, 49.024155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434971, 30.256289, 49.517239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037483, 30.297554, 49.534595>,  <29.798990, 30.322313, 49.545010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037483, 30.297554, 49.534595>,  <30.434971, 30.256289, 49.517239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037483, 30.297554, 49.534595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024151, -0.180942, 0.983197,
		0.109283, 0.978068, 0.177313,
		-0.993717, 0.103165, 0.043395,
		29.739368, 30.328503, 49.547615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379547, 30.639545, 50.141151>,  <30.434971, 30.256289, 49.517239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379547, 30.639545, 50.141151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004065, 30.521566, 50.069778>,  <29.778774, 30.450779, 50.026955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004065, 30.521566, 50.069778>,  <30.379547, 30.639545, 50.141151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004065, 30.521566, 50.069778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198791, 0.040286, 0.979214,
		-0.281627, 0.954665, -0.096449,
		-0.938706, -0.294946, -0.178433,
		29.722452, 30.433083, 50.016247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995735, 31.090439, 50.536297>,  <30.379547, 30.639545, 50.141151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995735, 31.090439, 50.536297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795500, 30.749329, 50.476715>,  <29.675358, 30.544662, 50.440968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795500, 30.749329, 50.476715>,  <29.995735, 31.090439, 50.536297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795500, 30.749329, 50.476715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260884, -0.015455, 0.965246,
		-0.825439, 0.522052, -0.214739,
		-0.500590, -0.852774, -0.148952,
		29.645323, 30.493496, 50.432030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372738, 31.161659, 50.753086>,  <29.995735, 31.090439, 50.536297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372738, 31.161659, 50.753086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460918, 30.773905, 50.796333>,  <29.513826, 30.541252, 50.822281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460918, 30.773905, 50.796333>,  <29.372738, 31.161659, 50.753086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460918, 30.773905, 50.796333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218045, 0.059061, 0.974150,
		-0.950714, -0.238327, -0.198350,
		0.220451, -0.969388, 0.108116,
		29.527054, 30.483089, 50.828770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010410, 30.860003, 51.302647>,  <29.372738, 31.161659, 50.753086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010410, 30.860003, 51.302647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335911, 30.628820, 51.278080>,  <29.531212, 30.490110, 51.263340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335911, 30.628820, 51.278080>,  <29.010410, 30.860003, 51.302647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335911, 30.628820, 51.278080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131464, 0.080097, 0.988080,
		-0.566147, -0.812128, 0.141160,
		0.813754, -0.577956, -0.061419,
		29.580036, 30.455433, 51.259655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.957176, 30.218889, 51.691761>,  <29.010410, 30.860003, 51.302647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.957176, 30.218889, 51.691761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.340965, 30.327551, 51.661785>,  <29.571239, 30.392748, 51.643799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.340965, 30.327551, 51.661785>,  <28.957176, 30.218889, 51.691761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.340965, 30.327551, 51.661785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050287, 0.096602, 0.994052,
		0.277280, -0.957534, 0.079026,
		0.959472, 0.271657, -0.074938,
		29.628807, 30.409048, 51.639305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536804, 29.677778, 51.791691>,  <28.957176, 30.218889, 51.691761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536804, 29.677778, 51.791691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609402, 30.053417, 51.908417>,  <29.652960, 30.278801, 51.978451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609402, 30.053417, 51.908417>,  <29.536804, 29.677778, 51.791691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609402, 30.053417, 51.908417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116972, -0.274017, 0.954585,
		0.976410, -0.207385, 0.060116,
		0.181493, 0.939099, 0.291811,
		29.663849, 30.335146, 51.995960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060429, 29.614990, 52.317276>,  <29.536804, 29.677778, 51.791691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060429, 29.614990, 52.317276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839872, 29.931639, 52.422577>,  <29.707539, 30.121628, 52.485760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839872, 29.931639, 52.422577>,  <30.060429, 29.614990, 52.317276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839872, 29.931639, 52.422577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165797, -0.205283, 0.964557,
		0.817605, 0.575496, -0.018057,
		-0.551392, 0.791621, 0.263256,
		29.674456, 30.169125, 52.501553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451963, 29.158770, 52.509792>,  <30.060429, 29.614990, 52.317276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451963, 29.158770, 52.509792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214363, 28.862375, 52.635075>,  <29.071802, 28.684538, 52.710243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214363, 28.862375, 52.635075>,  <29.451963, 29.158770, 52.509792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214363, 28.862375, 52.635075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298878, -0.564744, -0.769244,
		0.746883, -0.363321, 0.556924,
		-0.594001, -0.740988, 0.313209,
		29.036163, 28.640079, 52.729038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144770, 29.311653, 53.178707>,  <29.451963, 29.158770, 52.509792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144770, 29.311653, 53.178707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826021, 29.342031, 52.938965>,  <28.634771, 29.360258, 52.795120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826021, 29.342031, 52.938965>,  <29.144770, 29.311653, 53.178707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826021, 29.342031, 52.938965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406883, 0.665876, 0.625344,
		0.446591, 0.742187, -0.499715,
		-0.796870, 0.075948, -0.599357,
		28.586960, 29.364817, 52.759159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843222, 29.146656, 53.209621>,  <29.144770, 29.311653, 53.178707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843222, 29.146656, 53.209621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103271, 29.447050, 53.255848>,  <30.259302, 29.627287, 53.283585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103271, 29.447050, 53.255848>,  <29.843222, 29.146656, 53.209621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103271, 29.447050, 53.255848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489776, -0.530472, 0.691895,
		0.580911, -0.393215, -0.712689,
		0.650125, 0.750987, 0.115569,
		30.298309, 29.672346, 53.290520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577862, 28.924047, 53.053432>,  <29.843222, 29.146656, 53.209621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577862, 28.924047, 53.053432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568457, 29.233494, 53.306721>,  <30.562813, 29.419161, 53.458694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568457, 29.233494, 53.306721>,  <30.577862, 28.924047, 53.053432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568457, 29.233494, 53.306721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578276, -0.506154, 0.639848,
		0.815502, 0.381221, -0.435461,
		-0.023513, 0.773614, 0.633220,
		30.561403, 29.465578, 53.496685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834106, 28.476580, 52.510159>,  <30.577862, 28.924047, 53.053432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834106, 28.476580, 52.510159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472984, 28.413464, 52.350136>,  <30.256311, 28.375593, 52.254120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472984, 28.413464, 52.350136>,  <30.834106, 28.476580, 52.510159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472984, 28.413464, 52.350136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430037, -0.339386, -0.836591,
		-0.003770, -0.927318, 0.374254,
		-0.902803, -0.157790, -0.400061,
		30.202143, 28.366127, 52.230118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798801, 27.806704, 52.077095>,  <30.834106, 28.476580, 52.510159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798801, 27.806704, 52.077095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491690, 28.005850, 51.915779>,  <30.307423, 28.125338, 51.818989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491690, 28.005850, 51.915779>,  <30.798801, 27.806704, 52.077095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491690, 28.005850, 51.915779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370949, -0.167813, -0.913365,
		-0.522410, -0.850864, -0.055839,
		-0.767779, 0.497864, -0.403294,
		30.261356, 28.155209, 51.794792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483076, 27.422413, 51.507000>,  <30.798801, 27.806704, 52.077095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483076, 27.422413, 51.507000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410940, 27.806101, 51.419937>,  <30.367659, 28.036314, 51.367699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410940, 27.806101, 51.419937>,  <30.483076, 27.422413, 51.507000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410940, 27.806101, 51.419937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285429, -0.160724, -0.944827,
		-0.941280, -0.232512, -0.244805,
		-0.180338, 0.959221, -0.217652,
		30.356838, 28.093866, 51.354641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321495, 27.450487, 50.814724>,  <30.483076, 27.422413, 51.507000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321495, 27.450487, 50.814724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426514, 27.833345, 50.863621>,  <30.489525, 28.063061, 50.892960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426514, 27.833345, 50.863621>,  <30.321495, 27.450487, 50.814724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426514, 27.833345, 50.863621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232974, 0.060058, -0.970627,
		-0.936372, 0.283313, -0.207222,
		0.262546, 0.957145, 0.122242,
		30.505278, 28.120489, 50.900291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017653, 27.845306, 50.239883>,  <30.321495, 27.450487, 50.814724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017653, 27.845306, 50.239883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322702, 28.062347, 50.380730>,  <30.505732, 28.192572, 50.465237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322702, 28.062347, 50.380730>,  <30.017653, 27.845306, 50.239883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322702, 28.062347, 50.380730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269278, 0.228633, -0.935530,
		-0.588126, 0.808276, 0.028250,
		0.762625, 0.542602, 0.352116,
		30.551491, 28.225128, 50.486366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931490, 28.405643, 49.869591>,  <30.017653, 27.845306, 50.239883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931490, 28.405643, 49.869591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312712, 28.402176, 49.990662>,  <30.541445, 28.400095, 50.063305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312712, 28.402176, 49.990662>,  <29.931490, 28.405643, 49.869591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312712, 28.402176, 49.990662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295675, 0.242229, -0.924068,
		-0.065308, 0.970180, 0.233420,
		0.953054, -0.008667, 0.302677,
		30.598627, 28.399576, 50.081463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245661, 28.962841, 49.496372>,  <29.931490, 28.405643, 49.869591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245661, 28.962841, 49.496372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549372, 28.729795, 49.612343>,  <30.731598, 28.589968, 49.681927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549372, 28.729795, 49.612343>,  <30.245661, 28.962841, 49.496372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549372, 28.729795, 49.612343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506972, 0.250233, -0.824841,
		0.408016, 0.773268, 0.485366,
		0.759278, -0.582615, 0.289926,
		30.777155, 28.555012, 49.699322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838530, 29.320877, 49.308155>,  <30.245661, 28.962841, 49.496372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838530, 29.320877, 49.308155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954672, 28.939674, 49.342739>,  <31.024357, 28.710953, 49.363487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954672, 28.939674, 49.342739>,  <30.838530, 29.320877, 49.308155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954672, 28.939674, 49.342739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666661, 0.136639, -0.732729,
		0.686482, 0.270389, 0.675006,
		0.290354, -0.953005, 0.086458,
		31.041779, 28.653772, 49.368675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585999, 29.370245, 49.461128>,  <30.838530, 29.320877, 49.308155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585999, 29.370245, 49.461128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501669, 29.017033, 49.293411>,  <31.451071, 28.805105, 49.192780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501669, 29.017033, 49.293411>,  <31.585999, 29.370245, 49.461128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501669, 29.017033, 49.293411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667406, 0.183376, -0.721763,
		0.714229, -0.432002, 0.550682,
		-0.210822, -0.883033, -0.419293,
		31.438423, 28.752123, 49.167622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211506, 29.054420, 49.126465>,  <31.585999, 29.370245, 49.461128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211506, 29.054420, 49.126465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911642, 28.870659, 48.935902>,  <31.731726, 28.760403, 48.821564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911642, 28.870659, 48.935902>,  <32.211506, 29.054420, 49.126465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911642, 28.870659, 48.935902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524126, 0.027434, -0.851199,
		0.404114, -0.887803, 0.220220,
		-0.749655, -0.459405, -0.476408,
		31.686745, 28.732838, 48.792980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533485, 28.564459, 48.663239>,  <32.211506, 29.054420, 49.126465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533485, 28.564459, 48.663239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170250, 28.560352, 48.495773>,  <31.952309, 28.557888, 48.395294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170250, 28.560352, 48.495773>,  <32.533485, 28.564459, 48.663239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170250, 28.560352, 48.495773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409453, 0.188114, -0.892727,
		0.087917, -0.982094, -0.166621,
		-0.908085, -0.010262, -0.418660,
		31.897825, 28.557272, 48.370174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713814, 28.357290, 48.056530>,  <32.533485, 28.564459, 48.663239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713814, 28.357290, 48.056530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338131, 28.478941, 47.992775>,  <32.112720, 28.551931, 47.954521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338131, 28.478941, 47.992775>,  <32.713814, 28.357290, 48.056530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338131, 28.478941, 47.992775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225919, 0.197799, -0.953853,
		-0.258567, -0.931870, -0.254482,
		-0.939204, 0.304127, -0.159383,
		32.056370, 28.570179, 47.944962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410805, 27.971201, 47.543957>,  <32.713814, 28.357290, 48.056530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410805, 27.971201, 47.543957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187290, 28.302776, 47.553890>,  <32.053181, 28.501720, 47.559849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187290, 28.302776, 47.553890>,  <32.410805, 27.971201, 47.543957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187290, 28.302776, 47.553890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270851, 0.210720, -0.939275,
		-0.783833, -0.518131, -0.342267,
		-0.558790, 0.828937, 0.024833,
		32.019653, 28.551458, 47.561340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152576, 28.001310, 46.887314>,  <32.410805, 27.971201, 47.543957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152576, 28.001310, 46.887314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075199, 28.380062, 46.990070>,  <32.028770, 28.607313, 47.051723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075199, 28.380062, 46.990070>,  <32.152576, 28.001310, 46.887314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075199, 28.380062, 46.990070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006639, 0.263098, -0.964746,
		-0.981089, -0.184921, -0.057182,
		-0.193446, 0.946881, 0.256895,
		32.017166, 28.664127, 47.067139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588461, 28.209387, 46.431438>,  <32.152576, 28.001310, 46.887314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588461, 28.209387, 46.431438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753338, 28.546299, 46.570385>,  <31.852264, 28.748446, 46.653751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753338, 28.546299, 46.570385>,  <31.588461, 28.209387, 46.431438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753338, 28.546299, 46.570385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048143, 0.400861, -0.914873,
		-0.909824, 0.360380, 0.205781,
		0.412192, 0.842281, 0.347363,
		31.876995, 28.798983, 46.674595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108328, 28.709869, 46.249119>,  <31.588461, 28.209387, 46.431438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108328, 28.709869, 46.249119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466944, 28.882744, 46.287971>,  <31.682114, 28.986467, 46.311283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466944, 28.882744, 46.287971>,  <31.108328, 28.709869, 46.249119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466944, 28.882744, 46.287971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086170, 0.385254, -0.918778,
		-0.434504, 0.815350, 0.382636,
		0.896538, 0.432185, 0.097136,
		31.735905, 29.012400, 46.317112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036942, 29.406570, 46.070885>,  <31.108328, 28.709869, 46.249119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036942, 29.406570, 46.070885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429585, 29.339230, 46.034874>,  <31.665171, 29.298824, 46.013268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429585, 29.339230, 46.034874>,  <31.036942, 29.406570, 46.070885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429585, 29.339230, 46.034874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040025, 0.279588, -0.959285,
		0.186669, 0.945245, 0.267707,
		0.981607, -0.168354, -0.090024,
		31.724066, 29.288723, 46.007866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270264, 29.927931, 45.608681>,  <31.036942, 29.406570, 46.070885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270264, 29.927931, 45.608681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571201, 29.665339, 45.586723>,  <31.751764, 29.507784, 45.573547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571201, 29.665339, 45.586723>,  <31.270264, 29.927931, 45.608681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571201, 29.665339, 45.586723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150874, 0.252820, -0.955678,
		0.641260, 0.710717, 0.289253,
		0.752345, -0.656479, -0.054895,
		31.796906, 29.468395, 45.570255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862202, 30.339661, 45.316601>,  <31.270264, 29.927931, 45.608681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862202, 30.339661, 45.316601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952030, 29.956465, 45.245247>,  <32.005928, 29.726547, 45.202435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952030, 29.956465, 45.245247>,  <31.862202, 30.339661, 45.316601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952030, 29.956465, 45.245247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151247, 0.215105, -0.964808,
		0.962649, 0.189687, 0.193200,
		0.224569, -0.957992, -0.178381,
		32.019402, 29.669067, 45.191734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313618, 30.369637, 44.787811>,  <31.862202, 30.339661, 45.316601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313618, 30.369637, 44.787811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174377, 29.994759, 44.778896>,  <32.090836, 29.769833, 44.773548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174377, 29.994759, 44.778896>,  <32.313618, 30.369637, 44.787811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174377, 29.994759, 44.778896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053847, 0.043727, -0.997591,
		0.935910, -0.346060, -0.065686,
		-0.348098, -0.937193, -0.022290,
		32.069946, 29.713600, 44.772209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764328, 30.050478, 44.235767>,  <32.313618, 30.369637, 44.787811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764328, 30.050478, 44.235767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427544, 29.839399, 44.280727>,  <32.225471, 29.712751, 44.307705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427544, 29.839399, 44.280727>,  <32.764328, 30.050478, 44.235767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427544, 29.839399, 44.280727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079947, -0.084004, -0.993253,
		0.533581, -0.845268, 0.028541,
		-0.841962, -0.527699, 0.112400,
		32.174953, 29.681089, 44.314445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732708, 29.754158, 43.591423>,  <32.764328, 30.050478, 44.235767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732708, 29.754158, 43.591423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372932, 29.645498, 43.728371>,  <32.157066, 29.580301, 43.810539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372932, 29.645498, 43.728371>,  <32.732708, 29.754158, 43.591423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372932, 29.645498, 43.728371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239504, -0.348897, -0.906040,
		0.365578, -0.896926, 0.248751,
		-0.899439, -0.271651, 0.342366,
		32.103100, 29.564003, 43.831081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629665, 29.058121, 43.465134>,  <32.732708, 29.754158, 43.591423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629665, 29.058121, 43.465134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260689, 29.209761, 43.494499>,  <32.039303, 29.300745, 43.512119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260689, 29.209761, 43.494499>,  <32.629665, 29.058121, 43.465134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260689, 29.209761, 43.494499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204241, -0.317658, -0.925948,
		-0.327727, -0.869115, 0.370450,
		-0.922432, 0.379120, 0.073404,
		31.983957, 29.323490, 43.516525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191738, 28.519869, 43.282429>,  <32.629665, 29.058121, 43.465134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191738, 28.519869, 43.282429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979851, 28.857555, 43.249683>,  <31.852718, 29.060167, 43.230034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979851, 28.857555, 43.249683>,  <32.191738, 28.519869, 43.282429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979851, 28.857555, 43.249683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255662, -0.250957, -0.933626,
		-0.808725, -0.473627, 0.348770,
		-0.529717, 0.844214, -0.081867,
		31.820936, 29.110819, 43.225124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615519, 28.327284, 42.925541>,  <32.191738, 28.519869, 43.282429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615519, 28.327284, 42.925541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650568, 28.722206, 42.872547>,  <31.671597, 28.959160, 42.840752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650568, 28.722206, 42.872547>,  <31.615519, 28.327284, 42.925541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650568, 28.722206, 42.872547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193313, -0.113617, -0.974537,
		-0.977217, 0.111002, 0.180904,
		0.087622, 0.987304, -0.132487,
		31.676855, 29.018398, 42.832802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136858, 28.452061, 42.390236>,  <31.615519, 28.327284, 42.925541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136858, 28.452061, 42.390236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387178, 28.763212, 42.367336>,  <31.537371, 28.949903, 42.353596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387178, 28.763212, 42.367336>,  <31.136858, 28.452061, 42.390236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387178, 28.763212, 42.367336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047720, -0.111448, -0.992624,
		-0.778520, 0.618455, -0.106864,
		0.625803, 0.777878, -0.057252,
		31.574919, 28.996576, 42.350163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847874, 28.748316, 41.866440>,  <31.136858, 28.452061, 42.390236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847874, 28.748316, 41.866440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213327, 28.905945, 41.906395>,  <31.432600, 29.000523, 41.930367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213327, 28.905945, 41.906395>,  <30.847874, 28.748316, 41.866440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213327, 28.905945, 41.906395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136665, -0.066324, -0.988395,
		-0.382875, 0.916683, -0.114452,
		0.913635, 0.394073, 0.099884,
		31.487417, 29.024166, 41.936359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841684, 29.342751, 41.408783>,  <30.847874, 28.748316, 41.866440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841684, 29.342751, 41.408783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224754, 29.248034, 41.474251>,  <31.454596, 29.191202, 41.513531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224754, 29.248034, 41.474251>,  <30.841684, 29.342751, 41.408783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224754, 29.248034, 41.474251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159306, -0.037580, -0.986514,
		0.239751, 0.970833, 0.001733,
		0.957675, -0.236794, 0.163669,
		31.512056, 29.176996, 41.523350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220400, 29.843597, 40.947834>,  <30.841684, 29.342751, 41.408783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220400, 29.843597, 40.947834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473392, 29.543674, 41.025555>,  <31.625189, 29.363720, 41.072186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473392, 29.543674, 41.025555>,  <31.220400, 29.843597, 40.947834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473392, 29.543674, 41.025555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265194, -0.026069, -0.963843,
		0.727762, 0.661142, 0.182356,
		0.632483, -0.749808, 0.194303,
		31.663137, 29.318731, 41.083847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857491, 30.025610, 40.629715>,  <31.220400, 29.843597, 40.947834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857491, 30.025610, 40.629715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888077, 29.627462, 40.653027>,  <31.906427, 29.388575, 40.667015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888077, 29.627462, 40.653027>,  <31.857491, 30.025610, 40.629715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888077, 29.627462, 40.653027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371173, -0.025837, -0.928204,
		0.925410, 0.092608, 0.367478,
		0.076465, -0.995367, 0.058284,
		31.911016, 29.328852, 40.670513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485390, 29.940958, 40.350193>,  <31.857491, 30.025610, 40.629715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485390, 29.940958, 40.350193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302498, 29.585491, 40.336277>,  <32.192764, 29.372211, 40.327927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302498, 29.585491, 40.336277>,  <32.485390, 29.940958, 40.350193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302498, 29.585491, 40.336277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325955, -0.131056, -0.936257,
		0.827463, -0.439423, 0.349589,
		-0.457229, -0.888669, -0.034788,
		32.165329, 29.318892, 40.325840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973316, 29.410070, 40.102108>,  <32.485390, 29.940958, 40.350193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973316, 29.410070, 40.102108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600979, 29.293966, 40.013309>,  <32.377575, 29.224304, 39.960030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600979, 29.293966, 40.013309>,  <32.973316, 29.410070, 40.102108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600979, 29.293966, 40.013309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217772, 0.047212, -0.974857,
		0.293443, -0.955783, 0.019264,
		-0.930842, -0.290260, -0.221997,
		32.321728, 29.206888, 39.946709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062973, 28.833117, 39.530144>,  <32.973316, 29.410070, 40.102108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062973, 28.833117, 39.530144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679420, 28.946144, 39.519623>,  <32.449287, 29.013962, 39.513309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679420, 28.946144, 39.519623>,  <33.062973, 28.833117, 39.530144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679420, 28.946144, 39.519623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024973, -0.008318, -0.999654,
		-0.282693, -0.959210, 0.000920,
		-0.958886, 0.282572, -0.026306,
		32.391754, 29.030916, 39.511730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831284, 28.470139, 39.006756>,  <33.062973, 28.833117, 39.530144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831284, 28.470139, 39.006756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554878, 28.755791, 39.051517>,  <32.389034, 28.927181, 39.078373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554878, 28.755791, 39.051517>,  <32.831284, 28.470139, 39.006756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554878, 28.755791, 39.051517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138175, 0.021457, -0.990175,
		-0.709515, -0.699684, 0.083848,
		-0.691011, 0.714130, 0.111903,
		32.347576, 28.970030, 39.085087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504238, 28.360918, 38.449448>,  <32.831284, 28.470139, 39.006756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504238, 28.360918, 38.449448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378712, 28.733437, 38.523430>,  <32.303394, 28.956947, 38.567818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378712, 28.733437, 38.523430>,  <32.504238, 28.360918, 38.449448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378712, 28.733437, 38.523430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095174, 0.162961, -0.982031,
		-0.944702, -0.325779, 0.037495,
		-0.313815, 0.931296, 0.184955,
		32.284569, 29.012825, 38.578915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995665, 28.423647, 37.951717>,  <32.504238, 28.360918, 38.449448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995665, 28.423647, 37.951717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064838, 28.791840, 38.091892>,  <32.106342, 29.012754, 38.175999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064838, 28.791840, 38.091892>,  <31.995665, 28.423647, 37.951717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064838, 28.791840, 38.091892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107023, 0.371254, -0.922343,
		-0.979101, 0.122002, 0.162716,
		0.172937, 0.920482, 0.350438,
		32.116718, 29.067984, 38.197025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492769, 28.867470, 37.607582>,  <31.995665, 28.423647, 37.951717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492769, 28.867470, 37.607582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795805, 29.100636, 37.725067>,  <31.977627, 29.240534, 37.795559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795805, 29.100636, 37.725067>,  <31.492769, 28.867470, 37.607582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795805, 29.100636, 37.725067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039642, 0.490237, -0.870687,
		-0.651525, 0.647981, 0.394507,
		0.757591, 0.582913, 0.293715,
		32.023083, 29.275509, 37.813183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165686, 29.593807, 37.493660>,  <31.492769, 28.867470, 37.607582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165686, 29.593807, 37.493660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563251, 29.636541, 37.504360>,  <31.801792, 29.662182, 37.510780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563251, 29.636541, 37.504360>,  <31.165686, 29.593807, 37.493660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563251, 29.636541, 37.504360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047398, 0.634198, -0.771716,
		-0.099415, 0.765754, 0.635404,
		0.993917, 0.106837, 0.026753,
		31.861427, 29.668592, 37.512386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373970, 30.289824, 37.207973>,  <31.165686, 29.593807, 37.493660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373970, 30.289824, 37.207973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714682, 30.082569, 37.176968>,  <31.919109, 29.958216, 37.158363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714682, 30.082569, 37.176968>,  <31.373970, 30.289824, 37.207973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714682, 30.082569, 37.176968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135693, 0.361097, -0.922603,
		0.506025, 0.775335, 0.377882,
		0.851778, -0.518136, -0.077517,
		31.970215, 29.927128, 37.153713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873516, 30.723423, 37.040878>,  <31.373970, 30.289824, 37.207973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873516, 30.723423, 37.040878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049549, 30.381330, 36.931404>,  <32.155170, 30.176075, 36.865719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049549, 30.381330, 36.931404>,  <31.873516, 30.723423, 37.040878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049549, 30.381330, 36.931404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230914, 0.402322, -0.885899,
		0.867760, 0.326670, 0.374539,
		0.440082, -0.855233, -0.273686,
		32.181572, 30.124760, 36.849297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335537, 31.162437, 36.710701>,  <31.873516, 30.723423, 37.040878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335537, 31.162437, 36.710701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366482, 30.783573, 36.586185>,  <32.385048, 30.556255, 36.511475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366482, 30.783573, 36.586185>,  <32.335537, 31.162437, 36.710701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366482, 30.783573, 36.586185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628608, 0.288684, -0.722159,
		0.773865, -0.139813, 0.617726,
		0.077361, -0.947161, -0.311291,
		32.389690, 30.499424, 36.492798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997089, 30.942957, 36.593960>,  <32.335537, 31.162437, 36.710701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997089, 30.942957, 36.593960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791817, 30.733271, 36.322124>,  <32.668655, 30.607458, 36.159023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791817, 30.733271, 36.322124>,  <32.997089, 30.942957, 36.593960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791817, 30.733271, 36.322124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602547, 0.343830, -0.720221,
		0.611216, -0.779087, 0.139419,
		-0.513178, -0.524217, -0.679591,
		32.637863, 30.576006, 36.118248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589577, 30.993937, 37.047913>,  <32.997089, 30.942957, 36.593960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589577, 30.993937, 37.047913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965408, 31.128986, 37.025284>,  <34.190907, 31.210016, 37.011707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965408, 31.128986, 37.025284>,  <33.589577, 30.993937, 37.047913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965408, 31.128986, 37.025284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179063, -0.343854, 0.921792,
		0.291765, -0.876228, -0.383534,
		0.939580, 0.337623, -0.056575,
		34.247284, 31.230272, 37.008312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070698, 30.476521, 37.176048>,  <33.589577, 30.993937, 37.047913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070698, 30.476521, 37.176048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278568, 30.796375, 37.296394>,  <34.403290, 30.988287, 37.368603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278568, 30.796375, 37.296394>,  <34.070698, 30.476521, 37.176048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278568, 30.796375, 37.296394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140483, -0.427333, 0.893113,
		0.842732, -0.421866, -0.334411,
		0.519679, 0.799635, 0.300862,
		34.434471, 31.036266, 37.386654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687943, 30.296225, 37.343555>,  <34.070698, 30.476521, 37.176048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687943, 30.296225, 37.343555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676216, 30.636538, 37.553432>,  <34.669178, 30.840725, 37.679359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676216, 30.636538, 37.553432>,  <34.687943, 30.296225, 37.343555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676216, 30.636538, 37.553432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170305, -0.512995, 0.841327,
		0.984955, 0.114027, -0.129851,
		-0.029321, 0.850784, 0.524697,
		34.667419, 30.891773, 37.710842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166542, 30.289068, 37.789726>,  <34.687943, 30.296225, 37.343555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166542, 30.289068, 37.789726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960945, 30.589241, 37.955936>,  <34.837585, 30.769344, 38.055664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960945, 30.589241, 37.955936>,  <35.166542, 30.289068, 37.789726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960945, 30.589241, 37.955936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233994, -0.343378, 0.909582,
		0.825260, 0.564752, 0.000899,
		-0.513997, 0.750431, 0.415524,
		34.806747, 30.814371, 38.080593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563587, 30.554682, 38.329098>,  <35.166542, 30.289068, 37.789726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563587, 30.554682, 38.329098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194668, 30.673889, 38.427525>,  <34.973316, 30.745415, 38.486580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194668, 30.673889, 38.427525>,  <35.563587, 30.554682, 38.329098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194668, 30.673889, 38.427525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157053, -0.292744, 0.943205,
		0.353129, 0.908562, 0.223192,
		-0.922298, 0.298020, 0.246068,
		34.917976, 30.763294, 38.501347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693359, 30.962248, 38.885254>,  <35.563587, 30.554682, 38.329098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693359, 30.962248, 38.885254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311409, 30.843807, 38.894447>,  <35.082237, 30.772743, 38.899963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311409, 30.843807, 38.894447>,  <35.693359, 30.962248, 38.885254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311409, 30.843807, 38.894447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127432, -0.338587, 0.932266,
		-0.268262, 0.893132, 0.361042,
		-0.954880, -0.296100, 0.022984,
		35.024944, 30.754978, 38.901344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484932, 31.206293, 39.440056>,  <35.693359, 30.962248, 38.885254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484932, 31.206293, 39.440056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233162, 30.908329, 39.351574>,  <35.082100, 30.729551, 39.298485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233162, 30.908329, 39.351574>,  <35.484932, 31.206293, 39.440056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233162, 30.908329, 39.351574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195309, -0.427184, 0.882818,
		-0.752113, 0.512468, 0.414370,
		-0.629429, -0.744909, -0.221201,
		35.044334, 30.684856, 39.285213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985550, 31.042812, 39.997868>,  <35.484932, 31.206293, 39.440056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985550, 31.042812, 39.997868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021141, 30.694513, 39.804420>,  <35.042496, 30.485535, 39.688354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021141, 30.694513, 39.804420>,  <34.985550, 31.042812, 39.997868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021141, 30.694513, 39.804420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020171, -0.483865, 0.874910,
		-0.995829, -0.087602, -0.025489,
		0.088977, -0.870747, -0.483615,
		35.047832, 30.433289, 39.659336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914371, 30.635254, 40.436920>,  <34.985550, 31.042812, 39.997868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914371, 30.635254, 40.436920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997627, 30.351194, 40.167889>,  <35.047581, 30.180759, 40.006470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997627, 30.351194, 40.167889>,  <34.914371, 30.635254, 40.436920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997627, 30.351194, 40.167889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142879, -0.658190, 0.739169,
		-0.967606, -0.249951, -0.035532,
		0.208143, -0.710148, -0.672582,
		35.060070, 30.138149, 39.966114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571220, 30.106859, 40.741066>,  <34.914371, 30.635254, 40.436920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571220, 30.106859, 40.741066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836689, 29.935955, 40.495464>,  <34.995968, 29.833412, 40.348103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836689, 29.935955, 40.495464>,  <34.571220, 30.106859, 40.741066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836689, 29.935955, 40.495464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137241, -0.737344, 0.661429,
		-0.735338, -0.523230, -0.430706,
		0.663658, -0.427264, -0.614006,
		35.035789, 29.807777, 40.311264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559273, 29.378481, 40.902309>,  <34.571220, 30.106859, 40.741066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559273, 29.378481, 40.902309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888298, 29.417763, 40.678257>,  <35.085712, 29.441332, 40.543827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888298, 29.417763, 40.678257>,  <34.559273, 29.378481, 40.902309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888298, 29.417763, 40.678257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491007, -0.619547, 0.612433,
		-0.286884, -0.778793, -0.557834,
		0.822563, 0.098204, -0.560131,
		35.135067, 29.447224, 40.510216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679657, 28.721239, 40.639320>,  <34.559273, 29.378481, 40.902309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679657, 28.721239, 40.639320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020668, 28.929361, 40.659271>,  <35.225273, 29.054234, 40.671242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020668, 28.929361, 40.659271>,  <34.679657, 28.721239, 40.639320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020668, 28.929361, 40.659271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379111, -0.681214, 0.626277,
		0.359833, -0.515006, -0.778003,
		0.852523, 0.520304, 0.049878,
		35.276424, 29.085453, 40.674236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109795, 28.229143, 40.741604>,  <34.679657, 28.721239, 40.639320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109795, 28.229143, 40.741604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313057, 28.551708, 40.862583>,  <35.435017, 28.745247, 40.935169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313057, 28.551708, 40.862583>,  <35.109795, 28.229143, 40.741604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313057, 28.551708, 40.862583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256199, -0.476807, 0.840843,
		0.822274, -0.349796, -0.448896,
		0.508160, 0.806411, 0.302449,
		35.465504, 28.793631, 40.953320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765839, 27.988592, 40.994286>,  <35.109795, 28.229143, 40.741604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765839, 27.988592, 40.994286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705372, 28.352989, 41.147774>,  <35.669094, 28.571627, 41.239868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705372, 28.352989, 41.147774>,  <35.765839, 27.988592, 40.994286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705372, 28.352989, 41.147774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337264, -0.317363, 0.886303,
		0.929195, 0.263393, -0.259271,
		-0.151163, 0.910991, 0.383725,
		35.660023, 28.626287, 41.262890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186398, 28.088770, 41.636509>,  <35.765839, 27.988592, 40.994286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186398, 28.088770, 41.636509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929256, 28.389391, 41.695724>,  <35.774971, 28.569763, 41.731255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929256, 28.389391, 41.695724>,  <36.186398, 28.088770, 41.636509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929256, 28.389391, 41.695724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094212, -0.269369, 0.958418,
		0.760177, 0.602171, 0.243968,
		-0.642849, 0.751552, 0.148036,
		35.736401, 28.614857, 41.740135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442665, 28.317596, 42.219135>,  <36.186398, 28.088770, 41.636509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442665, 28.317596, 42.219135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070534, 28.464289, 42.218147>,  <35.847256, 28.552303, 42.217556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070534, 28.464289, 42.218147>,  <36.442665, 28.317596, 42.219135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070534, 28.464289, 42.218147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037137, -0.087505, 0.995472,
		0.364854, 0.926203, 0.095027,
		-0.930324, 0.366730, -0.002470,
		35.791435, 28.574308, 42.217407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500771, 28.717505, 42.827530>,  <36.442665, 28.317596, 42.219135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500771, 28.717505, 42.827530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110710, 28.691730, 42.742737>,  <35.876675, 28.676266, 42.691860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110710, 28.691730, 42.742737>,  <36.500771, 28.717505, 42.827530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110710, 28.691730, 42.742737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203826, -0.114144, 0.972330,
		-0.086847, 0.991372, 0.098174,
		-0.975148, -0.064433, -0.211980,
		35.818165, 28.672401, 42.679142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139324, 29.293493, 43.069366>,  <36.500771, 28.717505, 42.827530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139324, 29.293493, 43.069366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904816, 28.969538, 43.061764>,  <35.764111, 28.775164, 43.057201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904816, 28.969538, 43.061764>,  <36.139324, 29.293493, 43.069366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904816, 28.969538, 43.061764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221728, 0.137858, 0.965314,
		-0.779180, 0.570150, -0.260398,
		-0.586272, -0.809891, -0.019003,
		35.728935, 28.726570, 43.056065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500641, 29.513016, 43.286465>,  <36.139324, 29.293493, 43.069366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500641, 29.513016, 43.286465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465744, 29.115379, 43.312294>,  <35.444805, 28.876797, 43.327793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465744, 29.115379, 43.312294>,  <35.500641, 29.513016, 43.286465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465744, 29.115379, 43.312294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613449, 0.104689, 0.782765,
		-0.784900, 0.028678, -0.618958,
		-0.087246, -0.994092, 0.064578,
		35.439571, 28.817152, 43.331669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754673, 29.449020, 43.448490>,  <35.500641, 29.513016, 43.286465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754673, 29.449020, 43.448490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941650, 29.112595, 43.557381>,  <35.053837, 28.910740, 43.622715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941650, 29.112595, 43.557381>,  <34.754673, 29.449020, 43.448490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941650, 29.112595, 43.557381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424557, 0.056521, 0.903635,
		-0.775403, -0.537973, -0.330659,
		0.467442, -0.841065, 0.272227,
		35.081882, 28.860275, 43.639050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269882, 29.037144, 43.661217>,  <34.754673, 29.449020, 43.448490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269882, 29.037144, 43.661217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604092, 28.917665, 43.845684>,  <34.804619, 28.845978, 43.956364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604092, 28.917665, 43.845684>,  <34.269882, 29.037144, 43.661217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604092, 28.917665, 43.845684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456992, 0.088213, 0.885086,
		-0.305054, -0.950262, -0.062799,
		0.835524, -0.298697, 0.461172,
		34.854748, 28.828056, 43.984035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108368, 28.629713, 44.179188>,  <34.269882, 29.037144, 43.661217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108368, 28.629713, 44.179188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472439, 28.757124, 44.285110>,  <34.690880, 28.833570, 44.348663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472439, 28.757124, 44.285110>,  <34.108368, 28.629713, 44.179188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472439, 28.757124, 44.285110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339404, 0.207006, 0.917580,
		0.237465, -0.925032, 0.296523,
		0.910173, 0.318535, 0.264803,
		34.745491, 28.852682, 44.364552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351669, 28.197508, 44.820526>,  <34.108368, 28.629713, 44.179188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351669, 28.197508, 44.820526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503986, 28.566477, 44.794807>,  <34.595379, 28.787857, 44.779377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503986, 28.566477, 44.794807>,  <34.351669, 28.197508, 44.820526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503986, 28.566477, 44.794807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428293, 0.237582, 0.871848,
		0.819487, -0.304457, 0.485537,
		0.380796, 0.922421, -0.064299,
		34.618225, 28.843203, 44.775517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587219, 28.320425, 45.493282>,  <34.351669, 28.197508, 44.820526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587219, 28.320425, 45.493282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590317, 28.701620, 45.372120>,  <34.592175, 28.930338, 45.299423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590317, 28.701620, 45.372120>,  <34.587219, 28.320425, 45.493282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590317, 28.701620, 45.372120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197998, 0.298382, 0.933684,
		0.980172, 0.052749, 0.190999,
		0.007740, 0.952988, -0.302910,
		34.592640, 28.987516, 45.281246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003223, 28.638248, 45.941032>,  <34.587219, 28.320425, 45.493282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003223, 28.638248, 45.941032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839741, 28.956753, 45.762630>,  <34.741650, 29.147856, 45.655586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839741, 28.956753, 45.762630>,  <35.003223, 28.638248, 45.941032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839741, 28.956753, 45.762630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166277, 0.545476, 0.821467,
		0.897390, 0.261581, -0.355341,
		-0.408710, 0.796261, -0.446010,
		34.717129, 29.195631, 45.628826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426628, 29.332912, 46.063858>,  <35.003223, 28.638248, 45.941032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426628, 29.332912, 46.063858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039967, 29.408529, 45.994751>,  <34.807972, 29.453899, 45.953289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039967, 29.408529, 45.994751>,  <35.426628, 29.332912, 46.063858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039967, 29.408529, 45.994751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010420, 0.645021, 0.764094,
		0.255884, 0.740413, -0.621540,
		-0.966651, 0.189043, -0.172766,
		34.749969, 29.465242, 45.942921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323868, 30.035643, 46.044949>,  <35.426628, 29.332912, 46.063858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323868, 30.035643, 46.044949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968193, 29.880817, 46.142544>,  <34.754787, 29.787922, 46.201099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968193, 29.880817, 46.142544>,  <35.323868, 30.035643, 46.044949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968193, 29.880817, 46.142544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091527, 0.672948, 0.734005,
		-0.448298, 0.630336, -0.633803,
		-0.889186, -0.387063, 0.243988,
		34.701439, 29.764698, 46.215740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842407, 30.632809, 46.233677>,  <35.323868, 30.035643, 46.044949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842407, 30.632809, 46.233677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678635, 30.304686, 46.393410>,  <34.580372, 30.107811, 46.489250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678635, 30.304686, 46.393410>,  <34.842407, 30.632809, 46.233677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678635, 30.304686, 46.393410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305631, 0.535728, 0.787138,
		-0.859626, 0.200231, -0.470054,
		-0.409430, -0.820307, 0.399329,
		34.555805, 30.058594, 46.513206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350098, 30.914707, 46.626831>,  <34.842407, 30.632809, 46.233677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350098, 30.914707, 46.626831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390602, 30.537968, 46.754993>,  <34.414906, 30.311924, 46.831890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390602, 30.537968, 46.754993>,  <34.350098, 30.914707, 46.626831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390602, 30.537968, 46.754993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146272, 0.304470, 0.941224,
		-0.984048, -0.142178, -0.106935,
		0.101263, -0.941851, 0.320410,
		34.420982, 30.255413, 46.851116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837257, 30.923214, 47.200428>,  <34.350098, 30.914707, 46.626831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837257, 30.923214, 47.200428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095524, 30.622131, 47.251881>,  <34.250484, 30.441483, 47.282753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095524, 30.622131, 47.251881>,  <33.837257, 30.923214, 47.200428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095524, 30.622131, 47.251881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011223, 0.159075, 0.987203,
		-0.763534, -0.638851, 0.094262,
		0.645670, -0.752705, 0.128628,
		34.289227, 30.396320, 47.290470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784405, 30.656385, 47.867229>,  <33.837257, 30.923214, 47.200428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784405, 30.656385, 47.867229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149635, 30.520203, 47.777443>,  <34.368774, 30.438494, 47.723572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149635, 30.520203, 47.777443>,  <33.784405, 30.656385, 47.867229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149635, 30.520203, 47.777443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239126, 0.001135, 0.970988,
		-0.330325, -0.940259, 0.082449,
		0.913074, -0.340457, -0.224465,
		34.423557, 30.418066, 47.710102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920799, 30.025549, 48.195606>,  <33.784405, 30.656385, 47.867229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920799, 30.025549, 48.195606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284184, 30.184723, 48.144474>,  <34.502216, 30.280228, 48.113792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284184, 30.184723, 48.144474>,  <33.920799, 30.025549, 48.195606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284184, 30.184723, 48.144474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182412, -0.102300, 0.977886,
		0.376058, -0.911692, -0.165524,
		0.908464, 0.397935, -0.127833,
		34.556725, 30.304104, 48.106125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371288, 29.552641, 48.539902>,  <33.920799, 30.025549, 48.195606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371288, 29.552641, 48.539902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589050, 29.888094, 48.532772>,  <34.719707, 30.089367, 48.528496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589050, 29.888094, 48.532772>,  <34.371288, 29.552641, 48.539902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589050, 29.888094, 48.532772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264841, -0.151688, 0.952287,
		0.795917, -0.523148, -0.304684,
		0.544404, 0.838634, -0.017820,
		34.752373, 30.139685, 48.527428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002670, 29.347277, 48.828732>,  <34.371288, 29.552641, 48.539902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002670, 29.347277, 48.828732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014324, 29.746834, 48.843498>,  <35.021317, 29.986568, 48.852356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014324, 29.746834, 48.843498>,  <35.002670, 29.347277, 48.828732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014324, 29.746834, 48.843498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363438, -0.044987, 0.930532,
		0.931163, -0.013691, -0.364346,
		0.029130, 0.998894, 0.036914,
		35.023064, 30.046501, 48.854572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599171, 29.481766, 49.279743>,  <35.002670, 29.347277, 48.828732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599171, 29.481766, 49.279743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377010, 29.813900, 49.261524>,  <35.243713, 30.013182, 49.250595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377010, 29.813900, 49.261524>,  <35.599171, 29.481766, 49.279743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377010, 29.813900, 49.261524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166523, 0.164707, 0.972184,
		0.814742, 0.532364, -0.229748,
		-0.555397, 0.830338, -0.045543,
		35.210392, 30.063002, 49.247860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992645, 30.046597, 49.612545>,  <35.599171, 29.481766, 49.279743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992645, 30.046597, 49.612545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598511, 30.113979, 49.623409>,  <35.362030, 30.154409, 49.629929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598511, 30.113979, 49.623409>,  <35.992645, 30.046597, 49.612545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598511, 30.113979, 49.623409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019413, -0.047451, 0.998685,
		0.169525, 0.984566, 0.043485,
		-0.985335, 0.168458, 0.027158,
		35.302910, 30.164516, 49.631557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922432, 30.421906, 50.235367>,  <35.992645, 30.046597, 49.612545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922432, 30.421906, 50.235367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557137, 30.293705, 50.134747>,  <35.337959, 30.216784, 50.074375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557137, 30.293705, 50.134747>,  <35.922432, 30.421906, 50.235367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557137, 30.293705, 50.134747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219252, -0.133793, 0.966451,
		-0.343405, 0.937751, 0.051914,
		-0.913237, -0.320502, -0.251549,
		35.283165, 30.197554, 50.059280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447468, 30.791977, 50.689457>,  <35.922432, 30.421906, 50.235367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447468, 30.791977, 50.689457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304169, 30.443300, 50.555702>,  <35.218189, 30.234095, 50.475449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304169, 30.443300, 50.555702>,  <35.447468, 30.791977, 50.689457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304169, 30.443300, 50.555702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340296, -0.211606, 0.916200,
		-0.869400, 0.442018, -0.220826,
		-0.358248, -0.871690, -0.334387,
		35.196693, 30.181793, 50.455387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140839, 31.464933, 50.664883>,  <35.447468, 30.791977, 50.689457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140839, 31.464933, 50.664883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429546, 31.686192, 50.831291>,  <35.602772, 31.818947, 50.931137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429546, 31.686192, 50.831291>,  <35.140839, 31.464933, 50.664883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429546, 31.686192, 50.831291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341185, 0.238617, -0.909206,
		-0.602192, 0.798181, -0.016497,
		0.721774, 0.553145, 0.416021,
		35.646080, 31.852135, 50.956097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373039, 31.856115, 50.160419>,  <35.140839, 31.464933, 50.664883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373039, 31.856115, 50.160419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642822, 31.984243, 50.426502>,  <35.804691, 32.061119, 50.586151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642822, 31.984243, 50.426502>,  <35.373039, 31.856115, 50.160419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642822, 31.984243, 50.426502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624783, 0.232436, -0.745399,
		-0.393383, 0.918351, -0.043362,
		0.674459, 0.320319, 0.665207,
		35.845161, 32.080338, 50.626064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511116, 32.687981, 50.156330>,  <35.373039, 31.856115, 50.160419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511116, 32.687981, 50.156330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822620, 32.480831, 50.297943>,  <36.009525, 32.356541, 50.382912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822620, 32.480831, 50.297943>,  <35.511116, 32.687981, 50.156330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822620, 32.480831, 50.297943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510715, 0.195676, -0.837186,
		0.364278, 0.832779, 0.416869,
		0.778763, -0.517870, 0.354033,
		36.056248, 32.325470, 50.404152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181011, 33.104362, 49.963482>,  <35.511116, 32.687981, 50.156330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181011, 33.104362, 49.963482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340378, 32.741013, 50.014259>,  <36.435997, 32.523003, 50.044724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340378, 32.741013, 50.014259>,  <36.181011, 33.104362, 49.963482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340378, 32.741013, 50.014259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530670, 0.115410, -0.839684,
		0.748101, 0.401906, 0.528031,
		0.398414, -0.908379, 0.126941,
		36.459904, 32.468498, 50.052341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949718, 33.141388, 49.938702>,  <36.181011, 33.104362, 49.963482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949718, 33.141388, 49.938702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823452, 32.778988, 49.825905>,  <36.747692, 32.561546, 49.758224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823452, 32.778988, 49.825905>,  <36.949718, 33.141388, 49.938702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823452, 32.778988, 49.825905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371959, 0.155255, -0.915173,
		0.872927, -0.393779, 0.287986,
		-0.315665, -0.905999, -0.281996,
		36.728752, 32.507187, 49.741306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474792, 32.860863, 49.463997>,  <36.949718, 33.141388, 49.938702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474792, 32.860863, 49.463997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167202, 32.615799, 49.390980>,  <36.982647, 32.468761, 49.347168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167202, 32.615799, 49.390980>,  <37.474792, 32.860863, 49.463997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167202, 32.615799, 49.390980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314073, -0.113357, -0.942607,
		0.556805, -0.782175, 0.279589,
		-0.768977, -0.612660, -0.182542,
		36.936508, 32.431999, 49.336216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744362, 32.286175, 49.145668>,  <37.474792, 32.860863, 49.463997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744362, 32.286175, 49.145668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358215, 32.297588, 49.041931>,  <37.126530, 32.304436, 48.979691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358215, 32.297588, 49.041931>,  <37.744362, 32.286175, 49.145668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358215, 32.297588, 49.041931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253055, -0.139651, -0.957320,
		-0.063530, -0.989790, 0.127594,
		-0.965364, 0.028531, -0.259343,
		37.068607, 32.306149, 48.964127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708275, 31.845045, 48.621674>,  <37.744362, 32.286175, 49.145668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708275, 31.845045, 48.621674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365665, 32.043659, 48.565361>,  <37.160099, 32.162827, 48.531574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365665, 32.043659, 48.565361>,  <37.708275, 31.845045, 48.621674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365665, 32.043659, 48.565361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135055, -0.047638, -0.989692,
		-0.498125, -0.866708, -0.026257,
		-0.856523, 0.496536, -0.140783,
		37.108707, 32.192619, 48.523125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478050, 31.510424, 48.075233>,  <37.708275, 31.845045, 48.621674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478050, 31.510424, 48.075233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255943, 31.842300, 48.098171>,  <37.122677, 32.041428, 48.111935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255943, 31.842300, 48.098171>,  <37.478050, 31.510424, 48.075233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255943, 31.842300, 48.098171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056595, 0.106484, -0.992702,
		-0.829742, -0.547972, -0.106084,
		-0.555270, 0.829691, 0.057342,
		37.089363, 32.091209, 48.115376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080528, 31.404549, 47.613014>,  <37.478050, 31.510424, 48.075233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080528, 31.404549, 47.613014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041229, 31.800440, 47.654564>,  <37.017651, 32.037975, 47.679493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041229, 31.800440, 47.654564>,  <37.080528, 31.404549, 47.613014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041229, 31.800440, 47.654564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236474, 0.078174, -0.968488,
		-0.966658, -0.119713, 0.226365,
		-0.098245, 0.989726, 0.103877,
		37.011757, 32.097359, 47.685726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431526, 31.554039, 47.347309>,  <37.080528, 31.404549, 47.613014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431526, 31.554039, 47.347309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659309, 31.882082, 47.324886>,  <36.795979, 32.078907, 47.311432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659309, 31.882082, 47.324886>,  <36.431526, 31.554039, 47.347309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659309, 31.882082, 47.324886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311730, 0.152348, -0.937878,
		-0.760620, 0.551557, 0.342408,
		0.569458, 0.820107, -0.056058,
		36.830147, 32.128113, 47.308067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990101, 32.116478, 47.196205>,  <36.431526, 31.554039, 47.347309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990101, 32.116478, 47.196205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365700, 32.180592, 47.074486>,  <36.591057, 32.219059, 47.001453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365700, 32.180592, 47.074486>,  <35.990101, 32.116478, 47.196205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365700, 32.180592, 47.074486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335007, 0.225953, -0.914722,
		-0.077861, 0.960860, 0.265866,
		0.938993, 0.160288, -0.304302,
		36.647396, 32.228680, 46.983196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004135, 32.676517, 46.725945>,  <35.990101, 32.116478, 47.196205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004135, 32.676517, 46.725945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332966, 32.457897, 46.662109>,  <36.530266, 32.326725, 46.623810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332966, 32.457897, 46.662109>,  <36.004135, 32.676517, 46.725945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332966, 32.457897, 46.662109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146625, 0.067614, -0.986879,
		0.550169, 0.834692, -0.024554,
		0.822079, -0.546551, -0.159586,
		36.579590, 32.293930, 46.614235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310741, 33.002090, 46.205498>,  <36.004135, 32.676517, 46.725945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310741, 33.002090, 46.205498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474091, 32.637321, 46.189350>,  <36.572098, 32.418461, 46.179661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474091, 32.637321, 46.189350>,  <36.310741, 33.002090, 46.205498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474091, 32.637321, 46.189350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052049, 0.020887, -0.998426,
		0.911332, 0.409828, -0.038935,
		0.408370, -0.911924, -0.040366,
		36.596600, 32.363743, 46.177238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857693, 32.975452, 45.739243>,  <36.310741, 33.002090, 46.205498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857693, 32.975452, 45.739243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728699, 32.597610, 45.763653>,  <36.651302, 32.370907, 45.778297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728699, 32.597610, 45.763653>,  <36.857693, 32.975452, 45.739243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728699, 32.597610, 45.763653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076656, -0.038197, -0.996326,
		0.943465, -0.325980, -0.060092,
		-0.322487, -0.944605, 0.061025,
		36.631954, 32.314228, 45.781960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005127, 32.768223, 45.098991>,  <36.857693, 32.975452, 45.739243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005127, 32.768223, 45.098991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803936, 32.452137, 45.239040>,  <36.683224, 32.262486, 45.323071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803936, 32.452137, 45.239040>,  <37.005127, 32.768223, 45.098991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803936, 32.452137, 45.239040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161230, -0.312197, -0.936236,
		0.849130, -0.527352, 0.029621,
		-0.502973, -0.790211, 0.350121,
		36.653046, 32.215073, 45.344078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392670, 32.130627, 45.073574>,  <37.005127, 32.768223, 45.098991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392670, 32.130627, 45.073574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002728, 32.041527, 45.076008>,  <36.768761, 31.988068, 45.077469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002728, 32.041527, 45.076008>,  <37.392670, 32.130627, 45.073574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002728, 32.041527, 45.076008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077637, -0.365122, -0.927717,
		0.208869, -0.903919, 0.373235,
		-0.974857, -0.222749, 0.006086,
		36.710270, 31.974703, 45.077835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439075, 31.556524, 44.612770>,  <37.392670, 32.130627, 45.073574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439075, 31.556524, 44.612770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052174, 31.652761, 44.645123>,  <36.820034, 31.710503, 44.664532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052174, 31.652761, 44.645123>,  <37.439075, 31.556524, 44.612770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052174, 31.652761, 44.645123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155518, -0.309932, -0.937953,
		-0.200596, -0.919814, 0.337198,
		-0.967251, 0.240590, 0.080877,
		36.761997, 31.724939, 44.669384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098015, 30.925404, 44.558647>,  <37.439075, 31.556524, 44.612770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098015, 30.925404, 44.558647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870392, 31.232668, 44.441269>,  <36.733818, 31.417027, 44.370842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870392, 31.232668, 44.441269>,  <37.098015, 30.925404, 44.558647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870392, 31.232668, 44.441269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165550, -0.456569, -0.874150,
		-0.805464, -0.448858, 0.386981,
		-0.569053, 0.768161, -0.293441,
		36.699677, 31.463116, 44.353237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568157, 30.576744, 44.144295>,  <37.098015, 30.925404, 44.558647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568157, 30.576744, 44.144295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552155, 30.962500, 44.039715>,  <36.542553, 31.193953, 43.976967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552155, 30.962500, 44.039715>,  <36.568157, 30.576744, 44.144295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552155, 30.962500, 44.039715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115045, -0.264361, -0.957537,
		-0.992554, -0.008228, 0.121524,
		-0.040005, 0.964389, -0.261446,
		36.540154, 31.251816, 43.961281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124786, 30.612949, 43.601803>,  <36.568157, 30.576744, 44.144295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124786, 30.612949, 43.601803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359035, 30.932619, 43.547592>,  <36.499584, 31.124420, 43.515064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359035, 30.932619, 43.547592>,  <36.124786, 30.612949, 43.601803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359035, 30.932619, 43.547592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026185, -0.148461, -0.988572,
		-0.810160, 0.582480, -0.066016,
		0.585624, 0.799172, -0.135530,
		36.534721, 31.172371, 43.506935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834064, 30.951591, 43.000896>,  <36.124786, 30.612949, 43.601803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834064, 30.951591, 43.000896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190983, 31.124872, 43.051716>,  <36.405132, 31.228842, 43.082207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190983, 31.124872, 43.051716>,  <35.834064, 30.951591, 43.000896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190983, 31.124872, 43.051716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122864, 0.037775, -0.991704,
		-0.434409, 0.900504, -0.019519,
		0.892296, 0.433204, 0.127050,
		36.458672, 31.254833, 43.089832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875854, 31.486097, 42.520672>,  <35.834064, 30.951591, 43.000896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875854, 31.486097, 42.520672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254669, 31.404812, 42.620132>,  <36.481956, 31.356041, 42.679810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254669, 31.404812, 42.620132>,  <35.875854, 31.486097, 42.520672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254669, 31.404812, 42.620132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271024, 0.090487, -0.958310,
		0.172240, 0.974945, 0.140770,
		0.947037, -0.203211, 0.248648,
		36.538780, 31.343849, 42.694725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184330, 31.982607, 42.264824>,  <35.875854, 31.486097, 42.520672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184330, 31.982607, 42.264824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472553, 31.708456, 42.306866>,  <36.645489, 31.543966, 42.332092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472553, 31.708456, 42.306866>,  <36.184330, 31.982607, 42.264824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472553, 31.708456, 42.306866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246132, 0.111109, -0.962847,
		0.648235, 0.719662, 0.248755,
		0.720563, -0.685377, 0.105108,
		36.688721, 31.502842, 42.338398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723408, 32.177635, 41.824417>,  <36.184330, 31.982607, 42.264824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723408, 32.177635, 41.824417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831615, 31.798120, 41.889679>,  <36.896538, 31.570412, 41.928837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831615, 31.798120, 41.889679>,  <36.723408, 32.177635, 41.824417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831615, 31.798120, 41.889679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296063, -0.079274, -0.951873,
		0.916061, 0.305800, 0.259456,
		0.270515, -0.948790, 0.163156,
		36.912769, 31.513483, 41.938625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436207, 32.014328, 41.530659>,  <36.723408, 32.177635, 41.824417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436207, 32.014328, 41.530659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301315, 31.638868, 41.559547>,  <37.220379, 31.413593, 41.576881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301315, 31.638868, 41.559547>,  <37.436207, 32.014328, 41.530659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301315, 31.638868, 41.559547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271928, -0.170566, -0.947081,
		0.901294, -0.299744, 0.312765,
		-0.337229, -0.938648, 0.072221,
		37.200146, 31.357273, 41.581215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009438, 31.552002, 41.398853>,  <37.436207, 32.014328, 41.530659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009438, 31.552002, 41.398853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653889, 31.389959, 41.313248>,  <37.440559, 31.292734, 41.261883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653889, 31.389959, 41.313248>,  <38.009438, 31.552002, 41.398853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653889, 31.389959, 41.313248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308451, -0.183726, -0.933329,
		0.338776, -0.895620, 0.288263,
		-0.888870, -0.405104, -0.214013,
		37.387226, 31.268429, 41.249043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175224, 30.873451, 41.002762>,  <38.009438, 31.552002, 41.398853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175224, 30.873451, 41.002762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793140, 30.969282, 40.933277>,  <37.563889, 31.026781, 40.891586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793140, 30.969282, 40.933277>,  <38.175224, 30.873451, 41.002762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793140, 30.969282, 40.933277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153644, -0.100203, -0.983032,
		-0.252920, -0.965692, 0.058905,
		-0.955209, 0.239578, -0.173716,
		37.506577, 31.041155, 40.881161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982853, 30.403696, 40.479286>,  <38.175224, 30.873451, 41.002762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982853, 30.403696, 40.479286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700748, 30.686956, 40.465862>,  <37.531487, 30.856913, 40.457809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700748, 30.686956, 40.465862>,  <37.982853, 30.403696, 40.479286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700748, 30.686956, 40.465862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142802, 0.095534, -0.985130,
		-0.694415, -0.699568, -0.168502,
		-0.705263, 0.708151, -0.033559,
		37.489170, 30.899403, 40.455795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564842, 30.218679, 39.906952>,  <37.982853, 30.403696, 40.479286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564842, 30.218679, 39.906952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480175, 30.605270, 39.965084>,  <37.429375, 30.837225, 39.999962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480175, 30.605270, 39.965084>,  <37.564842, 30.218679, 39.906952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480175, 30.605270, 39.965084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149052, 0.178883, -0.972515,
		-0.965909, -0.184187, -0.181918,
		-0.211666, 0.966476, 0.145331,
		37.416676, 30.895214, 40.008682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156460, 30.380400, 39.357014>,  <37.564842, 30.218679, 39.906952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156460, 30.380400, 39.357014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328770, 30.721283, 39.475784>,  <37.432156, 30.925814, 39.547047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328770, 30.721283, 39.475784>,  <37.156460, 30.380400, 39.357014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328770, 30.721283, 39.475784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247716, 0.204724, -0.946955,
		-0.867794, 0.481483, -0.122916,
		0.430779, 0.852210, 0.296930,
		37.458004, 30.976946, 39.564861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041805, 30.883150, 38.825920>,  <37.156460, 30.380400, 39.357014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041805, 30.883150, 38.825920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338638, 31.066530, 39.021526>,  <37.516739, 31.176558, 39.138889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338638, 31.066530, 39.021526>,  <37.041805, 30.883150, 38.825920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338638, 31.066530, 39.021526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413712, 0.260748, -0.872269,
		-0.527401, 0.849608, 0.003831,
		0.742085, 0.458451, 0.489011,
		37.561264, 31.204065, 39.168228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114582, 31.499744, 38.417927>,  <37.041805, 30.883150, 38.825920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114582, 31.499744, 38.417927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456882, 31.467764, 38.622398>,  <37.662262, 31.448576, 38.745079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456882, 31.467764, 38.622398>,  <37.114582, 31.499744, 38.417927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456882, 31.467764, 38.622398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506618, 0.330042, -0.796499,
		-0.105028, 0.940574, 0.322938,
		0.855750, -0.079951, 0.511176,
		37.713608, 31.443779, 38.775749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365299, 31.987202, 38.199570>,  <37.114582, 31.499744, 38.417927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365299, 31.987202, 38.199570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676876, 31.768309, 38.322067>,  <37.863823, 31.636972, 38.395565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676876, 31.768309, 38.322067>,  <37.365299, 31.987202, 38.199570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676876, 31.768309, 38.322067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570962, 0.416926, -0.707230,
		0.259338, 0.725745, 0.637211,
		0.778939, -0.547235, 0.306248,
		37.910557, 31.604137, 38.413940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981506, 32.415501, 38.365475>,  <37.365299, 31.987202, 38.199570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981506, 32.415501, 38.365475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150749, 32.057705, 38.307693>,  <38.252296, 31.843027, 38.273026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150749, 32.057705, 38.307693>,  <37.981506, 32.415501, 38.365475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150749, 32.057705, 38.307693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663576, 0.414464, -0.622805,
		0.616964, 0.167658, 0.768925,
		0.423110, -0.894489, -0.144455,
		38.277683, 31.789358, 38.264359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697262, 32.565277, 38.472118>,  <37.981506, 32.415501, 38.365475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697262, 32.565277, 38.472118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703556, 32.234997, 38.246559>,  <38.707333, 32.036831, 38.111225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703556, 32.234997, 38.246559>,  <38.697262, 32.565277, 38.472118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703556, 32.234997, 38.246559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614949, 0.452684, -0.645690,
		0.788410, -0.336605, 0.514885,
		0.015738, -0.825696, -0.563895,
		38.708279, 31.987288, 38.077389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309895, 32.443485, 38.369919>,  <38.697262, 32.565277, 38.472118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309895, 32.443485, 38.369919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136063, 32.242130, 38.071190>,  <39.031765, 32.121319, 37.891953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136063, 32.242130, 38.071190>,  <39.309895, 32.443485, 38.369919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136063, 32.242130, 38.071190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623165, 0.430610, -0.652871,
		0.650235, -0.749117, 0.126559,
		-0.434580, -0.503387, -0.746821,
		39.005688, 32.091114, 37.847145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834541, 32.374023, 37.821861>,  <39.309895, 32.443485, 38.369919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834541, 32.374023, 37.821861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467590, 32.322029, 37.671379>,  <39.247421, 32.290833, 37.581089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467590, 32.322029, 37.671379>,  <39.834541, 32.374023, 37.821861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467590, 32.322029, 37.671379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311273, 0.354777, -0.881614,
		0.248063, -0.925872, -0.285003,
		-0.917373, -0.129982, -0.376205,
		39.192379, 32.283035, 37.558517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931145, 32.104229, 37.211380>,  <39.834541, 32.374023, 37.821861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931145, 32.104229, 37.211380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559319, 32.241680, 37.157978>,  <39.336224, 32.324150, 37.125938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559319, 32.241680, 37.157978>,  <39.931145, 32.104229, 37.211380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559319, 32.241680, 37.157978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279117, 0.419461, -0.863798,
		-0.240830, -0.840220, -0.485830,
		-0.929567, 0.343632, -0.133501,
		39.280449, 32.344769, 37.117928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663822, 31.856998, 36.521828>,  <39.931145, 32.104229, 37.211380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663822, 31.856998, 36.521828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480553, 32.199223, 36.618240>,  <39.370590, 32.404556, 36.676086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480553, 32.199223, 36.618240>,  <39.663822, 31.856998, 36.521828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480553, 32.199223, 36.618240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549023, 0.485651, -0.680233,
		-0.699038, -0.179330, -0.692233,
		-0.458170, 0.855560, 0.241033,
		39.343102, 32.455891, 36.690552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502613, 32.157810, 35.935318>,  <39.663822, 31.856998, 36.521828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502613, 32.157810, 35.935318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470539, 32.504749, 36.131798>,  <39.451294, 32.712914, 36.249687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470539, 32.504749, 36.131798>,  <39.502613, 32.157810, 35.935318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470539, 32.504749, 36.131798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573021, 0.443331, -0.689278,
		-0.815608, 0.226195, -0.532559,
		-0.080189, 0.867348, 0.491199,
		39.446484, 32.764954, 36.279156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258484, 32.733185, 35.525749>,  <39.502613, 32.157810, 35.935318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258484, 32.733185, 35.525749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447311, 32.932831, 35.816414>,  <39.560608, 33.052620, 35.990810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447311, 32.932831, 35.816414>,  <39.258484, 32.733185, 35.525749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447311, 32.932831, 35.816414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451038, 0.571483, -0.685545,
		-0.757439, 0.651376, 0.044661,
		0.472071, 0.499115, 0.726659,
		39.588932, 33.082565, 36.034412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178108, 33.543972, 35.555973>,  <39.258484, 32.733185, 35.525749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178108, 33.543972, 35.555973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532314, 33.448135, 35.715202>,  <39.744839, 33.390633, 35.810738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532314, 33.448135, 35.715202>,  <39.178108, 33.543972, 35.555973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532314, 33.448135, 35.715202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440159, 0.706893, -0.553681,
		-0.148737, 0.665507, 0.731422,
		0.885515, -0.239589, 0.398070,
		39.797970, 33.376259, 35.834621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641968, 34.026203, 35.387535>,  <39.178108, 33.543972, 35.555973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641968, 34.026203, 35.387535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935730, 33.823082, 35.567661>,  <40.111988, 33.701210, 35.675735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935730, 33.823082, 35.567661>,  <39.641968, 34.026203, 35.387535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935730, 33.823082, 35.567661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659511, 0.690625, -0.296786,
		-0.160290, 0.514949, 0.842102,
		0.734406, -0.507804, 0.450314,
		40.156052, 33.670742, 35.702755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027901, 34.616100, 35.877087>,  <39.641968, 34.026203, 35.387535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027901, 34.616100, 35.877087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221539, 34.292076, 35.744755>,  <40.337723, 34.097660, 35.665356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221539, 34.292076, 35.744755>,  <40.027901, 34.616100, 35.877087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221539, 34.292076, 35.744755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564875, 0.578063, -0.588862,
		0.668255, 0.098191, 0.737424,
		0.484099, -0.810063, -0.330827,
		40.366768, 34.049057, 35.645508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698353, 34.776604, 35.915077>,  <40.027901, 34.616100, 35.877087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698353, 34.776604, 35.915077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644375, 34.501011, 35.630234>,  <40.611988, 34.335655, 35.459328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644375, 34.501011, 35.630234>,  <40.698353, 34.776604, 35.915077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644375, 34.501011, 35.630234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336598, 0.644065, -0.686937,
		0.931929, -0.332394, 0.144993,
		-0.134949, -0.688980, -0.712106,
		40.603889, 34.294315, 35.416603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287121, 34.839405, 35.430862>,  <40.698353, 34.776604, 35.915077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287121, 34.839405, 35.430862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977169, 34.667095, 35.245827>,  <40.791199, 34.563709, 35.134804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977169, 34.667095, 35.245827>,  <41.287121, 34.839405, 35.430862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977169, 34.667095, 35.245827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094493, 0.644663, -0.758604,
		0.625005, -0.631539, -0.458832,
		-0.774881, -0.430775, -0.462594,
		40.744705, 34.537865, 35.107048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372646, 34.546860, 34.777134>,  <41.287121, 34.839405, 35.430862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372646, 34.546860, 34.777134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997555, 34.685616, 34.769821>,  <40.772499, 34.768867, 34.765434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997555, 34.685616, 34.769821>,  <41.372646, 34.546860, 34.777134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997555, 34.685616, 34.769821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188962, 0.465244, -0.864779,
		-0.291476, -0.814382, -0.501821,
		-0.937729, 0.346887, -0.018280,
		40.716236, 34.789680, 34.764336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994446, 34.682770, 35.132095>,  <41.372646, 34.546860, 34.777134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994446, 34.682770, 35.132095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353420, 34.569290, 35.267227>,  <42.568806, 34.501202, 35.348309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353420, 34.569290, 35.267227>,  <41.994446, 34.682770, 35.132095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353420, 34.569290, 35.267227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129206, 0.563188, 0.816165,
		-0.421808, -0.776102, 0.468768,
		0.897432, -0.283697, 0.337834,
		42.622650, 34.484180, 35.368576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925522, 34.507080, 35.828178>,  <41.994446, 34.682770, 35.132095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925522, 34.507080, 35.828178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324322, 34.536751, 35.819366>,  <42.563602, 34.554554, 35.814079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324322, 34.536751, 35.819366>,  <41.925522, 34.507080, 35.828178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324322, 34.536751, 35.819366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017471, 0.493154, 0.869767,
		0.075386, -0.866774, 0.492971,
		0.997001, 0.074181, -0.022033,
		42.623421, 34.559006, 35.812756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319500, 34.244095, 36.460503>,  <41.925522, 34.507080, 35.828178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319500, 34.244095, 36.460503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.551308, 34.528652, 36.301472>,  <42.690392, 34.699387, 36.206055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.551308, 34.528652, 36.301472>,  <42.319500, 34.244095, 36.460503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551308, 34.528652, 36.301472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030178, 0.506248, 0.861860,
		0.814398, -0.487468, 0.314850,
		0.579522, 0.711398, -0.397576,
		42.725163, 34.742073, 36.182198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769234, 34.530106, 37.020985>,  <42.319500, 34.244095, 36.460503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.769234, 34.530106, 37.020985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809635, 34.803318, 36.731636>,  <42.833874, 34.967247, 36.558029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809635, 34.803318, 36.731636>,  <42.769234, 34.530106, 37.020985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809635, 34.803318, 36.731636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074855, 0.719808, 0.690126,
		0.992066, -0.123851, 0.021573,
		0.101001, 0.683036, -0.723368,
		42.839935, 35.008228, 36.514626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450588, 34.969807, 37.237762>,  <42.769234, 34.530106, 37.020985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450588, 34.969807, 37.237762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252556, 35.193649, 36.971912>,  <43.133736, 35.327953, 36.812401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252556, 35.193649, 36.971912>,  <43.450588, 34.969807, 37.237762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252556, 35.193649, 36.971912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051718, 0.782582, 0.620395,
		0.867304, 0.272775, -0.416386,
		-0.495085, 0.559606, -0.664629,
		43.104031, 35.361530, 36.772522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829231, 35.489124, 37.067951>,  <43.450588, 34.969807, 37.237762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.829231, 35.489124, 37.067951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463840, 35.624889, 36.978191>,  <43.244606, 35.706348, 36.924335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463840, 35.624889, 36.978191>,  <43.829231, 35.489124, 37.067951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463840, 35.624889, 36.978191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141480, 0.782047, 0.606948,
		0.381496, 0.522686, -0.762404,
		-0.913479, 0.339413, -0.224398,
		43.189796, 35.726715, 36.910873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875175, 36.197830, 36.966503>,  <43.829231, 35.489124, 37.067951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875175, 36.197830, 36.966503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.481571, 36.154644, 37.023155>,  <43.245407, 36.128735, 37.057148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.481571, 36.154644, 37.023155>,  <43.875175, 36.197830, 36.966503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481571, 36.154644, 37.023155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001782, 0.789272, 0.614041,
		-0.178078, 0.604478, -0.776463,
		-0.984015, -0.107964, 0.141629,
		43.186367, 36.122253, 37.065643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601280, 36.854061, 37.087193>,  <43.875175, 36.197830, 36.966503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.601280, 36.854061, 37.087193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293476, 36.631748, 37.213024>,  <43.108795, 36.498360, 37.288525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293476, 36.631748, 37.213024>,  <43.601280, 36.854061, 37.087193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293476, 36.631748, 37.213024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177858, 0.659602, 0.730269,
		-0.613368, 0.505998, -0.606420,
		-0.769511, -0.555780, 0.314583,
		43.062622, 36.465015, 37.307400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140392, 37.329845, 37.240974>,  <43.601280, 36.854061, 37.087193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140392, 37.329845, 37.240974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051926, 36.992695, 37.437199>,  <42.998844, 36.790405, 37.554932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051926, 36.992695, 37.437199>,  <43.140392, 37.329845, 37.240974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051926, 36.992695, 37.437199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155693, 0.527081, 0.835431,
		-0.962728, 0.108393, -0.247803,
		-0.221167, -0.842874, 0.490559,
		42.985577, 36.739834, 37.584366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605354, 37.493191, 37.649052>,  <43.140392, 37.329845, 37.240974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605354, 37.493191, 37.649052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740112, 37.154129, 37.812996>,  <42.820965, 36.950691, 37.911362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740112, 37.154129, 37.812996>,  <42.605354, 37.493191, 37.649052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740112, 37.154129, 37.812996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040341, 0.421914, 0.905738,
		-0.940678, -0.321671, 0.107945,
		0.336893, -0.847653, 0.409862,
		42.841179, 36.899834, 37.935955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161411, 37.388153, 38.225323>,  <42.605354, 37.493191, 37.649052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161411, 37.388153, 38.225323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488983, 37.169201, 38.294304>,  <42.685524, 37.037830, 38.335693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488983, 37.169201, 38.294304>,  <42.161411, 37.388153, 38.225323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488983, 37.169201, 38.294304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042111, 0.356988, 0.933159,
		-0.572353, -0.756926, 0.315397,
		0.818925, -0.547379, 0.172448,
		42.734661, 37.004986, 38.346039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095982, 37.250988, 38.870609>,  <42.161411, 37.388153, 38.225323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095982, 37.250988, 38.870609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483582, 37.180286, 38.801567>,  <42.716141, 37.137867, 38.760143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483582, 37.180286, 38.801567>,  <42.095982, 37.250988, 38.870609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483582, 37.180286, 38.801567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234269, 0.435621, 0.869110,
		-0.078430, -0.882605, 0.463526,
		0.969003, -0.176755, -0.172601,
		42.774284, 37.127258, 38.749786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439140, 37.033848, 39.486122>,  <42.095982, 37.250988, 38.870609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439140, 37.033848, 39.486122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729164, 37.190216, 39.259327>,  <42.903179, 37.284035, 39.123249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729164, 37.190216, 39.259327>,  <42.439140, 37.033848, 39.486122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729164, 37.190216, 39.259327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373052, 0.469108, 0.800481,
		0.578902, -0.791910, 0.194297,
		0.725055, 0.390918, -0.566991,
		42.946682, 37.307491, 39.089230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055679, 36.864475, 39.864632>,  <42.439140, 37.033848, 39.486122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055679, 36.864475, 39.864632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.184479, 37.134739, 39.599361>,  <43.261761, 37.296898, 39.440201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.184479, 37.134739, 39.599361>,  <43.055679, 36.864475, 39.864632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.184479, 37.134739, 39.599361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453291, 0.504944, 0.734547,
		0.831169, -0.537135, -0.143678,
		0.322002, 0.675660, -0.663173,
		43.281078, 37.337437, 39.400410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726978, 37.020359, 40.117546>,  <43.055679, 36.864475, 39.864632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.726978, 37.020359, 40.117546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.630630, 37.332432, 39.886616>,  <43.572823, 37.519676, 39.748058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.630630, 37.332432, 39.886616>,  <43.726978, 37.020359, 40.117546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.630630, 37.332432, 39.886616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439812, 0.617999, 0.651646,
		0.865187, -0.096955, -0.491987,
		-0.240867, 0.780177, -0.577327,
		43.558369, 37.566486, 39.713417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.369831, 37.384075, 40.037220>,  <43.726978, 37.020359, 40.117546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.369831, 37.384075, 40.037220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084965, 37.645691, 39.935196>,  <43.914043, 37.802662, 39.873981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084965, 37.645691, 39.935196>,  <44.369831, 37.384075, 40.037220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084965, 37.645691, 39.935196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456695, 0.707570, 0.539235,
		0.533151, 0.267542, -0.802603,
		-0.712166, 0.654039, -0.255056,
		43.871315, 37.841904, 39.858681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.612160, 38.027699, 39.729015>,  <44.369831, 37.384075, 40.037220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.612160, 38.027699, 39.729015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252266, 38.113926, 39.880806>,  <44.036327, 38.165661, 39.971882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252266, 38.113926, 39.880806>,  <44.612160, 38.027699, 39.729015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.252266, 38.113926, 39.880806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382831, 0.807324, 0.449075,
		-0.209553, 0.549324, -0.808907,
		-0.899738, 0.215569, 0.379476,
		43.982346, 38.178596, 39.994648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528809, 38.684315, 39.597843>,  <44.612160, 38.027699, 39.729015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528809, 38.684315, 39.597843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.289120, 38.598946, 39.906487>,  <44.145306, 38.547726, 40.091671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.289120, 38.598946, 39.906487>,  <44.528809, 38.684315, 39.597843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289120, 38.598946, 39.906487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480546, 0.674983, 0.559887,
		-0.640315, 0.706292, -0.301908,
		-0.599227, -0.213423, 0.771607,
		44.109352, 38.534920, 40.137970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.204975, 39.240215, 39.792500>,  <44.528809, 38.684315, 39.597843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.204975, 39.240215, 39.792500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.164890, 39.045830, 40.139786>,  <44.140839, 38.929199, 40.348156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.164890, 39.045830, 40.139786>,  <44.204975, 39.240215, 39.792500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.164890, 39.045830, 40.139786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288294, 0.820993, 0.492806,
		-0.952284, 0.299686, 0.057827,
		-0.100212, -0.485962, 0.868216,
		44.134827, 38.900040, 40.400249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065365, 39.806900, 40.218910>,  <44.204975, 39.240215, 39.792500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065365, 39.806900, 40.218910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124104, 39.507027, 40.477028>,  <44.159348, 39.327103, 40.631897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124104, 39.507027, 40.477028>,  <44.065365, 39.806900, 40.218910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124104, 39.507027, 40.477028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430950, 0.635688, 0.640455,
		-0.890347, 0.184041, 0.416427,
		0.146848, -0.749686, 0.645296,
		44.168159, 39.282120, 40.670616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.792870, 39.998436, 40.761032>,  <44.065365, 39.806900, 40.218910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.792870, 39.998436, 40.761032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080429, 39.742142, 40.868839>,  <44.252964, 39.588364, 40.933525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080429, 39.742142, 40.868839>,  <43.792870, 39.998436, 40.761032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.080429, 39.742142, 40.868839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315670, 0.646380, 0.694655,
		-0.619303, -0.414307, 0.666943,
		0.718899, -0.640736, 0.269521,
		44.296101, 39.549919, 40.949696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952511, 40.657291, 41.046062>,  <43.792870, 39.998436, 40.761032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952511, 40.657291, 41.046062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.240807, 40.833214, 40.831734>,  <44.413784, 40.938766, 40.703136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.240807, 40.833214, 40.831734>,  <43.952511, 40.657291, 41.046062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.240807, 40.833214, 40.831734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649826, -0.697802, 0.301327,
		-0.241371, -0.565369, -0.788732,
		0.720740, 0.439807, -0.535821,
		44.457027, 40.965157, 40.670986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.543865, 40.190403, 41.016514>,  <43.952511, 40.657291, 41.046062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.543865, 40.190403, 41.016514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720928, 40.460911, 40.780983>,  <44.827168, 40.623215, 40.639664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720928, 40.460911, 40.780983>,  <44.543865, 40.190403, 41.016514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720928, 40.460911, 40.780983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883868, -0.439720, 0.159446,
		-0.151090, -0.591025, -0.792377,
		0.442661, 0.676266, -0.588825,
		44.853725, 40.663792, 40.604336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.766838, 39.804504, 40.477287>,  <44.543865, 40.190403, 41.016514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.766838, 39.804504, 40.477287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038692, 40.076656, 40.586956>,  <45.201805, 40.239948, 40.652760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038692, 40.076656, 40.586956>,  <44.766838, 39.804504, 40.477287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.038692, 40.076656, 40.586956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690413, -0.719591, 0.074289,
		0.247838, 0.138804, -0.958806,
		0.679636, 0.680384, 0.274174,
		45.242584, 40.280773, 40.669209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.330647, 39.953186, 39.961182>,  <44.766838, 39.804504, 40.477287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.330647, 39.953186, 39.961182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.454082, 39.958664, 40.341621>,  <45.528145, 39.961952, 40.569885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.454082, 39.958664, 40.341621>,  <45.330647, 39.953186, 39.961182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.454082, 39.958664, 40.341621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637516, -0.745058, -0.196119,
		0.705935, 0.666859, -0.238651,
		0.308592, 0.013697, 0.951096,
		45.546661, 39.962772, 40.626949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.016983, 39.942402, 39.968708>,  <45.330647, 39.953186, 39.961182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.016983, 39.942402, 39.968708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.912880, 39.785915, 40.321800>,  <45.850418, 39.692024, 40.533657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.912880, 39.785915, 40.321800>,  <46.016983, 39.942402, 39.968708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.912880, 39.785915, 40.321800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669350, -0.732000, -0.127069,
		0.695871, 0.557785, 0.452371,
		-0.260259, -0.391219, 0.882731,
		45.834801, 39.668549, 40.586620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.682331, 39.954674, 40.363743>,  <46.016983, 39.942402, 39.968708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.682331, 39.954674, 40.363743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.391121, 39.687576, 40.425846>,  <46.216396, 39.527317, 40.463108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.391121, 39.687576, 40.425846>,  <46.682331, 39.954674, 40.363743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.391121, 39.687576, 40.425846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620222, -0.738019, -0.265806,
		0.292071, -0.097220, 0.951443,
		-0.728024, -0.667740, 0.155255,
		46.172714, 39.487255, 40.472424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.789032, 39.414062, 40.951065>,  <46.682331, 39.954674, 40.363743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.789032, 39.414062, 40.951065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.566338, 39.277302, 40.648239>,  <46.432720, 39.195244, 40.466545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.566338, 39.277302, 40.648239>,  <46.789032, 39.414062, 40.951065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.566338, 39.277302, 40.648239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686105, -0.703047, -0.187042,
		-0.468301, -0.623558, 0.625994,
		-0.556735, -0.341906, -0.757064,
		46.399319, 39.174728, 40.421120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.693787, 38.729694, 40.992973>,  <46.789032, 39.414062, 40.951065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.693787, 38.729694, 40.992973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.662823, 38.778484, 40.597168>,  <46.644245, 38.807758, 40.359684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.662823, 38.778484, 40.597168>,  <46.693787, 38.729694, 40.992973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.662823, 38.778484, 40.597168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525020, -0.838740, -0.144460,
		-0.847562, -0.530695, 0.000892,
		-0.077412, 0.121971, -0.989510,
		46.639599, 38.815075, 40.300316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.090076, 38.546799, 41.470081>,  <46.693787, 38.729694, 40.992973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.090076, 38.546799, 41.470081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.843277, 38.323364, 41.691814>,  <46.695198, 38.189304, 41.824856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.843277, 38.323364, 41.691814>,  <47.090076, 38.546799, 41.470081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.843277, 38.323364, 41.691814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219000, -0.554700, -0.802712,
		0.755877, -0.616673, 0.219919,
		-0.617000, -0.558590, 0.554336,
		46.658176, 38.155788, 41.858116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.214630, 37.720211, 41.384434>,  <47.090076, 38.546799, 41.470081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.214630, 37.720211, 41.384434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.834332, 37.828033, 41.445637>,  <46.606152, 37.892727, 41.482361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.834332, 37.828033, 41.445637>,  <47.214630, 37.720211, 41.384434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.834332, 37.828033, 41.445637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266204, -0.457236, -0.848570,
		-0.158776, -0.847511, 0.506474,
		-0.950750, 0.269558, 0.153012,
		46.549107, 37.908901, 41.491539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.839436, 37.121159, 41.504204>,  <47.214630, 37.720211, 41.384434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.839436, 37.121159, 41.504204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.592144, 37.400501, 41.359928>,  <46.443771, 37.568108, 41.273361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.592144, 37.400501, 41.359928>,  <46.839436, 37.121159, 41.504204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.592144, 37.400501, 41.359928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339520, -0.651144, -0.678777,
		-0.708889, -0.297175, 0.639658,
		-0.618225, 0.698354, -0.360692,
		46.406677, 37.610008, 41.251720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.121273, 36.739197, 41.404743>,  <46.839436, 37.121159, 41.504204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.121273, 36.739197, 41.404743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.065323, 37.079510, 41.202114>,  <46.031754, 37.283695, 41.080536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.065323, 37.079510, 41.202114>,  <46.121273, 36.739197, 41.404743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.065323, 37.079510, 41.202114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447722, -0.510652, -0.734016,
		-0.883166, 0.124134, 0.452338,
		-0.139871, 0.850779, -0.506568,
		46.023361, 37.334743, 41.050144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.478374, 36.672607, 41.141659>,  <46.121273, 36.739197, 41.404743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.478374, 36.672607, 41.141659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.651783, 36.953651, 40.915955>,  <45.755829, 37.122280, 40.780533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.651783, 36.953651, 40.915955>,  <45.478374, 36.672607, 41.141659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.651783, 36.953651, 40.915955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361573, -0.437928, -0.823095,
		-0.825425, 0.560850, 0.064196,
		0.433519, 0.702614, -0.564265,
		45.781837, 37.164436, 40.746674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.000835, 36.834465, 40.650280>,  <45.478374, 36.672607, 41.141659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.000835, 36.834465, 40.650280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.359470, 36.916111, 40.493073>,  <45.574654, 36.965099, 40.398746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.359470, 36.916111, 40.493073>,  <45.000835, 36.834465, 40.650280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.359470, 36.916111, 40.493073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221372, -0.562064, -0.796918,
		-0.383566, 0.801512, -0.458756,
		0.896589, 0.204115, -0.393021,
		45.628448, 36.977345, 40.375168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.889378, 36.789017, 39.991531>,  <45.000835, 36.834465, 40.650280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.889378, 36.789017, 39.991531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.289204, 36.792595, 39.980301>,  <45.529099, 36.794743, 39.973564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.289204, 36.792595, 39.980301>,  <44.889378, 36.789017, 39.991531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.289204, 36.792595, 39.980301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016978, -0.603922, -0.796862,
		-0.024082, 0.796993, -0.603508,
		0.999566, 0.008944, -0.028075,
		45.589073, 36.795277, 39.971878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.169537, 37.069023, 39.276581>,  <44.889378, 36.789017, 39.991531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.169537, 37.069023, 39.276581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.457279, 36.842117, 39.436947>,  <45.629925, 36.705975, 39.533169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.457279, 36.842117, 39.436947>,  <45.169537, 37.069023, 39.276581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.457279, 36.842117, 39.436947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001550, -0.578470, -0.815702,
		0.694635, 0.586162, -0.417008,
		0.719360, -0.567262, 0.400917,
		45.673088, 36.671940, 39.557220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.657421, 37.001812, 38.713615>,  <45.169537, 37.069023, 39.276581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.657421, 37.001812, 38.713615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747536, 36.706490, 38.967907>,  <45.801605, 36.529297, 39.120483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747536, 36.706490, 38.967907>,  <45.657421, 37.001812, 38.713615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.747536, 36.706490, 38.967907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114380, -0.627948, -0.769804,
		0.967556, 0.246138, -0.057019,
		0.225283, -0.738307, 0.635728,
		45.815121, 36.484997, 39.158627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.221672, 36.712921, 38.441391>,  <45.657421, 37.001812, 38.713615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.221672, 36.712921, 38.441391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.062965, 36.423321, 38.667095>,  <45.967739, 36.249561, 38.802517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.062965, 36.423321, 38.667095>,  <46.221672, 36.712921, 38.441391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.062965, 36.423321, 38.667095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047832, -0.630194, -0.774963,
		0.916671, -0.280492, 0.284672,
		-0.396770, -0.724003, 0.564264,
		45.943935, 36.206120, 38.836376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.601776, 36.090641, 38.368591>,  <46.221672, 36.712921, 38.441391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.601776, 36.090641, 38.368591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.280190, 35.911358, 38.524921>,  <46.087238, 35.803787, 38.618721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.280190, 35.911358, 38.524921>,  <46.601776, 36.090641, 38.368591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.280190, 35.911358, 38.524921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035397, -0.619980, -0.783818,
		0.593621, -0.643998, 0.482577,
		-0.803966, -0.448209, 0.390829,
		46.039001, 35.776894, 38.642170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.594986, 35.297985, 38.552624>,  <46.601776, 36.090641, 38.368591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.594986, 35.297985, 38.552624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.221581, 35.411568, 38.465065>,  <45.997536, 35.479717, 38.412529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.221581, 35.411568, 38.465065>,  <46.594986, 35.297985, 38.552624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.221581, 35.411568, 38.465065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077812, -0.756440, -0.649418,
		-0.349988, -0.589209, 0.728245,
		-0.933517, 0.283955, -0.218898,
		45.941525, 35.496754, 38.399395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.146343, 34.636543, 38.448082>,  <46.594986, 35.297985, 38.552624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.146343, 34.636543, 38.448082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.932106, 34.931400, 38.283272>,  <45.803562, 35.108315, 38.184387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.932106, 34.931400, 38.283272>,  <46.146343, 34.636543, 38.448082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.932106, 34.931400, 38.283272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268627, -0.611279, -0.744431,
		-0.800609, -0.288034, 0.525415,
		-0.535596, 0.737139, -0.412022,
		45.771427, 35.152542, 38.159664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.620571, 34.306255, 38.060471>,  <46.146343, 34.636543, 38.448082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.620571, 34.306255, 38.060471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581898, 34.668339, 37.894943>,  <45.558693, 34.885590, 37.795628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581898, 34.668339, 37.894943>,  <45.620571, 34.306255, 38.060471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.581898, 34.668339, 37.894943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233046, -0.424800, -0.874776,
		-0.967648, 0.011866, 0.252026,
		-0.096681, 0.905209, -0.413823,
		45.552895, 34.939903, 37.770798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.952351, 34.361744, 37.817097>,  <45.620571, 34.306255, 38.060471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.952351, 34.361744, 37.817097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.172901, 34.630486, 37.619274>,  <45.305233, 34.791733, 37.500580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.172901, 34.630486, 37.619274>,  <44.952351, 34.361744, 37.817097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172901, 34.630486, 37.619274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365772, -0.338112, -0.867116,
		-0.749796, 0.659005, 0.059320,
		0.551377, 0.671858, -0.494560,
		45.338314, 34.832043, 37.470905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.688572, 34.234409, 37.087688>,  <44.952351, 34.361744, 37.817097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.688572, 34.234409, 37.087688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989105, 34.483273, 36.999680>,  <45.169426, 34.632591, 36.946873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989105, 34.483273, 36.999680>,  <44.688572, 34.234409, 37.087688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.989105, 34.483273, 36.999680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155410, -0.157222, -0.975258,
		-0.641362, 0.766939, -0.021436,
		0.751334, 0.622163, -0.220026,
		45.214504, 34.669922, 36.933670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476379, 34.671497, 36.572475>,  <44.688572, 34.234409, 37.087688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476379, 34.671497, 36.572475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.875618, 34.666618, 36.548283>,  <45.115162, 34.663689, 36.533768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.875618, 34.666618, 36.548283>,  <44.476379, 34.671497, 36.572475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.875618, 34.666618, 36.548283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061183, -0.322079, -0.944734,
		-0.007953, 0.946634, -0.322212,
		0.998095, -0.012201, -0.060480,
		45.175045, 34.662960, 36.530140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.593681, 35.063881, 35.971321>,  <44.476379, 34.671497, 36.572475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.593681, 35.063881, 35.971321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.972260, 34.936012, 35.989452>,  <45.199406, 34.859291, 36.000332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.972260, 34.936012, 35.989452>,  <44.593681, 35.063881, 35.971321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.972260, 34.936012, 35.989452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043752, -0.266083, -0.962957,
		0.319896, 0.909399, -0.265819,
		0.946442, -0.319676, 0.045331,
		45.256191, 34.840111, 36.003052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.019169, 35.410717, 35.479992>,  <44.593681, 35.063881, 35.971321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.019169, 35.410717, 35.479992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.204994, 35.061352, 35.538425>,  <45.316490, 34.851734, 35.573486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.204994, 35.061352, 35.538425>,  <45.019169, 35.410717, 35.479992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.204994, 35.061352, 35.538425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074996, -0.203175, -0.976266,
		0.882359, 0.442580, -0.159889,
		0.464562, -0.873409, 0.146082,
		45.344364, 34.799328, 35.582249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.661865, 35.465672, 35.120361>,  <45.019169, 35.410717, 35.479992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.661865, 35.465672, 35.120361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571301, 35.080971, 35.182037>,  <45.516960, 34.850151, 35.219044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571301, 35.080971, 35.182037>,  <45.661865, 35.465672, 35.120361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.571301, 35.080971, 35.182037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009973, -0.156001, -0.987707,
		0.973980, -0.225171, 0.025730,
		-0.226416, -0.961749, 0.154188,
		45.503376, 34.792446, 35.228294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.053032, 35.077713, 34.717484>,  <45.661865, 35.465672, 35.120361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.053032, 35.077713, 34.717484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.794834, 34.784164, 34.802128>,  <45.639915, 34.608036, 34.852913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.794834, 34.784164, 34.802128>,  <46.053032, 35.077713, 34.717484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.794834, 34.784164, 34.802128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044714, -0.240277, -0.969674,
		0.762457, -0.635379, 0.122283,
		-0.645492, -0.733867, 0.211611,
		45.601185, 34.564003, 34.865612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.276894, 34.393543, 34.434799>,  <46.053032, 35.077713, 34.717484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.276894, 34.393543, 34.434799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.877647, 34.412384, 34.450546>,  <45.638100, 34.423687, 34.459995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.877647, 34.412384, 34.450546>,  <46.276894, 34.393543, 34.434799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.877647, 34.412384, 34.450546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051387, -0.290126, -0.955608,
		-0.033587, -0.955829, 0.292000,
		-0.998114, 0.047101, 0.039373,
		45.578213, 34.426514, 34.462357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.048729, 34.248917, 34.249321>,  <46.276894, 34.393543, 34.434799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.048729, 34.248917, 34.249321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.420910, 34.195511, 34.385807>,  <47.644218, 34.163467, 34.467701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.420910, 34.195511, 34.385807>,  <47.048729, 34.248917, 34.249321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.420910, 34.195511, 34.385807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163375, 0.682381, 0.712506,
		-0.327969, -0.718700, 0.613112,
		0.930454, -0.133512, 0.341218,
		47.700047, 34.155457, 34.488171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.847481, 34.219841, 34.994621>,  <47.048729, 34.248917, 34.249321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.847481, 34.219841, 34.994621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.058884, 34.278469, 35.329094>,  <47.185726, 34.313644, 35.529778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.058884, 34.278469, 35.329094>,  <46.847481, 34.219841, 34.994621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.058884, 34.278469, 35.329094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845619, -0.004019, -0.533772,
		-0.074875, 0.989192, -0.126067,
		0.528510, 0.146570, 0.836178,
		47.217438, 34.322441, 35.579948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.108715, 34.949390, 34.995335>,  <46.847481, 34.219841, 34.994621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.108715, 34.949390, 34.995335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.321014, 34.710926, 35.236298>,  <47.448395, 34.567848, 35.380875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.321014, 34.710926, 35.236298>,  <47.108715, 34.949390, 34.995335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.321014, 34.710926, 35.236298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803085, 0.126619, -0.582257,
		0.270846, 0.792815, 0.545974,
		0.530752, -0.596165, 0.602403,
		47.480240, 34.532078, 35.417019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.695923, 35.369640, 35.122845>,  <47.108715, 34.949390, 34.995335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.695923, 35.369640, 35.122845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.719913, 34.970425, 35.115734>,  <47.734310, 34.730896, 35.111469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.719913, 34.970425, 35.115734>,  <47.695923, 35.369640, 35.122845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.719913, 34.970425, 35.115734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730850, 0.056036, -0.680234,
		0.679897, 0.027812, 0.732779,
		0.059981, -0.998041, -0.017772,
		47.737907, 34.671013, 35.110401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.422794, 35.022926, 44.786251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.119381, 34.786449, 44.676617>,  <31.937334, 34.644566, 44.610836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.119381, 34.786449, 44.676617>,  <32.422794, 35.022926, 44.786251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119381, 34.786449, 44.676617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368405, -0.042111, -0.928711,
		0.537503, -0.805432, 0.249740,
		-0.758530, -0.591191, -0.274091,
		31.891821, 34.609093, 44.594391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799633, 34.504314, 44.398872>,  <32.422794, 35.022926, 44.786251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799633, 34.504314, 44.398872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.411274, 34.500172, 44.303169>,  <32.178257, 34.497684, 44.245747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.411274, 34.500172, 44.303169>,  <32.799633, 34.504314, 44.398872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411274, 34.500172, 44.303169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239456, -0.057009, -0.969232,
		-0.003595, -0.998320, 0.057831,
		-0.970901, -0.010364, -0.239258,
		32.120003, 34.497063, 44.231392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689121, 34.066704, 43.855450>,  <32.799633, 34.504314, 44.398872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689121, 34.066704, 43.855450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.371429, 34.309605, 43.863888>,  <32.180813, 34.455345, 43.868950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.371429, 34.309605, 43.863888>,  <32.689121, 34.066704, 43.855450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371429, 34.309605, 43.863888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130812, 0.204785, -0.970026,
		-0.593372, -0.767663, -0.242082,
		-0.794229, 0.607253, 0.021095,
		32.133160, 34.491779, 43.870216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319077, 33.883083, 43.324585>,  <32.689121, 34.066704, 43.855450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319077, 33.883083, 43.324585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.170860, 34.249645, 43.385120>,  <32.081932, 34.469582, 43.421440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.170860, 34.249645, 43.385120>,  <32.319077, 33.883083, 43.324585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170860, 34.249645, 43.385120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042197, 0.146160, -0.988361,
		-0.927857, -0.372615, -0.015488,
		-0.370541, 0.916404, 0.151339,
		32.059696, 34.524567, 43.430523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798393, 33.953323, 42.837139>,  <32.319077, 33.883083, 43.324585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798393, 33.953323, 42.837139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.923407, 34.322449, 42.927235>,  <31.998415, 34.543926, 42.981293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.923407, 34.322449, 42.927235>,  <31.798393, 33.953323, 42.837139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923407, 34.322449, 42.927235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088644, 0.207751, -0.974157,
		-0.945762, 0.324421, -0.016873,
		0.312532, 0.922817, 0.225241,
		32.017166, 34.599293, 42.994808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565527, 34.249050, 42.231617>,  <31.798393, 33.953323, 42.837139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565527, 34.249050, 42.231617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.835831, 34.502914, 42.381580>,  <31.998013, 34.655231, 42.471558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.835831, 34.502914, 42.381580>,  <31.565527, 34.249050, 42.231617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835831, 34.502914, 42.381580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239445, 0.292026, -0.925952,
		-0.697147, 0.715491, 0.045373,
		0.675761, 0.634660, 0.374906,
		32.038559, 34.693314, 42.494053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483053, 34.824383, 41.856571>,  <31.565527, 34.249050, 42.231617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483053, 34.824383, 41.856571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.834099, 34.865555, 42.043846>,  <32.044727, 34.890259, 42.156212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.834099, 34.865555, 42.043846>,  <31.483053, 34.824383, 41.856571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834099, 34.865555, 42.043846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412986, 0.333534, -0.847465,
		-0.243382, 0.937103, 0.250207,
		0.877614, 0.102926, 0.468187,
		32.097382, 34.896431, 42.184303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557791, 35.453552, 41.643066>,  <31.483053, 34.824383, 41.856571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557791, 35.453552, 41.643066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.893766, 35.249081, 41.715939>,  <32.095352, 35.126396, 41.759663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.893766, 35.249081, 41.715939>,  <31.557791, 35.453552, 41.643066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893766, 35.249081, 41.715939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357708, 0.269057, -0.894233,
		0.408099, 0.816271, 0.408847,
		0.839940, -0.511184, 0.182185,
		32.145748, 35.095726, 41.770596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022793, 35.802467, 41.203743>,  <31.557791, 35.453552, 41.643066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022793, 35.802467, 41.203743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.210167, 35.466309, 41.312767>,  <32.322594, 35.264614, 41.378181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.210167, 35.466309, 41.312767>,  <32.022793, 35.802467, 41.203743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210167, 35.466309, 41.312767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471472, -0.023122, -0.881578,
		0.747181, 0.541472, 0.385394,
		0.468438, -0.840401, 0.272565,
		32.350697, 35.214188, 41.394535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878929, 35.836163, 41.062729>,  <32.022793, 35.802467, 41.203743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878929, 35.836163, 41.062729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.784840, 35.447422, 41.068020>,  <32.728386, 35.214176, 41.071194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.784840, 35.447422, 41.068020>,  <32.878929, 35.836163, 41.062729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784840, 35.447422, 41.068020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628997, -0.162588, -0.760216,
		0.740968, -0.170496, 0.649536,
		-0.235221, -0.971852, 0.013231,
		32.714272, 35.155865, 41.071991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498375, 35.474957, 40.922558>,  <32.878929, 35.836163, 41.062729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498375, 35.474957, 40.922558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.227726, 35.195518, 40.829479>,  <33.065338, 35.027855, 40.773632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.227726, 35.195518, 40.829479>,  <33.498375, 35.474957, 40.922558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227726, 35.195518, 40.829479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477302, -0.175482, -0.861039,
		0.560686, -0.693661, 0.452177,
		-0.676619, -0.698598, -0.232696,
		33.024742, 34.985939, 40.759670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877300, 35.010834, 40.737129>,  <33.498375, 35.474957, 40.922558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877300, 35.010834, 40.737129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.531952, 34.885208, 40.579166>,  <33.324741, 34.809834, 40.484390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.531952, 34.885208, 40.579166>,  <33.877300, 35.010834, 40.737129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531952, 34.885208, 40.579166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478575, -0.261762, -0.838121,
		0.159848, -0.912604, 0.376300,
		-0.863374, -0.314060, -0.394907,
		33.272942, 34.790989, 40.460693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018776, 34.316532, 40.522530>,  <33.877300, 35.010834, 40.737129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018776, 34.316532, 40.522530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.706520, 34.438206, 40.304146>,  <33.519165, 34.511211, 40.173115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.706520, 34.438206, 40.304146>,  <34.018776, 34.316532, 40.522530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706520, 34.438206, 40.304146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425648, -0.380882, -0.820825,
		-0.457631, -0.873155, 0.167854,
		-0.780639, 0.304188, -0.545960,
		33.472328, 34.529461, 40.140358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839134, 33.769363, 40.142456>,  <34.018776, 34.316532, 40.522530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839134, 33.769363, 40.142456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.715202, 34.093437, 39.943417>,  <33.640842, 34.287880, 39.823994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.715202, 34.093437, 39.943417>,  <33.839134, 33.769363, 40.142456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715202, 34.093437, 39.943417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326751, -0.400744, -0.855943,
		-0.892882, -0.427789, -0.140566,
		-0.309832, 0.810186, -0.497597,
		33.622253, 34.336494, 39.794136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530899, 33.452599, 39.563118>,  <33.839134, 33.769363, 40.142456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530899, 33.452599, 39.563118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.602798, 33.832977, 39.462402>,  <33.645939, 34.061203, 39.401974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.602798, 33.832977, 39.462402>,  <33.530899, 33.452599, 39.563118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602798, 33.832977, 39.462402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242873, -0.290931, -0.925403,
		-0.953258, 0.105193, -0.283254,
		0.179753, 0.950943, -0.251784,
		33.656723, 34.118259, 39.386868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207920, 33.661377, 38.938976>,  <33.530899, 33.452599, 39.563118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207920, 33.661377, 38.938976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.516586, 33.914474, 38.964794>,  <33.701786, 34.066334, 38.980286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.516586, 33.914474, 38.964794>,  <33.207920, 33.661377, 38.938976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516586, 33.914474, 38.964794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339991, -0.324599, -0.882633,
		-0.537530, 0.703043, -0.465609,
		0.771666, 0.632744, 0.064547,
		33.748085, 34.104298, 38.984158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169182, 34.007759, 38.306980>,  <33.207920, 33.661377, 38.938976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169182, 34.007759, 38.306980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.539875, 34.095421, 38.429058>,  <33.762291, 34.148018, 38.502304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.539875, 34.095421, 38.429058>,  <33.169182, 34.007759, 38.306980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539875, 34.095421, 38.429058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365976, -0.342598, -0.865268,
		-0.085067, 0.913563, -0.397700,
		0.926728, 0.219155, 0.305198,
		33.817894, 34.161167, 38.520618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423008, 34.389339, 37.816479>,  <33.169182, 34.007759, 38.306980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423008, 34.389339, 37.816479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.737961, 34.245049, 38.016441>,  <33.926933, 34.158474, 38.136421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.737961, 34.245049, 38.016441>,  <33.423008, 34.389339, 37.816479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737961, 34.245049, 38.016441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452557, -0.212407, -0.866069,
		0.418600, 0.908162, -0.003994,
		0.787379, -0.360729, 0.499909,
		33.974174, 34.136829, 38.166412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115086, 34.656185, 37.391335>,  <33.423008, 34.389339, 37.816479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115086, 34.656185, 37.391335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.224068, 34.352272, 37.627468>,  <34.289459, 34.169926, 37.769150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.224068, 34.352272, 37.627468>,  <34.115086, 34.656185, 37.391335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224068, 34.352272, 37.627468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611359, -0.337065, -0.715980,
		0.742971, 0.555981, 0.372665,
		0.272459, -0.759784, 0.590334,
		34.305805, 34.124336, 37.804569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789883, 34.689754, 37.431835>,  <34.115086, 34.656185, 37.391335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789883, 34.689754, 37.431835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.691818, 34.310596, 37.513210>,  <34.632980, 34.083103, 37.562035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.691818, 34.310596, 37.513210>,  <34.789883, 34.689754, 37.431835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691818, 34.310596, 37.513210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635206, -0.315584, -0.704926,
		0.732399, -0.043594, 0.679479,
		-0.245163, -0.947896, 0.203442,
		34.618271, 34.026226, 37.574242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415085, 34.287045, 37.256531>,  <34.789883, 34.689754, 37.431835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415085, 34.287045, 37.256531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.111458, 34.026794, 37.265526>,  <34.929283, 33.870644, 37.270924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.111458, 34.026794, 37.265526>,  <35.415085, 34.287045, 37.256531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111458, 34.026794, 37.265526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454901, -0.554800, -0.696608,
		0.465710, -0.518539, 0.717100,
		-0.759065, -0.650627, 0.022492,
		34.883739, 33.831608, 37.272274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724953, 33.729218, 37.023392>,  <35.415085, 34.287045, 37.256531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724953, 33.729218, 37.023392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.339199, 33.634102, 36.977055>,  <35.107746, 33.577034, 36.949253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.339199, 33.634102, 36.977055>,  <35.724953, 33.729218, 37.023392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339199, 33.634102, 36.977055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251441, -0.688225, -0.680531,
		0.082096, -0.685422, 0.723504,
		-0.964384, -0.237787, -0.115843,
		35.049885, 33.562767, 36.942303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112709, 34.223747, 36.500401>,  <35.724953, 33.729218, 37.023392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112709, 34.223747, 36.500401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461868, 34.415020, 36.539177>,  <36.671364, 34.529781, 36.562443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461868, 34.415020, 36.539177>,  <36.112709, 34.223747, 36.500401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461868, 34.415020, 36.539177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012224, -0.220065, 0.975408,
		0.487753, -0.850245, -0.197939,
		0.872896, 0.478178, 0.096944,
		36.723736, 34.558472, 36.568260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568733, 33.737926, 36.842342>,  <36.112709, 34.223747, 36.500401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568733, 33.737926, 36.842342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.715481, 34.101551, 36.921349>,  <36.803532, 34.319725, 36.968750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.715481, 34.101551, 36.921349>,  <36.568733, 33.737926, 36.842342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715481, 34.101551, 36.921349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093343, -0.247218, 0.964453,
		0.925576, -0.335396, -0.175552,
		0.366873, 0.909061, 0.197512,
		36.825542, 34.374268, 36.980602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082897, 33.571362, 37.300152>,  <36.568733, 33.737926, 36.842342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082897, 33.571362, 37.300152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.004074, 33.958363, 37.363525>,  <36.956779, 34.190563, 37.401550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.004074, 33.958363, 37.363525>,  <37.082897, 33.571362, 37.300152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004074, 33.958363, 37.363525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026771, -0.156235, 0.987357,
		0.980027, 0.198804, 0.004885,
		-0.197053, 0.967506, 0.158437,
		36.944958, 34.248615, 37.411057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495720, 33.757332, 37.791248>,  <37.082897, 33.571362, 37.300152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495720, 33.757332, 37.791248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.236977, 34.062222, 37.800896>,  <37.081730, 34.245155, 37.806686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.236977, 34.062222, 37.800896>,  <37.495720, 33.757332, 37.791248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236977, 34.062222, 37.800896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131225, -0.142411, 0.981071,
		0.751235, 0.631449, 0.192143,
		-0.646859, 0.762228, 0.024122,
		37.042919, 34.290890, 37.808132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660149, 34.152309, 38.353107>,  <37.495720, 33.757332, 37.791248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660149, 34.152309, 38.353107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.275799, 34.241703, 38.287647>,  <37.045189, 34.295338, 38.248371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.275799, 34.241703, 38.287647>,  <37.660149, 34.152309, 38.353107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275799, 34.241703, 38.287647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204726, -0.175000, 0.963049,
		0.186584, 0.958870, 0.213905,
		-0.960872, 0.223481, -0.163653,
		36.987537, 34.308746, 38.238552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579575, 34.314316, 39.037285>,  <37.660149, 34.152309, 38.353107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579575, 34.314316, 39.037285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.214058, 34.319355, 38.874893>,  <36.994747, 34.322376, 38.777458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.214058, 34.319355, 38.874893>,  <37.579575, 34.314316, 39.037285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214058, 34.319355, 38.874893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406117, -0.045539, 0.912685,
		-0.006992, 0.998883, 0.046729,
		-0.913794, 0.012596, -0.405982,
		36.939919, 34.323135, 38.753098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155552, 34.910896, 39.306210>,  <37.579575, 34.314316, 39.037285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155552, 34.910896, 39.306210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.893414, 34.644382, 39.163891>,  <36.736130, 34.484474, 39.078499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.893414, 34.644382, 39.163891>,  <37.155552, 34.910896, 39.306210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893414, 34.644382, 39.163891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389552, -0.105425, 0.914951,
		-0.647128, 0.738207, -0.190464,
		-0.655344, -0.666285, -0.355793,
		36.696812, 34.444496, 39.057152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468201, 35.053680, 39.505650>,  <37.155552, 34.910896, 39.306210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468201, 35.053680, 39.505650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.443932, 34.659733, 39.440712>,  <36.429371, 34.423367, 39.401749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.443932, 34.659733, 39.440712>,  <36.468201, 35.053680, 39.505650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443932, 34.659733, 39.440712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448750, -0.118363, 0.885784,
		-0.891595, 0.126598, -0.434778,
		-0.060677, -0.984867, -0.162343,
		36.425728, 34.364273, 39.392010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818779, 35.010502, 39.695194>,  <36.468201, 35.053680, 39.505650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818779, 35.010502, 39.695194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.981796, 34.645649, 39.712727>,  <36.079605, 34.426735, 39.723248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.981796, 34.645649, 39.712727>,  <35.818779, 35.010502, 39.695194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981796, 34.645649, 39.712727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490678, -0.178245, 0.852915,
		-0.770161, -0.369104, -0.520207,
		0.407539, -0.912135, 0.043834,
		36.104057, 34.372009, 39.725876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342815, 34.585232, 40.000019>,  <35.818779, 35.010502, 39.695194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342815, 34.585232, 40.000019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.672127, 34.364468, 40.053097>,  <35.869713, 34.232010, 40.084946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.672127, 34.364468, 40.053097>,  <35.342815, 34.585232, 40.000019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672127, 34.364468, 40.053097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336832, -0.286829, 0.896813,
		-0.456895, -0.783026, -0.422040,
		0.823281, -0.551906, 0.132697,
		35.919109, 34.198895, 40.092907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187130, 34.019588, 40.360428>,  <35.342815, 34.585232, 40.000019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187130, 34.019588, 40.360428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.578934, 34.023029, 40.440922>,  <35.814014, 34.025093, 40.489216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.578934, 34.023029, 40.440922>,  <35.187130, 34.019588, 40.360428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578934, 34.023029, 40.440922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191479, -0.270160, 0.943583,
		0.062479, -0.962777, -0.262977,
		0.979506, 0.008600, 0.201231,
		35.872784, 34.025608, 40.501289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295769, 33.299911, 40.663151>,  <35.187130, 34.019588, 40.360428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295769, 33.299911, 40.663151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.591244, 33.552353, 40.757858>,  <35.768528, 33.703815, 40.814682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.591244, 33.552353, 40.757858>,  <35.295769, 33.299911, 40.663151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591244, 33.552353, 40.757858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191141, -0.140717, 0.971424,
		0.646382, -0.762832, 0.016683,
		0.738685, 0.631099, 0.236765,
		35.812851, 33.741684, 40.828888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783253, 32.877155, 41.147568>,  <35.295769, 33.299911, 40.663151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783253, 32.877155, 41.147568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.855991, 33.258373, 41.244427>,  <35.899635, 33.487106, 41.302540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.855991, 33.258373, 41.244427>,  <35.783253, 32.877155, 41.147568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855991, 33.258373, 41.244427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145999, -0.217354, 0.965112,
		0.972428, -0.210853, 0.099620,
		0.181844, 0.953047, 0.242145,
		35.910545, 33.544289, 41.317070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052658, 32.786575, 41.852123>,  <35.783253, 32.877155, 41.147568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052658, 32.786575, 41.852123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.954140, 33.170914, 41.801342>,  <35.895027, 33.401516, 41.770874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.954140, 33.170914, 41.801342>,  <36.052658, 32.786575, 41.852123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954140, 33.170914, 41.801342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143019, 0.093526, 0.985291,
		0.958584, 0.260830, 0.114384,
		-0.246296, 0.960844, -0.126956,
		35.880253, 33.459167, 41.763256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312771, 33.110607, 42.412331>,  <36.052658, 32.786575, 41.852123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312771, 33.110607, 42.412331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.032085, 33.371822, 42.298393>,  <35.863674, 33.528553, 42.230030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.032085, 33.371822, 42.298393>,  <36.312771, 33.110607, 42.412331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032085, 33.371822, 42.298393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215216, 0.186840, 0.958526,
		0.679175, 0.733915, 0.009436,
		-0.701714, 0.653038, -0.284847,
		35.821571, 33.567734, 42.212940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401218, 33.730976, 42.873962>,  <36.312771, 33.110607, 42.412331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401218, 33.730976, 42.873962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.029339, 33.757591, 42.729053>,  <35.806213, 33.773560, 42.642109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.029339, 33.757591, 42.729053>,  <36.401218, 33.730976, 42.873962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029339, 33.757591, 42.729053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314634, 0.367892, 0.875020,
		0.191500, 0.927484, -0.321092,
		-0.929695, 0.066540, -0.362270,
		35.750431, 33.777554, 42.620373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103413, 34.390095, 43.047695>,  <36.401218, 33.730976, 42.873962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103413, 34.390095, 43.047695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.793022, 34.152367, 42.963177>,  <35.606789, 34.009727, 42.912468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.793022, 34.152367, 42.963177>,  <36.103413, 34.390095, 43.047695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793022, 34.152367, 42.963177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389114, 0.187393, 0.901928,
		-0.496442, 0.782089, -0.376672,
		-0.775974, -0.594323, -0.211292,
		35.560230, 33.974068, 42.899788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584824, 34.827538, 43.206676>,  <36.103413, 34.390095, 43.047695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584824, 34.827538, 43.206676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.409309, 34.468739, 43.185284>,  <35.304001, 34.253460, 43.172447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.409309, 34.468739, 43.185284>,  <35.584824, 34.827538, 43.206676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409309, 34.468739, 43.185284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652258, 0.276992, 0.705574,
		-0.618084, 0.344481, -0.706615,
		-0.438784, -0.896999, -0.053486,
		35.277676, 34.199638, 43.169239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.640347, 34.814186, 43.346012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.779518, 34.443306, 43.401501>,  <34.863022, 34.220779, 43.434792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.779518, 34.443306, 43.401501>,  <34.640347, 34.814186, 43.346012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779518, 34.443306, 43.401501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557096, -0.085467, 0.826038,
		-0.754047, -0.364686, -0.546276,
		0.347933, -0.927200, 0.138719,
		34.883900, 34.165146, 43.443115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999058, 34.298843, 43.339684>,  <34.640347, 34.814186, 43.346012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999058, 34.298843, 43.339684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.320580, 34.169579, 43.539471>,  <34.513493, 34.092018, 43.659344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.320580, 34.169579, 43.539471>,  <33.999058, 34.298843, 43.339684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320580, 34.169579, 43.539471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530038, -0.007842, 0.847937,
		-0.270103, -0.946312, -0.177591,
		0.803806, -0.323160, 0.499463,
		34.561722, 34.072632, 43.689308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741901, 33.744625, 43.759312>,  <33.999058, 34.298843, 43.339684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741901, 33.744625, 43.759312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.094429, 33.821400, 43.932030>,  <34.305946, 33.867462, 44.035660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.094429, 33.821400, 43.932030>,  <33.741901, 33.744625, 43.759312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094429, 33.821400, 43.932030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442803, 0.016479, 0.896467,
		0.164949, -0.981269, 0.099514,
		0.881315, 0.191936, 0.431791,
		34.358822, 33.878979, 44.061565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822815, 33.318565, 44.301155>,  <33.741901, 33.744625, 43.759312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822815, 33.318565, 44.301155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.077080, 33.605152, 44.416119>,  <34.229637, 33.777103, 44.485096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.077080, 33.605152, 44.416119>,  <33.822815, 33.318565, 44.301155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077080, 33.605152, 44.416119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470771, 0.064709, 0.879879,
		0.611809, -0.694611, 0.378426,
		0.635661, 0.716470, 0.287413,
		34.267776, 33.820091, 44.502342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862938, 33.237720, 45.082928>,  <33.822815, 33.318565, 44.301155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862938, 33.237720, 45.082928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.021790, 33.599384, 45.019947>,  <34.117100, 33.816383, 44.982159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.021790, 33.599384, 45.019947>,  <33.862938, 33.237720, 45.082928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021790, 33.599384, 45.019947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160006, 0.237138, 0.958208,
		0.903709, -0.355336, 0.238845,
		0.397125, 0.904158, -0.157448,
		34.140926, 33.870632, 44.972713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408772, 33.314209, 45.702370>,  <33.862938, 33.237720, 45.082928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408772, 33.314209, 45.702370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.326492, 33.667587, 45.533985>,  <34.277122, 33.879616, 45.432957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.326492, 33.667587, 45.533985>,  <34.408772, 33.314209, 45.702370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326492, 33.667587, 45.533985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139049, 0.399408, 0.906167,
		0.968686, 0.244934, 0.040683,
		-0.205702, 0.883448, -0.420959,
		34.264782, 33.932621, 45.407696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756210, 33.874058, 46.121281>,  <34.408772, 33.314209, 45.702370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756210, 33.874058, 46.121281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.436703, 34.026459, 45.935028>,  <34.244999, 34.117901, 45.823277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.436703, 34.026459, 45.935028>,  <34.756210, 33.874058, 46.121281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436703, 34.026459, 45.935028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224368, 0.529459, 0.818127,
		0.558242, 0.757963, -0.337427,
		-0.798764, 0.381005, -0.465629,
		34.197075, 34.140759, 45.795338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748947, 34.552868, 46.224110>,  <34.756210, 33.874058, 46.121281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748947, 34.552868, 46.224110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.369663, 34.462406, 46.134899>,  <34.142094, 34.408127, 46.081371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.369663, 34.462406, 46.134899>,  <34.748947, 34.552868, 46.224110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369663, 34.462406, 46.134899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305563, 0.457777, 0.834908,
		-0.086724, 0.859821, -0.503177,
		-0.948214, -0.226159, -0.223029,
		34.085197, 34.394558, 46.067989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417995, 35.203953, 46.285114>,  <34.748947, 34.552868, 46.224110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417995, 35.203953, 46.285114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140694, 34.917465, 46.317169>,  <33.974312, 34.745571, 46.336403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140694, 34.917465, 46.317169>,  <34.417995, 35.203953, 46.285114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140694, 34.917465, 46.317169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333311, 0.417225, 0.845475,
		-0.638983, 0.559419, -0.527968,
		-0.693256, -0.716222, 0.080139,
		33.932716, 34.702599, 46.341209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076160, 35.455948, 46.778500>,  <34.417995, 35.203953, 46.285114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076160, 35.455948, 46.778500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.935379, 35.082073, 46.798435>,  <33.850910, 34.857746, 46.810398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.935379, 35.082073, 46.798435>,  <34.076160, 35.455948, 46.778500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935379, 35.082073, 46.798435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177452, 0.118914, 0.976919,
		-0.919044, 0.334983, -0.207714,
		-0.351951, -0.934690, 0.049844,
		33.829792, 34.801666, 46.813389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581055, 35.480297, 47.287632>,  <34.076160, 35.455948, 46.778500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581055, 35.480297, 47.287632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.652218, 35.087997, 47.255447>,  <33.694916, 34.852615, 47.236137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.652218, 35.087997, 47.255447>,  <33.581055, 35.480297, 47.287632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652218, 35.087997, 47.255447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083498, -0.096520, 0.991822,
		-0.980498, -0.169734, -0.099063,
		0.177908, -0.980752, -0.080466,
		33.705589, 34.793774, 47.231308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066734, 35.106564, 47.774441>,  <33.581055, 35.480297, 47.287632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066734, 35.106564, 47.774441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.355595, 34.842243, 47.692623>,  <33.528912, 34.683651, 47.643532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.355595, 34.842243, 47.692623>,  <33.066734, 35.106564, 47.774441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355595, 34.842243, 47.692623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061001, -0.355382, 0.932728,
		-0.689043, -0.661091, -0.296948,
		0.722148, -0.660804, -0.204547,
		33.572239, 34.644001, 47.631260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824017, 34.493858, 47.978714>,  <33.066734, 35.106564, 47.774441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824017, 34.493858, 47.978714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.222641, 34.463810, 47.992702>,  <33.461815, 34.445782, 48.001095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.222641, 34.463810, 47.992702>,  <32.824017, 34.493858, 47.978714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222641, 34.463810, 47.992702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060057, -0.364098, 0.929422,
		-0.057084, -0.928327, -0.367358,
		0.996562, -0.075118, 0.034968,
		33.521610, 34.441277, 48.003193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815544, 33.804417, 48.354382>,  <32.824017, 34.493858, 47.978714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815544, 33.804417, 48.354382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.173508, 33.981598, 48.376060>,  <33.388287, 34.087906, 48.389069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.173508, 33.981598, 48.376060>,  <32.815544, 33.804417, 48.354382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173508, 33.981598, 48.376060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135109, -0.384697, 0.913101,
		0.425308, -0.809817, -0.404115,
		0.894907, 0.442949, 0.054201,
		33.441978, 34.114483, 48.392323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372940, 33.257938, 48.550499>,  <32.815544, 33.804417, 48.354382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372940, 33.257938, 48.550499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.507843, 33.625237, 48.633526>,  <33.588787, 33.845615, 48.683342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.507843, 33.625237, 48.633526>,  <33.372940, 33.257938, 48.550499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507843, 33.625237, 48.633526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401424, -0.339704, 0.850564,
		0.851536, -0.203540, -0.483174,
		0.337260, 0.918245, 0.207564,
		33.609020, 33.900711, 48.695797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010017, 33.160439, 48.820656>,  <33.372940, 33.257938, 48.550499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010017, 33.160439, 48.820656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.915852, 33.522804, 48.961452>,  <33.859352, 33.740223, 49.045933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.915852, 33.522804, 48.961452>,  <34.010017, 33.160439, 48.820656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915852, 33.522804, 48.961452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360830, -0.254821, 0.897144,
		0.902431, 0.338211, -0.266892,
		-0.235415, 0.905914, 0.351995,
		33.845226, 33.794579, 49.067051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649376, 33.378895, 49.159286>,  <34.010017, 33.160439, 48.820656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649376, 33.378895, 49.159286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.331924, 33.576313, 49.301594>,  <34.141453, 33.694763, 49.386978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.331924, 33.576313, 49.301594>,  <34.649376, 33.378895, 49.159286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331924, 33.576313, 49.301594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295897, -0.197823, 0.934511,
		0.531601, 0.846924, 0.010960,
		-0.793628, 0.493544, 0.355765,
		34.093838, 33.724377, 49.408325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893551, 33.681076, 49.753254>,  <34.649376, 33.378895, 49.159286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893551, 33.681076, 49.753254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.495823, 33.702896, 49.789803>,  <34.257187, 33.715988, 49.811733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.495823, 33.702896, 49.789803>,  <34.893551, 33.681076, 49.753254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495823, 33.702896, 49.789803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091194, -0.005805, 0.995816,
		0.054854, 0.998494, 0.000798,
		-0.994321, 0.054551, 0.091375,
		34.197525, 33.719261, 49.817215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785248, 34.191658, 50.267937>,  <34.893551, 33.681076, 49.753254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785248, 34.191658, 50.267937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.461658, 33.956573, 50.272896>,  <34.267506, 33.815525, 50.275871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.461658, 33.956573, 50.272896>,  <34.785248, 34.191658, 50.267937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461658, 33.956573, 50.272896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023772, -0.011639, 0.999650,
		-0.587358, 0.808989, 0.023387,
		-0.808978, -0.587709, 0.012395,
		34.218964, 33.780262, 50.276615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446045, 34.358932, 50.868404>,  <34.785248, 34.191658, 50.267937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446045, 34.358932, 50.868404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.284637, 34.007153, 50.767410>,  <34.187794, 33.796085, 50.706814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.284637, 34.007153, 50.767410>,  <34.446045, 34.358932, 50.868404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284637, 34.007153, 50.767410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035500, -0.260690, 0.964770,
		-0.914284, 0.398262, 0.073971,
		-0.403515, -0.879448, -0.252483,
		34.163582, 33.743317, 50.691666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946007, 34.303520, 51.273331>,  <34.446045, 34.358932, 50.868404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946007, 34.303520, 51.273331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.045715, 33.929173, 51.173721>,  <34.105541, 33.704563, 51.113956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.045715, 33.929173, 51.173721>,  <33.946007, 34.303520, 51.273331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045715, 33.929173, 51.173721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081124, -0.276419, 0.957607,
		-0.965029, -0.218504, -0.144826,
		0.249274, -0.935868, -0.249026,
		34.120499, 33.648411, 51.099014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502533, 33.863304, 51.588528>,  <33.946007, 34.303520, 51.273331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502533, 33.863304, 51.588528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.824322, 33.636032, 51.519249>,  <34.017395, 33.499668, 51.477680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.824322, 33.636032, 51.519249>,  <33.502533, 33.863304, 51.588528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824322, 33.636032, 51.519249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007289, -0.301008, 0.953594,
		-0.593947, -0.765876, -0.246293,
		0.804471, -0.568180, -0.173201,
		34.065662, 33.465580, 51.467289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437832, 33.247444, 51.796017>,  <33.502533, 33.863304, 51.588528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437832, 33.247444, 51.796017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.833054, 33.270229, 51.853291>,  <34.070187, 33.283901, 51.887657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.833054, 33.270229, 51.853291>,  <33.437832, 33.247444, 51.796017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833054, 33.270229, 51.853291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117241, -0.325174, 0.938358,
		0.100011, -0.943937, -0.314612,
		0.988055, 0.056960, 0.143189,
		34.129471, 33.287319, 51.896248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876408, 32.962543, 52.001987>,  <33.437832, 33.247444, 51.796017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876408, 32.962543, 52.001987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.629719, 33.161945, 51.758301>,  <32.481705, 33.281586, 51.612087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.629719, 33.161945, 51.758301>,  <32.876408, 32.962543, 52.001987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629719, 33.161945, 51.758301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708008, -0.689542, 0.152502,
		-0.344060, 0.525384, 0.778199,
		-0.616723, 0.498501, -0.609220,
		32.444702, 33.311497, 51.575535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336060, 32.612843, 52.043003>,  <32.876408, 32.962543, 52.001987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336060, 32.612843, 52.043003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.951468, 32.670406, 52.136681>,  <31.720713, 32.704945, 52.192886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.951468, 32.670406, 52.136681>,  <32.336060, 32.612843, 52.043003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951468, 32.670406, 52.136681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237791, -0.008111, -0.971282,
		-0.137879, -0.989557, 0.042020,
		-0.961480, 0.143912, 0.234190,
		31.663023, 32.713577, 52.206936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021782, 32.226543, 51.584183>,  <32.336060, 32.612843, 52.043003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021782, 32.226543, 51.584183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.752581, 32.495365, 51.707745>,  <31.591061, 32.656658, 51.781879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.752581, 32.495365, 51.707745>,  <32.021782, 32.226543, 51.584183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752581, 32.495365, 51.707745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261750, 0.174209, -0.949283,
		-0.691780, -0.719721, 0.058667,
		-0.672998, 0.672051, 0.308901,
		31.550680, 32.696980, 51.800415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471716, 32.042542, 51.087292>,  <32.021782, 32.226543, 51.584183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471716, 32.042542, 51.087292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.302595, 32.371670, 51.239189>,  <31.201122, 32.569145, 51.330326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.302595, 32.371670, 51.239189>,  <31.471716, 32.042542, 51.087292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302595, 32.371670, 51.239189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551983, 0.098509, -0.828016,
		-0.718716, -0.559700, 0.412532,
		-0.422803, 0.822819, 0.379745,
		31.175755, 32.618515, 51.353111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761784, 32.000027, 50.982216>,  <31.471716, 32.042542, 51.087292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761784, 32.000027, 50.982216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.847738, 32.388718, 51.021339>,  <30.899311, 32.621933, 51.044815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.847738, 32.388718, 51.021339>,  <30.761784, 32.000027, 50.982216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847738, 32.388718, 51.021339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457713, 0.188671, -0.868851,
		-0.862741, 0.141937, 0.485316,
		0.214887, 0.971729, 0.097808,
		30.912205, 32.680237, 51.050682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141394, 32.298180, 50.774296>,  <30.761784, 32.000027, 50.982216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141394, 32.298180, 50.774296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.431545, 32.568855, 50.723824>,  <30.605637, 32.731262, 50.693542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.431545, 32.568855, 50.723824>,  <30.141394, 32.298180, 50.774296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431545, 32.568855, 50.723824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290006, 0.134185, -0.947571,
		-0.624279, 0.723939, 0.293578,
		0.725378, 0.676688, -0.126178,
		30.649158, 32.771862, 50.685970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836582, 32.723740, 50.383244>,  <30.141394, 32.298180, 50.774296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.836582, 32.723740, 50.383244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.213717, 32.846996, 50.332481>,  <30.439997, 32.920952, 50.302025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.213717, 32.846996, 50.332481>,  <29.836582, 32.723740, 50.383244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213717, 32.846996, 50.332481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191317, 0.188693, -0.963220,
		-0.272866, 0.932439, 0.236860,
		0.942837, 0.308145, -0.126904,
		30.496567, 32.939442, 50.294411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842340, 33.380222, 50.157970>,  <29.836582, 32.723740, 50.383244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842340, 33.380222, 50.157970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.168495, 33.179886, 50.041832>,  <30.364189, 33.059685, 49.972149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.168495, 33.179886, 50.041832>,  <29.842340, 33.380222, 50.157970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168495, 33.179886, 50.041832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088760, 0.387446, -0.917610,
		0.572069, 0.773980, 0.271464,
		0.815389, -0.500841, -0.290344,
		30.413113, 33.029633, 49.954727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044584, 33.820885, 49.692520>,  <29.842340, 33.380222, 50.157970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044584, 33.820885, 49.692520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.272108, 33.498894, 49.625034>,  <30.408623, 33.305698, 49.584541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.272108, 33.498894, 49.625034>,  <30.044584, 33.820885, 49.692520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272108, 33.498894, 49.625034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056662, 0.242997, -0.968371,
		0.820516, 0.541258, 0.183831,
		0.568809, -0.804980, -0.168714,
		30.442751, 33.257401, 49.574421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610491, 33.988365, 49.264748>,  <30.044584, 33.820885, 49.692520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610491, 33.988365, 49.264748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.609854, 33.590225, 49.226212>,  <30.609472, 33.351341, 49.203091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.609854, 33.590225, 49.226212>,  <30.610491, 33.988365, 49.264748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609854, 33.590225, 49.226212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258898, 0.092646, -0.961451,
		0.965903, -0.026473, 0.257546,
		-0.001592, -0.995347, -0.096341,
		30.609377, 33.291622, 49.197308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237438, 33.814121, 48.860722>,  <30.610491, 33.988365, 49.264748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237438, 33.814121, 48.860722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.009552, 33.487881, 48.820301>,  <30.872820, 33.292137, 48.796047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.009552, 33.487881, 48.820301>,  <31.237438, 33.814121, 48.860722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009552, 33.487881, 48.820301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190183, -0.011213, -0.981685,
		0.799535, -0.578499, 0.161503,
		-0.569714, -0.815606, -0.101055,
		30.838638, 33.243198, 48.789986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679911, 33.305939, 48.556602>,  <31.237438, 33.814121, 48.860722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679911, 33.305939, 48.556602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.301321, 33.206539, 48.474205>,  <31.074167, 33.146900, 48.424767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.301321, 33.206539, 48.474205>,  <31.679911, 33.305939, 48.556602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301321, 33.206539, 48.474205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179984, 0.123448, -0.975893,
		0.267937, -0.960734, -0.072114,
		-0.946475, -0.248498, -0.205993,
		31.017378, 33.131989, 48.412407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781448, 32.740158, 48.217968>,  <31.679911, 33.305939, 48.556602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781448, 32.740158, 48.217968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.424219, 32.891853, 48.121140>,  <31.209881, 32.982872, 48.063042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.424219, 32.891853, 48.121140>,  <31.781448, 32.740158, 48.217968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424219, 32.891853, 48.121140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237968, -0.058460, -0.969512,
		-0.381827, -0.923451, -0.038038,
		-0.893073, 0.379238, -0.242073,
		31.156298, 33.005623, 48.048519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573208, 32.382389, 47.526615>,  <31.781448, 32.740158, 48.217968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573208, 32.382389, 47.526615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.339483, 32.705887, 47.553478>,  <31.199249, 32.899986, 47.569595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.339483, 32.705887, 47.553478>,  <31.573208, 32.382389, 47.526615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339483, 32.705887, 47.553478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083732, 0.142392, -0.986262,
		-0.807200, -0.570659, -0.150919,
		-0.584309, 0.808747, 0.067156,
		31.164190, 32.948509, 47.573624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230455, 32.421131, 46.928391>,  <31.573208, 32.382389, 47.526615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230455, 32.421131, 46.928391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.181776, 32.807575, 47.019451>,  <31.152569, 33.039440, 47.074089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.181776, 32.807575, 47.019451>,  <31.230455, 32.421131, 46.928391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181776, 32.807575, 47.019451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216311, 0.249659, -0.943864,
		-0.968710, -0.065624, -0.239363,
		-0.121699, 0.966108, 0.227652,
		31.145266, 33.097408, 47.087746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778969, 32.675838, 46.402924>,  <31.230455, 32.421131, 46.928391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778969, 32.675838, 46.402924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.986332, 32.971153, 46.575520>,  <31.110750, 33.148342, 46.679077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.986332, 32.971153, 46.575520>,  <30.778969, 32.675838, 46.402924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986332, 32.971153, 46.575520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007809, 0.508659, -0.860933,
		-0.855097, 0.442945, 0.269458,
		0.518409, 0.738286, 0.431494,
		31.141855, 33.192638, 46.704967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492197, 33.246883, 46.094875>,  <30.778969, 32.675838, 46.402924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492197, 33.246883, 46.094875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.854479, 33.364208, 46.217293>,  <31.071848, 33.434605, 46.290745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.854479, 33.364208, 46.217293>,  <30.492197, 33.246883, 46.094875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854479, 33.364208, 46.217293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055600, 0.633530, -0.771718,
		-0.420244, 0.715966, 0.557484,
		0.905706, 0.293314, 0.306044,
		31.126190, 33.452202, 46.309105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434359, 34.018066, 46.084965>,  <30.492197, 33.246883, 46.094875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434359, 34.018066, 46.084965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.814959, 33.898529, 46.055744>,  <31.043318, 33.826805, 46.038212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.814959, 33.898529, 46.055744>,  <30.434359, 34.018066, 46.084965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814959, 33.898529, 46.055744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136359, 0.622532, -0.770623,
		0.275777, 0.723286, 0.633091,
		0.951500, -0.298848, -0.073053,
		31.100409, 33.808876, 46.033829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740522, 34.619366, 45.906898>,  <30.434359, 34.018066, 46.084965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740522, 34.619366, 45.906898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.037600, 34.366207, 45.819401>,  <31.215845, 34.214314, 45.766903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.037600, 34.366207, 45.819401>,  <30.740522, 34.619366, 45.906898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037600, 34.366207, 45.819401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243472, 0.559532, -0.792241,
		0.623803, 0.535132, 0.569653,
		0.742692, -0.632896, -0.218748,
		31.260406, 34.176338, 45.753777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115860, 34.962337, 45.463768>,  <30.740522, 34.619366, 45.906898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115860, 34.962337, 45.463768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.280962, 34.603722, 45.399456>,  <31.380022, 34.388554, 45.360870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.280962, 34.603722, 45.399456>,  <31.115860, 34.962337, 45.463768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280962, 34.603722, 45.399456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339480, 0.315217, -0.886223,
		0.845215, 0.311211, 0.434464,
		0.412753, -0.896541, -0.160776,
		31.404787, 34.334759, 45.351223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766050, 35.129028, 45.224270>,  <31.115860, 34.962337, 45.463768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766050, 35.129028, 45.224270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.680073, 34.760609, 45.094368>,  <31.628487, 34.539558, 45.016426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.680073, 34.760609, 45.094368>,  <31.766050, 35.129028, 45.224270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680073, 34.760609, 45.094368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374810, 0.229270, -0.898306,
		0.901841, -0.314809, 0.295937,
		-0.214945, -0.921048, -0.324759,
		31.615589, 34.484295, 44.996941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.545670, 38.186485, 41.347050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.416489, 38.526150, 41.179897>,  <44.338978, 38.729950, 41.079605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.416489, 38.526150, 41.179897>,  <44.545670, 38.186485, 41.347050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.416489, 38.526150, 41.179897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636852, -0.521609, -0.567754,
		-0.700085, 0.082770, 0.709246,
		-0.322956, 0.849160, -0.417883,
		44.319603, 38.780899, 41.054531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871696, 38.160892, 41.411606>,  <44.545670, 38.186485, 41.347050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871696, 38.160892, 41.411606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.951393, 38.412575, 41.111099>,  <43.999210, 38.563583, 40.930794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.951393, 38.412575, 41.111099>,  <43.871696, 38.160892, 41.411606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.951393, 38.412575, 41.111099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598464, -0.528941, -0.601716,
		-0.775980, 0.569493, 0.271171,
		0.199240, 0.629206, -0.751268,
		44.011166, 38.601337, 40.885719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244354, 38.351719, 41.064678>,  <43.871696, 38.160892, 41.411606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244354, 38.351719, 41.064678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.496494, 38.420105, 40.761776>,  <43.647778, 38.461136, 40.580036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.496494, 38.420105, 40.761776>,  <43.244354, 38.351719, 41.064678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496494, 38.420105, 40.761776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609721, -0.494754, -0.619240,
		-0.480520, 0.852051, -0.207629,
		0.630350, 0.170961, -0.757252,
		43.685600, 38.471394, 40.534599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789959, 38.499516, 40.402637>,  <43.244354, 38.351719, 41.064678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789959, 38.499516, 40.402637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.159168, 38.390167, 40.294346>,  <43.380695, 38.324558, 40.229370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.159168, 38.390167, 40.294346>,  <42.789959, 38.499516, 40.402637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159168, 38.390167, 40.294346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384488, -0.629709, -0.675008,
		0.014048, 0.727141, -0.686344,
		0.923023, -0.273373, -0.270731,
		43.436073, 38.308155, 40.213127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788795, 38.592319, 39.632633>,  <42.789959, 38.499516, 40.402637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788795, 38.592319, 39.632633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.126247, 38.388321, 39.699799>,  <43.328720, 38.265923, 39.740097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.126247, 38.388321, 39.699799>,  <42.788795, 38.592319, 39.632633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126247, 38.388321, 39.699799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220682, -0.614445, -0.757467,
		0.489479, 0.601966, -0.630910,
		0.843629, -0.509995, 0.167914,
		43.379337, 38.235321, 39.750172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.271809, 38.595196, 39.032902>,  <42.788795, 38.592319, 39.632633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.271809, 38.595196, 39.032902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.373169, 38.274166, 39.248928>,  <43.433987, 38.081551, 39.378544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.373169, 38.274166, 39.248928>,  <43.271809, 38.595196, 39.032902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373169, 38.274166, 39.248928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170223, -0.586568, -0.791810,
		0.952266, 0.108718, -0.285255,
		0.253405, -0.802570, 0.540062,
		43.449192, 38.033394, 39.410946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626842, 38.252190, 38.544807>,  <43.271809, 38.595196, 39.032902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626842, 38.252190, 38.544807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.525841, 37.971359, 38.811138>,  <43.465240, 37.802860, 38.970936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.525841, 37.971359, 38.811138>,  <43.626842, 38.252190, 38.544807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.525841, 37.971359, 38.811138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144186, -0.653139, -0.743384,
		0.956792, -0.283712, 0.063692,
		-0.252507, -0.702080, 0.665825,
		43.450089, 37.760735, 39.010887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943958, 37.625553, 38.343761>,  <43.626842, 38.252190, 38.544807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.943958, 37.625553, 38.343761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.625340, 37.523121, 38.562828>,  <43.434170, 37.461662, 38.694267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.625340, 37.523121, 38.562828>,  <43.943958, 37.625553, 38.343761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.625340, 37.523121, 38.562828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325427, -0.581830, -0.745366,
		0.509521, -0.771944, 0.380120,
		-0.796546, -0.256078, 0.547666,
		43.386375, 37.446297, 38.727127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.054516, 36.850246, 38.508904>,  <43.943958, 37.625553, 38.343761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.054516, 36.850246, 38.508904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.673885, 36.966610, 38.548649>,  <43.445507, 37.036427, 38.572495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.673885, 36.966610, 38.548649>,  <44.054516, 36.850246, 38.508904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.673885, 36.966610, 38.548649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275080, -0.661515, -0.697660,
		-0.137225, -0.691210, 0.709505,
		-0.951578, 0.290907, 0.099362,
		43.388412, 37.053883, 38.578457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.834492, 36.286018, 38.602798>,  <44.054516, 36.850246, 38.508904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.834492, 36.286018, 38.602798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.510895, 36.500813, 38.507145>,  <43.316738, 36.629688, 38.449753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.510895, 36.500813, 38.507145>,  <43.834492, 36.286018, 38.602798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510895, 36.500813, 38.507145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271897, -0.702512, -0.657684,
		-0.521160, -0.467040, 0.714329,
		-0.808990, 0.536983, -0.239134,
		43.268196, 36.661907, 38.435406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.336376, 35.823772, 38.475727>,  <43.834492, 36.286018, 38.602798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.336376, 35.823772, 38.475727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.165619, 36.149097, 38.317593>,  <43.063164, 36.344292, 38.222713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.165619, 36.149097, 38.317593>,  <43.336376, 35.823772, 38.475727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.165619, 36.149097, 38.317593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298259, -0.539338, -0.787500,
		-0.853702, -0.218262, 0.472815,
		-0.426889, 0.813312, -0.395335,
		43.037552, 36.393089, 38.198994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613232, 35.725983, 38.320122>,  <43.336376, 35.823772, 38.475727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613232, 35.725983, 38.320122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.714813, 36.028206, 38.078583>,  <42.775761, 36.209541, 37.933659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.714813, 36.028206, 38.078583>,  <42.613232, 35.725983, 38.320122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714813, 36.028206, 38.078583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196937, -0.570848, -0.797087,
		-0.946955, 0.321343, 0.003829,
		0.253953, 0.755560, -0.603852,
		42.791000, 36.254875, 37.897427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123215, 35.734039, 37.751240>,  <42.613232, 35.725983, 38.320122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123215, 35.734039, 37.751240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.422321, 35.959995, 37.611671>,  <42.601784, 36.095570, 37.527931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.422321, 35.959995, 37.611671>,  <42.123215, 35.734039, 37.751240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422321, 35.959995, 37.611671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096384, -0.427595, -0.898817,
		-0.656931, 0.705734, -0.265294,
		0.747764, 0.564891, -0.348922,
		42.646652, 36.129463, 37.506996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860065, 36.013294, 37.131390>,  <42.123215, 35.734039, 37.751240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860065, 36.013294, 37.131390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.259979, 36.017456, 37.124222>,  <42.499928, 36.019955, 37.119919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.259979, 36.017456, 37.124222>,  <41.860065, 36.013294, 37.131390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259979, 36.017456, 37.124222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010441, -0.494158, -0.869309,
		-0.017904, 0.869310, -0.493943,
		0.999785, 0.010406, -0.017924,
		42.559914, 36.020576, 37.118843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004692, 35.993904, 36.498104>,  <41.860065, 36.013294, 37.131390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004692, 35.993904, 36.498104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.373867, 35.927639, 36.637093>,  <42.595375, 35.887882, 36.720486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.373867, 35.927639, 36.637093>,  <42.004692, 35.993904, 36.498104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373867, 35.927639, 36.637093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222382, -0.507330, -0.832564,
		0.314204, 0.845679, -0.431396,
		0.922942, -0.165660, 0.347469,
		42.650749, 35.877941, 36.741333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495945, 36.221172, 35.958221>,  <42.004692, 35.993904, 36.498104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495945, 36.221172, 35.958221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.654911, 35.954918, 36.210880>,  <42.750290, 35.795166, 36.362476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.654911, 35.954918, 36.210880>,  <42.495945, 36.221172, 35.958221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654911, 35.954918, 36.210880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131280, -0.640021, -0.757059,
		0.908198, 0.383792, -0.166971,
		0.397418, -0.665640, 0.631650,
		42.774136, 35.755226, 36.400375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079201, 35.944248, 35.630402>,  <42.495945, 36.221172, 35.958221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079201, 35.944248, 35.630402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.981922, 35.659019, 35.893425>,  <42.923557, 35.487881, 36.051239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.981922, 35.659019, 35.893425>,  <43.079201, 35.944248, 35.630402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.981922, 35.659019, 35.893425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200926, -0.700241, -0.685049,
		0.948940, -0.034478, 0.313568,
		-0.243192, -0.713074, 0.657559,
		42.908966, 35.445099, 36.090694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.582924, 35.515438, 35.562157>,  <43.079201, 35.944248, 35.630402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.582924, 35.515438, 35.562157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.333408, 35.283768, 35.772083>,  <43.183697, 35.144764, 35.898041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.333408, 35.283768, 35.772083>,  <43.582924, 35.515438, 35.562157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333408, 35.283768, 35.772083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285300, -0.793875, -0.536997,
		0.727659, -0.185244, 0.660453,
		-0.623792, -0.579178, 0.524820,
		43.146271, 35.110016, 35.929531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.886971, 34.874599, 35.730843>,  <43.582924, 35.515438, 35.562157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.886971, 34.874599, 35.730843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.501865, 34.769253, 35.755222>,  <43.270802, 34.706043, 35.769852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.501865, 34.769253, 35.755222>,  <43.886971, 34.874599, 35.730843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501865, 34.769253, 35.755222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174180, -0.776786, -0.605199,
		0.206738, -0.572049, 0.793738,
		-0.962767, -0.263371, 0.060952,
		43.213036, 34.690243, 35.773506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887691, 34.076748, 35.766712>,  <43.886971, 34.874599, 35.730843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.887691, 34.076748, 35.766712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.518578, 34.188919, 35.661007>,  <43.297112, 34.256222, 35.597584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.518578, 34.188919, 35.661007>,  <43.887691, 34.076748, 35.766712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518578, 34.188919, 35.661007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035003, -0.743987, -0.667277,
		-0.383729, -0.606501, 0.696354,
		-0.922782, 0.280428, -0.264260,
		43.241741, 34.273048, 35.581730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665474, 34.245419, 35.057510>,  <43.887691, 34.076748, 35.766712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665474, 34.245419, 35.057510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.508686, 33.887779, 34.970840>,  <43.414612, 33.673195, 34.918839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.508686, 33.887779, 34.970840>,  <43.665474, 34.245419, 35.057510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.508686, 33.887779, 34.970840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470511, 0.397222, -0.787930,
		0.790555, -0.206897, -0.576382,
		-0.391972, -0.894096, -0.216679,
		43.391094, 33.619549, 34.905838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344685, 34.451916, 34.822430>,  <43.665474, 34.245419, 35.057510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344685, 34.451916, 34.822430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.724072, 34.410408, 34.702667>,  <44.951702, 34.385506, 34.630810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.724072, 34.410408, 34.702667>,  <44.344685, 34.451916, 34.822430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.724072, 34.410408, 34.702667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291290, -0.086427, 0.952723,
		-0.124742, -0.990839, -0.051746,
		0.948467, -0.103771, -0.299403,
		45.008614, 34.379280, 34.612846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.615101, 33.820038, 35.182415>,  <44.344685, 34.451916, 34.822430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.615101, 33.820038, 35.182415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.934429, 34.033001, 35.069820>,  <45.126026, 34.160778, 35.002262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.934429, 34.033001, 35.069820>,  <44.615101, 33.820038, 35.182415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.934429, 34.033001, 35.069820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377183, -0.077631, 0.922880,
		0.469494, -0.842922, -0.262788,
		0.798316, 0.532406, -0.281488,
		45.173923, 34.192722, 34.985374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.258022, 33.468113, 35.394558>,  <44.615101, 33.820038, 35.182415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.258022, 33.468113, 35.394558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.368816, 33.849037, 35.343361>,  <45.435291, 34.077591, 35.312641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.368816, 33.849037, 35.343361>,  <45.258022, 33.468113, 35.394558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.368816, 33.849037, 35.343361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466991, -0.016999, 0.884099,
		0.839761, -0.304657, -0.449429,
		0.276986, 0.952311, -0.127997,
		45.451912, 34.134731, 35.304962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.869152, 33.599960, 35.798832>,  <45.258022, 33.468113, 35.394558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.869152, 33.599960, 35.798832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.716961, 33.961617, 35.721088>,  <45.625648, 34.178608, 35.674442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.716961, 33.961617, 35.721088>,  <45.869152, 33.599960, 35.798832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.716961, 33.961617, 35.721088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387864, 0.346801, 0.853985,
		0.839524, 0.249534, -0.482631,
		-0.380475, 0.904136, -0.194362,
		45.602818, 34.232857, 35.662781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.297859, 34.083946, 36.221554>,  <45.869152, 33.599960, 35.798832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.297859, 34.083946, 36.221554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.000465, 34.339890, 36.143784>,  <45.822029, 34.493458, 36.097122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.000465, 34.339890, 36.143784>,  <46.297859, 34.083946, 36.221554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.000465, 34.339890, 36.143784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215696, 0.504637, 0.835953,
		0.633009, 0.579584, -0.513207,
		-0.743488, 0.639862, -0.194425,
		45.777420, 34.531849, 36.085457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.456005, 34.731125, 36.411331>,  <46.297859, 34.083946, 36.221554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.456005, 34.731125, 36.411331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.057533, 34.742249, 36.444447>,  <45.818451, 34.748920, 36.464314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.057533, 34.742249, 36.444447>,  <46.456005, 34.731125, 36.411331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.057533, 34.742249, 36.444447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082693, 0.605132, 0.791819,
		-0.028078, 0.795640, -0.605119,
		-0.996179, 0.027806, 0.082785,
		45.758678, 34.750591, 36.469280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.356434, 35.307652, 36.756981>,  <46.456005, 34.731125, 36.411331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.356434, 35.307652, 36.756981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.996414, 35.139862, 36.804245>,  <45.780403, 35.039188, 36.832603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.996414, 35.139862, 36.804245>,  <46.356434, 35.307652, 36.756981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.996414, 35.139862, 36.804245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112138, 0.484920, 0.867339,
		-0.421120, 0.767395, -0.483489,
		-0.900046, -0.419472, 0.118155,
		45.726402, 35.014019, 36.839691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.934547, 35.824909, 36.984470>,  <46.356434, 35.307652, 36.756981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.934547, 35.824909, 36.984470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.746719, 35.488350, 37.091461>,  <45.634022, 35.286415, 37.155655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.746719, 35.488350, 37.091461>,  <45.934547, 35.824909, 36.984470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.746719, 35.488350, 37.091461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122089, 0.361926, 0.924177,
		-0.874411, 0.401314, -0.272677,
		-0.469574, -0.841401, 0.267476,
		45.605846, 35.235928, 37.171703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467773, 36.123791, 37.356503>,  <45.934547, 35.824909, 36.984470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.467773, 36.123791, 37.356503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.516884, 35.745731, 37.477581>,  <45.546349, 35.518898, 37.550228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.516884, 35.745731, 37.477581>,  <45.467773, 36.123791, 37.356503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.516884, 35.745731, 37.477581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048338, 0.298947, 0.953045,
		-0.991256, -0.131642, -0.008983,
		0.122775, -0.945146, 0.302696,
		45.553715, 35.462189, 37.568390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.882759, 36.051147, 37.779312>,  <45.467773, 36.123791, 37.356503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.882759, 36.051147, 37.779312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.171875, 35.788624, 37.865875>,  <45.345345, 35.631107, 37.917812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.171875, 35.788624, 37.865875>,  <44.882759, 36.051147, 37.779312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.171875, 35.788624, 37.865875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009932, 0.322986, 0.946352,
		-0.690999, -0.681861, 0.239969,
		0.722787, -0.656312, 0.216411,
		45.388710, 35.591732, 37.930798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.727970, 35.804337, 38.460461>,  <44.882759, 36.051147, 37.779312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.727970, 35.804337, 38.460461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.111073, 35.699505, 38.413101>,  <45.340935, 35.636604, 38.384686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.111073, 35.699505, 38.413101>,  <44.727970, 35.804337, 38.460461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.111073, 35.699505, 38.413101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207422, 0.344333, 0.915648,
		-0.199205, -0.901525, 0.384148,
		0.957754, -0.262082, -0.118403,
		45.398399, 35.620880, 38.377579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.904594, 35.363136, 38.997486>,  <44.727970, 35.804337, 38.460461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.904594, 35.363136, 38.997486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.251102, 35.510761, 38.862808>,  <45.459007, 35.599335, 38.782001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.251102, 35.510761, 38.862808>,  <44.904594, 35.363136, 38.997486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.251102, 35.510761, 38.862808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177118, 0.403302, 0.897762,
		0.467122, -0.837341, 0.284002,
		0.866271, 0.369063, -0.336700,
		45.510986, 35.621479, 38.761799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503471, 35.204815, 39.524467>,  <44.904594, 35.363136, 38.997486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.503471, 35.204815, 39.524467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.628963, 35.521847, 39.315319>,  <45.704258, 35.712067, 39.189831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.628963, 35.521847, 39.315319>,  <45.503471, 35.204815, 39.524467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.628963, 35.521847, 39.315319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294896, 0.442108, 0.847100,
		0.902559, -0.419949, -0.095028,
		0.313725, 0.792581, -0.522869,
		45.723080, 35.759621, 39.158459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.109768, 35.535305, 39.929173>,  <45.503471, 35.204815, 39.524467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.109768, 35.535305, 39.929173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.982433, 35.819939, 39.678635>,  <45.906033, 35.990719, 39.528313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.982433, 35.819939, 39.678635>,  <46.109768, 35.535305, 39.929173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.982433, 35.819939, 39.678635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097991, 0.681879, 0.724872,
		0.942901, 0.169374, -0.286793,
		-0.318333, 0.711585, -0.626347,
		45.886932, 36.033413, 39.490730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.609650, 35.966316, 40.112885>,  <46.109768, 35.535305, 39.929173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.609650, 35.966316, 40.112885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.331825, 36.194408, 39.937424>,  <46.165131, 36.331264, 39.832150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.331825, 36.194408, 39.937424>,  <46.609650, 35.966316, 40.112885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.331825, 36.194408, 39.937424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140609, 0.705555, 0.694565,
		0.705555, 0.420743, -0.570234,
		-0.694565, 0.570234, -0.438648,
		46.123455, 36.365479, 39.805828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.851376, 36.627411, 39.912430>,  <46.609650, 35.966316, 40.112885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.851376, 36.627411, 39.912430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.458332, 36.684959, 39.959381>,  <46.222507, 36.719490, 39.987553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.458332, 36.684959, 39.959381>,  <46.851376, 36.627411, 39.912430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.458332, 36.684959, 39.959381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184469, 0.828497, 0.528737,
		-0.021181, 0.541196, -0.840630,
		-0.982610, 0.143871, 0.117383,
		46.163548, 36.728119, 39.994595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.732361, 37.408527, 39.868057>,  <46.851376, 36.627411, 39.912430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.732361, 37.408527, 39.868057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.400448, 37.265572, 40.039516>,  <46.201302, 37.179798, 40.142391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.400448, 37.265572, 40.039516>,  <46.732361, 37.408527, 39.868057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.400448, 37.265572, 40.039516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044281, 0.723483, 0.688921,
		-0.556332, 0.590634, -0.584506,
		-0.829780, -0.357386, 0.428650,
		46.151512, 37.158356, 40.168110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.333466, 38.009125, 39.890240>,  <46.732361, 37.408527, 39.868057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.333466, 38.009125, 39.890240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.158195, 37.773758, 40.162056>,  <46.053032, 37.632538, 40.325146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.158195, 37.773758, 40.162056>,  <46.333466, 38.009125, 39.890240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.158195, 37.773758, 40.162056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017372, 0.761376, 0.648078,
		-0.898721, 0.272168, -0.343839,
		-0.438177, -0.588414, 0.679536,
		46.026741, 37.597233, 40.365917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.965366, 38.464298, 40.309490>,  <46.333466, 38.009125, 39.890240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.965366, 38.464298, 40.309490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.971443, 38.130844, 40.530334>,  <45.975090, 37.930771, 40.662842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.971443, 38.130844, 40.530334>,  <45.965366, 38.464298, 40.309490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.971443, 38.130844, 40.530334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199869, 0.543562, 0.815225,
		-0.979705, 0.097961, 0.174877,
		0.015196, -0.833633, 0.552110,
		45.976002, 37.880753, 40.695969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.588249, 38.552223, 40.903587>,  <45.965366, 38.464298, 40.309490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.588249, 38.552223, 40.903587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.836189, 38.255699, 41.006546>,  <45.984951, 38.077785, 41.068321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.836189, 38.255699, 41.006546>,  <45.588249, 38.552223, 40.903587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.836189, 38.255699, 41.006546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253829, 0.499782, 0.828124,
		-0.742536, -0.447976, 0.497954,
		0.619848, -0.741306, 0.257397,
		46.022144, 38.033306, 41.083763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.416466, 38.342896, 41.591064>,  <45.588249, 38.552223, 40.903587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.416466, 38.342896, 41.591064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.803288, 38.273098, 41.516926>,  <46.035381, 38.231220, 41.472443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.803288, 38.273098, 41.516926>,  <45.416466, 38.342896, 41.591064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.803288, 38.273098, 41.516926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249819, 0.510546, 0.822760,
		-0.048939, -0.841958, 0.537319,
		0.967055, -0.174498, -0.185351,
		46.093403, 38.220749, 41.461319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.858063, 34.419483, 41.141800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524616, 34.217293, 41.052738>,  <36.324547, 34.095978, 40.999302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524616, 34.217293, 41.052738>,  <36.858063, 34.419483, 41.141800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524616, 34.217293, 41.052738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244352, 0.024025, -0.969389,
		0.495352, -0.862506, 0.103487,
		-0.833617, -0.505476, -0.222656,
		36.274532, 34.065651, 40.985943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161366, 34.035175, 40.648376>,  <36.858063, 34.419483, 41.141800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161366, 34.035175, 40.648376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763481, 34.051094, 40.610508>,  <36.524750, 34.060646, 40.587788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763481, 34.051094, 40.610508>,  <37.161366, 34.035175, 40.648376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763481, 34.051094, 40.610508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095896, 0.030140, -0.994935,
		-0.036746, -0.998753, -0.033797,
		-0.994713, 0.039801, -0.094669,
		36.465069, 34.063034, 40.582108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039486, 33.514282, 40.263165>,  <37.161366, 34.035175, 40.648376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039486, 33.514282, 40.263165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704979, 33.727589, 40.212116>,  <36.504276, 33.855572, 40.181488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704979, 33.727589, 40.212116>,  <37.039486, 33.514282, 40.263165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704979, 33.727589, 40.212116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112244, -0.061329, -0.991786,
		-0.536717, -0.843719, -0.008569,
		-0.836264, 0.533271, -0.127618,
		36.454102, 33.887569, 40.173832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826691, 33.234703, 39.693249>,  <37.039486, 33.514282, 40.263165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826691, 33.234703, 39.693249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598507, 33.563206, 39.697613>,  <36.461597, 33.760307, 39.700230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598507, 33.563206, 39.697613>,  <36.826691, 33.234703, 39.693249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598507, 33.563206, 39.697613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002940, 0.015322, -0.999878,
		-0.821321, -0.570358, -0.011155,
		-0.570459, 0.821254, 0.010907,
		36.427368, 33.809582, 39.700886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277027, 33.146793, 39.195717>,  <36.826691, 33.234703, 39.693249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277027, 33.146793, 39.195717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307003, 33.542072, 39.249149>,  <36.324989, 33.779240, 39.281208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307003, 33.542072, 39.249149>,  <36.277027, 33.146793, 39.195717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307003, 33.542072, 39.249149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229384, 0.113280, -0.966722,
		-0.970447, 0.103088, -0.218188,
		0.074941, 0.988201, 0.133579,
		36.329487, 33.838531, 39.289223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047966, 33.374969, 38.597153>,  <36.277027, 33.146793, 39.195717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047966, 33.374969, 38.597153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236294, 33.697392, 38.740593>,  <36.349293, 33.890846, 38.826656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236294, 33.697392, 38.740593>,  <36.047966, 33.374969, 38.597153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236294, 33.697392, 38.740593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247231, 0.269640, -0.930683,
		-0.846878, 0.526846, -0.072329,
		0.470824, 0.806057, 0.358605,
		36.377541, 33.939209, 38.848175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824806, 33.948326, 38.195507>,  <36.047966, 33.374969, 38.597153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824806, 33.948326, 38.195507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159611, 34.083111, 38.367954>,  <36.360493, 34.163982, 38.471424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159611, 34.083111, 38.367954>,  <35.824806, 33.948326, 38.195507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159611, 34.083111, 38.367954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321854, 0.333996, -0.885921,
		-0.442516, 0.880286, 0.171106,
		0.837013, 0.336963, 0.431122,
		36.410713, 34.184200, 38.497292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750652, 34.595497, 38.093597>,  <35.824806, 33.948326, 38.195507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750652, 34.595497, 38.093597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143192, 34.537010, 38.143505>,  <36.378716, 34.501919, 38.173450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143192, 34.537010, 38.143505>,  <35.750652, 34.595497, 38.093597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143192, 34.537010, 38.143505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177549, 0.440886, -0.879827,
		0.073643, 0.885573, 0.458626,
		0.981353, -0.146222, 0.124765,
		36.437599, 34.493145, 38.180935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143089, 35.223904, 37.855835>,  <35.750652, 34.595497, 38.093597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143089, 35.223904, 37.855835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411949, 34.927746, 37.858131>,  <36.573265, 34.750050, 37.859509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411949, 34.927746, 37.858131>,  <36.143089, 35.223904, 37.855835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411949, 34.927746, 37.858131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323077, 0.286309, -0.902025,
		0.666210, 0.608149, 0.431647,
		0.672150, -0.740393, 0.005737,
		36.613594, 34.705627, 37.859852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797218, 35.519619, 37.744072>,  <36.143089, 35.223904, 37.855835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797218, 35.519619, 37.744072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843349, 35.143085, 37.617207>,  <36.871029, 34.917164, 37.541088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843349, 35.143085, 37.617207>,  <36.797218, 35.519619, 37.744072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843349, 35.143085, 37.617207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251999, 0.336574, -0.907312,
		0.960831, 0.024715, 0.276032,
		0.115329, -0.941333, -0.317162,
		36.877949, 34.860687, 37.522057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348282, 35.568703, 37.197414>,  <36.797218, 35.519619, 37.744072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348282, 35.568703, 37.197414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170044, 35.213055, 37.155628>,  <37.063099, 34.999668, 37.130558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170044, 35.213055, 37.155628>,  <37.348282, 35.568703, 37.197414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170044, 35.213055, 37.155628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369084, -0.076142, -0.926272,
		0.815610, -0.451303, 0.362087,
		-0.445599, -0.889117, -0.104466,
		37.036366, 34.946320, 37.124287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859154, 35.136875, 36.992756>,  <37.348282, 35.568703, 37.197414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859154, 35.136875, 36.992756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499756, 35.023975, 36.858265>,  <37.284119, 34.956238, 36.777569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499756, 35.023975, 36.858265>,  <37.859154, 35.136875, 36.992756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499756, 35.023975, 36.858265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335394, 0.052816, -0.940596,
		0.283239, -0.957887, 0.047210,
		-0.898491, -0.282247, -0.336229,
		37.230209, 34.939301, 36.757397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832001, 34.435848, 36.908161>,  <37.859154, 35.136875, 36.992756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832001, 34.435848, 36.908161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549332, 34.380424, 36.630627>,  <37.379730, 34.347168, 36.464108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549332, 34.380424, 36.630627>,  <37.832001, 34.435848, 36.908161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549332, 34.380424, 36.630627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526969, -0.757448, -0.385456,
		-0.472135, -0.638023, 0.608289,
		-0.706677, -0.138562, -0.693835,
		37.337330, 34.338856, 36.422478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906170, 33.705658, 36.833179>,  <37.832001, 34.435848, 36.908161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906170, 33.705658, 36.833179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749050, 33.882126, 36.510422>,  <37.654778, 33.988007, 36.316769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749050, 33.882126, 36.510422>,  <37.906170, 33.705658, 36.833179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749050, 33.882126, 36.510422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639696, -0.499275, -0.584391,
		-0.660679, -0.745714, -0.086102,
		-0.392800, 0.441174, -0.806892,
		37.631210, 34.014477, 36.268353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534534, 33.353672, 37.120483>,  <37.906170, 33.705658, 36.833179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534534, 33.353672, 37.120483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765728, 33.060158, 36.977657>,  <38.904442, 32.884048, 36.891960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765728, 33.060158, 36.977657>,  <38.534534, 33.353672, 37.120483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765728, 33.060158, 36.977657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425554, -0.644369, 0.635368,
		-0.696306, -0.215280, -0.684699,
		0.577981, -0.733787, -0.357065,
		38.939121, 32.840023, 36.870537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088749, 32.810043, 37.015907>,  <38.534534, 33.353672, 37.120483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088749, 32.810043, 37.015907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454300, 32.648033, 37.027153>,  <38.673630, 32.550827, 37.033901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454300, 32.648033, 37.027153>,  <38.088749, 32.810043, 37.015907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454300, 32.648033, 37.027153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318417, -0.672047, 0.668554,
		-0.251885, -0.619926, -0.743132,
		0.913873, -0.405025, 0.028116,
		38.728462, 32.526527, 37.035587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025806, 32.098549, 37.098839>,  <38.088749, 32.810043, 37.015907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025806, 32.098549, 37.098839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397511, 32.143871, 37.239491>,  <38.620533, 32.171062, 37.323879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397511, 32.143871, 37.239491>,  <38.025806, 32.098549, 37.098839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397511, 32.143871, 37.239491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158678, -0.737123, 0.656865,
		0.333616, -0.666193, -0.666999,
		0.929259, 0.113303, 0.351626,
		38.676289, 32.177860, 37.344978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383713, 31.434877, 36.962250>,  <38.025806, 32.098549, 37.098839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383713, 31.434877, 36.962250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557205, 31.654903, 37.247711>,  <38.661301, 31.786919, 37.418987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557205, 31.654903, 37.247711>,  <38.383713, 31.434877, 36.962250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557205, 31.654903, 37.247711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129009, -0.745961, 0.653374,
		0.891757, -0.375460, -0.252587,
		0.433736, 0.550065, 0.713654,
		38.687325, 31.819923, 37.461807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716301, 30.901571, 37.389721>,  <38.383713, 31.434877, 36.962250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716301, 30.901571, 37.389721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698036, 31.234188, 37.611153>,  <38.687077, 31.433758, 37.744011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698036, 31.234188, 37.611153>,  <38.716301, 30.901571, 37.389721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698036, 31.234188, 37.611153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250297, -0.546007, 0.799517,
		0.967092, -0.102055, 0.233062,
		-0.045659, 0.831542, 0.553583,
		38.684338, 31.483650, 37.777229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876461, 30.686234, 38.134872>,  <38.716301, 30.901571, 37.389721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876461, 30.686234, 38.134872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703056, 31.044712, 38.172619>,  <38.599014, 31.259798, 38.195267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703056, 31.044712, 38.172619>,  <38.876461, 30.686234, 38.134872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703056, 31.044712, 38.172619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320734, -0.251306, 0.913222,
		0.842140, 0.365623, 0.396383,
		-0.433509, 0.896195, 0.094367,
		38.573006, 31.313570, 38.200928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837772, 30.775923, 38.870300>,  <38.876461, 30.686234, 38.134872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837772, 30.775923, 38.870300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579132, 31.048306, 38.732773>,  <38.423950, 31.211735, 38.650257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579132, 31.048306, 38.732773>,  <38.837772, 30.775923, 38.870300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579132, 31.048306, 38.732773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520639, -0.064530, 0.851335,
		0.557535, 0.729475, 0.396257,
		-0.646598, 0.680956, -0.343816,
		38.385151, 31.252592, 38.629627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850990, 31.178776, 39.428677>,  <38.837772, 30.775923, 38.870300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850990, 31.178776, 39.428677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522842, 31.256275, 39.213470>,  <38.325954, 31.302774, 39.084347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522842, 31.256275, 39.213470>,  <38.850990, 31.178776, 39.428677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522842, 31.256275, 39.213470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546235, 0.012872, 0.837533,
		0.169195, 0.980967, 0.095272,
		-0.820366, 0.193748, -0.538017,
		38.276733, 31.314400, 39.052067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574642, 31.695105, 39.802177>,  <38.850990, 31.178776, 39.428677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574642, 31.695105, 39.802177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275330, 31.538395, 39.588043>,  <38.095741, 31.444368, 39.459564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275330, 31.538395, 39.588043>,  <38.574642, 31.695105, 39.802177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275330, 31.538395, 39.588043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583485, 0.004751, 0.812110,
		-0.315620, 0.920049, -0.232149,
		-0.748284, -0.391774, -0.535336,
		38.050846, 31.420862, 39.427441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912567, 32.051495, 40.075191>,  <38.574642, 31.695105, 39.802177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912567, 32.051495, 40.075191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737816, 31.740915, 39.893524>,  <37.632965, 31.554569, 39.784523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737816, 31.740915, 39.893524>,  <37.912567, 32.051495, 40.075191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737816, 31.740915, 39.893524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455289, -0.244582, 0.856091,
		-0.775789, 0.580787, -0.246654,
		-0.436879, -0.776445, -0.454170,
		37.606750, 31.507982, 39.757275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196323, 32.177910, 40.189816>,  <37.912567, 32.051495, 40.075191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196323, 32.177910, 40.189816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273876, 31.789320, 40.135201>,  <37.320408, 31.556166, 40.102432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273876, 31.789320, 40.135201>,  <37.196323, 32.177910, 40.189816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273876, 31.789320, 40.135201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404633, -0.205977, 0.890980,
		-0.893690, -0.117500, -0.433027,
		0.193883, -0.971477, -0.136535,
		37.332043, 31.497877, 40.094238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591591, 31.800158, 40.417568>,  <37.196323, 32.177910, 40.189816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591591, 31.800158, 40.417568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849335, 31.495136, 40.440605>,  <37.003979, 31.312122, 40.454426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849335, 31.495136, 40.440605>,  <36.591591, 31.800158, 40.417568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849335, 31.495136, 40.440605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282314, -0.167210, 0.944638,
		-0.710708, -0.624941, -0.323022,
		0.644355, -0.762555, 0.057592,
		37.042641, 31.266371, 40.457882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196629, 31.131960, 40.596298>,  <36.591591, 31.800158, 40.417568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196629, 31.131960, 40.596298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581730, 31.088051, 40.695141>,  <36.812790, 31.061705, 40.754444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581730, 31.088051, 40.695141>,  <36.196629, 31.131960, 40.596298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581730, 31.088051, 40.695141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265231, -0.205740, 0.941978,
		-0.052562, -0.972431, -0.227191,
		0.962751, -0.109770, 0.247105,
		36.870556, 31.055119, 40.769272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318485, 30.479710, 40.974613>,  <36.196629, 31.131960, 40.596298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318485, 30.479710, 40.974613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636440, 30.706078, 41.062141>,  <36.827213, 30.841898, 41.114658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636440, 30.706078, 41.062141>,  <36.318485, 30.479710, 40.974613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636440, 30.706078, 41.062141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161296, -0.150579, 0.975351,
		0.584920, -0.810593, -0.028413,
		0.794891, 0.565920, 0.218822,
		36.874908, 30.875853, 41.127789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360455, 29.802744, 40.592323>,  <36.318485, 30.479710, 40.974613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360455, 29.802744, 40.592323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036743, 29.570362, 40.627102>,  <35.842518, 29.430933, 40.647968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036743, 29.570362, 40.627102>,  <36.360455, 29.802744, 40.592323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036743, 29.570362, 40.627102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302543, 0.285339, -0.909423,
		0.503522, -0.762283, -0.406682,
		-0.809280, -0.580953, 0.086949,
		35.793961, 29.396076, 40.653187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282879, 29.649689, 39.934246>,  <36.360455, 29.802744, 40.592323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282879, 29.649689, 39.934246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926056, 29.555578, 40.088581>,  <35.711960, 29.499113, 40.181183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926056, 29.555578, 40.088581>,  <36.282879, 29.649689, 39.934246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926056, 29.555578, 40.088581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446749, 0.330400, -0.831415,
		0.068129, -0.914047, -0.399846,
		-0.892062, -0.235274, 0.385840,
		35.658436, 29.484995, 40.204334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991219, 29.243031, 39.502327>,  <36.282879, 29.649689, 39.934246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991219, 29.243031, 39.502327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697697, 29.408821, 39.717636>,  <35.521584, 29.508295, 39.846821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697697, 29.408821, 39.717636>,  <35.991219, 29.243031, 39.502327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697697, 29.408821, 39.717636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389874, 0.391943, -0.833294,
		-0.556355, -0.821334, -0.126015,
		-0.733803, 0.414478, 0.538276,
		35.477554, 29.533165, 39.879120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400146, 29.169855, 39.154507>,  <35.991219, 29.243031, 39.502327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400146, 29.169855, 39.154507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285690, 29.467119, 39.396446>,  <35.217018, 29.645477, 39.541611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285690, 29.467119, 39.396446>,  <35.400146, 29.169855, 39.154507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285690, 29.467119, 39.396446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503702, 0.420322, -0.754727,
		-0.815112, -0.520620, 0.254060,
		-0.286139, 0.743158, 0.604847,
		35.199848, 29.690067, 39.577900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689400, 29.400339, 38.969704>,  <35.400146, 29.169855, 39.154507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689400, 29.400339, 38.969704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789452, 29.718376, 39.190708>,  <34.849483, 29.909199, 39.323311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789452, 29.718376, 39.190708>,  <34.689400, 29.400339, 38.969704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789452, 29.718376, 39.190708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417386, 0.603447, -0.679441,
		-0.873627, -0.060662, 0.482800,
		0.250128, 0.795092, 0.552508,
		34.864491, 29.956903, 39.356461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099678, 29.818300, 38.851562>,  <34.689400, 29.400339, 38.969704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099678, 29.818300, 38.851562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381748, 30.055614, 39.006863>,  <34.550991, 30.198002, 39.100044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381748, 30.055614, 39.006863>,  <34.099678, 29.818300, 38.851562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381748, 30.055614, 39.006863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223427, 0.705620, -0.672444,
		-0.672909, 0.387446, 0.630142,
		0.705177, 0.593284, 0.388253,
		34.593300, 30.233601, 39.123337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781311, 30.383276, 39.080498>,  <34.099678, 29.818300, 38.851562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781311, 30.383276, 39.080498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154831, 30.483189, 38.978031>,  <34.378944, 30.543137, 38.916550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154831, 30.483189, 38.978031>,  <33.781311, 30.383276, 39.080498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154831, 30.483189, 38.978031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357694, 0.635114, -0.684606,
		-0.008304, 0.730917, 0.682416,
		0.933802, 0.249781, -0.256171,
		34.434971, 30.558123, 38.901180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739258, 31.023474, 38.884888>,  <33.781311, 30.383276, 39.080498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739258, 31.023474, 38.884888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101032, 30.937332, 38.737587>,  <34.318096, 30.885647, 38.649204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101032, 30.937332, 38.737587>,  <33.739258, 31.023474, 38.884888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101032, 30.937332, 38.737587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173012, 0.603883, -0.778069,
		0.389946, 0.767429, 0.508916,
		0.904439, -0.215356, -0.368256,
		34.372364, 30.872725, 38.627110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998981, 31.675804, 38.648666>,  <33.739258, 31.023474, 38.884888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998981, 31.675804, 38.648666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230518, 31.405748, 38.465744>,  <34.369438, 31.243715, 38.355991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230518, 31.405748, 38.465744>,  <33.998981, 31.675804, 38.648666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230518, 31.405748, 38.465744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022089, 0.547625, -0.836432,
		0.815141, 0.494263, 0.302074,
		0.578841, -0.675138, -0.457310,
		34.404171, 31.203207, 38.328552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335598, 32.034622, 38.207603>,  <33.998981, 31.675804, 38.648666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335598, 32.034622, 38.207603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448605, 31.678658, 38.064358>,  <34.516407, 31.465078, 37.978409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448605, 31.678658, 38.064358>,  <34.335598, 32.034622, 38.207603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448605, 31.678658, 38.064358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014317, 0.377191, -0.926025,
		0.959155, 0.256491, 0.119304,
		0.282518, -0.889910, -0.358113,
		34.533360, 31.411684, 37.956924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971542, 32.163998, 37.775791>,  <34.335598, 32.034622, 38.207603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971542, 32.163998, 37.775791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800617, 31.821119, 37.660812>,  <34.698063, 31.615393, 37.591827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800617, 31.821119, 37.660812>,  <34.971542, 32.163998, 37.775791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800617, 31.821119, 37.660812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013004, 0.323726, -0.946061,
		0.904010, -0.400528, -0.149480,
		-0.427314, -0.857193, -0.287443,
		34.672424, 31.563961, 37.574581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383701, 31.873459, 37.223732>,  <34.971542, 32.163998, 37.775791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383701, 31.873459, 37.223732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047794, 31.659229, 37.188076>,  <34.846249, 31.530691, 37.166683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047794, 31.659229, 37.188076>,  <35.383701, 31.873459, 37.223732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047794, 31.659229, 37.188076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032352, 0.114524, -0.992894,
		0.541976, -0.836687, -0.078847,
		-0.839771, -0.535573, -0.089138,
		34.795864, 31.498558, 37.161335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.919373, 28.267542, 44.493710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.608074, 28.460804, 44.333267>,  <35.421295, 28.576761, 44.237000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.608074, 28.460804, 44.333267>,  <35.919373, 28.267542, 44.493710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608074, 28.460804, 44.333267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288579, -0.292131, -0.911802,
		-0.557720, -0.825360, 0.087921,
		-0.778249, 0.483158, -0.401108,
		35.374599, 28.605751, 44.212936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683239, 27.763309, 44.021275>,  <35.919373, 28.267542, 44.493710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683239, 27.763309, 44.021275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.497597, 28.097944, 43.904846>,  <35.386211, 28.298725, 43.834988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.497597, 28.097944, 43.904846>,  <35.683239, 27.763309, 44.021275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497597, 28.097944, 43.904846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157097, -0.245660, -0.956542,
		-0.871736, -0.489667, -0.017413,
		-0.464109, 0.836587, -0.291075,
		35.358364, 28.348921, 43.817524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296097, 27.504066, 43.489159>,  <35.683239, 27.763309, 44.021275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296097, 27.504066, 43.489159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.355743, 27.897655, 43.450039>,  <35.391533, 28.133808, 43.426567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.355743, 27.897655, 43.450039>,  <35.296097, 27.504066, 43.489159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355743, 27.897655, 43.450039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054876, -0.106990, -0.992745,
		-0.987295, 0.142671, -0.069950,
		0.149120, 0.983971, -0.097802,
		35.400478, 28.192846, 43.420700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883297, 27.787239, 42.963432>,  <35.296097, 27.504066, 43.489159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883297, 27.787239, 42.963432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.146961, 28.086864, 42.990002>,  <35.305161, 28.266640, 43.005943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.146961, 28.086864, 42.990002>,  <34.883297, 27.787239, 42.963432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146961, 28.086864, 42.990002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041071, 0.124062, -0.991424,
		-0.750883, 0.650776, 0.112541,
		0.659157, 0.749066, 0.066428,
		35.344707, 28.311584, 43.009930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552525, 28.377071, 42.599117>,  <34.883297, 27.787239, 42.963432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552525, 28.377071, 42.599117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.946686, 28.444925, 42.604877>,  <35.183182, 28.485638, 42.608334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.946686, 28.444925, 42.604877>,  <34.552525, 28.377071, 42.599117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946686, 28.444925, 42.604877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046275, 0.348266, -0.936253,
		-0.163835, 0.921919, 0.351032,
		0.985402, 0.169635, 0.014397,
		35.242306, 28.495815, 42.609196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630226, 29.074688, 42.354248>,  <34.552525, 28.377071, 42.599117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630226, 29.074688, 42.354248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.974804, 28.880384, 42.294987>,  <35.181553, 28.763803, 42.259430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.974804, 28.880384, 42.294987>,  <34.630226, 29.074688, 42.354248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974804, 28.880384, 42.294987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033827, 0.345969, -0.937636,
		0.506721, 0.802712, 0.314465,
		0.861447, -0.485757, -0.148156,
		35.233238, 28.734657, 42.250542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747501, 29.479742, 41.683838>,  <34.630226, 29.074688, 42.354248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747501, 29.479742, 41.683838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.058441, 29.234358, 41.739540>,  <35.245007, 29.087128, 41.772961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.058441, 29.234358, 41.739540>,  <34.747501, 29.479742, 41.683838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058441, 29.234358, 41.739540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405237, 0.319017, -0.856745,
		0.481154, 0.722423, 0.496584,
		0.777351, -0.613460, 0.139256,
		35.291645, 29.050320, 41.781319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409714, 29.877764, 41.774639>,  <34.747501, 29.479742, 41.683838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409714, 29.877764, 41.774639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.477272, 29.518005, 41.613361>,  <35.517807, 29.302151, 41.516594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.477272, 29.518005, 41.613361>,  <35.409714, 29.877764, 41.774639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477272, 29.518005, 41.613361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486587, 0.431827, -0.759446,
		0.857151, -0.067921, 0.510568,
		0.168895, -0.899395, -0.403190,
		35.527939, 29.248186, 41.492405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005611, 29.904530, 41.389603>,  <35.409714, 29.877764, 41.774639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005611, 29.904530, 41.389603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.841125, 29.566408, 41.253151>,  <35.742435, 29.363535, 41.171280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.841125, 29.566408, 41.253151>,  <36.005611, 29.904530, 41.389603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841125, 29.566408, 41.253151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263518, 0.248011, -0.932227,
		0.872617, -0.473239, 0.120766,
		-0.411215, -0.845302, -0.341126,
		35.717762, 29.312819, 41.150814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542984, 30.241058, 41.639362>,  <36.005611, 29.904530, 41.389603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542984, 30.241058, 41.639362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.736855, 30.590242, 41.617359>,  <36.853180, 30.799753, 41.604156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.736855, 30.590242, 41.617359>,  <36.542984, 30.241058, 41.639362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736855, 30.590242, 41.617359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071273, 0.023262, 0.997186,
		0.871782, -0.487238, -0.050944,
		0.484681, 0.872960, -0.055006,
		36.882259, 30.852131, 41.600857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158264, 30.263245, 42.075119>,  <36.542984, 30.241058, 41.639362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158264, 30.263245, 42.075119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.061371, 30.648819, 42.031033>,  <37.003235, 30.880163, 42.004581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.061371, 30.648819, 42.031033>,  <37.158264, 30.263245, 42.075119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061371, 30.648819, 42.031033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020519, 0.108482, 0.993887,
		0.970000, 0.243017, -0.006499,
		-0.242237, 0.963937, -0.110214,
		36.988701, 30.938000, 41.997967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593769, 30.626585, 42.643166>,  <37.158264, 30.263245, 42.075119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593769, 30.626585, 42.643166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.295422, 30.874487, 42.545528>,  <37.116413, 31.023228, 42.486946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.295422, 30.874487, 42.545528>,  <37.593769, 30.626585, 42.643166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295422, 30.874487, 42.545528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035555, 0.328894, 0.943697,
		0.665141, 0.712555, -0.223277,
		-0.745871, 0.619753, -0.244095,
		37.071659, 31.060413, 42.472301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778690, 31.264404, 42.906845>,  <37.593769, 30.626585, 42.643166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778690, 31.264404, 42.906845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.383698, 31.293036, 42.850613>,  <37.146702, 31.310215, 42.816872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.383698, 31.293036, 42.850613>,  <37.778690, 31.264404, 42.906845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383698, 31.293036, 42.850613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115220, 0.281456, 0.952632,
		0.107756, 0.956901, -0.269684,
		-0.987478, 0.071578, -0.140582,
		37.087456, 31.314508, 42.808437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681648, 31.859539, 43.204952>,  <37.778690, 31.264404, 42.906845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681648, 31.859539, 43.204952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.326523, 31.676022, 43.190556>,  <37.113449, 31.565910, 43.181915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.326523, 31.676022, 43.190556>,  <37.681648, 31.859539, 43.204952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326523, 31.676022, 43.190556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228163, 0.370895, 0.900210,
		-0.399662, 0.807431, -0.433966,
		-0.887813, -0.458795, -0.035994,
		37.060181, 31.538383, 43.179756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173344, 32.277439, 43.516312>,  <37.681648, 31.859539, 43.204952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173344, 32.277439, 43.516312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.962646, 31.937483, 43.510265>,  <36.836227, 31.733509, 43.506638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.962646, 31.937483, 43.510265>,  <37.173344, 32.277439, 43.516312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962646, 31.937483, 43.510265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343015, 0.196260, 0.918598,
		-0.777739, 0.489053, -0.394903,
		-0.526747, -0.849888, -0.015113,
		36.804623, 31.682516, 43.505730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558945, 32.532436, 43.781139>,  <37.173344, 32.277439, 43.516312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558945, 32.532436, 43.781139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.514645, 32.135586, 43.804546>,  <36.488064, 31.897476, 43.818588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.514645, 32.135586, 43.804546>,  <36.558945, 32.532436, 43.781139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514645, 32.135586, 43.804546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411237, 0.099344, 0.906099,
		-0.904776, 0.076284, -0.419000,
		-0.110746, -0.992125, 0.058513,
		36.481422, 31.837948, 43.822102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797676, 32.350517, 44.104568>,  <36.558945, 32.532436, 43.781139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797676, 32.350517, 44.104568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.083790, 32.079086, 44.171391>,  <36.255459, 31.916227, 44.211483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.083790, 32.079086, 44.171391>,  <35.797676, 32.350517, 44.104568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083790, 32.079086, 44.171391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110879, 0.125816, 0.985838,
		-0.689983, -0.723675, 0.014754,
		0.715283, -0.678576, 0.167051,
		36.298374, 31.875513, 44.221504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546310, 32.125195, 44.777245>,  <35.797676, 32.350517, 44.104568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546310, 32.125195, 44.777245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.924061, 32.002308, 44.730309>,  <36.150711, 31.928576, 44.702145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.924061, 32.002308, 44.730309>,  <35.546310, 32.125195, 44.777245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924061, 32.002308, 44.730309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115561, -0.024057, 0.993009,
		-0.307891, -0.951336, 0.012784,
		0.944377, -0.307216, -0.117344,
		36.207375, 31.910143, 44.695107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509918, 31.449724, 45.110771>,  <35.546310, 32.125195, 44.777245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509918, 31.449724, 45.110771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.870689, 31.622169, 45.100471>,  <36.087154, 31.725637, 45.094292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.870689, 31.622169, 45.100471>,  <35.509918, 31.449724, 45.110771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870689, 31.622169, 45.100471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031090, -0.005344, 0.999502,
		0.430762, -0.902281, -0.018223,
		0.901929, 0.431114, -0.025750,
		36.141270, 31.751503, 45.092747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959156, 31.140142, 45.635742>,  <35.509918, 31.449724, 45.110771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959156, 31.140142, 45.635742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.148663, 31.485907, 45.568405>,  <36.262367, 31.693365, 45.528004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.148663, 31.485907, 45.568405>,  <35.959156, 31.140142, 45.635742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148663, 31.485907, 45.568405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394131, -0.037180, 0.918302,
		0.787531, -0.501410, -0.358306,
		0.473768, 0.864411, -0.168340,
		36.290794, 31.745230, 45.517902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500145, 31.011360, 46.032852>,  <35.959156, 31.140142, 45.635742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500145, 31.011360, 46.032852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.532494, 31.401735, 45.951855>,  <36.551903, 31.635960, 45.903255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.532494, 31.401735, 45.951855>,  <36.500145, 31.011360, 46.032852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532494, 31.401735, 45.951855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459367, 0.143803, 0.876529,
		0.884558, -0.163904, -0.436684,
		0.080870, 0.975939, -0.202494,
		36.556755, 31.694517, 45.891106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130329, 31.172371, 46.160664>,  <36.500145, 31.011360, 46.032852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130329, 31.172371, 46.160664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.986374, 31.545547, 46.156738>,  <36.900002, 31.769453, 46.154381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.986374, 31.545547, 46.156738>,  <37.130329, 31.172371, 46.160664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986374, 31.545547, 46.156738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515814, 0.207725, 0.831136,
		0.777440, 0.294056, -0.555983,
		-0.359892, 0.932942, -0.009815,
		36.878407, 31.825430, 46.153793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655891, 31.606133, 46.300762>,  <37.130329, 31.172371, 46.160664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655891, 31.606133, 46.300762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.329151, 31.812996, 46.402981>,  <37.133106, 31.937113, 46.464310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.329151, 31.812996, 46.402981>,  <37.655891, 31.606133, 46.300762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329151, 31.812996, 46.402981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345406, 0.083697, 0.934713,
		0.462005, 0.851789, -0.246997,
		-0.816851, 0.517157, 0.255545,
		37.084095, 31.968143, 46.479645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.879351, 31.910521, 45.049728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.202595, 31.710335, 45.173981>,  <29.396542, 31.590223, 45.248531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.202595, 31.710335, 45.173981>,  <28.879351, 31.910521, 45.049728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202595, 31.710335, 45.173981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371712, 0.024190, -0.928033,
		0.456935, 0.865418, 0.205578,
		0.808109, -0.500466, 0.310633,
		29.445028, 31.560194, 45.267170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426090, 32.303341, 44.942257>,  <28.879351, 31.910521, 45.049728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426090, 32.303341, 44.942257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.572882, 31.931360, 44.933201>,  <29.660955, 31.708172, 44.927765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.572882, 31.931360, 44.933201>,  <29.426090, 32.303341, 44.942257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572882, 31.931360, 44.933201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321777, 0.149744, -0.934899,
		0.872804, 0.335801, 0.354191,
		0.366977, -0.929954, -0.022644,
		29.682976, 31.652374, 44.926407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056520, 32.359604, 44.685555>,  <29.426090, 32.303341, 44.942257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056520, 32.359604, 44.685555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.978119, 31.971762, 44.626987>,  <29.931078, 31.739056, 44.591846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.978119, 31.971762, 44.626987>,  <30.056520, 32.359604, 44.685555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978119, 31.971762, 44.626987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490605, 0.032320, -0.870782,
		0.849051, -0.242512, 0.469361,
		-0.196005, -0.969610, -0.146419,
		29.919317, 31.680880, 44.583061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685034, 32.118980, 44.483574>,  <30.056520, 32.359604, 44.685555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685034, 32.118980, 44.483574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.436813, 31.835640, 44.349018>,  <30.287882, 31.665636, 44.268284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.436813, 31.835640, 44.349018>,  <30.685034, 32.118980, 44.483574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436813, 31.835640, 44.349018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540812, -0.075962, -0.837707,
		0.567840, -0.701759, 0.430224,
		-0.620549, -0.708353, -0.336385,
		30.250648, 31.623135, 44.248104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100266, 31.656929, 44.206085>,  <30.685034, 32.118980, 44.483574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100266, 31.656929, 44.206085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.736610, 31.606384, 44.047337>,  <30.518417, 31.576057, 43.952087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.736610, 31.606384, 44.047337>,  <31.100266, 31.656929, 44.206085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736610, 31.606384, 44.047337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374663, 0.168099, -0.911795,
		0.181940, -0.977636, -0.105477,
		-0.909134, -0.126374, -0.396868,
		30.463869, 31.568476, 43.928276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287912, 31.298450, 43.596592>,  <31.100266, 31.656929, 44.206085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287912, 31.298450, 43.596592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.907930, 31.413206, 43.547146>,  <30.679941, 31.482059, 43.517479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.907930, 31.413206, 43.547146>,  <31.287912, 31.298450, 43.596592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907930, 31.413206, 43.547146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181434, 0.184563, -0.965929,
		-0.254300, -0.940016, -0.227378,
		-0.949954, 0.286889, -0.123616,
		30.622944, 31.499273, 43.510059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139664, 30.983316, 43.036350>,  <31.287912, 31.298450, 43.596592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139664, 30.983316, 43.036350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.879751, 31.286880, 43.053505>,  <30.723804, 31.469019, 43.063797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.879751, 31.286880, 43.053505>,  <31.139664, 30.983316, 43.036350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879751, 31.286880, 43.053505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303324, 0.310609, -0.900842,
		-0.696980, -0.572342, -0.432023,
		-0.649780, 0.758912, 0.042884,
		30.684816, 31.514553, 43.066368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937885, 31.110123, 42.342285>,  <31.139664, 30.983316, 43.036350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937885, 31.110123, 42.342285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.818644, 31.445354, 42.525043>,  <30.747099, 31.646494, 42.634701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.818644, 31.445354, 42.525043>,  <30.937885, 31.110123, 42.342285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818644, 31.445354, 42.525043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125489, 0.508917, -0.851619,
		-0.946248, -0.196536, -0.256881,
		-0.298105, 0.838079, 0.456899,
		30.729212, 31.696777, 42.662113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528625, 31.425777, 41.878399>,  <30.937885, 31.110123, 42.342285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528625, 31.425777, 41.878399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.672255, 31.701279, 42.130333>,  <30.758432, 31.866579, 42.281494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.672255, 31.701279, 42.130333>,  <30.528625, 31.425777, 41.878399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672255, 31.701279, 42.130333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215913, 0.595229, -0.774005,
		-0.907991, 0.413914, 0.065021,
		0.359074, 0.688751, 0.629832,
		30.779976, 31.907904, 42.319283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147827, 32.026207, 41.756023>,  <30.528625, 31.425777, 41.878399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147827, 32.026207, 41.756023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.478109, 32.161190, 41.936836>,  <30.676279, 32.242180, 42.045322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.478109, 32.161190, 41.936836>,  <30.147827, 32.026207, 41.756023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478109, 32.161190, 41.936836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152270, 0.638248, -0.754621,
		-0.543164, 0.691925, 0.475619,
		0.825704, 0.337461, 0.452033,
		30.725821, 32.262428, 42.072445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105322, 32.736111, 41.709999>,  <30.147827, 32.026207, 41.756023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105322, 32.736111, 41.709999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.490442, 32.643593, 41.765881>,  <30.721514, 32.588081, 41.799408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.490442, 32.643593, 41.765881>,  <30.105322, 32.736111, 41.709999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490442, 32.643593, 41.765881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254698, 0.604176, -0.755050,
		0.090232, 0.762545, 0.640611,
		0.962802, -0.231292, 0.139703,
		30.779284, 32.574203, 41.807793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459719, 33.329967, 41.595646>,  <30.105322, 32.736111, 41.709999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459719, 33.329967, 41.595646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.730227, 33.040459, 41.540779>,  <30.892530, 32.866753, 41.507858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.730227, 33.040459, 41.540779>,  <30.459719, 33.329967, 41.595646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730227, 33.040459, 41.540779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455486, 0.557178, -0.694323,
		0.578959, 0.407071, 0.706470,
		0.676269, -0.723772, -0.137168,
		30.933107, 32.823326, 41.499630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887539, 33.594894, 41.217304>,  <30.459719, 33.329967, 41.595646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887539, 33.594894, 41.217304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.050703, 33.232273, 41.173908>,  <31.148602, 33.014702, 41.147873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.050703, 33.232273, 41.173908>,  <30.887539, 33.594894, 41.217304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050703, 33.232273, 41.173908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363240, 0.270148, -0.891671,
		0.837655, 0.324315, 0.439493,
		0.407910, -0.906554, -0.108486,
		31.173077, 32.960308, 41.141361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541590, 33.667362, 41.087196>,  <30.887539, 33.594894, 41.217304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541590, 33.667362, 41.087196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.418184, 33.323982, 40.923302>,  <31.344141, 33.117954, 40.824963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.418184, 33.323982, 40.923302>,  <31.541590, 33.667362, 41.087196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418184, 33.323982, 40.923302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337149, 0.304101, -0.890984,
		0.889466, -0.413025, 0.195605,
		-0.308515, -0.858448, -0.409738,
		31.325630, 33.066448, 40.800381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312794, 33.890682, 41.195835>,  <31.541590, 33.667362, 41.087196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312794, 33.890682, 41.195835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.453579, 34.263214, 41.158417>,  <32.538048, 34.486732, 41.135967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.453579, 34.263214, 41.158417>,  <32.312794, 33.890682, 41.195835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453579, 34.263214, 41.158417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209592, 0.175817, 0.961852,
		0.912248, -0.318926, 0.257080,
		0.351959, 0.931329, -0.093544,
		32.559166, 34.542614, 41.130352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942337, 34.087502, 41.533127>,  <32.312794, 33.890682, 41.195835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942337, 34.087502, 41.533127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.729733, 34.423813, 41.491970>,  <32.602169, 34.625599, 41.467278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.729733, 34.423813, 41.491970>,  <32.942337, 34.087502, 41.533127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729733, 34.423813, 41.491970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008143, 0.126535, 0.991929,
		0.847013, 0.526382, -0.074101,
		-0.531509, 0.840780, -0.102890,
		32.570278, 34.676048, 41.461102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284927, 34.490269, 42.092827>,  <32.942337, 34.087502, 41.533127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284927, 34.490269, 42.092827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.939186, 34.648090, 41.968109>,  <32.731739, 34.742783, 41.893280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.939186, 34.648090, 41.968109>,  <33.284927, 34.490269, 42.092827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939186, 34.648090, 41.968109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259986, 0.180123, 0.948664,
		0.430457, 0.901047, -0.053113,
		-0.864358, 0.394550, -0.311794,
		32.679878, 34.766457, 41.874573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292480, 34.993660, 42.598778>,  <33.284927, 34.490269, 42.092827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292480, 34.993660, 42.598778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.919163, 34.957382, 42.459789>,  <32.695171, 34.935616, 42.376396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.919163, 34.957382, 42.459789>,  <33.292480, 34.993660, 42.598778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919163, 34.957382, 42.459789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336718, -0.115336, 0.934515,
		-0.124827, 0.989178, 0.077105,
		-0.933295, -0.090690, -0.347471,
		32.639175, 34.930176, 42.355549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911594, 35.460442, 43.050488>,  <33.292480, 34.993660, 42.598778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911594, 35.460442, 43.050488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.627934, 35.243832, 42.869888>,  <32.457737, 35.113865, 42.761528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.627934, 35.243832, 42.869888>,  <32.911594, 35.460442, 43.050488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627934, 35.243832, 42.869888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469520, -0.115007, 0.875399,
		-0.525977, 0.832780, -0.172700,
		-0.709154, -0.541526, -0.451498,
		32.415188, 35.081375, 42.734440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322857, 35.736652, 43.402630>,  <32.911594, 35.460442, 43.050488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322857, 35.736652, 43.402630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.189098, 35.393009, 43.247654>,  <32.108845, 35.186825, 43.154667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.189098, 35.393009, 43.247654>,  <32.322857, 35.736652, 43.402630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189098, 35.393009, 43.247654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526519, -0.170665, 0.832857,
		-0.781637, 0.482501, -0.395267,
		-0.334397, -0.859108, -0.387444,
		32.088779, 35.135277, 43.131420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658878, 35.714020, 43.659725>,  <32.322857, 35.736652, 43.402630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658878, 35.714020, 43.659725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.781136, 35.343296, 43.572449>,  <31.854490, 35.120861, 43.520084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.781136, 35.343296, 43.572449>,  <31.658878, 35.714020, 43.659725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781136, 35.343296, 43.572449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432102, -0.339216, 0.835596,
		-0.848451, -0.161115, -0.504156,
		0.305645, -0.926809, -0.218190,
		31.872829, 35.065254, 43.506992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079472, 35.285717, 43.819454>,  <31.658878, 35.714020, 43.659725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079472, 35.285717, 43.819454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.400631, 35.047935, 43.837273>,  <31.593327, 34.905266, 43.847965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.400631, 35.047935, 43.837273>,  <31.079472, 35.285717, 43.819454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400631, 35.047935, 43.837273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382849, -0.456929, 0.802896,
		-0.456929, -0.661697, -0.594452,
		-0.802896, 0.594452, -0.044546,
		31.641500, 34.869598, 43.850636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809437, 34.571003, 43.897377>,  <31.079472, 35.285717, 43.819454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809437, 34.571003, 43.897377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.197262, 34.538025, 43.989601>,  <31.429956, 34.518238, 44.044933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.197262, 34.538025, 43.989601>,  <30.809437, 34.571003, 43.897377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197262, 34.538025, 43.989601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242310, -0.458418, 0.855066,
		0.035198, -0.884905, -0.464441,
		0.969560, -0.082442, 0.230557,
		31.488131, 34.513290, 44.058769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907120, 33.817272, 44.193218>,  <30.809437, 34.571003, 43.897377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907120, 33.817272, 44.193218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.245420, 33.994289, 44.312454>,  <31.448400, 34.100502, 44.383995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.245420, 33.994289, 44.312454>,  <30.907120, 33.817272, 44.193218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245420, 33.994289, 44.312454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061374, -0.474272, 0.878237,
		0.530035, -0.761065, -0.373956,
		0.845752, 0.442545, 0.298090,
		31.499146, 34.127052, 44.401882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194698, 33.299339, 44.582829>,  <30.907120, 33.817272, 44.193218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194698, 33.299339, 44.582829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.353346, 33.640755, 44.717983>,  <31.448534, 33.845604, 44.799076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.353346, 33.640755, 44.717983>,  <31.194698, 33.299339, 44.582829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353346, 33.640755, 44.717983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017975, -0.360780, 0.932478,
		0.917807, -0.375912, -0.127750,
		0.396619, 0.853539, 0.337883,
		31.472332, 33.896816, 44.819347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503168, 33.092926, 45.256992>,  <31.194698, 33.299339, 44.582829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503168, 33.092926, 45.256992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.532087, 33.491795, 45.265221>,  <31.549438, 33.731117, 45.270157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.532087, 33.491795, 45.265221>,  <31.503168, 33.092926, 45.256992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532087, 33.491795, 45.265221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054062, -0.024514, 0.998237,
		0.995917, -0.071057, -0.055681,
		0.072297, 0.997171, 0.020573,
		31.553776, 33.790947, 45.271393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184135, 33.281475, 45.452976>,  <31.503168, 33.092926, 45.256992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184135, 33.281475, 45.452976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.893438, 33.541637, 45.541351>,  <31.719021, 33.697735, 45.594376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.893438, 33.541637, 45.541351>,  <32.184135, 33.281475, 45.452976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893438, 33.541637, 45.541351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006023, -0.315593, 0.948876,
		0.686885, 0.690918, 0.225437,
		-0.726742, 0.650410, 0.220938,
		31.675415, 33.736759, 45.607632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398151, 33.680820, 46.055603>,  <32.184135, 33.281475, 45.452976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398151, 33.680820, 46.055603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.999369, 33.711834, 46.052418>,  <31.760099, 33.730442, 46.050507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.999369, 33.711834, 46.052418>,  <32.398151, 33.680820, 46.055603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999369, 33.711834, 46.052418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036817, -0.378429, 0.924898,
		0.068699, 0.922377, 0.380132,
		-0.996958, 0.077535, -0.007962,
		31.700281, 33.735096, 46.050030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837074, 34.247822, 45.760269>,  <32.398151, 33.680820, 46.055603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837074, 34.247822, 45.760269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.222099, 34.300514, 45.855022>,  <33.453114, 34.332130, 45.911873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.222099, 34.300514, 45.855022>,  <32.837074, 34.247822, 45.760269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222099, 34.300514, 45.855022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250027, -0.094117, -0.963654,
		-0.104647, 0.986808, -0.123529,
		0.962567, 0.131729, 0.236880,
		33.510868, 34.340034, 45.926086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098118, 34.648956, 45.288322>,  <32.837074, 34.247822, 45.760269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098118, 34.648956, 45.288322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.436867, 34.502941, 45.443016>,  <33.640114, 34.415333, 45.535831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.436867, 34.502941, 45.443016>,  <33.098118, 34.648956, 45.288322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436867, 34.502941, 45.443016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294749, -0.283123, -0.912669,
		0.442649, 0.886900, -0.132174,
		0.846868, -0.365034, 0.386737,
		33.690926, 34.393433, 45.559036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654324, 34.914520, 44.811485>,  <33.098118, 34.648956, 45.288322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654324, 34.914520, 44.811485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.866058, 34.636494, 45.006088>,  <33.993099, 34.469677, 45.122849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.866058, 34.636494, 45.006088>,  <33.654324, 34.914520, 44.811485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866058, 34.636494, 45.006088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517006, -0.190398, -0.834538,
		0.672687, 0.693278, 0.258567,
		0.529336, -0.695064, 0.486508,
		34.024860, 34.427975, 45.152042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451336, 35.089798, 44.701984>,  <33.654324, 34.914520, 44.811485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451336, 35.089798, 44.701984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.390076, 34.703819, 44.787228>,  <34.353317, 34.472233, 44.838375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.390076, 34.703819, 44.787228>,  <34.451336, 35.089798, 44.701984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390076, 34.703819, 44.787228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578644, -0.262388, -0.772220,
		0.801071, 0.005048, 0.598548,
		-0.153154, -0.964949, 0.213112,
		34.344128, 34.414333, 44.851162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129791, 34.744675, 44.736755>,  <34.451336, 35.089798, 44.701984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129791, 34.744675, 44.736755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.838619, 34.483093, 44.654331>,  <34.663914, 34.326145, 44.604877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.838619, 34.483093, 44.654331>,  <35.129791, 34.744675, 44.736755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838619, 34.483093, 44.654331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546563, -0.371990, -0.750261,
		0.413982, -0.658765, 0.628210,
		-0.727934, -0.653951, -0.206060,
		34.620239, 34.286907, 44.592514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520199, 34.105068, 44.689949>,  <35.129791, 34.744675, 44.736755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520199, 34.105068, 44.689949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.173409, 34.063419, 44.495007>,  <34.965336, 34.038429, 44.378040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.173409, 34.063419, 44.495007>,  <35.520199, 34.105068, 44.689949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173409, 34.063419, 44.495007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487038, -0.384214, -0.784330,
		-0.105585, -0.917354, 0.383813,
		-0.866975, -0.104118, -0.487354,
		34.913315, 34.032185, 44.348801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532463, 33.452137, 44.208225>,  <35.520199, 34.105068, 44.689949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532463, 33.452137, 44.208225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.229485, 33.654785, 44.043488>,  <35.047699, 33.776375, 43.944645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.229485, 33.654785, 44.043488>,  <35.532463, 33.452137, 44.208225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229485, 33.654785, 44.043488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403366, -0.132901, -0.905336,
		-0.513392, -0.851867, -0.103687,
		-0.757445, 0.506616, -0.411845,
		35.002251, 33.806770, 43.919933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307922, 33.006340, 43.627155>,  <35.532463, 33.452137, 44.208225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307922, 33.006340, 43.627155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.163864, 33.374382, 43.565571>,  <35.077427, 33.595207, 43.528618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.163864, 33.374382, 43.565571>,  <35.307922, 33.006340, 43.627155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163864, 33.374382, 43.565571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368542, -0.011288, -0.929542,
		-0.857012, -0.391515, -0.335031,
		-0.360148, 0.920102, -0.153964,
		35.055820, 33.650414, 43.519382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836178, 32.903561, 43.161892>,  <35.307922, 33.006340, 43.627155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836178, 32.903561, 43.161892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.951168, 33.286453, 43.148792>,  <35.020161, 33.516190, 43.140934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.951168, 33.286453, 43.148792>,  <34.836178, 32.903561, 43.161892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951168, 33.286453, 43.148792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161381, -0.082109, -0.983471,
		-0.944094, 0.277440, -0.178083,
		0.287476, 0.957228, -0.032745,
		35.037411, 33.573620, 43.138969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595081, 33.159397, 42.533257>,  <34.836178, 32.903561, 43.161892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595081, 33.159397, 42.533257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.850830, 33.440018, 42.659134>,  <35.004280, 33.608391, 42.734661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.850830, 33.440018, 42.659134>,  <34.595081, 33.159397, 42.533257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850830, 33.440018, 42.659134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267453, 0.180800, -0.946457,
		-0.720880, 0.689306, -0.072032,
		0.639375, 0.701547, 0.314692,
		35.042645, 33.650482, 42.753540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552261, 33.804813, 42.088730>,  <34.595081, 33.159397, 42.533257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552261, 33.804813, 42.088730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.914921, 33.800774, 42.257435>,  <35.132515, 33.798351, 42.358658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.914921, 33.800774, 42.257435>,  <34.552261, 33.804813, 42.088730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914921, 33.800774, 42.257435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409886, 0.257817, -0.874942,
		-0.099905, 0.966141, 0.237887,
		0.906649, -0.010095, 0.421765,
		35.186916, 33.797745, 42.383965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891426, 34.370094, 41.782909>,  <34.552261, 33.804813, 42.088730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891426, 34.370094, 41.782909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.175438, 34.124958, 41.921642>,  <35.345844, 33.977879, 42.004883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.175438, 34.124958, 41.921642>,  <34.891426, 34.370094, 41.782909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175438, 34.124958, 41.921642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512754, 0.112372, -0.851150,
		0.482643, 0.782178, 0.394022,
		0.710028, -0.612838, 0.346829,
		35.388447, 33.941105, 42.025692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506935, 34.702080, 41.585678>,  <34.891426, 34.370094, 41.782909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506935, 34.702080, 41.585678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.608650, 34.319511, 41.643078>,  <35.669682, 34.089970, 41.677517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.608650, 34.319511, 41.643078>,  <35.506935, 34.702080, 41.585678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608650, 34.319511, 41.643078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650507, 0.059353, -0.757177,
		0.715665, 0.285889, 0.637253,
		0.254291, -0.956423, 0.143496,
		35.684937, 34.032585, 41.686127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277794, 34.678894, 41.756592>,  <35.506935, 34.702080, 41.585678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277794, 34.678894, 41.756592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.141224, 34.347160, 41.579674>,  <36.059280, 34.148121, 41.473522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.141224, 34.347160, 41.579674>,  <36.277794, 34.678894, 41.756592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141224, 34.347160, 41.579674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504666, 0.235234, -0.830648,
		0.792932, -0.506817, 0.338224,
		-0.341425, -0.829338, -0.442298,
		36.038795, 34.098358, 41.446983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.544426, 41.529152, 36.333321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.189682, 41.672829, 36.449574>,  <29.976835, 41.759033, 36.519325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.189682, 41.672829, 36.449574>,  <30.544426, 41.529152, 36.333321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189682, 41.672829, 36.449574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391116, -0.918490, -0.058340,
		0.245985, -0.165410, 0.955055,
		-0.886859, 0.359187, 0.290630,
		29.923624, 41.780586, 36.536762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407921, 41.182888, 36.941181>,  <30.544426, 41.529152, 36.333321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407921, 41.182888, 36.941181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.070061, 41.314690, 36.772423>,  <29.867346, 41.393772, 36.671169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.070061, 41.314690, 36.772423>,  <30.407921, 41.182888, 36.941181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070061, 41.314690, 36.772423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340662, -0.938791, -0.051191,
		-0.412938, 0.100484, 0.905199,
		-0.844649, 0.329506, -0.421894,
		29.816666, 41.413540, 36.645855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981169, 40.735870, 37.180859>,  <30.407921, 41.182888, 36.941181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981169, 40.735870, 37.180859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.740004, 40.917519, 36.918480>,  <29.595304, 41.026508, 36.761051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.740004, 40.917519, 36.918480>,  <29.981169, 40.735870, 37.180859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740004, 40.917519, 36.918480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528577, -0.843217, -0.097934,
		-0.597581, 0.287673, 0.748425,
		-0.602912, 0.454124, -0.655949,
		29.559130, 41.053757, 36.721695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324919, 40.435204, 37.393398>,  <29.981169, 40.735870, 37.180859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324919, 40.435204, 37.393398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.325949, 40.568672, 37.016323>,  <29.326567, 40.648754, 36.790077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.325949, 40.568672, 37.016323>,  <29.324919, 40.435204, 37.393398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325949, 40.568672, 37.016323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324601, -0.891363, -0.316395,
		-0.945848, 0.306811, 0.106015,
		0.002576, 0.333674, -0.942685,
		29.326721, 40.668774, 36.733517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652599, 40.142807, 37.139027>,  <29.324919, 40.435204, 37.393398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652599, 40.142807, 37.139027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.870348, 40.242592, 36.818668>,  <29.000998, 40.302464, 36.626453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.870348, 40.242592, 36.818668>,  <28.652599, 40.142807, 37.139027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870348, 40.242592, 36.818668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301786, -0.832585, -0.464464,
		-0.782678, 0.494539, -0.377950,
		0.544371, 0.249466, -0.800891,
		29.033659, 40.317432, 36.578400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171322, 40.196674, 36.632492>,  <28.652599, 40.142807, 37.139027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171322, 40.196674, 36.632492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.535694, 40.107353, 36.493732>,  <28.754318, 40.053761, 36.410477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.535694, 40.107353, 36.493732>,  <28.171322, 40.196674, 36.632492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535694, 40.107353, 36.493732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339769, -0.883014, -0.323794,
		-0.234009, 0.412819, -0.880239,
		0.910932, -0.223307, -0.346896,
		28.808973, 40.040359, 36.389664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118591, 40.007072, 35.975758>,  <28.171322, 40.196674, 36.632492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118591, 40.007072, 35.975758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475151, 39.843025, 36.052917>,  <28.689087, 39.744598, 36.099213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475151, 39.843025, 36.052917>,  <28.118591, 40.007072, 35.975758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475151, 39.843025, 36.052917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250703, -0.800775, -0.543974,
		0.377563, 0.436537, -0.816628,
		0.891400, -0.410116, 0.192902,
		28.742571, 39.719990, 36.110786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268835, 39.673046, 35.216446>,  <28.118591, 40.007072, 35.975758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268835, 39.673046, 35.216446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.481941, 39.523319, 35.520035>,  <28.609804, 39.433483, 35.702190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.481941, 39.523319, 35.520035>,  <28.268835, 39.673046, 35.216446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481941, 39.523319, 35.520035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177313, -0.926324, -0.332392,
		0.827479, 0.042511, -0.559886,
		0.532766, -0.374322, 0.758976,
		28.641771, 39.411022, 35.747726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665390, 39.108124, 34.880516>,  <28.268835, 39.673046, 35.216446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665390, 39.108124, 34.880516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.642084, 39.052326, 35.275917>,  <28.628099, 39.018848, 35.513157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.642084, 39.052326, 35.275917>,  <28.665390, 39.108124, 34.880516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642084, 39.052326, 35.275917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170025, -0.974336, -0.147519,
		0.983716, -0.176666, 0.033052,
		-0.058266, -0.139497, 0.988507,
		28.624603, 39.010479, 35.572468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167702, 38.591652, 34.955441>,  <28.665390, 39.108124, 34.880516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167702, 38.591652, 34.955441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.947086, 38.592842, 35.289097>,  <28.814716, 38.593555, 35.489292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.947086, 38.592842, 35.289097>,  <29.167702, 38.591652, 34.955441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947086, 38.592842, 35.289097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188598, -0.974543, -0.121230,
		0.812549, -0.224181, 0.538059,
		-0.551539, 0.002972, 0.834144,
		28.781624, 38.593735, 35.539341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333023, 38.004990, 35.308094>,  <29.167702, 38.591652, 34.955441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333023, 38.004990, 35.308094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.980543, 38.108097, 35.466610>,  <28.769056, 38.169960, 35.561718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.980543, 38.108097, 35.466610>,  <29.333023, 38.004990, 35.308094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980543, 38.108097, 35.466610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234737, -0.966206, 0.106507,
		0.410351, 0.000830, 0.911927,
		-0.881198, 0.257768, 0.396289,
		28.716183, 38.185429, 35.585495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274279, 37.466263, 35.715252>,  <29.333023, 38.004990, 35.308094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274279, 37.466263, 35.715252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.917990, 37.640766, 35.664188>,  <28.704216, 37.745468, 35.633553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.917990, 37.640766, 35.664188>,  <29.274279, 37.466263, 35.715252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917990, 37.640766, 35.664188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448655, -0.888872, 0.092813,
		-0.072980, 0.139944, 0.987466,
		-0.890720, 0.436259, -0.127657,
		28.650774, 37.771645, 35.625893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883757, 37.218014, 36.254467>,  <29.274279, 37.466263, 35.715252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883757, 37.218014, 36.254467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.625513, 37.338840, 35.973911>,  <28.470568, 37.411335, 35.805576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.625513, 37.338840, 35.973911>,  <28.883757, 37.218014, 36.254467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625513, 37.338840, 35.973911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628753, -0.731525, 0.263705,
		-0.433428, 0.611251, 0.662203,
		-0.645608, 0.302065, -0.701389,
		28.431831, 37.429459, 35.763496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125015, 37.216007, 36.574718>,  <28.883757, 37.218014, 36.254467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125015, 37.216007, 36.574718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.082142, 37.230400, 36.177284>,  <28.056417, 37.239037, 35.938824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.082142, 37.230400, 36.177284>,  <28.125015, 37.216007, 36.574718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082142, 37.230400, 36.177284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870459, -0.486293, 0.076292,
		-0.480430, 0.873055, 0.083440,
		-0.107183, 0.035978, -0.993588,
		28.049988, 37.241192, 35.879208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486391, 37.286541, 36.461620>,  <28.125015, 37.216007, 36.574718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.486391, 37.286541, 36.461620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.594568, 37.166973, 36.095558>,  <27.659473, 37.095230, 35.875923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.594568, 37.166973, 36.095558>,  <27.486391, 37.286541, 36.461620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594568, 37.166973, 36.095558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866696, -0.489463, -0.096245,
		-0.419164, 0.819189, -0.391447,
		0.270442, -0.298923, -0.915154,
		27.675701, 37.077297, 35.821011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841772, 37.222912, 36.037258>,  <27.486391, 37.286541, 36.461620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841772, 37.222912, 36.037258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.125851, 37.015736, 35.846531>,  <27.296297, 36.891430, 35.732094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.125851, 37.015736, 35.846531>,  <26.841772, 37.222912, 36.037258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125851, 37.015736, 35.846531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678126, -0.685242, -0.265685,
		-0.189127, 0.512032, -0.837887,
		0.710195, -0.517944, -0.476820,
		27.338909, 36.860352, 35.703484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.701593, 37.131908, 35.270679>,  <26.841772, 37.222912, 36.037258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.701593, 37.131908, 35.270679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.930431, 36.824177, 35.384407>,  <27.067734, 36.639538, 35.452644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.930431, 36.824177, 35.384407>,  <26.701593, 37.131908, 35.270679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.930431, 36.824177, 35.384407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703357, -0.638498, -0.312427,
		0.421897, -0.021241, -0.906395,
		0.572095, -0.769331, 0.284320,
		27.102060, 36.593376, 35.469704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610445, 36.636318, 34.830540>,  <26.701593, 37.131908, 35.270679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610445, 36.636318, 34.830540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.817751, 36.397533, 35.075500>,  <26.942135, 36.254261, 35.222477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.817751, 36.397533, 35.075500>,  <26.610445, 36.636318, 34.830540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.817751, 36.397533, 35.075500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466158, -0.797534, -0.382930,
		0.717007, -0.087017, -0.691614,
		0.518264, -0.596965, 0.612401,
		26.973230, 36.218445, 35.259220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.993946, 36.176041, 34.309513>,  <26.610445, 36.636318, 34.830540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.993946, 36.176041, 34.309513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.967278, 35.995296, 34.665352>,  <26.951277, 35.886848, 34.878853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.967278, 35.995296, 34.665352>,  <26.993946, 36.176041, 34.309513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967278, 35.995296, 34.665352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374243, -0.815162, -0.442101,
		0.924931, -0.362400, -0.114758,
		-0.066671, -0.451861, 0.889594,
		26.947277, 35.859737, 34.932232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.214472, 35.491291, 34.250336>,  <26.993946, 36.176041, 34.309513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.214472, 35.491291, 34.250336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.001812, 35.487549, 34.589100>,  <26.874216, 35.485306, 34.792358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.001812, 35.487549, 34.589100>,  <27.214472, 35.491291, 34.250336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001812, 35.487549, 34.589100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664604, -0.615244, -0.424002,
		0.525023, -0.788282, 0.320879,
		-0.531651, -0.009353, 0.846912,
		26.842316, 35.484741, 34.843174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460535, 34.819199, 34.030857>,  <27.214472, 35.491291, 34.250336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.460535, 34.819199, 34.030857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.739969, 34.535324, 33.994347>,  <27.907629, 34.365002, 33.972443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.739969, 34.535324, 33.994347>,  <27.460535, 34.819199, 34.030857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739969, 34.535324, 33.994347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674445, 0.610497, 0.415232,
		-0.238962, -0.351633, 0.905125,
		0.698585, -0.709682, -0.091271,
		27.949545, 34.322418, 33.966965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791658, 34.744041, 34.625458>,  <27.460535, 34.819199, 34.030857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.791658, 34.744041, 34.625458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.067883, 34.633743, 34.357998>,  <28.233616, 34.567562, 34.197521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.067883, 34.633743, 34.357998>,  <27.791658, 34.744041, 34.625458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067883, 34.633743, 34.357998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627471, 0.688205, 0.364217,
		0.359736, -0.671071, 0.648270,
		0.690558, -0.275749, -0.668649,
		28.275049, 34.551018, 34.157402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406082, 34.730614, 34.964027>,  <27.791658, 34.744041, 34.625458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406082, 34.730614, 34.964027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.553234, 34.706470, 34.592861>,  <28.641525, 34.691986, 34.370163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.553234, 34.706470, 34.592861>,  <28.406082, 34.730614, 34.964027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553234, 34.706470, 34.592861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815623, 0.500180, 0.290826,
		0.446570, -0.863816, 0.233233,
		0.367878, -0.060356, -0.927913,
		28.663597, 34.688362, 34.314487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977440, 34.974503, 35.110222>,  <28.406082, 34.730614, 34.964027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977440, 34.974503, 35.110222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.021950, 34.918407, 34.716682>,  <29.048655, 34.884750, 34.480560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.021950, 34.918407, 34.716682>,  <28.977440, 34.974503, 35.110222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021950, 34.918407, 34.716682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870859, 0.490703, 0.028548,
		0.478772, -0.859967, 0.176732,
		0.111274, -0.140241, -0.983845,
		29.055332, 34.876335, 34.421528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540627, 34.658291, 35.020985>,  <28.977440, 34.974503, 35.110222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540627, 34.658291, 35.020985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.444479, 34.885071, 34.705826>,  <29.386791, 35.021141, 34.516731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.444479, 34.885071, 34.705826>,  <29.540627, 34.658291, 35.020985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444479, 34.885071, 34.705826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852863, 0.510952, 0.107481,
		0.463516, -0.646137, -0.606349,
		-0.240368, 0.566952, -0.787901,
		29.372368, 35.055157, 34.469456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153517, 34.621323, 34.615223>,  <29.540627, 34.658291, 35.020985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153517, 34.621323, 34.615223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.948849, 34.942921, 34.494038>,  <29.826048, 35.135880, 34.421326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.948849, 34.942921, 34.494038>,  <30.153517, 34.621323, 34.615223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948849, 34.942921, 34.494038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835945, 0.547307, 0.040620,
		0.198470, -0.232473, -0.952137,
		-0.511669, 0.803997, -0.302959,
		29.795347, 35.184120, 34.403149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682693, 34.961510, 34.207413>,  <30.153517, 34.621323, 34.615223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682693, 34.961510, 34.207413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.408365, 35.247555, 34.261486>,  <30.243769, 35.419182, 34.293930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.408365, 35.247555, 34.261486>,  <30.682693, 34.961510, 34.207413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408365, 35.247555, 34.261486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727581, 0.669442, 0.149911,
		0.016707, 0.201166, -0.979415,
		-0.685818, 0.715108, 0.135180,
		30.202620, 35.462086, 34.302040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935686, 35.549530, 33.777996>,  <30.682693, 34.961510, 34.207413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935686, 35.549530, 33.777996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.668497, 35.703426, 34.032803>,  <30.508183, 35.795765, 34.185684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.668497, 35.703426, 34.032803>,  <30.935686, 35.549530, 33.777996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668497, 35.703426, 34.032803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655656, 0.709177, 0.259198,
		-0.352032, 0.590799, -0.725968,
		-0.667974, 0.384739, 0.637014,
		30.468105, 35.818848, 34.223907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094154, 36.301941, 33.605049>,  <30.935686, 35.549530, 33.777996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094154, 36.301941, 33.605049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.912193, 36.268009, 33.959644>,  <30.803017, 36.247650, 34.172401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.912193, 36.268009, 33.959644>,  <31.094154, 36.301941, 33.605049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912193, 36.268009, 33.959644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385777, 0.878431, 0.282021,
		-0.802645, 0.470280, -0.366875,
		-0.454903, -0.084831, 0.886491,
		30.775723, 36.242561, 34.225594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718687, 36.938213, 33.726734>,  <31.094154, 36.301941, 33.605049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718687, 36.938213, 33.726734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.769381, 36.778770, 34.090061>,  <30.799797, 36.683105, 34.308060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.769381, 36.778770, 34.090061>,  <30.718687, 36.938213, 33.726734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769381, 36.778770, 34.090061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410513, 0.854684, 0.317797,
		-0.903005, 0.332603, 0.271952,
		0.126733, -0.398612, 0.908321,
		30.807400, 36.659187, 34.362556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688215, 37.535152, 34.128304>,  <30.718687, 36.938213, 33.726734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688215, 37.535152, 34.128304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.853659, 37.266006, 34.373638>,  <30.952925, 37.104519, 34.520840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.853659, 37.266006, 34.373638>,  <30.688215, 37.535152, 34.128304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853659, 37.266006, 34.373638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401050, 0.739430, 0.540742,
		-0.817366, 0.022324, 0.575686,
		0.413608, -0.672864, 0.613338,
		30.977741, 37.064148, 34.557640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471127, 37.687725, 34.821102>,  <30.688215, 37.535152, 34.128304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471127, 37.687725, 34.821102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.799576, 37.463306, 34.863018>,  <30.996645, 37.328655, 34.888168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.799576, 37.463306, 34.863018>,  <30.471127, 37.687725, 34.821102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799576, 37.463306, 34.863018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358624, 0.650000, 0.669991,
		-0.444007, -0.512568, 0.734937,
		0.821125, -0.561047, 0.104786,
		31.045914, 37.294991, 34.894455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569687, 37.498863, 35.576599>,  <30.471127, 37.687725, 34.821102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569687, 37.498863, 35.576599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.911312, 37.477882, 35.369591>,  <31.116287, 37.465294, 35.245388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.911312, 37.477882, 35.369591>,  <30.569687, 37.498863, 35.576599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911312, 37.477882, 35.369591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411457, 0.676806, 0.610439,
		0.318241, -0.734290, 0.599616,
		0.854064, -0.052450, -0.517517,
		31.167532, 37.462147, 35.214336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124825, 37.703648, 36.036720>,  <30.569687, 37.498863, 35.576599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124825, 37.703648, 36.036720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.307272, 37.778072, 35.688622>,  <31.416740, 37.822727, 35.479763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.307272, 37.778072, 35.688622>,  <31.124825, 37.703648, 36.036720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307272, 37.778072, 35.688622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432749, 0.808119, 0.399589,
		0.777613, -0.558861, 0.288084,
		0.456121, 0.186057, -0.870251,
		31.444107, 37.833889, 35.427547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632589, 38.104946, 36.240032>,  <31.124825, 37.703648, 36.036720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632589, 38.104946, 36.240032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.684048, 38.161282, 35.847378>,  <31.714922, 38.195084, 35.611786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.684048, 38.161282, 35.847378>,  <31.632589, 38.104946, 36.240032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684048, 38.161282, 35.847378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709069, 0.678965, 0.190335,
		0.693304, -0.720536, -0.012516,
		0.128646, 0.140835, -0.981640,
		31.722641, 38.203533, 35.552887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270439, 38.251549, 36.190754>,  <31.632589, 38.104946, 36.240032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270439, 38.251549, 36.190754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.114037, 38.427879, 35.867573>,  <32.020195, 38.533676, 35.673664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.114037, 38.427879, 35.867573>,  <32.270439, 38.251549, 36.190754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114037, 38.427879, 35.867573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450504, 0.857158, 0.249651,
		0.802597, -0.266371, -0.533746,
		-0.391005, 0.440824, -0.807954,
		31.996735, 38.560127, 35.625187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776127, 38.681824, 36.003956>,  <32.270439, 38.251549, 36.190754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776127, 38.681824, 36.003956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.464500, 38.835808, 35.806023>,  <32.277523, 38.928200, 35.687263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.464500, 38.835808, 35.806023>,  <32.776127, 38.681824, 36.003956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464500, 38.835808, 35.806023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356326, 0.921293, 0.155729,
		0.515834, -0.054998, -0.854921,
		-0.779068, 0.384961, -0.494831,
		32.230782, 38.951298, 35.657574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995342, 39.240936, 35.691139>,  <32.776127, 38.681824, 36.003956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995342, 39.240936, 35.691139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.601654, 39.310368, 35.704876>,  <32.365440, 39.352024, 35.713116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.601654, 39.310368, 35.704876>,  <32.995342, 39.240936, 35.691139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601654, 39.310368, 35.704876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176726, 0.973875, 0.142600,
		-0.008689, 0.146419, -0.989185,
		-0.984222, 0.173575, 0.034338,
		32.306389, 39.362442, 35.715176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914276, 39.792721, 35.240704>,  <32.995342, 39.240936, 35.691139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914276, 39.792721, 35.240704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.592960, 39.765911, 35.477428>,  <32.400169, 39.749825, 35.619461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.592960, 39.765911, 35.477428>,  <32.914276, 39.792721, 35.240704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592960, 39.765911, 35.477428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117962, 0.956061, 0.268389,
		-0.583792, 0.285404, -0.760086,
		-0.803288, -0.067022, 0.591807,
		32.351974, 39.745804, 35.654972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479652, 40.418198, 35.111710>,  <32.914276, 39.792721, 35.240704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479652, 40.418198, 35.111710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.362366, 40.273346, 35.465633>,  <32.291992, 40.186436, 35.677986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.362366, 40.273346, 35.465633>,  <32.479652, 40.418198, 35.111710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362366, 40.273346, 35.465633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154609, 0.931268, 0.329903,
		-0.943461, -0.040067, -0.329052,
		-0.293217, -0.362125, 0.884810,
		32.274399, 40.164707, 35.731075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983112, 40.837761, 35.299393>,  <32.479652, 40.418198, 35.111710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983112, 40.837761, 35.299393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.101517, 40.666759, 35.641064>,  <32.172558, 40.564159, 35.846066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.101517, 40.666759, 35.641064>,  <31.983112, 40.837761, 35.299393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101517, 40.666759, 35.641064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060699, 0.884025, 0.463482,
		-0.953255, -0.189042, 0.235730,
		0.296009, -0.427507, 0.854176,
		32.190319, 40.538506, 35.897316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496729, 41.114498, 35.792416>,  <31.983112, 40.837761, 35.299393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496729, 41.114498, 35.792416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.825375, 41.011032, 35.995609>,  <32.022560, 40.948952, 36.117523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.825375, 41.011032, 35.995609>,  <31.496729, 41.114498, 35.792416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825375, 41.011032, 35.995609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062766, 0.844658, 0.531614,
		-0.566579, -0.468665, 0.677747,
		0.821614, -0.258661, 0.507982,
		32.071857, 40.933434, 36.148003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.756268, 32.857906, 46.817764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.417534, 32.649609, 46.861027>,  <37.214294, 32.524632, 46.886986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.417534, 32.649609, 46.861027>,  <37.756268, 32.857906, 46.817764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417534, 32.649609, 46.861027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150766, -0.040018, 0.987759,
		-0.510038, 0.852777, 0.112399,
		-0.846836, -0.520740, 0.108159,
		37.163483, 32.493385, 46.893475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587872, 33.180882, 47.345306>,  <37.756268, 32.857906, 46.817764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587872, 33.180882, 47.345306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.365868, 32.848717, 47.325802>,  <37.232666, 32.649418, 47.314098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.365868, 32.848717, 47.325802>,  <37.587872, 33.180882, 47.345306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365868, 32.848717, 47.325802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008647, -0.052861, 0.998564,
		-0.831799, 0.554634, 0.022158,
		-0.555009, -0.830414, -0.048766,
		37.199364, 32.599594, 47.311172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142757, 33.335484, 47.701691>,  <37.587872, 33.180882, 47.345306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142757, 33.335484, 47.701691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063389, 32.943760, 47.685787>,  <37.015770, 32.708725, 47.676247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063389, 32.943760, 47.685787>,  <37.142757, 33.335484, 47.701691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063389, 32.943760, 47.685787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163284, -0.006971, 0.986554,
		-0.966420, 0.202244, -0.158522,
		-0.198419, -0.979310, -0.039760,
		37.003864, 32.649967, 47.673859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499851, 33.263294, 47.938881>,  <37.142757, 33.335484, 47.701691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499851, 33.263294, 47.938881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.631607, 32.890034, 47.996471>,  <36.710659, 32.666077, 48.031025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.631607, 32.890034, 47.996471>,  <36.499851, 33.263294, 47.938881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631607, 32.890034, 47.996471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307283, 0.038239, 0.950850,
		-0.892793, -0.357441, -0.274146,
		0.329390, -0.933152, 0.143975,
		36.730423, 32.610088, 48.039665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016941, 32.872498, 48.265331>,  <36.499851, 33.263294, 47.938881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016941, 32.872498, 48.265331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.368919, 32.701191, 48.347584>,  <36.580105, 32.598408, 48.396935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.368919, 32.701191, 48.347584>,  <36.016941, 32.872498, 48.265331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368919, 32.701191, 48.347584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240249, -0.027738, 0.970315,
		-0.409854, -0.903225, -0.127299,
		0.879943, -0.428271, 0.205630,
		36.632904, 32.572708, 48.409271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814568, 32.363678, 48.760880>,  <36.016941, 32.872498, 48.265331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814568, 32.363678, 48.760880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.210869, 32.346470, 48.812340>,  <36.448650, 32.336147, 48.843216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.210869, 32.346470, 48.812340>,  <35.814568, 32.363678, 48.760880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210869, 32.346470, 48.812340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133956, -0.160833, 0.977849,
		-0.021372, -0.986044, -0.165108,
		0.990757, -0.043015, 0.128649,
		36.508095, 32.333565, 48.850933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875328, 31.730099, 49.093990>,  <35.814568, 32.363678, 48.760880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875328, 31.730099, 49.093990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.190987, 31.963013, 49.172157>,  <36.380383, 32.102760, 49.219059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.190987, 31.963013, 49.172157>,  <35.875328, 31.730099, 49.093990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190987, 31.963013, 49.172157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088807, -0.206652, 0.974376,
		0.607748, -0.786282, -0.111368,
		0.789149, 0.582285, 0.195420,
		36.427731, 32.137699, 49.230782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285824, 31.316877, 49.531178>,  <35.875328, 31.730099, 49.093990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285824, 31.316877, 49.531178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.405853, 31.693649, 49.591469>,  <36.477871, 31.919712, 49.627644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.405853, 31.693649, 49.591469>,  <36.285824, 31.316877, 49.531178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405853, 31.693649, 49.591469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021785, -0.164735, 0.986097,
		0.953667, -0.292620, -0.069953,
		0.300076, 0.941932, 0.150728,
		36.495876, 31.976229, 49.636688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810120, 31.296740, 50.192532>,  <36.285824, 31.316877, 49.531178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810120, 31.296740, 50.192532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.687035, 31.675339, 50.153641>,  <36.613182, 31.902498, 50.130306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.687035, 31.675339, 50.153641>,  <36.810120, 31.296740, 50.192532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687035, 31.675339, 50.153641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209150, 0.032395, 0.977347,
		0.928206, 0.321080, 0.187991,
		-0.307717, 0.946498, -0.097223,
		36.594719, 31.959288, 50.124474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010769, 31.654207, 50.854877>,  <36.810120, 31.296740, 50.192532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010769, 31.654207, 50.854877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.712948, 31.873541, 50.702579>,  <36.534256, 32.005142, 50.611202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.712948, 31.873541, 50.702579>,  <37.010769, 31.654207, 50.854877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712948, 31.873541, 50.702579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417470, 0.062598, 0.906532,
		0.520916, 0.833913, 0.182306,
		-0.744557, 0.548334, -0.380742,
		36.489582, 32.038040, 50.588356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944527, 32.127991, 51.355339>,  <37.010769, 31.654207, 50.854877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944527, 32.127991, 51.355339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.601608, 32.128708, 51.149410>,  <36.395859, 32.129139, 51.025852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.601608, 32.128708, 51.149410>,  <36.944527, 32.127991, 51.355339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601608, 32.128708, 51.149410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514813, 0.003167, 0.857297,
		0.003167, 0.999994, -0.001792,
		-0.857297, 0.001792, -0.514819,
		36.344418, 32.129246, 50.994965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462009, 32.566631, 51.642750>,  <36.944527, 32.127991, 51.355339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462009, 32.566631, 51.642750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.229069, 32.323177, 51.427185>,  <36.089302, 32.177105, 51.297848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.229069, 32.323177, 51.427185>,  <36.462009, 32.566631, 51.642750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229069, 32.323177, 51.427185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748685, 0.143246, 0.647264,
		-0.316753, 0.780410, -0.539098,
		-0.582355, -0.608638, -0.538908,
		36.054363, 32.140587, 51.265514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796158, 32.876919, 51.407547>,  <36.462009, 32.566631, 51.642750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796158, 32.876919, 51.407547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.774918, 32.481529, 51.464245>,  <35.762173, 32.244293, 51.498264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.774918, 32.481529, 51.464245>,  <35.796158, 32.876919, 51.407547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774918, 32.481529, 51.464245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897212, 0.109545, 0.427797,
		-0.438395, -0.104454, -0.892692,
		-0.053105, -0.988478, 0.141742,
		35.758987, 32.184986, 51.506767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204456, 33.132721, 51.593868>,  <35.796158, 32.876919, 51.407547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204456, 33.132721, 51.593868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822639, 33.058533, 51.687210>,  <34.593552, 33.014019, 51.743214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822639, 33.058533, 51.687210>,  <35.204456, 33.132721, 51.593868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822639, 33.058533, 51.687210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267144, 0.184979, -0.945736,
		0.132245, -0.965081, -0.226118,
		-0.954539, -0.185475, 0.233353,
		34.536278, 33.002892, 51.757217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973083, 32.752098, 51.025837>,  <35.204456, 33.132721, 51.593868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973083, 32.752098, 51.025837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.654545, 32.923241, 51.196846>,  <34.463421, 33.025925, 51.299450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.654545, 32.923241, 51.196846>,  <34.973083, 32.752098, 51.025837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654545, 32.923241, 51.196846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425291, 0.106492, -0.898770,
		-0.430072, -0.897551, 0.097160,
		-0.796345, 0.427857, 0.427520,
		34.415642, 33.051598, 51.325104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421917, 32.482113, 50.699844>,  <34.973083, 32.752098, 51.025837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421917, 32.482113, 50.699844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292324, 32.835320, 50.835678>,  <34.214569, 33.047245, 50.917179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292324, 32.835320, 50.835678>,  <34.421917, 32.482113, 50.699844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292324, 32.835320, 50.835678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276204, 0.255022, -0.926647,
		-0.904848, -0.394008, 0.161272,
		-0.323979, 0.883018, 0.339583,
		34.195129, 33.100224, 50.937553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755985, 32.578674, 50.397678>,  <34.421917, 32.482113, 50.699844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755985, 32.578674, 50.397678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.870872, 32.944458, 50.511707>,  <33.939804, 33.163929, 50.580124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.870872, 32.944458, 50.511707>,  <33.755985, 32.578674, 50.397678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870872, 32.944458, 50.511707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270083, 0.362852, -0.891848,
		-0.919000, 0.179163, 0.351199,
		0.287219, 0.914461, 0.285072,
		33.957039, 33.218796, 50.597229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189716, 33.026268, 50.187065>,  <33.755985, 32.578674, 50.397678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189716, 33.026268, 50.187065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.509514, 33.260860, 50.238995>,  <33.701393, 33.401615, 50.270153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.509514, 33.260860, 50.238995>,  <33.189716, 33.026268, 50.187065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509514, 33.260860, 50.238995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154069, 0.409118, -0.899381,
		-0.580582, 0.699045, 0.417444,
		0.799492, 0.586480, 0.129826,
		33.749363, 33.436806, 50.277943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946232, 33.687649, 49.859772>,  <33.189716, 33.026268, 50.187065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946232, 33.687649, 49.859772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.344730, 33.717728, 49.876961>,  <33.583828, 33.735775, 49.887276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.344730, 33.717728, 49.876961>,  <32.946232, 33.687649, 49.859772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344730, 33.717728, 49.876961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018810, 0.296484, -0.954853,
		-0.084545, 0.952073, 0.293956,
		0.996242, 0.075199, 0.042975,
		33.643604, 33.740288, 49.889854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131683, 34.440533, 49.920540>,  <32.946232, 33.687649, 49.859772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131683, 34.440533, 49.920540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.416695, 34.218678, 49.748646>,  <33.587700, 34.085564, 49.645508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.416695, 34.218678, 49.748646>,  <33.131683, 34.440533, 49.920540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416695, 34.218678, 49.748646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180899, 0.446552, -0.876280,
		0.677922, 0.702114, 0.217847,
		0.712529, -0.554642, -0.429739,
		33.630455, 34.052284, 49.619724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485622, 34.963161, 49.505222>,  <33.131683, 34.440533, 49.920540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485622, 34.963161, 49.505222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.597176, 34.608608, 49.357410>,  <33.664108, 34.395878, 49.268723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.597176, 34.608608, 49.357410>,  <33.485622, 34.963161, 49.505222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597176, 34.608608, 49.357410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069908, 0.402510, -0.912742,
		0.957776, 0.228719, 0.174220,
		0.278887, -0.886382, -0.369525,
		33.680843, 34.342693, 49.246552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921040, 35.153309, 48.875320>,  <33.485622, 34.963161, 49.505222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921040, 35.153309, 48.875320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.850632, 34.762215, 48.829624>,  <33.808388, 34.527557, 48.802204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.850632, 34.762215, 48.829624>,  <33.921040, 35.153309, 48.875320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850632, 34.762215, 48.829624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180581, 0.146157, -0.972640,
		0.967682, -0.150572, -0.202287,
		-0.176018, -0.977735, -0.114243,
		33.797825, 34.468895, 48.795353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521389, 34.811806, 48.448837>,  <33.921040, 35.153309, 48.875320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521389, 34.811806, 48.448837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.181576, 34.604198, 48.411064>,  <33.977688, 34.479633, 48.388401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.181576, 34.604198, 48.411064>,  <34.521389, 34.811806, 48.448837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181576, 34.604198, 48.411064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094284, 0.026740, -0.995186,
		0.519047, -0.854344, 0.026218,
		-0.849530, -0.519020, -0.094430,
		33.926716, 34.448494, 48.382736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755917, 34.227551, 48.071083>,  <34.521389, 34.811806, 48.448837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755917, 34.227551, 48.071083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.362316, 34.289062, 48.035118>,  <34.126156, 34.325970, 48.013538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.362316, 34.289062, 48.035118>,  <34.755917, 34.227551, 48.071083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362316, 34.289062, 48.035118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079210, -0.074369, -0.994080,
		-0.159562, -0.985302, 0.060998,
		-0.984005, 0.153786, -0.089912,
		34.067116, 34.335197, 48.008144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525791, 33.701080, 47.636375>,  <34.755917, 34.227551, 48.071083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525791, 33.701080, 47.636375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.281807, 34.017593, 47.619286>,  <34.135418, 34.207500, 47.609032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.281807, 34.017593, 47.619286>,  <34.525791, 33.701080, 47.636375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281807, 34.017593, 47.619286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072596, -0.109486, -0.991334,
		-0.789098, -0.601574, 0.124226,
		-0.609962, 0.791278, -0.042723,
		34.098820, 34.254978, 47.606468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109753, 33.565403, 47.124630>,  <34.525791, 33.701080, 47.636375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109753, 33.565403, 47.124630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.955215, 33.933079, 47.155178>,  <33.862492, 34.153683, 47.173508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.955215, 33.933079, 47.155178>,  <34.109753, 33.565403, 47.124630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955215, 33.933079, 47.155178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250198, -0.024742, -0.967879,
		-0.887771, -0.393045, 0.239537,
		-0.386346, 0.919187, 0.076373,
		33.839310, 34.208836, 47.178089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520573, 33.522888, 46.808769>,  <34.109753, 33.565403, 47.124630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520573, 33.522888, 46.808769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.609524, 33.912853, 46.812557>,  <33.662895, 34.146832, 46.814831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.609524, 33.912853, 46.812557>,  <33.520573, 33.522888, 46.808769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609524, 33.912853, 46.812557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191017, 0.053089, -0.980150,
		-0.956065, 0.216156, 0.198031,
		0.222378, 0.974914, 0.009467,
		33.676239, 34.205326, 46.815399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922340, 33.970051, 46.596069>,  <33.520573, 33.522888, 46.808769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922340, 33.970051, 46.596069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.257988, 34.159939, 46.489853>,  <33.459377, 34.273872, 46.426121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.257988, 34.159939, 46.489853>,  <32.922340, 33.970051, 46.596069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257988, 34.159939, 46.489853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254047, -0.089633, -0.963030,
		-0.480972, 0.875560, 0.045389,
		0.839122, 0.474721, -0.265544,
		33.509724, 34.302357, 46.410191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215755, 34.068378, 46.677460>,  <32.922340, 33.970051, 46.596069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215755, 34.068378, 46.677460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.889488, 33.865002, 46.567059>,  <31.693727, 33.742977, 46.500816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.889488, 33.865002, 46.567059>,  <32.215755, 34.068378, 46.677460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889488, 33.865002, 46.567059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188147, -0.218013, 0.957638,
		-0.547071, 0.833044, 0.082165,
		-0.815668, -0.508437, -0.276003,
		31.644789, 33.712471, 46.484257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813097, 34.155380, 47.201962>,  <32.215755, 34.068378, 46.677460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813097, 34.155380, 47.201962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.614386, 33.846420, 47.043667>,  <31.495159, 33.661045, 46.948689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.614386, 33.846420, 47.043667>,  <31.813097, 34.155380, 47.201962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614386, 33.846420, 47.043667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317804, -0.262409, 0.911121,
		-0.807597, 0.578391, -0.115114,
		-0.496777, -0.772402, -0.395736,
		31.465353, 33.614700, 46.924946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089087, 34.326241, 47.406765>,  <31.813097, 34.155380, 47.201962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089087, 34.326241, 47.406765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.091148, 33.935841, 47.319687>,  <31.092386, 33.701599, 47.267441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.091148, 33.935841, 47.319687>,  <31.089087, 34.326241, 47.406765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091148, 33.935841, 47.319687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400743, -0.201471, 0.893764,
		-0.916176, 0.082633, -0.392165,
		0.005155, -0.976003, -0.217697,
		31.092695, 33.643040, 47.254379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377750, 33.973946, 47.591362>,  <31.089087, 34.326241, 47.406765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377750, 33.973946, 47.591362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.628559, 33.662395, 47.596882>,  <30.779045, 33.475464, 47.600193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.628559, 33.662395, 47.596882>,  <30.377750, 33.973946, 47.591362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628559, 33.662395, 47.596882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340567, -0.258147, 0.904088,
		-0.700613, -0.571582, -0.427124,
		0.627021, -0.778880, 0.013801,
		30.816666, 33.428730, 47.601021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941570, 33.439808, 47.787872>,  <30.377750, 33.973946, 47.591362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941570, 33.439808, 47.787872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.315321, 33.308983, 47.844406>,  <30.539572, 33.230488, 47.878326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.315321, 33.308983, 47.844406>,  <29.941570, 33.439808, 47.787872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315321, 33.308983, 47.844406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255509, -0.338649, 0.905556,
		-0.248309, -0.882241, -0.399992,
		0.934375, -0.327059, 0.141331,
		30.595634, 33.210865, 47.886806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831945, 32.801590, 48.106174>,  <29.941570, 33.439808, 47.787872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831945, 32.801590, 48.106174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.202173, 32.925552, 48.193150>,  <30.424311, 32.999928, 48.245335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.202173, 32.925552, 48.193150>,  <29.831945, 32.801590, 48.106174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202173, 32.925552, 48.193150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164856, -0.187107, 0.968408,
		0.340798, -0.932175, -0.122092,
		0.925570, 0.309904, 0.217440,
		30.479845, 33.018524, 48.258381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029018, 32.276066, 48.554379>,  <29.831945, 32.801590, 48.106174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029018, 32.276066, 48.554379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.275179, 32.583733, 48.623264>,  <30.422874, 32.768333, 48.664597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.275179, 32.583733, 48.623264>,  <30.029018, 32.276066, 48.554379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275179, 32.583733, 48.623264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080945, -0.155658, 0.984489,
		0.784047, -0.619795, -0.033531,
		0.615400, 0.769172, 0.172212,
		30.459799, 32.814484, 48.674927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299683, 31.570395, 48.327538>,  <30.029018, 32.276066, 48.554379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299683, 31.570395, 48.327538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.982922, 31.353279, 48.215630>,  <29.792866, 31.223011, 48.148483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.982922, 31.353279, 48.215630>,  <30.299683, 31.570395, 48.327538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982922, 31.353279, 48.215630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230494, 0.158569, -0.960067,
		0.565475, -0.824765, -0.000462,
		-0.791903, -0.542787, -0.279771,
		29.745350, 31.190443, 48.131699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534603, 31.235413, 47.657162>,  <30.299683, 31.570395, 48.327538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534603, 31.235413, 47.657162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.137421, 31.195726, 47.683052>,  <29.899111, 31.171915, 47.698586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.137421, 31.195726, 47.683052>,  <30.534603, 31.235413, 47.657162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137421, 31.195726, 47.683052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081078, 0.170775, -0.981968,
		0.086371, -0.980302, -0.177617,
		-0.992958, -0.099214, 0.064731,
		29.839533, 31.165960, 47.702473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306446, 30.678062, 47.201309>,  <30.534603, 31.235413, 47.657162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306446, 30.678062, 47.201309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.993317, 30.923838, 47.240612>,  <29.805439, 31.071302, 47.264194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.993317, 30.923838, 47.240612>,  <30.306446, 30.678062, 47.201309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993317, 30.923838, 47.240612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118199, 0.008201, -0.992956,
		-0.610916, -0.788922, 0.066207,
		-0.782822, 0.614438, 0.098260,
		29.758471, 31.108170, 47.270088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798994, 30.341478, 46.839710>,  <30.306446, 30.678062, 47.201309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798994, 30.341478, 46.839710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.658669, 30.714863, 46.869583>,  <29.574474, 30.938894, 46.887508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.658669, 30.714863, 46.869583>,  <29.798994, 30.341478, 46.839710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658669, 30.714863, 46.869583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296302, -0.034993, -0.954453,
		-0.888333, -0.356963, 0.288862,
		-0.350813, 0.933463, 0.074684,
		29.553425, 30.994902, 46.891987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250175, 30.331776, 46.460915>,  <29.798994, 30.341478, 46.839710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250175, 30.331776, 46.460915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.326866, 30.724291, 46.467976>,  <29.372881, 30.959801, 46.472210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.326866, 30.724291, 46.467976>,  <29.250175, 30.331776, 46.460915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326866, 30.724291, 46.467976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110109, 0.039375, -0.993139,
		-0.975252, 0.188469, 0.115598,
		0.191728, 0.981290, 0.017649,
		29.384384, 31.018677, 46.473270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846487, 30.555534, 45.938072>,  <29.250175, 30.331776, 46.460915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846487, 30.555534, 45.938072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.091881, 30.860363, 46.020908>,  <29.239117, 31.043261, 46.070610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.091881, 30.860363, 46.020908>,  <28.846487, 30.555534, 45.938072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091881, 30.860363, 46.020908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068749, 0.209701, -0.975346,
		-0.786709, 0.612596, 0.076257,
		0.613484, 0.762071, 0.207089,
		29.275927, 31.088984, 46.083035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563271, 31.256672, 45.693115>,  <28.846487, 30.555534, 45.938072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563271, 31.256672, 45.693115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.962997, 31.246853, 45.704140>,  <29.202833, 31.240961, 45.710754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.962997, 31.246853, 45.704140>,  <28.563271, 31.256672, 45.693115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962997, 31.246853, 45.704140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031185, 0.162350, -0.986240,
		0.019735, 0.986428, 0.163004,
		0.999319, -0.024547, 0.027558,
		29.262793, 31.239489, 45.712406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.547409, 29.150312, 49.883034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.798279, 29.414192, 50.048660>,  <34.948799, 29.572519, 50.148037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.798279, 29.414192, 50.048660>,  <34.547409, 29.150312, 49.883034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798279, 29.414192, 50.048660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096530, 0.461689, -0.881774,
		-0.772876, 0.592994, 0.225878,
		0.627172, 0.659698, 0.414070,
		34.986431, 29.612103, 50.172882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075626, 29.829668, 49.870232>,  <34.547409, 29.150312, 49.883034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075626, 29.829668, 49.870232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.462902, 29.925404, 49.899403>,  <34.695267, 29.982845, 49.916904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.462902, 29.925404, 49.899403>,  <34.075626, 29.829668, 49.870232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462902, 29.925404, 49.899403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116764, 0.690003, -0.714326,
		-0.221287, 0.683090, 0.696002,
		0.968193, 0.239340, 0.072928,
		34.753361, 29.997206, 49.921280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018604, 30.441040, 49.595421>,  <34.075626, 29.829668, 49.870232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018604, 30.441040, 49.595421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.417866, 30.416775, 49.594814>,  <34.657425, 30.402216, 49.594452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.417866, 30.416775, 49.594814>,  <34.018604, 30.441040, 49.595421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417866, 30.416775, 49.594814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022324, 0.390327, -0.920406,
		0.056429, 0.918676, 0.390961,
		0.998157, -0.060665, -0.001517,
		34.717312, 30.398575, 49.594360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418411, 31.041502, 49.339394>,  <34.018604, 30.441040, 49.595421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418411, 31.041502, 49.339394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.680084, 30.744171, 49.283527>,  <34.837090, 30.565773, 49.250008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.680084, 30.744171, 49.283527>,  <34.418411, 31.041502, 49.339394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680084, 30.744171, 49.283527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049427, 0.226287, -0.972806,
		0.754719, 0.629490, 0.184774,
		0.654183, -0.743328, -0.139670,
		34.876339, 30.521173, 49.241627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957050, 31.366425, 48.976124>,  <34.418411, 31.041502, 49.339394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957050, 31.366425, 48.976124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.998055, 30.969465, 48.948879>,  <35.022655, 30.731291, 48.932533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.998055, 30.969465, 48.948879>,  <34.957050, 31.366425, 48.976124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998055, 30.969465, 48.948879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037758, 0.072303, -0.996668,
		0.994015, 0.099598, 0.044882,
		0.102511, -0.992397, -0.068109,
		35.028809, 30.671745, 48.928448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485752, 31.237457, 48.482887>,  <34.957050, 31.366425, 48.976124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485752, 31.237457, 48.482887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.258198, 30.908491, 48.483585>,  <35.121666, 30.711111, 48.484005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.258198, 30.908491, 48.483585>,  <35.485752, 31.237457, 48.482887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258198, 30.908491, 48.483585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029955, -0.022846, -0.999290,
		0.821871, -0.568429, 0.037632,
		-0.568885, -0.822415, 0.001749,
		35.087532, 30.661766, 48.484112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722813, 30.760242, 47.977295>,  <35.485752, 31.237457, 48.482887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722813, 30.760242, 47.977295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.359222, 30.596352, 48.007965>,  <35.141068, 30.498016, 48.026367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.359222, 30.596352, 48.007965>,  <35.722813, 30.760242, 47.977295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359222, 30.596352, 48.007965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040841, -0.095525, -0.994589,
		0.414836, -0.907192, 0.070096,
		-0.908979, -0.409729, 0.076678,
		35.086529, 30.473433, 48.030968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641586, 30.146490, 47.544136>,  <35.722813, 30.760242, 47.977295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641586, 30.146490, 47.544136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.254761, 30.238203, 47.588364>,  <35.022667, 30.293232, 47.614899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.254761, 30.238203, 47.588364>,  <35.641586, 30.146490, 47.544136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254761, 30.238203, 47.588364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187647, -0.348616, -0.918290,
		-0.172004, -0.908788, 0.380156,
		-0.967059, 0.229284, 0.110568,
		34.964642, 30.306988, 47.621532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220486, 29.445118, 47.461479>,  <35.641586, 30.146490, 47.544136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220486, 29.445118, 47.461479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.950211, 29.732700, 47.396309>,  <34.788044, 29.905251, 47.357208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.950211, 29.732700, 47.396309>,  <35.220486, 29.445118, 47.461479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950211, 29.732700, 47.396309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351525, -0.508497, -0.786041,
		-0.647977, -0.473847, 0.596318,
		-0.675690, 0.718957, -0.162925,
		34.747505, 29.948387, 47.347431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612564, 29.043655, 47.238346>,  <35.220486, 29.445118, 47.461479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612564, 29.043655, 47.238346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.555439, 29.425020, 47.132057>,  <34.521164, 29.653839, 47.068283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.555439, 29.425020, 47.132057>,  <34.612564, 29.043655, 47.238346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555439, 29.425020, 47.132057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363517, -0.300234, -0.881882,
		-0.920576, -0.029350, 0.389459,
		-0.142812, 0.953414, -0.265719,
		34.512596, 29.711044, 47.052341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015335, 28.944242, 46.922596>,  <34.612564, 29.043655, 47.238346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015335, 28.944242, 46.922596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.165302, 29.294607, 46.801132>,  <34.255283, 29.504826, 46.728252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.165302, 29.294607, 46.801132>,  <34.015335, 28.944242, 46.922596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165302, 29.294607, 46.801132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190437, -0.247801, -0.949910,
		-0.907286, 0.413969, 0.073900,
		0.374921, 0.875913, -0.303661,
		34.277779, 29.557381, 46.710033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541752, 29.166660, 46.368774>,  <34.015335, 28.944242, 46.922596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541752, 29.166660, 46.368774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.899483, 29.337530, 46.315559>,  <34.114120, 29.440052, 46.283630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.899483, 29.337530, 46.315559>,  <33.541752, 29.166660, 46.368774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899483, 29.337530, 46.315559> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035568, -0.364284, -0.930608,
		-0.445992, 0.827539, -0.340984,
		0.894330, 0.427173, -0.133034,
		34.167782, 29.465681, 46.275650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905804, 29.493290, 46.580303>,  <33.541752, 29.166660, 46.368774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905804, 29.493290, 46.580303> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.543686, 29.347775, 46.492584>,  <32.326416, 29.260466, 46.439953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.543686, 29.347775, 46.492584>,  <32.905804, 29.493290, 46.580303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543686, 29.347775, 46.492584> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204577, -0.079043, 0.975654,
		-0.372267, 0.928121, -0.002865,
		-0.905299, -0.363790, -0.219298,
		32.272095, 29.238638, 46.426796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556499, 29.866373, 47.032749>,  <32.905804, 29.493290, 46.580303>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556499, 29.866373, 47.032749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.349220, 29.538277, 46.935856>,  <32.224854, 29.341419, 46.877720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.349220, 29.538277, 46.935856>,  <32.556499, 29.866373, 47.032749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349220, 29.538277, 46.935856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166730, -0.180906, 0.969265,
		-0.838853, 0.542656, -0.043014,
		-0.518196, -0.820242, -0.242231,
		32.193760, 29.292204, 46.863186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953558, 29.887526, 47.400681>,  <32.556499, 29.866373, 47.032749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953558, 29.887526, 47.400681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.988146, 29.501486, 47.301804>,  <32.008900, 29.269861, 47.242477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.988146, 29.501486, 47.301804>,  <31.953558, 29.887526, 47.400681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988146, 29.501486, 47.301804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330987, -0.261854, 0.906576,
		-0.939665, 0.003424, -0.342079,
		0.086471, -0.965101, -0.247188,
		32.014088, 29.211956, 47.227646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303246, 29.597696, 47.482014>,  <31.953558, 29.887526, 47.400681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303246, 29.597696, 47.482014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.527357, 29.268089, 47.515675>,  <31.661825, 29.070326, 47.535870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.527357, 29.268089, 47.515675>,  <31.303246, 29.597696, 47.482014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527357, 29.268089, 47.515675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536303, -0.283464, 0.795001,
		-0.631240, -0.490555, -0.600742,
		0.560281, -0.824017, 0.084152,
		31.695442, 29.020884, 47.540920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935944, 29.212448, 47.852089>,  <31.303246, 29.597696, 47.482014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935944, 29.212448, 47.852089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.271170, 28.994244, 47.855148>,  <31.472305, 28.863321, 47.856983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.271170, 28.994244, 47.855148>,  <30.935944, 29.212448, 47.852089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271170, 28.994244, 47.855148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318718, -0.478171, 0.818396,
		-0.442783, -0.688312, -0.574604,
		0.838070, -0.545508, 0.007651,
		31.522591, 28.830589, 47.857441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666494, 28.539038, 47.905796>,  <30.935944, 29.212448, 47.852089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666494, 28.539038, 47.905796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.038313, 28.567978, 48.050411>,  <31.261404, 28.585342, 48.137180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.038313, 28.567978, 48.050411>,  <30.666494, 28.539038, 47.905796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038313, 28.567978, 48.050411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308119, -0.386109, 0.869473,
		0.202497, -0.919612, -0.336614,
		0.929548, 0.072349, 0.361535,
		31.317177, 28.589682, 48.158871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761185, 27.930141, 48.394245>,  <30.666494, 28.539038, 47.905796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761185, 27.930141, 48.394245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.064114, 28.163258, 48.512108>,  <31.245871, 28.303127, 48.582825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.064114, 28.163258, 48.512108>,  <30.761185, 27.930141, 48.394245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064114, 28.163258, 48.512108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301357, -0.088407, 0.949404,
		0.579351, -0.807801, 0.108675,
		0.757322, 0.582788, 0.294655,
		31.291309, 28.338095, 48.600506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223362, 27.518715, 48.890305>,  <30.761185, 27.930141, 48.394245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223362, 27.518715, 48.890305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.284679, 27.907267, 48.962879>,  <31.321470, 28.140398, 49.006424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.284679, 27.907267, 48.962879>,  <31.223362, 27.518715, 48.890305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284679, 27.907267, 48.962879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371801, -0.113417, 0.921358,
		0.915568, -0.208698, 0.343775,
		0.153296, 0.971382, 0.181435,
		31.330667, 28.198681, 49.017311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551266, 27.463823, 49.590862>,  <31.223362, 27.518715, 48.890305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551266, 27.463823, 49.590862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.413361, 27.832951, 49.522114>,  <31.330618, 28.054428, 49.480865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.413361, 27.832951, 49.522114>,  <31.551266, 27.463823, 49.590862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413361, 27.832951, 49.522114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322046, 0.055706, 0.945084,
		0.881717, 0.381183, 0.277985,
		-0.344764, 0.922820, -0.171875,
		31.309931, 28.109797, 49.470551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794220, 27.872446, 50.066128>,  <31.551266, 27.463823, 49.590862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794220, 27.872446, 50.066128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.466871, 28.065182, 49.940845>,  <31.270462, 28.180822, 49.865677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.466871, 28.065182, 49.940845>,  <31.794220, 27.872446, 50.066128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466871, 28.065182, 49.940845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348811, 0.016676, 0.937045,
		0.456728, 0.876101, 0.154423,
		-0.818370, 0.481840, -0.313210,
		31.221359, 28.209734, 49.846882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851677, 28.516903, 50.521385>,  <31.794220, 27.872446, 50.066128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851677, 28.516903, 50.521385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.474049, 28.502928, 50.390228>,  <31.247473, 28.494543, 50.311535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.474049, 28.502928, 50.390228>,  <31.851677, 28.516903, 50.521385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474049, 28.502928, 50.390228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329424, 0.143811, 0.933166,
		0.014552, 0.988988, -0.147276,
		-0.944070, -0.034937, -0.327889,
		31.190828, 28.492447, 50.291862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437490, 29.082651, 50.768944>,  <31.851677, 28.516903, 50.521385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437490, 29.082651, 50.768944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.159023, 28.803572, 50.701336>,  <30.991943, 28.636124, 50.660770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.159023, 28.803572, 50.701336>,  <31.437490, 29.082651, 50.768944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159023, 28.803572, 50.701336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361861, 0.137706, 0.922005,
		-0.620007, 0.703031, -0.348337,
		-0.696167, -0.697699, -0.169021,
		30.950172, 28.594261, 50.650631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755989, 29.358438, 50.967739>,  <31.437490, 29.082651, 50.768944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755989, 29.358438, 50.967739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.695845, 28.963255, 50.982349>,  <30.659758, 28.726145, 50.991116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.695845, 28.963255, 50.982349>,  <30.755989, 29.358438, 50.967739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695845, 28.963255, 50.982349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378649, 0.091674, 0.920989,
		-0.913245, 0.124650, -0.387873,
		-0.150359, -0.987957, 0.036522,
		30.650738, 28.666868, 50.993305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066029, 29.285595, 51.176960>,  <30.755989, 29.358438, 50.967739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066029, 29.285595, 51.176960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.205460, 28.919474, 51.257668>,  <30.289118, 28.699800, 51.306091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.205460, 28.919474, 51.257668>,  <30.066029, 29.285595, 51.176960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205460, 28.919474, 51.257668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366889, 0.064847, 0.928002,
		-0.862489, -0.397507, -0.313211,
		0.348577, -0.915305, 0.201771,
		30.310032, 28.644882, 51.318199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785017, 29.316908, 50.495960>,  <30.066029, 29.285595, 51.176960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785017, 29.316908, 50.495960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.641071, 29.663330, 50.634777>,  <29.554703, 29.871183, 50.718067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.641071, 29.663330, 50.634777>,  <29.785017, 29.316908, 50.495960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641071, 29.663330, 50.634777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179609, 0.300704, -0.936652,
		-0.915553, -0.399402, 0.047339,
		-0.359866, 0.866057, 0.347047,
		29.533112, 29.923147, 50.738892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994268, 29.426807, 50.293766>,  <29.785017, 29.316908, 50.495960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994268, 29.426807, 50.293766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.216799, 29.756897, 50.332764>,  <29.350317, 29.954950, 50.356163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.216799, 29.756897, 50.332764>,  <28.994268, 29.426807, 50.293766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216799, 29.756897, 50.332764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195910, 0.244270, -0.949711,
		-0.807539, 0.509251, 0.297564,
		0.556327, 0.825225, 0.097490,
		29.383698, 30.004465, 50.362011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670765, 29.763128, 49.735413>,  <28.994268, 29.426807, 50.293766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670765, 29.763128, 49.735413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.970160, 29.998291, 49.858135>,  <29.149797, 30.139389, 49.931770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.970160, 29.998291, 49.858135>,  <28.670765, 29.763128, 49.735413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970160, 29.998291, 49.858135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070965, 0.531007, -0.844391,
		-0.659340, 0.610244, 0.439173,
		0.748489, 0.587906, 0.306808,
		29.194706, 30.174664, 49.950176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402840, 30.469975, 49.538460>,  <28.670765, 29.763128, 49.735413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402840, 30.469975, 49.538460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.800032, 30.422697, 49.540356>,  <29.038347, 30.394331, 49.541492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.800032, 30.422697, 49.540356>,  <28.402840, 30.469975, 49.538460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800032, 30.422697, 49.540356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072121, 0.573175, -0.816253,
		0.093761, 0.810864, 0.577675,
		0.992979, -0.118196, 0.004739,
		29.097925, 30.387238, 49.541779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688959, 31.174765, 49.271149>,  <28.402840, 30.469975, 49.538460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688959, 31.174765, 49.271149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.965891, 30.890118, 49.223351>,  <29.132050, 30.719330, 49.194672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.965891, 30.890118, 49.223351>,  <28.688959, 31.174765, 49.271149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965891, 30.890118, 49.223351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281385, 0.418740, -0.863412,
		0.664456, 0.564142, 0.490145,
		0.692330, -0.711618, -0.119493,
		29.173590, 30.676632, 49.187504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251324, 31.590052, 49.262562>,  <28.688959, 31.174765, 49.271149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251324, 31.590052, 49.262562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.349899, 31.246685, 49.082611>,  <29.409044, 31.040665, 48.974640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.349899, 31.246685, 49.082611>,  <29.251324, 31.590052, 49.262562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349899, 31.246685, 49.082611> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267532, 0.506411, -0.819740,
		0.931501, 0.081661, 0.354454,
		0.246440, -0.858417, -0.449876,
		29.423832, 30.989161, 48.947647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875586, 31.717775, 48.953831>,  <29.251324, 31.590052, 49.262562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875586, 31.717775, 48.953831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.733818, 31.402603, 48.752415>,  <29.648758, 31.213499, 48.631565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.733818, 31.402603, 48.752415>,  <29.875586, 31.717775, 48.953831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733818, 31.402603, 48.752415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381309, 0.369912, -0.847213,
		0.853810, -0.492271, 0.169342,
		-0.354417, -0.787930, -0.503542,
		29.627493, 31.166224, 48.601353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455290, 32.024570, 49.078217>,  <29.875586, 31.717775, 48.953831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455290, 32.024570, 49.078217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.524389, 32.417900, 49.100933>,  <30.565849, 32.653900, 49.114563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.524389, 32.417900, 49.100933>,  <30.455290, 32.024570, 49.078217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524389, 32.417900, 49.100933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066362, -0.045907, 0.996739,
		0.982728, -0.175953, 0.057325,
		0.172748, 0.983327, 0.056791,
		30.576214, 32.712898, 49.117970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174389, 32.227802, 49.482525>,  <30.455290, 32.024570, 49.078217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174389, 32.227802, 49.482525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.939802, 32.551689, 49.490639>,  <30.799049, 32.746021, 49.495506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.939802, 32.551689, 49.490639>,  <31.174389, 32.227802, 49.482525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939802, 32.551689, 49.490639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299697, 0.193659, 0.934172,
		0.752487, 0.553942, -0.356245,
		-0.586468, 0.809718, 0.020289,
		30.763863, 32.794605, 49.496727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554077, 32.752853, 49.565556>,  <31.174389, 32.227802, 49.482525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554077, 32.752853, 49.565556> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.196768, 32.845135, 49.719875>,  <30.982382, 32.900501, 49.812466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.196768, 32.845135, 49.719875>,  <31.554077, 32.752853, 49.565556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196768, 32.845135, 49.719875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426451, 0.163570, 0.889598,
		0.142125, 0.959178, -0.244495,
		-0.893275, 0.230699, 0.385795,
		30.928785, 32.914345, 49.835613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726109, 33.172367, 50.021183>,  <31.554077, 32.752853, 49.565556>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726109, 33.172367, 50.021183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.340164, 33.123569, 50.114277>,  <31.108599, 33.094292, 50.170132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.340164, 33.123569, 50.114277>,  <31.726109, 33.172367, 50.021183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340164, 33.123569, 50.114277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222383, 0.092710, 0.970541,
		-0.139972, 0.988192, -0.062323,
		-0.964859, -0.121989, 0.232734,
		31.050707, 33.086971, 50.184097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599026, 33.648087, 50.555805>,  <31.726109, 33.172367, 50.021183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599026, 33.648087, 50.555805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.313860, 33.369171, 50.585556>,  <31.142759, 33.201820, 50.603409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.313860, 33.369171, 50.585556>,  <31.599026, 33.648087, 50.555805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313860, 33.369171, 50.585556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055276, 0.049860, 0.997225,
		-0.699067, 0.715050, 0.002998,
		-0.712916, -0.697293, 0.074380,
		31.099985, 33.159985, 50.607872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210958, 33.936546, 51.066422>,  <31.599026, 33.648087, 50.555805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210958, 33.936546, 51.066422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.108089, 33.550003, 51.064640>,  <31.046368, 33.318077, 51.063572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.108089, 33.550003, 51.064640>,  <31.210958, 33.936546, 51.066422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108089, 33.550003, 51.064640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282519, -0.079594, 0.955954,
		-0.924146, 0.244585, 0.293483,
		-0.257172, -0.966355, -0.004457,
		31.030937, 33.260098, 51.063301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947901, 33.818352, 51.672806>,  <31.210958, 33.936546, 51.066422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947901, 33.818352, 51.672806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.006950, 33.434414, 51.577385>,  <31.042381, 33.204052, 51.520134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.006950, 33.434414, 51.577385>,  <30.947901, 33.818352, 51.672806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006950, 33.434414, 51.577385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232992, -0.200657, 0.951552,
		-0.961208, -0.196054, 0.194014,
		0.147625, -0.959843, -0.238553,
		31.051237, 33.146461, 51.505817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545303, 33.477253, 52.164318>,  <30.947901, 33.818352, 51.672806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545303, 33.477253, 52.164318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.826952, 33.224804, 52.034149>,  <30.995941, 33.073334, 51.956047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.826952, 33.224804, 52.034149>,  <30.545303, 33.477253, 52.164318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826952, 33.224804, 52.034149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146535, -0.319282, 0.936262,
		-0.694796, -0.706927, -0.132332,
		0.704121, -0.631120, -0.325425,
		31.038189, 33.035469, 51.936523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384256, 32.827782, 52.548378>,  <30.545303, 33.477253, 52.164318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384256, 32.827782, 52.548378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.769836, 32.810577, 52.443344>,  <31.001184, 32.800255, 52.380325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.769836, 32.810577, 52.443344>,  <30.384256, 32.827782, 52.548378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769836, 32.810577, 52.443344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230079, -0.360965, 0.903752,
		-0.133653, -0.931587, -0.338057,
		0.963950, -0.043009, -0.262583,
		31.059021, 32.797676, 52.364571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.816284, 33.242035, 36.774464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202290, 33.309193, 36.855019>,  <34.433895, 33.349487, 36.903351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202290, 33.309193, 36.855019>,  <33.816284, 33.242035, 36.774464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202290, 33.309193, 36.855019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232966, 0.196667, 0.952391,
		0.120288, -0.965990, 0.228899,
		0.965017, 0.167887, 0.201386,
		34.491795, 33.359558, 36.915436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020592, 32.902561, 37.437527>,  <33.816284, 33.242035, 36.774464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020592, 32.902561, 37.437527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280640, 33.199871, 37.374413>,  <34.436668, 33.378258, 37.336544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280640, 33.199871, 37.374413>,  <34.020592, 32.902561, 37.437527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280640, 33.199871, 37.374413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080869, 0.274159, 0.958278,
		0.755520, -0.610231, 0.238342,
		0.650115, 0.743273, -0.157784,
		34.475674, 33.422852, 37.327076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304604, 32.873276, 38.051208>,  <34.020592, 32.902561, 37.437527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304604, 32.873276, 38.051208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410416, 33.224957, 37.892696>,  <34.473904, 33.435963, 37.797588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410416, 33.224957, 37.892696>,  <34.304604, 32.873276, 38.051208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410416, 33.224957, 37.892696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149948, 0.443414, 0.883686,
		0.952649, -0.174340, 0.249130,
		0.264530, 0.879198, -0.396276,
		34.489773, 33.488716, 37.773815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811131, 33.151035, 38.512810>,  <34.304604, 32.873276, 38.051208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811131, 33.151035, 38.512810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680866, 33.462780, 38.298691>,  <34.602707, 33.649826, 38.170219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680866, 33.462780, 38.298691>,  <34.811131, 33.151035, 38.512810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680866, 33.462780, 38.298691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426540, 0.384170, 0.818827,
		0.843807, 0.494981, 0.207323,
		-0.325657, 0.779363, -0.535295,
		34.583168, 33.696590, 38.138103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134682, 33.895817, 38.791225>,  <34.811131, 33.151035, 38.512810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134682, 33.895817, 38.791225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777390, 33.965302, 38.625351>,  <34.563015, 34.006992, 38.525826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777390, 33.965302, 38.625351>,  <35.134682, 33.895817, 38.791225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777390, 33.965302, 38.625351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324832, 0.388350, 0.862362,
		0.310842, 0.904992, -0.290460,
		-0.893231, 0.173708, -0.414686,
		34.509418, 34.017414, 38.500946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982632, 34.573681, 38.936298>,  <35.134682, 33.895817, 38.791225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982632, 34.573681, 38.936298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625572, 34.443394, 38.811657>,  <34.411339, 34.365223, 38.736874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625572, 34.443394, 38.811657>,  <34.982632, 34.573681, 38.936298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625572, 34.443394, 38.811657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442927, 0.505496, 0.740465,
		-0.083666, 0.798989, -0.595496,
		-0.892645, -0.325713, -0.311601,
		34.357780, 34.345680, 38.718178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517616, 35.158817, 38.961441>,  <34.982632, 34.573681, 38.936298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517616, 35.158817, 38.961441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275356, 34.840607, 38.968719>,  <34.130001, 34.649681, 38.973087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275356, 34.840607, 38.968719>,  <34.517616, 35.158817, 38.961441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275356, 34.840607, 38.968719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503264, 0.400655, 0.765638,
		-0.616373, 0.454550, -0.643015,
		-0.605648, -0.795525, 0.018195,
		34.093662, 34.601948, 38.974178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816673, 35.422901, 39.125278>,  <34.517616, 35.158817, 38.961441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816673, 35.422901, 39.125278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783325, 35.031258, 39.199459>,  <33.763317, 34.796272, 39.243965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783325, 35.031258, 39.199459>,  <33.816673, 35.422901, 39.125278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783325, 35.031258, 39.199459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514973, 0.201649, 0.833151,
		-0.853143, -0.026044, -0.521026,
		-0.083366, -0.979111, 0.185447,
		33.758316, 34.737526, 39.255093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134422, 35.360516, 39.247177>,  <33.816673, 35.422901, 39.125278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134422, 35.360516, 39.247177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279781, 35.022823, 39.404766>,  <33.366997, 34.820210, 39.499321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279781, 35.022823, 39.404766>,  <33.134422, 35.360516, 39.247177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279781, 35.022823, 39.404766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646253, 0.076170, 0.759313,
		-0.671045, -0.530538, -0.517907,
		0.363396, -0.844232, 0.393975,
		33.388802, 34.769554, 39.522957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496601, 34.985168, 39.391533>,  <33.134422, 35.360516, 39.247177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496601, 34.985168, 39.391533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793667, 34.839512, 39.616337>,  <32.971905, 34.752117, 39.751221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793667, 34.839512, 39.616337>,  <32.496601, 34.985168, 39.391533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793667, 34.839512, 39.616337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590395, 0.040062, 0.806120,
		-0.316054, -0.930483, -0.185232,
		0.742660, -0.364137, 0.562015,
		33.016464, 34.730270, 39.784943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171898, 34.534103, 39.862564>,  <32.496601, 34.985168, 39.391533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171898, 34.534103, 39.862564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510571, 34.623768, 40.055595>,  <32.713776, 34.677567, 40.171413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510571, 34.623768, 40.055595>,  <32.171898, 34.534103, 39.862564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510571, 34.623768, 40.055595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508291, 0.072477, 0.858130,
		0.157384, -0.971853, 0.175304,
		0.846682, 0.224162, 0.482578,
		32.764576, 34.691017, 40.200367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181789, 34.094933, 40.395580>,  <32.171898, 34.534103, 39.862564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181789, 34.094933, 40.395580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406528, 34.404938, 40.511284>,  <32.541374, 34.590942, 40.580708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406528, 34.404938, 40.511284>,  <32.181789, 34.094933, 40.395580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406528, 34.404938, 40.511284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404654, -0.047495, 0.913235,
		0.721511, -0.630154, 0.286929,
		0.561851, 0.775016, 0.289263,
		32.575085, 34.637444, 40.598064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083118, 33.451416, 40.526340>,  <32.181789, 34.094933, 40.395580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083118, 33.451416, 40.526340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791039, 33.204689, 40.408802>,  <31.615789, 33.056652, 40.338280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791039, 33.204689, 40.408802>,  <32.083118, 33.451416, 40.526340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791039, 33.204689, 40.408802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251953, 0.156678, -0.954972,
		0.635080, -0.771358, 0.041002,
		-0.730201, -0.616814, -0.293848,
		31.571978, 33.019646, 40.320648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462601, 33.051773, 40.053230>,  <32.083118, 33.451416, 40.526340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462601, 33.051773, 40.053230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070076, 33.009487, 39.988914>,  <31.834560, 32.984116, 39.950325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070076, 33.009487, 39.988914>,  <32.462601, 33.051773, 40.053230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070076, 33.009487, 39.988914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164687, -0.029198, -0.985914,
		0.099530, -0.993968, 0.046062,
		-0.981311, -0.105714, -0.160788,
		31.775682, 32.977772, 39.940678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410393, 32.493458, 39.586235>,  <32.462601, 33.051773, 40.053230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410393, 32.493458, 39.586235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069939, 32.702301, 39.564400>,  <31.865667, 32.827606, 39.551296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069939, 32.702301, 39.564400>,  <32.410393, 32.493458, 39.586235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069939, 32.702301, 39.564400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048917, -0.182424, -0.982002,
		-0.522669, -0.833143, 0.180807,
		-0.851131, 0.522106, -0.054593,
		31.814600, 32.858932, 39.548023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919285, 32.059975, 39.181774>,  <32.410393, 32.493458, 39.586235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919285, 32.059975, 39.181774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774666, 32.430828, 39.142353>,  <31.687895, 32.653339, 39.118702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774666, 32.430828, 39.142353>,  <31.919285, 32.059975, 39.181774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774666, 32.430828, 39.142353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067743, -0.131543, -0.988993,
		-0.929889, -0.350893, 0.110366,
		-0.361549, 0.927130, -0.098550,
		31.666201, 32.708965, 39.112789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687622, 31.965744, 38.554317>,  <31.919285, 32.059975, 39.181774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687622, 31.965744, 38.554317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678635, 32.358215, 38.631031>,  <31.673243, 32.593700, 38.677059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678635, 32.358215, 38.631031>,  <31.687622, 31.965744, 38.554317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678635, 32.358215, 38.631031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146722, 0.186516, -0.971434,
		-0.988922, -0.049965, 0.139770,
		-0.022469, 0.981181, 0.191781,
		31.671894, 32.652569, 38.688564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152744, 32.160595, 38.150681>,  <31.687622, 31.965744, 38.554317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152744, 32.160595, 38.150681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355961, 32.499973, 38.210056>,  <31.477890, 32.703602, 38.245682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355961, 32.499973, 38.210056>,  <31.152744, 32.160595, 38.150681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355961, 32.499973, 38.210056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047350, 0.199583, -0.978736,
		-0.860031, 0.490208, 0.141569,
		0.508039, 0.848447, 0.148436,
		31.508373, 32.754509, 38.254585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736914, 32.696304, 37.880714>,  <31.152744, 32.160595, 38.150681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736914, 32.696304, 37.880714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110407, 32.837753, 37.902962>,  <31.334503, 32.922623, 37.916309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110407, 32.837753, 37.902962>,  <30.736914, 32.696304, 37.880714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110407, 32.837753, 37.902962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025825, 0.221521, -0.974814,
		-0.357041, 0.908778, 0.215974,
		0.933732, 0.353625, 0.055623,
		31.390526, 32.943840, 37.919647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707726, 33.303234, 37.481640>,  <30.736914, 32.696304, 37.880714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707726, 33.303234, 37.481640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085817, 33.179390, 37.522976>,  <31.312674, 33.105083, 37.547779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085817, 33.179390, 37.522976>,  <30.707726, 33.303234, 37.481640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085817, 33.179390, 37.522976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138499, 0.093757, -0.985915,
		0.295559, 0.946230, 0.131503,
		0.945232, -0.309609, 0.103341,
		31.369387, 33.086506, 37.553978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053980, 33.762711, 37.098927>,  <30.707726, 33.303234, 37.481640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053980, 33.762711, 37.098927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305061, 33.452099, 37.120811>,  <31.455709, 33.265732, 37.133942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305061, 33.452099, 37.120811>,  <31.053980, 33.762711, 37.098927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305061, 33.452099, 37.120811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179237, 0.075778, -0.980883,
		0.757537, 0.625510, 0.186749,
		0.627703, -0.776528, 0.054710,
		31.493372, 33.219139, 37.137226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614239, 33.932842, 36.608723>,  <31.053980, 33.762711, 37.098927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614239, 33.932842, 36.608723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629274, 33.538177, 36.672081>,  <31.638296, 33.301380, 36.710094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629274, 33.538177, 36.672081>,  <31.614239, 33.932842, 36.608723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629274, 33.538177, 36.672081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140109, -0.151735, -0.978441,
		0.989422, 0.058973, 0.132536,
		0.037591, -0.986660, 0.158392,
		31.640553, 33.242180, 36.719597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106308, 33.659595, 36.088734>,  <31.614239, 33.932842, 36.608723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106308, 33.659595, 36.088734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904764, 33.331890, 36.198223>,  <31.783836, 33.135265, 36.263916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904764, 33.331890, 36.198223>,  <32.106308, 33.659595, 36.088734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904764, 33.331890, 36.198223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035295, -0.297095, -0.954195,
		0.863062, -0.490445, 0.120779,
		-0.503863, -0.819267, 0.273722,
		31.753605, 33.086109, 36.280338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527843, 33.051502, 35.803871>,  <32.106308, 33.659595, 36.088734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527843, 33.051502, 35.803871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159237, 32.911800, 35.871788>,  <31.938072, 32.827980, 35.912540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159237, 32.911800, 35.871788>,  <32.527843, 33.051502, 35.803871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159237, 32.911800, 35.871788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025062, -0.382838, -0.923475,
		0.387532, -0.855252, 0.344039,
		-0.921516, -0.349254, 0.169796,
		31.882782, 32.807026, 35.922726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514908, 32.313438, 35.562954>,  <32.527843, 33.051502, 35.803871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514908, 32.313438, 35.562954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130489, 32.417789, 35.599468>,  <31.899839, 32.480400, 35.621376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130489, 32.417789, 35.599468>,  <32.514908, 32.313438, 35.562954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130489, 32.417789, 35.599468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199080, -0.424287, -0.883373,
		-0.191726, -0.867134, 0.459695,
		-0.961046, 0.260882, 0.091282,
		31.842176, 32.496056, 35.626854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173409, 31.714514, 35.534500>,  <32.514908, 32.313438, 35.562954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173409, 31.714514, 35.534500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966652, 32.031300, 35.404507>,  <31.842598, 32.221371, 35.326511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966652, 32.031300, 35.404507>,  <32.173409, 31.714514, 35.534500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966652, 32.031300, 35.404507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003785, -0.381739, -0.924262,
		-0.856041, -0.476516, 0.200317,
		-0.516894, 0.791964, -0.324981,
		31.811584, 32.268890, 35.307011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716824, 31.064642, 35.404274>,  <32.173409, 31.714514, 35.534500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716824, 31.064642, 35.404274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037216, 30.853384, 35.291496>,  <32.229450, 30.726629, 35.223831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037216, 30.853384, 35.291496>,  <31.716824, 31.064642, 35.404274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037216, 30.853384, 35.291496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035523, -0.512031, 0.858232,
		-0.597638, -0.677411, -0.428887,
		0.800979, -0.528147, -0.281945,
		32.277512, 30.694941, 35.206913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577375, 30.330952, 35.472019>,  <31.716824, 31.064642, 35.404274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577375, 30.330952, 35.472019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969019, 30.386642, 35.531296>,  <32.204006, 30.420057, 35.566864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969019, 30.386642, 35.531296>,  <31.577375, 30.330952, 35.472019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969019, 30.386642, 35.531296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036323, -0.597338, 0.801166,
		0.200068, -0.789812, -0.579802,
		0.979109, 0.139227, 0.148196,
		32.262753, 30.428411, 35.575756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938601, 29.688652, 35.591236>,  <31.577375, 30.330952, 35.472019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938601, 29.688652, 35.591236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200520, 29.950071, 35.743084>,  <32.357670, 30.106924, 35.834194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200520, 29.950071, 35.743084>,  <31.938601, 29.688652, 35.591236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200520, 29.950071, 35.743084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063478, -0.452947, 0.889275,
		0.753135, -0.606392, -0.255102,
		0.654797, 0.653550, 0.379623,
		32.396957, 30.146137, 35.856972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412884, 29.282362, 36.031849>,  <31.938601, 29.688652, 35.591236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412884, 29.282362, 36.031849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419033, 29.655235, 36.176514>,  <32.422722, 29.878960, 36.263313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419033, 29.655235, 36.176514>,  <32.412884, 29.282362, 36.031849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419033, 29.655235, 36.176514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066943, -0.359936, 0.930572,
		0.997638, -0.038519, 0.056869,
		0.015376, 0.932182, 0.361664,
		32.423645, 29.934891, 36.285011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703197, 28.981073, 36.566051>,  <32.412884, 29.282362, 36.031849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703197, 28.981073, 36.566051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557796, 29.348669, 36.627140>,  <32.470554, 29.569225, 36.663795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557796, 29.348669, 36.627140>,  <32.703197, 28.981073, 36.566051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557796, 29.348669, 36.627140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133741, -0.213722, 0.967696,
		0.921942, 0.331338, 0.200596,
		-0.363507, 0.918987, 0.152726,
		32.448746, 29.624365, 36.672958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105457, 29.292593, 37.033340>,  <32.703197, 28.981073, 36.566051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105457, 29.292593, 37.033340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758621, 29.487656, 37.074020>,  <32.550518, 29.604694, 37.098431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758621, 29.487656, 37.074020>,  <33.105457, 29.292593, 37.033340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758621, 29.487656, 37.074020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076259, -0.071816, 0.994498,
		0.492279, 0.870076, 0.025083,
		-0.867091, 0.487658, 0.101705,
		32.498493, 29.633953, 37.104530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181232, 29.675108, 37.495483>,  <33.105457, 29.292593, 37.033340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181232, 29.675108, 37.495483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781258, 29.677700, 37.499271>,  <32.541275, 29.679255, 37.501545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781258, 29.677700, 37.499271>,  <33.181232, 29.675108, 37.495483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781258, 29.677700, 37.499271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009004, -0.067939, 0.997649,
		0.007106, 0.997668, 0.067876,
		-0.999934, 0.006478, 0.009466,
		32.481277, 29.679644, 37.502110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997318, 30.087505, 38.116005>,  <33.181232, 29.675108, 37.495483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997318, 30.087505, 38.116005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686909, 29.851496, 38.026871>,  <32.500664, 29.709890, 37.973389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686909, 29.851496, 38.026871>,  <32.997318, 30.087505, 38.116005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686909, 29.851496, 38.026871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082167, -0.255724, 0.963252,
		-0.625327, 0.765817, 0.149968,
		-0.776025, -0.590025, -0.222836,
		32.454102, 29.674488, 37.960018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425400, 30.302206, 38.503876>,  <32.997318, 30.087505, 38.116005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425400, 30.302206, 38.503876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333996, 29.923864, 38.411659>,  <32.279152, 29.696859, 38.356331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333996, 29.923864, 38.411659>,  <32.425400, 30.302206, 38.503876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333996, 29.923864, 38.411659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174214, -0.193253, 0.965558,
		-0.957827, 0.260801, -0.120621,
		-0.228508, -0.945852, -0.230538,
		32.265442, 29.640108, 38.342499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790625, 30.225782, 38.844040>,  <32.425400, 30.302206, 38.503876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790625, 30.225782, 38.844040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920055, 29.852489, 38.781586>,  <31.997713, 29.628513, 38.744114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920055, 29.852489, 38.781586>,  <31.790625, 30.225782, 38.844040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920055, 29.852489, 38.781586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176929, -0.221782, 0.958910,
		-0.929513, -0.282655, -0.236879,
		0.323576, -0.933230, -0.156140,
		32.017128, 29.572521, 38.734745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272707, 29.835264, 39.144951>,  <31.790625, 30.225782, 38.844040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272707, 29.835264, 39.144951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593445, 29.598446, 39.112633>,  <31.785887, 29.456356, 39.093243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593445, 29.598446, 39.112633>,  <31.272707, 29.835264, 39.144951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593445, 29.598446, 39.112633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161243, -0.344585, 0.924804,
		-0.575365, -0.728522, -0.371767,
		0.801845, -0.592045, -0.080793,
		31.833998, 29.420832, 39.088394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082508, 29.260777, 39.514130>,  <31.272707, 29.835264, 39.144951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082508, 29.260777, 39.514130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479551, 29.212513, 39.519386>,  <31.717777, 29.183554, 39.522541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479551, 29.212513, 39.519386>,  <31.082508, 29.260777, 39.514130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479551, 29.212513, 39.519386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056252, -0.361408, 0.930709,
		-0.107551, -0.924568, -0.365523,
		0.992607, -0.120660, 0.013139,
		31.777334, 29.176315, 39.523327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152523, 28.687092, 39.833637>,  <31.082508, 29.260777, 39.514130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152523, 28.687092, 39.833637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520716, 28.842484, 39.850590>,  <31.741632, 28.935719, 39.860760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520716, 28.842484, 39.850590>,  <31.152523, 28.687092, 39.833637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520716, 28.842484, 39.850590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015150, -0.143849, 0.989484,
		0.390490, -0.910160, -0.138296,
		0.920483, 0.388478, 0.042383,
		31.796860, 28.959026, 39.863304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627548, 28.151217, 40.246605>,  <31.152523, 28.687092, 39.833637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627548, 28.151217, 40.246605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786476, 28.517159, 40.275383>,  <31.881832, 28.736723, 40.292652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786476, 28.517159, 40.275383>,  <31.627548, 28.151217, 40.246605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786476, 28.517159, 40.275383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052678, -0.101009, 0.993490,
		0.916167, -0.390943, -0.088325,
		0.397320, 0.914855, 0.071947,
		31.905672, 28.791615, 40.296967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844976, 28.066418, 40.875515>,  <31.627548, 28.151217, 40.246605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844976, 28.066418, 40.875515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898176, 28.456385, 40.804127>,  <31.930096, 28.690365, 40.761295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898176, 28.456385, 40.804127>,  <31.844976, 28.066418, 40.875515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898176, 28.456385, 40.804127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004015, 0.179539, 0.983743,
		0.991108, -0.131552, 0.019964,
		0.132997, 0.974915, -0.178471,
		31.938076, 28.748859, 40.750584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461613, 28.329348, 41.255508>,  <31.844976, 28.066418, 40.875515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461613, 28.329348, 41.255508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208580, 28.634506, 41.202103>,  <32.056759, 28.817602, 41.170059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208580, 28.634506, 41.202103>,  <32.461613, 28.329348, 41.255508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208580, 28.634506, 41.202103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108541, 0.258012, 0.960025,
		0.766848, 0.592806, -0.246020,
		-0.632585, 0.762896, -0.133512,
		32.018806, 28.863375, 41.162048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698509, 28.765488, 41.768757>,  <32.461613, 28.329348, 41.255508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698509, 28.765488, 41.768757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331894, 28.899813, 41.681858>,  <32.111927, 28.980408, 41.629719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331894, 28.899813, 41.681858>,  <32.698509, 28.765488, 41.768757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331894, 28.899813, 41.681858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102740, 0.327266, 0.939330,
		0.386536, 0.883248, -0.265449,
		-0.916534, 0.335813, -0.217245,
		32.056934, 29.000557, 41.616684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689514, 29.504557, 41.955158>,  <32.698509, 28.765488, 41.768757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689514, 29.504557, 41.955158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309982, 29.378288, 41.951855>,  <32.082264, 29.302528, 41.949875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309982, 29.378288, 41.951855>,  <32.689514, 29.504557, 41.955158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309982, 29.378288, 41.951855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130712, 0.368830, 0.920260,
		-0.287453, 0.874253, -0.391220,
		-0.948834, -0.315669, -0.008254,
		32.025333, 29.283588, 41.949379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327873, 30.073803, 42.267941>,  <32.689514, 29.504557, 41.955158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327873, 30.073803, 42.267941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099525, 29.748686, 42.314377>,  <31.962517, 29.553616, 42.342239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099525, 29.748686, 42.314377>,  <32.327873, 30.073803, 42.267941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099525, 29.748686, 42.314377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170941, 0.255961, 0.951453,
		-0.803049, 0.523310, -0.285060,
		-0.570869, -0.812792, 0.116094,
		31.928265, 29.504848, 42.349205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767630, 30.312485, 42.613976>,  <32.327873, 30.073803, 42.267941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767630, 30.312485, 42.613976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744135, 29.917530, 42.672794>,  <31.730038, 29.680557, 42.708084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744135, 29.917530, 42.672794>,  <31.767630, 30.312485, 42.613976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744135, 29.917530, 42.672794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240827, 0.156964, 0.957791,
		-0.968789, 0.020845, -0.247008,
		-0.058736, -0.987384, 0.147045,
		31.726515, 29.621315, 42.716908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223749, 30.201468, 43.069283>,  <31.767630, 30.312485, 42.613976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223749, 30.201468, 43.069283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394533, 29.840984, 43.099026>,  <31.497004, 29.624695, 43.116871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394533, 29.840984, 43.099026>,  <31.223749, 30.201468, 43.069283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394533, 29.840984, 43.099026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256174, -0.041685, 0.965731,
		-0.867226, -0.431376, -0.248664,
		0.426959, -0.901209, 0.074357,
		31.522621, 29.570621, 43.121334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737965, 29.602797, 43.466076>,  <31.223749, 30.201468, 43.069283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737965, 29.602797, 43.466076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135891, 29.570019, 43.490170>,  <31.374647, 29.550352, 43.504627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135891, 29.570019, 43.490170>,  <30.737965, 29.602797, 43.466076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135891, 29.570019, 43.490170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061267, -0.010125, 0.998070,
		-0.081177, -0.996585, -0.015093,
		0.994815, -0.081945, 0.060236,
		31.434336, 29.545435, 43.508240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861759, 29.267179, 44.129772>,  <30.737965, 29.602797, 43.466076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861759, 29.267179, 44.129772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234060, 29.382833, 44.040241>,  <31.457441, 29.452225, 43.986523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234060, 29.382833, 44.040241>,  <30.861759, 29.267179, 44.129772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234060, 29.382833, 44.040241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211178, 0.074648, 0.974593,
		0.298496, -0.954374, 0.008420,
		0.930755, 0.289134, -0.223825,
		31.513287, 29.469574, 43.973095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289930, 28.734312, 44.155457>,  <30.861759, 29.267179, 44.129772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289930, 28.734312, 44.155457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537933, 29.036936, 44.238605>,  <31.686735, 29.218510, 44.288494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537933, 29.036936, 44.238605>,  <31.289930, 28.734312, 44.155457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537933, 29.036936, 44.238605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137176, -0.365383, 0.920694,
		0.772512, -0.542322, -0.330322,
		0.620007, 0.756559, 0.207869,
		31.723936, 29.263905, 44.300964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607788, 28.465086, 44.654659>,  <31.289930, 28.734312, 44.155457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607788, 28.465086, 44.654659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748034, 28.838581, 44.683506>,  <31.832180, 29.062679, 44.700813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748034, 28.838581, 44.683506>,  <31.607788, 28.465086, 44.654659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748034, 28.838581, 44.683506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336977, -0.197630, 0.920537,
		0.873795, -0.298451, -0.383941,
		0.350613, 0.933739, 0.072117,
		31.853218, 29.118704, 44.705143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349468, 28.447880, 44.944706>,  <31.607788, 28.465086, 44.654659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349468, 28.447880, 44.944706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234997, 28.820978, 45.032425>,  <32.166313, 29.044838, 45.085056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234997, 28.820978, 45.032425>,  <32.349468, 28.447880, 44.944706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234997, 28.820978, 45.032425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175256, -0.174051, 0.969016,
		0.942014, 0.315740, -0.113660,
		-0.286174, 0.932746, 0.219293,
		32.149143, 29.100801, 45.098213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726288, 28.541821, 45.532536>,  <32.349468, 28.447880, 44.944706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726288, 28.541821, 45.532536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447281, 28.828440, 45.534603>,  <32.279877, 29.000412, 45.535843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447281, 28.828440, 45.534603>,  <32.726288, 28.541821, 45.532536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447281, 28.828440, 45.534603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012010, 0.004473, 0.999918,
		0.716467, 0.697523, -0.011726,
		-0.697518, 0.716549, 0.005172,
		32.238026, 29.043404, 45.536156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005688, 29.108919, 45.844654>,  <32.726288, 28.541821, 45.532536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005688, 29.108919, 45.844654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609741, 29.145769, 45.887894>,  <32.372173, 29.167879, 45.913837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609741, 29.145769, 45.887894>,  <33.005688, 29.108919, 45.844654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609741, 29.145769, 45.887894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123899, 0.187947, 0.974333,
		0.069441, 0.977849, -0.197455,
		-0.989862, 0.092124, 0.108104,
		32.312782, 29.173407, 45.920326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513615, 29.682390, 45.859467>,  <33.005688, 29.108919, 45.844654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513615, 29.682390, 45.859467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900230, 29.584198, 45.889217>,  <34.132202, 29.525282, 45.907066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900230, 29.584198, 45.889217>,  <33.513615, 29.682390, 45.859467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900230, 29.584198, 45.889217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071630, -0.020106, -0.997229,
		0.246296, 0.969193, -0.001850,
		0.966544, -0.245481, 0.074375,
		34.190193, 29.510553, 45.911530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800674, 30.003702, 45.282578>,  <33.513615, 29.682390, 45.859467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800674, 30.003702, 45.282578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091946, 29.747374, 45.379826>,  <34.266708, 29.593576, 45.438175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091946, 29.747374, 45.379826>,  <33.800674, 30.003702, 45.282578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091946, 29.747374, 45.379826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188975, -0.153250, -0.969950,
		0.658822, 0.752239, 0.009506,
		0.728177, -0.640820, 0.243119,
		34.310398, 29.555128, 45.452763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430691, 30.179445, 44.857525>,  <33.800674, 30.003702, 45.282578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430691, 30.179445, 44.857525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492893, 29.803919, 44.980450>,  <34.530216, 29.578604, 45.054203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492893, 29.803919, 44.980450>,  <34.430691, 30.179445, 44.857525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492893, 29.803919, 44.980450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432004, -0.215136, -0.875836,
		0.888364, 0.268960, 0.372117,
		0.155510, -0.938817, 0.307311,
		34.539547, 29.522274, 45.072643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200634, 29.998344, 44.814117>,  <34.430691, 30.179445, 44.857525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200634, 29.998344, 44.814117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004200, 29.650837, 44.788570>,  <34.886341, 29.442333, 44.773243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004200, 29.650837, 44.788570>,  <35.200634, 29.998344, 44.814117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004200, 29.650837, 44.788570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515576, -0.230779, -0.825180,
		0.702152, -0.438159, 0.561248,
		-0.491085, -0.868768, -0.063863,
		34.856876, 29.390207, 44.769413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680416, 29.472080, 44.820271>,  <35.200634, 29.998344, 44.814117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680416, 29.472080, 44.820271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354385, 29.336340, 44.632442>,  <35.158768, 29.254896, 44.519745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354385, 29.336340, 44.632442>,  <35.680416, 29.472080, 44.820271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354385, 29.336340, 44.632442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568565, -0.312814, -0.760842,
		0.111303, -0.887124, 0.447909,
		-0.815074, -0.339350, -0.469571,
		35.109863, 29.234535, 44.491570>
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
