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
	<24.064272, 35.115688, 34.658478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.152225, 34.890511, 34.977161>,  <24.204998, 34.755402, 35.168369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.152225, 34.890511, 34.977161>,  <24.064272, 35.115688, 34.658478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.152225, 34.890511, 34.977161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932704, 0.360634, -0.002597,
		-0.285857, 0.743663, 0.604360,
		0.219884, -0.562947, 0.796707,
		24.218191, 34.721626, 35.216175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.428375, 35.484734, 35.080898>,  <24.064272, 35.115688, 34.658478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.428375, 35.484734, 35.080898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.509453, 35.121563, 35.227646>,  <24.558100, 34.903660, 35.315693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.509453, 35.121563, 35.227646>,  <24.428375, 35.484734, 35.080898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.509453, 35.121563, 35.227646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963007, 0.252755, 0.093450,
		-0.177572, 0.334353, 0.925568,
		0.202696, -0.907923, 0.366866,
		24.570261, 34.849186, 35.337708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.801146, 35.460361, 35.756046>,  <24.428375, 35.484734, 35.080898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.801146, 35.460361, 35.756046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.885313, 35.121677, 35.560577>,  <24.935814, 34.918465, 35.443298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.885313, 35.121677, 35.560577>,  <24.801146, 35.460361, 35.756046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.885313, 35.121677, 35.560577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977123, 0.166359, 0.132498,
		-0.030893, -0.505371, 0.862349,
		0.210420, -0.846714, -0.488670,
		24.948439, 34.867664, 35.413975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.430433, 35.207912, 36.054131>,  <24.801146, 35.460361, 35.756046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.430433, 35.207912, 36.054131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431757, 35.015129, 35.703655>,  <25.432552, 34.899460, 35.493370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431757, 35.015129, 35.703655>,  <25.430433, 35.207912, 36.054131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431757, 35.015129, 35.703655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999696, -0.019797, 0.014667,
		-0.024414, -0.875973, 0.481743,
		0.003311, -0.481954, -0.876190,
		25.432751, 34.870544, 35.440800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.909004, 34.622131, 36.147434>,  <25.430433, 35.207912, 36.054131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.909004, 34.622131, 36.147434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889261, 34.734447, 35.764034>,  <25.877417, 34.801838, 35.533993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889261, 34.734447, 35.764034>,  <25.909004, 34.622131, 36.147434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.889261, 34.734447, 35.764034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998037, -0.023188, -0.058184,
		-0.038563, -0.959490, -0.279093,
		-0.049355, 0.280788, -0.958500,
		25.874454, 34.818684, 35.476482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296850, 34.240444, 35.720463>,  <25.909004, 34.622131, 36.147434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296850, 34.240444, 35.720463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267189, 34.575817, 35.504490>,  <26.249393, 34.777042, 35.374905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267189, 34.575817, 35.504490>,  <26.296850, 34.240444, 35.720463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.267189, 34.575817, 35.504490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993294, 0.013939, -0.114769,
		-0.088701, -0.544823, -0.833846,
		-0.074152, 0.838435, -0.539934,
		26.244944, 34.827347, 35.342510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.760021, 34.349232, 35.024006>,  <26.296850, 34.240444, 35.720463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.760021, 34.349232, 35.024006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643782, 34.664013, 35.241722>,  <26.574038, 34.852882, 35.372353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643782, 34.664013, 35.241722>,  <26.760021, 34.349232, 35.024006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643782, 34.664013, 35.241722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956822, 0.234988, 0.171092,
		0.006738, 0.570512, -0.821262,
		-0.290597, 0.786954, 0.544295,
		26.556602, 34.900101, 35.405010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094028, 34.624683, 35.553440>,  <26.760021, 34.349232, 35.024006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.094028, 34.624683, 35.553440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416409, 34.843910, 35.463940>,  <27.609837, 34.975449, 35.410240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416409, 34.843910, 35.463940>,  <27.094028, 34.624683, 35.553440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.416409, 34.843910, 35.463940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202999, -0.099175, -0.974144,
		-0.556090, 0.830531, 0.031327,
		0.805950, 0.548071, -0.223747,
		27.658194, 35.008331, 35.396816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936815, 35.068108, 34.984966>,  <27.094028, 34.624683, 35.553440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936815, 35.068108, 34.984966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328875, 35.020180, 34.921783>,  <27.564110, 34.991421, 34.883873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328875, 35.020180, 34.921783>,  <26.936815, 35.068108, 34.984966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328875, 35.020180, 34.921783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166008, -0.060440, -0.984270,
		0.108391, 0.990954, -0.079132,
		0.980149, -0.119823, -0.157955,
		27.622919, 34.984234, 34.874397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041145, 35.274830, 34.360195>,  <26.936815, 35.068108, 34.984966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041145, 35.274830, 34.360195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.358810, 35.048309, 34.448380>,  <27.549410, 34.912395, 34.501289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.358810, 35.048309, 34.448380>,  <27.041145, 35.274830, 34.360195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.358810, 35.048309, 34.448380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001380, -0.364460, -0.931218,
		0.607701, 0.739236, -0.290222,
		0.794165, -0.566303, 0.220462,
		27.597059, 34.878418, 34.514519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405483, 35.295708, 33.742058>,  <27.041145, 35.274830, 34.360195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405483, 35.295708, 33.742058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537836, 34.981575, 33.951355>,  <27.617249, 34.793095, 34.076931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537836, 34.981575, 33.951355>,  <27.405483, 35.295708, 33.742058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537836, 34.981575, 33.951355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246628, -0.463234, -0.851228,
		0.910874, 0.410702, 0.040408,
		0.330883, -0.785327, 0.523238,
		27.637100, 34.745975, 34.108326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087435, 35.192829, 33.412365>,  <27.405483, 35.295708, 33.742058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087435, 35.192829, 33.412365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946697, 34.861588, 33.586926>,  <27.862255, 34.662842, 33.691662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946697, 34.861588, 33.586926>,  <28.087435, 35.192829, 33.412365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946697, 34.861588, 33.586926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173932, -0.515929, -0.838788,
		0.919758, -0.219216, 0.325559,
		-0.351841, -0.828107, 0.436402,
		27.841145, 34.613155, 33.717846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565639, 34.719337, 33.270561>,  <28.087435, 35.192829, 33.412365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565639, 34.719337, 33.270561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235464, 34.509769, 33.354614>,  <28.037359, 34.384029, 33.405048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235464, 34.509769, 33.354614>,  <28.565639, 34.719337, 33.270561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235464, 34.509769, 33.354614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238496, -0.661084, -0.711399,
		0.511632, -0.537101, 0.670638,
		-0.825441, -0.523919, 0.210136,
		27.987831, 34.352592, 33.417656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741880, 34.048862, 33.139084>,  <28.565639, 34.719337, 33.270561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741880, 34.048862, 33.139084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343023, 34.053207, 33.168987>,  <28.103708, 34.055813, 33.186928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343023, 34.053207, 33.168987>,  <28.741880, 34.048862, 33.139084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343023, 34.053207, 33.168987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067031, -0.583574, -0.809289,
		0.034837, -0.811987, 0.582634,
		-0.997142, 0.010861, 0.074759,
		28.043880, 34.056465, 33.191414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577971, 33.432384, 32.929317>,  <28.741880, 34.048862, 33.139084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577971, 33.432384, 32.929317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230530, 33.628876, 32.903336>,  <28.022064, 33.746773, 32.887745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230530, 33.628876, 32.903336>,  <28.577971, 33.432384, 32.929317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230530, 33.628876, 32.903336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244752, -0.539318, -0.805750,
		-0.430841, -0.683980, 0.588683,
		-0.868604, 0.491231, -0.064955,
		27.969950, 33.776245, 32.883850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114122, 32.952503, 32.778118>,  <28.577971, 33.432384, 32.929317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114122, 32.952503, 32.778118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927515, 33.290596, 32.673855>,  <27.815552, 33.493454, 32.611298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927515, 33.290596, 32.673855>,  <28.114122, 32.952503, 32.778118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927515, 33.290596, 32.673855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132598, -0.358189, -0.924186,
		-0.874517, -0.396586, 0.279177,
		-0.466517, 0.845234, -0.260656,
		27.787560, 33.544167, 32.595657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495150, 32.774258, 32.454418>,  <28.114122, 32.952503, 32.778118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495150, 32.774258, 32.454418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572147, 33.139359, 32.310287>,  <27.618345, 33.358418, 32.223808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572147, 33.139359, 32.310287>,  <27.495150, 32.774258, 32.454418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572147, 33.139359, 32.310287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344680, -0.280903, -0.895706,
		-0.918772, 0.296613, 0.260535,
		0.192493, 0.912751, -0.360323,
		27.629896, 33.413185, 32.202190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.890442, 32.897949, 32.156563>,  <27.495150, 32.774258, 32.454418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.890442, 32.897949, 32.156563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167313, 33.149155, 32.014305>,  <27.333435, 33.299877, 31.928949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167313, 33.149155, 32.014305>,  <26.890442, 32.897949, 32.156563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167313, 33.149155, 32.014305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304946, -0.192136, -0.932787,
		-0.654137, 0.754108, 0.058518,
		0.692179, 0.628016, -0.355646,
		27.374966, 33.337559, 31.907612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568523, 33.284409, 31.743731>,  <26.890442, 32.897949, 32.156563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.568523, 33.284409, 31.743731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.947676, 33.281433, 31.616314>,  <27.175167, 33.279648, 31.539864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.947676, 33.281433, 31.616314>,  <26.568523, 33.284409, 31.743731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.947676, 33.281433, 31.616314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308651, -0.269670, -0.912147,
		-0.079118, 0.962924, -0.257910,
		0.947879, -0.007437, -0.318543,
		27.232040, 33.279202, 31.520752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.613897, 33.410267, 30.936750>,  <26.568523, 33.284409, 31.743731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.613897, 33.410267, 30.936750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980322, 33.264179, 31.003017>,  <27.200176, 33.176529, 31.042778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980322, 33.264179, 31.003017>,  <26.613897, 33.410267, 30.936750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980322, 33.264179, 31.003017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013509, -0.440965, -0.897422,
		0.400806, 0.819858, -0.408886,
		0.916063, -0.365216, 0.165666,
		27.255140, 33.154613, 31.052717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974295, 33.597107, 30.385538>,  <26.613897, 33.410267, 30.936750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974295, 33.597107, 30.385538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187757, 33.292419, 30.532503>,  <27.315836, 33.109608, 30.620682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187757, 33.292419, 30.532503>,  <26.974295, 33.597107, 30.385538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.187757, 33.292419, 30.532503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219375, -0.294891, -0.930007,
		0.816751, 0.576908, 0.009731,
		0.533659, -0.761719, 0.367412,
		27.347855, 33.063904, 30.642727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468338, 33.458092, 29.835924>,  <26.974295, 33.597107, 30.385538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468338, 33.458092, 29.835924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478760, 33.141785, 30.080549>,  <27.485014, 32.952000, 30.227325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478760, 33.141785, 30.080549>,  <27.468338, 33.458092, 29.835924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478760, 33.141785, 30.080549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394180, -0.554077, -0.733226,
		0.918664, 0.260172, 0.297267,
		0.026056, -0.790765, 0.611565,
		27.486576, 32.904556, 30.264019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100550, 33.154087, 29.677040>,  <27.468338, 33.458092, 29.835924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100550, 33.154087, 29.677040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886120, 32.873825, 29.865385>,  <27.757462, 32.705669, 29.978392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886120, 32.873825, 29.865385>,  <28.100550, 33.154087, 29.677040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886120, 32.873825, 29.865385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247453, -0.663703, -0.705879,
		0.807088, -0.261888, 0.529173,
		-0.536075, -0.700652, 0.470861,
		27.725298, 32.663628, 30.006643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468443, 32.694263, 29.723400>,  <28.100550, 33.154087, 29.677040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468443, 32.694263, 29.723400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.114223, 32.510574, 29.751455>,  <27.901691, 32.400360, 29.768288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.114223, 32.510574, 29.751455>,  <28.468443, 32.694263, 29.723400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.114223, 32.510574, 29.751455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293938, -0.670807, -0.680895,
		0.359733, -0.582349, 0.729014,
		-0.885546, -0.459226, 0.070137,
		27.848560, 32.372807, 29.772497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670704, 32.039112, 29.695265>,  <28.468443, 32.694263, 29.723400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670704, 32.039112, 29.695265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287453, 32.027283, 29.581341>,  <28.057503, 32.020184, 29.512987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287453, 32.027283, 29.581341>,  <28.670704, 32.039112, 29.695265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287453, 32.027283, 29.581341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215302, -0.730149, -0.648481,
		-0.188776, -0.682648, 0.705943,
		-0.958128, -0.029573, -0.284810,
		28.000015, 32.018410, 29.495897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308058, 31.338640, 29.716555>,  <28.670704, 32.039112, 29.695265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308058, 31.338640, 29.716555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121187, 31.546358, 29.430315>,  <28.009066, 31.670988, 29.258572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121187, 31.546358, 29.430315>,  <28.308058, 31.338640, 29.716555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121187, 31.546358, 29.430315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269589, -0.687147, -0.674649,
		-0.842063, -0.508096, 0.181021,
		-0.467175, 0.519295, -0.715598,
		27.981035, 31.702147, 29.215635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797007, 30.736610, 29.548986>,  <28.308058, 31.338640, 29.716555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797007, 30.736610, 29.548986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179680, 30.848074, 29.582710>,  <29.409285, 30.914951, 29.602945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179680, 30.848074, 29.582710>,  <28.797007, 30.736610, 29.548986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179680, 30.848074, 29.582710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222851, -0.887271, 0.403842,
		0.187340, -0.367560, -0.910936,
		0.956683, 0.278658, 0.084310,
		29.466684, 30.931671, 29.608004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764990, 30.023285, 29.495371>,  <28.797007, 30.736610, 29.548986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764990, 30.023285, 29.495371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.125841, 30.176462, 29.574884>,  <29.342352, 30.268370, 29.622593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.125841, 30.176462, 29.574884>,  <28.764990, 30.023285, 29.495371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125841, 30.176462, 29.574884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233047, -0.820203, 0.522452,
		0.363111, -0.424994, -0.829174,
		0.902131, 0.382944, 0.198782,
		29.396481, 30.291346, 29.634520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309881, 29.563728, 29.205906>,  <28.764990, 30.023285, 29.495371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309881, 29.563728, 29.205906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403940, 29.771139, 29.534742>,  <29.460375, 29.895586, 29.732044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403940, 29.771139, 29.534742>,  <29.309881, 29.563728, 29.205906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403940, 29.771139, 29.534742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385567, -0.826176, 0.410817,
		0.892213, 0.220369, -0.394200,
		0.235147, 0.518527, 0.822093,
		29.474483, 29.926697, 29.781370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919300, 29.605806, 28.577145>,  <29.309881, 29.563728, 29.205906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919300, 29.605806, 28.577145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039131, 29.580507, 28.196356>,  <29.111029, 29.565327, 27.967882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039131, 29.580507, 28.196356>,  <28.919300, 29.605806, 28.577145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039131, 29.580507, 28.196356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947727, 0.134620, 0.289295,
		0.109857, -0.988876, 0.100272,
		0.299576, -0.063249, -0.951974,
		29.129004, 29.561533, 27.910763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456671, 29.014025, 28.479637>,  <28.919300, 29.605806, 28.577145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456671, 29.014025, 28.479637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526651, 29.298939, 28.207743>,  <29.568640, 29.469887, 28.044607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526651, 29.298939, 28.207743>,  <29.456671, 29.014025, 28.479637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526651, 29.298939, 28.207743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937728, 0.089880, 0.335541,
		0.300096, -0.696110, -0.652207,
		0.174953, 0.712287, -0.679734,
		29.579138, 29.512625, 28.003822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038496, 28.797014, 28.044096>,  <29.456671, 29.014025, 28.479637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038496, 28.797014, 28.044096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969450, 29.185215, 28.111422>,  <29.928022, 29.418135, 28.151817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969450, 29.185215, 28.111422>,  <30.038496, 28.797014, 28.044096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969450, 29.185215, 28.111422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972851, 0.141237, 0.183338,
		0.154157, 0.195392, -0.968534,
		-0.172615, 0.970502, 0.168315,
		29.917665, 29.476366, 28.161917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429073, 29.288149, 27.616716>,  <30.038496, 28.797014, 28.044096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429073, 29.288149, 27.616716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357311, 29.446424, 27.976994>,  <30.314255, 29.541389, 28.193159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357311, 29.446424, 27.976994>,  <30.429073, 29.288149, 27.616716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357311, 29.446424, 27.976994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983466, 0.049179, 0.174287,
		0.024668, 0.917068, -0.397967,
		-0.179405, 0.395687, 0.900692,
		30.303490, 29.565130, 28.247202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810593, 29.929478, 27.550283>,  <30.429073, 29.288149, 27.616716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810593, 29.929478, 27.550283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751810, 29.847620, 27.937380>,  <30.716541, 29.798506, 28.169638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751810, 29.847620, 27.937380>,  <30.810593, 29.929478, 27.550283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751810, 29.847620, 27.937380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980696, 0.097444, 0.169528,
		-0.128993, 0.973974, 0.186373,
		-0.146955, -0.204643, 0.967742,
		30.707724, 29.786226, 28.227703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165894, 30.352003, 27.944366>,  <30.810593, 29.929478, 27.550283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165894, 30.352003, 27.944366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121880, 30.028467, 28.175423>,  <31.095472, 29.834345, 28.314056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121880, 30.028467, 28.175423>,  <31.165894, 30.352003, 27.944366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121880, 30.028467, 28.175423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981694, 0.002462, 0.190448,
		-0.155464, 0.588024, 0.793762,
		-0.110034, -0.808840, 0.577642,
		31.088869, 29.785814, 28.348715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827265, 30.498905, 27.504044>,  <31.165894, 30.352003, 27.944366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827265, 30.498905, 27.504044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690470, 30.866528, 27.425680>,  <31.608393, 31.087101, 27.378662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690470, 30.866528, 27.425680>,  <31.827265, 30.498905, 27.504044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690470, 30.866528, 27.425680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299515, 0.304212, 0.904293,
		0.890694, 0.250579, -0.379308,
		-0.341987, 0.919057, -0.195907,
		31.587873, 31.142244, 27.366907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403599, 30.964788, 27.614035>,  <31.827265, 30.498905, 27.504044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403599, 30.964788, 27.614035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073936, 31.189821, 27.640167>,  <31.876139, 31.324841, 27.655846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073936, 31.189821, 27.640167>,  <32.403599, 30.964788, 27.614035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073936, 31.189821, 27.640167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357252, 0.426885, 0.830747,
		0.439477, 0.708003, -0.552803,
		-0.824155, 0.562584, 0.065330,
		31.826691, 31.358597, 27.659767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660019, 31.592220, 27.800097>,  <32.403599, 30.964788, 27.614035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660019, 31.592220, 27.800097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271839, 31.652409, 27.875549>,  <32.038929, 31.688522, 27.920820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271839, 31.652409, 27.875549>,  <32.660019, 31.592220, 27.800097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271839, 31.652409, 27.875549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240943, 0.562046, 0.791233,
		0.013038, 0.813303, -0.581694,
		-0.970452, 0.150471, 0.188632,
		31.980703, 31.697550, 27.932138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461849, 32.412170, 27.886156>,  <32.660019, 31.592220, 27.800097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461849, 32.412170, 27.886156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216850, 32.187122, 28.108257>,  <32.069851, 32.052094, 28.241518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216850, 32.187122, 28.108257>,  <32.461849, 32.412170, 27.886156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216850, 32.187122, 28.108257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114480, 0.631891, 0.766556,
		-0.782140, 0.533079, -0.322622,
		-0.612496, -0.562620, 0.555254,
		32.033100, 32.018337, 28.274834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040363, 32.942421, 28.089354>,  <32.461849, 32.412170, 27.886156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040363, 32.942421, 28.089354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988771, 32.610271, 28.306183>,  <31.957815, 32.410980, 28.436281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988771, 32.610271, 28.306183>,  <32.040363, 32.942421, 28.089354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988771, 32.610271, 28.306183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084408, 0.553849, 0.828327,
		-0.988048, 0.061083, -0.141526,
		-0.128981, -0.830373, 0.542074,
		31.950077, 32.361160, 28.468805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439840, 33.057835, 28.515459>,  <32.040363, 32.942421, 28.089354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439840, 33.057835, 28.515459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661358, 32.772057, 28.686518>,  <31.794270, 32.600590, 28.789154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661358, 32.772057, 28.686518>,  <31.439840, 33.057835, 28.515459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661358, 32.772057, 28.686518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243266, 0.352365, 0.903693,
		-0.796324, -0.604493, 0.021339,
		0.553796, -0.714442, 0.427649,
		31.827497, 32.557724, 28.814812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036976, 32.839325, 29.051672>,  <31.439840, 33.057835, 28.515459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036976, 32.839325, 29.051672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410875, 32.735653, 29.148891>,  <31.635216, 32.673450, 29.207224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410875, 32.735653, 29.148891>,  <31.036976, 32.839325, 29.051672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410875, 32.735653, 29.148891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185609, 0.227104, 0.956019,
		-0.302977, -0.938749, 0.164180,
		0.934748, -0.259179, 0.243048,
		31.691299, 32.657898, 29.221806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024202, 32.464134, 29.694099>,  <31.036976, 32.839325, 29.051672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024202, 32.464134, 29.694099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401466, 32.596615, 29.683132>,  <31.627825, 32.676105, 29.676552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401466, 32.596615, 29.683132>,  <31.024202, 32.464134, 29.694099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401466, 32.596615, 29.683132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045901, 0.211535, 0.976292,
		0.329155, -0.919540, 0.214714,
		0.943159, 0.331207, -0.027420,
		31.684414, 32.695976, 29.674906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342329, 32.029469, 30.146885>,  <31.024202, 32.464134, 29.694099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342329, 32.029469, 30.146885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563807, 32.362278, 30.133263>,  <31.696693, 32.561962, 30.125090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563807, 32.362278, 30.133263>,  <31.342329, 32.029469, 30.146885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563807, 32.362278, 30.133263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075989, 0.091209, 0.992928,
		0.829245, -0.547192, 0.113727,
		0.553695, 0.832023, -0.034054,
		31.729916, 32.611885, 30.123047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587736, 32.029995, 30.805206>,  <31.342329, 32.029469, 30.146885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587736, 32.029995, 30.805206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713266, 32.387604, 30.677313>,  <31.788584, 32.602169, 30.600576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713266, 32.387604, 30.677313>,  <31.587736, 32.029995, 30.805206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713266, 32.387604, 30.677313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002796, 0.337616, 0.941280,
		0.949476, -0.294504, 0.108452,
		0.313825, 0.894026, -0.319735,
		31.807415, 32.655811, 30.581392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033150, 32.240868, 31.349491>,  <31.587736, 32.029995, 30.805206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033150, 32.240868, 31.349491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929302, 32.578091, 31.161083>,  <31.866993, 32.780422, 31.048038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929302, 32.578091, 31.161083>,  <32.033150, 32.240868, 31.349491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929302, 32.578091, 31.161083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010899, 0.490271, 0.871502,
		0.965650, 0.221125, -0.136472,
		-0.259619, 0.843053, -0.471020,
		31.851416, 32.831005, 31.019777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553795, 32.756588, 31.552750>,  <32.033150, 32.240868, 31.349491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553795, 32.756588, 31.552750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208954, 32.926037, 31.441515>,  <32.002048, 33.027706, 31.374775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208954, 32.926037, 31.441515>,  <32.553795, 32.756588, 31.552750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208954, 32.926037, 31.441515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093553, 0.672393, 0.734259,
		0.498029, 0.606988, -0.619300,
		-0.862099, 0.423620, -0.278086,
		31.950325, 33.053123, 31.358089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544228, 33.448811, 31.809496>,  <32.553795, 32.756588, 31.552750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544228, 33.448811, 31.809496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158180, 33.427670, 31.706921>,  <31.926554, 33.414986, 31.645374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158180, 33.427670, 31.706921>,  <32.544228, 33.448811, 31.809496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158180, 33.427670, 31.706921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225894, 0.663291, 0.713454,
		0.132388, 0.746493, -0.652089,
		-0.965114, -0.052850, -0.256440,
		31.868647, 33.411816, 31.629988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388336, 34.077225, 31.746626>,  <32.544228, 33.448811, 31.809496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388336, 34.077225, 31.746626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054745, 33.873348, 31.831192>,  <31.854591, 33.751022, 31.881931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054745, 33.873348, 31.831192>,  <32.388336, 34.077225, 31.746626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054745, 33.873348, 31.831192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221987, 0.660667, 0.717106,
		-0.505179, 0.551118, -0.664126,
		-0.833976, -0.509694, 0.211414,
		31.804552, 33.720440, 31.894617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894373, 34.601288, 31.927374>,  <32.388336, 34.077225, 31.746626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894373, 34.601288, 31.927374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694172, 34.276623, 32.047844>,  <31.574051, 34.081825, 32.120125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694172, 34.276623, 32.047844>,  <31.894373, 34.601288, 31.927374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694172, 34.276623, 32.047844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388500, 0.521458, 0.759703,
		-0.773671, 0.263226, -0.576321,
		-0.500500, -0.811661, 0.301173,
		31.544022, 34.033123, 32.138195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177351, 34.809250, 32.099476>,  <31.894373, 34.601288, 31.927374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177351, 34.809250, 32.099476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238291, 34.460926, 32.286442>,  <31.274855, 34.251930, 32.398621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238291, 34.460926, 32.286442>,  <31.177351, 34.809250, 32.099476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238291, 34.460926, 32.286442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414680, 0.372974, 0.830018,
		-0.897123, -0.320282, -0.304285,
		0.152350, -0.870810, 0.467419,
		31.283997, 34.199684, 32.426666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671415, 34.737427, 32.447868>,  <31.177351, 34.809250, 32.099476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671415, 34.737427, 32.447868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907209, 34.475811, 32.637497>,  <31.048685, 34.318844, 32.751274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907209, 34.475811, 32.637497>,  <30.671415, 34.737427, 32.447868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907209, 34.475811, 32.637497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366314, 0.306625, 0.878519,
		-0.719945, -0.691533, -0.058831,
		0.589485, -0.654036, 0.474071,
		31.084055, 34.279598, 32.779716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.242161, 34.278049, 32.935890>,  <30.671415, 34.737427, 32.447868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.242161, 34.278049, 32.935890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625658, 34.281555, 33.049545>,  <30.855757, 34.283657, 33.117737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625658, 34.281555, 33.049545>,  <30.242161, 34.278049, 32.935890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625658, 34.281555, 33.049545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267940, 0.361737, 0.892947,
		-0.094958, -0.932239, 0.349161,
		0.958744, 0.008762, 0.284134,
		30.913280, 34.284184, 33.134785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230509, 33.898235, 33.491558>,  <30.242161, 34.278049, 32.935890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230509, 33.898235, 33.491558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528654, 34.164700, 33.481236>,  <30.707541, 34.324577, 33.475040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528654, 34.164700, 33.481236>,  <30.230509, 33.898235, 33.491558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528654, 34.164700, 33.481236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254519, 0.320130, 0.912544,
		0.616160, -0.673609, 0.408163,
		0.745363, 0.666159, -0.025805,
		30.752264, 34.364548, 33.473495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391596, 34.009369, 34.226658>,  <30.230509, 33.898235, 33.491558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391596, 34.009369, 34.226658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589384, 34.312168, 34.055798>,  <30.708057, 34.493847, 33.953281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589384, 34.312168, 34.055798>,  <30.391596, 34.009369, 34.226658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589384, 34.312168, 34.055798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107283, 0.540823, 0.834266,
		0.862549, -0.366693, 0.348634,
		0.494469, 0.756998, -0.427147,
		30.737724, 34.539268, 33.927654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757280, 34.233768, 34.773518>,  <30.391596, 34.009369, 34.226658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757280, 34.233768, 34.773518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.771700, 34.540501, 34.517185>,  <30.780352, 34.724541, 34.363384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.771700, 34.540501, 34.517185>,  <30.757280, 34.233768, 34.773518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771700, 34.540501, 34.517185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028738, 0.641782, 0.766348,
		0.998937, -0.009210, 0.045172,
		0.036048, 0.766832, -0.640835,
		30.782515, 34.770550, 34.324936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217478, 34.756416, 35.088406>,  <30.757280, 34.233768, 34.773518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217478, 34.756416, 35.088406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011513, 34.953461, 34.807777>,  <30.887934, 35.071690, 34.639400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011513, 34.953461, 34.807777>,  <31.217478, 34.756416, 35.088406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011513, 34.953461, 34.807777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219025, 0.715636, 0.663245,
		0.828790, 0.495174, -0.260594,
		-0.514912, 0.492614, -0.701567,
		30.857038, 35.101246, 34.597305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439291, 35.458500, 34.953197>,  <31.217478, 34.756416, 35.088406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439291, 35.458500, 34.953197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051582, 35.450565, 34.855118>,  <30.818956, 35.445805, 34.796272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051582, 35.450565, 34.855118>,  <31.439291, 35.458500, 34.953197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051582, 35.450565, 34.855118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188729, 0.699271, 0.689494,
		0.157783, 0.714582, -0.681525,
		-0.969271, -0.019833, -0.245195,
		30.760801, 35.444614, 34.781559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243017, 36.077564, 34.896824>,  <31.439291, 35.458500, 34.953197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243017, 36.077564, 34.896824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902409, 35.879498, 34.965786>,  <30.698044, 35.760658, 35.007164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902409, 35.879498, 34.965786>,  <31.243017, 36.077564, 34.896824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902409, 35.879498, 34.965786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169120, 0.570630, 0.803604,
		-0.496294, 0.655130, -0.569646,
		-0.851523, -0.495162, 0.172405,
		30.646952, 35.730949, 35.017506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464298, 36.524776, 34.192356>,  <31.243017, 36.077564, 34.896824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464298, 36.524776, 34.192356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608255, 36.801357, 34.442913>,  <31.694630, 36.967304, 34.593246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608255, 36.801357, 34.442913>,  <31.464298, 36.524776, 34.192356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608255, 36.801357, 34.442913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883744, -0.467889, 0.008735,
		0.299124, 0.550430, -0.779456,
		0.359891, 0.691452, 0.626396,
		31.716223, 37.008793, 34.630833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150940, 36.772610, 34.043552>,  <31.464298, 36.524776, 34.192356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150940, 36.772610, 34.043552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109459, 36.779877, 34.441330>,  <32.084572, 36.784237, 34.679996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109459, 36.779877, 34.441330>,  <32.150940, 36.772610, 34.043552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109459, 36.779877, 34.441330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859801, -0.500979, 0.098810,
		0.499990, 0.865269, 0.036330,
		-0.103698, 0.018167, 0.994443,
		32.078350, 36.785328, 34.739662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620998, 37.205032, 34.394794>,  <32.150940, 36.772610, 34.043552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620998, 37.205032, 34.394794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535076, 36.878689, 34.609539>,  <32.483524, 36.682880, 34.738388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535076, 36.878689, 34.609539>,  <32.620998, 37.205032, 34.394794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535076, 36.878689, 34.609539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950282, -0.301482, -0.077935,
		0.225440, 0.493433, 0.840060,
		-0.214807, -0.815863, 0.536866,
		32.470634, 36.633930, 34.770599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087078, 37.180351, 34.978634>,  <32.620998, 37.205032, 34.394794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087078, 37.180351, 34.978634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948093, 36.812500, 34.905365>,  <32.864704, 36.591789, 34.861404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948093, 36.812500, 34.905365>,  <33.087078, 37.180351, 34.978634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948093, 36.812500, 34.905365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903947, -0.380439, 0.195309,
		-0.249299, -0.097719, 0.963484,
		-0.347461, -0.919629, -0.183176,
		32.843857, 36.536610, 34.850410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541553, 36.924393, 35.340351>,  <33.087078, 37.180351, 34.978634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541553, 36.924393, 35.340351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351444, 36.649551, 35.120529>,  <33.237381, 36.484646, 34.988636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351444, 36.649551, 35.120529>,  <33.541553, 36.924393, 35.340351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351444, 36.649551, 35.120529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832882, -0.552676, -0.029293,
		-0.283598, -0.471636, 0.834944,
		-0.475269, -0.687102, -0.549555,
		33.208862, 36.443420, 34.955662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750290, 36.218887, 35.623394>,  <33.541553, 36.924393, 35.340351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750290, 36.218887, 35.623394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656174, 36.246204, 35.235584>,  <33.599705, 36.262592, 35.002899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656174, 36.246204, 35.235584>,  <33.750290, 36.218887, 35.623394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656174, 36.246204, 35.235584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795914, -0.558974, -0.232529,
		-0.557823, -0.826367, 0.077146,
		-0.235277, 0.068309, -0.969525,
		33.585587, 36.266693, 34.944729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448727, 36.426735, 35.815453>,  <33.750290, 36.218887, 35.623394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448727, 36.426735, 35.815453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807350, 36.262848, 35.882759>,  <35.022526, 36.164516, 35.923141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807350, 36.262848, 35.882759>,  <34.448727, 36.426735, 35.815453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807350, 36.262848, 35.882759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056110, 0.481894, 0.874431,
		-0.439355, -0.774538, 0.455036,
		0.896560, -0.409718, 0.168263,
		35.076317, 36.139931, 35.933239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381542, 36.162148, 36.443188>,  <34.448727, 36.426735, 35.815453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381542, 36.162148, 36.443188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776501, 36.194607, 36.388844>,  <35.013477, 36.214081, 36.356236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776501, 36.194607, 36.388844>,  <34.381542, 36.162148, 36.443188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776501, 36.194607, 36.388844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091080, 0.410676, 0.907221,
		0.129413, -0.908163, 0.398111,
		0.987399, 0.081146, -0.135862,
		35.072720, 36.218952, 36.348083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771885, 35.859596, 36.971695>,  <34.381542, 36.162148, 36.443188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771885, 35.859596, 36.971695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021492, 36.121895, 36.801708>,  <35.171257, 36.279274, 36.699715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021492, 36.121895, 36.801708>,  <34.771885, 35.859596, 36.971695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021492, 36.121895, 36.801708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227710, 0.367640, 0.901659,
		0.747498, -0.659418, 0.080092,
		0.624015, 0.655750, -0.424967,
		35.208698, 36.318619, 36.674217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355541, 35.871155, 37.353100>,  <34.771885, 35.859596, 36.971695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355541, 35.871155, 37.353100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391586, 36.225044, 37.170166>,  <35.413216, 36.437378, 37.060406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391586, 36.225044, 37.170166>,  <35.355541, 35.871155, 37.353100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391586, 36.225044, 37.170166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149665, 0.441954, 0.884464,
		0.984621, -0.148152, -0.092584,
		0.090117, 0.884719, -0.457331,
		35.418621, 36.490459, 37.032967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760265, 36.191906, 37.843834>,  <35.355541, 35.871155, 37.353100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760265, 36.191906, 37.843834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696156, 36.501770, 37.599140>,  <35.657692, 36.687687, 37.452324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696156, 36.501770, 37.599140>,  <35.760265, 36.191906, 37.843834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696156, 36.501770, 37.599140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081747, 0.607201, 0.790331,
		0.983682, 0.176674, -0.033990,
		-0.160270, 0.774656, -0.611736,
		35.648075, 36.734165, 37.415619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283432, 36.727955, 38.024708>,  <35.760265, 36.191906, 37.843834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283432, 36.727955, 38.024708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957336, 36.893555, 37.862732>,  <35.761677, 36.992916, 37.765545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957336, 36.893555, 37.862732>,  <36.283432, 36.727955, 38.024708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957336, 36.893555, 37.862732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083377, 0.608050, 0.789509,
		0.573086, 0.677404, -0.461190,
		-0.815243, 0.414004, -0.404944,
		35.712765, 37.017757, 37.741249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381695, 37.447109, 38.006729>,  <36.283432, 36.727955, 38.024708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381695, 37.447109, 38.006729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987625, 37.378822, 38.013584>,  <35.751183, 37.337852, 38.017696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987625, 37.378822, 38.013584>,  <36.381695, 37.447109, 38.006729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987625, 37.378822, 38.013584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076329, 0.525524, 0.847348,
		-0.153659, 0.833475, -0.530762,
		-0.985171, -0.170715, 0.017133,
		35.692074, 37.327606, 38.018723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048046, 38.068447, 38.155830>,  <36.381695, 37.447109, 38.006729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048046, 38.068447, 38.155830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807861, 37.773640, 38.279919>,  <35.663750, 37.596756, 38.354374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807861, 37.773640, 38.279919>,  <36.048046, 38.068447, 38.155830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807861, 37.773640, 38.279919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130697, 0.473187, 0.871213,
		-0.788898, 0.482588, -0.380459,
		-0.600465, -0.737023, 0.310223,
		35.627720, 37.552532, 38.372986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462421, 38.511753, 38.416290>,  <36.048046, 38.068447, 38.155830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462421, 38.511753, 38.416290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373135, 38.150932, 38.564056>,  <35.319561, 37.934441, 38.652718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373135, 38.150932, 38.564056>,  <35.462421, 38.511753, 38.416290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373135, 38.150932, 38.564056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315770, 0.425460, 0.848100,
		-0.922205, 0.072663, -0.379813,
		-0.223221, -0.902055, 0.369417,
		35.306168, 37.880314, 38.674881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861057, 38.624828, 38.874649>,  <35.462421, 38.511753, 38.416290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861057, 38.624828, 38.874649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952637, 38.248573, 38.974873>,  <35.007584, 38.022820, 39.035007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952637, 38.248573, 38.974873>,  <34.861057, 38.624828, 38.874649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952637, 38.248573, 38.974873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207037, 0.204450, 0.956732,
		-0.951166, -0.270919, -0.147938,
		0.228951, -0.940640, 0.250556,
		35.021320, 37.966381, 39.050041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326897, 38.247952, 39.271366>,  <34.861057, 38.624828, 38.874649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326897, 38.247952, 39.271366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652355, 38.032585, 39.359085>,  <34.847630, 37.903366, 39.411716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652355, 38.032585, 39.359085>,  <34.326897, 38.247952, 39.271366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652355, 38.032585, 39.359085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194846, 0.102850, 0.975427,
		-0.547738, -0.836381, -0.021224,
		0.813645, -0.538414, 0.219300,
		34.896450, 37.871059, 39.424873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129253, 37.692970, 39.712620>,  <34.326897, 38.247952, 39.271366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129253, 37.692970, 39.712620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513836, 37.752235, 39.805264>,  <34.744587, 37.787796, 39.860851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513836, 37.752235, 39.805264>,  <34.129253, 37.692970, 39.712620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513836, 37.752235, 39.805264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229118, -0.033937, 0.972807,
		0.151995, -0.988380, 0.001318,
		0.961458, 0.148164, 0.231614,
		34.802273, 37.796684, 39.874748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329742, 37.303253, 40.304478>,  <34.129253, 37.692970, 39.712620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329742, 37.303253, 40.304478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608349, 37.590015, 40.292366>,  <34.775513, 37.762074, 40.285099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608349, 37.590015, 40.292366>,  <34.329742, 37.303253, 40.304478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608349, 37.590015, 40.292366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058525, 0.098817, 0.993383,
		0.715153, -0.690132, 0.110784,
		0.696513, 0.716905, -0.030280,
		34.817303, 37.805088, 40.283283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819695, 37.153049, 40.849712>,  <34.329742, 37.303253, 40.304478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819695, 37.153049, 40.849712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881477, 37.543228, 40.786907>,  <34.918549, 37.777336, 40.749222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881477, 37.543228, 40.786907>,  <34.819695, 37.153049, 40.849712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881477, 37.543228, 40.786907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087928, 0.171863, 0.981189,
		0.984079, -0.137745, 0.112314,
		0.154456, 0.975443, -0.157015,
		34.927814, 37.835861, 40.739803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410114, 37.423000, 41.324268>,  <34.819695, 37.153049, 40.849712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410114, 37.423000, 41.324268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160385, 37.719894, 41.226860>,  <35.010548, 37.898029, 41.168415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160385, 37.719894, 41.226860>,  <35.410114, 37.423000, 41.324268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160385, 37.719894, 41.226860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000735, 0.311189, 0.950348,
		0.781164, 0.593506, -0.193738,
		-0.624326, 0.742235, -0.243525,
		34.973087, 37.942566, 41.153801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707626, 37.949135, 41.680431>,  <35.410114, 37.423000, 41.324268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707626, 37.949135, 41.680431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362263, 38.133068, 41.597404>,  <35.155045, 38.243427, 41.547588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362263, 38.133068, 41.597404>,  <35.707626, 37.949135, 41.680431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362263, 38.133068, 41.597404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052220, 0.327763, 0.943316,
		0.501802, 0.825303, -0.258980,
		-0.863405, 0.459834, -0.207569,
		35.103241, 38.271019, 41.535133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678471, 38.551006, 42.075123>,  <35.707626, 37.949135, 41.680431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678471, 38.551006, 42.075123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287006, 38.521519, 41.998402>,  <35.052128, 38.503826, 41.952370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287006, 38.521519, 41.998402>,  <35.678471, 38.551006, 42.075123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287006, 38.521519, 41.998402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205404, 0.376839, 0.903217,
		0.005693, 0.923340, -0.383940,
		-0.978661, -0.073721, -0.191803,
		34.993408, 38.499401, 41.940861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337563, 39.230839, 42.215446>,  <35.678471, 38.551006, 42.075123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337563, 39.230839, 42.215446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064087, 38.941261, 42.252274>,  <34.900002, 38.767513, 42.274372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064087, 38.941261, 42.252274>,  <35.337563, 39.230839, 42.215446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064087, 38.941261, 42.252274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238615, 0.340988, 0.909280,
		-0.689661, 0.599695, -0.405874,
		-0.683689, -0.723943, 0.092070,
		34.858982, 38.724079, 42.279896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641567, 39.538475, 42.241028>,  <35.337563, 39.230839, 42.215446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641567, 39.538475, 42.241028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606174, 39.174873, 42.403938>,  <34.584938, 38.956711, 42.501686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606174, 39.174873, 42.403938>,  <34.641567, 39.538475, 42.241028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606174, 39.174873, 42.403938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418350, 0.404984, 0.813002,
		-0.903966, -0.098445, -0.416119,
		-0.088485, -0.909009, 0.407276,
		34.579628, 38.902172, 42.526119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968250, 39.599888, 42.618122>,  <34.641567, 39.538475, 42.241028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968250, 39.599888, 42.618122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139874, 39.282585, 42.790936>,  <34.242847, 39.092205, 42.894623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139874, 39.282585, 42.790936>,  <33.968250, 39.599888, 42.618122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139874, 39.282585, 42.790936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442100, 0.232668, 0.866264,
		-0.787690, -0.562679, -0.250871,
		0.429059, -0.793258, 0.432031,
		34.268593, 39.044609, 42.920544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501125, 39.373859, 43.156631>,  <33.968250, 39.599888, 42.618122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501125, 39.373859, 43.156631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843071, 39.194485, 43.261028>,  <34.048237, 39.086861, 43.323666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843071, 39.194485, 43.261028>,  <33.501125, 39.373859, 43.156631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843071, 39.194485, 43.261028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317616, -0.054525, 0.946650,
		-0.410285, -0.892148, -0.189043,
		0.854860, -0.448440, 0.260990,
		34.099529, 39.059952, 43.339325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251610, 38.786304, 43.510067>,  <33.501125, 39.373859, 43.156631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251610, 38.786304, 43.510067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634647, 38.849358, 43.606541>,  <33.864468, 38.887188, 43.664425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634647, 38.849358, 43.606541>,  <33.251610, 38.786304, 43.510067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634647, 38.849358, 43.606541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269364, 0.192638, 0.943575,
		0.102276, -0.968526, 0.226929,
		0.957592, 0.157632, 0.241184,
		33.921925, 38.896648, 43.678894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413719, 38.395176, 44.119251>,  <33.251610, 38.786304, 43.510067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413719, 38.395176, 44.119251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698952, 38.675587, 44.122711>,  <33.870090, 38.843834, 44.124786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698952, 38.675587, 44.122711>,  <33.413719, 38.395176, 44.119251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698952, 38.675587, 44.122711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149942, 0.140445, 0.978669,
		0.684859, -0.699168, 0.205262,
		0.713082, 0.701027, 0.008650,
		33.912876, 38.885895, 44.125305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582611, 38.444538, 44.902294>,  <33.413719, 38.395176, 44.119251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582611, 38.444538, 44.902294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760464, 38.763664, 44.739426>,  <33.867176, 38.955139, 44.641705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760464, 38.763664, 44.739426>,  <33.582611, 38.444538, 44.902294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760464, 38.763664, 44.739426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081293, 0.488649, 0.868685,
		0.892016, -0.353146, 0.282127,
		0.444634, 0.797816, -0.407174,
		33.893852, 39.003010, 44.617275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016090, 38.617119, 45.423351>,  <33.582611, 38.444538, 44.902294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016090, 38.617119, 45.423351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962765, 38.947334, 45.204002>,  <33.930771, 39.145466, 45.072395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962765, 38.947334, 45.204002>,  <34.016090, 38.617119, 45.423351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962765, 38.947334, 45.204002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162633, 0.527584, 0.833790,
		0.977639, 0.200337, 0.063927,
		-0.133312, 0.825542, -0.548368,
		33.922771, 39.194996, 45.039494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518410, 39.132271, 45.712185>,  <34.016090, 38.617119, 45.423351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518410, 39.132271, 45.712185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209900, 39.295338, 45.516659>,  <34.024792, 39.393177, 45.399345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209900, 39.295338, 45.516659>,  <34.518410, 39.132271, 45.712185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209900, 39.295338, 45.516659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187565, 0.588299, 0.786590,
		0.608236, 0.698363, -0.377277,
		-0.771277, 0.407669, -0.488813,
		33.978516, 39.417637, 45.370014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549187, 39.851749, 45.815090>,  <34.518410, 39.132271, 45.712185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549187, 39.851749, 45.815090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165775, 39.805923, 45.710709>,  <33.935730, 39.778427, 45.648079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165775, 39.805923, 45.710709>,  <34.549187, 39.851749, 45.815090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165775, 39.805923, 45.710709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269822, 0.659594, 0.701521,
		0.091753, 0.742839, -0.663152,
		-0.958529, -0.114567, -0.260954,
		33.878216, 39.771553, 45.632423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313610, 40.562340, 45.705540>,  <34.549187, 39.851749, 45.815090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313610, 40.562340, 45.705540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000336, 40.320358, 45.763020>,  <33.812370, 40.175171, 45.797508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000336, 40.320358, 45.763020>,  <34.313610, 40.562340, 45.705540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000336, 40.320358, 45.763020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373732, 0.642703, 0.668773,
		-0.496932, 0.470069, -0.729447,
		-0.783187, -0.604953, 0.143700,
		33.765381, 40.138874, 45.806129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794582, 40.923363, 45.625435>,  <34.313610, 40.562340, 45.705540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794582, 40.923363, 45.625435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583374, 40.634579, 45.804302>,  <33.456650, 40.461308, 45.911621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583374, 40.634579, 45.804302>,  <33.794582, 40.923363, 45.625435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583374, 40.634579, 45.804302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416682, 0.679070, 0.604350,
		-0.739976, 0.132786, -0.659396,
		-0.528025, -0.721964, 0.447167,
		33.424965, 40.417988, 45.938454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092594, 41.214199, 45.671749>,  <33.794582, 40.923363, 45.625435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092594, 41.214199, 45.671749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126049, 40.925346, 45.946423>,  <33.146122, 40.752037, 46.111225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126049, 40.925346, 45.946423>,  <33.092594, 41.214199, 45.671749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126049, 40.925346, 45.946423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401081, 0.606423, 0.686575,
		-0.912216, -0.332838, -0.238914,
		0.083636, -0.722128, 0.686684,
		33.151138, 40.708710, 46.152428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450790, 41.206188, 46.113800>,  <33.092594, 41.214199, 45.671749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450790, 41.206188, 46.113800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752014, 41.056953, 46.330582>,  <32.932747, 40.967415, 46.460651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752014, 41.056953, 46.330582>,  <32.450790, 41.206188, 46.113800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752014, 41.056953, 46.330582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307250, 0.528959, 0.791075,
		-0.581808, -0.762240, 0.283707,
		0.753058, -0.373085, 0.541951,
		32.977932, 40.945026, 46.493168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177349, 41.133858, 46.752243>,  <32.450790, 41.206188, 46.113800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177349, 41.133858, 46.752243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565449, 41.137363, 46.849030>,  <32.798309, 41.139465, 46.907101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565449, 41.137363, 46.849030>,  <32.177349, 41.133858, 46.752243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565449, 41.137363, 46.849030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201322, 0.584386, 0.786106,
		-0.134516, -0.811428, 0.568761,
		0.970245, 0.008760, 0.241967,
		32.856522, 41.139992, 46.921619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324596, 40.879833, 47.491585>,  <32.177349, 41.133858, 46.752243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324596, 40.879833, 47.491585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614140, 41.127590, 47.370007>,  <32.787865, 41.276245, 47.297062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614140, 41.127590, 47.370007>,  <32.324596, 40.879833, 47.491585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614140, 41.127590, 47.370007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127734, 0.312607, 0.941255,
		0.678018, -0.720162, 0.147167,
		0.723862, 0.619389, -0.303943,
		32.831299, 41.313408, 47.278824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995285, 40.726959, 47.820225>,  <32.324596, 40.879833, 47.491585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995285, 40.726959, 47.820225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961647, 41.117985, 47.742985>,  <32.941463, 41.352600, 47.696640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961647, 41.117985, 47.742985>,  <32.995285, 40.726959, 47.820225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961647, 41.117985, 47.742985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183765, 0.205679, 0.961211,
		0.979366, 0.045346, -0.196939,
		-0.084093, 0.977568, -0.193103,
		32.936420, 41.411255, 47.685055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510067, 41.116131, 48.267414>,  <32.995285, 40.726959, 47.820225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510067, 41.116131, 48.267414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209442, 41.354046, 48.153301>,  <33.029068, 41.496796, 48.084835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209442, 41.354046, 48.153301>,  <33.510067, 41.116131, 48.267414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209442, 41.354046, 48.153301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070307, 0.357773, 0.931158,
		0.655910, 0.719876, -0.227069,
		-0.751558, 0.594791, -0.285280,
		32.983974, 41.532482, 48.067719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729195, 41.747086, 48.456795>,  <33.510067, 41.116131, 48.267414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729195, 41.747086, 48.456795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330101, 41.770412, 48.443325>,  <33.090645, 41.784409, 48.435246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330101, 41.770412, 48.443325>,  <33.729195, 41.747086, 48.456795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330101, 41.770412, 48.443325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013312, 0.319318, 0.947554,
		0.066013, 0.945851, -0.317816,
		-0.997730, 0.058320, -0.033671,
		33.030781, 41.787907, 48.433224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654972, 42.238983, 48.861675>,  <33.729195, 41.747086, 48.456795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654972, 42.238983, 48.861675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292004, 42.075294, 48.823479>,  <33.074223, 41.977081, 48.800560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292004, 42.075294, 48.823479>,  <33.654972, 42.238983, 48.861675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292004, 42.075294, 48.823479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169924, 0.149502, 0.974051,
		-0.384324, 0.900105, -0.205198,
		-0.907425, -0.409219, -0.095492,
		33.019775, 41.952530, 48.794830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255623, 42.592686, 49.343349>,  <33.654972, 42.238983, 48.861675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255623, 42.592686, 49.343349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043777, 42.259239, 49.280621>,  <32.916668, 42.059174, 49.242981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043777, 42.259239, 49.280621>,  <33.255623, 42.592686, 49.343349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043777, 42.259239, 49.280621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381837, 0.069208, 0.921634,
		-0.757434, 0.547995, -0.354959,
		-0.529617, -0.833614, -0.156824,
		32.884892, 42.009155, 49.233574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694485, 42.688103, 49.769039>,  <33.255623, 42.592686, 49.343349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694485, 42.688103, 49.769039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673962, 42.298283, 49.681759>,  <32.661648, 42.064388, 49.629391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673962, 42.298283, 49.681759>,  <32.694485, 42.688103, 49.769039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673962, 42.298283, 49.681759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117957, -0.211043, 0.970334,
		-0.991692, 0.075525, -0.104127,
		-0.051309, -0.974555, -0.218198,
		32.658569, 42.005917, 49.616299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109219, 42.393627, 49.914192>,  <32.694485, 42.688103, 49.769039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109219, 42.393627, 49.914192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377716, 42.098343, 49.940952>,  <32.538815, 41.921173, 49.957008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377716, 42.098343, 49.940952>,  <32.109219, 42.393627, 49.914192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377716, 42.098343, 49.940952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377614, -0.262899, 0.887858,
		-0.637836, -0.621235, -0.455228,
		0.671248, -0.738208, 0.066901,
		32.579090, 41.876881, 49.961021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808367, 41.799736, 50.293468>,  <32.109219, 42.393627, 49.914192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808367, 41.799736, 50.293468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203239, 41.738308, 50.310844>,  <32.440163, 41.701450, 50.321270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203239, 41.738308, 50.310844>,  <31.808367, 41.799736, 50.293468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203239, 41.738308, 50.310844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074817, -0.204906, 0.975918,
		-0.140967, -0.966660, -0.213769,
		0.987183, -0.153565, 0.043438,
		32.499393, 41.692238, 50.323875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126797, 41.090340, 50.338947>,  <31.808367, 41.799736, 50.293468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126797, 41.090340, 50.338947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407818, 41.308720, 50.521530>,  <32.576431, 41.439747, 50.631081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407818, 41.308720, 50.521530>,  <32.126797, 41.090340, 50.338947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407818, 41.308720, 50.521530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145500, -0.517673, 0.843116,
		0.696599, -0.658747, -0.284256,
		0.702552, 0.545955, 0.456459,
		32.618584, 41.472507, 50.658466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659191, 40.581711, 50.725197>,  <32.126797, 41.090340, 50.338947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659191, 40.581711, 50.725197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560318, 40.940727, 50.871246>,  <32.500992, 41.156136, 50.958878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560318, 40.940727, 50.871246>,  <32.659191, 40.581711, 50.725197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560318, 40.940727, 50.871246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357327, -0.434699, 0.826653,
		0.900676, 0.073867, 0.428167,
		-0.247186, 0.897541, 0.365128,
		32.486160, 41.209991, 50.980785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048733, 40.727486, 51.371269>,  <32.659191, 40.581711, 50.725197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048733, 40.727486, 51.371269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685627, 40.894791, 51.358425>,  <32.467766, 40.995174, 51.350719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685627, 40.894791, 51.358425>,  <33.048733, 40.727486, 51.371269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685627, 40.894791, 51.358425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258256, -0.496904, 0.828487,
		0.330568, 0.760359, 0.559088,
		-0.907760, 0.418259, -0.032107,
		32.413300, 41.020267, 51.348793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850639, 40.939011, 52.040813>,  <33.048733, 40.727486, 51.371269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850639, 40.939011, 52.040813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512539, 40.847393, 51.847694>,  <32.309677, 40.792423, 51.731823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512539, 40.847393, 51.847694>,  <32.850639, 40.939011, 52.040813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512539, 40.847393, 51.847694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227996, -0.662547, 0.713477,
		-0.483291, 0.713142, 0.507797,
		-0.845250, -0.229041, -0.482797,
		32.258965, 40.778679, 51.702854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236271, 41.036350, 52.390057>,  <32.850639, 40.939011, 52.040813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236271, 41.036350, 52.390057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218910, 40.723957, 52.140839>,  <32.208492, 40.536522, 51.991310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218910, 40.723957, 52.140839>,  <32.236271, 41.036350, 52.390057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218910, 40.723957, 52.140839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142622, -0.612398, 0.777578,
		-0.988825, 0.122611, -0.084804,
		-0.043405, -0.780984, -0.623041,
		32.205887, 40.489662, 51.953926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603373, 40.606152, 52.443222>,  <32.236271, 41.036350, 52.390057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603373, 40.606152, 52.443222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916235, 40.383026, 52.332172>,  <32.103954, 40.249153, 52.265541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916235, 40.383026, 52.332172>,  <31.603373, 40.606152, 52.443222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916235, 40.383026, 52.332172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191076, -0.638837, 0.745236,
		-0.593058, -0.529845, -0.606256,
		0.782159, -0.557809, -0.277626,
		32.150883, 40.215683, 52.248882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640379, 39.854950, 52.112503>,  <31.603373, 40.606152, 52.443222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640379, 39.854950, 52.112503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919123, 39.971912, 52.374458>,  <32.086369, 40.042091, 52.531631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919123, 39.971912, 52.374458>,  <31.640379, 39.854950, 52.112503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919123, 39.971912, 52.374458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210755, -0.789313, 0.576686,
		0.685542, -0.539892, -0.488415,
		0.696861, 0.292406, 0.654892,
		32.128181, 40.059635, 52.570927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751659, 40.014553, 51.274307>,  <31.640379, 39.854950, 52.112503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751659, 40.014553, 51.274307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685398, 40.097286, 50.888607>,  <31.645641, 40.146927, 50.657188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685398, 40.097286, 50.888607>,  <31.751659, 40.014553, 51.274307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685398, 40.097286, 50.888607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512137, -0.817536, -0.263346,
		-0.842778, -0.537452, 0.029498,
		-0.165652, 0.206835, -0.964250,
		31.635702, 40.159336, 50.599331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106415, 39.498756, 51.050144>,  <31.751659, 40.014553, 51.274307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106415, 39.498756, 51.050144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967131, 39.573956, 50.682796>,  <31.883560, 39.619076, 50.462387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967131, 39.573956, 50.682796>,  <32.106415, 39.498756, 51.050144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967131, 39.573956, 50.682796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590658, -0.716744, -0.370676,
		-0.727927, -0.671515, 0.138528,
		-0.348204, 0.188002, -0.918373,
		31.862669, 39.630356, 50.407284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133881, 38.865681, 50.747246>,  <32.106415, 39.498756, 51.050144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133881, 38.865681, 50.747246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088421, 39.107998, 50.432259>,  <32.061146, 39.253387, 50.243267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088421, 39.107998, 50.432259>,  <32.133881, 38.865681, 50.747246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088421, 39.107998, 50.432259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579848, -0.603165, -0.547693,
		-0.806759, -0.518853, -0.282720,
		-0.113646, 0.605791, -0.787465,
		32.054329, 39.289734, 50.196018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694048, 38.592773, 50.232727>,  <32.133881, 38.865681, 50.747246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694048, 38.592773, 50.232727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943611, 38.844345, 50.047173>,  <32.093349, 38.995289, 49.935841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943611, 38.844345, 50.047173>,  <31.694048, 38.592773, 50.232727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943611, 38.844345, 50.047173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352980, -0.756372, -0.550733,
		-0.697239, 0.179866, -0.693907,
		0.623910, 0.628928, -0.463883,
		32.130783, 39.033024, 49.908009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675306, 38.354324, 49.542759>,  <31.694048, 38.592773, 50.232727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675306, 38.354324, 49.542759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995403, 38.593674, 49.558556>,  <32.187462, 38.737282, 49.568031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995403, 38.593674, 49.558556>,  <31.675306, 38.354324, 49.542759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995403, 38.593674, 49.558556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449849, -0.555461, -0.699356,
		-0.396543, 0.577418, -0.713682,
		0.800243, 0.598374, 0.039487,
		32.235477, 38.773186, 49.570400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822948, 38.541111, 48.821491>,  <31.675306, 38.354324, 49.542759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822948, 38.541111, 48.821491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161598, 38.623039, 49.017971>,  <32.364788, 38.672195, 49.135860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161598, 38.623039, 49.017971>,  <31.822948, 38.541111, 48.821491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161598, 38.623039, 49.017971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526324, -0.458948, -0.715786,
		0.078829, 0.864532, -0.496357,
		0.846622, 0.204820, 0.491202,
		32.415585, 38.684486, 49.165333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335247, 38.745762, 48.316696>,  <31.822948, 38.541111, 48.821491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335247, 38.745762, 48.316696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551197, 38.625042, 48.631008>,  <32.680767, 38.552612, 48.819595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551197, 38.625042, 48.631008>,  <32.335247, 38.745762, 48.316696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551197, 38.625042, 48.631008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515311, -0.619638, -0.592033,
		0.665573, 0.724547, -0.179009,
		0.539877, -0.301796, 0.785781,
		32.713161, 38.534504, 48.866741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069664, 38.748814, 48.070057>,  <32.335247, 38.745762, 48.316696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069664, 38.748814, 48.070057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061558, 38.511917, 48.392258>,  <33.056694, 38.369778, 48.585579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061558, 38.511917, 48.392258>,  <33.069664, 38.748814, 48.070057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061558, 38.511917, 48.392258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659561, -0.613406, -0.434409,
		0.751377, 0.522475, 0.403054,
		-0.020268, -0.592244, 0.805504,
		33.055477, 38.334244, 48.633907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859722, 38.565529, 48.207943>,  <33.069664, 38.748814, 48.070057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859722, 38.565529, 48.207943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635406, 38.308933, 48.417324>,  <33.500816, 38.154976, 48.542953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635406, 38.308933, 48.417324>,  <33.859722, 38.565529, 48.207943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635406, 38.308933, 48.417324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666613, -0.724796, -0.174064,
		0.491059, 0.251329, 0.834083,
		-0.560792, -0.641486, 0.523457,
		33.467167, 38.116486, 48.574360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375565, 38.169754, 48.571419>,  <33.859722, 38.565529, 48.207943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375565, 38.169754, 48.571419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040863, 37.951843, 48.593533>,  <33.840042, 37.821095, 48.606800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040863, 37.951843, 48.593533>,  <34.375565, 38.169754, 48.571419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040863, 37.951843, 48.593533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488422, -0.788190, -0.374432,
		0.247560, -0.286304, 0.925605,
		-0.836754, -0.544780, 0.055287,
		33.789837, 37.788410, 48.610119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522766, 37.435390, 48.910690>,  <34.375565, 38.169754, 48.571419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522766, 37.435390, 48.910690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194111, 37.403488, 48.684929>,  <33.996918, 37.384346, 48.549473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194111, 37.403488, 48.684929>,  <34.522766, 37.435390, 48.910690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194111, 37.403488, 48.684929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400206, -0.785787, -0.471565,
		-0.405889, -0.613333, 0.677553,
		-0.821638, -0.079758, -0.564402,
		33.947620, 37.379562, 48.515610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321785, 36.753723, 48.989754>,  <34.522766, 37.435390, 48.910690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321785, 36.753723, 48.989754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168053, 36.896931, 48.649376>,  <34.075813, 36.982857, 48.445148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168053, 36.896931, 48.649376>,  <34.321785, 36.753723, 48.989754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168053, 36.896931, 48.649376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581257, -0.622266, -0.524333,
		-0.717237, -0.696137, 0.031056,
		-0.384333, 0.358019, -0.850947,
		34.052753, 37.004337, 48.394093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251442, 36.172085, 48.548431>,  <34.321785, 36.753723, 48.989754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251442, 36.172085, 48.548431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257381, 36.480171, 48.293388>,  <34.260944, 36.665024, 48.140362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257381, 36.480171, 48.293388>,  <34.251442, 36.172085, 48.548431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257381, 36.480171, 48.293388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624047, -0.505379, -0.595951,
		-0.781246, -0.389048, -0.488156,
		0.014850, 0.770217, -0.637609,
		34.261837, 36.711235, 48.102104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122887, 35.901783, 47.907837>,  <34.251442, 36.172085, 48.548431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122887, 35.901783, 47.907837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294720, 36.247623, 47.803589>,  <34.397820, 36.455128, 47.741039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294720, 36.247623, 47.803589>,  <34.122887, 35.901783, 47.907837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294720, 36.247623, 47.803589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394360, -0.439250, -0.807180,
		-0.812368, 0.243970, -0.529658,
		0.429580, 0.864603, -0.260621,
		34.423595, 36.507004, 47.725403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032974, 35.921299, 47.186852>,  <34.122887, 35.901783, 47.907837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032974, 35.921299, 47.186852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327820, 36.183342, 47.253170>,  <34.504726, 36.340569, 47.292961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327820, 36.183342, 47.253170>,  <34.032974, 35.921299, 47.186852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327820, 36.183342, 47.253170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524779, -0.400347, -0.751219,
		-0.425755, 0.640743, -0.638890,
		0.737116, 0.655111, 0.165799,
		34.548954, 36.379875, 47.302910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355507, 36.068760, 46.491287>,  <34.032974, 35.921299, 47.186852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355507, 36.068760, 46.491287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610794, 36.210281, 46.764786>,  <34.763966, 36.295197, 46.928883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610794, 36.210281, 46.764786>,  <34.355507, 36.068760, 46.491287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610794, 36.210281, 46.764786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768326, -0.236695, -0.594686,
		-0.048566, 0.904874, -0.422901,
		0.638214, 0.353807, 0.683743,
		34.802258, 36.316425, 46.969910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622799, 36.679615, 46.248158>,  <34.355507, 36.068760, 46.491287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622799, 36.679615, 46.248158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896660, 36.516304, 46.489674>,  <35.060974, 36.418316, 46.634583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896660, 36.516304, 46.489674>,  <34.622799, 36.679615, 46.248158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896660, 36.516304, 46.489674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576440, -0.203659, -0.791353,
		0.446063, 0.889847, 0.095915,
		0.684650, -0.408282, 0.603788,
		35.102055, 36.393818, 46.670811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257153, 36.916943, 45.944237>,  <34.622799, 36.679615, 46.248158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257153, 36.916943, 45.944237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336006, 36.601620, 46.177376>,  <35.383320, 36.412426, 46.317261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336006, 36.601620, 46.177376>,  <35.257153, 36.916943, 45.944237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336006, 36.601620, 46.177376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560605, -0.397082, -0.726669,
		0.804275, 0.470002, 0.363647,
		0.197138, -0.788305, 0.582849,
		35.395149, 36.365128, 46.352230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026695, 36.764660, 45.921509>,  <35.257153, 36.916943, 45.944237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026695, 36.764660, 45.921509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854641, 36.420120, 46.029629>,  <35.751408, 36.213398, 46.094501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854641, 36.420120, 46.029629>,  <36.026695, 36.764660, 45.921509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854641, 36.420120, 46.029629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621924, -0.499759, -0.602869,
		0.654363, -0.091213, 0.750659,
		-0.430138, -0.861348, 0.270296,
		35.725601, 36.161716, 46.110718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564106, 36.218990, 45.825649>,  <36.026695, 36.764660, 45.921509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564106, 36.218990, 45.825649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229252, 36.003254, 45.862106>,  <36.028339, 35.873810, 45.883980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229252, 36.003254, 45.862106>,  <36.564106, 36.218990, 45.825649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229252, 36.003254, 45.862106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348275, -0.654050, -0.671508,
		0.421784, -0.530404, 0.735371,
		-0.837140, -0.539343, 0.091141,
		35.978111, 35.841450, 45.889450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729046, 35.571465, 46.027290>,  <36.564106, 36.218990, 45.825649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729046, 35.571465, 46.027290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375648, 35.523273, 45.846214>,  <36.163609, 35.494358, 45.737568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375648, 35.523273, 45.846214>,  <36.729046, 35.571465, 46.027290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375648, 35.523273, 45.846214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385855, -0.735123, -0.557414,
		-0.265628, -0.667143, 0.695961,
		-0.883492, -0.120475, -0.452690,
		36.110600, 35.487129, 45.710407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787258, 34.921757, 45.863693>,  <36.729046, 35.571465, 46.027290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787258, 34.921757, 45.863693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509407, 35.061527, 45.612175>,  <36.342697, 35.145390, 45.461262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509407, 35.061527, 45.612175>,  <36.787258, 34.921757, 45.863693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509407, 35.061527, 45.612175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278977, -0.674843, -0.683198,
		-0.663063, -0.649994, 0.371289,
		-0.694636, 0.349422, -0.628797,
		36.301018, 35.166355, 45.423534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579933, 34.351707, 45.530060>,  <36.787258, 34.921757, 45.863693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579933, 34.351707, 45.530060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446236, 34.622688, 45.267963>,  <36.366016, 34.785275, 45.110706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446236, 34.622688, 45.267963>,  <36.579933, 34.351707, 45.530060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446236, 34.622688, 45.267963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273875, -0.595412, -0.755299,
		-0.901815, -0.431911, 0.013478,
		-0.334247, 0.677449, -0.655241,
		36.345963, 34.825924, 45.071392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258354, 33.925892, 44.946640>,  <36.579933, 34.351707, 45.530060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258354, 33.925892, 44.946640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303001, 34.289825, 44.786766>,  <36.329792, 34.508186, 44.690842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303001, 34.289825, 44.786766>,  <36.258354, 33.925892, 44.946640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303001, 34.289825, 44.786766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191465, -0.414353, -0.889749,
		-0.975132, 0.022790, -0.220452,
		0.111622, 0.909831, -0.399685,
		36.336487, 34.562775, 44.666859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891415, 33.890663, 44.391998>,  <36.258354, 33.925892, 44.946640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891415, 33.890663, 44.391998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141029, 34.192513, 44.310879>,  <36.290798, 34.373623, 44.262207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141029, 34.192513, 44.310879>,  <35.891415, 33.890663, 44.391998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141029, 34.192513, 44.310879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227202, -0.423553, -0.876916,
		-0.747634, 0.501152, -0.435764,
		0.624037, 0.754619, -0.202800,
		36.328239, 34.418900, 44.250038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702873, 34.157539, 43.734676>,  <35.891415, 33.890663, 44.391998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702873, 34.157539, 43.734676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080048, 34.272522, 43.801895>,  <36.306351, 34.341511, 43.842228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080048, 34.272522, 43.801895>,  <35.702873, 34.157539, 43.734676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080048, 34.272522, 43.801895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262861, -0.332836, -0.905607,
		-0.204393, 0.898102, -0.389404,
		0.942935, 0.287459, 0.168047,
		36.362926, 34.358761, 43.852310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848297, 34.563698, 43.161671>,  <35.702873, 34.157539, 43.734676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848297, 34.563698, 43.161671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213963, 34.453667, 43.280754>,  <36.433361, 34.387646, 43.352203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213963, 34.453667, 43.280754>,  <35.848297, 34.563698, 43.161671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213963, 34.453667, 43.280754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218347, -0.284617, -0.933444,
		0.341507, 0.918326, -0.200124,
		0.914165, -0.275081, 0.297712,
		36.488213, 34.371143, 43.370068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223366, 34.761147, 42.672256>,  <35.848297, 34.563698, 43.161671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223366, 34.761147, 42.672256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467854, 34.506634, 42.860535>,  <36.614548, 34.353928, 42.973503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467854, 34.506634, 42.860535>,  <36.223366, 34.761147, 42.672256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467854, 34.506634, 42.860535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227316, -0.428532, -0.874464,
		0.758114, 0.641487, -0.117290,
		0.611220, -0.636282, 0.470696,
		36.651218, 34.315750, 43.001743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727463, 34.657902, 42.272938>,  <36.223366, 34.761147, 42.672256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727463, 34.657902, 42.272938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789738, 34.338558, 42.505623>,  <36.827103, 34.146954, 42.645233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789738, 34.338558, 42.505623>,  <36.727463, 34.657902, 42.272938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789738, 34.338558, 42.505623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416978, -0.480742, -0.771373,
		0.895484, 0.362654, 0.258052,
		0.155685, -0.798354, 0.581715,
		36.836445, 34.099052, 42.680138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430622, 34.535675, 42.216373>,  <36.727463, 34.657902, 42.272938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430622, 34.535675, 42.216373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245861, 34.196007, 42.318790>,  <37.135002, 33.992207, 42.380241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245861, 34.196007, 42.318790>,  <37.430622, 34.535675, 42.216373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245861, 34.196007, 42.318790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482711, -0.482872, -0.730634,
		0.744066, -0.213889, 0.632943,
		-0.461904, -0.849168, 0.256042,
		37.107288, 33.941257, 42.395603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951225, 34.040638, 42.093990>,  <37.430622, 34.535675, 42.216373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951225, 34.040638, 42.093990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587692, 33.874592, 42.110466>,  <37.369572, 33.774963, 42.120350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587692, 33.874592, 42.110466>,  <37.951225, 34.040638, 42.093990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587692, 33.874592, 42.110466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236350, -0.593774, -0.769136,
		0.343737, -0.689284, 0.637756,
		-0.908837, -0.415114, 0.041190,
		37.315041, 33.750057, 42.122822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148849, 33.356232, 42.206974>,  <37.951225, 34.040638, 42.093990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148849, 33.356232, 42.206974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802326, 33.433327, 42.022640>,  <37.594414, 33.479584, 41.912041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802326, 33.433327, 42.022640>,  <38.148849, 33.356232, 42.206974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802326, 33.433327, 42.022640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346899, -0.431671, -0.832659,
		-0.359415, -0.881199, 0.307097,
		-0.866304, 0.192738, -0.460836,
		37.542435, 33.491146, 41.884388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016010, 32.713551, 41.633968>,  <38.148849, 33.356232, 42.206974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016010, 32.713551, 41.633968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746735, 32.992828, 41.536526>,  <37.585171, 33.160397, 41.478062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746735, 32.992828, 41.536526>,  <38.016010, 32.713551, 41.633968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746735, 32.992828, 41.536526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118110, -0.223685, -0.967479,
		-0.729980, -0.680066, 0.068118,
		-0.673186, 0.698195, -0.243608,
		37.544777, 33.202286, 41.463444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446049, 32.387798, 41.203365>,  <38.016010, 32.713551, 41.633968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446049, 32.387798, 41.203365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406723, 32.777756, 41.123444>,  <37.383129, 33.011730, 41.075489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406723, 32.777756, 41.123444>,  <37.446049, 32.387798, 41.203365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406723, 32.777756, 41.123444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201828, -0.216136, -0.955275,
		-0.974474, -0.053589, 0.218009,
		-0.098311, 0.974892, -0.199803,
		37.377228, 33.070225, 41.063503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009468, 32.423180, 40.609348>,  <37.446049, 32.387798, 41.203365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009468, 32.423180, 40.609348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104126, 32.811787, 40.614273>,  <37.160919, 33.044952, 40.617229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104126, 32.811787, 40.614273>,  <37.009468, 32.423180, 40.609348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104126, 32.811787, 40.614273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071542, 0.030063, -0.996984,
		-0.968959, 0.235048, 0.076619,
		0.236643, 0.971519, 0.012314,
		37.175117, 33.103241, 40.617966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505024, 32.799713, 40.211853>,  <37.009468, 32.423180, 40.609348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505024, 32.799713, 40.211853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860481, 32.981525, 40.236256>,  <37.073753, 33.090614, 40.250896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860481, 32.981525, 40.236256>,  <36.505024, 32.799713, 40.211853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860481, 32.981525, 40.236256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019202, 0.096022, -0.995194,
		-0.458205, 0.885540, 0.076600,
		0.888639, 0.454532, 0.061002,
		37.127071, 33.117886, 40.254555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416317, 33.472984, 39.927696>,  <36.505024, 32.799713, 40.211853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416317, 33.472984, 39.927696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802834, 33.376301, 39.892258>,  <37.034744, 33.318291, 39.870995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802834, 33.376301, 39.892258>,  <36.416317, 33.472984, 39.927696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802834, 33.376301, 39.892258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043917, 0.184328, -0.981883,
		0.253664, 0.952680, 0.167500,
		0.966295, -0.241712, -0.088596,
		37.092724, 33.303787, 39.865681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545876, 33.878536, 39.391304>,  <36.416317, 33.472984, 39.927696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545876, 33.878536, 39.391304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874660, 33.656120, 39.440605>,  <37.071934, 33.522671, 39.470188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874660, 33.656120, 39.440605>,  <36.545876, 33.878536, 39.391304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874660, 33.656120, 39.440605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190445, 0.064385, -0.979584,
		0.536750, 0.828659, 0.158817,
		0.821967, -0.556038, 0.123255,
		37.121250, 33.489307, 39.477581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147259, 34.174683, 38.957840>,  <36.545876, 33.878536, 39.391304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147259, 34.174683, 38.957840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232021, 33.787739, 39.013435>,  <37.282879, 33.555573, 39.046795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232021, 33.787739, 39.013435>,  <37.147259, 34.174683, 38.957840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232021, 33.787739, 39.013435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143277, -0.109933, -0.983558,
		0.966730, 0.228338, 0.115304,
		0.211908, -0.967355, 0.138991,
		37.295593, 33.497532, 39.055134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639370, 34.045403, 38.440643>,  <37.147259, 34.174683, 38.957840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639370, 34.045403, 38.440643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506123, 33.690430, 38.568081>,  <37.426174, 33.477448, 38.644543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506123, 33.690430, 38.568081>,  <37.639370, 34.045403, 38.440643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506123, 33.690430, 38.568081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105211, -0.370771, -0.922746,
		0.936996, -0.273864, 0.216878,
		-0.333119, -0.887427, 0.318597,
		37.406185, 33.424202, 38.663662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167179, 33.576721, 38.455284>,  <37.639370, 34.045403, 38.440643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167179, 33.576721, 38.455284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825336, 33.375618, 38.403301>,  <37.620232, 33.254955, 38.372112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825336, 33.375618, 38.403301>,  <38.167179, 33.576721, 38.455284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825336, 33.375618, 38.403301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342155, -0.356922, -0.869216,
		0.390620, -0.787300, 0.477047,
		-0.854603, -0.502758, -0.129958,
		37.568954, 33.224792, 38.364315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424545, 32.988377, 38.202679>,  <38.167179, 33.576721, 38.455284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424545, 32.988377, 38.202679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031227, 33.000679, 38.130909>,  <37.795238, 33.008060, 38.087849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031227, 33.000679, 38.130909>,  <38.424545, 32.988377, 38.202679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031227, 33.000679, 38.130909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163787, -0.280707, -0.945715,
		-0.079447, -0.959301, 0.270980,
		-0.983291, 0.030751, -0.179422,
		37.736240, 33.009903, 38.077084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050438, 33.099804, 38.546398>,  <38.424545, 32.988377, 38.202679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050438, 33.099804, 38.546398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448471, 33.126942, 38.517544>,  <39.687290, 33.143227, 38.500229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448471, 33.126942, 38.517544>,  <39.050438, 33.099804, 38.546398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448471, 33.126942, 38.517544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083458, -0.182420, 0.979672,
		0.053308, -0.980877, -0.187185,
		0.995084, 0.067847, -0.072138,
		39.746998, 33.147297, 38.495903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475197, 32.471806, 38.793991>,  <39.050438, 33.099804, 38.546398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475197, 32.471806, 38.793991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699493, 32.801319, 38.827347>,  <39.834072, 32.999027, 38.847359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699493, 32.801319, 38.827347>,  <39.475197, 32.471806, 38.793991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699493, 32.801319, 38.827347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110364, -0.174177, 0.978510,
		0.820602, -0.539489, -0.188584,
		0.560743, 0.823780, 0.083390,
		39.867718, 33.048454, 38.852364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065281, 32.315586, 39.251652>,  <39.475197, 32.471806, 38.793991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065281, 32.315586, 39.251652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013622, 32.712231, 39.253811>,  <39.982628, 32.950218, 39.255108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013622, 32.712231, 39.253811>,  <40.065281, 32.315586, 39.251652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013622, 32.712231, 39.253811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130829, 0.011638, 0.991337,
		0.982957, 0.128733, -0.131235,
		-0.129145, 0.991611, 0.005402,
		39.974880, 33.009712, 39.255432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647182, 32.685482, 39.677574>,  <40.065281, 32.315586, 39.251652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647182, 32.685482, 39.677574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335163, 32.935631, 39.669292>,  <40.147949, 33.085720, 39.664322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335163, 32.935631, 39.669292>,  <40.647182, 32.685482, 39.677574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335163, 32.935631, 39.669292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088432, 0.142948, 0.985772,
		0.619434, 0.767122, -0.166810,
		-0.780052, 0.625372, -0.020709,
		40.101147, 33.123241, 39.663078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909019, 33.265743, 40.068871>,  <40.647182, 32.685482, 39.677574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909019, 33.265743, 40.068871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512276, 33.316631, 40.066460>,  <40.274231, 33.347164, 40.065014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512276, 33.316631, 40.066460>,  <40.909019, 33.265743, 40.068871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512276, 33.316631, 40.066460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004493, 0.082229, 0.996603,
		0.127280, 0.988461, -0.082130,
		-0.991857, 0.127217, -0.006025,
		40.214718, 33.354797, 40.064651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819866, 33.907009, 40.520008>,  <40.909019, 33.265743, 40.068871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819866, 33.907009, 40.520008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488602, 33.682819, 40.521809>,  <40.289845, 33.548306, 40.522888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488602, 33.682819, 40.521809>,  <40.819866, 33.907009, 40.520008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488602, 33.682819, 40.521809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104955, 0.162970, 0.981033,
		-0.550573, 0.811982, -0.193790,
		-0.828163, -0.560470, 0.004505,
		40.240154, 33.514679, 40.523159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395229, 34.296864, 40.924431>,  <40.819866, 33.907009, 40.520008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395229, 34.296864, 40.924431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193626, 33.953083, 40.890190>,  <40.072666, 33.746815, 40.869644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193626, 33.953083, 40.890190>,  <40.395229, 34.296864, 40.924431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193626, 33.953083, 40.890190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189485, 0.013334, 0.981793,
		-0.842658, 0.511051, -0.169573,
		-0.504007, -0.859447, -0.085601,
		40.042423, 33.695248, 40.864510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741600, 34.394547, 41.273098>,  <40.395229, 34.296864, 40.924431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741600, 34.394547, 41.273098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847202, 34.009472, 41.296864>,  <39.910564, 33.778427, 41.311123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847202, 34.009472, 41.296864>,  <39.741600, 34.394547, 41.273098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847202, 34.009472, 41.296864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141667, 0.022231, 0.989664,
		-0.954060, -0.269695, -0.130513,
		0.264006, -0.962689, 0.059416,
		39.926403, 33.720665, 41.314690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516109, 34.334778, 41.884560>,  <39.741600, 34.394547, 41.273098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516109, 34.334778, 41.884560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668404, 33.968472, 41.833305>,  <39.759781, 33.748688, 41.802551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668404, 33.968472, 41.833305>,  <39.516109, 34.334778, 41.884560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668404, 33.968472, 41.833305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100646, -0.178793, 0.978725,
		-0.919190, -0.359740, -0.160240,
		0.380737, -0.915762, -0.128138,
		39.782623, 33.693745, 41.794865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991558, 33.795223, 42.123558>,  <39.516109, 34.334778, 41.884560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991558, 33.795223, 42.123558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366062, 33.656288, 42.144619>,  <39.590763, 33.572929, 42.157257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366062, 33.656288, 42.144619>,  <38.991558, 33.795223, 42.123558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366062, 33.656288, 42.144619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086708, -0.083226, 0.992751,
		-0.340435, -0.934041, -0.108038,
		0.936262, -0.347335, 0.052656,
		39.646942, 33.552086, 42.160416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008625, 33.353241, 42.654106>,  <38.991558, 33.795223, 42.123558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008625, 33.353241, 42.654106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394356, 33.458595, 42.643501>,  <39.625793, 33.521809, 42.637138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394356, 33.458595, 42.643501>,  <39.008625, 33.353241, 42.654106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394356, 33.458595, 42.643501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009785, 0.064610, 0.997863,
		0.264533, -0.962525, 0.059728,
		0.964327, 0.263383, -0.026510,
		39.683655, 33.537609, 42.635548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423286, 32.890785, 43.171707>,  <39.008625, 33.353241, 42.654106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423286, 32.890785, 43.171707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683411, 33.192825, 43.138435>,  <39.839485, 33.374050, 43.118473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683411, 33.192825, 43.138435>,  <39.423286, 32.890785, 43.171707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683411, 33.192825, 43.138435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091729, 0.030646, 0.995312,
		0.754114, -0.654888, -0.049336,
		0.650306, 0.755104, -0.083182,
		39.878502, 33.419357, 43.113480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900604, 32.897415, 43.667377>,  <39.423286, 32.890785, 43.171707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900604, 32.897415, 43.667377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915363, 33.286663, 43.576447>,  <39.924217, 33.520210, 43.521889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915363, 33.286663, 43.576447>,  <39.900604, 32.897415, 43.667377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915363, 33.286663, 43.576447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015129, 0.227998, 0.973544,
		0.999205, -0.032478, 0.023134,
		0.036894, 0.973120, -0.227325,
		39.926430, 33.578598, 43.508247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309811, 33.184906, 44.157711>,  <39.900604, 32.897415, 43.667377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309811, 33.184906, 44.157711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090553, 33.476086, 43.992966>,  <39.959000, 33.650795, 43.894119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090553, 33.476086, 43.992966>,  <40.309811, 33.184906, 44.157711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090553, 33.476086, 43.992966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088851, 0.438969, 0.894098,
		0.831654, 0.526685, -0.175937,
		-0.548139, 0.727948, -0.411867,
		39.926113, 33.694469, 43.869404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524437, 33.705616, 44.617767>,  <40.309811, 33.184906, 44.157711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524437, 33.705616, 44.617767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208858, 33.850697, 44.419369>,  <40.019512, 33.937744, 44.300331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208858, 33.850697, 44.419369>,  <40.524437, 33.705616, 44.617767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208858, 33.850697, 44.419369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345591, 0.405507, 0.846245,
		0.508065, 0.839053, -0.194576,
		-0.788947, 0.362704, -0.495993,
		39.972176, 33.959507, 44.270573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417740, 34.380215, 44.917862>,  <40.524437, 33.705616, 44.617767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417740, 34.380215, 44.917862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070889, 34.317059, 44.728905>,  <39.862778, 34.279163, 44.615532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070889, 34.317059, 44.728905>,  <40.417740, 34.380215, 44.917862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070889, 34.317059, 44.728905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495764, 0.364985, 0.788038,
		0.047993, 0.917527, -0.394766,
		-0.867130, -0.157891, -0.472394,
		39.810749, 34.269691, 44.587185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133717, 35.055351, 44.899487>,  <40.417740, 34.380215, 44.917862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133717, 35.055351, 44.899487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819809, 34.810471, 44.860821>,  <39.631466, 34.663540, 44.837620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819809, 34.810471, 44.860821>,  <40.133717, 35.055351, 44.899487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819809, 34.810471, 44.860821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483027, 0.506389, 0.714321,
		-0.388361, 0.607268, -0.693110,
		-0.784768, -0.612205, -0.096665,
		39.584377, 34.626808, 44.831821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531689, 35.415279, 44.729786>,  <40.133717, 35.055351, 44.899487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531689, 35.415279, 44.729786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391899, 35.092373, 44.920021>,  <39.308025, 34.898628, 45.034164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391899, 35.092373, 44.920021>,  <39.531689, 35.415279, 44.729786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391899, 35.092373, 44.920021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646543, 0.575159, 0.501173,
		-0.678121, -0.132341, -0.722937,
		-0.349478, -0.807266, 0.475591,
		39.287056, 34.850193, 45.062698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799793, 35.541496, 44.858349>,  <39.531689, 35.415279, 44.729786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799793, 35.541496, 44.858349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878651, 35.249084, 45.119648>,  <38.925964, 35.073639, 45.276428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878651, 35.249084, 45.119648>,  <38.799793, 35.541496, 44.858349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878651, 35.249084, 45.119648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566704, 0.458753, 0.684392,
		-0.799989, -0.505121, -0.323837,
		0.197140, -0.731026, 0.653251,
		38.937794, 35.029778, 45.315624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153145, 35.441391, 45.233040>,  <38.799793, 35.541496, 44.858349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153145, 35.441391, 45.233040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420303, 35.271618, 45.477585>,  <38.580601, 35.169754, 45.624313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420303, 35.271618, 45.477585>,  <38.153145, 35.441391, 45.233040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420303, 35.271618, 45.477585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527017, 0.310303, 0.791180,
		-0.525513, -0.850627, -0.016435,
		0.667898, -0.424437, 0.611363,
		38.620674, 35.144287, 45.660995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752926, 35.071964, 45.797562>,  <38.153145, 35.441391, 45.233040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752926, 35.071964, 45.797562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127872, 35.118904, 45.928753>,  <38.352840, 35.147068, 46.007469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127872, 35.118904, 45.928753>,  <37.752926, 35.071964, 45.797562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127872, 35.118904, 45.928753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347303, 0.387500, 0.853946,
		-0.026883, -0.914370, 0.403986,
		0.937368, 0.117349, 0.327981,
		38.409084, 35.154110, 46.027145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764050, 34.634918, 46.361931>,  <37.752926, 35.071964, 45.797562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764050, 34.634918, 46.361931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035355, 34.928688, 46.371590>,  <38.198135, 35.104950, 46.377384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035355, 34.928688, 46.371590>,  <37.764050, 34.634918, 46.361931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035355, 34.928688, 46.371590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434977, 0.374787, 0.818737,
		0.592250, -0.565821, 0.573661,
		0.678259, 0.734426, 0.024151,
		38.238834, 35.149017, 46.378834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977676, 34.661777, 47.016224>,  <37.764050, 34.634918, 46.361931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977676, 34.661777, 47.016224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082077, 35.025764, 46.887325>,  <38.144718, 35.244156, 46.809986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082077, 35.025764, 46.887325>,  <37.977676, 34.661777, 47.016224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082077, 35.025764, 46.887325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477337, 0.411809, 0.776249,
		0.839064, -0.048780, 0.541842,
		0.261001, 0.909964, -0.322249,
		38.160378, 35.298752, 46.790649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061623, 35.055519, 47.648613>,  <37.977676, 34.661777, 47.016224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061623, 35.055519, 47.648613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040455, 35.331844, 47.360172>,  <38.027756, 35.497639, 47.187107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040455, 35.331844, 47.360172>,  <38.061623, 35.055519, 47.648613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040455, 35.331844, 47.360172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380045, 0.653838, 0.654264,
		0.923453, 0.308672, 0.227939,
		-0.052918, 0.690809, -0.721098,
		38.024578, 35.539085, 47.143845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228775, 35.607239, 48.058750>,  <38.061623, 35.055519, 47.648613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228775, 35.607239, 48.058750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058422, 35.754227, 47.728031>,  <37.956211, 35.842419, 47.529602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058422, 35.754227, 47.728031>,  <38.228775, 35.607239, 48.058750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058422, 35.754227, 47.728031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430185, 0.721671, 0.542339,
		0.795967, 0.586648, -0.149268,
		-0.425884, 0.367471, -0.826793,
		37.930656, 35.864468, 47.479992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319626, 36.364536, 48.010715>,  <38.228775, 35.607239, 48.058750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319626, 36.364536, 48.010715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005798, 36.313541, 47.767998>,  <37.817501, 36.282944, 47.622368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005798, 36.313541, 47.767998>,  <38.319626, 36.364536, 48.010715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005798, 36.313541, 47.767998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458403, 0.778244, 0.429188,
		0.417517, 0.614883, -0.669028,
		-0.784568, -0.127491, -0.606794,
		37.770428, 36.275295, 47.585960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174309, 37.027958, 47.668152>,  <38.319626, 36.364536, 48.010715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174309, 37.027958, 47.668152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847088, 36.797901, 47.667065>,  <37.650757, 36.659866, 47.666412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847088, 36.797901, 47.667065>,  <38.174309, 37.027958, 47.668152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847088, 36.797901, 47.667065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500441, 0.709462, 0.496208,
		-0.283462, 0.407283, -0.868199,
		-0.818051, -0.575139, -0.002716,
		37.601673, 36.625359, 47.666248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644562, 37.443161, 47.425907>,  <38.174309, 37.027958, 47.668152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644562, 37.443161, 47.425907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484692, 37.148861, 47.644600>,  <37.388767, 36.972279, 47.775818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484692, 37.148861, 47.644600>,  <37.644562, 37.443161, 47.425907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484692, 37.148861, 47.644600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546005, 0.670180, 0.502730,
		-0.736298, -0.097590, -0.669583,
		-0.399680, -0.735755, 0.546736,
		37.364788, 36.928135, 47.808620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958477, 37.683559, 47.582340>,  <37.644562, 37.443161, 47.425907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958477, 37.683559, 47.582340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022419, 37.380844, 47.835865>,  <37.060783, 37.199215, 47.987980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022419, 37.380844, 47.835865>,  <36.958477, 37.683559, 47.582340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022419, 37.380844, 47.835865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575607, 0.450148, 0.682674,
		-0.801949, -0.473955, -0.363655,
		0.159858, -0.756792, 0.633807,
		37.070377, 37.153805, 48.026009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279343, 37.538532, 47.826206>,  <36.958477, 37.683559, 47.582340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279343, 37.538532, 47.826206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562012, 37.426109, 48.085934>,  <36.731613, 37.358654, 48.241772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562012, 37.426109, 48.085934>,  <36.279343, 37.538532, 47.826206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562012, 37.426109, 48.085934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507885, 0.437435, 0.742094,
		-0.492606, -0.854200, 0.166380,
		0.706677, -0.281058, 0.649318,
		36.774014, 37.341793, 48.280727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895607, 37.613071, 48.417824>,  <36.279343, 37.538532, 47.826206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895607, 37.613071, 48.417824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277924, 37.578766, 48.530327>,  <36.507313, 37.558182, 48.597828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277924, 37.578766, 48.530327>,  <35.895607, 37.613071, 48.417824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277924, 37.578766, 48.530327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130256, 0.734057, 0.666479,
		-0.263621, -0.673650, 0.690434,
		0.955791, -0.085765, 0.281260,
		36.564659, 37.553036, 48.614704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914993, 37.470135, 49.090752>,  <35.895607, 37.613071, 48.417824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914993, 37.470135, 49.090752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277718, 37.627239, 49.029526>,  <36.495354, 37.721500, 48.992790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277718, 37.627239, 49.029526>,  <35.914993, 37.470135, 49.090752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277718, 37.627239, 49.029526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273411, 0.824400, 0.495592,
		0.320834, -0.407561, 0.854962,
		0.906814, 0.392759, -0.153064,
		36.549763, 37.745068, 48.983608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361420, 37.586823, 49.755917>,  <35.914993, 37.470135, 49.090752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361420, 37.586823, 49.755917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533119, 37.844013, 49.502197>,  <36.636139, 37.998325, 49.349964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533119, 37.844013, 49.502197>,  <36.361420, 37.586823, 49.755917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533119, 37.844013, 49.502197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095934, 0.665860, 0.739884,
		0.898079, -0.378441, 0.224133,
		0.429244, 0.642972, -0.634300,
		36.661892, 38.036903, 49.311909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939865, 37.758244, 50.028046>,  <36.361420, 37.586823, 49.755917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939865, 37.758244, 50.028046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860622, 38.071682, 49.792511>,  <36.813076, 38.259747, 49.651188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860622, 38.071682, 49.792511>,  <36.939865, 37.758244, 50.028046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860622, 38.071682, 49.792511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194940, 0.620243, 0.759801,
		0.960600, 0.035731, -0.275627,
		-0.198104, 0.783596, -0.588840,
		36.801189, 38.306759, 49.615860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386288, 38.204445, 50.308601>,  <36.939865, 37.758244, 50.028046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386288, 38.204445, 50.308601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150005, 38.432579, 50.080288>,  <37.008236, 38.569458, 49.943302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150005, 38.432579, 50.080288>,  <37.386288, 38.204445, 50.308601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150005, 38.432579, 50.080288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105316, 0.755831, 0.646242,
		0.799986, 0.321625, -0.506538,
		-0.590704, 0.570331, -0.570781,
		36.972794, 38.603680, 49.909054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584858, 38.896355, 50.412716>,  <37.386288, 38.204445, 50.308601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584858, 38.896355, 50.412716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229630, 38.950703, 50.237053>,  <37.016491, 38.983311, 50.131653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229630, 38.950703, 50.237053>,  <37.584858, 38.896355, 50.412716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229630, 38.950703, 50.237053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090240, 0.885212, 0.456351,
		0.450753, 0.444903, -0.773875,
		-0.888076, 0.135867, -0.439160,
		36.963207, 38.991463, 50.105305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510208, 39.681931, 50.361660>,  <37.584858, 38.896355, 50.412716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510208, 39.681931, 50.361660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155388, 39.509617, 50.295250>,  <36.942493, 39.406231, 50.255405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155388, 39.509617, 50.295250>,  <37.510208, 39.681931, 50.361660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155388, 39.509617, 50.295250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439163, 0.676458, 0.591220,
		-0.142378, 0.597355, -0.789237,
		-0.887054, -0.430780, -0.166024,
		36.889271, 39.380383, 50.245441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196243, 40.442715, 50.441528>,  <37.510208, 39.681931, 50.361660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196243, 40.442715, 50.441528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281780, 40.830868, 50.396587>,  <37.333103, 41.063759, 50.369621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281780, 40.830868, 50.396587>,  <37.196243, 40.442715, 50.441528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281780, 40.830868, 50.396587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763678, -0.237785, -0.600212,
		-0.609154, 0.042545, -0.791910,
		0.213841, 0.970385, -0.112357,
		37.345932, 41.121983, 50.362881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204758, 40.634914, 49.724884>,  <37.196243, 40.442715, 50.441528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204758, 40.634914, 49.724884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466461, 40.854183, 49.933292>,  <37.623482, 40.985744, 50.058338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466461, 40.854183, 49.933292>,  <37.204758, 40.634914, 49.724884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466461, 40.854183, 49.933292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672061, -0.105481, -0.732944,
		-0.346820, 0.829689, -0.437414,
		0.654255, 0.548169, 0.521020,
		37.662739, 41.018635, 50.089600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342712, 41.258404, 49.288189>,  <37.204758, 40.634914, 49.724884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342712, 41.258404, 49.288189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636402, 41.179150, 49.547928>,  <37.812614, 41.131596, 49.703773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636402, 41.179150, 49.547928>,  <37.342712, 41.258404, 49.288189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636402, 41.179150, 49.547928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570670, -0.337997, -0.748394,
		0.367766, 0.920053, -0.135093,
		0.734223, -0.198140, 0.649351,
		37.856670, 41.119709, 49.742733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964344, 41.594894, 49.079330>,  <37.342712, 41.258404, 49.288189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964344, 41.594894, 49.079330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074631, 41.288647, 49.311813>,  <38.140800, 41.104897, 49.451305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074631, 41.288647, 49.311813>,  <37.964344, 41.594894, 49.079330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074631, 41.288647, 49.311813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642744, -0.302756, -0.703718,
		0.714747, 0.567593, 0.408625,
		0.275712, -0.765622, 0.581211,
		38.157345, 41.058960, 49.486176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647030, 41.517792, 48.892391>,  <37.964344, 41.594894, 49.079330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647030, 41.517792, 48.892391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587040, 41.179108, 49.096584>,  <38.551048, 40.975899, 49.219101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587040, 41.179108, 49.096584>,  <38.647030, 41.517792, 48.892391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587040, 41.179108, 49.096584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546224, -0.501326, -0.671053,
		0.824104, 0.178199, 0.537677,
		-0.149971, -0.846710, 0.510481,
		38.542049, 40.925095, 49.249729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311829, 41.181927, 49.050751>,  <38.647030, 41.517792, 48.892391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311829, 41.181927, 49.050751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040176, 40.888977, 49.070385>,  <38.877186, 40.713207, 49.082165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040176, 40.888977, 49.070385>,  <39.311829, 41.181927, 49.050751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040176, 40.888977, 49.070385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513899, -0.522155, -0.680633,
		0.524109, -0.437013, 0.730978,
		-0.679130, -0.732375, 0.049086,
		38.836437, 40.669266, 49.085110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710411, 40.574635, 48.968254>,  <39.311829, 41.181927, 49.050751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710411, 40.574635, 48.968254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330105, 40.471825, 48.898994>,  <39.101921, 40.410137, 48.857441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330105, 40.471825, 48.898994>,  <39.710411, 40.574635, 48.968254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330105, 40.471825, 48.898994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309135, -0.747164, -0.588372,
		0.021859, -0.612930, 0.789835,
		-0.950767, -0.257027, -0.173146,
		39.044876, 40.394718, 48.847050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599995, 39.810600, 49.090183>,  <39.710411, 40.574635, 48.968254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599995, 39.810600, 49.090183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273788, 39.905422, 48.878998>,  <39.078064, 39.962315, 48.752289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273788, 39.905422, 48.878998>,  <39.599995, 39.810600, 49.090183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273788, 39.905422, 48.878998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156029, -0.788426, -0.595013,
		-0.557308, -0.567618, 0.605985,
		-0.815514, 0.237054, -0.527961,
		39.029133, 39.976540, 48.720608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250538, 39.197937, 49.078011>,  <39.599995, 39.810600, 49.090183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250538, 39.197937, 49.078011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116592, 39.424255, 48.776615>,  <39.036224, 39.560043, 48.595779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116592, 39.424255, 48.776615>,  <39.250538, 39.197937, 49.078011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116592, 39.424255, 48.776615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075473, -0.780981, -0.619977,
		-0.939238, -0.264478, 0.218823,
		-0.334867, 0.565791, -0.753488,
		39.016132, 39.593994, 48.550568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153145, 38.710632, 48.673473>,  <39.250538, 39.197937, 49.078011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153145, 38.710632, 48.673473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110138, 39.026543, 48.431915>,  <39.084332, 39.216087, 48.286980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110138, 39.026543, 48.431915>,  <39.153145, 38.710632, 48.673473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110138, 39.026543, 48.431915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401080, -0.521341, -0.753219,
		-0.909711, -0.323199, -0.260708,
		-0.107522, 0.789776, -0.603898,
		39.077881, 39.263477, 48.250748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654667, 38.553883, 48.158424>,  <39.153145, 38.710632, 48.673473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654667, 38.553883, 48.158424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904881, 38.830837, 48.014587>,  <39.055008, 38.997009, 47.928284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904881, 38.830837, 48.014587>,  <38.654667, 38.553883, 48.158424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904881, 38.830837, 48.014587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409015, -0.683513, -0.604580,
		-0.664392, 0.231104, -0.710756,
		0.625532, 0.692388, -0.359595,
		39.092541, 39.038555, 47.906708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670845, 38.385139, 47.404015>,  <38.654667, 38.553883, 48.158424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670845, 38.385139, 47.404015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000328, 38.601578, 47.471813>,  <39.198017, 38.731441, 47.512493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000328, 38.601578, 47.471813>,  <38.670845, 38.385139, 47.404015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000328, 38.601578, 47.471813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542588, -0.665377, -0.512710,
		-0.164648, 0.514286, -0.841665,
		0.823704, 0.541095, 0.169493,
		39.247440, 38.763905, 47.522659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978882, 38.582397, 46.843327>,  <38.670845, 38.385139, 47.404015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978882, 38.582397, 46.843327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292725, 38.613941, 47.089310>,  <39.481030, 38.632866, 47.236900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292725, 38.613941, 47.089310>,  <38.978882, 38.582397, 46.843327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292725, 38.613941, 47.089310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563436, -0.504573, -0.654176,
		0.258702, 0.859760, -0.440324,
		0.784610, 0.078857, 0.614954,
		39.528107, 38.637600, 47.273796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626957, 38.813316, 46.446201>,  <38.978882, 38.582397, 46.843327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626957, 38.813316, 46.446201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752308, 38.607475, 46.765446>,  <39.827518, 38.483971, 46.956993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752308, 38.607475, 46.765446>,  <39.626957, 38.813316, 46.446201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752308, 38.607475, 46.765446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677380, -0.467888, -0.567660,
		0.665546, 0.718513, 0.201959,
		0.313377, -0.514606, 0.798107,
		39.846321, 38.453094, 47.004879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319847, 38.696831, 46.340263>,  <39.626957, 38.813316, 46.446201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319847, 38.696831, 46.340263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257889, 38.418716, 46.621002>,  <40.220715, 38.251846, 46.789444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257889, 38.418716, 46.621002>,  <40.319847, 38.696831, 46.340263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257889, 38.418716, 46.621002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503224, -0.666876, -0.549584,
		0.850161, 0.268058, 0.453179,
		-0.154893, -0.695285, 0.701845,
		40.211422, 38.210133, 46.831554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902000, 38.402733, 46.351234>,  <40.319847, 38.696831, 46.340263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902000, 38.402733, 46.351234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663506, 38.129105, 46.519302>,  <40.520409, 37.964928, 46.620144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663506, 38.129105, 46.519302>,  <40.902000, 38.402733, 46.351234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663506, 38.129105, 46.519302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371465, -0.699057, -0.611010,
		0.711696, -0.208232, 0.670916,
		-0.596240, -0.684075, 0.420165,
		40.484634, 37.923882, 46.645351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282806, 37.809937, 46.569798>,  <40.902000, 38.402733, 46.351234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282806, 37.809937, 46.569798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908073, 37.679741, 46.518578>,  <40.683231, 37.601624, 46.487846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908073, 37.679741, 46.518578>,  <41.282806, 37.809937, 46.569798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908073, 37.679741, 46.518578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333000, -0.718000, -0.611218,
		0.107002, -0.615252, 0.781035,
		-0.936836, -0.325486, -0.128051,
		40.627022, 37.582096, 46.480164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351616, 37.114334, 46.641506>,  <41.282806, 37.809937, 46.569798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.351616, 37.114334, 46.641506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985569, 37.162956, 46.487732>,  <40.765942, 37.192131, 46.395466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985569, 37.162956, 46.487732>,  <41.351616, 37.114334, 46.641506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985569, 37.162956, 46.487732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170992, -0.746479, -0.643063,
		-0.365143, -0.654212, 0.662328,
		-0.915113, 0.121557, -0.384437,
		40.711037, 37.199425, 46.372402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115986, 36.486984, 46.638523>,  <41.351616, 37.114334, 46.641506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115986, 36.486984, 46.638523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890388, 36.672947, 46.365536>,  <40.755032, 36.784527, 46.201744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890388, 36.672947, 46.365536>,  <41.115986, 36.486984, 46.638523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890388, 36.672947, 46.365536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208775, -0.719333, -0.662551,
		-0.798953, -0.516157, 0.308637,
		-0.563993, 0.464911, -0.682474,
		40.721191, 36.812420, 46.160793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558945, 36.038296, 46.376286>,  <41.115986, 36.486984, 46.638523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558945, 36.038296, 46.376286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646927, 36.303665, 46.090214>,  <40.699715, 36.462887, 45.918571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646927, 36.303665, 46.090214>,  <40.558945, 36.038296, 46.376286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646927, 36.303665, 46.090214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025528, -0.736800, -0.675629,
		-0.975176, 0.130350, -0.178998,
		0.219954, 0.663427, -0.715182,
		40.712914, 36.502693, 45.875660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089390, 35.815315, 45.791370>,  <40.558945, 36.038296, 46.376286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089390, 35.815315, 45.791370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391636, 36.040096, 45.656757>,  <40.572983, 36.174965, 45.575989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391636, 36.040096, 45.656757>,  <40.089390, 35.815315, 45.791370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391636, 36.040096, 45.656757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038837, -0.551319, -0.833390,
		-0.653862, 0.616654, -0.438410,
		0.755617, 0.561949, -0.336537,
		40.618320, 36.208679, 45.555798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022198, 35.907822, 45.029831>,  <40.089390, 35.815315, 45.791370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022198, 35.907822, 45.029831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405727, 36.009972, 45.079525>,  <40.635845, 36.071262, 45.109341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405727, 36.009972, 45.079525>,  <40.022198, 35.907822, 45.029831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405727, 36.009972, 45.079525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258735, -0.605210, -0.752846,
		-0.117071, 0.753993, -0.646366,
		0.958828, 0.255374, 0.124232,
		40.693375, 36.086582, 45.116795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257259, 35.933231, 44.423908>,  <40.022198, 35.907822, 45.029831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257259, 35.933231, 44.423908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600368, 35.908653, 44.628048>,  <40.806232, 35.893906, 44.750530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600368, 35.908653, 44.628048>,  <40.257259, 35.933231, 44.423908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600368, 35.908653, 44.628048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437137, -0.435158, -0.787114,
		0.270444, 0.898255, -0.346406,
		0.857771, -0.061443, 0.510347,
		40.857700, 35.890221, 44.781151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723541, 36.277298, 44.066933>,  <40.257259, 35.933231, 44.423908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723541, 36.277298, 44.066933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.958378, 36.038475, 44.285603>,  <41.099277, 35.895180, 44.416805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.958378, 36.038475, 44.285603>,  <40.723541, 36.277298, 44.066933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958378, 36.038475, 44.285603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532751, -0.223490, -0.816229,
		0.609513, 0.770436, 0.186876,
		0.587087, -0.597060, 0.546670,
		41.134502, 35.859356, 44.449604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506996, 36.438805, 43.846165>,  <40.723541, 36.277298, 44.066933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506996, 36.438805, 43.846165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489914, 36.076969, 44.015816>,  <41.479664, 35.859867, 44.117607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489914, 36.076969, 44.015816>,  <41.506996, 36.438805, 43.846165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489914, 36.076969, 44.015816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557578, -0.373838, -0.741183,
		0.829025, 0.204832, 0.520347,
		-0.042708, -0.904593, 0.424131,
		41.477100, 35.805592, 44.143055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161625, 36.113976, 43.837589>,  <41.506996, 36.438805, 43.846165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161625, 36.113976, 43.837589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.938969, 35.788975, 43.906860>,  <41.805374, 35.593975, 43.948425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.938969, 35.788975, 43.906860>,  <42.161625, 36.113976, 43.837589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938969, 35.788975, 43.906860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378497, -0.433603, -0.817758,
		0.739524, -0.389646, 0.548890,
		-0.556636, -0.812505, 0.173180,
		41.771976, 35.545223, 43.958813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615582, 35.540161, 43.686481>,  <42.161625, 36.113976, 43.837589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615582, 35.540161, 43.686481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253006, 35.374691, 43.652454>,  <42.035461, 35.275410, 43.632038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253006, 35.374691, 43.652454>,  <42.615582, 35.540161, 43.686481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.253006, 35.374691, 43.652454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293509, -0.472224, -0.831178,
		0.303667, -0.778382, 0.549461,
		-0.906443, -0.413673, -0.085063,
		41.981071, 35.250587, 43.626934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727219, 34.860966, 43.639107>,  <42.615582, 35.540161, 43.686481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727219, 34.860966, 43.639107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360573, 34.888550, 43.481598>,  <42.140583, 34.905102, 43.387093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360573, 34.888550, 43.481598>,  <42.727219, 34.860966, 43.639107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360573, 34.888550, 43.481598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302848, -0.523193, -0.796588,
		-0.260951, -0.849420, 0.458683,
		-0.916617, 0.068960, -0.393773,
		42.085587, 34.909237, 43.363464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571442, 34.233597, 43.289169>,  <42.727219, 34.860966, 43.639107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571442, 34.233597, 43.289169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329815, 34.497540, 43.110416>,  <42.184841, 34.655903, 43.003166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329815, 34.497540, 43.110416>,  <42.571442, 34.233597, 43.289169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329815, 34.497540, 43.110416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250114, -0.375442, -0.892461,
		-0.756670, -0.650875, 0.061753,
		-0.604065, 0.659853, -0.446878,
		42.148594, 34.695496, 42.976353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095451, 33.895012, 42.958599>,  <42.571442, 34.233597, 43.289169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095451, 33.895012, 42.958599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092831, 34.242496, 42.760490>,  <42.091259, 34.450989, 42.641624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092831, 34.242496, 42.760490>,  <42.095451, 33.895012, 42.958599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092831, 34.242496, 42.760490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227141, -0.481043, -0.846761,
		-0.973840, -0.118045, -0.194168,
		-0.006553, 0.868714, -0.495272,
		42.090866, 34.503109, 42.611908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825428, 33.788208, 42.230679>,  <42.095451, 33.895012, 42.958599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825428, 33.788208, 42.230679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999374, 34.148003, 42.213654>,  <42.103741, 34.363880, 42.203438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999374, 34.148003, 42.213654>,  <41.825428, 33.788208, 42.230679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999374, 34.148003, 42.213654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248664, -0.165382, -0.954366,
		-0.865481, 0.404437, -0.295590,
		0.434866, 0.899488, -0.042566,
		42.129833, 34.417850, 42.200886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465504, 34.232864, 41.780544>,  <41.825428, 33.788208, 42.230679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465504, 34.232864, 41.780544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834743, 34.385292, 41.801266>,  <42.056286, 34.476749, 41.813698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834743, 34.385292, 41.801266>,  <41.465504, 34.232864, 41.780544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834743, 34.385292, 41.801266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156804, -0.249951, -0.955477,
		-0.351152, 0.890120, -0.290481,
		0.923095, 0.381067, 0.051804,
		42.111671, 34.499611, 41.816807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480461, 34.590847, 41.239483>,  <41.465504, 34.232864, 41.780544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480461, 34.590847, 41.239483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867813, 34.550850, 41.330914>,  <42.100224, 34.526852, 41.385773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867813, 34.550850, 41.330914>,  <41.480461, 34.590847, 41.239483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867813, 34.550850, 41.330914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200969, -0.230276, -0.952147,
		0.147843, 0.967974, -0.202899,
		0.968377, -0.099992, 0.228577,
		42.158325, 34.520851, 41.399487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835335, 34.795986, 40.605015>,  <41.480461, 34.590847, 41.239483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835335, 34.795986, 40.605015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130363, 34.619781, 40.809734>,  <42.307381, 34.514057, 40.932564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130363, 34.619781, 40.809734>,  <41.835335, 34.795986, 40.605015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130363, 34.619781, 40.809734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373674, -0.365034, -0.852712,
		0.562452, 0.820183, -0.104632,
		0.737574, -0.440511, 0.511795,
		42.351635, 34.487629, 40.963272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517113, 34.995350, 40.222408>,  <41.835335, 34.795986, 40.605015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517113, 34.995350, 40.222408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575672, 34.660053, 40.432522>,  <42.610809, 34.458878, 40.558590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575672, 34.660053, 40.432522>,  <42.517113, 34.995350, 40.222408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575672, 34.660053, 40.432522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612823, -0.339986, -0.713343,
		0.776540, 0.426341, 0.463917,
		0.146402, -0.838238, 0.525284,
		42.619595, 34.408581, 40.590107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192738, 34.991867, 40.317005>,  <42.517113, 34.995350, 40.222408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192738, 34.991867, 40.317005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.085293, 34.612190, 40.382584>,  <43.020828, 34.384384, 40.421932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.085293, 34.612190, 40.382584>,  <43.192738, 34.991867, 40.317005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.085293, 34.612190, 40.382584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640424, -0.303118, -0.705674,
		0.719518, -0.084555, 0.689307,
		-0.268610, -0.949194, 0.163948,
		43.004711, 34.327431, 40.431767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833858, 34.672352, 40.135960>,  <43.192738, 34.991867, 40.317005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833858, 34.672352, 40.135960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551228, 34.389370, 40.142399>,  <43.381649, 34.219582, 40.146263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551228, 34.389370, 40.142399>,  <43.833858, 34.672352, 40.135960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551228, 34.389370, 40.142399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409439, -0.427276, -0.806099,
		0.577152, -0.562983, 0.591562,
		-0.706580, -0.707450, 0.016096,
		43.339252, 34.177135, 40.147228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146042, 34.084423, 40.163998>,  <43.833858, 34.672352, 40.135960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146042, 34.084423, 40.163998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.792233, 33.978001, 40.010723>,  <43.579945, 33.914146, 39.918758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.792233, 33.978001, 40.010723>,  <44.146042, 34.084423, 40.163998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792233, 33.978001, 40.010723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466340, -0.483364, -0.740868,
		0.011894, -0.834011, 0.551620,
		-0.884526, -0.266054, -0.383184,
		43.526875, 33.898186, 39.895767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.122299, 33.371819, 40.138729>,  <44.146042, 34.084423, 40.163998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.122299, 33.371819, 40.138729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856621, 33.478340, 39.859322>,  <43.697212, 33.542252, 39.691677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856621, 33.478340, 39.859322>,  <44.122299, 33.371819, 40.138729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856621, 33.478340, 39.859322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421661, -0.638107, -0.644221,
		-0.617289, -0.722426, 0.311536,
		-0.664195, 0.266308, -0.698516,
		43.657360, 33.558231, 39.649769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.961243, 32.719608, 39.790211>,  <44.122299, 33.371819, 40.138729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.961243, 32.719608, 39.790211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.875893, 33.022503, 39.543289>,  <43.824684, 33.204239, 39.395134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.875893, 33.022503, 39.543289>,  <43.961243, 32.719608, 39.790211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.875893, 33.022503, 39.543289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215269, -0.579889, -0.785741,
		-0.952959, -0.300545, -0.039274,
		-0.213376, 0.757233, -0.617308,
		43.811878, 33.249672, 39.358097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.627544, 32.380009, 39.137230>,  <43.961243, 32.719608, 39.790211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.627544, 32.380009, 39.137230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.744118, 32.740868, 39.009979>,  <43.814064, 32.957382, 38.933628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.744118, 32.740868, 39.009979>,  <43.627544, 32.380009, 39.137230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.744118, 32.740868, 39.009979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529070, -0.429078, -0.732104,
		-0.796962, 0.045053, -0.602347,
		0.291437, 0.902143, -0.318123,
		43.831551, 33.011509, 38.914543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.537399, 32.470352, 38.391941>,  <43.627544, 32.380009, 39.137230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.537399, 32.470352, 38.391941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844959, 32.707905, 38.486683>,  <44.029495, 32.850437, 38.543530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844959, 32.707905, 38.486683>,  <43.537399, 32.470352, 38.391941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844959, 32.707905, 38.486683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558755, -0.444077, -0.700420,
		-0.310783, 0.670897, -0.673284,
		0.768900, 0.593879, 0.236856,
		44.075630, 32.886070, 38.557739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.855122, 32.832233, 37.795525>,  <43.537399, 32.470352, 38.391941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.855122, 32.832233, 37.795525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.137390, 32.778423, 38.073784>,  <44.306751, 32.746140, 38.240738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.137390, 32.778423, 38.073784>,  <43.855122, 32.832233, 37.795525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.137390, 32.778423, 38.073784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656234, -0.246129, -0.713286,
		0.267172, 0.959857, -0.085409,
		0.705674, -0.134522, 0.695649,
		44.349091, 32.738068, 38.282478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429768, 33.338680, 37.721252>,  <43.855122, 32.832233, 37.795525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.429768, 33.338680, 37.721252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559158, 33.011063, 37.910789>,  <44.636791, 32.814491, 38.024509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559158, 33.011063, 37.910789>,  <44.429768, 33.338680, 37.721252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559158, 33.011063, 37.910789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706131, -0.124392, -0.697069,
		0.629874, 0.560078, 0.538118,
		0.323476, -0.819048, 0.473840,
		44.656200, 32.765347, 38.052940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.029121, 33.278755, 37.464714>,  <44.429768, 33.338680, 37.721252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.029121, 33.278755, 37.464714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973652, 32.905773, 37.598160>,  <44.940369, 32.681984, 37.678226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973652, 32.905773, 37.598160>,  <45.029121, 33.278755, 37.464714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.973652, 32.905773, 37.598160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562805, -0.351388, -0.748183,
		0.814875, 0.084008, 0.573517,
		-0.138674, -0.932453, 0.333618,
		44.932049, 32.626038, 37.698246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.943420, 32.987473, 36.734222>,  <45.029121, 33.278755, 37.464714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.943420, 32.987473, 36.734222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.754368, 33.333679, 36.667892>,  <44.640938, 33.541405, 36.628094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.754368, 33.333679, 36.667892>,  <44.943420, 32.987473, 36.734222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.754368, 33.333679, 36.667892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726341, -0.489145, -0.482872,
		-0.499055, -0.107761, 0.859844,
		-0.472623, 0.865520, -0.165839,
		44.612579, 33.593334, 36.618145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278027, 32.756454, 36.742645>,  <44.943420, 32.987473, 36.734222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278027, 32.756454, 36.742645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283550, 33.108219, 36.552303>,  <44.286865, 33.319279, 36.438099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283550, 33.108219, 36.552303>,  <44.278027, 32.756454, 36.742645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.283550, 33.108219, 36.552303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637296, -0.358975, -0.681903,
		-0.770496, 0.312676, 0.555491,
		0.013807, 0.879415, -0.475856,
		44.287693, 33.372044, 36.409546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.564251, 32.924679, 36.444462>,  <44.278027, 32.756454, 36.742645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.564251, 32.924679, 36.444462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.827976, 33.122166, 36.217640>,  <43.986210, 33.240658, 36.081547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.827976, 33.122166, 36.217640>,  <43.564251, 32.924679, 36.444462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827976, 33.122166, 36.217640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510333, -0.259992, -0.819734,
		-0.552145, 0.829848, 0.080543,
		0.659314, 0.493717, -0.567052,
		44.025772, 33.270279, 36.047523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184063, 33.406971, 35.998089>,  <43.564251, 32.924679, 36.444462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184063, 33.406971, 35.998089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543381, 33.359516, 35.828861>,  <43.758972, 33.331043, 35.727325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543381, 33.359516, 35.828861>,  <43.184063, 33.406971, 35.998089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543381, 33.359516, 35.828861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431308, -0.054268, -0.900571,
		0.083885, 0.991453, -0.099920,
		0.898297, -0.118641, -0.423069,
		43.812870, 33.323925, 35.701939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995533, 33.662952, 35.385376>,  <43.184063, 33.406971, 35.998089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995533, 33.662952, 35.385376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353874, 33.508614, 35.297222>,  <43.568878, 33.416008, 35.244331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353874, 33.508614, 35.297222>,  <42.995533, 33.662952, 35.385376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353874, 33.508614, 35.297222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346569, -0.296326, -0.889989,
		0.278098, 0.873676, -0.399188,
		0.895852, -0.385851, -0.220382,
		43.622631, 33.392857, 35.231106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145294, 33.854641, 34.664314>,  <42.995533, 33.662952, 35.385376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145294, 33.854641, 34.664314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342987, 33.518898, 34.754833>,  <43.461601, 33.317451, 34.809143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342987, 33.518898, 34.754833>,  <43.145294, 33.854641, 34.664314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342987, 33.518898, 34.754833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346959, -0.429131, -0.833946,
		0.797093, 0.333645, -0.503313,
		0.494230, -0.839361, 0.226296,
		43.491257, 33.267090, 34.822723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.491226, 33.723286, 34.151817>,  <43.145294, 33.854641, 34.664314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.491226, 33.723286, 34.151817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.457211, 33.366013, 34.328449>,  <43.436802, 33.151649, 34.434429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.457211, 33.366013, 34.328449>,  <43.491226, 33.723286, 34.151817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.457211, 33.366013, 34.328449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300546, -0.399553, -0.866042,
		0.949969, -0.206361, -0.234466,
		-0.085036, -0.893181, 0.441584,
		43.431698, 33.098057, 34.460926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001648, 33.285305, 33.794437>,  <43.491226, 33.723286, 34.151817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001648, 33.285305, 33.794437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732327, 33.040028, 33.959682>,  <43.570732, 32.892860, 34.058830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732327, 33.040028, 33.959682>,  <44.001648, 33.285305, 33.794437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732327, 33.040028, 33.959682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141140, -0.441868, -0.885907,
		0.725771, -0.654790, 0.210965,
		-0.673302, -0.613191, 0.413112,
		43.530334, 32.856071, 34.083614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171120, 32.558777, 33.635410>,  <44.001648, 33.285305, 33.794437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171120, 32.558777, 33.635410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793320, 32.498032, 33.751926>,  <43.566639, 32.461586, 33.821835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793320, 32.498032, 33.751926>,  <44.171120, 32.558777, 33.635410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793320, 32.498032, 33.751926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115153, -0.677410, -0.726537,
		0.307655, -0.719760, 0.622329,
		-0.944504, -0.151860, 0.291291,
		43.509968, 32.452473, 33.839314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.125641, 31.781458, 33.755871>,  <44.171120, 32.558777, 33.635410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.125641, 31.781458, 33.755871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.764015, 31.945940, 33.709270>,  <43.547039, 32.044628, 33.681313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.764015, 31.945940, 33.709270>,  <44.125641, 31.781458, 33.755871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.764015, 31.945940, 33.709270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196084, -0.641270, -0.741839,
		-0.379754, -0.647829, 0.660382,
		-0.904067, 0.411207, -0.116496,
		43.492794, 32.069302, 33.674320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602730, 31.272148, 33.917255>,  <44.125641, 31.781458, 33.755871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602730, 31.272148, 33.917255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447903, 31.543270, 33.667213>,  <43.355007, 31.705944, 33.517189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447903, 31.543270, 33.667213>,  <43.602730, 31.272148, 33.917255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447903, 31.543270, 33.667213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009378, -0.675020, -0.737740,
		-0.922002, -0.291420, 0.254925,
		-0.387071, 0.677807, -0.625103,
		43.331779, 31.746613, 33.479683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324467, 30.828505, 33.419842>,  <43.602730, 31.272148, 33.917255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324467, 30.828505, 33.419842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.302265, 31.193680, 33.258121>,  <43.288944, 31.412785, 33.161087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.302265, 31.193680, 33.258121>,  <43.324467, 30.828505, 33.419842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302265, 31.193680, 33.258121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034413, -0.402938, -0.914580,
		-0.997865, -0.064674, -0.009053,
		-0.055502, 0.912939, -0.404304,
		43.285614, 31.467562, 33.136829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785488, 30.753407, 32.936729>,  <43.324467, 30.828505, 33.419842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785488, 30.753407, 32.936729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006439, 31.067492, 32.824787>,  <43.139011, 31.255941, 32.757622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006439, 31.067492, 32.824787>,  <42.785488, 30.753407, 32.936729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006439, 31.067492, 32.824787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151427, -0.424656, -0.892601,
		-0.819723, 0.450677, -0.353474,
		0.552380, 0.785211, -0.279856,
		43.172153, 31.303055, 32.740829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578957, 30.912836, 32.293938>,  <42.785488, 30.753407, 32.936729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578957, 30.912836, 32.293938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935551, 31.093580, 32.307045>,  <43.149506, 31.202026, 32.314907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935551, 31.093580, 32.307045>,  <42.578957, 30.912836, 32.293938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935551, 31.093580, 32.307045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230467, -0.390049, -0.891486,
		-0.390049, 0.802298, -0.451863,
		0.891486, 0.451863, 0.032765,
		43.202995, 31.229139, 32.316875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678791, 31.062590, 31.591118>,  <42.578957, 30.912836, 32.293938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678791, 31.062590, 31.591118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.042316, 31.108936, 31.751434>,  <43.260433, 31.136745, 31.847624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.042316, 31.108936, 31.751434>,  <42.678791, 31.062590, 31.591118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042316, 31.108936, 31.751434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409512, -0.431343, -0.803893,
		0.079733, 0.894717, -0.439460,
		0.908814, 0.115868, 0.400789,
		43.314960, 31.143696, 31.871672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129536, 31.353092, 31.056160>,  <42.678791, 31.062590, 31.591118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129536, 31.353092, 31.056160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361713, 31.152523, 31.312803>,  <43.501019, 31.032181, 31.466789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361713, 31.152523, 31.312803>,  <43.129536, 31.353092, 31.056160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361713, 31.152523, 31.312803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522491, -0.375005, -0.765751,
		0.624573, 0.779708, 0.044322,
		0.580441, -0.501425, 0.641609,
		43.535847, 31.002096, 31.505285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.760258, 31.472956, 30.813576>,  <43.129536, 31.353092, 31.056160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.760258, 31.472956, 30.813576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.794483, 31.138596, 31.030445>,  <43.815018, 30.937979, 31.160566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.794483, 31.138596, 31.030445>,  <43.760258, 31.472956, 30.813576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.794483, 31.138596, 31.030445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658803, -0.360759, -0.660175,
		0.747434, 0.413671, 0.519826,
		0.085564, -0.835900, 0.542172,
		43.820152, 30.887825, 31.193096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.438931, 31.301361, 30.713360>,  <43.760258, 31.472956, 30.813576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.438931, 31.301361, 30.713360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.298359, 30.957359, 30.861355>,  <44.214016, 30.750957, 30.950151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.298359, 30.957359, 30.861355>,  <44.438931, 31.301361, 30.713360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.298359, 30.957359, 30.861355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638964, -0.509167, -0.576605,
		0.684269, 0.033773, 0.728447,
		-0.351428, -0.860005, 0.369987,
		44.192932, 30.699358, 30.972351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.014309, 30.820654, 30.852396>,  <44.438931, 31.301361, 30.713360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.014309, 30.820654, 30.852396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697250, 30.576971, 30.842751>,  <44.507015, 30.430761, 30.836964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697250, 30.576971, 30.842751>,  <45.014309, 30.820654, 30.852396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.697250, 30.576971, 30.842751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476264, -0.594011, -0.648324,
		0.380639, -0.525375, 0.760983,
		-0.792645, -0.609206, -0.024113,
		44.459457, 30.394209, 30.835516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.270428, 30.060041, 30.924322>,  <45.014309, 30.820654, 30.852396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.270428, 30.060041, 30.924322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902622, 30.011425, 30.774807>,  <44.681938, 29.982256, 30.685099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902622, 30.011425, 30.774807>,  <45.270428, 30.060041, 30.924322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.902622, 30.011425, 30.774807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307245, -0.815358, -0.490705,
		-0.245129, -0.566056, 0.787079,
		-0.919518, -0.121540, -0.373786,
		44.626766, 29.974962, 30.662672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.193897, 29.345510, 30.959053>,  <45.270428, 30.060041, 30.924322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.193897, 29.345510, 30.959053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.916725, 29.483671, 30.705900>,  <44.750420, 29.566568, 30.554008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.916725, 29.483671, 30.705900>,  <45.193897, 29.345510, 30.959053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.916725, 29.483671, 30.705900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105761, -0.819595, -0.563097,
		-0.713203, -0.457123, 0.531394,
		-0.692933, 0.345402, -0.632884,
		44.708847, 29.587292, 30.516035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.696735, 28.821457, 30.882496>,  <45.193897, 29.345510, 30.959053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.696735, 28.821457, 30.882496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654041, 29.052286, 30.558620>,  <44.628426, 29.190784, 30.364296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654041, 29.052286, 30.558620>,  <44.696735, 28.821457, 30.882496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.654041, 29.052286, 30.558620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113257, -0.801983, -0.586512,
		-0.987816, -0.154304, 0.020242,
		-0.106735, 0.577073, -0.809688,
		44.622021, 29.225409, 30.315714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.304531, 28.395117, 30.399385>,  <44.696735, 28.821457, 30.882496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.304531, 28.395117, 30.399385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508083, 28.675571, 30.199604>,  <44.630215, 28.843843, 30.079735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508083, 28.675571, 30.199604>,  <44.304531, 28.395117, 30.399385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508083, 28.675571, 30.199604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189059, -0.657056, -0.729749,
		-0.839822, 0.276926, -0.466916,
		0.508877, 0.701134, -0.499455,
		44.660748, 28.885912, 30.049768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.961945, 28.420475, 29.769268>,  <44.304531, 28.395117, 30.399385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.961945, 28.420475, 29.769268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.343445, 28.540514, 29.762318>,  <44.572346, 28.612537, 29.758148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.343445, 28.540514, 29.762318>,  <43.961945, 28.420475, 29.769268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.343445, 28.540514, 29.762318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248441, -0.819485, -0.516450,
		-0.169224, 0.488248, -0.856141,
		0.953751, 0.300097, -0.017376,
		44.629570, 28.630543, 29.757105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.283386, 28.490391, 29.060959>,  <43.961945, 28.420475, 29.769268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.283386, 28.490391, 29.060959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552170, 28.390266, 29.339760>,  <44.713440, 28.330193, 29.507040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552170, 28.390266, 29.339760>,  <44.283386, 28.490391, 29.060959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552170, 28.390266, 29.339760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274345, -0.790059, -0.548216,
		0.687896, 0.559600, -0.462219,
		0.671962, -0.250309, 0.697002,
		44.753757, 28.315174, 29.548861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.248569, 27.787453, 28.911148>,  <44.283386, 28.490391, 29.060959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.248569, 27.787453, 28.911148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.638882, 27.873333, 28.894411>,  <44.873070, 27.924862, 28.884369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.638882, 27.873333, 28.894411>,  <44.248569, 27.787453, 28.911148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.638882, 27.873333, 28.894411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214519, -0.976680, -0.008855,
		-0.042768, -0.000335, -0.999085,
		0.975783, 0.214702, -0.041843,
		44.931618, 27.937744, 28.881859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053478, 27.219284, 29.405172>,  <44.248569, 27.787453, 28.911148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053478, 27.219284, 29.405172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.404903, 27.142452, 29.580091>,  <44.615761, 27.096354, 29.685043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.404903, 27.142452, 29.580091>,  <44.053478, 27.219284, 29.405172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404903, 27.142452, 29.580091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474754, -0.451408, 0.755539,
		0.052276, -0.871399, -0.487782,
		0.878565, -0.192079, 0.437298,
		44.668472, 27.084829, 29.711281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069164, 26.545250, 29.662489>,  <44.053478, 27.219284, 29.405172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069164, 26.545250, 29.662489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.331383, 26.718290, 29.910076>,  <44.488712, 26.822115, 30.058628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.331383, 26.718290, 29.910076>,  <44.069164, 26.545250, 29.662489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331383, 26.718290, 29.910076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335814, -0.567148, 0.752045,
		0.676382, -0.700855, -0.226516,
		0.655542, 0.432603, 0.618966,
		44.528046, 26.848072, 30.095766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.397350, 25.998129, 29.968630>,  <44.069164, 26.545250, 29.662489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.397350, 25.998129, 29.968630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429260, 26.310226, 30.216776>,  <44.448406, 26.497486, 30.365664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429260, 26.310226, 30.216776>,  <44.397350, 25.998129, 29.968630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429260, 26.310226, 30.216776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053539, -0.624804, 0.778944,
		0.995374, -0.028924, -0.091615,
		0.079771, 0.780246, 0.620365,
		44.453190, 26.544300, 30.402885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.175732, 25.909187, 30.347755>,  <44.397350, 25.998129, 29.968630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.175732, 25.909187, 30.347755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.863239, 26.080641, 30.529285>,  <44.675743, 26.183514, 30.638203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.863239, 26.080641, 30.529285>,  <45.175732, 25.909187, 30.347755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.863239, 26.080641, 30.529285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167705, -0.556157, 0.813981,
		0.601296, 0.712013, 0.362601,
		-0.781228, 0.428634, 0.453823,
		44.628872, 26.209230, 30.665432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.564930, 25.532314, 30.893242>,  <45.175732, 25.909187, 30.347755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.564930, 25.532314, 30.893242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.922539, 25.360867, 30.841074>,  <46.137104, 25.257998, 30.809772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.922539, 25.360867, 30.841074>,  <45.564930, 25.532314, 30.893242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.922539, 25.360867, 30.841074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403694, 0.644428, 0.649418,
		-0.194308, -0.633243, 0.749164,
		0.894022, -0.428620, -0.130419,
		46.190746, 25.232281, 30.801949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.785145, 25.322674, 31.498415>,  <45.564930, 25.532314, 30.893242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.785145, 25.322674, 31.498415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.065880, 25.458918, 31.248163>,  <46.234322, 25.540665, 31.098013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.065880, 25.458918, 31.248163>,  <45.785145, 25.322674, 31.498415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.065880, 25.458918, 31.248163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366820, 0.580062, 0.727304,
		0.610634, -0.739939, 0.282162,
		0.701833, 0.340614, -0.625631,
		46.276432, 25.561100, 31.060474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.423977, 25.307329, 31.846834>,  <45.785145, 25.322674, 31.498415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.423977, 25.307329, 31.846834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.463692, 25.568933, 31.546858>,  <46.487522, 25.725897, 31.366873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.463692, 25.568933, 31.546858>,  <46.423977, 25.307329, 31.846834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.463692, 25.568933, 31.546858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547251, 0.593559, 0.590088,
		0.831058, -0.468995, -0.298975,
		0.099289, 0.654012, -0.749940,
		46.493477, 25.765137, 31.321877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.173519, 25.541273, 31.703300>,  <46.423977, 25.307329, 31.846834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.173519, 25.541273, 31.703300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.869793, 25.793228, 31.637959>,  <46.687557, 25.944401, 31.598753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.869793, 25.793228, 31.637959>,  <47.173519, 25.541273, 31.703300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.869793, 25.793228, 31.637959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417075, 0.663783, 0.620839,
		0.499492, 0.403279, -0.766729,
		-0.759314, 0.629887, -0.163357,
		46.641998, 25.982195, 31.588951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.414574, 26.237047, 31.590851>,  <47.173519, 25.541273, 31.703300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.414574, 26.237047, 31.590851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.038074, 26.246294, 31.725624>,  <46.812176, 26.251842, 31.806488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.038074, 26.246294, 31.725624>,  <47.414574, 26.237047, 31.590851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.038074, 26.246294, 31.725624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235316, 0.760501, 0.605198,
		-0.242246, 0.648925, -0.721258,
		-0.941245, 0.023117, 0.336931,
		46.755699, 26.253229, 31.826704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.410412, 26.861040, 31.760378>,  <47.414574, 26.237047, 31.590851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.410412, 26.861040, 31.760378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.084782, 26.721622, 31.946192>,  <46.889404, 26.637972, 32.057682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.084782, 26.721622, 31.946192>,  <47.410412, 26.861040, 31.760378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.084782, 26.721622, 31.946192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028839, 0.774636, 0.631750,
		-0.580037, 0.527691, -0.620563,
		-0.814079, -0.348542, 0.464536,
		46.840557, 26.617060, 32.085552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.965790, 27.396259, 31.734043>,  <47.410412, 26.861040, 31.760378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.965790, 27.396259, 31.734043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866447, 27.158079, 32.039658>,  <46.806843, 27.015171, 32.223026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866447, 27.158079, 32.039658>,  <46.965790, 27.396259, 31.734043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.866447, 27.158079, 32.039658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001365, 0.788966, 0.614436,
		-0.968668, 0.151557, -0.196758,
		-0.248357, -0.595453, 0.764039,
		46.791939, 26.979443, 32.268867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.549412, 27.844370, 32.079163>,  <46.965790, 27.396259, 31.734043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.549412, 27.844370, 32.079163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.634239, 27.552290, 32.338959>,  <46.685135, 27.377041, 32.494835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.634239, 27.552290, 32.338959>,  <46.549412, 27.844370, 32.079163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.634239, 27.552290, 32.338959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005021, 0.665408, 0.746463,
		-0.977241, -0.155043, 0.144781,
		0.212073, -0.730201, 0.649486,
		46.697861, 27.333229, 32.533806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.147579, 27.927441, 32.656670>,  <46.549412, 27.844370, 32.079163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.147579, 27.927441, 32.656670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.472168, 27.735512, 32.790104>,  <46.666924, 27.620354, 32.870167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.472168, 27.735512, 32.790104>,  <46.147579, 27.927441, 32.656670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.472168, 27.735512, 32.790104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012828, 0.585320, 0.810701,
		-0.584248, -0.653583, 0.481127,
		0.811473, -0.479823, 0.333588,
		46.715611, 27.591564, 32.890179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.953285, 27.883614, 33.342464>,  <46.147579, 27.927441, 32.656670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.953285, 27.883614, 33.342464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.351585, 27.860315, 33.313957>,  <46.590569, 27.846336, 33.296852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.351585, 27.860315, 33.313957>,  <45.953285, 27.883614, 33.342464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.351585, 27.860315, 33.313957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092006, 0.608134, 0.788484,
		-0.002587, -0.791694, 0.610912,
		0.995755, -0.058247, -0.071267,
		46.650311, 27.842842, 33.292576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.082047, 27.716000, 33.951958>,  <45.953285, 27.883614, 33.342464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.082047, 27.716000, 33.951958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.423904, 27.863741, 33.805996>,  <46.629021, 27.952385, 33.718418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.423904, 27.863741, 33.805996>,  <46.082047, 27.716000, 33.951958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.423904, 27.863741, 33.805996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115828, 0.549473, 0.827444,
		0.506119, -0.749441, 0.426826,
		0.854650, 0.369347, -0.364905,
		46.680298, 27.974546, 33.696526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.461456, 27.916088, 34.572411>,  <46.082047, 27.716000, 33.951958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.461456, 27.916088, 34.572411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.691257, 28.073772, 34.285484>,  <46.829140, 28.168383, 34.113327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.691257, 28.073772, 34.285484>,  <46.461456, 27.916088, 34.572411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.691257, 28.073772, 34.285484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222718, 0.768020, 0.600452,
		0.787618, -0.504721, 0.353432,
		0.574504, 0.394210, -0.717316,
		46.863609, 28.192036, 34.070290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.170692, 28.071522, 34.854225>,  <46.461456, 27.916088, 34.572411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.170692, 28.071522, 34.854225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.098328, 28.294693, 34.530254>,  <47.054909, 28.428596, 34.335873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.098328, 28.294693, 34.530254>,  <47.170692, 28.071522, 34.854225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.098328, 28.294693, 34.530254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426496, 0.786562, 0.446565,
		0.886212, -0.264643, -0.380253,
		-0.180912, 0.557928, -0.809930,
		47.044052, 28.462070, 34.287273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.702011, 28.526476, 34.778160>,  <47.170692, 28.071522, 34.854225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.702011, 28.526476, 34.778160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.409721, 28.710932, 34.576809>,  <47.234348, 28.821606, 34.455997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.409721, 28.710932, 34.576809>,  <47.702011, 28.526476, 34.778160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.409721, 28.710932, 34.576809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153819, 0.829622, 0.536719,
		0.665121, 0.314762, -0.677155,
		-0.730722, 0.461142, -0.503383,
		47.190506, 28.849274, 34.425793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.924942, 29.177984, 34.666134>,  <47.702011, 28.526476, 34.778160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.924942, 29.177984, 34.666134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.536655, 29.244577, 34.596870>,  <47.303684, 29.284534, 34.555313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.536655, 29.244577, 34.596870>,  <47.924942, 29.177984, 34.666134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.536655, 29.244577, 34.596870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079905, 0.903612, 0.420833,
		0.226531, 0.394675, -0.890458,
		-0.970721, 0.166484, -0.173159,
		47.245438, 29.294523, 34.544922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.850475, 29.800789, 34.428986>,  <47.924942, 29.177984, 34.666134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.850475, 29.800789, 34.428986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.473549, 29.733023, 34.544456>,  <47.247395, 29.692364, 34.613739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.473549, 29.733023, 34.544456>,  <47.850475, 29.800789, 34.428986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.473549, 29.733023, 34.544456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064576, 0.938263, 0.339842,
		-0.328433, 0.301597, -0.895082,
		-0.942317, -0.169416, 0.288681,
		47.190853, 29.682198, 34.631062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.501640, 30.406912, 34.220612>,  <47.850475, 29.800789, 34.428986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.501640, 30.406912, 34.220612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.284500, 30.241930, 34.513241>,  <47.154217, 30.142941, 34.688820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.284500, 30.241930, 34.513241>,  <47.501640, 30.406912, 34.220612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.284500, 30.241930, 34.513241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281344, 0.910072, 0.304326,
		-0.791304, -0.040621, -0.610072,
		-0.542848, -0.412455, 0.731572,
		47.121647, 30.118193, 34.732712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.847752, 30.709970, 34.117752>,  <47.501640, 30.406912, 34.220612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.847752, 30.709970, 34.117752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.850754, 30.564686, 34.490421>,  <46.852554, 30.477516, 34.714024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.850754, 30.564686, 34.490421>,  <46.847752, 30.709970, 34.117752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.850754, 30.564686, 34.490421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363652, 0.866919, 0.340894,
		-0.931504, -0.341365, -0.125575,
		0.007506, -0.363210, 0.931677,
		46.853004, 30.455723, 34.769924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.167625, 30.811867, 34.508652>,  <46.847752, 30.709970, 34.117752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.167625, 30.811867, 34.508652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.456726, 30.792221, 34.784393>,  <46.630188, 30.780434, 34.949841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.456726, 30.792221, 34.784393>,  <46.167625, 30.811867, 34.508652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.456726, 30.792221, 34.784393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418831, 0.762300, 0.493436,
		-0.549733, -0.645357, 0.530385,
		0.722755, -0.049116, 0.689357,
		46.673553, 30.777487, 34.991199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.741566, 31.178297, 34.930534>,  <46.167625, 30.811867, 34.508652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.741566, 31.178297, 34.930534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.105343, 31.151493, 35.094692>,  <46.323608, 31.135410, 35.193188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.105343, 31.151493, 35.094692>,  <45.741566, 31.178297, 34.930534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.105343, 31.151493, 35.094692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080114, 0.940206, 0.331051,
		-0.408037, -0.333950, 0.849696,
		0.909444, -0.067008, 0.410393,
		46.378178, 31.131392, 35.217812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.557842, 31.383184, 35.641071>,  <45.741566, 31.178297, 34.930534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.557842, 31.383184, 35.641071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.951519, 31.429926, 35.587852>,  <46.187725, 31.457972, 35.555920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.951519, 31.429926, 35.587852>,  <45.557842, 31.383184, 35.641071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951519, 31.429926, 35.587852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025733, 0.837761, 0.545430,
		0.175202, -0.533386, 0.827529,
		0.984196, 0.116855, -0.133051,
		46.246777, 31.464983, 35.547935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.655956, 31.726542, 36.267941>,  <45.557842, 31.383184, 35.641071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.655956, 31.726542, 36.267941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.969490, 31.778996, 36.025154>,  <46.157612, 31.810469, 35.879482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.969490, 31.778996, 36.025154>,  <45.655956, 31.726542, 36.267941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.969490, 31.778996, 36.025154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027531, 0.969147, 0.244940,
		0.620358, -0.208703, 0.756042,
		0.783835, 0.131136, -0.606964,
		46.204639, 31.818336, 35.843063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.073612, 32.218952, 36.662182>,  <45.655956, 31.726542, 36.267941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.073612, 32.218952, 36.662182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211224, 32.231262, 36.286800>,  <46.293789, 32.238647, 36.061569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211224, 32.231262, 36.286800>,  <46.073612, 32.218952, 36.662182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.211224, 32.231262, 36.286800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109803, 0.991286, 0.072765,
		0.932518, -0.128078, 0.337648,
		0.344025, 0.030780, -0.938456,
		46.314430, 32.240498, 36.005264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.671047, 32.628201, 36.680763>,  <46.073612, 32.218952, 36.662182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.671047, 32.628201, 36.680763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.549229, 32.650715, 36.300430>,  <46.476139, 32.664223, 36.072231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.549229, 32.650715, 36.300430>,  <46.671047, 32.628201, 36.680763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.549229, 32.650715, 36.300430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209154, 0.977840, -0.009108,
		0.929252, -0.201645, -0.309565,
		-0.304542, 0.056283, -0.950835,
		46.457867, 32.667599, 36.015179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.244778, 32.951530, 36.358105>,  <46.671047, 32.628201, 36.680763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.244778, 32.951530, 36.358105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.903339, 33.005123, 36.156738>,  <46.698479, 33.037277, 36.035919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.903339, 33.005123, 36.156738>,  <47.244778, 32.951530, 36.358105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.903339, 33.005123, 36.156738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241344, 0.958106, -0.154230,
		0.461666, -0.253146, -0.850166,
		-0.853591, 0.133980, -0.503420,
		46.647263, 33.045319, 36.005711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.470215, 33.041237, 35.692635>,  <47.244778, 32.951530, 36.358105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.470215, 33.041237, 35.692635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.147701, 33.202465, 35.865814>,  <46.954193, 33.299202, 35.969723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.147701, 33.202465, 35.865814>,  <47.470215, 33.041237, 35.692635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.147701, 33.202465, 35.865814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404001, 0.909845, -0.094687,
		-0.432080, 0.098567, -0.896433,
		-0.806282, 0.403072, 0.432947,
		46.905815, 33.323387, 35.995697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.512810, 33.695618, 35.363873>,  <47.470215, 33.041237, 35.692635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.512810, 33.695618, 35.363873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.270302, 33.718021, 35.681187>,  <47.124798, 33.731464, 35.871574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.270302, 33.718021, 35.681187>,  <47.512810, 33.695618, 35.363873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.270302, 33.718021, 35.681187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186031, 0.979829, 0.072994,
		-0.773193, 0.191830, -0.604461,
		-0.606271, 0.056010, 0.793283,
		47.088421, 33.734825, 35.919170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.125771, 34.240673, 35.172825>,  <47.512810, 33.695618, 35.363873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.125771, 34.240673, 35.172825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.127415, 34.201221, 35.570869>,  <47.128403, 34.177551, 35.809696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.127415, 34.201221, 35.570869>,  <47.125771, 34.240673, 35.172825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.127415, 34.201221, 35.570869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028987, 0.994718, 0.098465,
		-0.999571, 0.028441, 0.006950,
		0.004113, -0.098625, 0.995116,
		47.128651, 34.171635, 35.869404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.318958, 34.998837, 34.907417>,  <47.125771, 34.240673, 35.172825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.318958, 34.998837, 34.907417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.695648, 34.866798, 34.933311>,  <47.921661, 34.787575, 34.948849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.695648, 34.866798, 34.933311>,  <47.318958, 34.998837, 34.907417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.695648, 34.866798, 34.933311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089872, -0.432342, -0.897220,
		0.324153, 0.839117, -0.436814,
		0.941726, -0.330094, 0.064732,
		47.978165, 34.767769, 34.952732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.300175, 40.905087, 43.992645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.972286, 40.873486, 43.765732>,  <36.775551, 40.854523, 43.629585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.972286, 40.873486, 43.765732>,  <37.300175, 40.905087, 43.992645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972286, 40.873486, 43.765732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457525, -0.686156, -0.565563,
		-0.344562, -0.723152, 0.598605,
		-0.819724, -0.079005, -0.567283,
		36.726368, 40.849785, 43.595547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290440, 40.234531, 43.732056>,  <37.300175, 40.905087, 43.992645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290440, 40.234531, 43.732056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.036434, 40.389202, 43.464554>,  <36.884029, 40.482006, 43.304050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.036434, 40.389202, 43.464554>,  <37.290440, 40.234531, 43.732056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036434, 40.389202, 43.464554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344191, -0.633403, -0.693061,
		-0.691584, -0.670284, 0.269129,
		-0.635015, 0.386678, -0.668757,
		36.845928, 40.505207, 43.263927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981365, 39.583359, 43.481670>,  <37.290440, 40.234531, 43.732056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981365, 39.583359, 43.481670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.938324, 39.874176, 43.210430>,  <36.912498, 40.048668, 43.047684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.938324, 39.874176, 43.210430>,  <36.981365, 39.583359, 43.481670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938324, 39.874176, 43.210430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120294, -0.667531, -0.734800,
		-0.986889, -0.160641, -0.015628,
		-0.107607, 0.727046, -0.678103,
		36.906040, 40.092289, 43.007000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642494, 39.280643, 42.931473>,  <36.981365, 39.583359, 43.481670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642494, 39.280643, 42.931473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.798706, 39.611912, 42.770668>,  <36.892433, 39.810673, 42.674187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.798706, 39.611912, 42.770668>,  <36.642494, 39.280643, 42.931473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798706, 39.611912, 42.770668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066718, -0.461002, -0.884887,
		-0.918168, 0.318757, -0.235291,
		0.390533, 0.828173, -0.402011,
		36.915867, 39.860363, 42.650066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187889, 39.555222, 42.430538>,  <36.642494, 39.280643, 42.931473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187889, 39.555222, 42.430538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555202, 39.685673, 42.340748>,  <36.775593, 39.763943, 42.286873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555202, 39.685673, 42.340748>,  <36.187889, 39.555222, 42.430538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555202, 39.685673, 42.340748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058770, -0.448408, -0.891895,
		-0.391531, 0.832207, -0.392600,
		0.918286, 0.326131, -0.224474,
		36.830688, 39.783512, 42.273407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131187, 39.726780, 41.682339>,  <36.187889, 39.555222, 42.430538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131187, 39.726780, 41.682339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.520203, 39.716618, 41.774876>,  <36.753613, 39.710522, 41.830399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.520203, 39.716618, 41.774876>,  <36.131187, 39.726780, 41.682339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520203, 39.716618, 41.774876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192614, -0.470056, -0.861364,
		0.130628, 0.882271, -0.452255,
		0.972541, -0.025407, 0.231340,
		36.811966, 39.708996, 41.844276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464905, 40.014660, 41.041172>,  <36.131187, 39.726780, 41.682339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464905, 40.014660, 41.041172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.711475, 39.766216, 41.234768>,  <36.859417, 39.617149, 41.350925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.711475, 39.766216, 41.234768>,  <36.464905, 40.014660, 41.041172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711475, 39.766216, 41.234768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262968, -0.416977, -0.870045,
		0.742206, 0.663589, -0.093702,
		0.616424, -0.621111, 0.483986,
		36.896404, 39.579884, 41.379963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005505, 40.049141, 40.666046>,  <36.464905, 40.014660, 41.041172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005505, 40.049141, 40.666046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.063179, 39.713913, 40.876511>,  <37.097782, 39.512775, 41.002789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.063179, 39.713913, 40.876511>,  <37.005505, 40.049141, 40.666046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063179, 39.713913, 40.876511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336805, -0.458412, -0.822448,
		0.930470, 0.295798, 0.216171,
		0.144183, -0.838070, 0.526165,
		37.106434, 39.462490, 41.034359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585606, 39.762878, 40.319855>,  <37.005505, 40.049141, 40.666046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585606, 39.762878, 40.319855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.472652, 39.454872, 40.548706>,  <37.404881, 39.270069, 40.686016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.472652, 39.454872, 40.548706>,  <37.585606, 39.762878, 40.319855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472652, 39.454872, 40.548706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053560, -0.608130, -0.792028,
		0.957805, -0.193011, 0.212968,
		-0.282383, -0.770016, 0.572133,
		37.387939, 39.223869, 40.720345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089455, 39.225510, 40.208633>,  <37.585606, 39.762878, 40.319855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089455, 39.225510, 40.208633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.754101, 39.043617, 40.328854>,  <37.552887, 38.934483, 40.400986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.754101, 39.043617, 40.328854>,  <38.089455, 39.225510, 40.208633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754101, 39.043617, 40.328854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143429, -0.715995, -0.683212,
		0.525867, -0.529689, 0.665502,
		-0.838386, -0.454731, 0.300546,
		37.502586, 38.907196, 40.419018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223999, 38.514305, 40.540741>,  <38.089455, 39.225510, 40.208633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223999, 38.514305, 40.540741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.856804, 38.526848, 40.382591>,  <37.636486, 38.534374, 40.287701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.856804, 38.526848, 40.382591>,  <38.223999, 38.514305, 40.540741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856804, 38.526848, 40.382591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214572, -0.799113, -0.561584,
		-0.333556, -0.600362, 0.726847,
		-0.917987, 0.031359, -0.395370,
		37.581409, 38.536255, 40.263981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958305, 37.827374, 40.648460>,  <38.223999, 38.514305, 40.540741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958305, 37.827374, 40.648460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.758938, 37.992710, 40.343639>,  <37.639317, 38.091911, 40.160748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.758938, 37.992710, 40.343639>,  <37.958305, 37.827374, 40.648460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758938, 37.992710, 40.343639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178442, -0.811287, -0.556751,
		-0.848374, -0.413478, 0.330602,
		-0.498418, 0.413340, -0.762056,
		37.609413, 38.116711, 40.115021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674053, 37.231785, 40.364971>,  <37.958305, 37.827374, 40.648460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674053, 37.231785, 40.364971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.662849, 37.491020, 40.060551>,  <37.656128, 37.646561, 39.877899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.662849, 37.491020, 40.060551>,  <37.674053, 37.231785, 40.364971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662849, 37.491020, 40.060551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323354, -0.714540, -0.620383,
		-0.945864, -0.263463, -0.189550,
		-0.028007, 0.648089, -0.761049,
		37.654446, 37.685448, 39.832237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382557, 36.857666, 39.800953>,  <37.674053, 37.231785, 40.364971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382557, 36.857666, 39.800953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.535419, 37.169006, 39.601707>,  <37.627136, 37.355812, 39.482159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.535419, 37.169006, 39.601707>,  <37.382557, 36.857666, 39.800953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535419, 37.169006, 39.601707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188734, -0.593409, -0.782461,
		-0.904617, 0.205015, -0.373679,
		0.382161, 0.778354, -0.498115,
		37.650066, 37.402512, 39.452274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107159, 36.809666, 39.116489>,  <37.382557, 36.857666, 39.800953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107159, 36.809666, 39.116489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.424503, 37.047005, 39.062061>,  <37.614910, 37.189407, 39.029404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.424503, 37.047005, 39.062061>,  <37.107159, 36.809666, 39.116489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424503, 37.047005, 39.062061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132779, -0.386809, -0.912551,
		-0.594087, 0.705920, -0.385665,
		0.793366, 0.593343, -0.136067,
		37.662514, 37.225006, 39.021240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073105, 37.160446, 38.320866>,  <37.107159, 36.809666, 39.116489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073105, 37.160446, 38.320866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.453659, 37.209454, 38.433895>,  <37.681992, 37.238857, 38.501713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.453659, 37.209454, 38.433895>,  <37.073105, 37.160446, 38.320866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453659, 37.209454, 38.433895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306472, -0.285558, -0.908037,
		-0.030561, 0.950497, -0.309226,
		0.951389, 0.122520, 0.282574,
		37.739075, 37.246208, 38.518669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375603, 37.499599, 37.691753>,  <37.073105, 37.160446, 38.320866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375603, 37.499599, 37.691753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.644012, 37.293098, 37.904621>,  <37.805058, 37.169197, 38.032341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.644012, 37.293098, 37.904621>,  <37.375603, 37.499599, 37.691753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644012, 37.293098, 37.904621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372244, -0.386168, -0.843984,
		0.641220, 0.764431, -0.066954,
		0.671023, -0.516256, 0.532173,
		37.845318, 37.138222, 38.064274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979633, 37.726768, 37.446575>,  <37.375603, 37.499599, 37.691753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979633, 37.726768, 37.446575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.068008, 37.382923, 37.630856>,  <38.121033, 37.176617, 37.741425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.068008, 37.382923, 37.630856>,  <37.979633, 37.726768, 37.446575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068008, 37.382923, 37.630856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665561, -0.212397, -0.715483,
		0.712893, 0.464703, 0.525200,
		0.220936, -0.859616, 0.460704,
		38.134289, 37.125038, 37.769066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637848, 37.665195, 37.285908>,  <37.979633, 37.726768, 37.446575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637848, 37.665195, 37.285908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.557884, 37.301716, 37.432499>,  <38.509907, 37.083630, 37.520454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.557884, 37.301716, 37.432499>,  <38.637848, 37.665195, 37.285908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557884, 37.301716, 37.432499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699920, -0.394183, -0.595594,
		0.685674, 0.137441, 0.714815,
		-0.199909, -0.908697, 0.366479,
		38.497913, 37.029106, 37.542442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306705, 37.316830, 37.395042>,  <38.637848, 37.665195, 37.285908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306705, 37.316830, 37.395042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.031300, 37.027481, 37.374310>,  <38.866055, 36.853874, 37.361870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.031300, 37.027481, 37.374310>,  <39.306705, 37.316830, 37.395042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031300, 37.027481, 37.374310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551297, -0.475619, -0.685462,
		0.471189, -0.500525, 0.726261,
		-0.688514, -0.723368, -0.051831,
		38.824745, 36.810471, 37.358761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761433, 36.792465, 37.370884>,  <39.306705, 37.316830, 37.395042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761433, 36.792465, 37.370884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.405537, 36.666569, 37.238640>,  <39.191998, 36.591030, 37.159294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.405537, 36.666569, 37.238640>,  <39.761433, 36.792465, 37.370884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405537, 36.666569, 37.238640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451360, -0.498567, -0.740071,
		0.068103, -0.807693, 0.585658,
		-0.889739, -0.314743, -0.330606,
		39.138615, 36.572147, 37.139458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833492, 36.074306, 37.210533>,  <39.761433, 36.792465, 37.370884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833492, 36.074306, 37.210533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.525402, 36.227463, 37.006516>,  <39.340546, 36.319355, 36.884106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.525402, 36.227463, 37.006516>,  <39.833492, 36.074306, 37.210533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525402, 36.227463, 37.006516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387553, -0.354145, -0.851108,
		-0.506509, -0.853216, 0.124382,
		-0.770228, 0.382889, -0.510044,
		39.294334, 36.342331, 36.853504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290005, 36.248859, 37.779377>,  <39.833492, 36.074306, 37.210533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290005, 36.248859, 37.779377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.672260, 36.214966, 37.892212>,  <40.901615, 36.194630, 37.959915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.672260, 36.214966, 37.892212>,  <40.290005, 36.248859, 37.779377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672260, 36.214966, 37.892212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128976, 0.740641, 0.659406,
		-0.264802, -0.666536, 0.696857,
		0.955638, -0.084734, 0.282090,
		40.958950, 36.189545, 37.976837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265610, 36.328285, 38.524143>,  <40.290005, 36.248859, 37.779377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265610, 36.328285, 38.524143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.644855, 36.392025, 38.414097>,  <40.872402, 36.430267, 38.348068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.644855, 36.392025, 38.414097>,  <40.265610, 36.328285, 38.524143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644855, 36.392025, 38.414097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124650, 0.609740, 0.782738,
		0.292476, -0.776419, 0.558240,
		0.948114, 0.159347, -0.275115,
		40.929291, 36.439831, 38.331562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648823, 36.123478, 39.185070>,  <40.265610, 36.328285, 38.524143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648823, 36.123478, 39.185070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.847626, 36.371029, 38.941769>,  <40.966908, 36.519558, 38.795788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.847626, 36.371029, 38.941769>,  <40.648823, 36.123478, 39.185070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847626, 36.371029, 38.941769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261800, 0.561350, 0.785078,
		0.827310, -0.549432, 0.116974,
		0.497010, 0.618879, -0.608252,
		40.996727, 36.556694, 38.759293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289047, 36.209686, 39.507690>,  <40.648823, 36.123478, 39.185070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289047, 36.209686, 39.507690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.262238, 36.517887, 39.254128>,  <41.246151, 36.702808, 39.101990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.262238, 36.517887, 39.254128>,  <41.289047, 36.209686, 39.507690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262238, 36.517887, 39.254128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173634, 0.634649, 0.753042,
		0.982527, -0.059594, -0.176324,
		-0.067027, 0.770500, -0.633907,
		41.242130, 36.749039, 39.063957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736210, 36.572529, 39.699898>,  <41.289047, 36.209686, 39.507690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736210, 36.572529, 39.699898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.556484, 36.850586, 39.475437>,  <41.448647, 37.017422, 39.340763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.556484, 36.850586, 39.475437>,  <41.736210, 36.572529, 39.699898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556484, 36.850586, 39.475437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088016, 0.659511, 0.746524,
		0.889026, 0.286035, -0.357513,
		-0.449316, 0.695146, -0.561148,
		41.421688, 37.059132, 39.307095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163177, 37.205025, 39.745132>,  <41.736210, 36.572529, 39.699898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163177, 37.205025, 39.745132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.794033, 37.315296, 39.637554>,  <41.572548, 37.381458, 39.573009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.794033, 37.315296, 39.637554>,  <42.163177, 37.205025, 39.745132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794033, 37.315296, 39.637554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057312, 0.592233, 0.803726,
		0.380845, 0.757141, -0.530749,
		-0.922861, 0.275677, -0.268942,
		41.517174, 37.397999, 39.556873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161911, 37.918861, 39.781620>,  <42.163177, 37.205025, 39.745132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161911, 37.918861, 39.781620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.780910, 37.800331, 39.809727>,  <41.552311, 37.729214, 39.826591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.780910, 37.800331, 39.809727>,  <42.161911, 37.918861, 39.781620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780910, 37.800331, 39.809727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133285, 0.613093, 0.778686,
		-0.273825, 0.732332, -0.623466,
		-0.952499, -0.296322, 0.070271,
		41.495159, 37.711433, 39.830807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770535, 38.550056, 39.887196>,  <42.161911, 37.918861, 39.781620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770535, 38.550056, 39.887196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.517174, 38.256947, 39.986679>,  <41.365158, 38.081081, 40.046368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.517174, 38.256947, 39.986679>,  <41.770535, 38.550056, 39.887196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517174, 38.256947, 39.986679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370006, 0.569067, 0.734342,
		-0.679634, 0.373109, -0.631575,
		-0.633398, -0.732770, 0.248705,
		41.327156, 38.037117, 40.061291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233013, 38.916393, 40.056511>,  <41.770535, 38.550056, 39.887196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233013, 38.916393, 40.056511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.179352, 38.552166, 40.212898>,  <41.147156, 38.333630, 40.306732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.179352, 38.552166, 40.212898>,  <41.233013, 38.916393, 40.056511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179352, 38.552166, 40.212898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531586, 0.399096, 0.747087,
		-0.836312, -0.107608, -0.537589,
		-0.134157, -0.910573, 0.390972,
		41.139103, 38.278996, 40.330189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515125, 38.740273, 40.237164>,  <41.233013, 38.916393, 40.056511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515125, 38.740273, 40.237164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.740147, 38.511349, 40.475826>,  <40.875160, 38.373993, 40.619022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.740147, 38.511349, 40.475826>,  <40.515125, 38.740273, 40.237164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740147, 38.511349, 40.475826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371570, 0.469673, 0.800839,
		-0.738561, -0.672212, 0.051561,
		0.562550, -0.572310, 0.596656,
		40.908913, 38.339657, 40.654823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091446, 38.557835, 40.853317>,  <40.515125, 38.740273, 40.237164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091446, 38.557835, 40.853317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.437725, 38.436962, 41.012947>,  <40.645493, 38.364441, 41.108723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.437725, 38.436962, 41.012947>,  <40.091446, 38.557835, 40.853317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437725, 38.436962, 41.012947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264162, 0.401397, 0.876983,
		-0.425191, -0.864621, 0.267663,
		0.865697, -0.302179, 0.399070,
		40.697433, 38.346310, 41.132668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857265, 38.249210, 41.438595>,  <40.091446, 38.557835, 40.853317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857265, 38.249210, 41.438595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.243164, 38.342403, 41.487553>,  <40.474705, 38.398319, 41.516926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.243164, 38.342403, 41.487553>,  <39.857265, 38.249210, 41.438595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243164, 38.342403, 41.487553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222833, 0.475715, 0.850906,
		0.140022, -0.848183, 0.510861,
		0.964748, 0.232982, 0.122393,
		40.532589, 38.412300, 41.524269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169910, 37.892056, 42.005257>,  <39.857265, 38.249210, 41.438595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169910, 37.892056, 42.005257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.360336, 38.236427, 41.933517>,  <40.474590, 38.443050, 41.890472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.360336, 38.236427, 41.933517>,  <40.169910, 37.892056, 42.005257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360336, 38.236427, 41.933517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288126, 0.345380, 0.893138,
		0.830872, -0.373516, 0.412479,
		0.476063, 0.860929, -0.179346,
		40.503155, 38.494705, 41.879715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583477, 38.043633, 42.630005>,  <40.169910, 37.892056, 42.005257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583477, 38.043633, 42.630005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.507839, 38.367329, 42.407520>,  <40.462456, 38.561546, 42.274029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.507839, 38.367329, 42.407520>,  <40.583477, 38.043633, 42.630005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507839, 38.367329, 42.407520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310595, 0.488055, 0.815679,
		0.931544, 0.326995, 0.159060,
		-0.189093, 0.809244, -0.556208,
		40.451111, 38.610104, 42.240658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652374, 38.578403, 43.207542>,  <40.583477, 38.043633, 42.630005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652374, 38.578403, 43.207542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.501545, 38.777115, 42.894871>,  <40.411045, 38.896343, 42.707268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.501545, 38.777115, 42.894871>,  <40.652374, 38.578403, 43.207542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501545, 38.777115, 42.894871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446822, 0.641693, 0.623362,
		0.811272, 0.584326, -0.019995,
		-0.377077, 0.496782, -0.781678,
		40.388420, 38.926151, 42.660366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973595, 39.240662, 43.303642>,  <40.652374, 38.578403, 43.207542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973595, 39.240662, 43.303642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.639462, 39.232838, 43.083885>,  <40.438980, 39.228142, 42.952030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.639462, 39.232838, 43.083885>,  <40.973595, 39.240662, 43.303642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639462, 39.232838, 43.083885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423326, 0.660474, 0.620136,
		0.350731, 0.750594, -0.559997,
		-0.835334, -0.019560, -0.549395,
		40.388863, 39.226971, 42.919067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738026, 39.944710, 43.381317>,  <40.973595, 39.240662, 43.303642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738026, 39.944710, 43.381317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.415337, 39.771446, 43.220535>,  <40.221722, 39.667488, 43.124065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.415337, 39.771446, 43.220535>,  <40.738026, 39.944710, 43.381317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415337, 39.771446, 43.220535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590311, 0.559694, 0.581614,
		-0.026962, 0.706481, -0.707219,
		-0.806725, -0.433160, -0.401953,
		40.173321, 39.641499, 43.099949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348629, 40.492722, 43.188938>,  <40.738026, 39.944710, 43.381317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348629, 40.492722, 43.188938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.120449, 40.172112, 43.260651>,  <39.983540, 39.979744, 43.303677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.120449, 40.172112, 43.260651>,  <40.348629, 40.492722, 43.188938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120449, 40.172112, 43.260651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621142, 0.563818, 0.544327,
		-0.537373, 0.199155, -0.819492,
		-0.570450, -0.801528, 0.179277,
		39.949314, 39.931652, 43.314434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.169987, 40.810760, 43.100872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.252628, 40.460808, 43.276100>,  <39.302212, 40.250835, 43.381237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.252628, 40.460808, 43.276100>,  <39.169987, 40.810760, 43.100872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252628, 40.460808, 43.276100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652992, 0.210133, 0.727630,
		-0.728640, -0.436385, -0.527875,
		0.206603, -0.874879, 0.438067,
		39.314610, 40.198345, 43.407520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542480, 40.624508, 43.430073>,  <39.169987, 40.810760, 43.100872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542480, 40.624508, 43.430073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.822403, 40.412899, 43.622078>,  <38.990356, 40.285934, 43.737282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.822403, 40.412899, 43.622078>,  <38.542480, 40.624508, 43.430073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822403, 40.412899, 43.622078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502483, 0.113063, 0.857163,
		-0.507727, -0.841045, -0.186700,
		0.699803, -0.529018, 0.480015,
		39.032345, 40.254192, 43.766083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169930, 40.129997, 43.736687>,  <38.542480, 40.624508, 43.430073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169930, 40.129997, 43.736687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.517933, 40.166779, 43.930443>,  <38.726734, 40.188847, 44.046696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.517933, 40.166779, 43.930443>,  <38.169930, 40.129997, 43.736687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517933, 40.166779, 43.930443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490787, 0.067614, 0.868652,
		0.047126, -0.993465, 0.103955,
		0.870004, 0.091956, 0.484394,
		38.778934, 40.194366, 44.075760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111790, 39.712490, 44.415760>,  <38.169930, 40.129997, 43.736687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111790, 39.712490, 44.415760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.397633, 39.984573, 44.481056>,  <38.569138, 40.147823, 44.520233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.397633, 39.984573, 44.481056>,  <38.111790, 39.712490, 44.415760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397633, 39.984573, 44.481056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479371, 0.306230, 0.822452,
		0.509452, -0.665984, 0.544908,
		0.714606, 0.680213, 0.163244,
		38.612015, 40.188637, 44.530029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188740, 39.790379, 45.148518>,  <38.111790, 39.712490, 44.415760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188740, 39.790379, 45.148518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.363419, 40.112995, 44.989120>,  <38.468224, 40.306564, 44.893482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.363419, 40.112995, 44.989120>,  <38.188740, 39.790379, 45.148518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363419, 40.112995, 44.989120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408440, 0.572429, 0.710987,
		0.801546, -0.147724, 0.579398,
		0.436693, 0.806538, -0.398492,
		38.494427, 40.354958, 44.869572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477325, 40.243996, 45.674103>,  <38.188740, 39.790379, 45.148518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477325, 40.243996, 45.674103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.483345, 40.511436, 45.376717>,  <38.486958, 40.671902, 45.198284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.483345, 40.511436, 45.376717>,  <38.477325, 40.243996, 45.674103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483345, 40.511436, 45.376717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297741, 0.712814, 0.635017,
		0.954528, 0.211806, 0.209795,
		0.015044, 0.668606, -0.743464,
		38.487858, 40.712017, 45.153679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799198, 40.816601, 46.020519>,  <38.477325, 40.243996, 45.674103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799198, 40.816601, 46.020519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.609550, 40.945400, 45.692730>,  <38.495762, 41.022678, 45.496056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.609550, 40.945400, 45.692730>,  <38.799198, 40.816601, 46.020519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609550, 40.945400, 45.692730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263096, 0.836392, 0.480863,
		0.840234, 0.443585, -0.311832,
		-0.474118, 0.321996, -0.819470,
		38.467316, 41.042000, 45.446888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987427, 41.522186, 45.903557>,  <38.799198, 40.816601, 46.020519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987427, 41.522186, 45.903557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.630516, 41.461761, 45.733368>,  <38.416370, 41.425507, 45.631252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.630516, 41.461761, 45.733368>,  <38.987427, 41.522186, 45.903557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630516, 41.461761, 45.733368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376865, 0.768155, 0.517600,
		0.248641, 0.622187, -0.742334,
		-0.892272, -0.151063, -0.425476,
		38.362835, 41.416443, 45.605724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747776, 42.160919, 45.653091>,  <38.987427, 41.522186, 45.903557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747776, 42.160919, 45.653091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.411495, 41.944412, 45.659359>,  <38.209728, 41.814507, 45.663120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.411495, 41.944412, 45.659359>,  <38.747776, 42.160919, 45.653091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411495, 41.944412, 45.659359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488875, 0.771127, 0.407879,
		-0.232852, 0.335247, -0.912902,
		-0.840703, -0.541270, 0.015664,
		38.159283, 41.782032, 45.664059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394135, 42.616219, 45.478165>,  <38.747776, 42.160919, 45.653091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394135, 42.616219, 45.478165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.174870, 42.347763, 45.677803>,  <38.043312, 42.186691, 45.797585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.174870, 42.347763, 45.677803>,  <38.394135, 42.616219, 45.478165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174870, 42.347763, 45.677803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237918, 0.697207, 0.676238,
		-0.801819, 0.251946, -0.541859,
		-0.548163, -0.671138, 0.499091,
		38.010422, 42.146423, 45.827530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771690, 43.008011, 45.586834>,  <38.394135, 42.616219, 45.478165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771690, 43.008011, 45.586834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.804119, 42.702896, 45.843452>,  <37.823578, 42.519825, 45.997421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.804119, 42.702896, 45.843452>,  <37.771690, 43.008011, 45.586834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804119, 42.702896, 45.843452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281025, 0.600054, 0.748973,
		-0.956270, -0.241011, -0.165715,
		0.081073, -0.762790, 0.641543,
		37.828442, 42.474060, 46.035915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280357, 43.182880, 46.068287>,  <37.771690, 43.008011, 45.586834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280357, 43.182880, 46.068287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.520954, 42.929447, 46.262924>,  <37.665314, 42.777386, 46.379707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.520954, 42.929447, 46.262924>,  <37.280357, 43.182880, 46.068287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520954, 42.929447, 46.262924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053309, 0.575911, 0.815772,
		-0.797097, -0.516622, 0.312631,
		0.601494, -0.633583, 0.486598,
		37.701401, 42.739372, 46.408905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001717, 43.167206, 46.655796>,  <37.280357, 43.182880, 46.068287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001717, 43.167206, 46.655796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349964, 43.001171, 46.761417>,  <37.558914, 42.901550, 46.824791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349964, 43.001171, 46.761417>,  <37.001717, 43.167206, 46.655796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349964, 43.001171, 46.761417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120267, 0.340868, 0.932387,
		-0.477026, -0.843513, 0.246846,
		0.870622, -0.415085, 0.264050,
		37.611149, 42.876644, 46.840633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930004, 42.864311, 47.261497>,  <37.001717, 43.167206, 46.655796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930004, 42.864311, 47.261497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.324528, 42.928513, 47.246346>,  <37.561241, 42.967033, 47.237255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.324528, 42.928513, 47.246346>,  <36.930004, 42.864311, 47.261497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324528, 42.928513, 47.246346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019469, 0.341381, 0.939723,
		0.163762, -0.926119, 0.339832,
		0.986308, 0.160507, -0.037875,
		37.620419, 42.976665, 47.234982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092419, 42.611980, 47.809975>,  <36.930004, 42.864311, 47.261497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092419, 42.611980, 47.809975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.404839, 42.837944, 47.703518>,  <37.592293, 42.973522, 47.639645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.404839, 42.837944, 47.703518>,  <37.092419, 42.611980, 47.809975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404839, 42.837944, 47.703518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012230, 0.439951, 0.897939,
		0.624344, -0.698083, 0.350534,
		0.781053, 0.564909, -0.266143,
		37.639156, 43.007416, 47.623676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539894, 42.662350, 48.421440>,  <37.092419, 42.611980, 47.809975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539894, 42.662350, 48.421440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.680344, 42.978230, 48.220207>,  <37.764614, 43.167755, 48.099468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.680344, 42.978230, 48.220207>,  <37.539894, 42.662350, 48.421440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680344, 42.978230, 48.220207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119397, 0.495140, 0.860570,
		0.928684, -0.362235, 0.079569,
		0.351126, 0.789697, -0.503079,
		37.785683, 43.215137, 48.069283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172665, 42.963383, 48.803200>,  <37.539894, 42.662350, 48.421440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172665, 42.963383, 48.803200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.022236, 43.242794, 48.559681>,  <37.931980, 43.410439, 48.413570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.022236, 43.242794, 48.559681>,  <38.172665, 42.963383, 48.803200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022236, 43.242794, 48.559681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001268, 0.656643, 0.754201,
		0.926591, 0.284404, -0.246057,
		-0.376069, 0.698524, -0.608799,
		37.909416, 43.452351, 48.377041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502151, 43.600857, 48.992207>,  <38.172665, 42.963383, 48.803200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502151, 43.600857, 48.992207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.187340, 43.723885, 48.778294>,  <37.998455, 43.797699, 48.649944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.187340, 43.723885, 48.778294>,  <38.502151, 43.600857, 48.992207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187340, 43.723885, 48.778294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163053, 0.732331, 0.661139,
		0.594981, 0.607532, -0.526215,
		-0.787027, 0.307565, -0.534783,
		37.951233, 43.816154, 48.617859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520237, 44.221794, 49.154278>,  <38.502151, 43.600857, 48.992207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520237, 44.221794, 49.154278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.151131, 44.159756, 49.013165>,  <37.929668, 44.122532, 48.928497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.151131, 44.159756, 49.013165>,  <38.520237, 44.221794, 49.154278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151131, 44.159756, 49.013165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376472, 0.558358, 0.739260,
		0.082323, 0.814974, -0.573621,
		-0.922763, -0.155094, -0.352781,
		37.874302, 44.113228, 48.907330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287979, 44.862240, 49.287174>,  <38.520237, 44.221794, 49.154278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287979, 44.862240, 49.287174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.011917, 44.573620, 49.265095>,  <37.846279, 44.400448, 49.251846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.011917, 44.573620, 49.265095>,  <38.287979, 44.862240, 49.287174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011917, 44.573620, 49.265095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430632, 0.348194, 0.832657,
		-0.581583, 0.598437, -0.551031,
		-0.690158, -0.721550, -0.055202,
		37.804871, 44.357155, 49.248535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689590, 45.248745, 49.460709>,  <38.287979, 44.862240, 49.287174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689590, 45.248745, 49.460709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.616867, 44.858353, 49.508724>,  <37.573231, 44.624119, 49.537533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.616867, 44.858353, 49.508724>,  <37.689590, 45.248745, 49.460709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616867, 44.858353, 49.508724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452246, 0.191392, 0.871116,
		-0.873165, 0.104092, -0.476179,
		-0.181813, -0.975978, 0.120042,
		37.562325, 44.565559, 49.544735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039417, 45.262257, 49.750309>,  <37.689590, 45.248745, 49.460709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039417, 45.262257, 49.750309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.150249, 44.890491, 49.847816>,  <37.216747, 44.667435, 49.906322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.150249, 44.890491, 49.847816>,  <37.039417, 45.262257, 49.750309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150249, 44.890491, 49.847816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301969, 0.156620, 0.940364,
		-0.912164, -0.334165, -0.237258,
		0.277077, -0.929410, 0.243771,
		37.233372, 44.611668, 49.920948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510147, 44.881165, 50.202305>,  <37.039417, 45.262257, 49.750309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510147, 44.881165, 50.202305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.858910, 44.708843, 50.295422>,  <37.068169, 44.605450, 50.351292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.858910, 44.708843, 50.295422>,  <36.510147, 44.881165, 50.202305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858910, 44.708843, 50.295422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207480, 0.105597, 0.972523,
		-0.443547, -0.896247, 0.002688,
		0.871905, -0.430802, 0.232790,
		37.120480, 44.579601, 50.365257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443417, 44.404453, 50.679779>,  <36.510147, 44.881165, 50.202305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443417, 44.404453, 50.679779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.801853, 44.577183, 50.720863>,  <37.016914, 44.680820, 50.745514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.801853, 44.577183, 50.720863>,  <36.443417, 44.404453, 50.679779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801853, 44.577183, 50.720863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131717, 0.037708, 0.990570,
		0.423880, -0.901169, 0.090668,
		0.896090, 0.431825, 0.102715,
		37.070679, 44.706730, 50.751678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869240, 44.295261, 50.056767>,  <36.443417, 44.404453, 50.679779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869240, 44.295261, 50.056767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.529289, 44.478760, 49.953022>,  <35.325321, 44.588860, 49.890774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.529289, 44.478760, 49.953022>,  <35.869240, 44.295261, 50.056767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529289, 44.478760, 49.953022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192301, -0.728188, -0.657847,
		-0.490646, -0.509213, 0.707085,
		-0.849875, 0.458743, -0.259360,
		35.274326, 44.616383, 49.875214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319939, 43.787537, 50.072029>,  <35.869240, 44.295261, 50.056767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319939, 43.787537, 50.072029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.205956, 44.070530, 49.813335>,  <35.137566, 44.240326, 49.658119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.205956, 44.070530, 49.813335>,  <35.319939, 43.787537, 50.072029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205956, 44.070530, 49.813335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176033, -0.701858, -0.690223,
		-0.942237, -0.082840, 0.324543,
		-0.284961, 0.707484, -0.646734,
		35.120468, 44.282776, 49.619316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751320, 43.494286, 49.811562>,  <35.319939, 43.787537, 50.072029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751320, 43.494286, 49.811562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.831879, 43.794083, 49.559307>,  <34.880215, 43.973961, 49.407955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.831879, 43.794083, 49.559307>,  <34.751320, 43.494286, 49.811562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831879, 43.794083, 49.559307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247459, -0.584013, -0.773106,
		-0.947737, 0.311755, 0.067853,
		0.201393, 0.749492, -0.630637,
		34.892296, 44.018929, 49.370117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239433, 43.509518, 49.368439>,  <34.751320, 43.494286, 49.811562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239433, 43.509518, 49.368439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.515411, 43.709335, 49.158894>,  <34.681000, 43.829224, 49.033169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.515411, 43.709335, 49.158894>,  <34.239433, 43.509518, 49.368439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515411, 43.709335, 49.158894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280305, -0.482862, -0.829623,
		-0.667383, 0.719237, -0.193126,
		0.689949, 0.499542, -0.523859,
		34.722397, 43.859200, 49.001736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896038, 43.725571, 48.732079>,  <34.239433, 43.509518, 49.368439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896038, 43.725571, 48.732079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.289478, 43.723309, 48.659962>,  <34.525543, 43.721951, 48.616692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.289478, 43.723309, 48.659962>,  <33.896038, 43.725571, 48.732079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289478, 43.723309, 48.659962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156370, -0.524994, -0.836618,
		-0.089918, 0.851087, -0.517267,
		0.983597, -0.005658, -0.180291,
		34.584557, 43.721611, 48.605873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895569, 43.875957, 48.080650>,  <33.896038, 43.725571, 48.732079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895569, 43.875957, 48.080650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.266922, 43.738277, 48.136692>,  <34.489735, 43.655670, 48.170315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.266922, 43.738277, 48.136692>,  <33.895569, 43.875957, 48.080650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266922, 43.738277, 48.136692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082535, -0.558555, -0.825351,
		0.362344, 0.754678, -0.546962,
		0.928383, -0.344204, 0.140102,
		34.545437, 43.635017, 48.178722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160538, 43.864975, 47.467831>,  <33.895569, 43.875957, 48.080650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160538, 43.864975, 47.467831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.441669, 43.636124, 47.636921>,  <34.610348, 43.498814, 47.738377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.441669, 43.636124, 47.636921>,  <34.160538, 43.864975, 47.467831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441669, 43.636124, 47.636921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117345, -0.492869, -0.862154,
		0.701615, 0.655551, -0.279265,
		0.702827, -0.572130, 0.422730,
		34.652519, 43.464485, 47.763741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743473, 43.788612, 46.952168>,  <34.160538, 43.864975, 47.467831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743473, 43.788612, 46.952168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.803219, 43.496944, 47.219303>,  <34.839066, 43.321945, 47.379585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.803219, 43.496944, 47.219303>,  <34.743473, 43.788612, 46.952168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803219, 43.496944, 47.219303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376872, -0.582449, -0.720223,
		0.914144, 0.359263, 0.187807,
		0.149361, -0.729166, 0.667838,
		34.848026, 43.278194, 47.419655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434917, 43.646645, 46.885555>,  <34.743473, 43.788612, 46.952168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434917, 43.646645, 46.885555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.208839, 43.347839, 47.025574>,  <35.073193, 43.168556, 47.109585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.208839, 43.347839, 47.025574>,  <35.434917, 43.646645, 46.885555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208839, 43.347839, 47.025574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408410, -0.622045, -0.668029,
		0.716770, -0.234601, 0.656661,
		-0.565193, -0.747009, 0.350049,
		35.039280, 43.123737, 47.130589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926849, 43.073658, 47.050766>,  <35.434917, 43.646645, 46.885555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926849, 43.073658, 47.050766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556587, 42.928223, 47.008888>,  <35.334431, 42.840961, 46.983761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556587, 42.928223, 47.008888>,  <35.926849, 43.073658, 47.050766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556587, 42.928223, 47.008888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328825, -0.636171, -0.697969,
		0.187171, -0.680506, 0.708434,
		-0.925657, -0.363591, -0.104695,
		35.278889, 42.819145, 46.977478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997269, 42.329830, 47.098217>,  <35.926849, 43.073658, 47.050766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997269, 42.329830, 47.098217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667278, 42.431274, 46.896187>,  <35.469284, 42.492142, 46.774971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667278, 42.431274, 46.896187>,  <35.997269, 42.329830, 47.098217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667278, 42.431274, 46.896187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272950, -0.603747, -0.748991,
		-0.494890, -0.755758, 0.428852,
		-0.824974, 0.253613, -0.505073,
		35.419785, 42.507359, 46.744663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763500, 41.726665, 46.868435>,  <35.997269, 42.329830, 47.098217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763500, 41.726665, 46.868435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.587856, 42.006481, 46.642933>,  <35.482471, 42.174370, 46.507629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.587856, 42.006481, 46.642933>,  <35.763500, 41.726665, 46.868435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587856, 42.006481, 46.642933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199616, -0.535842, -0.820382,
		-0.875977, -0.472773, 0.095654,
		-0.439110, 0.699542, -0.563758,
		35.456123, 42.216343, 46.473804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583824, 41.358822, 46.316399>,  <35.763500, 41.726665, 46.868435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583824, 41.358822, 46.316399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.479485, 41.718864, 46.176815>,  <35.416882, 41.934891, 46.093063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.479485, 41.718864, 46.176815>,  <35.583824, 41.358822, 46.316399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479485, 41.718864, 46.176815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010320, -0.358852, -0.933337,
		-0.965323, -0.247065, 0.084318,
		-0.260853, 0.900102, -0.348958,
		35.401230, 41.988895, 46.072128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982594, 41.265663, 45.896641>,  <35.583824, 41.358822, 46.316399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982594, 41.265663, 45.896641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.165028, 41.598034, 45.769176>,  <35.274487, 41.797459, 45.692699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.165028, 41.598034, 45.769176>,  <34.982594, 41.265663, 45.896641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165028, 41.598034, 45.769176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153554, -0.426175, -0.891513,
		-0.876590, 0.357673, -0.321964,
		0.456084, 0.830930, -0.318659,
		35.301853, 41.847313, 45.673580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774872, 41.320423, 45.243786>,  <34.982594, 41.265663, 45.896641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774872, 41.320423, 45.243786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.117718, 41.525421, 45.223000>,  <35.323425, 41.648418, 45.210529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.117718, 41.525421, 45.223000>,  <34.774872, 41.320423, 45.243786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117718, 41.525421, 45.223000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225080, -0.463343, -0.857118,
		-0.463343, 0.722956, -0.512492,
		0.857118, 0.512492, -0.051964,
		35.374855, 41.679169, 45.207409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802486, 41.555256, 44.578945>,  <34.774872, 41.320423, 45.243786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802486, 41.555256, 44.578945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.175716, 41.612801, 44.710808>,  <35.399654, 41.647327, 44.789925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.175716, 41.612801, 44.710808>,  <34.802486, 41.555256, 44.578945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175716, 41.612801, 44.710808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351868, -0.175098, -0.919527,
		-0.074560, 0.973984, -0.213999,
		0.933076, 0.143859, 0.329658,
		35.455639, 41.655960, 44.809704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154957, 42.016888, 44.139538>,  <34.802486, 41.555256, 44.578945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154957, 42.016888, 44.139538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.447227, 41.806957, 44.314198>,  <35.622589, 41.681000, 44.418995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.447227, 41.806957, 44.314198>,  <35.154957, 42.016888, 44.139538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447227, 41.806957, 44.314198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489596, -0.042940, -0.870891,
		0.475815, 0.850126, 0.225577,
		0.730681, -0.524825, 0.436650,
		35.666431, 41.649509, 44.445194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784618, 42.072941, 43.786465>,  <35.154957, 42.016888, 44.139538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784618, 42.072941, 43.786465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.904522, 41.754467, 43.996693>,  <35.976463, 41.563381, 44.122829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.904522, 41.754467, 43.996693>,  <35.784618, 42.072941, 43.786465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904522, 41.754467, 43.996693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607514, -0.265457, -0.748638,
		0.735574, 0.543706, 0.404122,
		0.299762, -0.796189, 0.525572,
		35.994450, 41.515610, 44.154366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485001, 42.044361, 43.715305>,  <35.784618, 42.072941, 43.786465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485001, 42.044361, 43.715305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.339890, 41.686241, 43.818710>,  <36.252823, 41.471371, 43.880753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.339890, 41.686241, 43.818710>,  <36.485001, 42.044361, 43.715305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339890, 41.686241, 43.818710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550179, -0.429683, -0.716014,
		0.752127, -0.117525, 0.648455,
		-0.362779, -0.895299, 0.258517,
		36.231056, 41.417652, 43.896267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009563, 41.554649, 43.775013>,  <36.485001, 42.044361, 43.715305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009563, 41.554649, 43.775013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.685364, 41.328362, 43.714279>,  <36.490845, 41.192589, 43.677841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.685364, 41.328362, 43.714279>,  <37.009563, 41.554649, 43.775013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685364, 41.328362, 43.714279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519914, -0.575443, -0.631311,
		0.269774, -0.590618, 0.760521,
		-0.810501, -0.565717, -0.151831,
		36.442215, 41.158646, 43.668732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.731770, 29.180859, 29.456240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.349705, 29.062431, 29.455259>,  <45.120464, 28.991375, 29.454672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.349705, 29.062431, 29.455259>,  <45.731770, 29.180859, 29.456240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.349705, 29.062431, 29.455259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261634, 0.840137, 0.475098,
		-0.138604, 0.454436, -0.879930,
		-0.955163, -0.296070, -0.002449,
		45.063156, 28.973610, 29.454525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.304512, 29.719038, 29.290657>,  <45.731770, 29.180859, 29.456240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.304512, 29.719038, 29.290657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.096951, 29.475739, 29.530916>,  <44.972412, 29.329760, 29.675072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.096951, 29.475739, 29.530916>,  <45.304512, 29.719038, 29.290657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.096951, 29.475739, 29.530916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361007, 0.792840, 0.490997,
		-0.774864, 0.037942, -0.630989,
		-0.518903, -0.608248, 0.600646,
		44.941280, 29.293264, 29.711109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.556553, 30.016991, 29.298141>,  <45.304512, 29.719038, 29.290657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.556553, 30.016991, 29.298141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.582783, 29.769531, 29.611313>,  <44.598518, 29.621056, 29.799215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.582783, 29.769531, 29.611313>,  <44.556553, 30.016991, 29.298141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.582783, 29.769531, 29.611313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508857, 0.654197, 0.559545,
		-0.858350, -0.435089, -0.271906,
		0.065571, -0.618647, 0.782928,
		44.602455, 29.583937, 29.846191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934868, 29.910046, 29.496645>,  <44.556553, 30.016991, 29.298141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934868, 29.910046, 29.496645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.168484, 29.844856, 29.814722>,  <44.308655, 29.805742, 30.005568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.168484, 29.844856, 29.814722>,  <43.934868, 29.910046, 29.496645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.168484, 29.844856, 29.814722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593381, 0.582747, 0.555253,
		-0.553888, -0.796144, 0.243644,
		0.584044, -0.162974, 0.795193,
		44.343697, 29.795963, 30.053280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485851, 29.827394, 30.122868>,  <43.934868, 29.910046, 29.496645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485851, 29.827394, 30.122868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.849140, 29.866940, 30.285526>,  <44.067112, 29.890667, 30.383121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.849140, 29.866940, 30.285526>,  <43.485851, 29.827394, 30.122868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849140, 29.866940, 30.285526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403180, 0.467150, 0.786903,
		-0.112170, -0.878634, 0.464135,
		0.908220, 0.098863, 0.406648,
		44.121605, 29.896599, 30.407520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414886, 29.658054, 30.794342>,  <43.485851, 29.827394, 30.122868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414886, 29.658054, 30.794342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.761074, 29.856491, 30.822222>,  <43.968788, 29.975554, 30.838949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.761074, 29.856491, 30.822222>,  <43.414886, 29.658054, 30.794342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.761074, 29.856491, 30.822222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380440, 0.560337, 0.735722,
		0.325931, -0.663261, 0.673687,
		0.865468, 0.496092, 0.069700,
		44.020714, 30.005320, 30.843132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586143, 29.595560, 31.384768>,  <43.414886, 29.658054, 30.794342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586143, 29.595560, 31.384768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.776436, 29.932373, 31.283058>,  <43.890614, 30.134460, 31.222033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.776436, 29.932373, 31.283058>,  <43.586143, 29.595560, 31.384768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.776436, 29.932373, 31.283058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380744, 0.457734, 0.803438,
		0.792912, -0.285410, 0.538360,
		0.475735, 0.842033, -0.254274,
		43.919155, 30.184982, 31.206776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.007206, 29.924046, 31.989101>,  <43.586143, 29.595560, 31.384768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.007206, 29.924046, 31.989101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.950558, 30.238699, 31.748720>,  <43.916569, 30.427492, 31.604490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.950558, 30.238699, 31.748720>,  <44.007206, 29.924046, 31.989101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950558, 30.238699, 31.748720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220334, 0.566796, 0.793848,
		0.965088, 0.244838, 0.093051,
		-0.141623, 0.786636, -0.600955,
		43.908070, 30.474689, 31.568434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.428551, 30.486250, 32.296349>,  <44.007206, 29.924046, 31.989101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.428551, 30.486250, 32.296349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.146988, 30.641989, 32.058720>,  <43.978050, 30.735432, 31.916143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.146988, 30.641989, 32.058720>,  <44.428551, 30.486250, 32.296349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.146988, 30.641989, 32.058720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372086, 0.510308, 0.775331,
		0.605031, 0.766809, -0.214341,
		-0.703910, 0.389346, -0.594071,
		43.935814, 30.758793, 31.880499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509628, 31.178944, 32.421745>,  <44.428551, 30.486250, 32.296349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509628, 31.178944, 32.421745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.145920, 31.165003, 32.255848>,  <43.927696, 31.156637, 32.156307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.145920, 31.165003, 32.255848>,  <44.509628, 31.178944, 32.421745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.145920, 31.165003, 32.255848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336893, 0.646778, 0.684238,
		0.244400, 0.761882, -0.599837,
		-0.909270, -0.034853, -0.414746,
		43.873138, 31.154547, 32.131424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.299545, 31.888573, 32.287251>,  <44.509628, 31.178944, 32.421745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.299545, 31.888573, 32.287251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.961037, 31.675814, 32.299282>,  <43.757931, 31.548159, 32.306503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.961037, 31.675814, 32.299282>,  <44.299545, 31.888573, 32.287251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.961037, 31.675814, 32.299282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313716, 0.543179, 0.778806,
		-0.430587, 0.649645, -0.626543,
		-0.846273, -0.531900, 0.030082,
		43.707153, 31.516243, 32.308308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892197, 32.338650, 32.411331>,  <44.299545, 31.888573, 32.287251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892197, 32.338650, 32.411331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.662243, 32.023285, 32.498890>,  <43.524269, 31.834066, 32.551426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.662243, 32.023285, 32.498890>,  <43.892197, 32.338650, 32.411331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662243, 32.023285, 32.498890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362537, 0.485263, 0.795668,
		-0.733534, 0.378061, -0.564799,
		-0.574887, -0.788410, 0.218896,
		43.489777, 31.786762, 32.564560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.276279, 32.667347, 32.560825>,  <43.892197, 32.338650, 32.411331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.276279, 32.667347, 32.560825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.279667, 32.309013, 32.738552>,  <43.281700, 32.094013, 32.845188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.279667, 32.309013, 32.738552>,  <43.276279, 32.667347, 32.560825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.279667, 32.309013, 32.738552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321884, 0.418241, 0.849391,
		-0.946741, -0.150212, -0.284811,
		0.008469, -0.895830, 0.444317,
		43.282207, 32.040264, 32.871845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596157, 32.626713, 32.846569>,  <43.276279, 32.667347, 32.560825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596157, 32.626713, 32.846569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.817448, 32.353664, 33.037552>,  <42.950222, 32.189835, 33.152142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.817448, 32.353664, 33.037552>,  <42.596157, 32.626713, 32.846569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817448, 32.353664, 33.037552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204983, 0.443982, 0.872274,
		-0.807417, -0.580436, 0.105697,
		0.553227, -0.682623, 0.477458,
		42.983418, 32.148876, 33.180790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.322044, 32.604080, 33.465332>,  <42.596157, 32.626713, 32.846569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.322044, 32.604080, 33.465332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.684647, 32.445267, 33.522751>,  <42.902210, 32.349979, 33.557201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.684647, 32.445267, 33.522751>,  <42.322044, 32.604080, 33.465332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684647, 32.445267, 33.522751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014999, 0.370075, 0.928881,
		-0.421920, -0.839886, 0.341431,
		0.906509, -0.397035, 0.143545,
		42.956600, 32.326157, 33.565815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294731, 32.206490, 34.170410>,  <42.322044, 32.604080, 33.465332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294731, 32.206490, 34.170410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.670948, 32.288704, 34.062237>,  <42.896679, 32.338032, 33.997334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.670948, 32.288704, 34.062237>,  <42.294731, 32.206490, 34.170410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670948, 32.288704, 34.062237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169268, 0.406659, 0.897762,
		0.294498, -0.890159, 0.347689,
		0.940542, 0.205536, -0.270436,
		42.953110, 32.350365, 33.981106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703762, 32.055481, 34.738052>,  <42.294731, 32.206490, 34.170410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703762, 32.055481, 34.738052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.937798, 32.313004, 34.540798>,  <43.078220, 32.467518, 34.422447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.937798, 32.313004, 34.540798>,  <42.703762, 32.055481, 34.738052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937798, 32.313004, 34.540798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312971, 0.381714, 0.869680,
		0.748141, -0.663180, 0.021845,
		0.585093, 0.643807, -0.493132,
		43.113327, 32.506145, 34.392860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.395283, 31.981188, 34.997269>,  <42.703762, 32.055481, 34.738052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.395283, 31.981188, 34.997269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.402924, 32.337692, 34.816032>,  <43.407509, 32.551594, 34.707291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.402924, 32.337692, 34.816032>,  <43.395283, 31.981188, 34.997269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402924, 32.337692, 34.816032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510663, 0.380903, 0.770802,
		0.859569, -0.246102, -0.447857,
		0.019106, 0.891261, -0.453088,
		43.408657, 32.605072, 34.680107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108791, 32.172531, 35.155098>,  <43.395283, 31.981188, 34.997269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108791, 32.172531, 35.155098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.923714, 32.517765, 35.074100>,  <43.812668, 32.724903, 35.025501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.923714, 32.517765, 35.074100>,  <44.108791, 32.172531, 35.155098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.923714, 32.517765, 35.074100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484344, 0.437417, 0.757679,
		0.742513, 0.252499, -0.620419,
		-0.462695, 0.863082, -0.202492,
		43.784904, 32.776691, 35.013351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687878, 32.640778, 35.140388>,  <44.108791, 32.172531, 35.155098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687878, 32.640778, 35.140388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.358852, 32.865818, 35.173542>,  <44.161438, 33.000843, 35.193436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.358852, 32.865818, 35.173542>,  <44.687878, 32.640778, 35.140388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.358852, 32.865818, 35.173542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450885, 0.556409, 0.697934,
		0.346536, 0.611469, -0.711350,
		-0.822566, 0.562596, 0.082887,
		44.112083, 33.034595, 35.198406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.926254, 33.467751, 35.155193>,  <44.687878, 32.640778, 35.140388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.926254, 33.467751, 35.155193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.563992, 33.431404, 35.320858>,  <44.346634, 33.409595, 35.420258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.563992, 33.431404, 35.320858>,  <44.926254, 33.467751, 35.155193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.563992, 33.431404, 35.320858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305712, 0.536914, 0.786297,
		-0.293820, 0.838729, -0.458480,
		-0.905654, -0.090867, 0.414166,
		44.292294, 33.404144, 35.445107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.464993, 33.195545, 35.413540>,  <44.926254, 33.467751, 35.155193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.464993, 33.195545, 35.413540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.840565, 33.155651, 35.545277>,  <46.065907, 33.131714, 35.624317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.840565, 33.155651, 35.545277>,  <45.464993, 33.195545, 35.413540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.840565, 33.155651, 35.545277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003939, -0.953900, -0.300099,
		0.344089, 0.283069, -0.895251,
		0.938929, -0.099735, 0.329341,
		46.122242, 33.125732, 35.644077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.852776, 32.791897, 34.891319>,  <45.464993, 33.195545, 35.413540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.852776, 32.791897, 34.891319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.065273, 32.751858, 35.227833>,  <46.192772, 32.727837, 35.429741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.065273, 32.751858, 35.227833>,  <45.852776, 32.791897, 34.891319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.065273, 32.751858, 35.227833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070524, -0.984326, -0.161647,
		0.844279, 0.145204, -0.515857,
		0.531243, -0.100095, 0.841286,
		46.224648, 32.721828, 35.480217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.581234, 32.522724, 34.757675>,  <45.852776, 32.791897, 34.891319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.581234, 32.522724, 34.757675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.487637, 32.423016, 35.133572>,  <46.431477, 32.363190, 35.359108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.487637, 32.423016, 35.133572>,  <46.581234, 32.522724, 34.757675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.487637, 32.423016, 35.133572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184691, -0.960369, -0.208758,
		0.954534, 0.124713, 0.270761,
		-0.233995, -0.249274, 0.939738,
		46.417439, 32.348232, 35.415493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.196590, 32.179794, 34.963150>,  <46.581234, 32.522724, 34.757675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.196590, 32.179794, 34.963150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.900806, 32.065205, 35.206837>,  <46.723335, 31.996450, 35.353046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.900806, 32.065205, 35.206837>,  <47.196590, 32.179794, 34.963150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.900806, 32.065205, 35.206837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309957, -0.948196, -0.069652,
		0.597606, 0.137325, 0.789943,
		-0.739455, -0.286473, 0.609212,
		46.678970, 31.979263, 35.389599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.495949, 31.678480, 35.359032>,  <47.196590, 32.179794, 34.963150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.495949, 31.678480, 35.359032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.107731, 31.607838, 35.424580>,  <46.874802, 31.565453, 35.463909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.107731, 31.607838, 35.424580>,  <47.495949, 31.678480, 35.359032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.107731, 31.607838, 35.424580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169621, -0.983929, -0.055796,
		0.171087, -0.026357, 0.984903,
		-0.970545, -0.176607, 0.163867,
		46.816566, 31.554855, 35.473740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.591885, 31.067192, 35.720528>,  <47.495949, 31.678480, 35.359032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.591885, 31.067192, 35.720528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.223011, 31.077471, 35.566166>,  <47.001686, 31.083637, 35.473549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.223011, 31.077471, 35.566166>,  <47.591885, 31.067192, 35.720528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.223011, 31.077471, 35.566166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080621, -0.963099, -0.256788,
		-0.378259, -0.267917, 0.886082,
		-0.922183, 0.025695, -0.385901,
		46.946358, 31.085178, 35.450397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.306881, 30.488279, 36.036163>,  <47.591885, 31.067192, 35.720528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.306881, 30.488279, 36.036163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.110077, 30.590889, 35.703388>,  <46.991993, 30.652454, 35.503723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.110077, 30.590889, 35.703388>,  <47.306881, 30.488279, 36.036163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.110077, 30.590889, 35.703388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013610, -0.953219, -0.301973,
		-0.870482, -0.159897, 0.465505,
		-0.492013, 0.256527, -0.831936,
		46.962475, 30.667847, 35.453808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.915760, 29.965023, 36.012638>,  <47.306881, 30.488279, 36.036163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.915760, 29.965023, 36.012638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.887417, 30.114973, 35.642895>,  <46.870411, 30.204943, 35.421047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.887417, 30.114973, 35.642895>,  <46.915760, 29.965023, 36.012638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.887417, 30.114973, 35.642895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022737, -0.927058, -0.374227,
		-0.997227, -0.005500, 0.074214,
		-0.070859, 0.374877, -0.924362,
		46.866158, 30.227436, 35.365585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.395069, 29.607445, 35.691040>,  <46.915760, 29.965023, 36.012638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.395069, 29.607445, 35.691040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.634701, 29.752665, 35.405579>,  <46.778481, 29.839796, 35.234303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.634701, 29.752665, 35.405579>,  <46.395069, 29.607445, 35.691040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.634701, 29.752665, 35.405579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144296, -0.827752, -0.542223,
		-0.787580, 0.427812, -0.443503,
		0.599079, 0.363048, -0.713653,
		46.814426, 29.861580, 35.191483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.082607, 29.303471, 35.171917>,  <46.395069, 29.607445, 35.691040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.082607, 29.303471, 35.171917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.429520, 29.430599, 35.018654>,  <46.637669, 29.506876, 34.926697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.429520, 29.430599, 35.018654>,  <46.082607, 29.303471, 35.171917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.429520, 29.430599, 35.018654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010679, -0.781381, -0.623963,
		-0.497704, 0.537060, -0.681071,
		0.867281, 0.317823, -0.383161,
		46.689705, 29.525946, 34.903706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.937115, 29.350449, 34.404282>,  <46.082607, 29.303471, 35.171917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.937115, 29.350449, 34.404282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.332058, 29.327587, 34.463428>,  <46.569023, 29.313869, 34.498917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.332058, 29.327587, 34.463428>,  <45.937115, 29.350449, 34.404282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.332058, 29.327587, 34.463428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066551, -0.697130, -0.713849,
		0.143882, 0.714662, -0.684511,
		0.987354, -0.057155, 0.147866,
		46.628265, 29.310440, 34.507790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.263279, 29.461895, 33.750965>,  <45.937115, 29.350449, 34.404282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.263279, 29.461895, 33.750965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.555817, 29.297867, 33.968945>,  <46.731339, 29.199450, 34.099731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.555817, 29.297867, 33.968945>,  <46.263279, 29.461895, 33.750965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.555817, 29.297867, 33.968945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121218, -0.708163, -0.695566,
		0.671146, 0.574758, -0.468205,
		0.731348, -0.410071, 0.544951,
		46.775223, 29.174845, 34.132431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.783012, 29.290932, 33.315735>,  <46.263279, 29.461895, 33.750965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.783012, 29.290932, 33.315735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.871037, 29.040115, 33.614639>,  <46.923851, 28.889626, 33.793980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.871037, 29.040115, 33.614639>,  <46.783012, 29.290932, 33.315735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.871037, 29.040115, 33.614639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199877, -0.720801, -0.663698,
		0.954790, 0.295412, -0.033288,
		0.220058, -0.627039, 0.747259,
		46.937054, 28.852003, 33.838818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.430946, 28.990004, 33.188248>,  <46.783012, 29.290932, 33.315735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.430946, 28.990004, 33.188248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.237892, 28.737019, 33.430592>,  <47.122059, 28.585228, 33.575996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.237892, 28.737019, 33.430592>,  <47.430946, 28.990004, 33.188248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.237892, 28.737019, 33.430592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182246, -0.749136, -0.636853,
		0.856653, -0.196950, 0.476819,
		-0.482631, -0.632461, 0.605856,
		47.093102, 28.547281, 33.612347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.749069, 28.371891, 33.088036>,  <47.430946, 28.990004, 33.188248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.749069, 28.371891, 33.088036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.427166, 28.254524, 33.294441>,  <47.234024, 28.184103, 33.418285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.427166, 28.254524, 33.294441>,  <47.749069, 28.371891, 33.088036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.427166, 28.254524, 33.294441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037090, -0.842738, -0.537044,
		0.592445, -0.451329, 0.667316,
		-0.804757, -0.293418, 0.516016,
		47.185738, 28.166498, 33.449245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.853779, 27.665667, 33.123249>,  <47.749069, 28.371891, 33.088036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.853779, 27.665667, 33.123249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.468067, 27.687912, 33.226845>,  <47.236641, 27.701260, 33.289001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.468067, 27.687912, 33.226845>,  <47.853779, 27.665667, 33.123249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.468067, 27.687912, 33.226845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187822, -0.832982, -0.520446,
		0.186787, -0.550498, 0.813672,
		-0.964279, 0.055613, 0.258986,
		47.178783, 27.704596, 33.304543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.667648, 26.928696, 33.358322>,  <47.853779, 27.665667, 33.123249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.667648, 26.928696, 33.358322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.346458, 27.127510, 33.226753>,  <47.153744, 27.246799, 33.147812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.346458, 27.127510, 33.226753>,  <47.667648, 26.928696, 33.358322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.346458, 27.127510, 33.226753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273339, -0.797506, -0.537838,
		-0.529639, -0.341964, 0.776237,
		-0.802975, 0.497035, -0.328918,
		47.105568, 27.276621, 33.128078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.116230, 26.478476, 33.452690>,  <47.667648, 26.928696, 33.358322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.116230, 26.478476, 33.452690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.994617, 26.728464, 33.165085>,  <46.921650, 26.878458, 32.992523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.994617, 26.728464, 33.165085>,  <47.116230, 26.478476, 33.452690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.994617, 26.728464, 33.165085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220012, -0.780398, -0.585299,
		-0.926909, -0.019757, 0.374765,
		-0.304029, 0.624971, -0.719011,
		46.903408, 26.915955, 32.949383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.465729, 26.277948, 33.301620>,  <47.116230, 26.478476, 33.452690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.465729, 26.277948, 33.301620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.561745, 26.495312, 32.979855>,  <46.619354, 26.625731, 32.786793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.561745, 26.495312, 32.979855>,  <46.465729, 26.277948, 33.301620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.561745, 26.495312, 32.979855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208447, -0.780465, -0.589428,
		-0.948120, 0.309164, -0.074070,
		0.240039, 0.543408, -0.804418,
		46.633755, 26.658335, 32.738529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.862965, 26.209072, 32.836582>,  <46.465729, 26.277948, 33.301620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.862965, 26.209072, 32.836582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.146385, 26.332466, 32.582722>,  <46.316437, 26.406504, 32.430405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.146385, 26.332466, 32.582722>,  <45.862965, 26.209072, 32.836582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.146385, 26.332466, 32.582722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352018, -0.624962, -0.696783,
		-0.611583, 0.717118, -0.334227,
		0.708555, 0.308487, -0.634654,
		46.358952, 26.425013, 32.392326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.551662, 26.172771, 32.219452>,  <45.862965, 26.209072, 32.836582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.551662, 26.172771, 32.219452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.936432, 26.186634, 32.111004>,  <46.167294, 26.194952, 32.045937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.936432, 26.186634, 32.111004>,  <45.551662, 26.172771, 32.219452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.936432, 26.186634, 32.111004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188587, -0.633843, -0.750119,
		-0.197843, 0.772685, -0.603171,
		0.961921, 0.034655, -0.271120,
		46.225010, 26.197031, 32.029667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.786201, 38.763680, 41.600803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402435, 38.651379, 41.590229>,  <41.172176, 38.584000, 41.583885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402435, 38.651379, 41.590229>,  <41.786201, 38.763680, 41.600803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402435, 38.651379, 41.590229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215600, -0.669868, -0.710488,
		0.181758, -0.687355, 0.703213,
		-0.959417, -0.280749, -0.026440,
		41.114609, 38.567154, 41.582298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843536, 38.062187, 41.662651>,  <41.786201, 38.763680, 41.600803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843536, 38.062187, 41.662651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496212, 38.142269, 41.481125>,  <41.287815, 38.190319, 41.372208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496212, 38.142269, 41.481125>,  <41.843536, 38.062187, 41.662651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496212, 38.142269, 41.481125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124671, -0.797464, -0.590346,
		-0.480089, -0.569184, 0.667490,
		-0.868315, 0.200202, -0.453814,
		41.235718, 38.202332, 41.344982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616432, 37.490978, 41.420673>,  <41.843536, 38.062187, 41.662651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616432, 37.490978, 41.420673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391376, 37.739197, 41.202187>,  <41.256344, 37.888130, 41.071095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391376, 37.739197, 41.202187>,  <41.616432, 37.490978, 41.420673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391376, 37.739197, 41.202187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019464, -0.650594, -0.759177,
		-0.826475, -0.437773, 0.353970,
		-0.562638, 0.620550, -0.546220,
		41.222584, 37.925362, 41.038322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126301, 37.165260, 41.039017>,  <41.616432, 37.490978, 41.420673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126301, 37.165260, 41.039017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109192, 37.497421, 40.816811>,  <41.098927, 37.696720, 40.683487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109192, 37.497421, 40.816811>,  <41.126301, 37.165260, 41.039017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109192, 37.497421, 40.816811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138126, -0.555601, -0.819896,
		-0.989490, 0.041659, 0.138467,
		-0.042776, 0.830405, -0.555516,
		41.096359, 37.746544, 40.650154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538906, 37.089474, 40.544289>,  <41.126301, 37.165260, 41.039017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538906, 37.089474, 40.544289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785690, 37.360596, 40.384319>,  <40.933762, 37.523270, 40.288338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785690, 37.360596, 40.384319>,  <40.538906, 37.089474, 40.544289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785690, 37.360596, 40.384319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083408, -0.448994, -0.889633,
		-0.782561, 0.582227, -0.220478,
		0.616962, 0.677803, -0.399927,
		40.970779, 37.563938, 40.264339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228977, 37.253040, 39.876583>,  <40.538906, 37.089474, 40.544289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228977, 37.253040, 39.876583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604832, 37.389900, 39.877857>,  <40.830345, 37.472015, 39.878620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604832, 37.389900, 39.877857>,  <40.228977, 37.253040, 39.876583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604832, 37.389900, 39.877857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112473, -0.300070, -0.947263,
		-0.323151, 0.890445, -0.320440,
		0.939640, 0.342150, 0.003183,
		40.886723, 37.492546, 39.878811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337708, 37.679482, 39.203869>,  <40.228977, 37.253040, 39.876583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337708, 37.679482, 39.203869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704079, 37.580147, 39.329983>,  <40.923901, 37.520546, 39.405651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704079, 37.580147, 39.329983>,  <40.337708, 37.679482, 39.203869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704079, 37.580147, 39.329983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201275, -0.395428, -0.896173,
		0.347229, 0.884287, -0.312198,
		0.915926, -0.248339, 0.315289,
		40.978855, 37.505646, 39.424568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597408, 37.748562, 38.591328>,  <40.337708, 37.679482, 39.203869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597408, 37.748562, 38.591328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870602, 37.563927, 38.817764>,  <41.034519, 37.453144, 38.953629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870602, 37.563927, 38.817764>,  <40.597408, 37.748562, 38.591328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870602, 37.563927, 38.817764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215025, -0.613616, -0.759763,
		0.698064, 0.640633, -0.319837,
		0.682986, -0.461590, 0.566096,
		41.075497, 37.425449, 38.987595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215210, 37.713387, 38.216961>,  <40.597408, 37.748562, 38.591328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215210, 37.713387, 38.216961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218410, 37.408703, 38.476109>,  <41.220333, 37.225891, 38.631596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218410, 37.408703, 38.476109>,  <41.215210, 37.713387, 38.216961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218410, 37.408703, 38.476109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103311, -0.643789, -0.758197,
		0.994617, 0.073002, 0.073539,
		0.008006, -0.761713, 0.647865,
		41.220814, 37.180187, 38.670467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730328, 37.375919, 37.998291>,  <41.215210, 37.713387, 38.216961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730328, 37.375919, 37.998291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501087, 37.127522, 38.212181>,  <41.363544, 36.978485, 38.340515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501087, 37.127522, 38.212181>,  <41.730328, 37.375919, 37.998291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501087, 37.127522, 38.212181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078108, -0.690931, -0.718689,
		0.815754, -0.370115, 0.444478,
		-0.573101, -0.620990, 0.534721,
		41.329155, 36.941223, 38.372597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032848, 36.782337, 37.809559>,  <41.730328, 37.375919, 37.998291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032848, 36.782337, 37.809559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699036, 36.665203, 37.996239>,  <41.498749, 36.594921, 38.108246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699036, 36.665203, 37.996239>,  <42.032848, 36.782337, 37.809559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699036, 36.665203, 37.996239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033302, -0.818700, -0.573255,
		0.549953, -0.493942, 0.673479,
		-0.834531, -0.292835, 0.466696,
		41.448677, 36.577354, 38.136246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259060, 36.194424, 38.219231>,  <42.032848, 36.782337, 37.809559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259060, 36.194424, 38.219231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876423, 36.221249, 38.105789>,  <41.646839, 36.237343, 38.037724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876423, 36.221249, 38.105789>,  <42.259060, 36.194424, 38.219231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876423, 36.221249, 38.105789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022586, -0.953173, -0.301582,
		-0.290552, -0.294896, 0.910283,
		-0.956593, 0.067065, -0.283607,
		41.589447, 36.241367, 38.020706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821301, 35.558918, 38.405052>,  <42.259060, 36.194424, 38.219231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821301, 35.558918, 38.405052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641808, 35.748051, 38.101719>,  <41.534111, 35.861530, 37.919720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641808, 35.748051, 38.101719>,  <41.821301, 35.558918, 38.405052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641808, 35.748051, 38.101719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011607, -0.851577, -0.524101,
		-0.893591, -0.226379, 0.387618,
		-0.448732, 0.472832, -0.758334,
		41.507187, 35.889900, 37.874218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531914, 35.325779, 38.348064>,  <41.821301, 35.558918, 38.405052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531914, 35.325779, 38.348064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224556, 35.107121, 38.214951>,  <42.040142, 34.975925, 38.135082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224556, 35.107121, 38.214951>,  <42.531914, 35.325779, 38.348064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224556, 35.107121, 38.214951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623692, -0.523098, -0.580841,
		0.143438, -0.653870, 0.742886,
		-0.768397, -0.546647, -0.332781,
		41.994038, 34.943127, 38.115116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882500, 34.678436, 38.221867>,  <42.531914, 35.325779, 38.348064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882500, 34.678436, 38.221867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551746, 34.698051, 37.997772>,  <42.353294, 34.709820, 37.863316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551746, 34.698051, 37.997772>,  <42.882500, 34.678436, 38.221867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551746, 34.698051, 37.997772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333563, -0.759277, -0.558780,
		-0.452774, -0.648918, 0.611475,
		-0.826881, 0.049035, -0.560235,
		42.303680, 34.712761, 37.829700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386841, 34.244644, 38.616680>,  <42.882500, 34.678436, 38.221867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.386841, 34.244644, 38.616680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488258, 33.915989, 38.820889>,  <43.549107, 33.718796, 38.943413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488258, 33.915989, 38.820889>,  <43.386841, 34.244644, 38.616680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488258, 33.915989, 38.820889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568458, 0.300462, 0.765884,
		-0.782670, -0.484390, -0.390888,
		0.253540, -0.821638, 0.510518,
		43.564320, 33.669498, 38.974045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724483, 34.002762, 38.868336>,  <43.386841, 34.244644, 38.616680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724483, 34.002762, 38.868336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007797, 33.849182, 39.105289>,  <43.177784, 33.757034, 39.247463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007797, 33.849182, 39.105289>,  <42.724483, 34.002762, 38.868336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.007797, 33.849182, 39.105289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507063, 0.307134, 0.805330,
		-0.491146, -0.870777, 0.022852,
		0.708282, -0.383947, 0.592386,
		43.220284, 33.733997, 39.283005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411190, 33.618099, 39.414261>,  <42.724483, 34.002762, 38.868336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411190, 33.618099, 39.414261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767761, 33.704163, 39.573792>,  <42.981705, 33.755802, 39.669510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767761, 33.704163, 39.573792>,  <42.411190, 33.618099, 39.414261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767761, 33.704163, 39.573792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408274, -0.000570, 0.912859,
		0.196638, -0.976579, 0.087335,
		0.891429, 0.215159, 0.398824,
		43.035191, 33.768711, 39.693439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469357, 33.205807, 39.951893>,  <42.411190, 33.618099, 39.414261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469357, 33.205807, 39.951893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722000, 33.505882, 40.030174>,  <42.873585, 33.685928, 40.077141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722000, 33.505882, 40.030174>,  <42.469357, 33.205807, 39.951893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722000, 33.505882, 40.030174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296575, 0.000563, 0.955010,
		0.716324, -0.661228, 0.222841,
		0.631605, 0.750185, 0.195701,
		42.911480, 33.730938, 40.088886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.500343, 33.160179, 40.567444>,  <42.469357, 33.205807, 39.951893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.500343, 33.160179, 40.567444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673870, 33.517956, 40.524017>,  <42.777985, 33.732620, 40.497963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673870, 33.517956, 40.524017>,  <42.500343, 33.160179, 40.567444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673870, 33.517956, 40.524017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343893, 0.275744, 0.897610,
		0.832793, -0.352059, 0.427212,
		0.433813, 0.894438, -0.108567,
		42.804012, 33.786285, 40.491447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929787, 33.316128, 41.211376>,  <42.500343, 33.160179, 40.567444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929787, 33.316128, 41.211376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842648, 33.662754, 41.031773>,  <42.790363, 33.870731, 40.924011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842648, 33.662754, 41.031773>,  <42.929787, 33.316128, 41.211376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842648, 33.662754, 41.031773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311027, 0.374428, 0.873536,
		0.925096, 0.329954, 0.187956,
		-0.217851, 0.866564, -0.449007,
		42.777294, 33.922722, 40.897072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285744, 33.792103, 41.591770>,  <42.929787, 33.316128, 41.211376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285744, 33.792103, 41.591770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016411, 34.024441, 41.408798>,  <42.854813, 34.163845, 41.299015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016411, 34.024441, 41.408798>,  <43.285744, 33.792103, 41.591770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016411, 34.024441, 41.408798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178658, 0.472536, 0.863013,
		0.717432, 0.662815, -0.214399,
		-0.673330, 0.580849, -0.457430,
		42.814411, 34.198696, 41.271568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433411, 34.556721, 41.773300>,  <43.285744, 33.792103, 41.591770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433411, 34.556721, 41.773300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051739, 34.522079, 41.658733>,  <42.822735, 34.501297, 41.589993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051739, 34.522079, 41.658733>,  <43.433411, 34.556721, 41.773300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051739, 34.522079, 41.658733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280497, 0.592168, 0.755420,
		0.104188, 0.801148, -0.589328,
		-0.954184, -0.086599, -0.286416,
		42.765484, 34.496101, 41.572807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201138, 35.257565, 41.881145>,  <43.433411, 34.556721, 41.773300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201138, 35.257565, 41.881145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896873, 34.998123, 41.870556>,  <42.714314, 34.842457, 41.864204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896873, 34.998123, 41.870556>,  <43.201138, 35.257565, 41.881145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896873, 34.998123, 41.870556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355113, 0.381639, 0.853373,
		-0.543401, 0.658531, -0.520628,
		-0.760664, -0.648606, -0.026470,
		42.668674, 34.803543, 41.862614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652832, 35.635273, 42.067081>,  <43.201138, 35.257565, 41.881145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652832, 35.635273, 42.067081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505489, 35.264088, 42.089741>,  <42.417084, 35.041378, 42.103336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505489, 35.264088, 42.089741>,  <42.652832, 35.635273, 42.067081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505489, 35.264088, 42.089741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600792, 0.284098, 0.747220,
		-0.709483, 0.241207, -0.662158,
		-0.368353, -0.927959, 0.056647,
		42.394985, 34.985699, 42.106735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887932, 35.672741, 42.059204>,  <42.652832, 35.635273, 42.067081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887932, 35.672741, 42.059204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973747, 35.320095, 42.227360>,  <42.025238, 35.108509, 42.328255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973747, 35.320095, 42.227360>,  <41.887932, 35.672741, 42.059204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973747, 35.320095, 42.227360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679699, 0.174333, 0.712473,
		-0.701414, -0.438594, -0.561831,
		0.214541, -0.881614, 0.420392,
		42.038109, 35.055611, 42.353477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234394, 35.486092, 42.374027>,  <41.887932, 35.672741, 42.059204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234394, 35.486092, 42.374027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519169, 35.275436, 42.559845>,  <41.690033, 35.149044, 42.671333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519169, 35.275436, 42.559845>,  <41.234394, 35.486092, 42.374027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519169, 35.275436, 42.559845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497069, 0.089364, 0.863097,
		-0.496054, -0.845379, -0.198154,
		0.711936, -0.526639, 0.464541,
		41.732750, 35.117443, 42.699207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877010, 35.164799, 42.846668>,  <41.234394, 35.486092, 42.374027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877010, 35.164799, 42.846668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241230, 35.091011, 42.994652>,  <41.459763, 35.046738, 43.083443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241230, 35.091011, 42.994652>,  <40.877010, 35.164799, 42.846668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241230, 35.091011, 42.994652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327819, 0.223008, 0.918043,
		-0.251857, -0.957203, 0.142586,
		0.910551, -0.184473, 0.369956,
		41.514397, 35.035667, 43.105640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642097, 34.425453, 42.832130>,  <40.877010, 35.164799, 42.846668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642097, 34.425453, 42.832130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353737, 34.168301, 42.935669>,  <40.180721, 34.014008, 42.997791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353737, 34.168301, 42.935669>,  <40.642097, 34.425453, 42.832130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353737, 34.168301, 42.935669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145982, -0.505981, -0.850102,
		0.677485, -0.575056, 0.458613,
		-0.720905, -0.642880, 0.258846,
		40.137466, 33.975437, 43.013321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924301, 33.819691, 42.542343>,  <40.642097, 34.425453, 42.832130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924301, 33.819691, 42.542343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531143, 33.750332, 42.567173>,  <40.295250, 33.708717, 42.582073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531143, 33.750332, 42.567173>,  <40.924301, 33.819691, 42.542343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531143, 33.750332, 42.567173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012650, -0.272704, -0.962015,
		0.183742, -0.946343, 0.265846,
		-0.982893, -0.173399, 0.062079,
		40.236275, 33.698311, 42.585796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859058, 33.171112, 42.203068>,  <40.924301, 33.819691, 42.542343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859058, 33.171112, 42.203068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491802, 33.329250, 42.192390>,  <40.271446, 33.424133, 42.185986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491802, 33.329250, 42.192390>,  <40.859058, 33.171112, 42.203068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491802, 33.329250, 42.192390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046782, -0.175034, -0.983450,
		-0.393475, -0.901701, 0.179202,
		-0.918144, 0.395347, -0.026689,
		40.216358, 33.447853, 42.184383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563404, 32.676834, 41.773300>,  <40.859058, 33.171112, 42.203068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563404, 32.676834, 41.773300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302971, 32.980415, 41.769905>,  <40.146709, 33.162563, 41.767868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302971, 32.980415, 41.769905>,  <40.563404, 32.676834, 41.773300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302971, 32.980415, 41.769905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116186, -0.110711, -0.987038,
		-0.750059, -0.641660, 0.160262,
		-0.651085, 0.758957, -0.008488,
		40.107647, 33.208103, 41.767361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121746, 32.467415, 41.333214>,  <40.563404, 32.676834, 41.773300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121746, 32.467415, 41.333214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051182, 32.860928, 41.320267>,  <40.008842, 33.097034, 41.312500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051182, 32.860928, 41.320267>,  <40.121746, 32.467415, 41.333214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051182, 32.860928, 41.320267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173923, -0.063516, -0.982709,
		-0.968829, -0.167734, 0.182308,
		-0.176413, 0.983784, -0.032364,
		39.998257, 33.156063, 41.310558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551125, 32.492100, 40.945637>,  <40.121746, 32.467415, 41.333214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551125, 32.492100, 40.945637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694923, 32.864864, 40.926437>,  <39.781200, 33.088524, 40.914917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694923, 32.864864, 40.926437>,  <39.551125, 32.492100, 40.945637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694923, 32.864864, 40.926437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274495, 0.056449, -0.959930,
		-0.891862, 0.358263, 0.276098,
		0.359493, 0.931913, -0.047997,
		39.802773, 33.144440, 40.912037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099934, 32.874863, 40.452190>,  <39.551125, 32.492100, 40.945637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099934, 32.874863, 40.452190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436501, 33.090309, 40.469666>,  <39.638443, 33.219578, 40.480152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436501, 33.090309, 40.469666>,  <39.099934, 32.874863, 40.452190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436501, 33.090309, 40.469666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047358, 0.154040, -0.986929,
		-0.538303, 0.828353, 0.155120,
		0.841420, 0.538613, 0.043691,
		39.688927, 33.251892, 40.482773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924107, 33.480259, 40.160664>,  <39.099934, 32.874863, 40.452190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924107, 33.480259, 40.160664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320980, 33.446831, 40.123608>,  <39.559105, 33.426773, 40.101376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320980, 33.446831, 40.123608>,  <38.924107, 33.480259, 40.160664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320980, 33.446831, 40.123608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094226, -0.015240, -0.995434,
		0.081775, 0.996386, -0.022995,
		0.992187, -0.083568, -0.092639,
		39.618637, 33.421761, 40.095818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140709, 34.017902, 39.623234>,  <38.924107, 33.480259, 40.160664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140709, 34.017902, 39.623234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431866, 33.744923, 39.649879>,  <39.606560, 33.581135, 39.665867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431866, 33.744923, 39.649879>,  <39.140709, 34.017902, 39.623234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431866, 33.744923, 39.649879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160869, 0.075524, -0.984082,
		0.666556, 0.727020, 0.164759,
		0.727890, -0.682450, 0.066614,
		39.650234, 33.540188, 39.669865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703209, 34.333321, 39.297462>,  <39.140709, 34.017902, 39.623234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703209, 34.333321, 39.297462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783749, 33.941536, 39.293064>,  <39.832073, 33.706467, 39.290424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783749, 33.941536, 39.293064>,  <39.703209, 34.333321, 39.297462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783749, 33.941536, 39.293064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108621, 0.033480, -0.993519,
		0.973478, 0.198850, 0.113131,
		0.201349, -0.979458, -0.010993,
		39.844154, 33.647697, 39.289768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381237, 34.227928, 38.947811>,  <39.703209, 34.333321, 39.297462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381237, 34.227928, 38.947811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210579, 33.867516, 38.916546>,  <40.108185, 33.651268, 38.897789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210579, 33.867516, 38.916546>,  <40.381237, 34.227928, 38.947811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210579, 33.867516, 38.916546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108278, 0.034911, -0.993508,
		0.897913, -0.432341, 0.082667,
		-0.426648, -0.901034, -0.078160,
		40.082584, 33.597206, 38.893097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940945, 33.712921, 38.600101>,  <40.381237, 34.227928, 38.947811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940945, 33.712921, 38.600101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554817, 33.617111, 38.558575>,  <40.323139, 33.559624, 38.533657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554817, 33.617111, 38.558575>,  <40.940945, 33.712921, 38.600101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554817, 33.617111, 38.558575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081148, 0.102661, -0.991401,
		0.248128, -0.965446, -0.079664,
		-0.965323, -0.239530, -0.103817,
		40.265221, 33.545254, 38.527431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.684776, 35.355949, 46.285107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.291965, 35.303970, 46.230366>,  <39.056278, 35.272781, 46.197521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.291965, 35.303970, 46.230366>,  <39.684776, 35.355949, 46.285107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291965, 35.303970, 46.230366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188667, -0.658789, -0.728287,
		0.004485, -0.741019, 0.671469,
		-0.982031, -0.129950, -0.136852,
		38.997356, 35.264984, 46.189312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558895, 34.727509, 46.384487>,  <39.684776, 35.355949, 46.285107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558895, 34.727509, 46.384487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.261436, 34.857086, 46.150547>,  <39.082962, 34.934834, 46.010181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.261436, 34.857086, 46.150547>,  <39.558895, 34.727509, 46.384487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261436, 34.857086, 46.150547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284189, -0.638656, -0.715091,
		-0.605166, -0.697984, 0.382874,
		-0.743646, 0.323940, -0.584853,
		39.038342, 34.954269, 45.975090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150852, 34.097347, 46.175121>,  <39.558895, 34.727509, 46.384487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150852, 34.097347, 46.175121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.091267, 34.385670, 45.904346>,  <39.055515, 34.558662, 45.741882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.091267, 34.385670, 45.904346>,  <39.150852, 34.097347, 46.175121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091267, 34.385670, 45.904346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140696, -0.662162, -0.736034,
		-0.978783, -0.204882, -0.002779,
		-0.148960, 0.720809, -0.676939,
		39.046577, 34.601913, 45.701263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875816, 33.740330, 45.538982>,  <39.150852, 34.097347, 46.175121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875816, 33.740330, 45.538982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.992928, 34.094692, 45.395058>,  <39.063194, 34.307308, 45.308704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.992928, 34.094692, 45.395058>,  <38.875816, 33.740330, 45.538982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992928, 34.094692, 45.395058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256678, -0.435301, -0.862920,
		-0.921086, 0.160285, -0.354836,
		0.292774, 0.885902, -0.359808,
		39.080761, 34.360462, 45.287117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662167, 33.759819, 44.791290>,  <38.875816, 33.740330, 45.538982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662167, 33.759819, 44.791290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.946476, 34.040592, 44.809540>,  <39.117062, 34.209057, 44.820488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.946476, 34.040592, 44.809540>,  <38.662167, 33.759819, 44.791290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946476, 34.040592, 44.809540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315578, -0.260245, -0.912515,
		-0.628654, 0.662992, -0.406492,
		0.710778, 0.701936, 0.045621,
		39.159710, 34.251171, 44.823227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610321, 34.185432, 44.196087>,  <38.662167, 33.759819, 44.791290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610321, 34.185432, 44.196087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.991875, 34.212738, 44.313015>,  <39.220806, 34.229122, 44.383171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.991875, 34.212738, 44.313015>,  <38.610321, 34.185432, 44.196087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991875, 34.212738, 44.313015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296990, -0.073005, -0.952086,
		-0.043653, 0.994993, -0.089913,
		0.953882, 0.068265, 0.292316,
		39.278038, 34.233219, 44.400711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955883, 34.457615, 43.666122>,  <38.610321, 34.185432, 44.196087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955883, 34.457615, 43.666122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.262844, 34.304104, 43.871571>,  <39.447021, 34.211998, 43.994839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.262844, 34.304104, 43.871571>,  <38.955883, 34.457615, 43.666122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262844, 34.304104, 43.871571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482257, -0.182396, -0.856831,
		0.422514, 0.905233, 0.045108,
		0.767404, -0.383777, 0.513620,
		39.493065, 34.188972, 44.025658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433140, 34.742031, 43.296589>,  <38.955883, 34.457615, 43.666122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433140, 34.742031, 43.296589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.561852, 34.416981, 43.490948>,  <39.639076, 34.221951, 43.607563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.561852, 34.416981, 43.490948>,  <39.433140, 34.742031, 43.296589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561852, 34.416981, 43.490948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584965, -0.232908, -0.776897,
		0.744497, 0.534221, 0.400414,
		0.321775, -0.812626, 0.485900,
		39.658382, 34.173191, 43.636719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173515, 34.820606, 43.276897>,  <39.433140, 34.742031, 43.296589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173515, 34.820606, 43.276897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.063862, 34.442314, 43.346695>,  <39.998070, 34.215340, 43.388573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.063862, 34.442314, 43.346695>,  <40.173515, 34.820606, 43.276897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063862, 34.442314, 43.346695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556274, -0.303949, -0.773417,
		0.784479, -0.114956, 0.609408,
		-0.274138, -0.945727, 0.174494,
		39.981621, 34.158596, 43.399044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815678, 34.685303, 43.545044>,  <40.173515, 34.820606, 43.276897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815678, 34.685303, 43.545044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.169357, 34.871483, 43.560753>,  <41.381565, 34.983192, 43.570179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.169357, 34.871483, 43.560753>,  <40.815678, 34.685303, 43.545044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169357, 34.871483, 43.560753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240247, 0.381061, 0.892790,
		0.400593, -0.798837, 0.448759,
		0.884199, 0.465458, 0.039268,
		41.434616, 35.011120, 43.572533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017651, 34.540653, 44.237358>,  <40.815678, 34.685303, 43.545044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017651, 34.540653, 44.237358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.252270, 34.842697, 44.120216>,  <41.393044, 35.023922, 44.049931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.252270, 34.842697, 44.120216>,  <41.017651, 34.540653, 44.237358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252270, 34.842697, 44.120216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032210, 0.339556, 0.940034,
		0.809270, -0.560812, 0.174846,
		0.586552, 0.755110, -0.292856,
		41.428234, 35.069229, 44.032360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607277, 34.647110, 44.723621>,  <41.017651, 34.540653, 44.237358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607277, 34.647110, 44.723621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.547588, 35.003315, 44.551708>,  <41.511776, 35.217041, 44.448559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.547588, 35.003315, 44.551708>,  <41.607277, 34.647110, 44.723621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547588, 35.003315, 44.551708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198493, 0.398825, 0.895287,
		0.968677, 0.218901, 0.117250,
		-0.149217, 0.890517, -0.429783,
		41.502823, 35.270470, 44.422775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952553, 35.101357, 45.142372>,  <41.607277, 34.647110, 44.723621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952553, 35.101357, 45.142372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.709282, 35.336090, 44.928551>,  <41.563320, 35.476929, 44.800259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.709282, 35.336090, 44.928551>,  <41.952553, 35.101357, 45.142372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709282, 35.336090, 44.928551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108023, 0.605960, 0.788126,
		0.786417, 0.537064, -0.305140,
		-0.608177, 0.586834, -0.534553,
		41.526829, 35.512142, 44.768185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050655, 35.868919, 45.299332>,  <41.952553, 35.101357, 45.142372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050655, 35.868919, 45.299332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.680614, 35.883121, 45.148113>,  <41.458588, 35.891644, 45.057381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.680614, 35.883121, 45.148113>,  <42.050655, 35.868919, 45.299332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680614, 35.883121, 45.148113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205055, 0.791253, 0.576083,
		0.319586, 0.610458, -0.724711,
		-0.925104, 0.035502, -0.378050,
		41.403084, 35.893772, 45.034698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933571, 36.543488, 45.117470>,  <42.050655, 35.868919, 45.299332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933571, 36.543488, 45.117470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.564228, 36.391823, 45.141609>,  <41.342621, 36.300823, 45.156094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.564228, 36.391823, 45.141609>,  <41.933571, 36.543488, 45.117470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564228, 36.391823, 45.141609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312625, 0.833759, 0.455095,
		-0.222868, 0.401352, -0.888395,
		-0.923361, -0.379161, 0.060345,
		41.287220, 36.278076, 45.159714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571926, 37.069260, 45.076916>,  <41.933571, 36.543488, 45.117470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571926, 37.069260, 45.076916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.296135, 36.817844, 45.220898>,  <41.130661, 36.666996, 45.307285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.296135, 36.817844, 45.220898>,  <41.571926, 37.069260, 45.076916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296135, 36.817844, 45.220898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369863, 0.732807, 0.571135,
		-0.622755, 0.260650, -0.737724,
		-0.689476, -0.628534, 0.359955,
		41.089291, 36.629284, 45.328884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908211, 37.460098, 45.060242>,  <41.571926, 37.069260, 45.076916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908211, 37.460098, 45.060242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.842495, 37.150787, 45.305210>,  <40.803066, 36.965202, 45.452190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.842495, 37.150787, 45.305210>,  <40.908211, 37.460098, 45.060242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842495, 37.150787, 45.305210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491778, 0.602401, 0.628703,
		-0.855081, -0.197884, -0.479247,
		-0.164289, -0.773275, 0.612417,
		40.793209, 36.918804, 45.488934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183060, 37.507660, 45.206398>,  <40.908211, 37.460098, 45.060242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183060, 37.507660, 45.206398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.354294, 37.307281, 45.507275>,  <40.457035, 37.187054, 45.687801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.354294, 37.307281, 45.507275>,  <40.183060, 37.507660, 45.206398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354294, 37.307281, 45.507275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414293, 0.630930, 0.655964,
		-0.803184, -0.592438, 0.062555,
		0.428086, -0.500943, 0.752196,
		40.482719, 37.156998, 45.732933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556843, 37.325054, 45.735241>,  <40.183060, 37.507660, 45.206398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556843, 37.325054, 45.735241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.908287, 37.300785, 45.924709>,  <40.119152, 37.286224, 46.038391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.908287, 37.300785, 45.924709>,  <39.556843, 37.325054, 45.735241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908287, 37.300785, 45.924709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361653, 0.563200, 0.742975,
		-0.311848, -0.824090, 0.472892,
		0.878611, -0.060673, 0.473668,
		40.171871, 37.282585, 46.066811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352867, 37.267586, 46.458660>,  <39.556843, 37.325054, 45.735241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352867, 37.267586, 46.458660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.743896, 37.351540, 46.465492>,  <39.978516, 37.401913, 46.469593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.743896, 37.351540, 46.465492>,  <39.352867, 37.267586, 46.458660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743896, 37.351540, 46.465492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149995, 0.637102, 0.756044,
		0.147801, -0.741653, 0.654298,
		0.977577, 0.209886, 0.017079,
		40.037170, 37.414505, 46.470615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650475, 37.029331, 47.121952>,  <39.352867, 37.267586, 46.458660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650475, 37.029331, 47.121952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.892479, 37.317230, 46.985764>,  <40.037682, 37.489971, 46.904049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.892479, 37.317230, 46.985764>,  <39.650475, 37.029331, 47.121952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892479, 37.317230, 46.985764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222435, 0.563379, 0.795693,
		0.764516, -0.405669, 0.500947,
		0.605011, 0.719748, -0.340477,
		40.073982, 37.533154, 46.883621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841320, 37.321465, 47.767776>,  <39.650475, 37.029331, 47.121952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841320, 37.321465, 47.767776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.960018, 37.578678, 47.485374>,  <40.031235, 37.733006, 47.315933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.960018, 37.578678, 47.485374>,  <39.841320, 37.321465, 47.767776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960018, 37.578678, 47.485374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205081, 0.764969, 0.610544,
		0.932677, -0.036385, 0.358874,
		0.296742, 0.643038, -0.706007,
		40.049042, 37.771591, 47.273571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259724, 37.914692, 48.057621>,  <39.841320, 37.321465, 47.767776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259724, 37.914692, 48.057621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.107227, 38.076080, 47.724907>,  <40.015728, 38.172913, 47.525280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.107227, 38.076080, 47.724907>,  <40.259724, 37.914692, 48.057621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107227, 38.076080, 47.724907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330577, 0.780753, 0.530230,
		0.863351, 0.477115, -0.164277,
		-0.381241, 0.403469, -0.831786,
		39.992855, 38.197121, 47.475372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.040752, 40.217857, 44.741127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.295113, 39.963970, 44.916744>,  <33.447731, 39.811638, 45.022114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.295113, 39.963970, 44.916744>,  <33.040752, 40.217857, 44.741127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295113, 39.963970, 44.916744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406106, -0.208557, -0.889709,
		0.656281, 0.744066, 0.125142,
		0.635903, -0.634720, 0.439041,
		33.485882, 39.773556, 45.048458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638588, 40.267109, 44.325344>,  <33.040752, 40.217857, 44.741127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638588, 40.267109, 44.325344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.726788, 39.938953, 44.536377>,  <33.779709, 39.742062, 44.662998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.726788, 39.938953, 44.536377>,  <33.638588, 40.267109, 44.325344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726788, 39.938953, 44.536377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520280, -0.358597, -0.775060,
		0.825038, 0.445395, 0.347758,
		0.220502, -0.820385, 0.527586,
		33.792938, 39.692837, 44.694653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334213, 40.121418, 44.139179>,  <33.638588, 40.267109, 44.325344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334213, 40.121418, 44.139179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.205639, 39.773060, 44.287895>,  <34.128494, 39.564045, 44.377125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.205639, 39.773060, 44.287895>,  <34.334213, 40.121418, 44.139179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205639, 39.773060, 44.287895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360652, -0.475626, -0.802315,
		0.875563, -0.123805, 0.466972,
		-0.321435, -0.870891, 0.371790,
		34.109207, 39.511791, 44.399433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913017, 39.669739, 44.137951>,  <34.334213, 40.121418, 44.139179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913017, 39.669739, 44.137951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.586063, 39.439423, 44.130478>,  <34.389889, 39.301235, 44.125996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.586063, 39.439423, 44.130478>,  <34.913017, 39.669739, 44.137951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586063, 39.439423, 44.130478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367879, -0.496742, -0.786074,
		0.443332, -0.649398, 0.617850,
		-0.817387, -0.575786, -0.018678,
		34.340847, 39.266685, 44.124874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142441, 38.957466, 44.104408>,  <34.913017, 39.669739, 44.137951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142441, 38.957466, 44.104408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.773876, 38.969826, 43.949467>,  <34.552738, 38.977242, 43.856503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.773876, 38.969826, 43.949467>,  <35.142441, 38.957466, 44.104408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773876, 38.969826, 43.949467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343485, -0.401349, -0.849080,
		-0.181695, -0.915404, 0.359197,
		-0.921415, 0.030895, -0.387350,
		34.497452, 38.979095, 43.833263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187420, 38.386845, 43.679771>,  <35.142441, 38.957466, 44.104408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187420, 38.386845, 43.679771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.847599, 38.564590, 43.566074>,  <34.643707, 38.671238, 43.497856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.847599, 38.564590, 43.566074>,  <35.187420, 38.386845, 43.679771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847599, 38.564590, 43.566074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047255, -0.472569, -0.880026,
		-0.525379, -0.761063, 0.380475,
		-0.849555, 0.444367, -0.284242,
		34.592731, 38.697899, 43.480801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831745, 37.901772, 43.335159>,  <35.187420, 38.386845, 43.679771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831745, 37.901772, 43.335159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.655807, 38.236984, 43.206020>,  <34.550243, 38.438114, 43.128536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.655807, 38.236984, 43.206020>,  <34.831745, 37.901772, 43.335159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655807, 38.236984, 43.206020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059293, -0.385806, -0.920673,
		-0.896114, -0.385811, 0.219385,
		-0.439845, 0.838036, -0.322850,
		34.523853, 38.488396, 43.109165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318600, 37.730885, 42.847511>,  <34.831745, 37.901772, 43.335159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318600, 37.730885, 42.847511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.400436, 38.111858, 42.757160>,  <34.449539, 38.340443, 42.702950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.400436, 38.111858, 42.757160>,  <34.318600, 37.730885, 42.847511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400436, 38.111858, 42.757160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115541, -0.252639, -0.960637,
		-0.972005, 0.170438, -0.161732,
		0.204589, 0.952431, -0.225874,
		34.461815, 38.397587, 42.689400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825668, 38.002522, 42.316868>,  <34.318600, 37.730885, 42.847511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825668, 38.002522, 42.316868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.149956, 38.236481, 42.306744>,  <34.344528, 38.376854, 42.300671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.149956, 38.236481, 42.306744>,  <33.825668, 38.002522, 42.316868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149956, 38.236481, 42.306744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045503, -0.106058, -0.993318,
		-0.583670, 0.804146, -0.112598,
		0.810715, 0.584894, -0.025312,
		34.393169, 38.411949, 42.299149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796211, 38.268711, 41.643719>,  <33.825668, 38.002522, 42.316868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796211, 38.268711, 41.643719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.171783, 38.373055, 41.733482>,  <34.397129, 38.435661, 41.787338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.171783, 38.373055, 41.733482>,  <33.796211, 38.268711, 41.643719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171783, 38.373055, 41.733482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246884, -0.056423, -0.967401,
		-0.239692, 0.963727, -0.117378,
		0.938934, 0.260857, 0.224404,
		34.453465, 38.451313, 41.800804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965084, 38.711288, 41.167370>,  <33.796211, 38.268711, 41.643719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965084, 38.711288, 41.167370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.334888, 38.602005, 41.273682>,  <34.556770, 38.536434, 41.337471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.334888, 38.602005, 41.273682>,  <33.965084, 38.711288, 41.167370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334888, 38.602005, 41.273682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246333, -0.103853, -0.963605,
		0.290865, 0.956333, -0.028713,
		0.924509, -0.273206, 0.265784,
		34.612240, 38.520042, 41.353416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421749, 39.032436, 40.747314>,  <33.965084, 38.711288, 41.167370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421749, 39.032436, 40.747314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.610741, 38.704826, 40.877525>,  <34.724136, 38.508259, 40.955650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.610741, 38.704826, 40.877525>,  <34.421749, 39.032436, 40.747314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610741, 38.704826, 40.877525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285787, -0.207019, -0.935665,
		0.833722, 0.535110, 0.136255,
		0.472476, -0.819024, 0.325524,
		34.752483, 38.459118, 40.975182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177647, 39.042862, 40.560631>,  <34.421749, 39.032436, 40.747314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177647, 39.042862, 40.560631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.082973, 38.658035, 40.614902>,  <35.026169, 38.427139, 40.647465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.082973, 38.658035, 40.614902>,  <35.177647, 39.042862, 40.560631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082973, 38.658035, 40.614902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367449, -0.217910, -0.904155,
		0.899425, -0.164138, 0.405085,
		-0.236678, -0.962068, 0.135681,
		35.011971, 38.369415, 40.655605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738159, 38.733803, 40.344196>,  <35.177647, 39.042862, 40.560631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738159, 38.733803, 40.344196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.477123, 38.431049, 40.330025>,  <35.320499, 38.249397, 40.321522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.477123, 38.431049, 40.330025>,  <35.738159, 38.733803, 40.344196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477123, 38.431049, 40.330025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340830, -0.251465, -0.905870,
		0.676727, -0.603239, 0.422072,
		-0.652592, -0.756881, -0.035429,
		35.281345, 38.203983, 40.319397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350346, 38.379780, 40.661350>,  <35.738159, 38.733803, 40.344196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350346, 38.379780, 40.661350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.715752, 38.527424, 40.592949>,  <36.934998, 38.616013, 40.551910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.715752, 38.527424, 40.592949>,  <36.350346, 38.379780, 40.661350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715752, 38.527424, 40.592949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015063, 0.450758, 0.892519,
		0.406517, -0.812757, 0.417336,
		0.913519, 0.369110, -0.170998,
		36.989807, 38.638157, 40.541649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807404, 38.212345, 41.262749>,  <36.350346, 38.379780, 40.661350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807404, 38.212345, 41.262749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.959396, 38.545624, 41.102047>,  <37.050591, 38.745590, 41.005627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.959396, 38.545624, 41.102047>,  <36.807404, 38.212345, 41.262749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959396, 38.545624, 41.102047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151198, 0.372543, 0.915615,
		0.912554, -0.408659, 0.015581,
		0.379979, 0.833192, -0.401754,
		37.073391, 38.795582, 40.981522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323925, 38.423164, 41.769779>,  <36.807404, 38.212345, 41.262749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323925, 38.423164, 41.769779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.269039, 38.746830, 41.541248>,  <37.236107, 38.941029, 41.404129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.269039, 38.746830, 41.541248>,  <37.323925, 38.423164, 41.769779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269039, 38.746830, 41.541248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014746, 0.575055, 0.817982,
		0.990431, 0.120668, -0.066977,
		-0.137219, 0.809167, -0.571331,
		37.227875, 38.989578, 41.369850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807323, 38.837563, 41.949959>,  <37.323925, 38.423164, 41.769779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807323, 38.837563, 41.949959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.528221, 39.069794, 41.782116>,  <37.360760, 39.209133, 41.681412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.528221, 39.069794, 41.782116>,  <37.807323, 38.837563, 41.949959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528221, 39.069794, 41.782116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059937, 0.631029, 0.773440,
		0.713828, 0.514519, -0.475099,
		-0.697751, 0.580579, -0.419608,
		37.318897, 39.243969, 41.656235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016571, 39.473389, 42.140224>,  <37.807323, 38.837563, 41.949959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016571, 39.473389, 42.140224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.660828, 39.575211, 41.988308>,  <37.447380, 39.636303, 41.897160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.660828, 39.575211, 41.988308>,  <38.016571, 39.473389, 42.140224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660828, 39.575211, 41.988308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078261, 0.733652, 0.675004,
		0.450462, 0.630044, -0.632558,
		-0.889359, 0.254559, -0.379790,
		37.394020, 39.651577, 41.874371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012020, 40.264690, 42.030270>,  <38.016571, 39.473389, 42.140224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012020, 40.264690, 42.030270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.647552, 40.121132, 42.111225>,  <37.428871, 40.034996, 42.159798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.647552, 40.121132, 42.111225>,  <38.012020, 40.264690, 42.030270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647552, 40.121132, 42.111225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136843, 0.726909, 0.672962,
		-0.388646, 0.585486, -0.711450,
		-0.911169, -0.358901, 0.202390,
		37.374203, 40.013462, 42.171944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483944, 40.839428, 42.054829>,  <38.012020, 40.264690, 42.030270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483944, 40.839428, 42.054829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.302399, 40.542812, 42.252464>,  <37.193470, 40.364841, 42.371044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.302399, 40.542812, 42.252464>,  <37.483944, 40.839428, 42.054829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302399, 40.542812, 42.252464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455705, 0.669654, 0.586427,
		-0.765727, 0.041001, -0.641857,
		-0.453866, -0.741540, 0.494088,
		37.166237, 40.320351, 42.400692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771893, 40.976929, 42.026920>,  <37.483944, 40.839428, 42.054829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771893, 40.976929, 42.026920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.834270, 40.723583, 42.330112>,  <36.871696, 40.571575, 42.512028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.834270, 40.723583, 42.330112>,  <36.771893, 40.976929, 42.026920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834270, 40.723583, 42.330112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474448, 0.625025, 0.619874,
		-0.866361, -0.456286, -0.203031,
		0.155940, -0.633362, 0.757981,
		36.881054, 40.533573, 42.557507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134121, 41.018032, 42.377850>,  <36.771893, 40.976929, 42.026920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134121, 41.018032, 42.377850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.347492, 40.837276, 42.663857>,  <36.475513, 40.728821, 42.835461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.347492, 40.837276, 42.663857>,  <36.134121, 41.018032, 42.377850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347492, 40.837276, 42.663857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601620, 0.391506, 0.696259,
		-0.594568, -0.801571, -0.063028,
		0.533426, -0.451892, 0.715018,
		36.507519, 40.701710, 42.878361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590778, 40.733696, 42.935364>,  <36.134121, 41.018032, 42.377850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590778, 40.733696, 42.935364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.944622, 40.759296, 43.120136>,  <36.156929, 40.774654, 43.230999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.944622, 40.759296, 43.120136>,  <35.590778, 40.733696, 42.935364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944622, 40.759296, 43.120136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453053, 0.352721, 0.818737,
		-0.110535, -0.933537, 0.341013,
		0.884605, 0.063998, 0.461930,
		36.210003, 40.778496, 43.258717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403526, 40.394119, 43.576981>,  <35.590778, 40.733696, 42.935364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403526, 40.394119, 43.576981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.718765, 40.640182, 43.585739>,  <35.907909, 40.787819, 43.590992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.718765, 40.640182, 43.585739>,  <35.403526, 40.394119, 43.576981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718765, 40.640182, 43.585739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346017, 0.413320, 0.842282,
		0.509087, -0.671378, 0.538593,
		0.788100, 0.615157, 0.021892,
		35.955196, 40.824730, 43.592308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614239, 40.355865, 44.233646>,  <35.403526, 40.394119, 43.576981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614239, 40.355865, 44.233646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.829906, 40.671783, 44.116669>,  <35.959309, 40.861332, 44.046482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.829906, 40.671783, 44.116669>,  <35.614239, 40.355865, 44.233646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829906, 40.671783, 44.116669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143606, 0.428369, 0.892120,
		0.829862, -0.439010, 0.344383,
		0.539172, 0.789792, -0.292442,
		35.991657, 40.908722, 44.028934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108196, 40.455372, 44.838623>,  <35.614239, 40.355865, 44.233646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108196, 40.455372, 44.838623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.079971, 40.793987, 44.627567>,  <36.063038, 40.997154, 44.500935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.079971, 40.793987, 44.627567>,  <36.108196, 40.455372, 44.838623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079971, 40.793987, 44.627567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230415, 0.500816, 0.834321,
		0.970531, 0.180448, 0.159716,
		-0.070563, 0.846535, -0.527635,
		36.058804, 41.047947, 44.469276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465275, 40.976231, 45.154648>,  <36.108196, 40.455372, 44.838623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465275, 40.976231, 45.154648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.201878, 41.179417, 44.932529>,  <36.043839, 41.301331, 44.799259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.201878, 41.179417, 44.932529>,  <36.465275, 40.976231, 45.154648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201878, 41.179417, 44.932529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293791, 0.505802, 0.811080,
		0.692872, 0.697233, -0.183832,
		-0.658495, 0.507967, -0.555297,
		36.004330, 41.331806, 44.765942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171032, 41.246437, 45.040596>,  <36.465275, 40.976231, 45.154648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171032, 41.246437, 45.040596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.521725, 41.308159, 45.222816>,  <37.732140, 41.345192, 45.332150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.521725, 41.308159, 45.222816>,  <37.171032, 41.246437, 45.040596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521725, 41.308159, 45.222816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463393, -0.524730, -0.714090,
		0.128849, 0.837166, -0.531556,
		0.876735, 0.154309, 0.455548,
		37.784744, 41.354450, 45.359482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646351, 41.578197, 44.538200>,  <37.171032, 41.246437, 45.040596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646351, 41.578197, 44.538200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.881306, 41.403191, 44.810539>,  <38.022278, 41.298187, 44.973942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.881306, 41.403191, 44.810539>,  <37.646351, 41.578197, 44.538200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881306, 41.403191, 44.810539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493657, -0.472945, -0.729812,
		0.641307, 0.764790, -0.061822,
		0.587392, -0.437515, 0.680847,
		38.057522, 41.271935, 45.014793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273457, 41.533752, 44.175983>,  <37.646351, 41.578197, 44.538200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273457, 41.533752, 44.175983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.356037, 41.291046, 44.483025>,  <38.405586, 41.145420, 44.667248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.356037, 41.291046, 44.483025>,  <38.273457, 41.533752, 44.175983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356037, 41.291046, 44.483025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681280, -0.473949, -0.557880,
		0.702308, 0.638125, 0.315533,
		0.206451, -0.606770, 0.767599,
		38.417973, 41.109016, 44.713303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990726, 41.450401, 44.349846>,  <38.273457, 41.533752, 44.175983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990726, 41.450401, 44.349846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.839420, 41.115200, 44.507153>,  <38.748638, 40.914078, 44.601536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.839420, 41.115200, 44.507153>,  <38.990726, 41.450401, 44.349846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839420, 41.115200, 44.507153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647851, -0.543105, -0.534159,
		0.661216, 0.052728, 0.748340,
		-0.378262, -0.838008, 0.393270,
		38.725941, 40.863796, 44.625134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556236, 40.987507, 44.643707>,  <38.990726, 41.450401, 44.349846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556236, 40.987507, 44.643707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.244217, 40.744991, 44.581829>,  <39.057003, 40.599483, 44.544701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.244217, 40.744991, 44.581829>,  <39.556236, 40.987507, 44.643707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244217, 40.744991, 44.581829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574141, -0.595248, -0.562176,
		0.248758, -0.527345, 0.812421,
		-0.780052, -0.606290, -0.154698,
		39.010201, 40.563103, 44.535419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829292, 40.344803, 44.785107>,  <39.556236, 40.987507, 44.643707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829292, 40.344803, 44.785107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.508156, 40.259785, 44.562298>,  <39.315475, 40.208775, 44.428612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.508156, 40.259785, 44.562298>,  <39.829292, 40.344803, 44.785107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508156, 40.259785, 44.562298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590678, -0.410374, -0.694761,
		-0.080922, -0.886803, 0.455008,
		-0.802839, -0.212542, -0.557023,
		39.267303, 40.196022, 44.395191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853554, 39.582092, 44.524509>,  <39.829292, 40.344803, 44.785107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853554, 39.582092, 44.524509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.605244, 39.771477, 44.274559>,  <39.456257, 39.885109, 44.124588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.605244, 39.771477, 44.274559>,  <39.853554, 39.582092, 44.524509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605244, 39.771477, 44.274559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418174, -0.474228, -0.774750,
		-0.663150, -0.742253, 0.096399,
		-0.620776, 0.473464, -0.624875,
		39.419010, 39.913517, 44.087097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573235, 39.075466, 43.990150>,  <39.853554, 39.582092, 44.524509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573235, 39.075466, 43.990150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.517742, 39.435291, 43.824482>,  <39.484447, 39.651188, 43.725079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.517742, 39.435291, 43.824482>,  <39.573235, 39.075466, 43.990150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517742, 39.435291, 43.824482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449739, -0.315378, -0.835626,
		-0.882320, -0.302195, -0.360817,
		-0.138728, 0.899564, -0.414173,
		39.476124, 39.705162, 43.700230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168957, 38.918179, 43.353233>,  <39.573235, 39.075466, 43.990150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168957, 38.918179, 43.353233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.393173, 39.248852, 43.333694>,  <39.527702, 39.447258, 43.321972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.393173, 39.248852, 43.333694>,  <39.168957, 38.918179, 43.353233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393173, 39.248852, 43.333694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332687, -0.278813, -0.900879,
		-0.758363, 0.488728, -0.431313,
		0.560540, 0.826685, -0.048848,
		39.561337, 39.496857, 43.319038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138653, 39.032288, 42.695671>,  <39.168957, 38.918179, 43.353233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138653, 39.032288, 42.695671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.454933, 39.251381, 42.805058>,  <39.644699, 39.382835, 42.870689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.454933, 39.251381, 42.805058>,  <39.138653, 39.032288, 42.695671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454933, 39.251381, 42.805058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496583, -0.312578, -0.809753,
		-0.358050, 0.776068, -0.519151,
		0.790699, 0.547734, 0.273464,
		39.692142, 39.415703, 42.887096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350018, 39.440388, 42.112511>,  <39.138653, 39.032288, 42.695671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350018, 39.440388, 42.112511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.659801, 39.372387, 42.356255>,  <39.845673, 39.331585, 42.502499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.659801, 39.372387, 42.356255>,  <39.350018, 39.440388, 42.112511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659801, 39.372387, 42.356255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536910, -0.332793, -0.775227,
		0.334579, 0.927550, -0.166459,
		0.774458, -0.170001, 0.609356,
		39.892139, 39.321388, 42.539062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868622, 39.606407, 41.685944>,  <39.350018, 39.440388, 42.112511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868622, 39.606407, 41.685944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.044781, 39.411968, 41.987873>,  <40.150478, 39.295303, 42.169029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.044781, 39.411968, 41.987873>,  <39.868622, 39.606407, 41.685944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044781, 39.411968, 41.987873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630018, -0.431653, -0.645564,
		0.639630, 0.759857, 0.116152,
		0.440399, -0.486100, 0.754822,
		40.176899, 39.266140, 42.214321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539764, 39.691490, 41.586208>,  <39.868622, 39.606407, 41.685944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539764, 39.691490, 41.586208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.530396, 39.362415, 41.813412>,  <40.524776, 39.164970, 41.949734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.530396, 39.362415, 41.813412>,  <40.539764, 39.691490, 41.586208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530396, 39.362415, 41.813412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506428, -0.499634, -0.702777,
		0.861964, 0.271198, 0.428334,
		-0.023418, -0.822689, 0.568009,
		40.523369, 39.115608, 41.983814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239162, 39.567581, 41.737907>,  <40.539764, 39.691490, 41.586208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239162, 39.567581, 41.737907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.000774, 39.247025, 41.758278>,  <40.857742, 39.054691, 41.770500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.000774, 39.247025, 41.758278>,  <41.239162, 39.567581, 41.737907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000774, 39.247025, 41.758278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543274, -0.449100, -0.709340,
		0.591327, -0.395080, 0.703025,
		-0.595974, -0.801387, 0.050928,
		40.821983, 39.006607, 41.773556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.759022, 31.953737, 29.218191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.136122, 31.937107, 29.350548>,  <27.362383, 31.927128, 29.429962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.136122, 31.937107, 29.350548>,  <26.759022, 31.953737, 29.218191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.136122, 31.937107, 29.350548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263128, 0.516863, 0.814626,
		-0.204897, -0.855058, 0.476333,
		0.942752, -0.041578, 0.330893,
		27.418947, 31.924633, 29.449816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.688341, 31.874907, 29.928690>,  <26.759022, 31.953737, 29.218191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.688341, 31.874907, 29.928690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.064703, 32.003582, 29.886330>,  <27.290520, 32.080788, 29.860914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.064703, 32.003582, 29.886330>,  <26.688341, 31.874907, 29.928690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064703, 32.003582, 29.886330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099040, 0.560380, 0.822292,
		0.323867, -0.763210, 0.559124,
		0.940904, 0.321689, -0.105901,
		27.346973, 32.100090, 29.854559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991039, 31.715117, 30.525707>,  <26.688341, 31.874907, 29.928690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991039, 31.715117, 30.525707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.214912, 32.004494, 30.364023>,  <27.349237, 32.178120, 30.267014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.214912, 32.004494, 30.364023>,  <26.991039, 31.715117, 30.525707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.214912, 32.004494, 30.364023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040343, 0.510967, 0.858653,
		0.827723, -0.464267, 0.315167,
		0.559685, 0.723442, -0.404209,
		27.382818, 32.221527, 30.242760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553419, 31.801270, 30.965794>,  <26.991039, 31.715117, 30.525707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553419, 31.801270, 30.965794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.552065, 32.138798, 30.751148>,  <27.551252, 32.341316, 30.622360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.552065, 32.138798, 30.751148>,  <27.553419, 31.801270, 30.965794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552065, 32.138798, 30.751148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163819, 0.529836, 0.832128,
		0.986485, -0.085090, -0.140028,
		-0.003386, 0.843821, -0.536615,
		27.551048, 32.391945, 30.590164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133831, 32.158401, 31.150978>,  <27.553419, 31.801270, 30.965794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133831, 32.158401, 31.150978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.893734, 32.441921, 31.002756>,  <27.749676, 32.612034, 30.913822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.893734, 32.441921, 31.002756>,  <28.133831, 32.158401, 31.150978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893734, 32.441921, 31.002756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085710, 0.517637, 0.851296,
		0.795211, 0.479225, -0.371460,
		-0.600244, 0.708798, -0.370557,
		27.713661, 32.654560, 30.891588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473667, 32.811031, 31.309645>,  <28.133831, 32.158401, 31.150978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473667, 32.811031, 31.309645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.088228, 32.890324, 31.237885>,  <27.856964, 32.937897, 31.194828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.088228, 32.890324, 31.237885>,  <28.473667, 32.811031, 31.309645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.088228, 32.890324, 31.237885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012674, 0.704129, 0.709959,
		0.267053, 0.681842, -0.681010,
		-0.963598, 0.198228, -0.179398,
		27.799149, 32.949791, 31.184065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471922, 33.494724, 31.155096>,  <28.473667, 32.811031, 31.309645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471922, 33.494724, 31.155096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.106512, 33.400822, 31.287981>,  <27.887266, 33.344482, 31.367712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.106512, 33.400822, 31.287981>,  <28.471922, 33.494724, 31.155096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106512, 33.400822, 31.287981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109860, 0.643953, 0.757136,
		-0.391668, 0.728160, -0.562477,
		-0.913525, -0.234752, 0.332211,
		27.832455, 33.330395, 31.387644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312399, 34.100750, 31.488377>,  <28.471922, 33.494724, 31.155096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312399, 34.100750, 31.488377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.057329, 33.827007, 31.629816>,  <27.904287, 33.662762, 31.714680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.057329, 33.827007, 31.629816>,  <28.312399, 34.100750, 31.488377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057329, 33.827007, 31.629816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027127, 0.478699, 0.877560,
		-0.769829, 0.550005, -0.323819,
		-0.637674, -0.684355, 0.353596,
		27.866028, 33.621700, 31.735895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020706, 34.566647, 31.900700>,  <28.312399, 34.100750, 31.488377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020706, 34.566647, 31.900700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.894054, 34.199299, 31.995653>,  <27.818064, 33.978889, 32.052624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.894054, 34.199299, 31.995653>,  <28.020706, 34.566647, 31.900700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894054, 34.199299, 31.995653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124425, 0.288308, 0.949419,
		-0.940354, 0.271076, -0.205554,
		-0.316628, -0.918366, 0.237383,
		27.799067, 33.923790, 32.066868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257536, 34.660343, 32.159164>,  <28.020706, 34.566647, 31.900700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257536, 34.660343, 32.159164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.403028, 34.315861, 32.301167>,  <27.490324, 34.109173, 32.386368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.403028, 34.315861, 32.301167>,  <27.257536, 34.660343, 32.159164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403028, 34.315861, 32.301167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029280, 0.370354, 0.928429,
		-0.931044, -0.348092, 0.109493,
		0.363730, -0.861203, 0.355008,
		27.512148, 34.057499, 32.407669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.873419, 34.482327, 32.732601>,  <27.257536, 34.660343, 32.159164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.873419, 34.482327, 32.732601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.187996, 34.244209, 32.798492>,  <27.376743, 34.101341, 32.838028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.187996, 34.244209, 32.798492>,  <26.873419, 34.482327, 32.732601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.187996, 34.244209, 32.798492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083202, 0.162158, 0.983251,
		-0.612032, -0.786977, 0.077999,
		0.786444, -0.595291, 0.164724,
		27.423929, 34.065620, 32.847908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.776218, 34.041130, 33.349125>,  <26.873419, 34.482327, 32.732601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.776218, 34.041130, 33.349125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.172049, 34.035137, 33.291832>,  <27.409546, 34.031540, 33.257458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.172049, 34.035137, 33.291832>,  <26.776218, 34.041130, 33.349125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172049, 34.035137, 33.291832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143963, 0.129570, 0.981064,
		0.003854, -0.991457, 0.130377,
		0.989575, -0.014988, -0.143232,
		27.468922, 34.030640, 33.248863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049013, 33.638531, 33.921814>,  <26.776218, 34.041130, 33.349125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049013, 33.638531, 33.921814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.351793, 33.851444, 33.770180>,  <27.533461, 33.979191, 33.679199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.351793, 33.851444, 33.770180>,  <27.049013, 33.638531, 33.921814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351793, 33.851444, 33.770180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252216, 0.297180, 0.920908,
		0.602839, -0.792690, 0.090700,
		0.756949, 0.532284, -0.379081,
		27.578878, 34.011127, 33.656456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638474, 33.418915, 34.303955>,  <27.049013, 33.638531, 33.921814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638474, 33.418915, 34.303955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.686733, 33.787918, 34.157307>,  <27.715689, 34.009319, 34.069317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.686733, 33.787918, 34.157307>,  <27.638474, 33.418915, 34.303955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.686733, 33.787918, 34.157307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136939, 0.350326, 0.926563,
		0.983205, -0.161994, -0.084062,
		0.120648, 0.922513, -0.366625,
		27.722927, 34.064671, 34.047318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243000, 33.640697, 34.586842>,  <27.638474, 33.418915, 34.303955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243000, 33.640697, 34.586842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.058029, 33.968067, 34.450401>,  <27.947046, 34.164490, 34.368538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.058029, 33.968067, 34.450401>,  <28.243000, 33.640697, 34.586842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058029, 33.968067, 34.450401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218156, 0.477897, 0.850895,
		0.859400, 0.319064, -0.399536,
		-0.462428, 0.818421, -0.341099,
		27.919300, 34.213593, 34.348072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650732, 34.177162, 34.906029>,  <28.243000, 33.640697, 34.586842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650732, 34.177162, 34.906029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.323256, 34.365631, 34.774734>,  <28.126770, 34.478714, 34.695957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.323256, 34.365631, 34.774734>,  <28.650732, 34.177162, 34.906029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323256, 34.365631, 34.774734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050441, 0.628401, 0.776252,
		0.572013, 0.618955, -0.538234,
		-0.818692, 0.471176, -0.328233,
		28.077648, 34.506985, 34.676266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933020, 34.885117, 34.718887>,  <28.650732, 34.177162, 34.906029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933020, 34.885117, 34.718887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.541479, 34.877960, 34.800404>,  <28.306555, 34.873665, 34.849312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.541479, 34.877960, 34.800404>,  <28.933020, 34.885117, 34.718887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541479, 34.877960, 34.800404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180707, 0.391341, 0.902329,
		-0.095895, 0.920072, -0.379831,
		-0.978851, -0.017891, 0.203791,
		28.247824, 34.872593, 34.861542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691305, 35.540649, 35.008919>,  <28.933020, 34.885117, 34.718887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691305, 35.540649, 35.008919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.390762, 35.310066, 35.137394>,  <28.210438, 35.171719, 35.214481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.390762, 35.310066, 35.137394>,  <28.691305, 35.540649, 35.008919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390762, 35.310066, 35.137394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037449, 0.448698, 0.892898,
		-0.658834, 0.682913, -0.315544,
		-0.751356, -0.576455, 0.321192,
		28.165356, 35.137131, 35.233753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393900, 35.438465, 34.996315>,  <28.691305, 35.540649, 35.008919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393900, 35.438465, 34.996315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.766811, 35.575527, 34.949947>,  <29.990559, 35.657764, 34.922127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.766811, 35.575527, 34.949947>,  <29.393900, 35.438465, 34.996315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766811, 35.575527, 34.949947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173005, -0.703794, -0.689016,
		-0.317682, 0.622301, -0.715415,
		0.932281, 0.342658, -0.115922,
		30.046495, 35.678326, 34.915173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591251, 35.612534, 34.200638>,  <29.393900, 35.438465, 34.996315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591251, 35.612534, 34.200638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.947414, 35.573997, 34.378578>,  <30.161112, 35.550877, 34.485340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.947414, 35.573997, 34.378578>,  <29.591251, 35.612534, 34.200638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947414, 35.573997, 34.378578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331645, -0.532056, -0.779056,
		0.311741, 0.841210, -0.441796,
		0.890410, -0.096344, 0.444846,
		30.214537, 35.545094, 34.512032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048244, 35.650078, 33.710163>,  <29.591251, 35.612534, 34.200638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048244, 35.650078, 33.710163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.295872, 35.501621, 33.987003>,  <30.444448, 35.412548, 34.153107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.295872, 35.501621, 33.987003>,  <30.048244, 35.650078, 33.710163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295872, 35.501621, 33.987003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473288, -0.526949, -0.705920,
		0.626698, 0.764578, -0.150563,
		0.619070, -0.371139, 0.692104,
		30.481592, 35.390278, 34.194633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720612, 35.738655, 33.455353>,  <30.048244, 35.650078, 33.710163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720612, 35.738655, 33.455353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.765703, 35.454845, 33.733597>,  <30.792759, 35.284561, 33.900543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.765703, 35.454845, 33.733597>,  <30.720612, 35.738655, 33.455353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765703, 35.454845, 33.733597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412899, -0.603316, -0.682294,
		0.903774, 0.364132, 0.224948,
		0.112730, -0.709520, 0.695611,
		30.799522, 35.241989, 33.942280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410357, 35.510727, 33.371559>,  <30.720612, 35.738655, 33.455353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410357, 35.510727, 33.371559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.220118, 35.203884, 33.543770>,  <31.105974, 35.019779, 33.647095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.220118, 35.203884, 33.543770>,  <31.410357, 35.510727, 33.371559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220118, 35.203884, 33.543770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472566, -0.635605, -0.610482,
		0.741948, -0.086894, 0.664802,
		-0.475599, -0.767108, 0.430523,
		31.077438, 34.973751, 33.672928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887003, 35.048409, 33.453018>,  <31.410357, 35.510727, 33.371559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887003, 35.048409, 33.453018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.553749, 34.833088, 33.503799>,  <31.353798, 34.703896, 33.534267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.553749, 34.833088, 33.503799>,  <31.887003, 35.048409, 33.453018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553749, 34.833088, 33.503799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391310, -0.735936, -0.552516,
		0.390854, -0.410640, 0.823776,
		-0.833133, -0.538305, 0.126956,
		31.303810, 34.671597, 33.541885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078686, 34.331570, 33.663174>,  <31.887003, 35.048409, 33.453018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078686, 34.331570, 33.663174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.714886, 34.314621, 33.497757>,  <31.496607, 34.304451, 33.398506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.714886, 34.314621, 33.497757>,  <32.078686, 34.331570, 33.663174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714886, 34.314621, 33.497757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312096, -0.726737, -0.611923,
		-0.274604, -0.685608, 0.674192,
		-0.909499, -0.042377, -0.413540,
		31.442036, 34.301907, 33.373695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943666, 33.565269, 33.427746>,  <32.078686, 34.331570, 33.663174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943666, 33.565269, 33.427746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.673210, 33.777855, 33.223637>,  <31.510937, 33.905407, 33.101170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.673210, 33.777855, 33.223637>,  <31.943666, 33.565269, 33.427746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673210, 33.777855, 33.223637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118170, -0.605388, -0.787109,
		-0.727238, -0.592493, 0.346522,
		-0.676136, 0.531467, -0.510277,
		31.470369, 33.937294, 33.070553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487377, 33.089851, 33.081112>,  <31.943666, 33.565269, 33.427746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487377, 33.089851, 33.081112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.419249, 33.437027, 32.894493>,  <31.378370, 33.645332, 32.782520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.419249, 33.437027, 32.894493>,  <31.487377, 33.089851, 33.081112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419249, 33.437027, 32.894493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005757, -0.474334, -0.880326,
		-0.985372, -0.147253, 0.085787,
		-0.170323, 0.867942, -0.466547,
		31.368153, 33.697411, 32.754528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972670, 32.932232, 32.632465>,  <31.487377, 33.089851, 33.081112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972670, 32.932232, 32.632465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.149551, 33.258556, 32.483387>,  <31.255680, 33.454353, 32.393940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.149551, 33.258556, 32.483387>,  <30.972670, 32.932232, 32.632465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149551, 33.258556, 32.483387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029721, -0.401976, -0.915168,
		-0.896422, 0.415767, -0.153508,
		0.442203, 0.815814, -0.372697,
		31.282213, 33.503300, 32.371578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733145, 32.884983, 32.006027>,  <30.972670, 32.932232, 32.632465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733145, 32.884983, 32.006027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.030622, 33.151226, 31.981108>,  <31.209110, 33.310974, 31.966158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.030622, 33.151226, 31.981108>,  <30.733145, 32.884983, 32.006027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030622, 33.151226, 31.981108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182815, -0.292118, -0.938747,
		-0.643037, 0.686753, -0.338930,
		0.743695, 0.665610, -0.062294,
		31.253731, 33.350910, 31.962420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576189, 33.272167, 31.447199>,  <30.733145, 32.884983, 32.006027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576189, 33.272167, 31.447199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.969410, 33.305325, 31.512602>,  <31.205343, 33.325218, 31.551844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.969410, 33.305325, 31.512602>,  <30.576189, 33.272167, 31.447199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969410, 33.305325, 31.512602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176133, -0.179757, -0.967815,
		-0.050836, 0.980212, -0.191311,
		0.983053, 0.082896, 0.163509,
		31.264326, 33.330193, 31.561655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787823, 33.676937, 30.875793>,  <30.576189, 33.272167, 31.447199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787823, 33.676937, 30.875793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.115696, 33.510452, 31.033220>,  <31.312420, 33.410561, 31.127676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.115696, 33.510452, 31.033220>,  <30.787823, 33.676937, 30.875793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115696, 33.510452, 31.033220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320563, -0.236107, -0.917329,
		0.474724, 0.878080, -0.060111,
		0.819681, -0.416208, 0.393566,
		31.361601, 33.385590, 31.151291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331717, 33.887051, 30.444309>,  <30.787823, 33.676937, 30.875793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331717, 33.887051, 30.444309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.471704, 33.552219, 30.612511>,  <31.555698, 33.351322, 30.713432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.471704, 33.552219, 30.612511>,  <31.331717, 33.887051, 30.444309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471704, 33.552219, 30.612511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272191, -0.338654, -0.900680,
		0.896344, 0.429670, 0.109325,
		0.349971, -0.837077, 0.420503,
		31.576696, 33.301098, 30.738661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034534, 33.822605, 30.170200>,  <31.331717, 33.887051, 30.444309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034534, 33.822605, 30.170200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.921858, 33.460571, 30.297626>,  <31.854254, 33.243351, 30.374083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.921858, 33.460571, 30.297626>,  <32.034534, 33.822605, 30.170200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921858, 33.460571, 30.297626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406194, -0.413274, -0.814992,
		0.869286, -0.100174, 0.484052,
		-0.281687, -0.905080, 0.318563,
		31.837351, 33.189049, 30.393196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666824, 33.562222, 30.046497>,  <32.034534, 33.822605, 30.170200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666824, 33.562222, 30.046497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.360901, 33.304871, 30.059954>,  <32.177345, 33.150459, 30.068027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.360901, 33.304871, 30.059954>,  <32.666824, 33.562222, 30.046497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360901, 33.304871, 30.059954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246549, -0.340524, -0.907335,
		0.595214, -0.685646, 0.419060,
		-0.764810, -0.643377, 0.033640,
		32.131458, 33.111858, 30.070045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962868, 32.897457, 29.716686>,  <32.666824, 33.562222, 30.046497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962868, 32.897457, 29.716686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.565674, 32.850353, 29.720978>,  <32.327358, 32.822090, 29.723553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.565674, 32.850353, 29.720978>,  <32.962868, 32.897457, 29.716686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565674, 32.850353, 29.720978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054465, -0.536044, -0.842431,
		0.104954, -0.835937, 0.538697,
		-0.992985, -0.117756, 0.010731,
		32.267780, 32.815025, 29.724197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849777, 32.119617, 29.465332>,  <32.962868, 32.897457, 29.716686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849777, 32.119617, 29.465332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.500618, 32.303761, 29.400682>,  <32.291122, 32.414246, 29.361893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.500618, 32.303761, 29.400682>,  <32.849777, 32.119617, 29.465332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500618, 32.303761, 29.400682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184867, -0.618626, -0.763627,
		-0.451528, -0.636687, 0.625101,
		-0.872895, 0.460360, -0.161625,
		32.238750, 32.441868, 29.352196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378895, 31.582325, 29.473007>,  <32.849777, 32.119617, 29.465332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378895, 31.582325, 29.473007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.205940, 31.886852, 29.279745>,  <32.102169, 32.069569, 29.163788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.205940, 31.886852, 29.279745>,  <32.378895, 31.582325, 29.473007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205940, 31.886852, 29.279745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388876, -0.640886, -0.661846,
		-0.813524, -0.098281, 0.573166,
		-0.432381, 0.761319, -0.483157,
		32.076225, 32.115250, 29.134798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675180, 31.375677, 29.315805>,  <32.378895, 31.582325, 29.473007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675180, 31.375677, 29.315805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.753643, 31.668056, 29.054352>,  <31.800720, 31.843485, 28.897480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.753643, 31.668056, 29.054352>,  <31.675180, 31.375677, 29.315805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753643, 31.668056, 29.054352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332376, -0.577558, -0.745623,
		-0.922523, 0.363513, 0.129657,
		0.196159, 0.730948, -0.653633,
		31.812490, 31.887341, 28.858261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147316, 31.304470, 28.818645>,  <31.675180, 31.375677, 29.315805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147316, 31.304470, 28.818645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.422749, 31.536661, 28.644794>,  <31.588009, 31.675976, 28.540483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.422749, 31.536661, 28.644794>,  <31.147316, 31.304470, 28.818645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422749, 31.536661, 28.644794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290616, -0.328218, -0.898785,
		-0.664379, 0.745196, -0.057308,
		0.688581, 0.580479, -0.434627,
		31.629322, 31.710804, 28.514406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765175, 31.679354, 28.330196>,  <31.147316, 31.304470, 28.818645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765175, 31.679354, 28.330196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.140411, 31.711935, 28.195526>,  <31.365553, 31.731483, 28.114725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.140411, 31.711935, 28.195526>,  <30.765175, 31.679354, 28.330196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140411, 31.711935, 28.195526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301152, -0.288457, -0.908900,
		-0.171150, 0.954022, -0.246069,
		0.938091, 0.081454, -0.336675,
		31.421839, 31.736372, 28.094524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724520, 32.048599, 27.741896>,  <30.765175, 31.679354, 28.330196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724520, 32.048599, 27.741896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.051458, 31.819098, 27.720930>,  <31.247622, 31.681396, 27.708351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.051458, 31.819098, 27.720930>,  <30.724520, 32.048599, 27.741896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051458, 31.819098, 27.720930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284229, -0.322414, -0.902919,
		0.501156, 0.752897, -0.426602,
		0.817347, -0.573756, -0.052415,
		31.296663, 31.646971, 27.705206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071505, 32.268700, 27.092894>,  <30.724520, 32.048599, 27.741896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071505, 32.268700, 27.092894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.151114, 31.895626, 27.213217>,  <31.198879, 31.671782, 27.285410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.151114, 31.895626, 27.213217>,  <31.071505, 32.268700, 27.092894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151114, 31.895626, 27.213217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250629, -0.345181, -0.904453,
		0.947405, 0.104614, -0.302457,
		0.199020, -0.932688, 0.300807,
		31.210819, 31.615820, 27.303459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.583553, 38.751064, 48.016376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.256393, 38.707893, 47.790314>,  <40.060097, 38.681992, 47.654678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.256393, 38.707893, 47.790314>,  <40.583553, 38.751064, 48.016376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256393, 38.707893, 47.790314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402834, 0.808750, 0.428542,
		0.410820, 0.578166, -0.704948,
		-0.817895, -0.107923, -0.565155,
		40.011024, 38.675518, 47.620766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275635, 39.422741, 47.866768>,  <40.583553, 38.751064, 48.016376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275635, 39.422741, 47.866768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.948441, 39.216496, 47.764755>,  <39.752125, 39.092747, 47.703548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.948441, 39.216496, 47.764755>,  <40.275635, 39.422741, 47.866768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948441, 39.216496, 47.764755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573426, 0.766070, 0.290377,
		0.045646, 0.383764, -0.922302,
		-0.817985, -0.515618, -0.255028,
		39.703045, 39.061810, 47.688248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899235, 39.920326, 47.481647>,  <40.275635, 39.422741, 47.866768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899235, 39.920326, 47.481647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.638195, 39.642006, 47.601631>,  <39.481571, 39.475014, 47.673622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.638195, 39.642006, 47.601631>,  <39.899235, 39.920326, 47.481647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638195, 39.642006, 47.601631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590554, 0.715109, 0.373985,
		-0.474725, 0.066918, -0.877587,
		-0.652597, -0.695802, 0.299961,
		39.442417, 39.433266, 47.691620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229370, 40.053013, 47.273346>,  <39.899235, 39.920326, 47.481647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229370, 40.053013, 47.273346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.175983, 39.821529, 47.595161>,  <39.143951, 39.682640, 47.788250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.175983, 39.821529, 47.595161>,  <39.229370, 40.053013, 47.273346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175983, 39.821529, 47.595161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665252, 0.654040, 0.360099,
		-0.734593, -0.487159, -0.472282,
		-0.133466, -0.578712, 0.804536,
		39.135944, 39.647915, 47.836521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588608, 40.275223, 47.483219>,  <39.229370, 40.053013, 47.273346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588608, 40.275223, 47.483219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.745358, 40.087017, 47.799461>,  <38.839405, 39.974094, 47.989208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.745358, 40.087017, 47.799461>,  <38.588608, 40.275223, 47.483219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745358, 40.087017, 47.799461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462188, 0.642348, 0.611368,
		-0.795499, -0.604986, 0.034253,
		0.391872, -0.470511, 0.790605,
		38.862919, 39.945862, 48.036644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070236, 40.150093, 47.870586>,  <38.588608, 40.275223, 47.483219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070236, 40.150093, 47.870586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.388302, 40.136200, 48.112747>,  <38.579140, 40.127865, 48.258045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.388302, 40.136200, 48.112747>,  <38.070236, 40.150093, 47.870586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388302, 40.136200, 48.112747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537445, 0.422003, 0.730114,
		-0.280839, -0.905929, 0.316894,
		0.795162, -0.034732, 0.605402,
		38.626850, 40.125782, 48.294369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870243, 40.000298, 48.627556>,  <38.070236, 40.150093, 47.870586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870243, 40.000298, 48.627556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.238739, 40.132313, 48.709915>,  <38.459835, 40.211521, 48.759331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.238739, 40.132313, 48.709915>,  <37.870243, 40.000298, 48.627556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238739, 40.132313, 48.709915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296223, 0.252130, 0.921239,
		0.252130, -0.909673, 0.330037,
		-0.921239, -0.330037, -0.205896,
		38.515110, 40.231323, 48.771683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994160, 39.693394, 49.284523>,  <37.870243, 40.000298, 48.627556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994160, 39.693394, 49.284523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.260174, 39.988003, 49.235111>,  <38.419781, 40.164768, 49.205463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.260174, 39.988003, 49.235111>,  <37.994160, 39.693394, 49.284523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260174, 39.988003, 49.235111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189011, 0.326023, 0.926274,
		0.722500, -0.592654, 0.356027,
		0.665033, 0.736526, -0.123534,
		38.459682, 40.208961, 49.198051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375214, 39.809975, 49.961025>,  <37.994160, 39.693394, 49.284523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375214, 39.809975, 49.961025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.404175, 40.139973, 49.736835>,  <38.421551, 40.337971, 49.602322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.404175, 40.139973, 49.736835>,  <38.375214, 39.809975, 49.961025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404175, 40.139973, 49.736835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444246, 0.529808, 0.722460,
		0.892974, 0.196680, 0.404864,
		0.072407, 0.824997, -0.560479,
		38.425896, 40.387470, 49.568691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614918, 40.194065, 50.428314>,  <38.375214, 39.809975, 49.961025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614918, 40.194065, 50.428314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.487900, 40.452286, 50.150486>,  <38.411690, 40.607216, 49.983788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.487900, 40.452286, 50.150486>,  <38.614918, 40.194065, 50.428314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487900, 40.452286, 50.150486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362511, 0.594198, 0.717994,
		0.876212, 0.479789, 0.045331,
		-0.317550, 0.645548, -0.694572,
		38.392635, 40.645950, 49.942116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831078, 40.919178, 50.585243>,  <38.614918, 40.194065, 50.428314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831078, 40.919178, 50.585243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.526920, 40.972992, 50.331093>,  <38.344425, 41.005280, 50.178600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.526920, 40.972992, 50.331093>,  <38.831078, 40.919178, 50.585243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526920, 40.972992, 50.331093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409639, 0.659818, 0.629949,
		0.503988, 0.739283, -0.446606,
		-0.760389, 0.134539, -0.635380,
		38.298805, 41.013355, 50.140480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542973, 41.634956, 50.784889>,  <38.831078, 40.919178, 50.585243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542973, 41.634956, 50.784889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.269638, 41.460930, 50.550358>,  <38.105637, 41.356514, 50.409641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.269638, 41.460930, 50.550358>,  <38.542973, 41.634956, 50.784889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269638, 41.460930, 50.550358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729136, 0.448077, 0.517289,
		0.037665, 0.780990, -0.623406,
		-0.683332, -0.435064, -0.586325,
		38.064640, 41.330410, 50.374462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030743, 42.046745, 50.346901>,  <38.542973, 41.634956, 50.784889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030743, 42.046745, 50.346901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.638054, 41.978386, 50.313400>,  <37.402439, 41.937370, 50.293301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.638054, 41.978386, 50.313400>,  <38.030743, 42.046745, 50.346901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638054, 41.978386, 50.313400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186126, 0.770254, 0.609972,
		-0.039733, 0.614411, -0.787985,
		-0.981722, -0.170901, -0.083753,
		37.343536, 41.927116, 50.288273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720146, 42.733212, 50.367531>,  <38.030743, 42.046745, 50.346901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720146, 42.733212, 50.367531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.402676, 42.502064, 50.443569>,  <37.212193, 42.363377, 50.489193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.402676, 42.502064, 50.443569>,  <37.720146, 42.733212, 50.367531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402676, 42.502064, 50.443569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473275, 0.782881, 0.403865,
		-0.382206, 0.230571, -0.894850,
		-0.793681, -0.577870, 0.190098,
		37.164570, 42.328701, 50.500599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742352, 43.425209, 50.189007>,  <37.720146, 42.733212, 50.367531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742352, 43.425209, 50.189007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.590290, 43.786404, 50.108906>,  <37.499054, 44.003120, 50.060844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.590290, 43.786404, 50.108906>,  <37.742352, 43.425209, 50.189007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590290, 43.786404, 50.108906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233263, -0.115912, -0.965481,
		-0.895027, -0.413740, -0.166569,
		-0.380150, 0.902986, -0.200255,
		37.476246, 44.057301, 50.048828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197006, 43.332169, 49.664871>,  <37.742352, 43.425209, 50.189007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197006, 43.332169, 49.664871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.316441, 43.711468, 49.621651>,  <37.388103, 43.939045, 49.595718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.316441, 43.711468, 49.621651>,  <37.197006, 43.332169, 49.664871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316441, 43.711468, 49.621651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016519, -0.108067, -0.994006,
		-0.954239, 0.298585, -0.016604,
		0.298590, 0.948245, -0.108054,
		37.406017, 43.995941, 49.589233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764732, 43.543259, 49.206440>,  <37.197006, 43.332169, 49.664871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764732, 43.543259, 49.206440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.080975, 43.787918, 49.194859>,  <37.270718, 43.934711, 49.187912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.080975, 43.787918, 49.194859>,  <36.764732, 43.543259, 49.206440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080975, 43.787918, 49.194859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112648, -0.191753, -0.974957,
		-0.601878, 0.767543, -0.220501,
		0.790603, 0.611645, -0.028949,
		37.318157, 43.971413, 49.186172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644505, 44.026173, 48.595116>,  <36.764732, 43.543259, 49.206440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644505, 44.026173, 48.595116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.033512, 44.023739, 48.688221>,  <37.266914, 44.022278, 48.744083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.033512, 44.023739, 48.688221>,  <36.644505, 44.026173, 48.595116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033512, 44.023739, 48.688221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228385, -0.169676, -0.958671,
		0.045330, 0.985481, -0.163622,
		0.972515, -0.006088, 0.232761,
		37.325268, 44.021912, 48.758049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921143, 44.308002, 48.058636>,  <36.644505, 44.026173, 48.595116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921143, 44.308002, 48.058636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.240555, 44.127289, 48.217754>,  <37.432201, 44.018860, 48.313225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.240555, 44.127289, 48.217754>,  <36.921143, 44.308002, 48.058636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240555, 44.127289, 48.217754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316902, -0.246337, -0.915910,
		0.511783, 0.857445, -0.053538,
		0.798531, -0.451781, 0.397797,
		37.480114, 43.991753, 48.337093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393288, 44.397896, 47.584969>,  <36.921143, 44.308002, 48.058636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393288, 44.397896, 47.584969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.554874, 44.119774, 47.822750>,  <37.651825, 43.952900, 47.965420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.554874, 44.119774, 47.822750>,  <37.393288, 44.397896, 47.584969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554874, 44.119774, 47.822750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433984, -0.426381, -0.793635,
		0.805278, 0.578580, 0.129508,
		0.403962, -0.695301, 0.594450,
		37.676064, 43.911182, 48.001083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108269, 44.254997, 47.359207>,  <37.393288, 44.397896, 47.584969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108269, 44.254997, 47.359207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.987598, 43.939552, 47.573528>,  <37.915195, 43.750286, 47.702122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.987598, 43.939552, 47.573528>,  <38.108269, 44.254997, 47.359207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987598, 43.939552, 47.573528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403262, -0.614784, -0.677805,
		0.863930, 0.011596, 0.503479,
		-0.301671, -0.788610, 0.535807,
		37.897099, 43.702969, 47.734272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642220, 43.856686, 47.389091>,  <38.108269, 44.254997, 47.359207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642220, 43.856686, 47.389091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.341820, 43.597942, 47.442116>,  <38.161579, 43.442696, 47.473930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.341820, 43.597942, 47.442116>,  <38.642220, 43.856686, 47.389091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341820, 43.597942, 47.442116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380308, -0.587850, -0.714001,
		0.539784, -0.485801, 0.687481,
		-0.750999, -0.646861, 0.132558,
		38.116520, 43.403885, 47.481884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892265, 43.139084, 47.227497>,  <38.642220, 43.856686, 47.389091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892265, 43.139084, 47.227497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.494740, 43.095402, 47.219463>,  <38.256222, 43.069191, 47.214642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.494740, 43.095402, 47.219463>,  <38.892265, 43.139084, 47.227497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494740, 43.095402, 47.219463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081916, -0.598966, -0.796574,
		0.074962, -0.793293, 0.604207,
		-0.993816, -0.109207, -0.020084,
		38.196594, 43.062641, 47.213440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736290, 42.443821, 47.276501>,  <38.892265, 43.139084, 47.227497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736290, 42.443821, 47.276501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.407547, 42.592648, 47.103935>,  <38.210300, 42.681946, 47.000397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.407547, 42.592648, 47.103935>,  <38.736290, 42.443821, 47.276501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407547, 42.592648, 47.103935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061548, -0.694852, -0.716514,
		-0.566366, -0.615422, 0.548166,
		-0.821853, 0.372070, -0.431419,
		38.160992, 42.704269, 46.974510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468719, 41.819252, 47.033455>,  <38.736290, 42.443821, 47.276501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468719, 41.819252, 47.033455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.230804, 42.087490, 46.856129>,  <38.088055, 42.248432, 46.749733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.230804, 42.087490, 46.856129>,  <38.468719, 41.819252, 47.033455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230804, 42.087490, 46.856129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191900, -0.653968, -0.731779,
		-0.780640, -0.350183, 0.517661,
		-0.594790, 0.670595, -0.443313,
		38.052368, 42.288670, 46.723133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894703, 41.465641, 46.887089>,  <38.468719, 41.819252, 47.033455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894703, 41.465641, 46.887089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.869560, 41.779331, 46.640175>,  <37.854477, 41.967545, 46.492027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.869560, 41.779331, 46.640175>,  <37.894703, 41.465641, 46.887089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869560, 41.779331, 46.640175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297896, -0.605056, -0.738354,
		-0.952527, 0.137479, 0.271646,
		-0.062853, 0.784224, -0.617286,
		37.850704, 42.014599, 46.454990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227570, 41.364151, 46.501328>,  <37.894703, 41.465641, 46.887089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227570, 41.364151, 46.501328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.498596, 41.583786, 46.305611>,  <37.661213, 41.715569, 46.188183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.498596, 41.583786, 46.305611>,  <37.227570, 41.364151, 46.501328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498596, 41.583786, 46.305611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069970, -0.614138, -0.786091,
		-0.732125, 0.566865, -0.377700,
		0.677567, 0.549089, -0.489290,
		37.701866, 41.748512, 46.158825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038540, 41.240894, 45.745777>,  <37.227570, 41.364151, 46.501328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038540, 41.240894, 45.745777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.403820, 41.401581, 45.718365>,  <37.622986, 41.497993, 45.701920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.403820, 41.401581, 45.718365>,  <37.038540, 41.240894, 45.745777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403820, 41.401581, 45.718365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150283, -0.488280, -0.859650,
		-0.378792, 0.774732, -0.506267,
		0.913199, 0.401712, -0.068528,
		37.677780, 41.522095, 45.697807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641857, 41.691589, 45.319752>,  <37.038540, 41.240894, 45.745777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641857, 41.691589, 45.319752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.279808, 41.669518, 45.151131>,  <36.062580, 41.656277, 45.049957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.279808, 41.669518, 45.151131>,  <36.641857, 41.691589, 45.319752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279808, 41.669518, 45.151131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384052, 0.531436, 0.755037,
		0.182370, 0.845300, -0.502205,
		-0.905122, -0.055177, -0.421557,
		36.008270, 41.652966, 45.024662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463467, 42.400429, 45.302444>,  <36.641857, 41.691589, 45.319752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463467, 42.400429, 45.302444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129612, 42.181767, 45.275478>,  <35.929298, 42.050568, 45.259296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129612, 42.181767, 45.275478>,  <36.463467, 42.400429, 45.302444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129612, 42.181767, 45.275478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364832, 0.456977, 0.811215,
		-0.412649, 0.701666, -0.580849,
		-0.834636, -0.546660, -0.067419,
		35.879223, 42.017769, 45.255253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868130, 42.941410, 45.226154>,  <36.463467, 42.400429, 45.302444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868130, 42.941410, 45.226154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.694218, 42.610004, 45.367310>,  <35.589870, 42.411160, 45.452003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.694218, 42.610004, 45.367310>,  <35.868130, 42.941410, 45.226154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694218, 42.610004, 45.367310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433487, 0.536027, 0.724406,
		-0.789340, 0.161983, -0.592203,
		-0.434778, -0.828515, 0.352890,
		35.563786, 42.361450, 45.473175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171497, 43.142967, 45.507229>,  <35.868130, 42.941410, 45.226154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171497, 43.142967, 45.507229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.254047, 42.801983, 45.699360>,  <35.303577, 42.597393, 45.814640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.254047, 42.801983, 45.699360>,  <35.171497, 43.142967, 45.507229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254047, 42.801983, 45.699360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558807, 0.300283, 0.773023,
		-0.803208, -0.427946, -0.414390,
		0.206378, -0.852462, 0.480329,
		35.315960, 42.546246, 45.843460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606400, 42.857662, 45.762512>,  <35.171497, 43.142967, 45.507229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606400, 42.857662, 45.762512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898647, 42.690784, 45.978714>,  <35.073997, 42.590660, 46.108433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898647, 42.690784, 45.978714>,  <34.606400, 42.857662, 45.762512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898647, 42.690784, 45.978714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512710, 0.187560, 0.837824,
		-0.450910, -0.889253, -0.076864,
		0.730622, -0.417193, 0.540502,
		35.117832, 42.565628, 46.140865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191948, 42.576298, 46.256397>,  <34.606400, 42.857662, 45.762512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191948, 42.576298, 46.256397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.565681, 42.574951, 46.398952>,  <34.789921, 42.574142, 46.484486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.565681, 42.574951, 46.398952>,  <34.191948, 42.576298, 46.256397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565681, 42.574951, 46.398952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342990, 0.263220, 0.901706,
		-0.096847, -0.964730, 0.244779,
		0.934333, -0.003371, 0.356385,
		34.845982, 42.573940, 46.505867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131123, 42.284729, 46.833340>,  <34.191948, 42.576298, 46.256397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131123, 42.284729, 46.833340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.476639, 42.482872, 46.870190>,  <34.683949, 42.601757, 46.892300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.476639, 42.482872, 46.870190>,  <34.131123, 42.284729, 46.833340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476639, 42.482872, 46.870190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316805, 0.391793, 0.863790,
		0.391793, -0.775318, 0.495359,
		-0.863790, -0.495359, -0.092123,
		34.735775, 42.631481, 46.897827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027924, 41.622807, 46.994316>,  <34.131123, 42.284729, 46.833340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027924, 41.622807, 46.994316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.668243, 41.504440, 47.123234>,  <33.452435, 41.433418, 47.200584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.668243, 41.504440, 47.123234>,  <34.027924, 41.622807, 46.994316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668243, 41.504440, 47.123234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019079, -0.762421, -0.646800,
		0.437124, -0.575452, 0.691214,
		-0.899199, -0.295919, 0.322294,
		33.398483, 41.415665, 47.219921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063957, 40.917492, 47.251247>,  <34.027924, 41.622807, 46.994316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063957, 40.917492, 47.251247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.678181, 40.969269, 47.159077>,  <33.446716, 41.000336, 47.103775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.678181, 40.969269, 47.159077>,  <34.063957, 40.917492, 47.251247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678181, 40.969269, 47.159077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079189, -0.690284, -0.719192,
		-0.252151, -0.711867, 0.655489,
		-0.964442, 0.129438, -0.230428,
		33.388847, 41.008099, 47.089947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760521, 40.262127, 47.231636>,  <34.063957, 40.917492, 47.251247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760521, 40.262127, 47.231636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.508011, 40.467495, 46.999119>,  <33.356506, 40.590714, 46.859608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.508011, 40.467495, 46.999119>,  <33.760521, 40.262127, 47.231636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508011, 40.467495, 46.999119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048255, -0.774059, -0.631272,
		-0.774059, -0.370454, 0.513416,
		0.631272, -0.513416, 0.581291,
		33.318630, 40.621521, 46.824730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312672, 39.734505, 47.000546>,  <33.760521, 40.262127, 47.231636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312672, 39.734505, 47.000546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252102, 40.047363, 46.758778>,  <33.215759, 40.235077, 46.613716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252102, 40.047363, 46.758778>,  <33.312672, 39.734505, 47.000546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252102, 40.047363, 46.758778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131081, -0.621955, -0.772003,
		-0.979740, -0.037669, 0.196701,
		-0.151420, 0.782146, -0.604417,
		33.206676, 40.282005, 46.577454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810986, 39.430603, 46.553635>,  <33.312672, 39.734505, 47.000546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810986, 39.430603, 46.553635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.014675, 39.724815, 46.374889>,  <33.136890, 39.901340, 46.267643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.014675, 39.724815, 46.374889>,  <32.810986, 39.430603, 46.553635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014675, 39.724815, 46.374889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118660, -0.574275, -0.810018,
		-0.852414, 0.359457, -0.379713,
		0.509226, 0.735526, -0.446867,
		33.167442, 39.945473, 46.240829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523266, 39.632420, 45.839455>,  <32.810986, 39.430603, 46.553635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523266, 39.632420, 45.839455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.900772, 39.764656, 45.838081>,  <33.127277, 39.843998, 45.837257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.900772, 39.764656, 45.838081>,  <32.523266, 39.632420, 45.839455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900772, 39.764656, 45.838081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195507, -0.566448, -0.800571,
		-0.266611, 0.754881, -0.599228,
		0.943767, 0.330594, -0.003437,
		33.183903, 39.863834, 45.837051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660122, 39.806683, 45.191242>,  <32.523266, 39.632420, 45.839455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660122, 39.806683, 45.191242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.027710, 39.770542, 45.344780>,  <33.248260, 39.748856, 45.436901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.027710, 39.770542, 45.344780>,  <32.660122, 39.806683, 45.191242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027710, 39.770542, 45.344780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315794, -0.414337, -0.853580,
		0.236166, 0.905627, -0.352228,
		0.918967, -0.090355, 0.383844,
		33.303398, 39.743435, 45.459934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.251980, 38.710819, 50.886505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.251701, 39.065880, 50.702297>,  <36.251534, 39.278915, 50.591774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.251701, 39.065880, 50.702297>,  <36.251980, 38.710819, 50.886505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251701, 39.065880, 50.702297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174703, -0.453330, -0.874054,
		-0.984621, -0.081062, -0.154760,
		-0.000695, 0.887649, -0.460520,
		36.251492, 39.332176, 50.564140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726662, 38.851284, 50.309765>,  <36.251980, 38.710819, 50.886505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726662, 38.851284, 50.309765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.077282, 39.038567, 50.265152>,  <36.287655, 39.150936, 50.238384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.077282, 39.038567, 50.265152>,  <35.726662, 38.851284, 50.309765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077282, 39.038567, 50.265152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195424, -0.557990, -0.806509,
		-0.439849, 0.685150, -0.580606,
		0.876551, 0.468207, -0.111537,
		36.340248, 39.179028, 50.231689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814816, 39.179207, 49.690311>,  <35.726662, 38.851284, 50.309765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814816, 39.179207, 49.690311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.195660, 39.112576, 49.792873>,  <36.424164, 39.072598, 49.854412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.195660, 39.112576, 49.792873>,  <35.814816, 39.179207, 49.690311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195660, 39.112576, 49.792873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160936, -0.440001, -0.883458,
		0.259985, 0.882411, -0.392120,
		0.952107, -0.166580, 0.256405,
		36.481293, 39.062603, 49.869797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203674, 39.305737, 49.060818>,  <35.814816, 39.179207, 49.690311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203674, 39.305737, 49.060818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.454189, 39.103462, 49.298149>,  <36.604500, 38.982098, 49.440548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.454189, 39.103462, 49.298149>,  <36.203674, 39.305737, 49.060818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454189, 39.103462, 49.298149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347096, -0.500613, -0.793039,
		0.698061, 0.702613, -0.138004,
		0.626286, -0.505689, 0.593333,
		36.642075, 38.951756, 49.476151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809456, 39.176510, 48.623276>,  <36.203674, 39.305737, 49.060818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809456, 39.176510, 48.623276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.824677, 38.938213, 48.944187>,  <36.833809, 38.795235, 49.136734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.824677, 38.938213, 48.944187>,  <36.809456, 39.176510, 48.623276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824677, 38.938213, 48.944187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191307, -0.783665, -0.590991,
		0.980792, 0.175971, 0.084147,
		0.038054, -0.595737, 0.802278,
		36.836094, 38.759491, 49.184872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465755, 38.777306, 48.697144>,  <36.809456, 39.176510, 48.623276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465755, 38.777306, 48.697144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.182430, 38.552044, 48.867390>,  <37.012436, 38.416885, 48.969536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.182430, 38.552044, 48.867390>,  <37.465755, 38.777306, 48.697144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182430, 38.552044, 48.867390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326833, -0.796054, -0.509391,
		0.625678, -0.221704, 0.747914,
		-0.708313, -0.563157, 0.425613,
		36.969936, 38.383099, 48.995075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754990, 38.171333, 48.793247>,  <37.465755, 38.777306, 48.697144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754990, 38.171333, 48.793247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.381931, 38.052200, 48.874695>,  <37.158096, 37.980721, 48.923561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.381931, 38.052200, 48.874695>,  <37.754990, 38.171333, 48.793247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381931, 38.052200, 48.874695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189718, -0.884906, -0.425380,
		0.306874, -0.358101, 0.881812,
		-0.932650, -0.297834, 0.203616,
		37.102135, 37.962849, 48.935780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778393, 37.547379, 49.168350>,  <37.754990, 38.171333, 48.793247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778393, 37.547379, 49.168350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.423958, 37.540966, 48.983051>,  <37.211296, 37.537117, 48.871872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.423958, 37.540966, 48.983051>,  <37.778393, 37.547379, 49.168350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423958, 37.540966, 48.983051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231178, -0.881518, -0.411682,
		-0.401759, -0.471878, 0.784806,
		-0.886085, -0.016033, -0.463246,
		37.158131, 37.536156, 48.844078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532566, 36.872437, 49.235355>,  <37.778393, 37.547379, 49.168350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532566, 36.872437, 49.235355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.304649, 37.001801, 48.933163>,  <37.167900, 37.079418, 48.751846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.304649, 37.001801, 48.933163>,  <37.532566, 36.872437, 49.235355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304649, 37.001801, 48.933163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327739, -0.753610, -0.569788,
		-0.753610, -0.572259, 0.323406,
		0.569788, -0.323406, 0.755480,
		37.133713, 37.098824, 48.706520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400463, 36.217884, 48.895176>,  <37.532566, 36.872437, 49.235355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400463, 36.217884, 48.895176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.285458, 36.506287, 48.642994>,  <37.216454, 36.679329, 48.491684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.285458, 36.506287, 48.642994>,  <37.400463, 36.217884, 48.895176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285458, 36.506287, 48.642994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088083, -0.635557, -0.767013,
		-0.953717, -0.276062, 0.119225,
		-0.287518, 0.721011, -0.630458,
		37.199203, 36.722591, 48.453857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800247, 35.932186, 48.465633>,  <37.400463, 36.217884, 48.895176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800247, 35.932186, 48.465633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.982292, 36.230896, 48.271645>,  <37.091518, 36.410122, 48.155251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.982292, 36.230896, 48.271645>,  <36.800247, 35.932186, 48.465633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982292, 36.230896, 48.271645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178725, -0.610174, -0.771845,
		-0.872314, 0.264597, -0.411164,
		0.455110, 0.746777, -0.484973,
		37.118824, 36.454929, 48.126152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465549, 36.126362, 47.752861>,  <36.800247, 35.932186, 48.465633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465549, 36.126362, 47.752861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.853611, 36.220394, 47.729042>,  <37.086449, 36.276814, 47.714748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.853611, 36.220394, 47.729042>,  <36.465549, 36.126362, 47.752861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853611, 36.220394, 47.729042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085503, -0.561366, -0.823139,
		-0.226936, 0.793476, -0.564709,
		0.970149, 0.235084, -0.059550,
		37.144657, 36.290920, 47.711178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885391, 36.546284, 47.732117>,  <36.465549, 36.126362, 47.752861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885391, 36.546284, 47.732117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.563854, 36.489254, 47.501118>,  <35.370930, 36.455036, 47.362518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.563854, 36.489254, 47.501118>,  <35.885391, 36.546284, 47.732117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563854, 36.489254, 47.501118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572064, 0.451369, 0.684842,
		0.163023, 0.880873, -0.444394,
		-0.803845, -0.142577, -0.577500,
		35.322701, 36.446480, 47.327869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537407, 37.167206, 47.594933>,  <35.885391, 36.546284, 47.732117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537407, 37.167206, 47.594933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.229065, 36.928303, 47.506332>,  <35.044060, 36.784962, 47.453171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.229065, 36.928303, 47.506332>,  <35.537407, 37.167206, 47.594933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229065, 36.928303, 47.506332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608668, 0.588035, 0.532671,
		-0.187892, 0.545433, -0.816823,
		-0.770856, -0.597259, -0.221500,
		34.997807, 36.749126, 47.439884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011017, 37.612053, 47.452988>,  <35.537407, 37.167206, 47.594933>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011017, 37.612053, 47.452988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.820526, 37.271889, 47.542450>,  <34.706234, 37.067791, 47.596127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.820526, 37.271889, 47.542450>,  <35.011017, 37.612053, 47.452988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820526, 37.271889, 47.542450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683094, 0.517945, 0.514895,
		-0.553710, 0.092428, -0.827564,
		-0.476223, -0.850406, 0.223654,
		34.677658, 37.016766, 47.609547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347996, 37.668720, 47.245342>,  <35.011017, 37.612053, 47.452988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347996, 37.668720, 47.245342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.335796, 37.375206, 47.516823>,  <34.328476, 37.199097, 47.679710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.335796, 37.375206, 47.516823>,  <34.347996, 37.668720, 47.245342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335796, 37.375206, 47.516823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712411, 0.492239, 0.500172,
		-0.701100, -0.468258, -0.537767,
		-0.030501, -0.733781, 0.678700,
		34.326645, 37.155071, 47.720432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607410, 37.533356, 47.297791>,  <34.347996, 37.668720, 47.245342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607410, 37.533356, 47.297791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.756008, 37.393963, 47.642010>,  <33.845169, 37.310326, 47.848541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.756008, 37.393963, 47.642010>,  <33.607410, 37.533356, 47.297791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756008, 37.393963, 47.642010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735927, 0.454568, 0.501776,
		-0.566040, -0.819711, -0.087589,
		0.371497, -0.348484, 0.860551,
		33.867458, 37.289417, 47.900177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015656, 37.332756, 47.671272>,  <33.607410, 37.533356, 47.297791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015656, 37.332756, 47.671272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.291145, 37.322975, 47.961113>,  <33.456440, 37.317104, 48.135017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.291145, 37.322975, 47.961113>,  <33.015656, 37.332756, 47.671272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291145, 37.322975, 47.961113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643060, 0.440985, 0.626104,
		-0.334853, -0.897181, 0.287992,
		0.688729, -0.024457, 0.724606,
		33.497765, 37.315639, 48.178493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752064, 37.088551, 48.388790>,  <33.015656, 37.332756, 47.671272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752064, 37.088551, 48.388790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.077499, 37.306667, 48.469521>,  <33.272758, 37.437538, 48.517960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.077499, 37.306667, 48.469521>,  <32.752064, 37.088551, 48.388790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077499, 37.306667, 48.469521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521031, 0.529660, 0.669318,
		0.258077, -0.649704, 0.715039,
		0.813586, 0.545293, 0.201822,
		33.321575, 37.470257, 48.530067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641258, 37.285934, 49.154354>,  <32.752064, 37.088551, 48.388790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641258, 37.285934, 49.154354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.896523, 37.535957, 48.974548>,  <33.049679, 37.685970, 48.866665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.896523, 37.535957, 48.974548>,  <32.641258, 37.285934, 49.154354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896523, 37.535957, 48.974548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290662, 0.736240, 0.611119,
		0.712927, -0.259339, 0.651520,
		0.638162, 0.625055, -0.449505,
		33.087971, 37.723473, 48.839695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145470, 37.555229, 49.699417>,  <32.641258, 37.285934, 49.154354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145470, 37.555229, 49.699417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.101879, 37.780098, 49.371494>,  <33.075726, 37.915020, 49.174740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.101879, 37.780098, 49.371494>,  <33.145470, 37.555229, 49.699417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101879, 37.780098, 49.371494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278946, 0.774291, 0.568035,
		0.954103, 0.290586, 0.072434,
		-0.108978, 0.562169, -0.819811,
		33.069187, 37.948750, 49.125549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400738, 38.272652, 49.956112>,  <33.145470, 37.555229, 49.699417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400738, 38.272652, 49.956112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.195835, 38.357773, 49.623291>,  <33.072895, 38.408844, 49.423599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.195835, 38.357773, 49.623291>,  <33.400738, 38.272652, 49.956112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195835, 38.357773, 49.623291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371403, 0.818651, 0.438031,
		0.774374, 0.533410, -0.340321,
		-0.512254, 0.212804, -0.832052,
		33.042160, 38.421616, 49.373676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497017, 39.011986, 49.838085>,  <33.400738, 38.272652, 49.956112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497017, 39.011986, 49.838085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.172592, 38.899128, 49.633118>,  <32.977936, 38.831413, 49.510136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.172592, 38.899128, 49.633118>,  <33.497017, 39.011986, 49.838085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172592, 38.899128, 49.633118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502553, 0.784392, 0.363552,
		0.299364, 0.552381, -0.777982,
		-0.811062, -0.282142, -0.512420,
		32.929272, 38.814484, 49.479393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277916, 39.582436, 49.598438>,  <33.497017, 39.011986, 49.838085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277916, 39.582436, 49.598438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.958233, 39.343258, 49.574043>,  <32.766422, 39.199749, 49.559406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.958233, 39.343258, 49.574043>,  <33.277916, 39.582436, 49.598438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958233, 39.343258, 49.574043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579542, 0.739736, 0.341939,
		-0.159345, 0.308627, -0.937741,
		-0.799212, -0.597947, -0.060989,
		32.718468, 39.163876, 49.555748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769905, 39.977463, 49.335983>,  <33.277916, 39.582436, 49.598438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769905, 39.977463, 49.335983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.581039, 39.676411, 49.519550>,  <32.467720, 39.495777, 49.629692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.581039, 39.676411, 49.519550>,  <32.769905, 39.977463, 49.335983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581039, 39.676411, 49.519550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736242, 0.622997, 0.264238,
		-0.484780, -0.213112, -0.848276,
		-0.472161, -0.752634, 0.458918,
		32.439392, 39.450619, 49.657227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098667, 40.188957, 49.269466>,  <32.769905, 39.977463, 49.335983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098667, 40.188957, 49.269466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.055508, 39.887630, 49.528965>,  <32.029613, 39.706833, 49.684662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.055508, 39.887630, 49.528965>,  <32.098667, 40.188957, 49.269466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055508, 39.887630, 49.528965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740422, 0.496353, 0.453221,
		-0.663426, -0.431445, -0.611327,
		-0.107894, -0.753319, 0.648745,
		32.023140, 39.661636, 49.723587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574650, 40.735111, 49.394299>,  <32.098667, 40.188957, 49.269466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574650, 40.735111, 49.394299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.545673, 41.126610, 49.471035>,  <32.528286, 41.361511, 49.517078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.545673, 41.126610, 49.471035>,  <32.574650, 40.735111, 49.394299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545673, 41.126610, 49.471035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053194, 0.188280, -0.980674,
		-0.995953, -0.081248, 0.038424,
		-0.072444, 0.978749, 0.191840,
		32.523941, 41.420235, 49.528587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069214, 41.023228, 48.990089>,  <32.574650, 40.735111, 49.394299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069214, 41.023228, 48.990089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.318687, 41.327221, 49.063232>,  <32.468372, 41.509617, 49.107117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.318687, 41.327221, 49.063232>,  <32.069214, 41.023228, 48.990089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318687, 41.327221, 49.063232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078194, 0.172097, -0.981972,
		-0.777754, 0.626740, 0.047908,
		0.623686, 0.759986, 0.182857,
		32.505795, 41.555218, 49.118088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740280, 41.526890, 48.616879>,  <32.069214, 41.023228, 48.990089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740280, 41.526890, 48.616879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.122688, 41.626408, 48.679001>,  <32.352135, 41.686119, 48.716274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.122688, 41.626408, 48.679001>,  <31.740280, 41.526890, 48.616879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122688, 41.626408, 48.679001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136409, 0.091594, -0.986409,
		-0.259641, 0.964215, 0.053628,
		0.956023, 0.248796, 0.155309,
		32.409496, 41.701046, 48.725594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799799, 42.038101, 48.214237>,  <31.740280, 41.526890, 48.616879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799799, 42.038101, 48.214237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.176105, 41.924599, 48.288475>,  <32.401890, 41.856499, 48.333019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.176105, 41.924599, 48.288475>,  <31.799799, 42.038101, 48.214237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176105, 41.924599, 48.288475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225184, 0.113653, -0.967665,
		0.253486, 0.952138, 0.170818,
		0.940764, -0.283755, 0.185597,
		32.458336, 41.839474, 48.344154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106003, 42.410534, 47.771893>,  <31.799799, 42.038101, 48.214237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106003, 42.410534, 47.771893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.379639, 42.130875, 47.855045>,  <32.543819, 41.963081, 47.904938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.379639, 42.130875, 47.855045>,  <32.106003, 42.410534, 47.771893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379639, 42.130875, 47.855045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326835, 0.039028, -0.944275,
		0.652073, 0.713913, 0.255204,
		0.684090, -0.699146, 0.207883,
		32.584866, 41.921131, 47.917412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876301, 42.601437, 47.705700>,  <32.106003, 42.410534, 47.771893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876301, 42.601437, 47.705700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.804485, 42.214581, 47.633690>,  <32.761395, 41.982468, 47.590485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.804485, 42.214581, 47.633690>,  <32.876301, 42.601437, 47.705700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804485, 42.214581, 47.633690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356254, 0.106658, -0.928282,
		0.916977, -0.230802, 0.325397,
		-0.179543, -0.967137, -0.180027,
		32.750622, 41.924438, 47.579681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534786, 42.277355, 47.541050>,  <32.876301, 42.601437, 47.705700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534786, 42.277355, 47.541050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.254051, 42.081226, 47.334358>,  <33.085609, 41.963551, 47.210342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.254051, 42.081226, 47.334358>,  <33.534786, 42.277355, 47.541050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254051, 42.081226, 47.334358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390702, 0.341589, -0.854792,
		0.595630, -0.801813, -0.048172,
		-0.701839, -0.490319, -0.516730,
		33.043499, 41.934132, 47.179340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276474, 42.145393, 47.520885>,  <33.534786, 42.277355, 47.541050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276474, 42.145393, 47.520885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.520744, 42.433937, 47.390217>,  <34.667305, 42.607063, 47.311817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.520744, 42.433937, 47.390217>,  <34.276474, 42.145393, 47.520885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520744, 42.433937, 47.390217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118709, 0.491258, 0.862887,
		0.782933, -0.488165, 0.385631,
		0.610676, 0.721361, -0.326673,
		34.703945, 42.650345, 47.292213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768227, 42.206085, 48.154491>,  <34.276474, 42.145393, 47.520885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768227, 42.206085, 48.154491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.801003, 42.534157, 47.928005>,  <34.820667, 42.730999, 47.792114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.801003, 42.534157, 47.928005>,  <34.768227, 42.206085, 48.154491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801003, 42.534157, 47.928005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093228, 0.559327, 0.823688,
		0.992267, -0.120282, -0.030631,
		0.081942, 0.820174, -0.566215,
		34.825584, 42.780209, 47.758141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389996, 42.625484, 48.466259>,  <34.768227, 42.206085, 48.154491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389996, 42.625484, 48.466259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.162045, 42.869392, 48.245926>,  <35.025272, 43.015739, 48.113728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.162045, 42.869392, 48.245926>,  <35.389996, 42.625484, 48.466259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162045, 42.869392, 48.245926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154777, 0.737986, 0.656826,
		0.807019, 0.289057, -0.514943,
		-0.569880, 0.609773, -0.550830,
		34.991081, 43.052322, 48.080677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788586, 43.242062, 48.474220>,  <35.389996, 42.625484, 48.466259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788586, 43.242062, 48.474220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.417416, 43.353371, 48.375008>,  <35.194714, 43.420155, 48.315479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.417416, 43.353371, 48.375008>,  <35.788586, 43.242062, 48.474220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417416, 43.353371, 48.375008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112289, 0.843137, 0.525844,
		0.355454, 0.460092, -0.813614,
		-0.927924, 0.278274, -0.248033,
		35.139038, 43.436852, 48.300598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825291, 43.965855, 48.369335>,  <35.788586, 43.242062, 48.474220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825291, 43.965855, 48.369335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.435608, 43.896763, 48.427425>,  <35.201797, 43.855309, 48.462280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.435608, 43.896763, 48.427425>,  <35.825291, 43.965855, 48.369335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435608, 43.896763, 48.427425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074196, 0.852929, 0.516727,
		-0.213121, 0.492622, -0.843743,
		-0.974204, -0.172728, 0.145227,
		35.143345, 43.844944, 48.470993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501438, 44.493874, 48.219452>,  <35.825291, 43.965855, 48.369335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501438, 44.493874, 48.219452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.277794, 44.291996, 48.482567>,  <35.143608, 44.170872, 48.640434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.277794, 44.291996, 48.482567>,  <35.501438, 44.493874, 48.219452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277794, 44.291996, 48.482567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000634, 0.793638, 0.608390,
		-0.829091, 0.339742, -0.444053,
		-0.559113, -0.504692, 0.657783,
		35.110062, 44.140587, 48.679901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848804, 44.921516, 48.394184>,  <35.501438, 44.493874, 48.219452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848804, 44.921516, 48.394184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.902790, 44.657322, 48.689629>,  <34.935181, 44.498806, 48.866894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.902790, 44.657322, 48.689629>,  <34.848804, 44.921516, 48.394184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902790, 44.657322, 48.689629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035285, 0.748163, 0.662576,
		-0.990223, -0.063359, 0.124277,
		0.134960, -0.660483, 0.738612,
		34.943279, 44.459179, 48.911213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570885, 45.276772, 48.933670>,  <34.848804, 44.921516, 48.394184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570885, 45.276772, 48.933670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.755867, 44.979843, 49.127621>,  <34.866856, 44.801685, 49.243992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.755867, 44.979843, 49.127621>,  <34.570885, 45.276772, 48.933670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755867, 44.979843, 49.127621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009509, 0.550985, 0.834460,
		-0.886593, -0.381288, 0.261864,
		0.462453, -0.742317, 0.484874,
		34.894604, 44.757149, 49.273083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190434, 45.135624, 49.530758>,  <34.570885, 45.276772, 48.933670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190434, 45.135624, 49.530758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.555256, 44.998680, 49.621040>,  <34.774151, 44.916515, 49.675209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.555256, 44.998680, 49.621040>,  <34.190434, 45.135624, 49.530758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555256, 44.998680, 49.621040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075577, 0.400649, 0.913109,
		-0.403043, -0.849864, 0.339540,
		0.912055, -0.342361, 0.225709,
		34.828873, 44.895973, 49.688751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<38.272045, 36.677135, 36.297161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592731, 36.496799, 36.454128>,  <38.785145, 36.388599, 36.548309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592731, 36.496799, 36.454128>,  <38.272045, 36.677135, 36.297161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592731, 36.496799, 36.454128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493753, -0.129558, 0.859897,
		-0.336836, -0.883152, -0.326473,
		0.801717, -0.450841, 0.392419,
		38.833248, 36.361549, 36.571854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060802, 36.031208, 36.592991>,  <38.272045, 36.677135, 36.297161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060802, 36.031208, 36.592991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375690, 36.201965, 36.771000>,  <38.564625, 36.304420, 36.877804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375690, 36.201965, 36.771000>,  <38.060802, 36.031208, 36.592991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375690, 36.201965, 36.771000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537693, 0.121825, 0.834293,
		0.301940, -0.896058, 0.325440,
		0.787222, 0.426893, 0.445020,
		38.611858, 36.330032, 36.904507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138256, 35.752590, 37.258694>,  <38.060802, 36.031208, 36.592991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138256, 35.752590, 37.258694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325424, 36.102509, 37.308960>,  <38.437725, 36.312458, 37.339119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325424, 36.102509, 37.308960>,  <38.138256, 35.752590, 37.258694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325424, 36.102509, 37.308960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543296, 0.172576, 0.821612,
		0.697052, -0.452722, 0.556022,
		0.467918, 0.874792, 0.125667,
		38.465801, 36.364944, 37.346661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052017, 35.898167, 37.942436>,  <38.138256, 35.752590, 37.258694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052017, 35.898167, 37.942436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208965, 36.244553, 37.818401>,  <38.303135, 36.452385, 37.743980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208965, 36.244553, 37.818401>,  <38.052017, 35.898167, 37.942436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208965, 36.244553, 37.818401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446916, 0.474138, 0.758590,
		0.803935, -0.159065, 0.573050,
		0.392370, 0.865962, -0.310088,
		38.326675, 36.504341, 37.725376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452202, 36.094734, 38.473454>,  <38.052017, 35.898167, 37.942436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452202, 36.094734, 38.473454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389149, 36.417885, 38.246304>,  <38.351315, 36.611774, 38.110012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389149, 36.417885, 38.246304>,  <38.452202, 36.094734, 38.473454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389149, 36.417885, 38.246304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322814, 0.501317, 0.802791,
		0.933243, 0.309867, 0.181769,
		-0.157635, 0.807876, -0.567880,
		38.341858, 36.660248, 38.075939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772835, 36.541973, 38.810963>,  <38.452202, 36.094734, 38.473454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772835, 36.541973, 38.810963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508396, 36.728676, 38.575985>,  <38.349731, 36.840698, 38.434998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508396, 36.728676, 38.575985>,  <38.772835, 36.541973, 38.810963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508396, 36.728676, 38.575985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309204, 0.543886, 0.780116,
		0.683626, 0.697372, -0.215239,
		-0.661097, 0.466755, -0.587445,
		38.310066, 36.868702, 38.399750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959232, 37.226856, 38.883919>,  <38.772835, 36.541973, 38.810963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959232, 37.226856, 38.883919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577187, 37.235348, 38.765724>,  <38.347961, 37.240440, 38.694809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577187, 37.235348, 38.765724>,  <38.959232, 37.226856, 38.883919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577187, 37.235348, 38.765724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242603, 0.516386, 0.821273,
		0.170017, 0.856093, -0.488057,
		-0.955112, 0.021226, -0.295485,
		38.290653, 37.241714, 38.677078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716541, 37.929325, 38.789951>,  <38.959232, 37.226856, 38.883919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716541, 37.929325, 38.789951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388485, 37.708153, 38.848778>,  <38.191650, 37.575451, 38.884075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388485, 37.708153, 38.848778>,  <38.716541, 37.929325, 38.789951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388485, 37.708153, 38.848778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275686, 0.607134, 0.745242,
		-0.501357, 0.570662, -0.650374,
		-0.820146, -0.552931, 0.147068,
		38.142441, 37.542274, 38.892899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240913, 38.352737, 38.836571>,  <38.716541, 37.929325, 38.789951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240913, 38.352737, 38.836571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046417, 38.060009, 39.027569>,  <37.929718, 37.884373, 39.142166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046417, 38.060009, 39.027569>,  <38.240913, 38.352737, 38.836571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046417, 38.060009, 39.027569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337399, 0.661302, 0.669956,
		-0.806060, 0.164652, -0.568469,
		-0.486239, -0.731826, 0.477496,
		37.900547, 37.840462, 39.170818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504753, 38.568432, 38.953724>,  <38.240913, 38.352737, 38.836571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504753, 38.568432, 38.953724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571709, 38.284637, 39.227547>,  <37.611881, 38.114361, 39.391838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571709, 38.284637, 39.227547>,  <37.504753, 38.568432, 38.953724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571709, 38.284637, 39.227547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379039, 0.594672, 0.709010,
		-0.910116, -0.378152, -0.169380,
		0.167388, -0.709483, 0.684555,
		37.621925, 38.071793, 39.432915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850235, 38.524460, 39.187119>,  <37.504753, 38.568432, 38.953724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850235, 38.524460, 39.187119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096729, 38.389347, 39.471699>,  <37.244625, 38.308281, 39.642448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096729, 38.389347, 39.471699>,  <36.850235, 38.524460, 39.187119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096729, 38.389347, 39.471699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470384, 0.566680, 0.676471,
		-0.631662, -0.751519, 0.190321,
		0.616232, -0.337777, 0.711453,
		37.281597, 38.288013, 39.685135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370693, 38.558399, 39.813961>,  <36.850235, 38.524460, 39.187119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370693, 38.558399, 39.813961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743187, 38.536858, 39.958134>,  <36.966682, 38.523933, 40.044636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743187, 38.536858, 39.958134>,  <36.370693, 38.558399, 39.813961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743187, 38.536858, 39.958134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274532, 0.546756, 0.791006,
		-0.239668, -0.835558, 0.494371,
		0.931231, -0.053858, 0.360427,
		37.022556, 38.520699, 40.066261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085617, 37.933739, 40.046253>,  <36.370693, 38.558399, 39.813961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085617, 37.933739, 40.046253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692879, 37.889553, 39.984573>,  <35.457237, 37.863041, 39.947563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692879, 37.889553, 39.984573>,  <36.085617, 37.933739, 40.046253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692879, 37.889553, 39.984573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181255, -0.306679, -0.934395,
		0.055930, -0.945381, 0.321134,
		-0.981844, -0.110468, -0.154203,
		35.398327, 37.856411, 39.938313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029205, 37.267273, 39.696068>,  <36.085617, 37.933739, 40.046253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029205, 37.267273, 39.696068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686035, 37.453278, 39.608681>,  <35.480133, 37.564880, 39.556248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686035, 37.453278, 39.608681>,  <36.029205, 37.267273, 39.696068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686035, 37.453278, 39.608681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093601, -0.276642, -0.956404,
		-0.505173, -0.840974, 0.193813,
		-0.857928, 0.465008, -0.218468,
		35.428658, 37.592781, 39.543140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609867, 36.822464, 39.335762>,  <36.029205, 37.267273, 39.696068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609867, 36.822464, 39.335762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424057, 37.166142, 39.249966>,  <35.312572, 37.372349, 39.198486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424057, 37.166142, 39.249966>,  <35.609867, 36.822464, 39.335762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424057, 37.166142, 39.249966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070169, -0.277164, -0.958257,
		-0.882777, -0.430082, 0.189038,
		-0.464523, 0.859192, -0.214495,
		35.284698, 37.423901, 39.185616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046349, 36.672291, 39.082939>,  <35.609867, 36.822464, 39.335762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046349, 36.672291, 39.082939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120331, 37.041733, 38.948631>,  <35.164719, 37.263397, 38.868046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120331, 37.041733, 38.948631>,  <35.046349, 36.672291, 39.082939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120331, 37.041733, 38.948631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041973, -0.333929, -0.941663,
		-0.981850, 0.188260, -0.022996,
		0.184956, 0.923607, -0.335770,
		35.175819, 37.318813, 38.847900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465378, 36.926506, 38.516380>,  <35.046349, 36.672291, 39.082939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465378, 36.926506, 38.516380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820759, 37.108643, 38.493374>,  <35.033989, 37.217926, 38.479572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820759, 37.108643, 38.493374>,  <34.465378, 36.926506, 38.516380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820759, 37.108643, 38.493374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067904, -0.254344, -0.964727,
		-0.453909, 0.853213, -0.256894,
		0.888457, 0.455342, -0.057512,
		35.087296, 37.245247, 38.476120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404282, 37.351776, 37.957954>,  <34.465378, 36.926506, 38.516380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404282, 37.351776, 37.957954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801098, 37.308716, 37.984093>,  <35.039188, 37.282879, 37.999775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801098, 37.308716, 37.984093>,  <34.404282, 37.351776, 37.957954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801098, 37.308716, 37.984093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055409, -0.092861, -0.994136,
		0.113086, 0.989842, -0.086157,
		0.992039, -0.107649, 0.065347,
		35.098709, 37.276421, 38.003696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548801, 37.408886, 37.258892>,  <34.404282, 37.351776, 37.957954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548801, 37.408886, 37.258892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915787, 37.323555, 37.393200>,  <35.135979, 37.272354, 37.473785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915787, 37.323555, 37.393200>,  <34.548801, 37.408886, 37.258892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915787, 37.323555, 37.393200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315928, -0.122197, -0.940881,
		0.241751, 0.969308, -0.044714,
		0.917467, -0.213332, 0.335773,
		35.191029, 37.259556, 37.493931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028446, 37.675289, 36.793251>,  <34.548801, 37.408886, 37.258892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028446, 37.675289, 36.793251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220734, 37.380562, 36.983414>,  <35.336105, 37.203724, 37.097511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220734, 37.380562, 36.983414>,  <35.028446, 37.675289, 36.793251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220734, 37.380562, 36.983414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298720, -0.372120, -0.878802,
		0.824425, 0.564468, 0.041218,
		0.480718, -0.736819, 0.475403,
		35.364948, 37.159515, 37.126034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619129, 37.601551, 36.447414>,  <35.028446, 37.675289, 36.793251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619129, 37.601551, 36.447414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557995, 37.254536, 36.636734>,  <35.521313, 37.046326, 36.750324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557995, 37.254536, 36.636734>,  <35.619129, 37.601551, 36.447414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557995, 37.254536, 36.636734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243047, -0.497214, -0.832891,
		0.957898, -0.012264, 0.286846,
		-0.152838, -0.867541, 0.473300,
		35.512142, 36.994274, 36.778725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181087, 37.081669, 36.406620>,  <35.619129, 37.601551, 36.447414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181087, 37.081669, 36.406620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860737, 36.854561, 36.482761>,  <35.668526, 36.718296, 36.528446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860737, 36.854561, 36.482761>,  <36.181087, 37.081669, 36.406620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860737, 36.854561, 36.482761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148533, -0.496287, -0.855358,
		0.580117, -0.656761, 0.481797,
		-0.800876, -0.567770, 0.190354,
		35.620476, 36.684231, 36.539867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312767, 36.511494, 35.969395>,  <36.181087, 37.081669, 36.406620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312767, 36.511494, 35.969395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951153, 36.411850, 36.108341>,  <35.734184, 36.352062, 36.191708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951153, 36.411850, 36.108341>,  <36.312767, 36.511494, 35.969395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951153, 36.411850, 36.108341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131275, -0.611566, -0.780227,
		0.406799, -0.750954, 0.520176,
		-0.904036, -0.249110, 0.347365,
		35.679943, 36.337116, 36.212551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311440, 35.831341, 35.944206>,  <36.312767, 36.511494, 35.969395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311440, 35.831341, 35.944206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932861, 35.959991, 35.932976>,  <35.705715, 36.037182, 35.926239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932861, 35.959991, 35.932976>,  <36.311440, 35.831341, 35.944206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932861, 35.959991, 35.932976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171871, -0.575548, -0.799503,
		-0.273302, -0.751864, 0.600005,
		-0.946449, 0.321629, -0.028075,
		35.648926, 36.056480, 35.924553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516930, 35.411987, 36.559090>,  <36.311440, 35.831341, 35.944206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516930, 35.411987, 36.559090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734657, 35.395859, 36.894253>,  <36.865295, 35.386181, 37.095348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734657, 35.395859, 36.894253>,  <36.516930, 35.411987, 36.559090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734657, 35.395859, 36.894253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633026, -0.675157, 0.378735,
		0.550446, -0.736571, -0.393031,
		0.544323, -0.040325, 0.837906,
		36.897953, 35.383762, 37.145626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594707, 34.699310, 36.364597>,  <36.516930, 35.411987, 36.559090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594707, 34.699310, 36.364597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737614, 34.765846, 36.732227>,  <36.823357, 34.805767, 36.952805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737614, 34.765846, 36.732227>,  <36.594707, 34.699310, 36.364597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737614, 34.765846, 36.732227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680412, -0.627752, 0.378110,
		0.639845, -0.760432, -0.111091,
		0.357265, 0.166344, 0.919071,
		36.844795, 34.815750, 37.007950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766579, 34.012798, 36.796459>,  <36.594707, 34.699310, 36.364597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766579, 34.012798, 36.796459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665840, 34.325108, 37.025181>,  <36.605396, 34.512493, 37.162415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665840, 34.325108, 37.025181>,  <36.766579, 34.012798, 36.796459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665840, 34.325108, 37.025181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795230, -0.503684, 0.337507,
		0.551526, -0.369714, 0.747751,
		-0.251849, 0.780778, 0.571802,
		36.590286, 34.559341, 37.196720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719685, 33.652153, 37.368446>,  <36.766579, 34.012798, 36.796459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719685, 33.652153, 37.368446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884346, 33.295158, 37.442200>,  <36.983143, 33.080959, 37.486454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884346, 33.295158, 37.442200>,  <36.719685, 33.652153, 37.368446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884346, 33.295158, 37.442200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307075, 0.054653, 0.950115,
		-0.858046, -0.447742, -0.251564,
		0.411657, -0.892491, 0.184385,
		37.007843, 33.027412, 37.497517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407349, 33.143391, 37.716183>,  <36.719685, 33.652153, 37.368446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407349, 33.143391, 37.716183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789082, 33.073616, 37.813187>,  <37.018124, 33.031750, 37.871387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789082, 33.073616, 37.813187>,  <36.407349, 33.143391, 37.716183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789082, 33.073616, 37.813187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242354, 0.022532, 0.969926,
		-0.174661, -0.984409, -0.020774,
		0.954336, -0.174443, 0.242511,
		37.075382, 33.021282, 37.885941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437054, 32.619648, 38.387238>,  <36.407349, 33.143391, 37.716183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437054, 32.619648, 38.387238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777020, 32.825569, 38.342289>,  <36.980999, 32.949123, 38.315319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777020, 32.825569, 38.342289>,  <36.437054, 32.619648, 38.387238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777020, 32.825569, 38.342289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085014, 0.076491, 0.993439,
		0.520024, -0.853887, 0.021245,
		0.849910, 0.514806, -0.112369,
		37.031994, 32.980011, 38.308578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874874, 32.270649, 38.766754>,  <36.437054, 32.619648, 38.387238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874874, 32.270649, 38.766754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061863, 32.622059, 38.727417>,  <37.174057, 32.832905, 38.703815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061863, 32.622059, 38.727417>,  <36.874874, 32.270649, 38.766754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061863, 32.622059, 38.727417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237915, -0.017888, 0.971121,
		0.851392, -0.477366, -0.217376,
		0.467469, 0.878522, -0.098343,
		37.202103, 32.885616, 38.697914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480186, 32.227764, 39.128056>,  <36.874874, 32.270649, 38.766754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480186, 32.227764, 39.128056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401989, 32.619915, 39.117943>,  <37.355072, 32.855206, 39.111874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401989, 32.619915, 39.117943>,  <37.480186, 32.227764, 39.128056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401989, 32.619915, 39.117943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230019, 0.070898, 0.970600,
		0.953349, 0.183930, -0.239366,
		-0.195493, 0.980379, -0.025283,
		37.343342, 32.914028, 39.110359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060966, 32.533035, 39.498985>,  <37.480186, 32.227764, 39.128056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060966, 32.533035, 39.498985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771763, 32.809330, 39.494328>,  <37.598240, 32.975109, 39.491531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771763, 32.809330, 39.494328>,  <38.060966, 32.533035, 39.498985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771763, 32.809330, 39.494328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076019, 0.096306, 0.992445,
		0.686643, 0.716661, -0.122139,
		-0.723009, 0.690740, -0.011647,
		37.554859, 33.016552, 39.490833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351509, 33.185394, 39.744122>,  <38.060966, 32.533035, 39.498985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351509, 33.185394, 39.744122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955574, 33.201397, 39.798702>,  <37.718014, 33.210999, 39.831451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955574, 33.201397, 39.798702>,  <38.351509, 33.185394, 39.744122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955574, 33.201397, 39.798702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141427, 0.177037, 0.973990,
		0.014813, 0.983390, -0.180897,
		-0.989838, 0.040011, 0.136455,
		37.658623, 33.213402, 39.839638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225822, 33.822796, 40.107708>,  <38.351509, 33.185394, 39.744122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225822, 33.822796, 40.107708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898819, 33.599850, 40.165695>,  <37.702618, 33.466080, 40.200485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898819, 33.599850, 40.165695>,  <38.225822, 33.822796, 40.107708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898819, 33.599850, 40.165695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027273, 0.288896, 0.956972,
		-0.575266, 0.778382, -0.251377,
		-0.817512, -0.557369, 0.144964,
		37.653564, 33.432640, 40.209183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830738, 34.198494, 40.516972>,  <38.225822, 33.822796, 40.107708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830738, 34.198494, 40.516972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613911, 33.864147, 40.551567>,  <37.483814, 33.663540, 40.572327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613911, 33.864147, 40.551567>,  <37.830738, 34.198494, 40.516972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613911, 33.864147, 40.551567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175870, 0.213493, 0.960984,
		-0.821725, 0.505707, -0.262732,
		-0.542068, -0.835871, 0.086494,
		37.451290, 33.613384, 40.577515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235157, 34.317886, 40.766537>,  <37.830738, 34.198494, 40.516972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235157, 34.317886, 40.766537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263195, 33.927921, 40.851044>,  <37.280018, 33.693943, 40.901749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263195, 33.927921, 40.851044>,  <37.235157, 34.317886, 40.766537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263195, 33.927921, 40.851044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132664, 0.200797, 0.970609,
		-0.988679, -0.096063, -0.115261,
		0.070096, -0.974912, 0.211268,
		37.284225, 33.635448, 40.914425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660652, 34.135494, 41.143063>,  <37.235157, 34.317886, 40.766537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660652, 34.135494, 41.143063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930813, 33.853657, 41.230125>,  <37.092911, 33.684555, 41.282364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930813, 33.853657, 41.230125>,  <36.660652, 34.135494, 41.143063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930813, 33.853657, 41.230125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309003, -0.002406, 0.951058,
		-0.669588, -0.709605, -0.219347,
		0.675404, -0.704596, 0.217659,
		37.133434, 33.642277, 41.295422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295200, 33.539722, 41.517002>,  <36.660652, 34.135494, 41.143063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295200, 33.539722, 41.517002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680992, 33.528286, 41.622040>,  <36.912468, 33.521423, 41.685062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680992, 33.528286, 41.622040>,  <36.295200, 33.539722, 41.517002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680992, 33.528286, 41.622040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263920, -0.063467, 0.962454,
		-0.010845, -0.997575, -0.068757,
		0.964484, -0.028584, 0.262591,
		36.970337, 33.519711, 41.700817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229969, 33.150639, 42.124203>,  <36.295200, 33.539722, 41.517002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229969, 33.150639, 42.124203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588108, 33.328270, 42.110641>,  <36.802990, 33.434849, 42.102505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588108, 33.328270, 42.110641>,  <36.229969, 33.150639, 42.124203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588108, 33.328270, 42.110641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111613, 0.297426, 0.948198,
		0.431159, -0.845182, 0.315864,
		0.895346, 0.444079, -0.033905,
		36.856712, 33.461494, 42.100471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547314, 32.838116, 42.761593>,  <36.229969, 33.150639, 42.124203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547314, 32.838116, 42.761593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734665, 33.172241, 42.646446>,  <36.847076, 33.372719, 42.577358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734665, 33.172241, 42.646446>,  <36.547314, 32.838116, 42.761593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734665, 33.172241, 42.646446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013652, 0.332621, 0.942962,
		0.883424, -0.437730, 0.167195,
		0.468375, 0.835318, -0.287869,
		36.875179, 33.422836, 42.560085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992901, 32.936470, 43.316566>,  <36.547314, 32.838116, 42.761593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992901, 32.936470, 43.316566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939438, 33.292301, 43.141850>,  <36.907360, 33.505798, 43.037022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939438, 33.292301, 43.141850>,  <36.992901, 32.936470, 43.316566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939438, 33.292301, 43.141850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180953, 0.455241, 0.871786,
		0.974367, 0.037481, -0.221818,
		-0.133656, 0.889579, -0.436790,
		36.899342, 33.559174, 43.010811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402039, 33.428211, 43.654575>,  <36.992901, 32.936470, 43.316566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402039, 33.428211, 43.654575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163761, 33.686646, 43.463696>,  <37.020794, 33.841705, 43.349167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163761, 33.686646, 43.463696>,  <37.402039, 33.428211, 43.654575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163761, 33.686646, 43.463696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136779, 0.667038, 0.732361,
		0.791479, 0.370993, -0.485722,
		-0.595695, 0.646085, -0.477202,
		36.985054, 33.880470, 43.320534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709511, 34.029945, 43.747238>,  <37.402039, 33.428211, 43.654575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709511, 34.029945, 43.747238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334728, 34.127438, 43.647076>,  <37.109859, 34.185932, 43.586979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334728, 34.127438, 43.647076>,  <37.709511, 34.029945, 43.747238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334728, 34.127438, 43.647076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013216, 0.691370, 0.722381,
		0.349190, 0.680150, -0.644564,
		-0.936959, 0.243729, -0.250408,
		37.053642, 34.200558, 43.571953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614128, 34.704197, 44.107136>,  <37.709511, 34.029945, 43.747238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614128, 34.704197, 44.107136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235844, 34.602318, 44.026371>,  <37.008873, 34.541191, 43.977913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235844, 34.602318, 44.026371>,  <37.614128, 34.704197, 44.107136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235844, 34.602318, 44.026371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303016, 0.466219, 0.831157,
		-0.117559, 0.847213, -0.518084,
		-0.945707, -0.254698, -0.201911,
		36.952133, 34.525909, 43.965797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196369, 35.342072, 44.060246>,  <37.614128, 34.704197, 44.107136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196369, 35.342072, 44.060246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918648, 35.061199, 44.123348>,  <36.752014, 34.892677, 44.161209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918648, 35.061199, 44.123348>,  <37.196369, 35.342072, 44.060246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918648, 35.061199, 44.123348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452002, 0.596029, 0.663658,
		-0.560033, 0.389476, -0.731212,
		-0.694303, -0.702181, 0.157752,
		36.710358, 34.850544, 44.170673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643456, 35.719044, 44.188526>,  <37.196369, 35.342072, 44.060246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643456, 35.719044, 44.188526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523956, 35.366699, 44.335403>,  <36.452259, 35.155293, 44.423531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523956, 35.366699, 44.335403>,  <36.643456, 35.719044, 44.188526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523956, 35.366699, 44.335403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475690, 0.471008, 0.742880,
		-0.827328, 0.047258, -0.559727,
		-0.298743, -0.880862, 0.367198,
		36.434334, 35.102440, 44.445564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899925, 35.681728, 44.234898>,  <36.643456, 35.719044, 44.188526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899925, 35.681728, 44.234898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021976, 35.404839, 44.496498>,  <36.095207, 35.238705, 44.653458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021976, 35.404839, 44.496498>,  <35.899925, 35.681728, 44.234898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021976, 35.404839, 44.496498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473359, 0.485660, 0.734892,
		-0.826333, -0.533817, -0.179480,
		0.305131, -0.692224, 0.654004,
		36.113518, 35.197170, 44.692699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326107, 35.524071, 44.671410>,  <35.899925, 35.681728, 44.234898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326107, 35.524071, 44.671410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628860, 35.409805, 44.906532>,  <35.810513, 35.341244, 45.047607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628860, 35.409805, 44.906532>,  <35.326107, 35.524071, 44.671410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628860, 35.409805, 44.906532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479237, 0.368932, 0.796380,
		-0.444361, -0.884468, 0.142337,
		0.756885, -0.285667, 0.587809,
		35.855927, 35.324104, 45.082874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946938, 35.326141, 45.229252>,  <35.326107, 35.524071, 44.671410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946938, 35.326141, 45.229252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325691, 35.373333, 45.348915>,  <35.552944, 35.401646, 45.420712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325691, 35.373333, 45.348915>,  <34.946938, 35.326141, 45.229252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325691, 35.373333, 45.348915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318573, 0.471078, 0.822555,
		-0.043887, -0.874167, 0.483639,
		0.946882, 0.117974, 0.299160,
		35.609756, 35.408726, 45.438663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825474, 35.228081, 45.899727>,  <34.946938, 35.326141, 45.229252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825474, 35.228081, 45.899727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184925, 35.403244, 45.889183>,  <35.400597, 35.508343, 45.882858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184925, 35.403244, 45.889183>,  <34.825474, 35.228081, 45.899727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184925, 35.403244, 45.889183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162622, 0.388309, 0.907067,
		0.407449, -0.810833, 0.420161,
		0.898632, 0.437911, -0.026357,
		35.454514, 35.534618, 45.881275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165291, 35.048805, 46.501068>,  <34.825474, 35.228081, 45.899727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165291, 35.048805, 46.501068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344040, 35.384480, 46.377087>,  <35.451290, 35.585884, 46.302700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344040, 35.384480, 46.377087>,  <35.165291, 35.048805, 46.501068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344040, 35.384480, 46.377087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112249, 0.396328, 0.911221,
		0.887529, -0.372405, 0.271305,
		0.446869, 0.839189, -0.309951,
		35.478100, 35.636238, 46.284100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678741, 35.207211, 46.927586>,  <35.165291, 35.048805, 46.501068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678741, 35.207211, 46.927586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568794, 35.551746, 46.756683>,  <35.502827, 35.758469, 46.654140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568794, 35.551746, 46.756683>,  <35.678741, 35.207211, 46.927586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568794, 35.551746, 46.756683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025341, 0.437728, 0.898750,
		0.961147, 0.257867, -0.098491,
		-0.274870, 0.861336, -0.427256,
		35.486332, 35.810146, 46.628506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970470, 35.768051, 47.383663>,  <35.678741, 35.207211, 46.927586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970470, 35.768051, 47.383663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681541, 35.947609, 47.173237>,  <35.508186, 36.055344, 47.046982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681541, 35.947609, 47.173237>,  <35.970470, 35.768051, 47.383663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681541, 35.947609, 47.173237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253663, 0.535699, 0.805408,
		0.643360, 0.715204, -0.273076,
		-0.722318, 0.448898, -0.526068,
		35.464848, 36.082279, 47.015415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661755, 35.917984, 46.983192>,  <35.970470, 35.768051, 47.383663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661755, 35.917984, 46.983192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998589, 36.059418, 47.146107>,  <37.200687, 36.144276, 47.243855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998589, 36.059418, 47.146107>,  <36.661755, 35.917984, 46.983192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998589, 36.059418, 47.146107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520385, -0.334133, -0.785846,
		-0.141772, 0.873691, -0.465365,
		0.842081, 0.353580, 0.407285,
		37.251213, 36.165493, 47.268291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168076, 36.065178, 46.443626>,  <36.661755, 35.917984, 46.983192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168076, 36.065178, 46.443626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419346, 36.032482, 46.753132>,  <37.570110, 36.012863, 46.938835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419346, 36.032482, 46.753132>,  <37.168076, 36.065178, 46.443626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419346, 36.032482, 46.753132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705237, -0.360279, -0.610606,
		0.328684, 0.929256, -0.168670,
		0.628178, -0.081744, 0.773764,
		37.607800, 36.007957, 46.985260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772774, 36.252148, 46.136887>,  <37.168076, 36.065178, 46.443626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772774, 36.252148, 46.136887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878105, 36.055904, 46.469139>,  <37.941303, 35.938156, 46.668491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878105, 36.055904, 46.469139>,  <37.772774, 36.252148, 46.136887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878105, 36.055904, 46.469139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713682, -0.480255, -0.509916,
		0.649088, 0.727087, 0.223674,
		0.263332, -0.490612, 0.830636,
		37.957104, 35.908722, 46.718330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400810, 36.440689, 46.221340>,  <37.772774, 36.252148, 46.136887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400810, 36.440689, 46.221340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332619, 36.091492, 46.404125>,  <38.291702, 35.881973, 46.513798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332619, 36.091492, 46.404125>,  <38.400810, 36.440689, 46.221340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332619, 36.091492, 46.404125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722623, -0.426048, -0.544334,
		0.669889, 0.237415, 0.703479,
		-0.170482, -0.872993, 0.456967,
		38.281475, 35.829594, 46.541214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101910, 36.146229, 46.327545>,  <38.400810, 36.440689, 46.221340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101910, 36.146229, 46.327545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830292, 35.852646, 46.333328>,  <38.667320, 35.676495, 46.336796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830292, 35.852646, 46.333328>,  <39.101910, 36.146229, 46.327545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830292, 35.852646, 46.333328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600018, -0.566252, -0.565099,
		0.422944, -0.375052, 0.824897,
		-0.679041, -0.733958, 0.014455,
		38.626579, 35.632458, 46.337666>
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
