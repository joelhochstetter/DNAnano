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
	<24.169977, 34.654541, 34.911377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.217299, 34.993179, 34.703808>,  <24.245691, 35.196362, 34.579266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.217299, 34.993179, 34.703808>,  <24.169977, 34.654541, 34.911377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.217299, 34.993179, 34.703808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095846, 0.510417, 0.854569,
		0.988341, -0.150835, -0.020759,
		0.118303, 0.846595, -0.518923,
		24.252789, 35.247158, 34.548130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.869314, 35.074089, 35.018364>,  <24.169977, 34.654541, 34.911377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.869314, 35.074089, 35.018364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.540361, 35.290596, 34.948254>,  <24.342991, 35.420502, 34.906189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.540361, 35.290596, 34.948254>,  <24.869314, 35.074089, 35.018364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.540361, 35.290596, 34.948254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225220, 0.592616, 0.773358,
		0.522462, 0.596520, -0.609260,
		-0.822380, 0.541267, -0.175271,
		24.293648, 35.452976, 34.895672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.054501, 35.905659, 34.885044>,  <24.869314, 35.074089, 35.018364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.054501, 35.905659, 34.885044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.710579, 35.806995, 35.063885>,  <24.504227, 35.747799, 35.171188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.710579, 35.806995, 35.063885>,  <25.054501, 35.905659, 34.885044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.710579, 35.806995, 35.063885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200879, 0.641611, 0.740259,
		-0.469455, 0.726290, -0.502111,
		-0.859802, -0.246655, 0.447104,
		24.452639, 35.732998, 35.198017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.569666, 36.497948, 35.075779>,  <25.054501, 35.905659, 34.885044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.569666, 36.497948, 35.075779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.491781, 36.192760, 35.322342>,  <24.445051, 36.009647, 35.470280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.491781, 36.192760, 35.322342>,  <24.569666, 36.497948, 35.075779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.491781, 36.192760, 35.322342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205072, 0.582883, 0.786252,
		-0.959183, 0.279500, 0.042971,
		-0.194711, -0.762972, 0.616410,
		24.433369, 35.963867, 35.507263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.084002, 36.648235, 35.510811>,  <24.569666, 36.497948, 35.075779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.084002, 36.648235, 35.510811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.317083, 36.381851, 35.697121>,  <24.456932, 36.222019, 35.808907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.317083, 36.381851, 35.697121>,  <24.084002, 36.648235, 35.510811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.317083, 36.381851, 35.697121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124319, 0.639434, 0.758728,
		-0.803120, -0.384209, 0.455393,
		0.582704, -0.665964, 0.465778,
		24.491894, 36.182060, 35.836853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.770126, 37.103508, 35.450401>,  <24.084002, 36.648235, 35.510811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.770126, 37.103508, 35.450401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.747641, 37.218719, 35.068012>,  <24.734150, 37.287846, 34.838577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.747641, 37.218719, 35.068012>,  <24.770126, 37.103508, 35.450401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.747641, 37.218719, 35.068012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366670, 0.896533, 0.248557,
		0.928651, -0.336554, -0.156007,
		-0.056213, 0.288026, -0.955971,
		24.730778, 37.305126, 34.781219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.515745, 37.205791, 35.151325>,  <24.770126, 37.103508, 35.450401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.515745, 37.205791, 35.151325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.221066, 37.418602, 34.984367>,  <25.044258, 37.546288, 34.884193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.221066, 37.418602, 34.984367>,  <25.515745, 37.205791, 35.151325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.221066, 37.418602, 34.984367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538961, 0.834750, 0.112749,
		0.408406, -0.141897, -0.901704,
		-0.736699, 0.532031, -0.417395,
		25.000055, 37.578213, 34.859150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.517752, 37.842667, 34.711479>,  <25.515745, 37.205791, 35.151325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.517752, 37.842667, 34.711479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684649, 37.699883, 35.045780>,  <25.784786, 37.614212, 35.246361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684649, 37.699883, 35.045780>,  <25.517752, 37.842667, 34.711479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.684649, 37.699883, 35.045780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712925, 0.698885, -0.057419,
		-0.563601, 0.619790, 0.546090,
		0.417242, -0.356960, 0.835756,
		25.809820, 37.592796, 35.296509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658964, 38.408737, 35.074482>,  <25.517752, 37.842667, 34.711479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.658964, 38.408737, 35.074482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.904980, 38.137394, 35.235256>,  <26.052589, 37.974586, 35.331722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.904980, 38.137394, 35.235256>,  <25.658964, 38.408737, 35.074482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.904980, 38.137394, 35.235256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742599, 0.669709, -0.006024,
		-0.265097, 0.302185, 0.915646,
		0.615037, -0.678361, 0.401940,
		26.089491, 37.933887, 35.355839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.980450, 38.712463, 35.630302>,  <25.658964, 38.408737, 35.074482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.980450, 38.712463, 35.630302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233036, 38.418793, 35.530514>,  <26.384588, 38.242592, 35.470642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233036, 38.418793, 35.530514>,  <25.980450, 38.712463, 35.630302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233036, 38.418793, 35.530514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767063, 0.638523, 0.062470,
		0.113427, -0.230807, 0.966366,
		0.631465, -0.734177, -0.249469,
		26.422476, 38.198540, 35.455673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.413651, 38.761433, 36.173615>,  <25.980450, 38.712463, 35.630302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.413651, 38.761433, 36.173615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591146, 38.568176, 35.871712>,  <26.697643, 38.452221, 35.690571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591146, 38.568176, 35.871712>,  <26.413651, 38.761433, 36.173615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591146, 38.568176, 35.871712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822621, 0.553721, 0.129183,
		0.355513, -0.678206, 0.643154,
		0.443740, -0.483146, -0.754761,
		26.724268, 38.423233, 35.645283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131100, 38.757969, 36.425694>,  <26.413651, 38.761433, 36.173615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131100, 38.757969, 36.425694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149382, 38.713581, 36.028584>,  <27.160351, 38.686951, 35.790318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149382, 38.713581, 36.028584>,  <27.131100, 38.757969, 36.425694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.149382, 38.713581, 36.028584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707211, 0.705485, -0.046296,
		0.705524, -0.699984, 0.110723,
		0.045707, -0.110967, -0.992772,
		27.163094, 38.680290, 35.730751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852261, 38.586208, 36.227829>,  <27.131100, 38.757969, 36.425694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852261, 38.586208, 36.227829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653532, 38.747849, 35.920616>,  <27.534294, 38.844833, 35.736290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653532, 38.747849, 35.920616>,  <27.852261, 38.586208, 36.227829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653532, 38.747849, 35.920616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772701, 0.608864, -0.179492,
		0.395095, -0.682634, -0.614744,
		-0.496823, 0.404097, -0.768031,
		27.504484, 38.869076, 35.690208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369907, 38.813805, 35.754391>,  <27.852261, 38.586208, 36.227829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369907, 38.813805, 35.754391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037815, 39.005272, 35.640125>,  <27.838560, 39.120152, 35.571568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037815, 39.005272, 35.640125>,  <28.369907, 38.813805, 35.754391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037815, 39.005272, 35.640125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557422, 0.713326, -0.424789,
		0.000437, -0.511905, -0.859042,
		-0.830229, 0.478664, -0.285659,
		27.788746, 39.148872, 35.554428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542446, 38.946861, 35.088257>,  <28.369907, 38.813805, 35.754391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542446, 38.946861, 35.088257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234064, 39.195095, 35.145527>,  <28.049034, 39.344036, 35.179890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234064, 39.195095, 35.145527>,  <28.542446, 38.946861, 35.088257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234064, 39.195095, 35.145527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520996, 0.743826, -0.418673,
		-0.366318, -0.248186, -0.896780,
		-0.770957, 0.620586, 0.143172,
		28.002777, 39.381271, 35.188480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559189, 39.154709, 34.505562>,  <28.542446, 38.946861, 35.088257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559189, 39.154709, 34.505562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382202, 39.426762, 34.739365>,  <28.276011, 39.589993, 34.879646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382202, 39.426762, 34.739365>,  <28.559189, 39.154709, 34.505562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382202, 39.426762, 34.739365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296163, 0.726034, -0.620614,
		-0.846469, -0.101492, -0.522675,
		-0.442467, 0.680128, 0.584507,
		28.249462, 39.630798, 34.914719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366447, 39.648579, 34.012066>,  <28.559189, 39.154709, 34.505562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.366447, 39.648579, 34.012066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307917, 39.846874, 34.354488>,  <28.272799, 39.965851, 34.559940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307917, 39.846874, 34.354488>,  <28.366447, 39.648579, 34.012066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307917, 39.846874, 34.354488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203068, 0.861996, -0.464464,
		-0.968169, 0.105874, -0.226802,
		-0.146328, 0.495735, 0.856057,
		28.264019, 39.995594, 34.611305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861805, 40.268299, 33.833721>,  <28.366447, 39.648579, 34.012066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861805, 40.268299, 33.833721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.084579, 40.351154, 34.155445>,  <28.218245, 40.400867, 34.348480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.084579, 40.351154, 34.155445>,  <27.861805, 40.268299, 33.833721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084579, 40.351154, 34.155445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382311, 0.795772, -0.469664,
		-0.737334, 0.569070, 0.364003,
		0.556935, 0.207137, 0.804312,
		28.251659, 40.413296, 34.396740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.681618, 41.010830, 34.022682>,  <27.861805, 40.268299, 33.833721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.681618, 41.010830, 34.022682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044146, 40.899860, 34.150192>,  <28.261662, 40.833279, 34.226700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044146, 40.899860, 34.150192>,  <27.681618, 41.010830, 34.022682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.044146, 40.899860, 34.150192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386642, 0.848837, -0.360534,
		-0.170569, 0.450012, 0.876582,
		0.906319, -0.277428, 0.318779,
		28.316042, 40.816631, 34.245827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039167, 41.612556, 34.023819>,  <27.681618, 41.010830, 34.022682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039167, 41.612556, 34.023819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329283, 41.337868, 34.043327>,  <28.503351, 41.173054, 34.055031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329283, 41.337868, 34.043327>,  <28.039167, 41.612556, 34.023819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329283, 41.337868, 34.043327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594025, 0.588435, -0.548524,
		0.347984, 0.426806, 0.834712,
		0.725287, -0.686717, 0.048767,
		28.546869, 41.131851, 34.057957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657566, 42.059357, 34.166706>,  <28.039167, 41.612556, 34.023819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657566, 42.059357, 34.166706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821085, 41.708492, 34.065937>,  <28.919197, 41.497974, 34.005474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821085, 41.708492, 34.065937>,  <28.657566, 42.059357, 34.166706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821085, 41.708492, 34.065937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579217, 0.462694, -0.671134,
		0.705260, 0.128438, 0.697217,
		0.408798, -0.877165, -0.251926,
		28.943724, 41.445343, 33.990360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355455, 42.186275, 34.101429>,  <28.657566, 42.059357, 34.166706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355455, 42.186275, 34.101429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326103, 41.828106, 33.925777>,  <29.308493, 41.613205, 33.820385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326103, 41.828106, 33.925777>,  <29.355455, 42.186275, 34.101429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326103, 41.828106, 33.925777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563687, 0.326001, -0.758934,
		0.822722, -0.303222, 0.480816,
		-0.073379, -0.895422, -0.439130,
		29.304089, 41.559479, 33.794037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078848, 41.910828, 34.039532>,  <29.355455, 42.186275, 34.101429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078848, 41.910828, 34.039532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817471, 41.764652, 33.774361>,  <29.660645, 41.676949, 33.615257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817471, 41.764652, 33.774361>,  <30.078848, 41.910828, 34.039532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817471, 41.764652, 33.774361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613172, 0.258010, -0.746626,
		0.443885, -0.894365, 0.055480,
		-0.653441, -0.365435, -0.662926,
		29.621437, 41.655022, 33.575481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498690, 41.552917, 33.604904>,  <30.078848, 41.910828, 34.039532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498690, 41.552917, 33.604904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165009, 41.552258, 33.384323>,  <29.964800, 41.551861, 33.251972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165009, 41.552258, 33.384323>,  <30.498690, 41.552917, 33.604904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165009, 41.552258, 33.384323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543881, 0.162748, -0.823229,
		0.091105, -0.986666, -0.134869,
		-0.834203, -0.001648, -0.551456,
		29.914747, 41.551765, 33.218887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459904, 40.983227, 33.022572>,  <30.498690, 41.552917, 33.604904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459904, 40.983227, 33.022572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269394, 41.320057, 32.921326>,  <30.155088, 41.522156, 32.860577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269394, 41.320057, 32.921326>,  <30.459904, 40.983227, 33.022572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269394, 41.320057, 32.921326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558318, 0.067229, -0.826899,
		-0.679297, -0.535148, -0.502167,
		-0.476274, 0.842078, -0.253114,
		30.126513, 41.572681, 32.845390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226612, 40.891563, 32.387383>,  <30.459904, 40.983227, 33.022572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226612, 40.891563, 32.387383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299149, 41.283577, 32.420010>,  <30.342670, 41.518784, 32.439587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299149, 41.283577, 32.420010>,  <30.226612, 40.891563, 32.387383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299149, 41.283577, 32.420010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582876, -0.040304, -0.811561,
		-0.792067, 0.194716, -0.578545,
		0.181341, 0.980031, 0.081572,
		30.353552, 41.577587, 32.444481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065372, 41.215466, 31.802366>,  <30.226612, 40.891563, 32.387383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065372, 41.215466, 31.802366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358475, 41.423836, 31.977501>,  <30.534336, 41.548859, 32.082581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358475, 41.423836, 31.977501>,  <30.065372, 41.215466, 31.802366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358475, 41.423836, 31.977501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619616, -0.244765, -0.745765,
		-0.281324, 0.817755, -0.502130,
		0.732757, 0.520929, 0.437836,
		30.578302, 41.580116, 32.108852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353128, 41.731926, 31.258055>,  <30.065372, 41.215466, 31.802366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353128, 41.731926, 31.258055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595541, 41.585621, 31.540598>,  <30.740990, 41.497837, 31.710125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595541, 41.585621, 31.540598>,  <30.353128, 41.731926, 31.258055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595541, 41.585621, 31.540598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638352, -0.306183, -0.706229,
		0.474585, 0.878904, 0.047926,
		0.606033, -0.365759, 0.706360,
		30.777351, 41.475895, 31.752506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982180, 42.122849, 31.190287>,  <30.353128, 41.731926, 31.258055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982180, 42.122849, 31.190287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020191, 41.742516, 31.308195>,  <31.042997, 41.514317, 31.378941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020191, 41.742516, 31.308195>,  <30.982180, 42.122849, 31.190287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020191, 41.742516, 31.308195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732901, -0.133563, -0.667095,
		0.673666, 0.279431, 0.684173,
		0.095027, -0.950831, 0.294773,
		31.048698, 41.457268, 31.396627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725353, 41.929234, 31.286104>,  <30.982180, 42.122849, 31.190287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725353, 41.929234, 31.286104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473446, 41.630508, 31.200630>,  <31.322302, 41.451275, 31.149345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473446, 41.630508, 31.200630>,  <31.725353, 41.929234, 31.286104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473446, 41.630508, 31.200630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494442, -0.173232, -0.851773,
		0.599097, -0.642076, 0.478352,
		-0.629769, -0.746812, -0.213687,
		31.284515, 41.406464, 31.136524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160980, 41.423550, 30.965439>,  <31.725353, 41.929234, 31.286104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160980, 41.423550, 30.965439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780390, 41.351917, 30.865339>,  <31.552036, 41.308937, 30.805279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780390, 41.351917, 30.865339>,  <32.160980, 41.423550, 30.965439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780390, 41.351917, 30.865339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287562, -0.227903, -0.930252,
		0.109554, -0.957074, 0.268340,
		-0.951476, -0.179077, -0.250251,
		31.494947, 41.298195, 30.790264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647255, 42.014912, 30.794445>,  <32.160980, 41.423550, 30.965439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647255, 42.014912, 30.794445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879387, 42.305885, 30.647991>,  <33.018665, 42.480469, 30.560120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879387, 42.305885, 30.647991>,  <32.647255, 42.014912, 30.794445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879387, 42.305885, 30.647991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750238, -0.302651, 0.587831,
		0.316800, -0.615822, -0.721389,
		0.580328, 0.727438, -0.366133,
		33.053486, 42.524117, 30.538151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311691, 41.763786, 30.743479>,  <32.647255, 42.014912, 30.794445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311691, 41.763786, 30.743479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361080, 42.160717, 30.746006>,  <33.390713, 42.398876, 30.747522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361080, 42.160717, 30.746006>,  <33.311691, 41.763786, 30.743479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361080, 42.160717, 30.746006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870883, -0.111412, 0.478697,
		0.475728, -0.053604, -0.877958,
		0.123475, 0.992328, 0.006320,
		33.398121, 42.458416, 30.747902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673141, 41.454960, 31.337650>,  <33.311691, 41.763786, 30.743479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673141, 41.454960, 31.337650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974991, 41.222649, 31.459787>,  <34.156101, 41.083260, 31.533070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974991, 41.222649, 31.459787>,  <33.673141, 41.454960, 31.337650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974991, 41.222649, 31.459787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602690, -0.429518, 0.672517,
		-0.259437, -0.691524, -0.674157,
		0.754624, -0.580783, 0.305342,
		34.201378, 41.048412, 31.551390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513988, 40.703720, 31.360861>,  <33.673141, 41.454960, 31.337650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513988, 40.703720, 31.360861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811260, 40.781628, 31.616907>,  <33.989624, 40.828373, 31.770535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811260, 40.781628, 31.616907>,  <33.513988, 40.703720, 31.360861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811260, 40.781628, 31.616907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420691, -0.607911, 0.673397,
		0.520289, -0.769747, -0.369851,
		0.743182, 0.194768, 0.640115,
		34.034214, 40.840057, 31.808941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733452, 40.128052, 31.592436>,  <33.513988, 40.703720, 31.360861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733452, 40.128052, 31.592436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815861, 40.398365, 31.875525>,  <33.865307, 40.560555, 32.045376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815861, 40.398365, 31.875525>,  <33.733452, 40.128052, 31.592436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815861, 40.398365, 31.875525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592044, -0.489762, 0.640013,
		0.779126, -0.550860, 0.299192,
		0.206024, 0.675786, 0.707720,
		33.877666, 40.601101, 32.087841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880836, 39.696518, 32.074444>,  <33.733452, 40.128052, 31.592436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880836, 39.696518, 32.074444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798710, 40.048813, 32.245159>,  <33.749435, 40.260189, 32.347588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798710, 40.048813, 32.245159>,  <33.880836, 39.696518, 32.074444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798710, 40.048813, 32.245159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443501, -0.472457, 0.761637,
		0.872441, -0.032905, 0.487610,
		-0.205313, 0.880739, 0.426785,
		33.737118, 40.313034, 32.373196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939537, 39.565895, 32.778160>,  <33.880836, 39.696518, 32.074444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939537, 39.565895, 32.778160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730392, 39.904881, 32.741470>,  <33.604904, 40.108273, 32.719456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730392, 39.904881, 32.741470>,  <33.939537, 39.565895, 32.778160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730392, 39.904881, 32.741470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506995, -0.222674, 0.832690,
		0.685253, 0.481887, 0.546089,
		-0.522862, 0.847468, -0.091726,
		33.573532, 40.159122, 32.713951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974689, 39.802891, 33.418247>,  <33.939537, 39.565895, 32.778160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974689, 39.802891, 33.418247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661129, 39.983013, 33.247261>,  <33.472992, 40.091087, 33.144669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661129, 39.983013, 33.247261>,  <33.974689, 39.802891, 33.418247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661129, 39.983013, 33.247261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508372, -0.070249, 0.858267,
		0.356457, 0.890105, 0.283992,
		-0.783898, 0.450309, -0.427464,
		33.425961, 40.118107, 33.119022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578472, 40.113205, 34.006916>,  <33.974689, 39.802891, 33.418247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578472, 40.113205, 34.006916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330830, 40.102150, 33.692989>,  <33.182243, 40.095516, 33.504631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330830, 40.102150, 33.692989>,  <33.578472, 40.113205, 34.006916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330830, 40.102150, 33.692989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774947, -0.140279, 0.616262,
		-0.127126, 0.989726, 0.065430,
		-0.619109, -0.027638, -0.784818,
		33.145096, 40.093857, 33.457542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984577, 40.349907, 34.300755>,  <33.578472, 40.113205, 34.006916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984577, 40.349907, 34.300755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856861, 40.193214, 33.955593>,  <32.780231, 40.099197, 33.748497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856861, 40.193214, 33.955593>,  <32.984577, 40.349907, 34.300755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856861, 40.193214, 33.955593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884898, -0.202618, 0.419406,
		-0.339134, 0.897493, -0.281948,
		-0.319286, -0.391731, -0.862904,
		32.761074, 40.075695, 33.696720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306076, 40.661621, 34.142796>,  <32.984577, 40.349907, 34.300755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306076, 40.661621, 34.142796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309391, 40.307518, 33.956783>,  <32.311382, 40.095058, 33.845177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309391, 40.307518, 33.956783>,  <32.306076, 40.661621, 34.142796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309391, 40.307518, 33.956783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912412, -0.196995, 0.358745,
		-0.409190, 0.421325, -0.809351,
		0.008290, -0.885256, -0.465030,
		32.311878, 40.041943, 33.817276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563269, 40.615440, 33.899090>,  <32.306076, 40.661621, 34.142796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563269, 40.615440, 33.899090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722937, 40.248688, 33.899353>,  <31.818737, 40.028637, 33.899513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722937, 40.248688, 33.899353>,  <31.563269, 40.615440, 33.899090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722937, 40.248688, 33.899353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905109, -0.393930, 0.159988,
		-0.146429, -0.064461, -0.987119,
		0.399169, -0.916877, 0.000662,
		31.842688, 39.973625, 33.899551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999563, 40.135326, 33.679005>,  <31.563269, 40.615440, 33.899090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999563, 40.135326, 33.679005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252386, 39.862282, 33.825726>,  <31.404079, 39.698456, 33.913757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252386, 39.862282, 33.825726>,  <30.999563, 40.135326, 33.679005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252386, 39.862282, 33.825726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760606, -0.637043, 0.125116,
		0.148260, -0.358069, -0.921849,
		0.632057, -0.682615, 0.366798,
		31.442003, 39.657497, 33.935764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714149, 39.455513, 33.493870>,  <30.999563, 40.135326, 33.679005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714149, 39.455513, 33.493870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968243, 39.384010, 33.794411>,  <31.120699, 39.341110, 33.974735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968243, 39.384010, 33.794411>,  <30.714149, 39.455513, 33.493870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968243, 39.384010, 33.794411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588011, -0.742669, 0.320447,
		0.500721, -0.645360, -0.576879,
		0.635233, -0.178757, 0.751348,
		31.158813, 39.330383, 34.019814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879116, 38.731659, 33.516026>,  <30.714149, 39.455513, 33.493870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879116, 38.731659, 33.516026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948381, 38.875637, 33.882729>,  <30.989941, 38.962025, 34.102753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948381, 38.875637, 33.882729>,  <30.879116, 38.731659, 33.516026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948381, 38.875637, 33.882729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617438, -0.685523, 0.385782,
		0.767323, -0.632846, 0.103540,
		0.173162, 0.359949, 0.916761,
		31.000330, 38.983624, 34.157757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997173, 38.092438, 33.995258>,  <30.879116, 38.731659, 33.516026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997173, 38.092438, 33.995258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889511, 38.407387, 34.217106>,  <30.824913, 38.596355, 34.350212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889511, 38.407387, 34.217106>,  <30.997173, 38.092438, 33.995258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889511, 38.407387, 34.217106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587089, -0.590641, 0.553598,
		0.763467, -0.176604, 0.621232,
		-0.269157, 0.787372, 0.554617,
		30.808764, 38.643597, 34.383492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068459, 37.782608, 34.597214>,  <30.997173, 38.092438, 33.995258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068459, 37.782608, 34.597214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854940, 38.113861, 34.665634>,  <30.726830, 38.312614, 34.706688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854940, 38.113861, 34.665634>,  <31.068459, 37.782608, 34.597214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854940, 38.113861, 34.665634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640587, -0.528061, 0.557495,
		0.552006, 0.188014, 0.812367,
		-0.533796, 0.828132, 0.171053,
		30.694801, 38.362301, 34.716949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024481, 37.830437, 35.301357>,  <31.068459, 37.782608, 34.597214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024481, 37.830437, 35.301357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723387, 38.045532, 35.149448>,  <30.542730, 38.174591, 35.058304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723387, 38.045532, 35.149448>,  <31.024481, 37.830437, 35.301357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723387, 38.045532, 35.149448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609182, -0.350260, 0.711488,
		0.249576, 0.766912, 0.591234,
		-0.752734, 0.537739, -0.379773,
		30.497566, 38.206856, 35.035515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587849, 38.203640, 35.908325>,  <31.024481, 37.830437, 35.301357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587849, 38.203640, 35.908325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342007, 38.188305, 35.593166>,  <30.194502, 38.179104, 35.404072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342007, 38.188305, 35.593166>,  <30.587849, 38.203640, 35.908325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342007, 38.188305, 35.593166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668326, -0.505285, 0.545919,
		-0.419045, 0.862101, 0.284929,
		-0.614607, -0.038340, -0.787901,
		30.157625, 38.176804, 35.356796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897923, 38.285965, 36.185871>,  <30.587849, 38.203640, 35.908325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897923, 38.285965, 36.185871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837870, 38.123291, 35.825413>,  <29.801838, 38.025688, 35.609138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837870, 38.123291, 35.825413>,  <29.897923, 38.285965, 36.185871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837870, 38.123291, 35.825413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831186, -0.441628, 0.337778,
		-0.535341, 0.799734, -0.271726,
		-0.150131, -0.406682, -0.901150,
		29.792830, 38.001286, 35.555069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137730, 38.283413, 36.136925>,  <29.897923, 38.285965, 36.185871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137730, 38.283413, 36.136925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298437, 38.032536, 35.870029>,  <29.394861, 37.882008, 35.709892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298437, 38.032536, 35.870029>,  <29.137730, 38.283413, 36.136925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298437, 38.032536, 35.870029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768494, -0.627169, 0.126790,
		-0.497996, 0.461832, -0.733970,
		0.401767, -0.627193, -0.667242,
		29.418966, 37.844379, 35.669857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519787, 38.023350, 35.878407>,  <29.137730, 38.283413, 36.136925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519787, 38.023350, 35.878407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803396, 37.753281, 35.796986>,  <28.973562, 37.591240, 35.748131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803396, 37.753281, 35.796986>,  <28.519787, 38.023350, 35.878407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803396, 37.753281, 35.796986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668874, -0.735319, 0.109151,
		-0.223373, 0.058762, -0.972960,
		0.709022, -0.675169, -0.203555,
		29.016104, 37.550732, 35.735920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184679, 37.612499, 35.447567>,  <28.519787, 38.023350, 35.878407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184679, 37.612499, 35.447567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480516, 37.408554, 35.623310>,  <28.658018, 37.286186, 35.728756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480516, 37.408554, 35.623310>,  <28.184679, 37.612499, 35.447567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480516, 37.408554, 35.623310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659035, -0.681143, 0.318932,
		0.136655, -0.525434, -0.839789,
		0.739593, -0.509867, 0.439361,
		28.702394, 37.255592, 35.755119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300793, 36.907677, 35.154091>,  <28.184679, 37.612499, 35.447567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300793, 36.907677, 35.154091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462624, 36.861324, 35.516945>,  <28.559721, 36.833511, 35.734657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462624, 36.861324, 35.516945>,  <28.300793, 36.907677, 35.154091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462624, 36.861324, 35.516945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596309, -0.785487, 0.165609,
		0.693350, -0.607933, -0.386889,
		0.404575, -0.115881, 0.907133,
		28.583996, 36.826561, 35.789085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.263556, 36.197323, 35.173733>,  <28.300793, 36.907677, 35.154091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.263556, 36.197323, 35.173733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334274, 36.328262, 35.545021>,  <28.376705, 36.406826, 35.767792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334274, 36.328262, 35.545021>,  <28.263556, 36.197323, 35.173733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334274, 36.328262, 35.545021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636097, -0.681658, 0.361555,
		0.751081, -0.654358, 0.087709,
		0.176799, 0.327349, 0.928216,
		28.387314, 36.426468, 35.823486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300125, 35.548065, 35.520306>,  <28.263556, 36.197323, 35.173733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300125, 35.548065, 35.520306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.220833, 35.830559, 35.792171>,  <28.173258, 36.000053, 35.955292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.220833, 35.830559, 35.792171>,  <28.300125, 35.548065, 35.520306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220833, 35.830559, 35.792171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681852, -0.597500, 0.421984,
		0.704117, -0.379779, 0.599989,
		-0.198233, 0.706230, 0.679664,
		28.161364, 36.042427, 35.996071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297979, 35.213566, 36.159264>,  <28.300125, 35.548065, 35.520306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297979, 35.213566, 36.159264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094919, 35.552086, 36.223854>,  <27.973083, 35.755196, 36.262608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094919, 35.552086, 36.223854>,  <28.297979, 35.213566, 36.159264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094919, 35.552086, 36.223854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751143, -0.526542, 0.398168,
		0.421990, 0.080841, 0.902989,
		-0.507650, 0.846297, 0.161472,
		27.942625, 35.805977, 36.272297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035110, 35.046028, 36.179737>,  <28.297979, 35.213566, 36.159264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035110, 35.046028, 36.179737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191252, 34.771744, 36.425480>,  <29.284937, 34.607174, 36.572926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191252, 34.771744, 36.425480>,  <29.035110, 35.046028, 36.179737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191252, 34.771744, 36.425480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749959, -0.623887, -0.219832,
		0.534027, -0.374927, -0.757790,
		0.390354, -0.685708, 0.614353,
		29.308357, 34.566032, 36.609787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288570, 34.851131, 35.525524>,  <29.035110, 35.046028, 36.179737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288570, 34.851131, 35.525524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510988, 34.536205, 35.418980>,  <29.644440, 34.347248, 35.355053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510988, 34.536205, 35.418980>,  <29.288570, 34.851131, 35.525524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510988, 34.536205, 35.418980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626808, 0.607677, -0.487688,
		0.545824, 0.104223, 0.831393,
		0.556047, -0.787316, -0.266357,
		29.677803, 34.300011, 35.339073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821045, 35.400333, 35.469944>,  <29.288570, 34.851131, 35.525524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821045, 35.400333, 35.469944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944561, 35.687771, 35.220699>,  <30.018671, 35.860233, 35.071152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944561, 35.687771, 35.220699>,  <29.821045, 35.400333, 35.469944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944561, 35.687771, 35.220699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389265, 0.502271, 0.772139,
		0.867826, -0.480984, -0.124628,
		0.308790, 0.718595, -0.623114,
		30.037197, 35.903351, 35.033764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361235, 35.651394, 35.832493>,  <29.821045, 35.400333, 35.469944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361235, 35.651394, 35.832493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271564, 35.955799, 35.588982>,  <30.217762, 36.138443, 35.442875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271564, 35.955799, 35.588982>,  <30.361235, 35.651394, 35.832493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271564, 35.955799, 35.588982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458201, 0.633630, 0.623350,
		0.860115, -0.139202, -0.490740,
		-0.224176, 0.761009, -0.608777,
		30.204311, 36.184101, 35.406349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952293, 36.064316, 35.597179>,  <30.361235, 35.651394, 35.832493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952293, 36.064316, 35.597179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632019, 36.260235, 35.735165>,  <30.439854, 36.377785, 35.817955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632019, 36.260235, 35.735165>,  <30.952293, 36.064316, 35.597179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632019, 36.260235, 35.735165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584644, 0.513192, 0.628352,
		0.130732, 0.704794, -0.697262,
		-0.800688, 0.489796, 0.344963,
		30.391813, 36.407173, 35.838654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572515, 36.281727, 35.992683>,  <30.952293, 36.064316, 35.597179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572515, 36.281727, 35.992683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617201, 35.919983, 35.827930>,  <31.644012, 35.702934, 35.729076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617201, 35.919983, 35.827930>,  <31.572515, 36.281727, 35.992683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617201, 35.919983, 35.827930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975647, 0.178550, -0.127412,
		0.188769, -0.387621, 0.902284,
		0.111715, -0.904362, -0.411885,
		31.650715, 35.648674, 35.704365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358376, 36.507324, 36.391312>,  <31.572515, 36.281727, 35.992683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358376, 36.507324, 36.391312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635288, 36.221672, 36.432816>,  <32.801437, 36.050282, 36.457718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635288, 36.221672, 36.432816>,  <32.358376, 36.507324, 36.391312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635288, 36.221672, 36.432816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198958, 0.327102, 0.923807,
		-0.693656, -0.618893, 0.368529,
		0.692284, -0.714126, 0.103763,
		32.842972, 36.007435, 36.463943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130100, 35.905910, 36.743469>,  <32.358376, 36.507324, 36.391312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130100, 35.905910, 36.743469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516232, 36.009300, 36.758041>,  <32.747910, 36.071335, 36.766785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516232, 36.009300, 36.758041>,  <32.130100, 35.905910, 36.743469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516232, 36.009300, 36.758041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125634, 0.337720, 0.932824,
		0.228810, -0.905061, 0.358485,
		0.965330, 0.258477, 0.036433,
		32.805832, 36.086845, 36.768970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282108, 35.772602, 37.406300>,  <32.130100, 35.905910, 36.743469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282108, 35.772602, 37.406300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609226, 35.970200, 37.288185>,  <32.805496, 36.088757, 37.217316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609226, 35.970200, 37.288185>,  <32.282108, 35.772602, 37.406300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609226, 35.970200, 37.288185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088809, 0.398610, 0.912811,
		0.568624, -0.772711, 0.282108,
		0.817790, 0.493992, -0.295282,
		32.854565, 36.118397, 37.199600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760288, 35.737591, 37.961510>,  <32.282108, 35.772602, 37.406300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760288, 35.737591, 37.961510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823826, 36.059231, 37.732361>,  <32.861950, 36.252216, 37.594872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823826, 36.059231, 37.732361>,  <32.760288, 35.737591, 37.961510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823826, 36.059231, 37.732361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063190, 0.570771, 0.818674,
		0.985279, -0.166244, 0.039854,
		0.158848, 0.804104, -0.572873,
		32.871479, 36.300461, 37.560497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331478, 36.097610, 38.234993>,  <32.760288, 35.737591, 37.961510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331478, 36.097610, 38.234993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181496, 36.390850, 38.008026>,  <33.091507, 36.566795, 37.871845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181496, 36.390850, 38.008026>,  <33.331478, 36.097610, 38.234993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181496, 36.390850, 38.008026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148456, 0.651663, 0.743839,
		0.915078, 0.194671, -0.353180,
		-0.374958, 0.733102, -0.567422,
		33.069008, 36.610783, 37.837799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849800, 36.591156, 38.235691>,  <33.331478, 36.097610, 38.234993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849800, 36.591156, 38.235691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494137, 36.756672, 38.157539>,  <33.280739, 36.855984, 38.110649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494137, 36.756672, 38.157539>,  <33.849800, 36.591156, 38.235691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494137, 36.756672, 38.157539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281694, 0.831435, 0.478920,
		0.360620, 0.370798, -0.855840,
		-0.889158, 0.413794, -0.195380,
		33.227390, 36.880810, 38.098927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977718, 37.243858, 38.142052>,  <33.849800, 36.591156, 38.235691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977718, 37.243858, 38.142052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583706, 37.284809, 38.197517>,  <33.347298, 37.309380, 38.230797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583706, 37.284809, 38.197517>,  <33.977718, 37.243858, 38.142052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583706, 37.284809, 38.197517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160668, 0.836648, 0.523647,
		-0.062400, 0.538089, -0.840575,
		-0.985034, 0.102378, 0.138661,
		33.288197, 37.315521, 38.239117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878380, 37.909302, 38.439228>,  <33.977718, 37.243858, 38.142052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878380, 37.909302, 38.439228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513691, 37.764278, 38.516502>,  <33.294880, 37.677265, 38.562866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513691, 37.764278, 38.516502>,  <33.878380, 37.909302, 38.439228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513691, 37.764278, 38.516502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011656, 0.447222, 0.894347,
		-0.410647, 0.817646, -0.403515,
		-0.911720, -0.362557, 0.193181,
		33.240173, 37.655510, 38.574455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540089, 38.531452, 38.703205>,  <33.878380, 37.909302, 38.439228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540089, 38.531452, 38.703205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343288, 38.209515, 38.835968>,  <33.225208, 38.016354, 38.915627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343288, 38.209515, 38.835968>,  <33.540089, 38.531452, 38.703205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343288, 38.209515, 38.835968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015427, 0.389245, 0.921005,
		-0.870459, 0.448012, -0.203925,
		-0.491998, -0.804843, 0.331911,
		33.195690, 37.968063, 38.935543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964901, 38.773479, 39.129093>,  <33.540089, 38.531452, 38.703205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964901, 38.773479, 39.129093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002048, 38.391891, 39.243164>,  <33.024338, 38.162941, 39.311607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002048, 38.391891, 39.243164>,  <32.964901, 38.773479, 39.129093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002048, 38.391891, 39.243164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034473, 0.289321, 0.956611,
		-0.995082, -0.079005, 0.059754,
		0.092865, -0.953966, 0.285174,
		33.029907, 38.105701, 39.328716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487823, 38.659851, 39.673779>,  <32.964901, 38.773479, 39.129093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487823, 38.659851, 39.673779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775173, 38.382095, 39.690563>,  <32.947586, 38.215443, 39.700634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775173, 38.382095, 39.690563>,  <32.487823, 38.659851, 39.673779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775173, 38.382095, 39.690563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024526, 0.085557, 0.996031,
		-0.695220, -0.714499, 0.078493,
		0.718379, -0.694386, 0.041957,
		32.990688, 38.173779, 39.703152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247185, 38.074009, 40.057655>,  <32.487823, 38.659851, 39.673779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247185, 38.074009, 40.057655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643986, 38.049015, 40.101540>,  <32.882065, 38.034019, 40.127869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643986, 38.049015, 40.101540>,  <32.247185, 38.074009, 40.057655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643986, 38.049015, 40.101540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119673, -0.188434, 0.974767,
		-0.040232, -0.980096, -0.194403,
		0.991998, -0.062481, 0.109710,
		32.941586, 38.030270, 40.134453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325619, 37.472424, 40.440849>,  <32.247185, 38.074009, 40.057655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325619, 37.472424, 40.440849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666843, 37.679558, 40.466549>,  <32.871578, 37.803837, 40.481968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666843, 37.679558, 40.466549>,  <32.325619, 37.472424, 40.440849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666843, 37.679558, 40.466549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082434, -0.255320, 0.963336,
		0.515253, -0.816491, -0.260492,
		0.853064, 0.517835, 0.064248,
		32.922764, 37.834908, 40.485825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808590, 36.930122, 40.658150>,  <32.325619, 37.472424, 40.440849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808590, 36.930122, 40.658150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986752, 37.274567, 40.756207>,  <33.093647, 37.481236, 40.815041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986752, 37.274567, 40.756207>,  <32.808590, 36.930122, 40.658150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986752, 37.274567, 40.756207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043549, -0.252642, 0.966579,
		0.894270, -0.441194, -0.075027,
		0.445404, 0.861115, 0.245144,
		33.120373, 37.532902, 40.829750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462830, 36.749268, 41.102631>,  <32.808590, 36.930122, 40.658150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462830, 36.749268, 41.102631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376102, 37.132668, 41.176685>,  <33.324066, 37.362705, 41.221119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376102, 37.132668, 41.176685>,  <33.462830, 36.749268, 41.102631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376102, 37.132668, 41.176685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009867, -0.191785, 0.981387,
		0.976162, 0.210958, 0.051040,
		-0.216821, 0.958496, 0.185132,
		33.311058, 37.420216, 41.232224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887966, 36.967480, 41.702991>,  <33.462830, 36.749268, 41.102631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887966, 36.967480, 41.702991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595127, 37.239880, 41.696445>,  <33.419422, 37.403320, 41.692516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595127, 37.239880, 41.696445>,  <33.887966, 36.967480, 41.702991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595127, 37.239880, 41.696445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043267, 0.070464, 0.996576,
		0.679821, 0.728885, -0.081051,
		-0.732100, 0.681000, -0.016366,
		33.375496, 37.444180, 41.691536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944748, 37.266621, 42.376530>,  <33.887966, 36.967480, 41.702991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944748, 37.266621, 42.376530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592716, 37.419174, 42.263393>,  <33.381496, 37.510708, 42.195511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592716, 37.419174, 42.263393>,  <33.944748, 37.266621, 42.376530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592716, 37.419174, 42.263393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199091, 0.244394, 0.949018,
		0.431066, 0.891525, -0.139157,
		-0.880082, 0.381385, -0.282845,
		33.328693, 37.533588, 42.178539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729134, 37.843384, 42.876823>,  <33.944748, 37.266621, 42.376530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729134, 37.843384, 42.876823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390041, 37.715790, 42.707306>,  <33.186584, 37.639233, 42.605595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390041, 37.715790, 42.707306>,  <33.729134, 37.843384, 42.876823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390041, 37.715790, 42.707306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495231, 0.189795, 0.847776,
		-0.189995, 0.928561, -0.318866,
		-0.847732, -0.318986, -0.423792,
		33.135723, 37.620094, 42.580170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225388, 38.370132, 43.112274>,  <33.729134, 37.843384, 42.876823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225388, 38.370132, 43.112274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009956, 38.051105, 43.003597>,  <32.880699, 37.859688, 42.938393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009956, 38.051105, 43.003597>,  <33.225388, 38.370132, 43.112274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009956, 38.051105, 43.003597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591714, 0.128467, 0.795846,
		-0.599840, 0.589389, -0.541122,
		-0.538579, -0.797570, -0.271690,
		32.848381, 37.811836, 42.922089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527592, 38.533806, 43.199615>,  <33.225388, 38.370132, 43.112274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527592, 38.533806, 43.199615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519020, 38.133945, 43.193367>,  <32.513878, 37.894032, 43.189617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519020, 38.133945, 43.193367>,  <32.527592, 38.533806, 43.199615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519020, 38.133945, 43.193367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686693, 0.003363, 0.726939,
		-0.726631, 0.026307, -0.686524,
		-0.021432, -0.999648, -0.015621,
		32.512589, 37.834049, 43.188683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808142, 38.355362, 43.278690>,  <32.527592, 38.533806, 43.199615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808142, 38.355362, 43.278690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030247, 38.047894, 43.405701>,  <32.163509, 37.863411, 43.481907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030247, 38.047894, 43.405701>,  <31.808142, 38.355362, 43.278690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030247, 38.047894, 43.405701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622240, -0.130647, 0.771847,
		-0.551816, -0.626154, -0.550844,
		0.555262, -0.768676, 0.317526,
		32.196827, 37.817291, 43.500957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325544, 37.817726, 43.662334>,  <31.808142, 38.355362, 43.278690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325544, 37.817726, 43.662334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691166, 37.741287, 43.805435>,  <31.910538, 37.695423, 43.891296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691166, 37.741287, 43.805435>,  <31.325544, 37.817726, 43.662334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691166, 37.741287, 43.805435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394387, -0.212833, 0.893958,
		-0.094689, -0.958220, -0.269906,
		0.914053, -0.191095, 0.357757,
		31.965382, 37.683956, 43.912762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228107, 37.198730, 44.075039>,  <31.325544, 37.817726, 43.662334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228107, 37.198730, 44.075039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590998, 37.330849, 44.179230>,  <31.808731, 37.410118, 44.241745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590998, 37.330849, 44.179230>,  <31.228107, 37.198730, 44.075039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590998, 37.330849, 44.179230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248016, -0.080126, 0.965437,
		0.339749, -0.940471, 0.009227,
		0.907226, 0.330295, 0.260475,
		31.863165, 37.429935, 44.257374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471090, 36.650665, 44.488514>,  <31.228107, 37.198730, 44.075039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471090, 36.650665, 44.488514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671314, 36.982853, 44.586304>,  <31.791449, 37.182167, 44.644978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671314, 36.982853, 44.586304>,  <31.471090, 36.650665, 44.488514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671314, 36.982853, 44.586304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259138, -0.125709, 0.957625,
		0.826008, -0.542698, 0.152281,
		0.500558, 0.830467, 0.244470,
		31.821482, 37.231995, 44.659645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939375, 36.412582, 44.957733>,  <31.471090, 36.650665, 44.488514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939375, 36.412582, 44.957733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894588, 36.807838, 44.999779>,  <31.867716, 37.044991, 45.025005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894588, 36.807838, 44.999779>,  <31.939375, 36.412582, 44.957733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894588, 36.807838, 44.999779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256921, -0.130971, 0.957517,
		0.959924, 0.080205, 0.268538,
		-0.111968, 0.988137, 0.105116,
		31.860998, 37.104279, 45.031315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266308, 36.559875, 45.540146>,  <31.939375, 36.412582, 44.957733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266308, 36.559875, 45.540146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991447, 36.848755, 45.508511>,  <31.826532, 37.022083, 45.489529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991447, 36.848755, 45.508511>,  <32.266308, 36.559875, 45.540146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991447, 36.848755, 45.508511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169944, -0.053946, 0.983976,
		0.706362, 0.689576, 0.159803,
		-0.687147, 0.722201, -0.079084,
		31.785303, 37.065414, 45.484787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379124, 36.799274, 46.183395>,  <32.266308, 36.559875, 45.540146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379124, 36.799274, 46.183395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059643, 37.008934, 46.065182>,  <31.867954, 37.134727, 45.994255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059643, 37.008934, 46.065182>,  <32.379124, 36.799274, 46.183395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059643, 37.008934, 46.065182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224467, 0.196153, 0.954536,
		0.558287, 0.828730, -0.039015,
		-0.798705, 0.524147, -0.295533,
		31.820032, 37.166180, 45.976521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445007, 37.399471, 46.496773>,  <32.379124, 36.799274, 46.183395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445007, 37.399471, 46.496773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056526, 37.335194, 46.426414>,  <31.823437, 37.296627, 46.384197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056526, 37.335194, 46.426414>,  <32.445007, 37.399471, 46.496773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056526, 37.335194, 46.426414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180509, 0.014435, 0.983467,
		-0.155494, 0.986899, -0.043025,
		-0.971204, -0.160690, -0.175900,
		31.765165, 37.286987, 46.373646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116436, 37.862816, 46.941040>,  <32.445007, 37.399471, 46.496773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116436, 37.862816, 46.941040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822441, 37.611897, 46.838058>,  <31.646044, 37.461346, 46.776268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822441, 37.611897, 46.838058>,  <32.116436, 37.862816, 46.941040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822441, 37.611897, 46.838058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311116, -0.025387, 0.950033,
		-0.602492, 0.778364, -0.176504,
		-0.734990, -0.627300, -0.257458,
		31.601944, 37.423706, 46.760822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389973, 38.168720, 47.031559>,  <32.116436, 37.862816, 46.941040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389973, 38.168720, 47.031559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347597, 37.772678, 47.068382>,  <31.322172, 37.535053, 47.090477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347597, 37.772678, 47.068382>,  <31.389973, 38.168720, 47.031559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347597, 37.772678, 47.068382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264047, 0.117268, 0.957354,
		-0.958674, 0.077111, -0.273857,
		-0.105937, -0.990102, 0.092061,
		31.315815, 37.475647, 47.096001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663084, 38.045937, 47.406666>,  <31.389973, 38.168720, 47.031559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663084, 38.045937, 47.406666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919739, 37.741753, 47.446682>,  <31.073732, 37.559242, 47.470692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919739, 37.741753, 47.446682>,  <30.663084, 38.045937, 47.406666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919739, 37.741753, 47.446682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127341, 0.022997, 0.991592,
		-0.756363, -0.648982, -0.082081,
		0.641638, -0.760456, 0.100037,
		31.112230, 37.513615, 47.476692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325521, 37.637047, 47.857361>,  <30.663084, 38.045937, 47.406666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325521, 37.637047, 47.857361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707266, 37.520863, 47.885155>,  <30.936312, 37.451153, 47.901833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707266, 37.520863, 47.885155>,  <30.325521, 37.637047, 47.857361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707266, 37.520863, 47.885155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040693, 0.104028, 0.993742,
		-0.295875, -0.951215, 0.087460,
		0.954360, -0.290464, 0.069487,
		30.993574, 37.433723, 47.906002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298571, 37.426620, 48.552685>,  <30.325521, 37.637047, 47.857361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298571, 37.426620, 48.552685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688231, 37.412163, 48.463490>,  <30.922026, 37.403488, 48.409973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688231, 37.412163, 48.463490>,  <30.298571, 37.426620, 48.552685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688231, 37.412163, 48.463490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225835, 0.131795, 0.965209,
		-0.005503, -0.990617, 0.136552,
		0.974150, -0.036150, -0.222991,
		30.980476, 37.401318, 48.396591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613794, 36.903595, 48.956871>,  <30.298571, 37.426620, 48.552685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613794, 36.903595, 48.956871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892258, 37.177330, 48.870113>,  <31.059336, 37.341572, 48.818058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892258, 37.177330, 48.870113>,  <30.613794, 36.903595, 48.956871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892258, 37.177330, 48.870113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164693, 0.141828, 0.976095,
		0.698742, -0.715237, -0.013971,
		0.696157, 0.684339, -0.216896,
		31.101105, 37.382633, 48.805046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300739, 36.609283, 49.191090>,  <30.613794, 36.903595, 48.956871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300739, 36.609283, 49.191090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258350, 37.006767, 49.176624>,  <31.232918, 37.245258, 49.167946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258350, 37.006767, 49.176624>,  <31.300739, 36.609283, 49.191090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258350, 37.006767, 49.176624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140068, 0.050919, 0.988832,
		0.984455, 0.099723, -0.144583,
		-0.105972, 0.993712, -0.036159,
		31.226559, 37.304882, 49.165775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855185, 36.918133, 49.676525>,  <31.300739, 36.609283, 49.191090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855185, 36.918133, 49.676525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582361, 37.208584, 49.641796>,  <31.418667, 37.382854, 49.620960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582361, 37.208584, 49.641796>,  <31.855185, 36.918133, 49.676525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582361, 37.208584, 49.641796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086934, 0.198387, 0.976261,
		0.726112, 0.658320, -0.198436,
		-0.682059, 0.726125, -0.086820,
		31.377743, 37.426422, 49.615749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087147, 37.373001, 50.120205>,  <31.855185, 36.918133, 49.676525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087147, 37.373001, 50.120205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715010, 37.512444, 50.074715>,  <31.491728, 37.596107, 50.047421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715010, 37.512444, 50.074715>,  <32.087147, 37.373001, 50.120205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715010, 37.512444, 50.074715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044678, 0.200057, 0.978765,
		0.363954, 0.915670, -0.170547,
		-0.930345, 0.348605, -0.113722,
		31.435905, 37.617023, 50.040600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083431, 37.869991, 50.591682>,  <32.087147, 37.373001, 50.120205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083431, 37.869991, 50.591682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695917, 37.813568, 50.510147>,  <31.463408, 37.779716, 50.461224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695917, 37.813568, 50.510147>,  <32.083431, 37.869991, 50.591682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695917, 37.813568, 50.510147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233152, 0.239210, 0.942560,
		-0.084191, 0.960668, -0.264631,
		-0.968789, -0.141054, -0.203842,
		31.405281, 37.771252, 50.448994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614513, 38.503857, 50.618748>,  <32.083431, 37.869991, 50.591682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614513, 38.503857, 50.618748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390566, 38.177273, 50.675236>,  <31.256197, 37.981323, 50.709129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390566, 38.177273, 50.675236>,  <31.614513, 38.503857, 50.618748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390566, 38.177273, 50.675236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174276, 0.282663, 0.943255,
		-0.810046, 0.503488, -0.300543,
		-0.559870, -0.816457, 0.141224,
		31.222605, 37.932335, 50.717602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042870, 38.666752, 51.058552>,  <31.614513, 38.503857, 50.618748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042870, 38.666752, 51.058552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002827, 38.268814, 51.065048>,  <30.978800, 38.030052, 51.068947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002827, 38.268814, 51.065048>,  <31.042870, 38.666752, 51.058552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002827, 38.268814, 51.065048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331071, 0.048699, 0.942349,
		-0.938281, 0.088960, -0.334239,
		-0.100109, -0.994844, 0.016242,
		30.972794, 37.970360, 51.069920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314981, 38.417240, 51.362972>,  <31.042870, 38.666752, 51.058552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314981, 38.417240, 51.362972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621262, 38.166500, 51.420601>,  <30.805029, 38.016056, 51.455177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621262, 38.166500, 51.420601>,  <30.314981, 38.417240, 51.362972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621262, 38.166500, 51.420601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272299, -0.112993, 0.955555,
		-0.582713, -0.770901, -0.257210,
		0.765701, -0.626853, 0.144073,
		30.850971, 37.978443, 51.463821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057983, 37.728558, 51.606110>,  <30.314981, 38.417240, 51.362972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057983, 37.728558, 51.606110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422087, 37.805267, 51.752892>,  <30.640549, 37.851292, 51.840961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422087, 37.805267, 51.752892>,  <30.057983, 37.728558, 51.606110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422087, 37.805267, 51.752892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320108, -0.236177, 0.917470,
		0.262611, -0.952599, -0.153595,
		0.910256, 0.191771, 0.366957,
		30.695164, 37.862797, 51.862980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154421, 37.159496, 52.043259>,  <30.057983, 37.728558, 51.606110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154421, 37.159496, 52.043259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405628, 37.443878, 52.169830>,  <30.556353, 37.614510, 52.245773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405628, 37.443878, 52.169830>,  <30.154421, 37.159496, 52.043259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405628, 37.443878, 52.169830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343759, -0.111348, 0.932433,
		0.698155, -0.694363, 0.174469,
		0.628020, 0.710958, 0.316432,
		30.594034, 37.657166, 52.264759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479254, 36.933544, 52.605247>,  <30.154421, 37.159496, 52.043259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479254, 36.933544, 52.605247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532061, 37.327866, 52.646732>,  <30.563745, 37.564461, 52.671623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532061, 37.327866, 52.646732>,  <30.479254, 36.933544, 52.605247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532061, 37.327866, 52.646732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160725, -0.081957, 0.983590,
		0.978130, -0.146520, 0.147624,
		0.132017, 0.985807, 0.103714,
		30.571667, 37.623608, 52.677845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833874, 36.362297, 52.183556>,  <30.479254, 36.933544, 52.605247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833874, 36.362297, 52.183556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944122, 36.091461, 52.456490>,  <31.010271, 35.928959, 52.620251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944122, 36.091461, 52.456490>,  <30.833874, 36.362297, 52.183556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944122, 36.091461, 52.456490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619644, -0.417526, -0.664615,
		0.734897, 0.605987, 0.304477,
		0.275621, -0.677091, 0.682335,
		31.026808, 35.888332, 52.661190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607399, 36.294201, 52.304092>,  <30.833874, 36.362297, 52.183556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607399, 36.294201, 52.304092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401941, 35.957802, 52.372082>,  <31.278667, 35.755962, 52.412876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401941, 35.957802, 52.372082>,  <31.607399, 36.294201, 52.304092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401941, 35.957802, 52.372082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488271, -0.449408, -0.748080,
		0.705523, -0.301253, 0.641470,
		-0.513643, -0.840999, 0.169975,
		31.247849, 35.705502, 52.423073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078297, 35.717335, 52.124710>,  <31.607399, 36.294201, 52.304092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078297, 35.717335, 52.124710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722769, 35.540657, 52.173546>,  <31.509453, 35.434650, 52.202847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722769, 35.540657, 52.173546>,  <32.078297, 35.717335, 52.124710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722769, 35.540657, 52.173546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234808, -0.667744, -0.706387,
		0.393533, -0.599183, 0.697217,
		-0.888818, -0.441698, 0.122086,
		31.456123, 35.408146, 52.210171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212620, 35.033722, 52.471340>,  <32.078297, 35.717335, 52.124710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212620, 35.033722, 52.471340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868841, 35.048248, 52.267365>,  <31.662575, 35.056965, 52.144978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868841, 35.048248, 52.267365>,  <32.212620, 35.033722, 52.471340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868841, 35.048248, 52.267365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345874, -0.693239, -0.632290,
		-0.376472, -0.719792, 0.583239,
		-0.859442, 0.036312, -0.509942,
		31.611008, 35.059143, 52.114384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041988, 34.399471, 52.466225>,  <32.212620, 35.033722, 52.471340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041988, 34.399471, 52.466225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940439, 34.617687, 52.146744>,  <31.879509, 34.748619, 51.955055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940439, 34.617687, 52.146744>,  <32.041988, 34.399471, 52.466225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940439, 34.617687, 52.146744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378951, -0.703645, -0.601066,
		-0.889912, -0.455265, -0.028097,
		-0.253874, 0.545544, -0.798705,
		31.864277, 34.781349, 51.907131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806881, 33.927982, 51.865002>,  <32.041988, 34.399471, 52.466225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806881, 33.927982, 51.865002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989868, 34.268852, 51.763393>,  <32.099659, 34.473373, 51.702431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989868, 34.268852, 51.763393>,  <31.806881, 33.927982, 51.865002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989868, 34.268852, 51.763393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555466, -0.496928, -0.666723,
		-0.694391, 0.163906, -0.700682,
		0.457468, 0.852172, -0.254018,
		32.127110, 34.524506, 51.687187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125904, 33.801876, 51.249668>,  <31.806881, 33.927982, 51.865002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125904, 33.801876, 51.249668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303703, 34.150154, 51.333866>,  <32.410381, 34.359119, 51.384384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303703, 34.150154, 51.333866>,  <32.125904, 33.801876, 51.249668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303703, 34.150154, 51.333866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847856, -0.333103, -0.412533,
		-0.289073, 0.361843, -0.886288,
		0.444497, 0.870697, 0.210499,
		32.437054, 34.411362, 51.397015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292995, 33.984978, 51.122326>,  <32.125904, 33.801876, 51.249668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292995, 33.984978, 51.122326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181562, 34.367485, 51.086658>,  <31.114702, 34.596989, 51.065258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181562, 34.367485, 51.086658>,  <31.292995, 33.984978, 51.122326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181562, 34.367485, 51.086658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742393, 0.155515, -0.651666,
		-0.609298, -0.247739, -0.753247,
		-0.278584, 0.956264, -0.089165,
		31.097986, 34.654366, 51.059910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194067, 34.129284, 50.519112>,  <31.292995, 33.984978, 51.122326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194067, 34.129284, 50.519112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234179, 34.509148, 50.637836>,  <31.258245, 34.737064, 50.709072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234179, 34.509148, 50.637836>,  <31.194067, 34.129284, 50.519112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234179, 34.509148, 50.637836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788203, 0.106230, -0.606178,
		-0.607190, 0.294737, -0.737868,
		0.100279, 0.949655, 0.296814,
		31.264261, 34.794044, 50.726879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360720, 34.431473, 49.858105>,  <31.194067, 34.129284, 50.519112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360720, 34.431473, 49.858105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493549, 34.672604, 50.148296>,  <31.573248, 34.817284, 50.322411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493549, 34.672604, 50.148296>,  <31.360720, 34.431473, 49.858105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493549, 34.672604, 50.148296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841463, 0.158218, -0.516631,
		-0.426224, 0.782027, -0.454717,
		0.332074, 0.602828, 0.725483,
		31.593172, 34.853451, 50.365940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418020, 35.013874, 49.568024>,  <31.360720, 34.431473, 49.858105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418020, 35.013874, 49.568024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664648, 34.988873, 49.881950>,  <31.812624, 34.973873, 50.070305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664648, 34.988873, 49.881950>,  <31.418020, 35.013874, 49.568024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664648, 34.988873, 49.881950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783328, 0.148703, -0.603560,
		-0.078981, 0.986905, 0.140646,
		0.616570, -0.062502, 0.784815,
		31.849619, 34.970123, 50.117393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781515, 35.675587, 49.554279>,  <31.418020, 35.013874, 49.568024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781515, 35.675587, 49.554279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012421, 35.420521, 49.758301>,  <32.150963, 35.267483, 49.880714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012421, 35.420521, 49.758301>,  <31.781515, 35.675587, 49.554279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012421, 35.420521, 49.758301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816225, 0.468467, -0.338105,
		-0.023345, 0.611493, 0.790906,
		0.577262, -0.637664, 0.510052,
		32.185600, 35.229221, 49.911316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154537, 36.163189, 49.770031>,  <31.781515, 35.675587, 49.554279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154537, 36.163189, 49.770031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356998, 35.820545, 49.810085>,  <32.478474, 35.614960, 49.834118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356998, 35.820545, 49.810085>,  <32.154537, 36.163189, 49.770031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356998, 35.820545, 49.810085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833142, 0.455635, -0.313483,
		0.222907, 0.242098, 0.944299,
		0.506149, -0.856613, 0.100138,
		32.508842, 35.563560, 49.840126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886169, 36.338154, 50.014114>,  <32.154537, 36.163189, 49.770031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886169, 36.338154, 50.014114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884033, 35.965317, 49.869244>,  <32.882751, 35.741615, 49.782322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884033, 35.965317, 49.869244>,  <32.886169, 36.338154, 50.014114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884033, 35.965317, 49.869244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872075, 0.172893, -0.457813,
		0.489343, -0.318285, 0.811935,
		-0.005337, -0.932096, -0.362173,
		32.882431, 35.685688, 49.760593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570557, 36.201698, 50.069660>,  <32.886169, 36.338154, 50.014114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570557, 36.201698, 50.069660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437370, 35.923504, 49.814964>,  <33.357460, 35.756588, 49.662148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437370, 35.923504, 49.814964>,  <33.570557, 36.201698, 50.069660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437370, 35.923504, 49.814964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875593, 0.022574, -0.482522,
		0.349962, -0.718184, 0.601447,
		-0.332963, -0.695487, -0.636737,
		33.337482, 35.714859, 49.623943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186989, 35.767471, 49.972935>,  <33.570557, 36.201698, 50.069660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186989, 35.767471, 49.972935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938271, 35.668983, 49.675549>,  <33.789040, 35.609890, 49.497116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938271, 35.668983, 49.675549>,  <34.186989, 35.767471, 49.972935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938271, 35.668983, 49.675549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781810, -0.138983, -0.607830,
		0.046333, -0.959197, 0.278919,
		-0.621794, -0.246224, -0.743469,
		33.751732, 35.595116, 49.452507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519112, 35.232178, 49.620899>,  <34.186989, 35.767471, 49.972935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519112, 35.232178, 49.620899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246620, 35.361984, 49.358414>,  <34.083126, 35.439869, 49.200924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246620, 35.361984, 49.358414>,  <34.519112, 35.232178, 49.620899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246620, 35.361984, 49.358414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603965, -0.257424, -0.754294,
		-0.413703, -0.910178, -0.020629,
		-0.681232, 0.324513, -0.656213,
		34.042252, 35.459339, 49.161549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279221, 34.662987, 49.150795>,  <34.519112, 35.232178, 49.620899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279221, 34.662987, 49.150795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216881, 35.003815, 48.950916>,  <34.179478, 35.208309, 48.830990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216881, 35.003815, 48.950916>,  <34.279221, 34.662987, 49.150795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216881, 35.003815, 48.950916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535278, -0.352311, -0.767694,
		-0.830174, -0.387118, -0.401186,
		-0.155847, 0.852066, -0.499695,
		34.170128, 35.259434, 48.801006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324905, 34.402237, 48.508564>,  <34.279221, 34.662987, 49.150795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324905, 34.402237, 48.508564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338810, 34.796715, 48.443794>,  <34.347153, 35.033401, 48.404934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338810, 34.796715, 48.443794>,  <34.324905, 34.402237, 48.508564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338810, 34.796715, 48.443794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516231, -0.156453, -0.842038,
		-0.855743, -0.054320, -0.514541,
		0.034762, 0.986191, -0.161925,
		34.349239, 35.092571, 48.395218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069141, 34.548958, 47.843616>,  <34.324905, 34.402237, 48.508564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069141, 34.548958, 47.843616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321205, 34.847298, 47.929974>,  <34.472443, 35.026302, 47.981789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321205, 34.847298, 47.929974>,  <34.069141, 34.548958, 47.843616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321205, 34.847298, 47.929974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448421, -0.122588, -0.885376,
		-0.633888, 0.654741, -0.411703,
		0.630162, 0.745846, 0.215893,
		34.510254, 35.071053, 47.994743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960754, 35.111542, 47.338432>,  <34.069141, 34.548958, 47.843616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960754, 35.111542, 47.338432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321819, 35.172844, 47.499283>,  <34.538460, 35.209625, 47.595795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321819, 35.172844, 47.499283>,  <33.960754, 35.111542, 47.338432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321819, 35.172844, 47.499283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359834, 0.243736, -0.900618,
		-0.236036, 0.957657, 0.164866,
		0.902666, 0.153253, 0.402128,
		34.592621, 35.218819, 47.619923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182388, 35.774914, 47.138668>,  <33.960754, 35.111542, 47.338432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182388, 35.774914, 47.138668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527168, 35.602039, 47.244690>,  <34.734035, 35.498314, 47.308304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527168, 35.602039, 47.244690>,  <34.182388, 35.774914, 47.138668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527168, 35.602039, 47.244690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438102, 0.371820, -0.818423,
		0.255154, 0.821565, 0.509831,
		0.861953, -0.432182, 0.265058,
		34.785755, 35.472385, 47.324207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654457, 36.265373, 47.074062>,  <34.182388, 35.774914, 47.138668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654457, 36.265373, 47.074062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861572, 35.924725, 47.041485>,  <34.985844, 35.720337, 47.021938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861572, 35.924725, 47.041485>,  <34.654457, 36.265373, 47.074062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861572, 35.924725, 47.041485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579750, 0.419308, -0.698621,
		0.629112, 0.314521, 0.710841,
		0.517792, -0.851621, -0.081448,
		35.016911, 35.669239, 47.017052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322285, 36.392864, 46.600246>,  <34.654457, 36.265373, 47.074062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322285, 36.392864, 46.600246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300827, 35.995163, 46.637287>,  <35.287952, 35.756542, 46.659512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300827, 35.995163, 46.637287>,  <35.322285, 36.392864, 46.600246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300827, 35.995163, 46.637287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419934, -0.106593, -0.901273,
		0.905968, -0.009459, 0.423241,
		-0.053640, -0.994258, 0.092597,
		35.284737, 35.696884, 46.665066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948250, 36.118996, 46.269363>,  <35.322285, 36.392864, 46.600246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948250, 36.118996, 46.269363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691509, 35.812645, 46.284676>,  <35.537464, 35.628834, 46.293865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691509, 35.812645, 46.284676>,  <35.948250, 36.118996, 46.269363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691509, 35.812645, 46.284676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253603, -0.259117, -0.931957,
		0.723684, -0.588465, 0.360542,
		-0.641847, -0.765877, 0.038283,
		35.498955, 35.582882, 46.296162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284164, 35.615654, 45.915302>,  <35.948250, 36.118996, 46.269363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284164, 35.615654, 45.915302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902493, 35.496597, 45.927662>,  <35.673489, 35.425163, 45.935078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902493, 35.496597, 45.927662>,  <36.284164, 35.615654, 45.915302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902493, 35.496597, 45.927662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072502, -0.330138, -0.941144,
		0.290327, -0.895777, 0.336590,
		-0.954177, -0.297643, 0.030903,
		35.616238, 35.407303, 45.936932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340828, 34.960110, 45.693333>,  <36.284164, 35.615654, 45.915302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340828, 34.960110, 45.693333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953888, 35.049095, 45.644768>,  <35.721722, 35.102486, 45.615627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953888, 35.049095, 45.644768>,  <36.340828, 34.960110, 45.693333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953888, 35.049095, 45.644768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021887, -0.403952, -0.914518,
		-0.252490, -0.887318, 0.385895,
		-0.967352, 0.222460, -0.121415,
		35.663681, 35.115833, 45.608345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001728, 34.421249, 45.350441>,  <36.340828, 34.960110, 45.693333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001728, 34.421249, 45.350441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737988, 34.709454, 45.264538>,  <35.579742, 34.882378, 45.212997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737988, 34.709454, 45.264538>,  <36.001728, 34.421249, 45.350441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737988, 34.709454, 45.264538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073403, -0.222590, -0.972145,
		-0.748244, -0.656748, 0.093877,
		-0.659350, 0.720511, -0.214759,
		35.540184, 34.925606, 45.200111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644936, 34.163692, 44.861053>,  <36.001728, 34.421249, 45.350441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644936, 34.163692, 44.861053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533009, 34.546673, 44.832794>,  <35.465855, 34.776463, 44.815838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533009, 34.546673, 44.832794>,  <35.644936, 34.163692, 44.861053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533009, 34.546673, 44.832794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120572, -0.037958, -0.991979,
		-0.952453, -0.286087, -0.104820,
		-0.279813, 0.957452, -0.070647,
		35.449066, 34.833908, 44.811600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169891, 34.165310, 44.313213>,  <35.644936, 34.163692, 44.861053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169891, 34.165310, 44.313213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274483, 34.549465, 44.351757>,  <35.337238, 34.779957, 44.374882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274483, 34.549465, 44.351757>,  <35.169891, 34.165310, 44.313213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274483, 34.549465, 44.351757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001720, 0.099369, -0.995049,
		-0.965208, 0.260350, 0.024331,
		0.261479, 0.960387, 0.096360,
		35.352928, 34.837582, 44.380665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601856, 34.498669, 44.037529>,  <35.169891, 34.165310, 44.313213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601856, 34.498669, 44.037529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934803, 34.720081, 44.026398>,  <35.134571, 34.852928, 44.019718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934803, 34.720081, 44.026398>,  <34.601856, 34.498669, 44.037529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934803, 34.720081, 44.026398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060901, 0.041434, -0.997283,
		-0.550872, 0.831799, 0.068198,
		0.832365, 0.553529, -0.027833,
		35.184513, 34.886139, 44.018047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527126, 34.927841, 43.590916>,  <34.601856, 34.498669, 44.037529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527126, 34.927841, 43.590916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926605, 34.947674, 43.586113>,  <35.166294, 34.959576, 43.583233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926605, 34.947674, 43.586113>,  <34.527126, 34.927841, 43.590916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926605, 34.947674, 43.586113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013425, 0.028365, -0.999507,
		-0.049221, 0.998367, 0.028993,
		0.998698, 0.049586, -0.012007,
		35.226215, 34.962551, 43.582512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784653, 35.571369, 43.047161>,  <34.527126, 34.927841, 43.590916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784653, 35.571369, 43.047161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095997, 35.326855, 43.104424>,  <35.282803, 35.180145, 43.138783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095997, 35.326855, 43.104424>,  <34.784653, 35.571369, 43.047161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095997, 35.326855, 43.104424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283131, 0.138249, -0.949065,
		0.560354, 0.779245, 0.280680,
		0.778358, -0.611281, 0.143159,
		35.329506, 35.143471, 43.147373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331718, 35.934341, 42.779022>,  <34.784653, 35.571369, 43.047161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331718, 35.934341, 42.779022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443825, 35.550381, 42.781368>,  <35.511089, 35.320004, 42.782776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443825, 35.550381, 42.781368>,  <35.331718, 35.934341, 42.779022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443825, 35.550381, 42.781368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257389, 0.069265, -0.963822,
		0.924773, 0.271631, 0.266481,
		0.280261, -0.959906, 0.005861,
		35.527905, 35.262409, 42.783127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897881, 35.906303, 42.422276>,  <35.331718, 35.934341, 42.779022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897881, 35.906303, 42.422276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811871, 35.515678, 42.418335>,  <35.760265, 35.281303, 42.415970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811871, 35.515678, 42.418335>,  <35.897881, 35.906303, 42.422276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811871, 35.515678, 42.418335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311008, -0.058912, -0.948580,
		0.925763, -0.207035, 0.316385,
		-0.215028, -0.976558, -0.009851,
		35.747360, 35.222710, 42.415379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483196, 35.625423, 42.163048>,  <35.897881, 35.906303, 42.422276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483196, 35.625423, 42.163048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190407, 35.356781, 42.117176>,  <36.014732, 35.195595, 42.089653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190407, 35.356781, 42.117176>,  <36.483196, 35.625423, 42.163048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190407, 35.356781, 42.117176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244831, -0.102202, -0.964164,
		0.635821, -0.733822, 0.239240,
		-0.731976, -0.671610, -0.114680,
		35.970814, 35.155296, 42.082771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878262, 35.168098, 41.744125>,  <36.483196, 35.625423, 42.163048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878262, 35.168098, 41.744125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488361, 35.085335, 41.710541>,  <36.254421, 35.035675, 41.690388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488361, 35.085335, 41.710541>,  <36.878262, 35.168098, 41.744125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488361, 35.085335, 41.710541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112273, -0.129090, -0.985256,
		0.193024, -0.969805, 0.149062,
		-0.974750, -0.206914, -0.083965,
		36.195938, 35.023262, 41.685352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823132, 34.708996, 41.291130>,  <36.878262, 35.168098, 41.744125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823132, 34.708996, 41.291130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463371, 34.883831, 41.288799>,  <36.247517, 34.988731, 41.287399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463371, 34.883831, 41.288799>,  <36.823132, 34.708996, 41.291130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463371, 34.883831, 41.288799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052583, -0.121418, -0.991208,
		-0.433954, -0.891185, 0.132187,
		-0.899399, 0.437089, -0.005828,
		36.193550, 35.014957, 41.287052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391430, 34.237225, 40.921707>,  <36.823132, 34.708996, 41.291130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391430, 34.237225, 40.921707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187275, 34.581154, 40.915966>,  <36.064781, 34.787510, 40.912521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187275, 34.581154, 40.915966>,  <36.391430, 34.237225, 40.921707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187275, 34.581154, 40.915966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268909, -0.175438, -0.947053,
		-0.816817, -0.479506, 0.320756,
		-0.510390, 0.859823, -0.014357,
		36.034157, 34.839100, 40.911659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745335, 34.118793, 40.627048>,  <36.391430, 34.237225, 40.921707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745335, 34.118793, 40.627048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790497, 34.511192, 40.563934>,  <35.817596, 34.746632, 40.526066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790497, 34.511192, 40.563934>,  <35.745335, 34.118793, 40.627048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790497, 34.511192, 40.563934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288315, -0.119624, -0.950034,
		-0.950856, 0.152759, 0.269330,
		0.112908, 0.980997, -0.157787,
		35.824368, 34.805492, 40.516598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270992, 34.236221, 40.144421>,  <35.745335, 34.118793, 40.627048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270992, 34.236221, 40.144421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489971, 34.570400, 40.125134>,  <35.621357, 34.770908, 40.113560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489971, 34.570400, 40.125134>,  <35.270992, 34.236221, 40.144421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489971, 34.570400, 40.125134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138725, 0.033777, -0.989755,
		-0.825263, 0.548526, 0.134389,
		0.547446, 0.835451, -0.048219,
		35.654205, 34.821037, 40.110668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858131, 34.689743, 39.741505>,  <35.270992, 34.236221, 40.144421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858131, 34.689743, 39.741505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236099, 34.819557, 39.724472>,  <35.462879, 34.897446, 39.714252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236099, 34.819557, 39.724472>,  <34.858131, 34.689743, 39.741505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236099, 34.819557, 39.724472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098495, 0.157865, -0.982536,
		-0.312143, 0.932608, 0.181134,
		0.944916, 0.324532, -0.042580,
		35.519573, 34.916916, 39.711697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895477, 35.215492, 39.321167>,  <34.858131, 34.689743, 39.741505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895477, 35.215492, 39.321167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269371, 35.073727, 39.331528>,  <35.493706, 34.988667, 39.337746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269371, 35.073727, 39.331528>,  <34.895477, 35.215492, 39.321167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269371, 35.073727, 39.331528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031920, 0.011135, -0.999428,
		0.353923, 0.935022, 0.021721,
		0.934730, -0.354414, 0.025905,
		35.549789, 34.967403, 39.339298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252983, 35.621746, 38.802055>,  <34.895477, 35.215492, 39.321167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252983, 35.621746, 38.802055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488483, 35.304226, 38.863049>,  <35.629784, 35.113716, 38.899643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488483, 35.304226, 38.863049>,  <35.252983, 35.621746, 38.802055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488483, 35.304226, 38.863049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386102, 0.110447, -0.915820,
		0.710135, 0.598068, 0.371514,
		0.588756, -0.793798, 0.152484,
		35.665112, 35.066086, 38.908794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851311, 35.864296, 38.508133>,  <35.252983, 35.621746, 38.802055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851311, 35.864296, 38.508133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888058, 35.471584, 38.574661>,  <35.910107, 35.235958, 38.614578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888058, 35.471584, 38.574661>,  <35.851311, 35.864296, 38.508133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888058, 35.471584, 38.574661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375481, -0.120548, -0.918957,
		0.922266, 0.146871, 0.357566,
		0.091864, -0.981782, 0.166325,
		35.915619, 35.177048, 38.624557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617817, 35.623634, 38.474327>,  <35.851311, 35.864296, 38.508133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617817, 35.623634, 38.474327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378716, 35.316223, 38.383064>,  <36.235256, 35.131775, 38.328308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378716, 35.316223, 38.383064>,  <36.617817, 35.623634, 38.474327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378716, 35.316223, 38.383064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340132, 0.014587, -0.940264,
		0.725951, -0.639645, 0.252683,
		-0.597750, -0.768532, -0.228153,
		36.199390, 35.085663, 38.314617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016609, 35.129219, 38.213268>,  <36.617817, 35.623634, 38.474327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016609, 35.129219, 38.213268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659214, 35.013298, 38.076046>,  <36.444775, 34.943745, 37.993713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659214, 35.013298, 38.076046>,  <37.016609, 35.129219, 38.213268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659214, 35.013298, 38.076046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383884, -0.096484, -0.918327,
		0.233038, -0.952210, 0.197460,
		-0.893491, -0.289807, -0.343053,
		36.391167, 34.926357, 37.973129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698242, 34.929417, 38.417271>,  <37.016609, 35.129219, 38.213268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698242, 34.929417, 38.417271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962036, 35.203255, 38.293068>,  <38.120312, 35.367558, 38.218544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962036, 35.203255, 38.293068>,  <37.698242, 34.929417, 38.417271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962036, 35.203255, 38.293068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175764, 0.261188, 0.949151,
		0.730882, -0.680526, 0.051923,
		0.659483, 0.684591, -0.310510,
		38.159882, 35.408630, 38.199913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398808, 34.686569, 38.483109>,  <37.698242, 34.929417, 38.417271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398808, 34.686569, 38.483109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375362, 35.084705, 38.513710>,  <38.361298, 35.323589, 38.532070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375362, 35.084705, 38.513710>,  <38.398808, 34.686569, 38.483109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375362, 35.084705, 38.513710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381271, -0.048511, 0.923190,
		0.922604, 0.083278, -0.376653,
		-0.058610, 0.995345, 0.076508,
		38.357780, 35.383308, 38.536663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039387, 34.990414, 38.838505>,  <38.398808, 34.686569, 38.483109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039387, 34.990414, 38.838505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759357, 35.272503, 38.883343>,  <38.591339, 35.441757, 38.910244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759357, 35.272503, 38.883343>,  <39.039387, 34.990414, 38.838505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759357, 35.272503, 38.883343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248007, 0.092927, 0.964291,
		0.669621, 0.702872, -0.239955,
		-0.700072, 0.705220, 0.112092,
		38.549335, 35.484070, 38.916969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360222, 35.521824, 39.162350>,  <39.039387, 34.990414, 38.838505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360222, 35.521824, 39.162350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977654, 35.609524, 39.239479>,  <38.748112, 35.662144, 39.285755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977654, 35.609524, 39.239479>,  <39.360222, 35.521824, 39.162350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977654, 35.609524, 39.239479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225907, 0.137280, 0.964427,
		0.184980, 0.965963, -0.180828,
		-0.956425, 0.219250, 0.192824,
		38.690727, 35.675301, 39.297325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389557, 36.113125, 39.663174>,  <39.360222, 35.521824, 39.162350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389557, 36.113125, 39.663174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032158, 35.935257, 39.688278>,  <38.817719, 35.828537, 39.703342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032158, 35.935257, 39.688278>,  <39.389557, 36.113125, 39.663174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032158, 35.935257, 39.688278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053778, 0.032814, 0.998014,
		-0.445846, 0.895094, -0.005406,
		-0.893493, -0.444669, 0.062766,
		38.764111, 35.801857, 39.707108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090500, 36.453148, 40.163887>,  <39.389557, 36.113125, 39.663174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090500, 36.453148, 40.163887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872845, 36.117611, 40.170376>,  <38.742252, 35.916290, 40.174271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872845, 36.117611, 40.170376>,  <39.090500, 36.453148, 40.163887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872845, 36.117611, 40.170376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053962, 0.054290, 0.997066,
		-0.837260, 0.541664, -0.074807,
		-0.544136, -0.838840, 0.016226,
		38.709602, 35.865959, 40.175243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450188, 36.644325, 40.688702>,  <39.090500, 36.453148, 40.163887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450188, 36.644325, 40.688702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502140, 36.247944, 40.702202>,  <38.533314, 36.010117, 40.710300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502140, 36.247944, 40.702202>,  <38.450188, 36.644325, 40.688702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502140, 36.247944, 40.702202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350385, -0.014027, 0.936500,
		-0.927556, -0.133462, -0.349038,
		0.129884, -0.990954, 0.033752,
		38.541103, 35.950657, 40.712326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123177, 36.476830, 41.257755>,  <38.450188, 36.644325, 40.688702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123177, 36.476830, 41.257755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310970, 36.130909, 41.186531>,  <38.423649, 35.923359, 41.143799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310970, 36.130909, 41.186531>,  <38.123177, 36.476830, 41.257755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310970, 36.130909, 41.186531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167770, -0.285367, 0.943620,
		-0.866854, -0.413144, -0.279064,
		0.469486, -0.864799, -0.178058,
		38.451817, 35.871468, 41.133114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695904, 35.929966, 41.503399>,  <38.123177, 36.476830, 41.257755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695904, 35.929966, 41.503399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064781, 35.778049, 41.474228>,  <38.286106, 35.686901, 41.456726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064781, 35.778049, 41.474228>,  <37.695904, 35.929966, 41.503399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064781, 35.778049, 41.474228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094185, -0.403454, 0.910140,
		-0.375073, -0.832461, -0.407834,
		0.922198, -0.379781, -0.072920,
		38.341438, 35.664112, 41.452351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676361, 35.494640, 41.973370>,  <37.695904, 35.929966, 41.503399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676361, 35.494640, 41.973370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065289, 35.466908, 41.884121>,  <38.298645, 35.450268, 41.830570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065289, 35.466908, 41.884121>,  <37.676361, 35.494640, 41.973370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065289, 35.466908, 41.884121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205583, -0.199887, 0.958009,
		-0.111020, -0.977363, -0.180101,
		0.972322, -0.069333, -0.223121,
		38.356987, 35.446106, 41.817184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906937, 34.814705, 42.147350>,  <37.676361, 35.494640, 41.973370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906937, 34.814705, 42.147350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225166, 35.056625, 42.161667>,  <38.416103, 35.201778, 42.170258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225166, 35.056625, 42.161667>,  <37.906937, 34.814705, 42.147350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225166, 35.056625, 42.161667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152014, -0.256454, 0.954528,
		0.586477, -0.753955, -0.295966,
		0.795573, 0.604800, 0.035792,
		38.463837, 35.238064, 42.172405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442863, 34.515774, 42.531410>,  <37.906937, 34.814705, 42.147350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442863, 34.515774, 42.531410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542358, 34.901669, 42.565868>,  <38.602055, 35.133205, 42.586544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542358, 34.901669, 42.565868>,  <38.442863, 34.515774, 42.531410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542358, 34.901669, 42.565868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107485, -0.115882, 0.987430,
		0.962590, -0.236347, -0.132518,
		0.248733, 0.964734, 0.086143,
		38.616978, 35.191090, 42.591713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084694, 34.540009, 43.009892>,  <38.442863, 34.515774, 42.531410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084694, 34.540009, 43.009892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914398, 34.901886, 43.003349>,  <38.812222, 35.119015, 42.999424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914398, 34.901886, 43.003349>,  <39.084694, 34.540009, 43.009892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914398, 34.901886, 43.003349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028477, 0.031463, 0.999099,
		0.904398, 0.424890, -0.039158,
		-0.425739, 0.904698, -0.016355,
		38.786674, 35.173294, 42.998444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414955, 34.887348, 43.558876>,  <39.084694, 34.540009, 43.009892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414955, 34.887348, 43.558876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097290, 35.111038, 43.463730>,  <38.906693, 35.245251, 43.406643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097290, 35.111038, 43.463730>,  <39.414955, 34.887348, 43.558876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097290, 35.111038, 43.463730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158123, 0.187774, 0.969401,
		0.586777, 0.807470, -0.060696,
		-0.794159, 0.559225, -0.237861,
		38.859043, 35.278805, 43.392372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530495, 35.511356, 44.031799>,  <39.414955, 34.887348, 43.558876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530495, 35.511356, 44.031799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144287, 35.477345, 43.933376>,  <38.912563, 35.456940, 43.874325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144287, 35.477345, 43.933376>,  <39.530495, 35.511356, 44.031799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144287, 35.477345, 43.933376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255382, 0.125919, 0.958605,
		-0.050524, 0.988390, -0.143292,
		-0.965519, -0.085026, -0.246055,
		38.854630, 35.451836, 43.859558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252380, 36.018234, 44.336174>,  <39.530495, 35.511356, 44.031799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252380, 36.018234, 44.336174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931313, 35.787640, 44.275017>,  <38.738670, 35.649281, 44.238323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931313, 35.787640, 44.275017>,  <39.252380, 36.018234, 44.336174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931313, 35.787640, 44.275017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272379, 0.126262, 0.953870,
		-0.530590, 0.807291, -0.258370,
		-0.802673, -0.576489, -0.152896,
		38.690510, 35.614693, 44.229149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771477, 36.345127, 44.721657>,  <39.252380, 36.018234, 44.336174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771477, 36.345127, 44.721657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595757, 35.989624, 44.669319>,  <38.490326, 35.776321, 44.637917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595757, 35.989624, 44.669319>,  <38.771477, 36.345127, 44.721657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595757, 35.989624, 44.669319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364207, 0.043061, 0.930322,
		-0.821199, 0.456344, -0.342610,
		-0.439300, -0.888761, -0.130842,
		38.463966, 35.722996, 44.630066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132130, 36.439064, 44.934746>,  <38.771477, 36.345127, 44.721657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132130, 36.439064, 44.934746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144451, 36.040104, 44.960812>,  <38.151844, 35.800728, 44.976452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144451, 36.040104, 44.960812>,  <38.132130, 36.439064, 44.934746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144451, 36.040104, 44.960812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456583, 0.043953, 0.888595,
		-0.889147, -0.057125, -0.454041,
		0.030805, -0.997399, 0.065163,
		38.153694, 35.740883, 44.980362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590164, 36.274124, 45.236595>,  <38.132130, 36.439064, 44.934746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590164, 36.274124, 45.236595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803040, 35.944443, 45.314018>,  <37.930763, 35.746635, 45.360474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803040, 35.944443, 45.314018>,  <37.590164, 36.274124, 45.236595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803040, 35.944443, 45.314018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356835, -0.011042, 0.934102,
		-0.767752, -0.566188, -0.299981,
		0.532189, -0.824203, 0.193559,
		37.962696, 35.697182, 45.372086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173599, 35.760437, 45.483402>,  <37.590164, 36.274124, 45.236595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173599, 35.760437, 45.483402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537079, 35.664516, 45.620087>,  <37.755165, 35.606964, 45.702099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537079, 35.664516, 45.620087>,  <37.173599, 35.760437, 45.483402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537079, 35.664516, 45.620087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314132, 0.146326, 0.938035,
		-0.274941, -0.959732, 0.057638,
		0.908696, -0.239798, 0.341714,
		37.809689, 35.592579, 45.722599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078445, 35.258598, 45.990566>,  <37.173599, 35.760437, 45.483402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078445, 35.258598, 45.990566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447296, 35.399765, 46.053970>,  <37.668606, 35.484467, 46.092010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447296, 35.399765, 46.053970>,  <37.078445, 35.258598, 45.990566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447296, 35.399765, 46.053970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152441, -0.045113, 0.987282,
		0.355580, -0.934566, 0.012199,
		0.922130, 0.352918, 0.158507,
		37.723934, 35.505642, 46.101524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166904, 34.940083, 46.535736>,  <37.078445, 35.258598, 45.990566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166904, 34.940083, 46.535736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434933, 35.236649, 46.550198>,  <37.595749, 35.414589, 46.558872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434933, 35.236649, 46.550198>,  <37.166904, 34.940083, 46.535736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434933, 35.236649, 46.550198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142870, 0.081026, 0.986419,
		0.728419, -0.666135, 0.160220,
		0.670070, 0.741417, 0.036150,
		37.635952, 35.459072, 46.561043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533966, 34.830338, 47.252869>,  <37.166904, 34.940083, 46.535736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533966, 34.830338, 47.252869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587582, 35.204285, 47.121376>,  <37.619751, 35.428654, 47.042480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587582, 35.204285, 47.121376>,  <37.533966, 34.830338, 47.252869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587582, 35.204285, 47.121376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040574, 0.336624, 0.940765,
		0.990145, -0.112762, 0.083052,
		0.134040, 0.934864, -0.328731,
		37.627792, 35.484745, 47.022758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863800, 35.103321, 47.821072>,  <37.533966, 34.830338, 47.252869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863800, 35.103321, 47.821072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715355, 35.422844, 47.631683>,  <37.626286, 35.614559, 47.518051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715355, 35.422844, 47.631683>,  <37.863800, 35.103321, 47.821072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715355, 35.422844, 47.631683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105140, 0.470459, 0.876136,
		0.922615, 0.374928, -0.090607,
		-0.371115, 0.798810, -0.473472,
		37.604019, 35.662487, 47.489643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104507, 35.686546, 48.212814>,  <37.863800, 35.103321, 47.821072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104507, 35.686546, 48.212814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793308, 35.806538, 47.992004>,  <37.606590, 35.878532, 47.859516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793308, 35.806538, 47.992004>,  <38.104507, 35.686546, 48.212814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793308, 35.806538, 47.992004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321842, 0.564312, 0.760243,
		0.539573, 0.769132, -0.342487,
		-0.777997, 0.299980, -0.552026,
		37.559910, 35.896530, 47.826397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990326, 36.270866, 48.538940>,  <38.104507, 35.686546, 48.212814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990326, 36.270866, 48.538940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663971, 36.173172, 48.329300>,  <37.468159, 36.114555, 48.203518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663971, 36.173172, 48.329300>,  <37.990326, 36.270866, 48.538940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663971, 36.173172, 48.329300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577833, 0.311586, 0.754337,
		-0.020933, 0.918294, -0.395346,
		-0.815887, -0.244235, -0.524098,
		37.419205, 36.099903, 48.172070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586479, 36.840088, 48.528511>,  <37.990326, 36.270866, 48.538940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586479, 36.840088, 48.528511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364262, 36.508202, 48.506840>,  <37.230930, 36.309071, 48.493835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364262, 36.508202, 48.506840>,  <37.586479, 36.840088, 48.528511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364262, 36.508202, 48.506840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528899, 0.302348, 0.793002,
		-0.641587, 0.469204, -0.606806,
		-0.555547, -0.829718, -0.054179,
		37.197598, 36.259285, 48.490585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032745, 37.112461, 48.737926>,  <37.586479, 36.840088, 48.528511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032745, 37.112461, 48.737926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973919, 36.722164, 48.802784>,  <36.938622, 36.487984, 48.841698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973919, 36.722164, 48.802784>,  <37.032745, 37.112461, 48.737926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973919, 36.722164, 48.802784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529342, 0.216118, 0.820421,
		-0.835565, 0.034825, -0.548287,
		-0.147066, -0.975746, 0.162146,
		36.929798, 36.429440, 48.851429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392761, 37.173557, 48.998344>,  <37.032745, 37.112461, 48.737926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392761, 37.173557, 48.998344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531185, 36.818531, 49.119980>,  <36.614239, 36.605515, 49.192963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531185, 36.818531, 49.119980>,  <36.392761, 37.173557, 48.998344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531185, 36.818531, 49.119980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427193, 0.139500, 0.893334,
		-0.835312, -0.439055, -0.330885,
		0.346064, -0.887565, 0.304088,
		36.635006, 36.552261, 49.211205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874023, 36.920105, 49.395702>,  <36.392761, 37.173557, 48.998344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874023, 36.920105, 49.395702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183372, 36.692760, 49.508034>,  <36.368980, 36.556355, 49.575432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183372, 36.692760, 49.508034>,  <35.874023, 36.920105, 49.395702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183372, 36.692760, 49.508034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396122, -0.087379, 0.914031,
		-0.494960, -0.818127, -0.292717,
		0.773370, -0.568360, 0.280829,
		36.415382, 36.522251, 49.592281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600769, 36.261803, 49.637333>,  <35.874023, 36.920105, 49.395702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600769, 36.261803, 49.637333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957268, 36.327820, 49.806305>,  <36.171165, 36.367432, 49.907688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957268, 36.327820, 49.806305>,  <35.600769, 36.261803, 49.637333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957268, 36.327820, 49.806305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409096, -0.109495, 0.905898,
		0.195769, -0.980189, -0.030066,
		0.891243, 0.165046, 0.422427,
		36.224640, 36.377335, 49.933033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719368, 35.750957, 50.200516>,  <35.600769, 36.261803, 49.637333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719368, 35.750957, 50.200516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953472, 36.065247, 50.280624>,  <36.093933, 36.253819, 50.328690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953472, 36.065247, 50.280624>,  <35.719368, 35.750957, 50.200516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953472, 36.065247, 50.280624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469110, 0.126649, 0.874012,
		0.661367, -0.605474, 0.442713,
		0.585260, 0.785723, 0.200273,
		36.129051, 36.300964, 50.340706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889313, 35.571812, 50.883934>,  <35.719368, 35.750957, 50.200516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889313, 35.571812, 50.883934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961349, 35.955387, 50.796291>,  <36.004570, 36.185532, 50.743706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961349, 35.955387, 50.796291>,  <35.889313, 35.571812, 50.883934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961349, 35.955387, 50.796291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590970, 0.283546, 0.755219,
		0.786334, -0.006523, 0.617767,
		0.180092, 0.958936, -0.219107,
		36.015377, 36.243069, 50.730560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931778, 35.900883, 51.548004>,  <35.889313, 35.571812, 50.883934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931778, 35.900883, 51.548004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844017, 36.212872, 51.313568>,  <35.791359, 36.400066, 51.172905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844017, 36.212872, 51.313568>,  <35.931778, 35.900883, 51.548004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844017, 36.212872, 51.313568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610637, 0.358736, 0.705996,
		0.760910, 0.512789, 0.397572,
		-0.219403, 0.779972, -0.586094,
		35.778194, 36.446861, 51.137741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030937, 36.510872, 51.848896>,  <35.931778, 35.900883, 51.548004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030937, 36.510872, 51.848896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755398, 36.636658, 51.587639>,  <35.590073, 36.712128, 51.430885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755398, 36.636658, 51.587639>,  <36.030937, 36.510872, 51.848896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755398, 36.636658, 51.587639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556622, 0.347759, 0.754477,
		0.464390, 0.883278, -0.064518,
		-0.688849, 0.314460, -0.653147,
		35.548744, 36.730995, 51.391693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688641, 37.148361, 52.144608>,  <36.030937, 36.510872, 51.848896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688641, 37.148361, 52.144608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444099, 37.069561, 51.838028>,  <35.297375, 37.022282, 51.654079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444099, 37.069561, 51.838028>,  <35.688641, 37.148361, 52.144608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444099, 37.069561, 51.838028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773238, 0.354776, 0.525583,
		0.168378, 0.913961, -0.369220,
		-0.611353, -0.196999, -0.766446,
		35.260693, 37.010460, 51.608093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193100, 37.757824, 52.097202>,  <35.688641, 37.148361, 52.144608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193100, 37.757824, 52.097202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027485, 37.427155, 51.944786>,  <34.928116, 37.228752, 51.853336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027485, 37.427155, 51.944786>,  <35.193100, 37.757824, 52.097202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027485, 37.427155, 51.944786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825717, 0.164914, 0.539439,
		-0.383099, 0.537977, -0.750877,
		-0.414036, -0.826670, -0.381039,
		34.903275, 37.179153, 51.830475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817772, 38.330269, 52.335903>,  <35.193100, 37.757824, 52.097202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817772, 38.330269, 52.335903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658138, 38.694424, 52.292206>,  <34.562359, 38.912914, 52.265987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658138, 38.694424, 52.292206>,  <34.817772, 38.330269, 52.335903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658138, 38.694424, 52.292206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783126, 0.276450, -0.557037,
		-0.476916, -0.307856, -0.823271,
		-0.399080, 0.910385, -0.109246,
		34.538414, 38.967541, 52.259434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691044, 38.473232, 51.594337>,  <34.817772, 38.330269, 52.335903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691044, 38.473232, 51.594337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774254, 38.793541, 51.819012>,  <34.824181, 38.985725, 51.953815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774254, 38.793541, 51.819012>,  <34.691044, 38.473232, 51.594337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774254, 38.793541, 51.819012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741416, 0.245465, -0.624540,
		-0.637989, 0.546357, -0.542645,
		0.208021, 0.800775, 0.561681,
		34.836658, 39.033775, 51.987514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634514, 39.006802, 51.116642>,  <34.691044, 38.473232, 51.594337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634514, 39.006802, 51.116642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859741, 39.142822, 51.417923>,  <34.994877, 39.224434, 51.598690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859741, 39.142822, 51.417923>,  <34.634514, 39.006802, 51.116642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859741, 39.142822, 51.417923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604466, 0.452035, -0.655961,
		-0.563533, 0.824640, 0.048980,
		0.563073, 0.340049, 0.753204,
		35.028664, 39.244839, 51.643883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837479, 39.578770, 50.810497>,  <34.634514, 39.006802, 51.116642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837479, 39.578770, 50.810497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084541, 39.493431, 51.113277>,  <35.232780, 39.442226, 51.294945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084541, 39.493431, 51.113277>,  <34.837479, 39.578770, 50.810497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084541, 39.493431, 51.113277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773762, 0.337018, -0.536387,
		-0.140670, 0.917007, 0.373243,
		0.617661, -0.213348, 0.756953,
		35.269840, 39.429428, 51.340363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300564, 40.080551, 50.897690>,  <34.837479, 39.578770, 50.810497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300564, 40.080551, 50.897690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467274, 39.746368, 51.040974>,  <35.567299, 39.545860, 51.126945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467274, 39.746368, 51.040974>,  <35.300564, 40.080551, 50.897690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467274, 39.746368, 51.040974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723410, 0.066220, -0.687236,
		0.550434, 0.545555, 0.631975,
		0.416774, -0.835455, 0.358210,
		35.592304, 39.495731, 51.148438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004154, 40.222279, 50.964054>,  <35.300564, 40.080551, 50.897690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004154, 40.222279, 50.964054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993984, 39.822563, 50.952934>,  <35.987885, 39.582733, 50.946262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993984, 39.822563, 50.952934>,  <36.004154, 40.222279, 50.964054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993984, 39.822563, 50.952934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756503, -0.001051, -0.653989,
		0.653496, -0.037656, 0.755993,
		-0.025421, -0.999290, -0.027800,
		35.986359, 39.522778, 50.944595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723755, 39.969810, 50.926571>,  <36.004154, 40.222279, 50.964054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723755, 39.969810, 50.926571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486691, 39.677242, 50.791653>,  <36.344452, 39.501701, 50.710701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486691, 39.677242, 50.791653>,  <36.723755, 39.969810, 50.926571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486691, 39.677242, 50.791653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521321, -0.029124, -0.852863,
		0.613982, -0.681299, 0.398568,
		-0.592663, -0.731425, -0.337294,
		36.308891, 39.457813, 50.690464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209148, 39.434872, 50.709541>,  <36.723755, 39.969810, 50.926571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209148, 39.434872, 50.709541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873177, 39.340393, 50.514103>,  <36.671593, 39.283707, 50.396839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873177, 39.340393, 50.514103>,  <37.209148, 39.434872, 50.709541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873177, 39.340393, 50.514103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511559, -0.044036, -0.858119,
		0.181168, -0.970707, 0.157815,
		-0.839932, -0.236195, -0.488596,
		36.621197, 39.269535, 50.367523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449818, 38.976345, 50.279816>,  <37.209148, 39.434872, 50.709541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449818, 38.976345, 50.279816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102451, 39.038841, 50.091587>,  <36.894032, 39.076340, 49.978649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102451, 39.038841, 50.091587>,  <37.449818, 38.976345, 50.279816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102451, 39.038841, 50.091587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461114, -0.094406, -0.882304,
		-0.182275, -0.983197, 0.009940,
		-0.868418, 0.156238, -0.470574,
		36.841927, 39.085712, 49.950417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396828, 38.527065, 49.656467>,  <37.449818, 38.976345, 50.279816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396828, 38.527065, 49.656467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147884, 38.831562, 49.583599>,  <36.998520, 39.014259, 49.539879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147884, 38.831562, 49.583599>,  <37.396828, 38.527065, 49.656467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147884, 38.831562, 49.583599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237756, -0.037885, -0.970586,
		-0.745751, -0.647361, -0.157412,
		-0.622356, 0.761241, -0.182167,
		36.961178, 39.059933, 49.528950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918953, 38.394115, 49.033897>,  <37.396828, 38.527065, 49.656467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918953, 38.394115, 49.033897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945873, 38.792534, 49.057102>,  <36.962025, 39.031586, 49.071026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945873, 38.792534, 49.057102>,  <36.918953, 38.394115, 49.033897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945873, 38.792534, 49.057102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033858, 0.060394, -0.997600,
		-0.997158, 0.065176, 0.037789,
		0.067302, 0.996044, 0.058016,
		36.966064, 39.091347, 49.074509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464409, 38.738583, 48.418953>,  <36.918953, 38.394115, 49.033897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464409, 38.738583, 48.418953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744671, 38.997723, 48.538540>,  <36.912827, 39.153206, 48.610291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744671, 38.997723, 48.538540>,  <36.464409, 38.738583, 48.418953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744671, 38.997723, 48.538540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270381, 0.146677, -0.951515,
		-0.660289, 0.747514, -0.072397,
		0.700651, 0.647850, 0.298963,
		36.954865, 39.192078, 48.628227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417515, 39.409576, 47.966751>,  <36.464409, 38.738583, 48.418953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417515, 39.409576, 47.966751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778488, 39.372425, 48.135033>,  <36.995071, 39.350132, 48.236000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778488, 39.372425, 48.135033>,  <36.417515, 39.409576, 47.966751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778488, 39.372425, 48.135033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426773, 0.058998, -0.902432,
		0.058998, 0.993928, 0.092881,
		0.902432, -0.092881, 0.420701,
		37.049217, 39.344563, 48.261242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819767, 39.924522, 47.543598>,  <36.417515, 39.409576, 47.966751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819767, 39.924522, 47.543598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073715, 39.662083, 47.706799>,  <37.226086, 39.504620, 47.804718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073715, 39.662083, 47.706799>,  <36.819767, 39.924522, 47.543598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073715, 39.662083, 47.706799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528466, -0.016464, -0.848795,
		0.563614, 0.754491, 0.336276,
		0.634872, -0.656103, 0.408003,
		37.264175, 39.465252, 47.829201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507973, 40.126080, 47.508144>,  <36.819767, 39.924522, 47.543598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507973, 40.126080, 47.508144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538567, 39.727905, 47.530956>,  <37.556923, 39.488998, 47.544643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538567, 39.727905, 47.530956>,  <37.507973, 40.126080, 47.508144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538567, 39.727905, 47.530956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473493, -0.014077, -0.880685,
		0.877470, 0.094360, 0.470257,
		0.076482, -0.995439, 0.057031,
		37.561512, 39.429276, 47.548065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991768, 39.884472, 46.940971>,  <37.507973, 40.126080, 47.508144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991768, 39.884472, 46.940971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885353, 39.517567, 47.059525>,  <37.821503, 39.297424, 47.130657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885353, 39.517567, 47.059525>,  <37.991768, 39.884472, 46.940971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885353, 39.517567, 47.059525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407072, -0.385608, -0.828009,
		0.873795, -0.099631, 0.475980,
		-0.266037, -0.917268, 0.296385,
		37.805542, 39.242386, 47.148441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572876, 39.492035, 46.759338>,  <37.991768, 39.884472, 46.940971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572876, 39.492035, 46.759338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253212, 39.253685, 46.791004>,  <38.061413, 39.110676, 46.810005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253212, 39.253685, 46.791004>,  <38.572876, 39.492035, 46.759338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253212, 39.253685, 46.791004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228934, -0.423484, -0.876499,
		0.555813, -0.682341, 0.474850,
		-0.799163, -0.595879, 0.079167,
		38.013462, 39.074921, 46.814754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754486, 38.754318, 46.961605>,  <38.572876, 39.492035, 46.759338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754486, 38.754318, 46.961605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396843, 38.727551, 46.784473>,  <38.182259, 38.711491, 46.678196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396843, 38.727551, 46.784473>,  <38.754486, 38.754318, 46.961605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396843, 38.727551, 46.784473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383349, -0.625591, -0.679470,
		-0.231559, -0.777276, 0.584999,
		-0.894106, -0.066921, -0.442829,
		38.128613, 38.707474, 46.651623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714729, 38.064857, 46.726913>,  <38.754486, 38.754318, 46.961605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714729, 38.064857, 46.726913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450752, 38.270969, 46.508205>,  <38.292366, 38.394638, 46.376980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450752, 38.270969, 46.508205>,  <38.714729, 38.064857, 46.726913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450752, 38.270969, 46.508205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429423, -0.338469, -0.837278,
		-0.616503, -0.787350, 0.002093,
		-0.659939, 0.515285, -0.546773,
		38.252769, 38.425556, 46.344173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585148, 37.629208, 46.280293>,  <38.714729, 38.064857, 46.726913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585148, 37.629208, 46.280293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439949, 37.961987, 46.112438>,  <38.352829, 38.161655, 46.011726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439949, 37.961987, 46.112438>,  <38.585148, 37.629208, 46.280293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439949, 37.961987, 46.112438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326506, -0.308233, -0.893524,
		-0.872714, -0.461356, -0.159752,
		-0.362992, 0.831952, -0.419635,
		38.331051, 38.211571, 45.986549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178337, 37.432568, 45.713902>,  <38.585148, 37.629208, 46.280293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178337, 37.432568, 45.713902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286430, 37.808693, 45.631165>,  <38.351288, 38.034367, 45.581524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286430, 37.808693, 45.631165>,  <38.178337, 37.432568, 45.713902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286430, 37.808693, 45.631165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280117, -0.282328, -0.917510,
		-0.921145, 0.190002, -0.339693,
		0.270234, 0.940314, -0.206842,
		38.367500, 38.090786, 45.569111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888657, 37.530510, 45.086575>,  <38.178337, 37.432568, 45.713902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888657, 37.530510, 45.086575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182915, 37.798859, 45.124027>,  <38.359470, 37.959866, 45.146500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182915, 37.798859, 45.124027>,  <37.888657, 37.530510, 45.086575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182915, 37.798859, 45.124027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320913, -0.223446, -0.920373,
		-0.596529, 0.707111, -0.379667,
		0.735641, 0.670869, 0.093630,
		38.403606, 38.000118, 45.152115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964104, 37.774120, 44.495495>,  <37.888657, 37.530510, 45.086575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964104, 37.774120, 44.495495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316303, 37.894100, 44.642326>,  <38.527622, 37.966087, 44.730427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316303, 37.894100, 44.642326>,  <37.964104, 37.774120, 44.495495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316303, 37.894100, 44.642326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441536, -0.237113, -0.865346,
		-0.172523, 0.924016, -0.341217,
		0.880501, 0.299952, 0.367079,
		38.580452, 37.984085, 44.752449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185177, 38.166737, 43.993183>,  <37.964104, 37.774120, 44.495495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185177, 38.166737, 43.993183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517139, 38.050674, 44.183788>,  <38.716316, 37.981037, 44.298149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517139, 38.050674, 44.183788>,  <38.185177, 38.166737, 43.993183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517139, 38.050674, 44.183788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443686, -0.174542, -0.879021,
		0.338221, 0.940929, -0.016118,
		0.829909, -0.290152, 0.476511,
		38.766113, 37.963627, 44.326740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682999, 38.511131, 43.712730>,  <38.185177, 38.166737, 43.993183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682999, 38.511131, 43.712730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866722, 38.201263, 43.886589>,  <38.976955, 38.015343, 43.990906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866722, 38.201263, 43.886589>,  <38.682999, 38.511131, 43.712730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866722, 38.201263, 43.886589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559720, -0.127549, -0.818807,
		0.689743, 0.619371, 0.375013,
		0.459312, -0.774669, 0.434650,
		39.004517, 37.968864, 44.016983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427444, 38.589577, 43.681625>,  <38.682999, 38.511131, 43.712730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427444, 38.589577, 43.681625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367512, 38.195366, 43.713337>,  <39.331551, 37.958839, 43.732365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367512, 38.195366, 43.713337>,  <39.427444, 38.589577, 43.681625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367512, 38.195366, 43.713337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565167, -0.151168, -0.811009,
		0.811256, -0.076710, 0.579637,
		-0.149835, -0.985527, 0.079282,
		39.322559, 37.899708, 43.737122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098961, 38.406372, 43.531685>,  <39.427444, 38.589577, 43.681625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098961, 38.406372, 43.531685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861336, 38.086220, 43.499485>,  <39.718761, 37.894127, 43.480164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861336, 38.086220, 43.499485>,  <40.098961, 38.406372, 43.531685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861336, 38.086220, 43.499485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585982, -0.362016, -0.724962,
		0.551105, -0.477842, 0.684069,
		-0.594061, -0.800382, -0.080499,
		39.683117, 37.846104, 43.475334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521202, 37.845943, 43.573215>,  <40.098961, 38.406372, 43.531685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521202, 37.845943, 43.573215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188877, 37.715054, 43.393143>,  <39.989483, 37.636520, 43.285099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188877, 37.715054, 43.393143>,  <40.521202, 37.845943, 43.573215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188877, 37.715054, 43.393143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523881, -0.186777, -0.831061,
		0.187864, -0.926302, 0.326607,
		-0.830816, -0.327229, -0.450183,
		39.939632, 37.616886, 43.258087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638557, 37.219509, 43.282253>,  <40.521202, 37.845943, 43.573215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638557, 37.219509, 43.282253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322269, 37.347752, 43.073647>,  <40.132496, 37.424698, 42.948483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322269, 37.347752, 43.073647>,  <40.638557, 37.219509, 43.282253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322269, 37.347752, 43.073647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514701, -0.113048, -0.849884,
		-0.331432, -0.940443, -0.075625,
		-0.790718, 0.320603, -0.521515,
		40.085052, 37.443932, 42.917191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464741, 36.692158, 42.775738>,  <40.638557, 37.219509, 43.282253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464741, 36.692158, 42.775738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302956, 37.018318, 42.610073>,  <40.205883, 37.214012, 42.510674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302956, 37.018318, 42.610073>,  <40.464741, 36.692158, 42.775738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302956, 37.018318, 42.610073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426843, -0.232204, -0.874006,
		-0.808834, -0.530289, -0.254128,
		-0.404466, 0.815399, -0.414165,
		40.181614, 37.262939, 42.485825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307148, 36.505806, 42.163418>,  <40.464741, 36.692158, 42.775738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307148, 36.505806, 42.163418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293190, 36.902657, 42.115292>,  <40.284817, 37.140766, 42.086418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293190, 36.902657, 42.115292>,  <40.307148, 36.505806, 42.163418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293190, 36.902657, 42.115292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247935, -0.108029, -0.962735,
		-0.968148, -0.063424, -0.242212,
		-0.034895, 0.992123, -0.120313,
		40.282722, 37.200294, 42.079197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964146, 36.544930, 41.575314>,  <40.307148, 36.505806, 42.163418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964146, 36.544930, 41.575314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129230, 36.908890, 41.592037>,  <40.228283, 37.127266, 41.602070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129230, 36.908890, 41.592037>,  <39.964146, 36.544930, 41.575314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129230, 36.908890, 41.592037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258972, -0.073214, -0.963106,
		-0.873271, 0.408313, -0.265855,
		0.412713, 0.909901, 0.041805,
		40.253044, 37.181862, 41.604580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680592, 36.841103, 40.971825>,  <39.964146, 36.544930, 41.575314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680592, 36.841103, 40.971825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018780, 37.021339, 41.086468>,  <40.221691, 37.129482, 41.155254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018780, 37.021339, 41.086468>,  <39.680592, 36.841103, 40.971825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018780, 37.021339, 41.086468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227986, 0.180767, -0.956737,
		-0.482912, 0.874235, 0.050104,
		0.845470, 0.450596, 0.286608,
		40.272419, 37.156517, 41.172451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758415, 37.436352, 40.485237>,  <39.680592, 36.841103, 40.971825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758415, 37.436352, 40.485237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132141, 37.389534, 40.619907>,  <40.356377, 37.361443, 40.700710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132141, 37.389534, 40.619907>,  <39.758415, 37.436352, 40.485237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132141, 37.389534, 40.619907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339320, 0.002814, -0.940667,
		0.109154, 0.993123, 0.042345,
		0.934316, -0.117046, 0.336679,
		40.412437, 37.354420, 40.720913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127384, 38.039158, 40.114891>,  <39.758415, 37.436352, 40.485237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127384, 38.039158, 40.114891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367779, 37.748470, 40.247974>,  <40.512016, 37.574059, 40.327824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367779, 37.748470, 40.247974>,  <40.127384, 38.039158, 40.114891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367779, 37.748470, 40.247974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448746, -0.037670, -0.892865,
		0.661391, 0.685906, 0.303470,
		0.600990, -0.726714, 0.332712,
		40.548077, 37.530457, 40.347790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903969, 38.147415, 39.964966>,  <40.127384, 38.039158, 40.114891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903969, 38.147415, 39.964966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877415, 37.750584, 40.007641>,  <40.861485, 37.512486, 40.033245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877415, 37.750584, 40.007641>,  <40.903969, 38.147415, 39.964966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877415, 37.750584, 40.007641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614822, -0.124881, -0.778716,
		0.785867, 0.013899, 0.618239,
		-0.066383, -0.992074, 0.106685,
		40.857498, 37.452961, 40.039646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416515, 37.970749, 39.540440>,  <40.903969, 38.147415, 39.964966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416515, 37.970749, 39.540440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224880, 37.621811, 39.579399>,  <41.109898, 37.412449, 39.602776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224880, 37.621811, 39.579399>,  <41.416515, 37.970749, 39.540440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224880, 37.621811, 39.579399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428293, -0.329175, -0.841552,
		0.766183, -0.361467, 0.531324,
		-0.479092, -0.872345, 0.097394,
		41.081154, 37.360107, 39.608616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898075, 37.522625, 39.406128>,  <41.416515, 37.970749, 39.540440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898075, 37.522625, 39.406128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541050, 37.355370, 39.338600>,  <41.326836, 37.255016, 39.298084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541050, 37.355370, 39.338600>,  <41.898075, 37.522625, 39.406128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541050, 37.355370, 39.338600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294917, -0.258088, -0.920008,
		0.341116, -0.870950, 0.353674,
		-0.892560, -0.418134, -0.168820,
		41.273281, 37.229931, 39.287952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.132729, 36.828255, 39.168087>,  <41.898075, 37.522625, 39.406128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.132729, 36.828255, 39.168087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767937, 36.896469, 39.018841>,  <41.549061, 36.937397, 38.929295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767937, 36.896469, 39.018841>,  <42.132729, 36.828255, 39.168087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767937, 36.896469, 39.018841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286614, -0.385861, -0.876906,
		-0.293511, -0.906659, 0.303019,
		-0.911978, 0.170532, -0.373116,
		41.494343, 36.947628, 38.906906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072769, 36.301018, 38.821018>,  <42.132729, 36.828255, 39.168087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072769, 36.301018, 38.821018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787914, 36.528603, 38.656513>,  <41.617001, 36.665154, 38.557812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787914, 36.528603, 38.656513>,  <42.072769, 36.301018, 38.821018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787914, 36.528603, 38.656513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245442, -0.347060, -0.905156,
		-0.657734, -0.745539, 0.107508,
		-0.712141, 0.568965, -0.411260,
		41.574272, 36.699291, 38.533134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633835, 35.934956, 38.186584>,  <42.072769, 36.301018, 38.821018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633835, 35.934956, 38.186584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658497, 36.332127, 38.146015>,  <41.673294, 36.570431, 38.121674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658497, 36.332127, 38.146015>,  <41.633835, 35.934956, 38.186584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658497, 36.332127, 38.146015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326894, -0.116097, -0.937903,
		-0.943048, 0.024673, -0.331741,
		0.061655, 0.992931, -0.101419,
		41.676994, 36.630005, 38.115589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253494, 36.255081, 37.492096>,  <41.633835, 35.934956, 38.186584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253494, 36.255081, 37.492096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574001, 36.457340, 37.620026>,  <41.766304, 36.578697, 37.696785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574001, 36.457340, 37.620026>,  <41.253494, 36.255081, 37.492096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574001, 36.457340, 37.620026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480096, -0.224389, -0.848031,
		-0.357041, 0.833047, -0.422557,
		0.801267, 0.505650, 0.319826,
		41.814381, 36.609035, 37.715973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663937, 36.551537, 36.978733>,  <41.253494, 36.255081, 37.492096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663937, 36.551537, 36.978733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.940483, 36.451363, 37.249821>,  <42.106411, 36.391258, 37.412472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.940483, 36.451363, 37.249821>,  <41.663937, 36.551537, 36.978733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940483, 36.451363, 37.249821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568934, -0.389474, -0.724310,
		0.445345, 0.886337, -0.126788,
		0.691363, -0.250434, 0.677717,
		42.147892, 36.376232, 37.453136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380630, 36.819050, 36.826607>,  <41.663937, 36.551537, 36.978733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380630, 36.819050, 36.826607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454140, 36.505966, 37.064461>,  <42.498245, 36.318115, 37.207172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454140, 36.505966, 37.064461>,  <42.380630, 36.819050, 36.826607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.454140, 36.505966, 37.064461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680876, -0.334954, -0.651317,
		0.708969, 0.524565, 0.471376,
		0.183769, -0.782712, 0.594636,
		42.509270, 36.271152, 37.242851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131279, 36.804329, 36.872135>,  <42.380630, 36.819050, 36.826607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131279, 36.804329, 36.872135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945591, 36.454948, 36.930889>,  <42.834179, 36.245319, 36.966141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945591, 36.454948, 36.930889>,  <43.131279, 36.804329, 36.872135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945591, 36.454948, 36.930889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629009, -0.441864, -0.639612,
		0.623575, -0.204531, 0.754534,
		-0.464222, -0.873455, 0.146883,
		42.806324, 36.192913, 36.974953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.615570, 36.256805, 37.096710>,  <43.131279, 36.804329, 36.872135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.615570, 36.256805, 37.096710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286339, 36.105839, 36.926956>,  <43.088799, 36.015259, 36.825104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286339, 36.105839, 36.926956>,  <43.615570, 36.256805, 37.096710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286339, 36.105839, 36.926956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564324, -0.459478, -0.685870,
		0.063863, -0.804014, 0.591171,
		-0.823080, -0.377413, -0.424381,
		43.039413, 35.992615, 36.799641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667591, 35.552711, 36.936390>,  <43.615570, 36.256805, 37.096710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667591, 35.552711, 36.936390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.380959, 35.662823, 36.680038>,  <43.208977, 35.728889, 36.526226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.380959, 35.662823, 36.680038>,  <43.667591, 35.552711, 36.936390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.380959, 35.662823, 36.680038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474118, -0.481679, -0.737019,
		-0.511585, -0.831990, 0.214649,
		-0.716584, 0.275279, -0.640881,
		43.165985, 35.745407, 36.487774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527020, 34.993576, 36.479092>,  <43.667591, 35.552711, 36.936390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527020, 34.993576, 36.479092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365646, 35.299210, 36.277729>,  <43.268822, 35.482590, 36.156910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365646, 35.299210, 36.277729>,  <43.527020, 34.993576, 36.479092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365646, 35.299210, 36.277729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266854, -0.428001, -0.863484,
		-0.875234, -0.482691, -0.031231,
		-0.403428, 0.764084, -0.503409,
		43.244617, 35.528435, 36.126705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872761, 34.836803, 36.035709>,  <43.527020, 34.993576, 36.479092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872761, 34.836803, 36.035709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086456, 35.137524, 35.881107>,  <43.214676, 35.317955, 35.788345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086456, 35.137524, 35.881107>,  <42.872761, 34.836803, 36.035709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.086456, 35.137524, 35.881107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119522, -0.519812, -0.845878,
		-0.836839, 0.405708, -0.367562,
		0.534242, 0.751796, -0.386508,
		43.246731, 35.363064, 35.765156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702591, 34.874256, 35.338028>,  <42.872761, 34.836803, 36.035709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702591, 34.874256, 35.338028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.054478, 35.063309, 35.358871>,  <43.265610, 35.176739, 35.371380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.054478, 35.063309, 35.358871>,  <42.702591, 34.874256, 35.338028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.054478, 35.063309, 35.358871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357215, -0.584575, -0.728471,
		-0.313831, 0.659466, -0.683092,
		0.879720, 0.472627, 0.052113,
		43.318394, 35.205097, 35.374504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784031, 35.128952, 34.723358>,  <42.702591, 34.874256, 35.338028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784031, 35.128952, 34.723358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.158627, 35.141388, 34.863087>,  <43.383385, 35.148849, 34.946922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.158627, 35.141388, 34.863087>,  <42.784031, 35.128952, 34.723358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.158627, 35.141388, 34.863087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345944, -0.245414, -0.905591,
		0.057575, 0.968920, -0.240581,
		0.936487, 0.031088, 0.349322,
		43.439571, 35.150715, 34.967884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090595, 35.404991, 34.181614>,  <42.784031, 35.128952, 34.723358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090595, 35.404991, 34.181614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.367916, 35.225449, 34.407127>,  <43.534309, 35.117722, 34.542435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.367916, 35.225449, 34.407127>,  <43.090595, 35.404991, 34.181614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.367916, 35.225449, 34.407127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442520, -0.352294, -0.824661,
		0.568775, 0.821227, -0.045617,
		0.693304, -0.448860, 0.563785,
		43.575909, 35.090790, 34.576263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887787, 35.548302, 33.845272>,  <43.090595, 35.404991, 34.181614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.887787, 35.548302, 33.845272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912937, 35.238758, 34.097366>,  <43.928028, 35.053032, 34.248623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912937, 35.238758, 34.097366>,  <43.887787, 35.548302, 33.845272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912937, 35.238758, 34.097366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449330, -0.541912, -0.710235,
		0.891151, 0.327835, 0.313646,
		0.062871, -0.773857, 0.630232,
		43.931797, 35.006599, 34.286434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.473827, 35.266346, 33.753082>,  <43.887787, 35.548302, 33.845272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.473827, 35.266346, 33.753082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.282276, 34.961609, 33.927563>,  <44.167347, 34.778767, 34.032253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.282276, 34.961609, 33.927563>,  <44.473827, 35.266346, 33.753082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.282276, 34.961609, 33.927563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299300, -0.608795, -0.734703,
		0.825287, -0.221275, 0.519556,
		-0.478875, -0.761844, 0.436203,
		44.138615, 34.733055, 34.058422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.910286, 34.684917, 33.617519>,  <44.473827, 35.266346, 33.753082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.910286, 34.684917, 33.617519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567764, 34.504620, 33.718372>,  <44.362251, 34.396442, 33.778885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567764, 34.504620, 33.718372>,  <44.910286, 34.684917, 33.617519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567764, 34.504620, 33.718372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091327, -0.612641, -0.785067,
		0.508329, -0.649232, 0.565773,
		-0.856307, -0.450743, 0.252131,
		44.310871, 34.369396, 33.794010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.087296, 34.061913, 33.491386>,  <44.910286, 34.684917, 33.617519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.087296, 34.061913, 33.491386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.687416, 34.071117, 33.488071>,  <44.447487, 34.076641, 33.486080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.687416, 34.071117, 33.488071>,  <45.087296, 34.061913, 33.491386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.687416, 34.071117, 33.488071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007256, -0.602713, -0.797925,
		-0.023357, -0.797626, 0.602700,
		-0.999701, 0.023010, -0.008290,
		44.387505, 34.078022, 33.485584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.869503, 33.384449, 33.478077>,  <45.087296, 34.061913, 33.491386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.869503, 33.384449, 33.478077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577797, 33.597130, 33.305817>,  <44.402775, 33.724739, 33.202461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577797, 33.597130, 33.305817>,  <44.869503, 33.384449, 33.478077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.577797, 33.597130, 33.305817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061577, -0.677840, -0.732626,
		-0.681491, -0.507734, 0.527045,
		-0.729231, 0.531732, -0.430677,
		44.359016, 33.756641, 33.176620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.466930, 32.937305, 33.242626>,  <44.869503, 33.384449, 33.478077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.466930, 32.937305, 33.242626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.308392, 33.241653, 33.037109>,  <44.213268, 33.424263, 32.913799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.308392, 33.241653, 33.037109>,  <44.466930, 32.937305, 33.242626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.308392, 33.241653, 33.037109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323508, -0.639476, -0.697433,
		-0.859217, -0.110207, 0.499600,
		-0.396344, 0.760871, -0.513796,
		44.189487, 33.469913, 32.882969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827839, 32.700966, 32.898617>,  <44.466930, 32.937305, 33.242626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.827839, 32.700966, 32.898617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.928631, 33.038280, 32.708721>,  <43.989105, 33.240669, 32.594784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.928631, 33.038280, 32.708721>,  <43.827839, 32.700966, 32.898617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.928631, 33.038280, 32.708721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175903, -0.442482, -0.879356,
		-0.951612, 0.305087, 0.036840,
		0.251979, 0.843286, -0.474737,
		44.004223, 33.291267, 32.566299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224277, 32.878700, 32.402557>,  <43.827839, 32.700966, 32.898617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.224277, 32.878700, 32.402557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.546322, 33.076950, 32.272236>,  <43.739548, 33.195900, 32.194042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.546322, 33.076950, 32.272236>,  <43.224277, 32.878700, 32.402557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.546322, 33.076950, 32.272236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114446, -0.409162, -0.905256,
		-0.581974, 0.766121, -0.272700,
		0.805114, 0.495626, -0.325801,
		43.787857, 33.225639, 32.174496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.046509, 33.031006, 31.740038>,  <43.224277, 32.878700, 32.402557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.046509, 33.031006, 31.740038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441490, 33.093220, 31.729105>,  <43.678478, 33.130550, 31.722546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441490, 33.093220, 31.729105>,  <43.046509, 33.031006, 31.740038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441490, 33.093220, 31.729105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025934, -0.330435, -0.943472,
		-0.155777, 0.930925, -0.330322,
		0.987452, 0.155538, -0.027332,
		43.737724, 33.139881, 31.720905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380795, 33.535652, 31.080708>,  <43.046509, 33.031006, 31.740038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380795, 33.535652, 31.080708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643745, 33.263168, 31.209587>,  <43.801517, 33.099678, 31.286915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643745, 33.263168, 31.209587>,  <43.380795, 33.535652, 31.080708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643745, 33.263168, 31.209587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027378, -0.405692, -0.913600,
		0.753066, 0.609400, -0.248042,
		0.657376, -0.681210, 0.322197,
		43.840958, 33.058804, 31.306246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.908890, 33.619461, 30.604385>,  <43.380795, 33.535652, 31.080708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.908890, 33.619461, 30.604385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.957630, 33.261497, 30.776102>,  <43.986874, 33.046719, 30.879131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.957630, 33.261497, 30.776102>,  <43.908890, 33.619461, 30.604385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.957630, 33.261497, 30.776102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288160, -0.381989, -0.878093,
		0.949799, 0.230697, 0.211333,
		0.121847, -0.894910, 0.429290,
		43.994183, 32.993023, 30.904890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499760, 33.415951, 30.314083>,  <43.908890, 33.619461, 30.604385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499760, 33.415951, 30.314083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.355473, 33.081841, 30.480068>,  <44.268898, 32.881374, 30.579659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.355473, 33.081841, 30.480068>,  <44.499760, 33.415951, 30.314083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.355473, 33.081841, 30.480068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298516, -0.524910, -0.797093,
		0.883611, -0.163656, 0.438690,
		-0.360722, -0.835276, 0.414962,
		44.247257, 32.831257, 30.604557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.120998, 32.947716, 30.383114>,  <44.499760, 33.415951, 30.314083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.120998, 32.947716, 30.383114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770607, 32.755779, 30.363480>,  <44.560371, 32.640617, 30.351698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770607, 32.755779, 30.363480>,  <45.120998, 32.947716, 30.383114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770607, 32.755779, 30.363480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289560, -0.441747, -0.849126,
		0.385761, -0.758032, 0.525905,
		-0.875982, -0.479841, -0.049087,
		44.507812, 32.611828, 30.348753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.314823, 32.276588, 30.062874>,  <45.120998, 32.947716, 30.383114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.314823, 32.276588, 30.062874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.919155, 32.301418, 30.009672>,  <44.681755, 32.316319, 29.977751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.919155, 32.301418, 30.009672>,  <45.314823, 32.276588, 30.062874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.919155, 32.301418, 30.009672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101682, -0.363663, -0.925965,
		-0.105850, -0.929460, 0.353412,
		-0.989170, 0.062077, -0.133003,
		44.622406, 32.320042, 29.969770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203293, 31.848804, 29.556847>,  <45.314823, 32.276588, 30.062874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.203293, 31.848804, 29.556847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.862522, 32.055466, 29.522680>,  <44.658062, 32.179462, 29.502180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.862522, 32.055466, 29.522680>,  <45.203293, 31.848804, 29.556847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.862522, 32.055466, 29.522680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012221, -0.143450, -0.989582,
		-0.523522, -0.844093, 0.115895,
		-0.851924, 0.516651, -0.085415,
		44.606945, 32.210461, 29.497055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780098, 31.519119, 29.120958>,  <45.203293, 31.848804, 29.556847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780098, 31.519119, 29.120958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628071, 31.888823, 29.106596>,  <44.536854, 32.110645, 29.097979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628071, 31.888823, 29.106596>,  <44.780098, 31.519119, 29.120958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.628071, 31.888823, 29.106596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102780, 0.003624, -0.994697,
		-0.919229, -0.381747, -0.096373,
		-0.380072, 0.924260, -0.035904,
		44.514050, 32.166100, 29.095825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421482, 31.486559, 28.565266>,  <44.780098, 31.519119, 29.120958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421482, 31.486559, 28.565266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.507187, 31.869913, 28.640726>,  <44.558609, 32.099926, 28.686003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.507187, 31.869913, 28.640726>,  <44.421482, 31.486559, 28.565266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.507187, 31.869913, 28.640726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229830, 0.138250, -0.963362,
		-0.949353, 0.249766, -0.190645,
		0.214258, 0.958386, 0.188651,
		44.571465, 32.157429, 28.697321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.092949, 31.299387, 28.216923>,  <44.421482, 31.486559, 28.565266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.092949, 31.299387, 28.216923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.887760, 31.637693, 28.158218>,  <44.764648, 31.840677, 28.122995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.887760, 31.637693, 28.158218>,  <45.092949, 31.299387, 28.216923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.887760, 31.637693, 28.158218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750133, 0.358548, -0.555647,
		-0.417327, -0.395121, -0.818363,
		-0.512970, 0.845767, -0.146762,
		44.733868, 31.891424, 28.114189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.049595, 31.476036, 27.435490>,  <45.092949, 31.299387, 28.216923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.049595, 31.476036, 27.435490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108799, 31.796009, 27.668110>,  <45.144321, 31.987993, 27.807682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108799, 31.796009, 27.668110>,  <45.049595, 31.476036, 27.435490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.108799, 31.796009, 27.668110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743817, 0.297500, -0.598523,
		-0.651790, 0.521151, -0.550974,
		0.148006, 0.799935, 0.581548,
		45.153202, 32.035988, 27.842575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069221, 32.196331, 27.035664>,  <45.049595, 31.476036, 27.435490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069221, 32.196331, 27.035664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.282047, 32.246567, 27.370598>,  <45.409744, 32.276707, 27.571558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.282047, 32.246567, 27.370598>,  <45.069221, 32.196331, 27.035664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.282047, 32.246567, 27.370598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608315, 0.631181, -0.481210,
		-0.588946, 0.765400, 0.259433,
		0.532067, 0.125589, 0.837336,
		45.441666, 32.284245, 27.621799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761181, 32.718346, 26.572773>,  <45.069221, 32.196331, 27.035664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761181, 32.718346, 26.572773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.425884, 32.933186, 26.610466>,  <44.224705, 33.062088, 26.633081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.425884, 32.933186, 26.610466>,  <44.761181, 32.718346, 26.572773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.425884, 32.933186, 26.610466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493916, 0.674595, 0.548606,
		0.231085, 0.506407, -0.830754,
		-0.838240, 0.537097, 0.094234,
		44.174412, 33.094315, 26.638737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.943516, 33.422356, 26.317978>,  <44.761181, 32.718346, 26.572773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.943516, 33.422356, 26.317978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654236, 33.454300, 26.592381>,  <44.480667, 33.473465, 26.757021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654236, 33.454300, 26.592381>,  <44.943516, 33.422356, 26.317978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.654236, 33.454300, 26.592381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467666, 0.787536, 0.401343,
		-0.508201, 0.611073, -0.606895,
		-0.723201, 0.079862, 0.686005,
		44.437275, 33.478260, 26.798182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.562408, 34.069904, 26.393154>,  <44.943516, 33.422356, 26.317978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.562408, 34.069904, 26.393154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.510647, 33.914368, 26.758022>,  <44.479591, 33.821045, 26.976944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.510647, 33.914368, 26.758022>,  <44.562408, 34.069904, 26.393154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.510647, 33.914368, 26.758022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386242, 0.827487, 0.407532,
		-0.913275, 0.405055, 0.043106,
		-0.129403, -0.388839, 0.912173,
		44.471825, 33.797714, 27.031673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262398, 34.573578, 26.895798>,  <44.562408, 34.069904, 26.393154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262398, 34.573578, 26.895798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500717, 34.310589, 27.080297>,  <44.643711, 34.152794, 27.190998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500717, 34.310589, 27.080297>,  <44.262398, 34.573578, 26.895798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.500717, 34.310589, 27.080297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410600, 0.742942, 0.528625,
		-0.690238, -0.125566, 0.712604,
		0.595801, -0.657472, 0.461250,
		44.679459, 34.113346, 27.218672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.091324, 34.533741, 27.663542>,  <44.262398, 34.573578, 26.895798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.091324, 34.533741, 27.663542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466473, 34.471981, 27.539242>,  <44.691563, 34.434925, 27.464663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466473, 34.471981, 27.539242>,  <44.091324, 34.533741, 27.663542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.466473, 34.471981, 27.539242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271585, 0.884037, 0.380421,
		0.215975, -0.441179, 0.871043,
		0.937868, -0.154401, -0.310748,
		44.747833, 34.425659, 27.446018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.632324, 34.337704, 28.198166>,  <44.091324, 34.533741, 27.663542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.632324, 34.337704, 28.198166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730133, 34.564835, 27.883770>,  <44.788818, 34.701115, 27.695133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730133, 34.564835, 27.883770>,  <44.632324, 34.337704, 28.198166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730133, 34.564835, 27.883770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222756, 0.756021, 0.615477,
		0.943709, -0.325584, 0.058379,
		0.244525, 0.567827, -0.785990,
		44.803490, 34.735184, 27.647972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.353035, 34.664497, 28.318657>,  <44.632324, 34.337704, 28.198166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.353035, 34.664497, 28.318657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.078186, 34.926563, 28.193045>,  <44.913277, 35.083801, 28.117678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.078186, 34.926563, 28.193045>,  <45.353035, 34.664497, 28.318657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.078186, 34.926563, 28.193045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038741, 0.464654, 0.884644,
		0.725505, 0.595696, -0.344658,
		-0.687126, 0.655166, -0.314031,
		44.872047, 35.123112, 28.098835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.541534, 35.455029, 28.369522>,  <45.353035, 34.664497, 28.318657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.541534, 35.455029, 28.369522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.156376, 35.350056, 28.394672>,  <44.925282, 35.287071, 28.409763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.156376, 35.350056, 28.394672>,  <45.541534, 35.455029, 28.369522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.156376, 35.350056, 28.394672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064051, 0.448588, 0.891441,
		-0.262152, 0.854340, -0.448754,
		-0.962899, -0.262436, 0.062877,
		44.867508, 35.271324, 28.413536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313705, 36.036331, 28.452599>,  <45.541534, 35.455029, 28.369522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313705, 36.036331, 28.452599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.057205, 35.768208, 28.601988>,  <44.903305, 35.607334, 28.691622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.057205, 35.768208, 28.601988>,  <45.313705, 36.036331, 28.452599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.057205, 35.768208, 28.601988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010891, 0.494621, 0.869041,
		-0.767251, 0.553209, -0.324478,
		-0.641254, -0.670306, 0.373473,
		44.864830, 35.567116, 28.714029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.793854, 36.433258, 28.727871>,  <45.313705, 36.036331, 28.452599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.793854, 36.433258, 28.727871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.743279, 36.071999, 28.891991>,  <44.712933, 35.855244, 28.990461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.743279, 36.071999, 28.891991>,  <44.793854, 36.433258, 28.727871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.743279, 36.071999, 28.891991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167624, 0.427121, 0.888521,
		-0.977709, 0.043567, -0.205393,
		-0.126437, -0.903144, 0.410298,
		44.705349, 35.801056, 29.015079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.112835, 36.362568, 29.102484>,  <44.793854, 36.433258, 28.727871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.112835, 36.362568, 29.102484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384113, 36.102161, 29.238853>,  <44.546883, 35.945919, 29.320675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384113, 36.102161, 29.238853>,  <44.112835, 36.362568, 29.102484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384113, 36.102161, 29.238853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019287, 0.447988, 0.893831,
		-0.734625, -0.612771, 0.291269,
		0.678199, -0.651013, 0.340922,
		44.587574, 35.906857, 29.341129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833321, 36.259949, 29.719587>,  <44.112835, 36.362568, 29.102484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833321, 36.259949, 29.719587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.210022, 36.128410, 29.747740>,  <44.436043, 36.049488, 29.764631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.210022, 36.128410, 29.747740>,  <43.833321, 36.259949, 29.719587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.210022, 36.128410, 29.747740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054973, 0.357013, 0.932480,
		-0.331769, -0.874301, 0.354297,
		0.941757, -0.328845, 0.070383,
		44.492550, 36.029758, 29.768854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.815170, 36.016907, 30.246222>,  <43.833321, 36.259949, 29.719587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.815170, 36.016907, 30.246222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213821, 36.022079, 30.213820>,  <44.453014, 36.025185, 30.194378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213821, 36.022079, 30.213820>,  <43.815170, 36.016907, 30.246222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.213821, 36.022079, 30.213820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077425, 0.178019, 0.980977,
		0.027104, -0.983942, 0.176418,
		0.996630, 0.012929, -0.081007,
		44.512810, 36.025959, 30.189518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096752, 35.694450, 30.894896>,  <43.815170, 36.016907, 30.246222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096752, 35.694450, 30.894896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395721, 35.902618, 30.729723>,  <44.575104, 36.027519, 30.630619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395721, 35.902618, 30.729723>,  <44.096752, 35.694450, 30.894896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.395721, 35.902618, 30.729723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220336, 0.392195, 0.893104,
		0.626744, -0.758512, 0.178468,
		0.747424, 0.520425, -0.412933,
		44.619949, 36.058746, 30.605843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735676, 35.462616, 31.039883>,  <44.096752, 35.694450, 30.894896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735676, 35.462616, 31.039883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.790508, 35.850143, 30.957331>,  <44.823406, 36.082661, 30.907799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.790508, 35.850143, 30.957331>,  <44.735676, 35.462616, 31.039883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.790508, 35.850143, 30.957331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151449, 0.185399, 0.970922,
		0.978914, -0.164348, -0.121313,
		0.137078, 0.968822, -0.206380,
		44.831631, 36.140789, 30.895416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269970, 35.692749, 31.454138>,  <44.735676, 35.462616, 31.039883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269970, 35.692749, 31.454138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.133606, 36.052197, 31.343676>,  <45.051788, 36.267864, 31.277399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.133606, 36.052197, 31.343676>,  <45.269970, 35.692749, 31.454138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.133606, 36.052197, 31.343676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335913, 0.390801, 0.856993,
		0.878032, 0.199396, -0.435087,
		-0.340914, 0.898619, -0.276156,
		45.031330, 36.321781, 31.260828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856861, 36.221432, 31.463110>,  <45.269970, 35.692749, 31.454138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856861, 36.221432, 31.463110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.518116, 36.430779, 31.500864>,  <45.314869, 36.556385, 31.523518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.518116, 36.430779, 31.500864>,  <45.856861, 36.221432, 31.463110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.518116, 36.430779, 31.500864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396484, 0.503060, 0.767940,
		0.354430, 0.687764, -0.633530,
		-0.846865, 0.523365, 0.094387,
		45.264057, 36.587788, 31.529181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.082886, 36.932156, 31.763897>,  <45.856861, 36.221432, 31.463110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.082886, 36.932156, 31.763897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.686134, 36.917023, 31.812454>,  <45.448082, 36.907944, 31.841589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.686134, 36.917023, 31.812454>,  <46.082886, 36.932156, 31.763897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.686134, 36.917023, 31.812454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094562, 0.418762, 0.903159,
		-0.085007, 0.907307, -0.411785,
		-0.991883, -0.037835, 0.121394,
		45.388569, 36.905674, 31.848873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.866219, 37.595543, 32.064320>,  <46.082886, 36.932156, 31.763897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.866219, 37.595543, 32.064320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.570084, 37.341751, 32.153164>,  <45.392403, 37.189476, 32.206470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.570084, 37.341751, 32.153164>,  <45.866219, 37.595543, 32.064320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.570084, 37.341751, 32.153164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027035, 0.358236, 0.933239,
		-0.671688, 0.684910, -0.282370,
		-0.740340, -0.634480, 0.222106,
		45.347980, 37.151405, 32.219795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.466591, 37.996078, 32.531971>,  <45.866219, 37.595543, 32.064320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.466591, 37.996078, 32.531971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.340397, 37.621895, 32.595703>,  <45.264679, 37.397385, 32.633942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.340397, 37.621895, 32.595703>,  <45.466591, 37.996078, 32.531971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.340397, 37.621895, 32.595703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084624, 0.194967, 0.977152,
		-0.945149, 0.294795, -0.140671,
		-0.315486, -0.935459, 0.159326,
		45.245750, 37.341255, 32.643501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.915325, 38.012405, 33.000057>,  <45.466591, 37.996078, 32.531971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.915325, 38.012405, 33.000057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.055046, 37.638588, 33.027252>,  <45.138878, 37.414299, 33.043568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.055046, 37.638588, 33.027252>,  <44.915325, 38.012405, 33.000057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.055046, 37.638588, 33.027252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045906, 0.055400, 0.997408,
		-0.935885, -0.351517, -0.023550,
		0.349301, -0.934541, 0.067985,
		45.159836, 37.358227, 33.047649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480042, 37.705318, 33.524345>,  <44.915325, 38.012405, 33.000057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480042, 37.705318, 33.524345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.810688, 37.483501, 33.486008>,  <45.009075, 37.350410, 33.463005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.810688, 37.483501, 33.486008>,  <44.480042, 37.705318, 33.524345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.810688, 37.483501, 33.486008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089825, -0.038117, 0.995228,
		-0.555550, -0.831282, 0.018304,
		0.826618, -0.554543, -0.095845,
		45.058674, 37.317139, 33.457253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301731, 37.187080, 34.036026>,  <44.480042, 37.705318, 33.524345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.301731, 37.187080, 34.036026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.695438, 37.153587, 33.973789>,  <44.931664, 37.133492, 33.936447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.695438, 37.153587, 33.973789>,  <44.301731, 37.187080, 34.036026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.695438, 37.153587, 33.973789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130993, -0.245183, 0.960587,
		-0.118578, -0.965855, -0.230357,
		0.984267, -0.083730, -0.155593,
		44.990719, 37.128468, 33.927113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.540291, 36.440189, 34.263020>,  <44.301731, 37.187080, 34.036026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.540291, 36.440189, 34.263020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.866913, 36.671055, 34.267467>,  <45.062885, 36.809574, 34.270138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.866913, 36.671055, 34.267467>,  <44.540291, 36.440189, 34.263020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.866913, 36.671055, 34.267467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212938, -0.319051, 0.923506,
		0.536566, -0.751721, -0.383422,
		0.816550, 0.577167, 0.011122,
		45.111877, 36.844204, 34.270805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.130711, 36.080784, 34.462769>,  <44.540291, 36.440189, 34.263020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.130711, 36.080784, 34.462769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230843, 36.454643, 34.563774>,  <45.290920, 36.678959, 34.624378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230843, 36.454643, 34.563774>,  <45.130711, 36.080784, 34.462769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230843, 36.454643, 34.563774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247487, -0.313927, 0.916624,
		0.935994, -0.166966, -0.309899,
		0.250330, 0.934651, 0.252512,
		45.305943, 36.735039, 34.639526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.780636, 35.949478, 34.757229>,  <45.130711, 36.080784, 34.462769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.780636, 35.949478, 34.757229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.666477, 36.311962, 34.882019>,  <45.597980, 36.529453, 34.956894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.666477, 36.311962, 34.882019>,  <45.780636, 35.949478, 34.757229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.666477, 36.311962, 34.882019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330222, -0.212600, 0.919649,
		0.899724, 0.365483, -0.238576,
		-0.285395, 0.906214, 0.311972,
		45.580860, 36.583828, 34.975609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.292179, 36.188770, 35.092628>,  <45.780636, 35.949478, 34.757229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.292179, 36.188770, 35.092628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.976883, 36.382248, 35.244793>,  <45.787704, 36.498337, 35.336090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.976883, 36.382248, 35.244793>,  <46.292179, 36.188770, 35.092628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.976883, 36.382248, 35.244793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271371, -0.281593, 0.920360,
		0.552295, 0.828699, 0.090703,
		-0.788243, 0.483697, 0.380408,
		45.740410, 36.527355, 35.358913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.489449, 36.404640, 35.745136>,  <46.292179, 36.188770, 35.092628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.489449, 36.404640, 35.745136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.091209, 36.439102, 35.759930>,  <45.852268, 36.459782, 35.768806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.091209, 36.439102, 35.759930>,  <46.489449, 36.404640, 35.745136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.091209, 36.439102, 35.759930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013494, -0.258702, 0.965863,
		0.092785, 0.962107, 0.256400,
		-0.995595, 0.086158, 0.036986,
		45.792530, 36.464951, 35.771027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.856491, 36.031097, 36.285637>,  <46.489449, 36.404640, 35.745136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.856491, 36.031097, 36.285637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.936703, 35.695835, 36.488529>,  <46.984829, 35.494678, 36.610264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.936703, 35.695835, 36.488529>,  <46.856491, 36.031097, 36.285637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.936703, 35.695835, 36.488529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632362, -0.506182, -0.586427,
		0.748269, -0.203157, -0.631523,
		0.200529, -0.838157, 0.507229,
		46.996861, 35.444389, 36.640697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.162128, 35.556679, 35.915321>,  <46.856491, 36.031097, 36.285637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.162128, 35.556679, 35.915321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.986759, 35.337360, 36.200180>,  <46.881538, 35.205769, 36.371094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.986759, 35.337360, 36.200180>,  <47.162128, 35.556679, 35.915321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.986759, 35.337360, 36.200180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481160, -0.526059, -0.701247,
		0.759122, -0.650102, -0.033180,
		-0.438427, -0.548297, 0.712146,
		46.855232, 35.172871, 36.413822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.687695, 35.032589, 35.709003>,  <47.162128, 35.556679, 35.915321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.687695, 35.032589, 35.709003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.618763, 34.712872, 35.939281>,  <47.577404, 34.521042, 36.077450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.618763, 34.712872, 35.939281>,  <47.687695, 35.032589, 35.709003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.618763, 34.712872, 35.939281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383631, -0.483839, -0.786592,
		0.907265, -0.356407, -0.223257,
		-0.172326, -0.799296, 0.575699,
		47.567066, 34.473083, 36.111992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.835026, 35.253246, 34.948009>,  <47.687695, 35.032589, 35.709003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.835026, 35.253246, 34.948009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.865932, 34.854469, 34.943424>,  <47.884476, 34.615204, 34.940674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.865932, 34.854469, 34.943424>,  <47.835026, 35.253246, 34.948009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.865932, 34.854469, 34.943424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959133, -0.077463, 0.272146,
		-0.272203, -0.010029, -0.962188,
		0.077263, -0.996945, -0.011467,
		47.889111, 34.555386, 34.939983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.973553, 40.057983, 44.710686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.627979, 39.857281, 44.693485>,  <34.420635, 39.736858, 44.683163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.627979, 39.857281, 44.693485>,  <34.973553, 40.057983, 44.710686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627979, 39.857281, 44.693485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329170, -0.498013, -0.802265,
		0.381128, -0.707263, 0.595416,
		-0.863938, -0.501759, -0.043003,
		34.368797, 39.706753, 44.680584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087765, 39.285919, 44.666618>,  <34.973553, 40.057983, 44.710686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087765, 39.285919, 44.666618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.758732, 39.417358, 44.480976>,  <34.561314, 39.496223, 44.369591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.758732, 39.417358, 44.480976>,  <35.087765, 39.285919, 44.666618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758732, 39.417358, 44.480976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262616, -0.504380, -0.822578,
		-0.504380, -0.798514, 0.328597,
		0.822578, -0.328597, 0.464101,
		34.511959, 39.515938, 44.341747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965099, 38.739597, 44.201588>,  <35.087765, 39.285919, 44.666618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965099, 38.739597, 44.201588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.731163, 39.037491, 44.073002>,  <34.590801, 39.216225, 43.995850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.731163, 39.037491, 44.073002>,  <34.965099, 38.739597, 44.201588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731163, 39.037491, 44.073002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301282, -0.168519, -0.938526,
		-0.753121, -0.645739, -0.125817,
		-0.584840, 0.744730, -0.321465,
		34.555710, 39.260910, 43.976562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541660, 38.421848, 43.675072>,  <34.965099, 38.739597, 44.201588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541660, 38.421848, 43.675072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.536293, 38.814209, 43.597466>,  <34.533073, 39.049625, 43.550900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.536293, 38.814209, 43.597466>,  <34.541660, 38.421848, 43.675072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536293, 38.814209, 43.597466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149471, -0.189887, -0.970362,
		-0.988675, -0.042020, -0.144070,
		-0.013417, 0.980906, -0.194017,
		34.532269, 39.108482, 43.539261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134495, 38.594849, 42.996464>,  <34.541660, 38.421848, 43.675072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134495, 38.594849, 42.996464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.380718, 38.904438, 43.055851>,  <34.528454, 39.090191, 43.091484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.380718, 38.904438, 43.055851>,  <34.134495, 38.594849, 42.996464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380718, 38.904438, 43.055851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209695, 0.020746, -0.977547,
		-0.759677, 0.632876, -0.149529,
		0.615563, 0.773976, 0.148471,
		34.565388, 39.136631, 43.100391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888645, 39.212570, 42.535931>,  <34.134495, 38.594849, 42.996464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888645, 39.212570, 42.535931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.275101, 39.278320, 42.615479>,  <34.506973, 39.317772, 42.663208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.275101, 39.278320, 42.615479>,  <33.888645, 39.212570, 42.535931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275101, 39.278320, 42.615479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163130, 0.207995, -0.964431,
		-0.199894, 0.964219, 0.174138,
		0.966142, 0.164377, 0.198870,
		34.564945, 39.327633, 42.675140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960011, 39.851620, 42.264107>,  <33.888645, 39.212570, 42.535931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960011, 39.851620, 42.264107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.317001, 39.672287, 42.284031>,  <34.531197, 39.564690, 42.295986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.317001, 39.672287, 42.284031>,  <33.960011, 39.851620, 42.264107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317001, 39.672287, 42.284031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171103, 0.234283, -0.956993,
		0.417376, 0.862620, 0.285803,
		0.892480, -0.448328, 0.049812,
		34.584747, 39.537788, 42.298973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491737, 40.194767, 42.057762>,  <33.960011, 39.851620, 42.264107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491737, 40.194767, 42.057762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.760693, 39.898777, 42.050453>,  <34.922066, 39.721184, 42.046070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.760693, 39.898777, 42.050453>,  <34.491737, 40.194767, 42.057762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760693, 39.898777, 42.050453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237609, 0.239153, -0.941460,
		0.701026, 0.628685, 0.336628,
		0.672387, -0.739974, -0.018271,
		34.962410, 39.676785, 42.044971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136429, 40.414970, 41.696453>,  <34.491737, 40.194767, 42.057762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136429, 40.414970, 41.696453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.102570, 40.017311, 41.669609>,  <35.082253, 39.778717, 41.653503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.102570, 40.017311, 41.669609>,  <35.136429, 40.414970, 41.696453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102570, 40.017311, 41.669609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363311, 0.031920, -0.931121,
		0.927814, -0.103199, 0.358484,
		-0.084648, -0.994148, -0.067109,
		35.077175, 39.719067, 41.649475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717236, 40.274815, 41.319267>,  <35.136429, 40.414970, 41.696453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717236, 40.274815, 41.319267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.475655, 39.957703, 41.286404>,  <35.330708, 39.767437, 41.266685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.475655, 39.957703, 41.286404>,  <35.717236, 40.274815, 41.319267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475655, 39.957703, 41.286404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368756, -0.186556, -0.910613,
		0.706587, -0.580259, 0.405011,
		-0.603949, -0.792778, -0.082156,
		35.294472, 39.719868, 41.261757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214088, 39.707214, 41.135799>,  <35.717236, 40.274815, 41.319267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214088, 39.707214, 41.135799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.837963, 39.622311, 41.029400>,  <35.612289, 39.571369, 40.965561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.837963, 39.622311, 41.029400>,  <36.214088, 39.707214, 41.135799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837963, 39.622311, 41.029400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339151, -0.520144, -0.783854,
		0.028019, -0.827284, 0.561085,
		-0.940315, -0.212255, -0.266000,
		35.555870, 39.558636, 40.949600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214069, 38.999836, 40.948124>,  <36.214088, 39.707214, 41.135799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214069, 38.999836, 40.948124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.896503, 39.140312, 40.749584>,  <35.705963, 39.224598, 40.630463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.896503, 39.140312, 40.749584>,  <36.214069, 38.999836, 40.948124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896503, 39.140312, 40.749584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186759, -0.636016, -0.748735,
		-0.578627, -0.687134, 0.439360,
		-0.793921, 0.351184, -0.496345,
		35.658329, 39.245670, 40.600681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940125, 38.448803, 40.567051>,  <36.214069, 38.999836, 40.948124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940125, 38.448803, 40.567051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.777756, 38.770267, 40.392994>,  <35.680332, 38.963146, 40.288559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.777756, 38.770267, 40.392994>,  <35.940125, 38.448803, 40.567051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777756, 38.770267, 40.392994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234928, -0.368373, -0.899505,
		-0.883196, -0.467358, -0.039272,
		-0.405924, 0.803665, -0.435141,
		35.655979, 39.011368, 40.262451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627304, 38.318619, 40.033188>,  <35.940125, 38.448803, 40.567051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627304, 38.318619, 40.033188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.649418, 38.698017, 39.908413>,  <35.662685, 38.925655, 39.833546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.649418, 38.698017, 39.908413>,  <35.627304, 38.318619, 40.033188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649418, 38.698017, 39.908413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042244, -0.314361, -0.948363,
		-0.997577, 0.039254, -0.057448,
		0.055286, 0.948492, -0.311941,
		35.666004, 38.982563, 39.814831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186691, 38.277569, 39.519447>,  <35.627304, 38.318619, 40.033188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186691, 38.277569, 39.519447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.397884, 38.613792, 39.470947>,  <35.524601, 38.815525, 39.441849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.397884, 38.613792, 39.470947>,  <35.186691, 38.277569, 39.519447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397884, 38.613792, 39.470947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152200, -0.234111, -0.960222,
		-0.835505, 0.488527, -0.251539,
		0.527982, 0.840555, -0.121247,
		35.556278, 38.865959, 39.434574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869186, 38.636898, 38.961929>,  <35.186691, 38.277569, 39.519447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869186, 38.636898, 38.961929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.239441, 38.784512, 38.995441>,  <35.461594, 38.873077, 39.015549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.239441, 38.784512, 38.995441>,  <34.869186, 38.636898, 38.961929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239441, 38.784512, 38.995441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158801, -0.177835, -0.971163,
		-0.343489, 0.912245, -0.223212,
		0.925633, 0.369030, 0.083781,
		35.517132, 38.895222, 39.020576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913349, 39.052879, 38.451241>,  <34.869186, 38.636898, 38.961929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913349, 39.052879, 38.451241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.298672, 38.993774, 38.540874>,  <35.529865, 38.958313, 38.594654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.298672, 38.993774, 38.540874>,  <34.913349, 39.052879, 38.451241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298672, 38.993774, 38.540874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188766, -0.220574, -0.956930,
		0.190824, 0.964113, -0.184587,
		0.963304, -0.147761, 0.224082,
		35.587662, 38.949448, 38.608101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278061, 39.372623, 37.897831>,  <34.913349, 39.052879, 38.451241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278061, 39.372623, 37.897831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.561985, 39.127579, 38.036900>,  <35.732338, 38.980553, 38.120342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.561985, 39.127579, 38.036900>,  <35.278061, 39.372623, 37.897831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561985, 39.127579, 38.036900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331520, -0.144958, -0.932245,
		0.621501, 0.776979, 0.100200,
		0.709810, -0.612610, 0.347676,
		35.774929, 38.943794, 38.141201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968403, 39.689060, 37.757004>,  <35.278061, 39.372623, 37.897831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968403, 39.689060, 37.757004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024292, 39.293701, 37.780853>,  <36.057827, 39.056488, 37.795162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024292, 39.293701, 37.780853>,  <35.968403, 39.689060, 37.757004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024292, 39.293701, 37.780853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577615, 0.032447, -0.815664,
		0.804263, 0.148408, 0.575444,
		0.139723, -0.988394, 0.059627,
		36.066208, 38.997185, 37.798740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642410, 39.646648, 37.496414>,  <35.968403, 39.689060, 37.757004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642410, 39.646648, 37.496414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.497459, 39.273846, 37.493797>,  <36.410488, 39.050163, 37.492226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.497459, 39.273846, 37.493797>,  <36.642410, 39.646648, 37.496414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497459, 39.273846, 37.493797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573477, -0.217431, -0.789841,
		0.734714, -0.289977, 0.613277,
		-0.362381, -0.932007, -0.006546,
		36.388744, 38.994244, 37.491833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286232, 39.237431, 37.449520>,  <36.642410, 39.646648, 37.496414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286232, 39.237431, 37.449520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.997486, 38.996792, 37.312702>,  <36.824238, 38.852409, 37.230610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.997486, 38.996792, 37.312702>,  <37.286232, 39.237431, 37.449520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997486, 38.996792, 37.312702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506215, -0.122008, -0.853733,
		0.471872, -0.789426, 0.392611,
		-0.721860, -0.601599, -0.342047,
		36.780930, 38.816311, 37.210087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532040, 38.563961, 37.206734>,  <37.286232, 39.237431, 37.449520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532040, 38.563961, 37.206734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.199890, 38.621822, 36.991493>,  <37.000599, 38.656540, 36.862350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.199890, 38.621822, 36.991493>,  <37.532040, 38.563961, 37.206734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199890, 38.621822, 36.991493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540218, -0.027642, -0.841071,
		-0.136541, -0.989096, -0.055193,
		-0.830374, 0.144656, -0.538102,
		36.950779, 38.665218, 36.830063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156303, 38.408424, 37.684246>,  <37.532040, 38.563961, 37.206734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156303, 38.408424, 37.684246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498997, 38.611515, 37.647961>,  <38.704613, 38.733368, 37.626190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498997, 38.611515, 37.647961>,  <38.156303, 38.408424, 37.684246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498997, 38.611515, 37.647961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153398, -0.082915, 0.984680,
		0.492427, -0.857519, -0.148920,
		0.856729, 0.507727, -0.090712,
		38.756016, 38.763832, 37.620747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604687, 38.069736, 38.024628>,  <38.156303, 38.408424, 37.684246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604687, 38.069736, 38.024628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.789837, 38.424248, 38.018200>,  <38.900928, 38.636955, 38.014343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.789837, 38.424248, 38.018200>,  <38.604687, 38.069736, 38.024628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789837, 38.424248, 38.018200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048457, -0.007196, 0.998799,
		0.885098, -0.463098, -0.046277,
		0.462875, 0.886278, -0.016071,
		38.928699, 38.690132, 38.013378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155239, 37.953701, 38.555523>,  <38.604687, 38.069736, 38.024628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155239, 37.953701, 38.555523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.121029, 38.348755, 38.502983>,  <39.100502, 38.585789, 38.471458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.121029, 38.348755, 38.502983>,  <39.155239, 37.953701, 38.555523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121029, 38.348755, 38.502983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141269, 0.142526, 0.979658,
		0.986270, 0.065232, -0.151712,
		-0.085528, 0.987639, -0.131354,
		39.095371, 38.645046, 38.463577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732944, 38.265568, 38.897320>,  <39.155239, 37.953701, 38.555523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732944, 38.265568, 38.897320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.473228, 38.564766, 38.842293>,  <39.317398, 38.744286, 38.809277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.473228, 38.564766, 38.842293>,  <39.732944, 38.265568, 38.897320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473228, 38.564766, 38.842293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089742, 0.254966, 0.962777,
		0.755224, 0.612780, -0.232674,
		-0.649294, 0.747993, -0.137564,
		39.278439, 38.789165, 38.801022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029831, 38.891331, 39.091335>,  <39.732944, 38.265568, 38.897320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029831, 38.891331, 39.091335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.635445, 38.952034, 39.119144>,  <39.398811, 38.988457, 39.135830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.635445, 38.952034, 39.119144>,  <40.029831, 38.891331, 39.091335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635445, 38.952034, 39.119144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125285, 0.397600, 0.908965,
		0.110300, 0.904922, -0.411035,
		-0.985970, 0.151756, 0.069518,
		39.339653, 38.997562, 39.139999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951565, 39.576443, 39.399899>,  <40.029831, 38.891331, 39.091335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951565, 39.576443, 39.399899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.588047, 39.429585, 39.479191>,  <39.369938, 39.341469, 39.526768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.588047, 39.429585, 39.479191>,  <39.951565, 39.576443, 39.399899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588047, 39.429585, 39.479191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061533, 0.587838, 0.806635,
		-0.412685, 0.720867, -0.556815,
		-0.908793, -0.367149, 0.198235,
		39.315411, 39.319439, 39.538662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632671, 40.155663, 39.718578>,  <39.951565, 39.576443, 39.399899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632671, 40.155663, 39.718578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.408123, 39.842102, 39.824680>,  <39.273392, 39.653965, 39.888340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.408123, 39.842102, 39.824680>,  <39.632671, 40.155663, 39.718578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408123, 39.842102, 39.824680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253830, 0.468178, 0.846392,
		-0.787673, 0.407814, -0.461801,
		-0.561375, -0.783899, 0.265255,
		39.239712, 39.606934, 39.904259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198265, 40.446434, 40.096020>,  <39.632671, 40.155663, 39.718578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198265, 40.446434, 40.096020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.131100, 40.061062, 40.179546>,  <39.090801, 39.829838, 40.229664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.131100, 40.061062, 40.179546>,  <39.198265, 40.446434, 40.096020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131100, 40.061062, 40.179546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375715, 0.258383, 0.889987,
		-0.911397, 0.070980, -0.405360,
		-0.167910, -0.963432, 0.208821,
		39.080727, 39.772034, 40.242191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465523, 40.405380, 40.279896>,  <39.198265, 40.446434, 40.096020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465523, 40.405380, 40.279896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.655678, 40.097973, 40.451191>,  <38.769772, 39.913528, 40.553967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.655678, 40.097973, 40.451191>,  <38.465523, 40.405380, 40.279896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655678, 40.097973, 40.451191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440619, 0.213334, 0.871977,
		-0.761488, -0.603215, -0.237208,
		0.475385, -0.768518, 0.428239,
		38.798294, 39.867416, 40.579662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985737, 39.974194, 40.723179>,  <38.465523, 40.405380, 40.279896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985737, 39.974194, 40.723179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.354565, 39.889332, 40.852654>,  <38.575863, 39.838413, 40.930340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.354565, 39.889332, 40.852654>,  <37.985737, 39.974194, 40.723179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354565, 39.889332, 40.852654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318248, 0.060285, 0.946089,
		-0.220229, -0.975375, -0.011930,
		0.922072, -0.212153, 0.323688,
		38.631187, 39.825687, 40.949760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946861, 39.398537, 41.152874>,  <37.985737, 39.974194, 40.723179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946861, 39.398537, 41.152874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.288734, 39.577705, 41.257854>,  <38.493858, 39.685207, 41.320843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.288734, 39.577705, 41.257854>,  <37.946861, 39.398537, 41.152874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288734, 39.577705, 41.257854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337368, 0.094971, 0.936570,
		0.394583, -0.889015, 0.232284,
		0.854685, 0.447920, 0.262451,
		38.545139, 39.712082, 41.336590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132137, 39.095997, 41.752892>,  <37.946861, 39.398537, 41.152874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132137, 39.095997, 41.752892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.363708, 39.421909, 41.765388>,  <38.502651, 39.617455, 41.772884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.363708, 39.421909, 41.765388>,  <38.132137, 39.095997, 41.752892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363708, 39.421909, 41.765388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287846, 0.168378, 0.942758,
		0.762880, -0.554782, 0.332010,
		0.578928, 0.814779, 0.031240,
		38.537388, 39.666344, 41.774761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633633, 39.133099, 42.319721>,  <38.132137, 39.095997, 41.752892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633633, 39.133099, 42.319721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.566574, 39.515575, 42.223732>,  <38.526340, 39.745064, 42.166138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.566574, 39.515575, 42.223732>,  <38.633633, 39.133099, 42.319721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566574, 39.515575, 42.223732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250303, 0.194155, 0.948500,
		0.953542, 0.219078, 0.206789,
		-0.167647, 0.956195, -0.239971,
		38.516281, 39.802433, 42.151741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887085, 39.513416, 42.971359>,  <38.633633, 39.133099, 42.319721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887085, 39.513416, 42.971359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.669662, 39.783367, 42.771725>,  <38.539207, 39.945339, 42.651943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.669662, 39.783367, 42.771725>,  <38.887085, 39.513416, 42.971359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669662, 39.783367, 42.771725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278363, 0.416007, 0.865709,
		0.791869, 0.609491, -0.038264,
		-0.543560, 0.674877, -0.499083,
		38.506596, 39.985828, 42.622002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000500, 40.137920, 43.295383>,  <38.887085, 39.513416, 42.971359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000500, 40.137920, 43.295383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.656315, 40.191067, 43.098629>,  <38.449802, 40.222954, 42.980576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.656315, 40.191067, 43.098629>,  <39.000500, 40.137920, 43.295383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656315, 40.191067, 43.098629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395997, 0.433086, 0.809705,
		0.320610, 0.891506, -0.320040,
		-0.860462, 0.132865, -0.491886,
		38.398174, 40.230927, 42.951065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793602, 40.759178, 43.439354>,  <39.000500, 40.137920, 43.295383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793602, 40.759178, 43.439354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.451645, 40.578754, 43.336830>,  <38.246471, 40.470501, 43.275314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.451645, 40.578754, 43.336830>,  <38.793602, 40.759178, 43.439354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451645, 40.578754, 43.336830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436285, 0.357724, 0.825645,
		-0.280724, 0.817667, -0.502607,
		-0.854897, -0.451058, -0.256314,
		38.195175, 40.443436, 43.259937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213043, 41.263920, 43.515106>,  <38.793602, 40.759178, 43.439354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213043, 41.263920, 43.515106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.073853, 40.889214, 43.529991>,  <37.990337, 40.664391, 43.538921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.073853, 40.889214, 43.529991>,  <38.213043, 41.263920, 43.515106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073853, 40.889214, 43.529991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520391, 0.226022, 0.823473,
		-0.779810, 0.267187, -0.566134,
		-0.347980, -0.936763, 0.037212,
		37.969460, 40.608185, 43.541153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600460, 41.386543, 43.654381>,  <38.213043, 41.263920, 43.515106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600460, 41.386543, 43.654381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.652786, 41.002274, 43.752350>,  <37.684181, 40.771709, 43.811131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.652786, 41.002274, 43.752350>,  <37.600460, 41.386543, 43.654381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652786, 41.002274, 43.752350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622101, 0.112808, 0.774768,
		-0.771931, -0.253718, -0.582881,
		0.130819, -0.960678, 0.244918,
		37.692032, 40.714069, 43.825825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.537933, 40.853085, 43.872700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.829975, 40.623638, 44.021244>,  <37.005199, 40.485970, 44.110371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.829975, 40.623638, 44.021244>,  <36.537933, 40.853085, 43.872700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829975, 40.623638, 44.021244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379966, 0.110896, 0.918329,
		-0.567950, -0.811583, -0.136989,
		0.730108, -0.573616, 0.371358,
		37.049007, 40.451553, 44.132652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212093, 40.388222, 44.268642>,  <36.537933, 40.853085, 43.872700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212093, 40.388222, 44.268642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.589172, 40.385490, 44.402073>,  <36.815418, 40.383854, 44.482132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.589172, 40.385490, 44.402073>,  <36.212093, 40.388222, 44.268642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589172, 40.385490, 44.402073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332252, -0.110621, 0.936681,
		0.030507, -0.993839, -0.106550,
		0.942698, -0.006826, 0.333580,
		36.871983, 40.383442, 44.502148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279987, 39.824200, 44.719452>,  <36.212093, 40.388222, 44.268642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279987, 39.824200, 44.719452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.594013, 40.053936, 44.812241>,  <36.782429, 40.191776, 44.867916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.594013, 40.053936, 44.812241>,  <36.279987, 39.824200, 44.719452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594013, 40.053936, 44.812241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197134, -0.123363, 0.972584,
		0.587209, -0.809270, 0.016374,
		0.785063, 0.574338, 0.231974,
		36.829533, 40.226238, 44.881832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540989, 39.485527, 45.348682>,  <36.279987, 39.824200, 44.719452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540989, 39.485527, 45.348682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.693527, 39.854130, 45.378090>,  <36.785049, 40.075291, 45.395733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.693527, 39.854130, 45.378090>,  <36.540989, 39.485527, 45.348682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693527, 39.854130, 45.378090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097936, -0.038808, 0.994436,
		0.919230, -0.386425, 0.075449,
		0.381347, 0.921504, 0.073519,
		36.807930, 40.130581, 45.400146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043938, 39.493679, 45.936981>,  <36.540989, 39.485527, 45.348682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043938, 39.493679, 45.936981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.906506, 39.860847, 45.857613>,  <36.824043, 40.081150, 45.809994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.906506, 39.860847, 45.857613>,  <37.043938, 39.493679, 45.936981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906506, 39.860847, 45.857613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108732, 0.170979, 0.979256,
		0.932806, 0.358033, 0.041062,
		-0.343585, 0.917921, -0.198420,
		36.803429, 40.136223, 45.798088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143749, 39.891438, 46.541683>,  <37.043938, 39.493679, 45.936981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143749, 39.891438, 46.541683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.872673, 40.108582, 46.343273>,  <36.710030, 40.238869, 46.224228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.872673, 40.108582, 46.343273>,  <37.143749, 39.891438, 46.541683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872673, 40.108582, 46.343273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304565, 0.406753, 0.861273,
		0.669311, 0.734747, -0.110315,
		-0.677689, 0.542862, -0.496023,
		36.669365, 40.271439, 46.194466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151112, 40.492188, 46.947430>,  <37.143749, 39.891438, 46.541683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151112, 40.492188, 46.947430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.821365, 40.533546, 46.724815>,  <36.623516, 40.558361, 46.591248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.821365, 40.533546, 46.724815>,  <37.151112, 40.492188, 46.947430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821365, 40.533546, 46.724815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492827, 0.352557, 0.795503,
		0.278464, 0.930061, -0.239678,
		-0.824366, 0.103399, -0.556533,
		36.574055, 40.564568, 46.557854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900349, 41.108585, 47.052273>,  <37.151112, 40.492188, 46.947430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900349, 41.108585, 47.052273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.554668, 40.951477, 46.926491>,  <36.347260, 40.857212, 46.851021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.554668, 40.951477, 46.926491>,  <36.900349, 41.108585, 47.052273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554668, 40.951477, 46.926491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470100, 0.407577, 0.782871,
		-0.179321, 0.824387, -0.536870,
		-0.864205, -0.392768, -0.314457,
		36.295406, 40.833645, 46.832153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438602, 41.688168, 46.860165>,  <36.900349, 41.108585, 47.052273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438602, 41.688168, 46.860165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.212437, 41.366352, 46.932858>,  <36.076736, 41.173264, 46.976475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.212437, 41.366352, 46.932858>,  <36.438602, 41.688168, 46.860165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212437, 41.366352, 46.932858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456793, 0.488902, 0.743179,
		-0.686762, 0.337193, -0.643940,
		-0.565419, -0.804534, 0.181731,
		36.042812, 41.124992, 46.987377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737522, 41.978909, 47.157230>,  <36.438602, 41.688168, 46.860165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737522, 41.978909, 47.157230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.740883, 41.585926, 47.231747>,  <35.742901, 41.350136, 47.276455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.740883, 41.585926, 47.231747>,  <35.737522, 41.978909, 47.157230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740883, 41.585926, 47.231747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448000, 0.162851, 0.879077,
		-0.893994, -0.090845, -0.438773,
		0.008405, -0.982460, 0.186286,
		35.743404, 41.291187, 47.287632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085770, 41.695778, 47.181805>,  <35.737522, 41.978909, 47.157230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085770, 41.695778, 47.181805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.308983, 41.448223, 47.402920>,  <35.442909, 41.299690, 47.535591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.308983, 41.448223, 47.402920>,  <35.085770, 41.695778, 47.181805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308983, 41.448223, 47.402920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488839, 0.293131, 0.821651,
		-0.670550, -0.728733, -0.138961,
		0.558031, -0.618888, 0.552793,
		35.476391, 41.262558, 47.568756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583809, 41.215672, 47.467323>,  <35.085770, 41.695778, 47.181805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583809, 41.215672, 47.467323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.898197, 41.202370, 47.714272>,  <35.086830, 41.194389, 47.862442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.898197, 41.202370, 47.714272>,  <34.583809, 41.215672, 47.467323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898197, 41.202370, 47.714272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602062, 0.185969, 0.776490,
		-0.140633, -0.981993, 0.126145,
		0.785966, -0.033253, 0.617374,
		35.133987, 41.192394, 47.899483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277805, 40.967163, 48.120506>,  <34.583809, 41.215672, 47.467323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277805, 40.967163, 48.120506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.632557, 41.131695, 48.204647>,  <34.845409, 41.230415, 48.255131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.632557, 41.131695, 48.204647>,  <34.277805, 40.967163, 48.120506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632557, 41.131695, 48.204647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328437, 0.241124, 0.913230,
		0.324917, -0.879014, 0.348945,
		0.886881, 0.411330, 0.210355,
		34.898621, 41.255093, 48.267754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347637, 40.677090, 48.771484>,  <34.277805, 40.967163, 48.120506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347637, 40.677090, 48.771484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.599567, 40.987377, 48.755577>,  <34.750725, 41.173550, 48.746033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.599567, 40.987377, 48.755577>,  <34.347637, 40.677090, 48.771484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599567, 40.987377, 48.755577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126198, 0.152718, 0.980179,
		0.766417, -0.612322, 0.194080,
		0.629825, 0.775718, -0.039772,
		34.788513, 41.220093, 48.743645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808907, 40.607075, 49.259113>,  <34.347637, 40.677090, 48.771484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808907, 40.607075, 49.259113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.816460, 41.000912, 49.189575>,  <34.820992, 41.237213, 49.147850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.816460, 41.000912, 49.189575>,  <34.808907, 40.607075, 49.259113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816460, 41.000912, 49.189575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037707, 0.174458, 0.983942,
		0.999110, -0.012026, 0.040420,
		0.018885, 0.984591, -0.173849,
		34.822124, 41.296288, 49.137421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286671, 40.887337, 49.800911>,  <34.808907, 40.607075, 49.259113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286671, 40.887337, 49.800911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.047512, 41.181492, 49.673332>,  <34.904018, 41.357983, 49.596783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.047512, 41.181492, 49.673332>,  <35.286671, 40.887337, 49.800911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047512, 41.181492, 49.673332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274046, 0.186398, 0.943480,
		0.753274, 0.651509, 0.090083,
		-0.597894, 0.735386, -0.318952,
		34.868145, 41.402107, 49.577648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339043, 41.400402, 50.368134>,  <35.286671, 40.887337, 49.800911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339043, 41.400402, 50.368134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.000721, 41.490849, 50.174847>,  <34.797729, 41.545116, 50.058876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.000721, 41.490849, 50.174847>,  <35.339043, 41.400402, 50.368134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000721, 41.490849, 50.174847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444338, 0.202733, 0.872618,
		0.295273, 0.952771, -0.071001,
		-0.845800, 0.226112, -0.483214,
		34.746983, 41.558681, 50.029884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093857, 42.125706, 50.539261>,  <35.339043, 41.400402, 50.368134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093857, 42.125706, 50.539261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.766750, 41.922031, 50.431946>,  <34.570484, 41.799828, 50.367558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.766750, 41.922031, 50.431946>,  <35.093857, 42.125706, 50.539261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766750, 41.922031, 50.431946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468883, 0.319077, 0.823613,
		-0.333771, 0.799322, -0.499681,
		-0.817769, -0.509190, -0.268290,
		34.521420, 41.769276, 50.351460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482658, 42.629559, 50.706779>,  <35.093857, 42.125706, 50.539261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482658, 42.629559, 50.706779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.324352, 42.264687, 50.664272>,  <34.229366, 42.045765, 50.638767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.324352, 42.264687, 50.664272>,  <34.482658, 42.629559, 50.706779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324352, 42.264687, 50.664272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678084, 0.212223, 0.703679,
		-0.619330, 0.350553, -0.702526,
		-0.395769, -0.912181, -0.106268,
		34.205620, 41.991032, 50.632393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795429, 42.764725, 50.978645>,  <34.482658, 42.629559, 50.706779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795429, 42.764725, 50.978645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.772739, 42.368549, 50.928360>,  <33.759125, 42.130844, 50.898190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.772739, 42.368549, 50.928360>,  <33.795429, 42.764725, 50.978645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772739, 42.368549, 50.928360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810174, -0.027917, 0.585525,
		-0.583439, 0.135068, -0.800847,
		-0.056729, -0.990443, -0.125716,
		33.755722, 42.071415, 50.890644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091148, 42.585854, 50.925205>,  <33.795429, 42.764725, 50.978645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091148, 42.585854, 50.925205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.252628, 42.236221, 51.033291>,  <33.349518, 42.026443, 51.098141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.252628, 42.236221, 51.033291>,  <33.091148, 42.585854, 50.925205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252628, 42.236221, 51.033291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757594, -0.153801, 0.634347,
		-0.512909, -0.460800, -0.724285,
		0.403702, -0.874076, 0.270213,
		33.373737, 41.973999, 51.114353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543331, 42.153313, 50.935165>,  <33.091148, 42.585854, 50.925205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543331, 42.153313, 50.935165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.818111, 41.987614, 51.173996>,  <32.982979, 41.888195, 51.317295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.818111, 41.987614, 51.173996>,  <32.543331, 42.153313, 50.935165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818111, 41.987614, 51.173996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710601, -0.210927, 0.671235,
		-0.152111, -0.885391, -0.439255,
		0.686956, -0.414237, 0.597075,
		33.024197, 41.863342, 51.353119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268879, 41.543404, 51.219410>,  <32.543331, 42.153313, 50.935165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268879, 41.543404, 51.219410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.546463, 41.644890, 51.488941>,  <32.713013, 41.705780, 51.650661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.546463, 41.644890, 51.488941>,  <32.268879, 41.543404, 51.219410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546463, 41.644890, 51.488941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612787, -0.283234, 0.737746,
		0.378029, -0.924882, -0.041080,
		0.693963, 0.253717, 0.673827,
		32.754654, 41.721004, 51.691090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445755, 40.817665, 51.699593>,  <32.268879, 41.543404, 51.219410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445755, 40.817665, 51.699593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.506416, 41.177155, 51.864178>,  <32.542812, 41.392849, 51.962929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.506416, 41.177155, 51.864178>,  <32.445755, 40.817665, 51.699593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506416, 41.177155, 51.864178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670480, -0.212330, 0.710896,
		0.726263, -0.383688, 0.570374,
		0.151655, 0.898721, 0.411462,
		32.551914, 41.446770, 51.987617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088909, 40.463493, 52.363255>,  <32.445755, 40.817665, 51.699593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088909, 40.463493, 52.363255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.732332, 40.423183, 52.186543>,  <31.518385, 40.398998, 52.080513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.732332, 40.423183, 52.186543>,  <32.088909, 40.463493, 52.363255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732332, 40.423183, 52.186543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452982, -0.223100, -0.863153,
		-0.011579, -0.969572, 0.244530,
		-0.891445, -0.100774, -0.441782,
		31.464899, 40.392952, 52.054008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049702, 39.805595, 52.143230>,  <32.088909, 40.463493, 52.363255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049702, 39.805595, 52.143230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.811966, 40.048908, 51.932800>,  <31.669325, 40.194897, 51.806541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.811966, 40.048908, 51.932800>,  <32.049702, 39.805595, 52.143230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811966, 40.048908, 51.932800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386859, -0.357246, -0.850127,
		-0.705057, -0.708778, -0.022996,
		-0.594336, 0.608284, -0.526076,
		31.633665, 40.231392, 51.774979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996841, 39.416042, 51.584442>,  <32.049702, 39.805595, 52.143230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996841, 39.416042, 51.584442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.862993, 39.771267, 51.458344>,  <31.782684, 39.984402, 51.382683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.862993, 39.771267, 51.458344>,  <31.996841, 39.416042, 51.584442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862993, 39.771267, 51.458344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288725, -0.221828, -0.931359,
		-0.897033, -0.402670, -0.182177,
		-0.334618, 0.888059, -0.315248,
		31.762608, 40.037685, 51.363770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562941, 39.208965, 51.046085>,  <31.996841, 39.416042, 51.584442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562941, 39.208965, 51.046085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.654228, 39.588463, 50.958630>,  <31.709002, 39.816162, 50.906155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.654228, 39.588463, 50.958630>,  <31.562941, 39.208965, 51.046085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654228, 39.588463, 50.958630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297947, -0.281850, -0.912025,
		-0.926900, 0.142998, -0.346998,
		0.228219, 0.948743, -0.218640,
		31.722694, 39.873085, 50.893036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323872, 39.273148, 50.441059>,  <31.562941, 39.208965, 51.046085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323872, 39.273148, 50.441059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.604500, 39.556797, 50.469185>,  <31.772877, 39.726986, 50.486061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.604500, 39.556797, 50.469185>,  <31.323872, 39.273148, 50.441059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604500, 39.556797, 50.469185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156442, -0.057007, -0.986041,
		-0.695216, 0.702776, -0.150931,
		0.701570, 0.709123, 0.070311,
		31.814970, 39.769535, 50.490276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198374, 39.691833, 49.906693>,  <31.323872, 39.273148, 50.441059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198374, 39.691833, 49.906693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.560202, 39.818832, 50.020500>,  <31.777298, 39.895031, 50.088783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.560202, 39.818832, 50.020500>,  <31.198374, 39.691833, 49.906693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560202, 39.818832, 50.020500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302565, -0.007937, -0.953096,
		-0.300346, 0.948226, -0.103243,
		0.904570, 0.317496, 0.284516,
		31.831573, 39.914082, 50.105854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319483, 40.274601, 49.466362>,  <31.198374, 39.691833, 49.906693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319483, 40.274601, 49.466362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.660490, 40.108688, 49.593590>,  <31.865093, 40.009140, 49.669926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.660490, 40.108688, 49.593590>,  <31.319483, 40.274601, 49.466362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660490, 40.108688, 49.593590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323430, -0.059437, -0.944383,
		0.410620, 0.907977, 0.083483,
		0.852516, -0.414784, 0.318073,
		31.916245, 39.984253, 49.689011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879686, 40.609329, 49.215668>,  <31.319483, 40.274601, 49.466362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879686, 40.609329, 49.215668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.085381, 40.286736, 49.332386>,  <32.208797, 40.093178, 49.402416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.085381, 40.286736, 49.332386>,  <31.879686, 40.609329, 49.215668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085381, 40.286736, 49.332386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506416, 0.010946, -0.862220,
		0.692173, 0.591155, 0.414045,
		0.514237, -0.806484, 0.291794,
		32.239651, 40.044792, 49.419926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617249, 40.823811, 49.112164>,  <31.879686, 40.609329, 49.215668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617249, 40.823811, 49.112164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.589012, 40.424946, 49.101624>,  <32.572071, 40.185627, 49.095299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.589012, 40.424946, 49.101624>,  <32.617249, 40.823811, 49.112164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589012, 40.424946, 49.101624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473480, -0.010240, -0.880745,
		0.877972, -0.074648, 0.472857,
		-0.070588, -0.997158, -0.026353,
		32.567837, 40.125797, 49.093716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379036, 40.507793, 48.959736>,  <32.617249, 40.823811, 49.112164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379036, 40.507793, 48.959736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.112156, 40.230030, 48.851929>,  <32.952026, 40.063374, 48.787243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.112156, 40.230030, 48.851929>,  <33.379036, 40.507793, 48.959736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112156, 40.230030, 48.851929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552907, -0.219239, -0.803883,
		0.499134, -0.685370, 0.530219,
		-0.667202, -0.694408, -0.269516,
		32.911995, 40.021709, 48.771072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828644, 39.951473, 48.740196>,  <33.379036, 40.507793, 48.959736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828644, 39.951473, 48.740196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.474022, 39.899170, 48.562691>,  <33.261250, 39.867786, 48.456188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.474022, 39.899170, 48.562691>,  <33.828644, 39.951473, 48.740196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474022, 39.899170, 48.562691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462606, -0.259491, -0.847738,
		-0.004300, -0.956852, 0.290544,
		-0.886554, -0.130762, -0.443761,
		33.208057, 39.859940, 48.429562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012196, 39.502102, 48.277527>,  <33.828644, 39.951473, 48.740196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012196, 39.502102, 48.277527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.655762, 39.615410, 48.135696>,  <33.441902, 39.683395, 48.050598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.655762, 39.615410, 48.135696>,  <34.012196, 39.502102, 48.277527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655762, 39.615410, 48.135696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214856, -0.424871, -0.879387,
		-0.399746, -0.859794, 0.317737,
		-0.891089, 0.283264, -0.354572,
		33.388435, 39.700390, 48.029324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901123, 38.965870, 47.637917>,  <34.012196, 39.502102, 48.277527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901123, 38.965870, 47.637917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.681335, 39.299500, 47.618313>,  <33.549461, 39.499680, 47.606548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.681335, 39.299500, 47.618313>,  <33.901123, 38.965870, 47.637917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681335, 39.299500, 47.618313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148954, 0.040066, -0.988032,
		-0.822130, -0.550193, -0.146254,
		-0.549468, 0.834076, -0.049014,
		33.516495, 39.549721, 47.603607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430069, 38.825893, 47.065525>,  <33.901123, 38.965870, 47.637917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430069, 38.825893, 47.065525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.427265, 39.222557, 47.117001>,  <33.425583, 39.460556, 47.147884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.427265, 39.222557, 47.117001>,  <33.430069, 38.825893, 47.065525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427265, 39.222557, 47.117001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006757, 0.128734, -0.991656,
		-0.999953, -0.006078, -0.007603,
		-0.007006, 0.991660, 0.128687,
		33.425163, 39.520054, 47.155605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914543, 39.123768, 46.595646>,  <33.430069, 38.825893, 47.065525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914543, 39.123768, 46.595646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.181198, 39.407513, 46.687206>,  <33.341190, 39.577759, 46.742142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.181198, 39.407513, 46.687206>,  <32.914543, 39.123768, 46.595646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181198, 39.407513, 46.687206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151475, 0.171753, -0.973425,
		-0.729828, 0.683595, 0.007046,
		0.666639, 0.709365, 0.228897,
		33.381191, 39.620323, 46.755875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790047, 39.620571, 46.081928>,  <32.914543, 39.123768, 46.595646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790047, 39.620571, 46.081928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.143291, 39.712902, 46.245304>,  <33.355240, 39.768303, 46.343330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.143291, 39.712902, 46.245304>,  <32.790047, 39.620571, 46.081928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143291, 39.712902, 46.245304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333142, 0.304455, -0.892369,
		-0.330338, 0.924135, 0.191970,
		0.883116, 0.230830, 0.408441,
		33.408226, 39.782150, 46.367836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912308, 40.346680, 45.966919>,  <32.790047, 39.620571, 46.081928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912308, 40.346680, 45.966919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.262295, 40.162796, 46.027702>,  <33.472286, 40.052464, 46.064171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.262295, 40.162796, 46.027702>,  <32.912308, 40.346680, 45.966919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262295, 40.162796, 46.027702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273841, 0.211041, -0.938335,
		0.399294, 0.862628, 0.310543,
		0.874972, -0.459711, 0.151956,
		33.524788, 40.024883, 46.073288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332413, 40.722675, 45.561890>,  <32.912308, 40.346680, 45.966919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332413, 40.722675, 45.561890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.550617, 40.393429, 45.625011>,  <33.681538, 40.195881, 45.662884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.550617, 40.393429, 45.625011>,  <33.332413, 40.722675, 45.561890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550617, 40.393429, 45.625011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299817, 0.015825, -0.953866,
		0.782644, 0.567653, 0.255417,
		0.545507, -0.823116, 0.157806,
		33.714268, 40.146496, 45.672352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903721, 40.810238, 45.171581>,  <33.332413, 40.722675, 45.561890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903721, 40.810238, 45.171581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.904491, 40.414932, 45.232670>,  <33.904953, 40.177750, 45.269325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.904491, 40.414932, 45.232670>,  <33.903721, 40.810238, 45.171581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904491, 40.414932, 45.232670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404307, -0.138913, -0.904012,
		0.914621, 0.063493, 0.399295,
		0.001931, -0.988267, 0.152724,
		33.905071, 40.118454, 45.278488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489231, 40.589939, 44.892590>,  <33.903721, 40.810238, 45.171581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489231, 40.589939, 44.892590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.291641, 40.245216, 44.938671>,  <34.173088, 40.038383, 44.966320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.291641, 40.245216, 44.938671>,  <34.489231, 40.589939, 44.892590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291641, 40.245216, 44.938671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346958, -0.316869, -0.882731,
		0.797250, -0.396078, 0.455538,
		-0.493976, -0.861810, 0.115201,
		34.143448, 39.986675, 44.973232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.440868, 33.379120, 28.464100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.458748, 32.987377, 28.542955>,  <44.469475, 32.752331, 28.590269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.458748, 32.987377, 28.542955>,  <44.440868, 33.379120, 28.464100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458748, 32.987377, 28.542955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488567, 0.150695, 0.859415,
		-0.871381, -0.134733, -0.471745,
		0.044702, -0.979356, 0.197139,
		44.472160, 32.693569, 28.602097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984417, 33.365482, 28.994595>,  <44.440868, 33.379120, 28.464100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984417, 33.365482, 28.994595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.132641, 32.994228, 29.008793>,  <44.221573, 32.771477, 29.017311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.132641, 32.994228, 29.008793>,  <43.984417, 33.365482, 28.994595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.132641, 32.994228, 29.008793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216544, -0.049167, 0.975034,
		-0.903215, -0.368990, -0.219200,
		0.370555, -0.928132, 0.035494,
		44.243809, 32.715790, 29.019442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.569984, 33.048130, 29.422976>,  <43.984417, 33.365482, 28.994595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.569984, 33.048130, 29.422976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.872646, 32.788570, 29.454987>,  <44.054245, 32.632835, 29.474194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.872646, 32.788570, 29.454987>,  <43.569984, 33.048130, 29.422976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872646, 32.788570, 29.454987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173398, -0.081145, 0.981503,
		-0.630404, -0.756534, -0.173917,
		0.756653, -0.648901, 0.080028,
		44.099644, 32.593899, 29.478994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.367577, 32.444885, 29.817049>,  <43.569984, 33.048130, 29.422976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.367577, 32.444885, 29.817049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.763805, 32.415848, 29.863525>,  <44.001541, 32.398426, 29.891411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.763805, 32.415848, 29.863525>,  <43.367577, 32.444885, 29.817049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.763805, 32.415848, 29.863525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125256, -0.136237, 0.982726,
		-0.055512, -0.988013, -0.144045,
		0.990570, -0.072596, 0.116192,
		44.060978, 32.394070, 29.898382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391441, 31.854094, 30.376654>,  <43.367577, 32.444885, 29.817049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391441, 31.854094, 30.376654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.722591, 32.078403, 30.371672>,  <43.921280, 32.212990, 30.368683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.722591, 32.078403, 30.371672>,  <43.391441, 31.854094, 30.376654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722591, 32.078403, 30.371672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066549, 0.120242, 0.990512,
		0.556952, -0.819190, 0.136864,
		0.827874, 0.560776, -0.012453,
		43.970955, 32.246635, 30.367935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793674, 31.733894, 30.984932>,  <43.391441, 31.854094, 30.376654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793674, 31.733894, 30.984932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.935558, 32.084354, 30.854366>,  <44.020687, 32.294632, 30.776028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.935558, 32.084354, 30.854366>,  <43.793674, 31.733894, 30.984932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.935558, 32.084354, 30.854366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058220, 0.327739, 0.942973,
		0.933164, -0.353481, 0.065242,
		0.354705, 0.876150, -0.326414,
		44.041969, 32.347198, 30.756443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272072, 31.812124, 31.490841>,  <43.793674, 31.733894, 30.984932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272072, 31.812124, 31.490841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.193832, 32.157406, 31.304672>,  <44.146889, 32.364574, 31.192970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.193832, 32.157406, 31.304672>,  <44.272072, 31.812124, 31.490841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.193832, 32.157406, 31.304672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201998, 0.499874, 0.842213,
		0.959655, 0.070722, -0.272140,
		-0.195598, 0.863206, -0.465421,
		44.135155, 32.416367, 31.165047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.763496, 32.291538, 31.705301>,  <44.272072, 31.812124, 31.490841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.763496, 32.291538, 31.705301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.471924, 32.535133, 31.580214>,  <44.296982, 32.681290, 31.505161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.471924, 32.535133, 31.580214>,  <44.763496, 32.291538, 31.705301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.471924, 32.535133, 31.580214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136666, 0.577055, 0.805189,
		0.670807, 0.544189, -0.503861,
		-0.728931, 0.608987, -0.312721,
		44.253246, 32.717831, 31.486397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037704, 32.988590, 31.727739>,  <44.763496, 32.291538, 31.705301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037704, 32.988590, 31.727739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.645954, 33.069252, 31.722649>,  <44.410904, 33.117649, 31.719595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.645954, 33.069252, 31.722649>,  <45.037704, 32.988590, 31.727739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.645954, 33.069252, 31.722649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149695, 0.766449, 0.624618,
		0.135710, 0.609830, -0.780827,
		-0.979374, 0.201653, -0.012726,
		44.352142, 33.129749, 31.718830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.885086, 33.696140, 31.713884>,  <45.037704, 32.988590, 31.727739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.885086, 33.696140, 31.713884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.540024, 33.568863, 31.871153>,  <44.332989, 33.492496, 31.965515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.540024, 33.568863, 31.871153>,  <44.885086, 33.696140, 31.713884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.540024, 33.568863, 31.871153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032191, 0.810295, 0.585137,
		-0.504771, 0.492113, -0.709246,
		-0.862653, -0.318191, 0.393172,
		44.281227, 33.473404, 31.989105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.464523, 34.310169, 31.854181>,  <44.885086, 33.696140, 31.713884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.464523, 34.310169, 31.854181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.322987, 34.007721, 32.074390>,  <44.238064, 33.826252, 32.206516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.322987, 34.007721, 32.074390>,  <44.464523, 34.310169, 31.854181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.322987, 34.007721, 32.074390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126276, 0.621833, 0.772902,
		-0.926743, 0.203965, -0.315509,
		-0.353839, -0.756123, 0.550524,
		44.216835, 33.780884, 32.239548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.858398, 34.596542, 32.230644>,  <44.464523, 34.310169, 31.854181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.858398, 34.596542, 32.230644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.989052, 34.261852, 32.406467>,  <44.067444, 34.061039, 32.511959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.989052, 34.261852, 32.406467>,  <43.858398, 34.596542, 32.230644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989052, 34.261852, 32.406467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171251, 0.404972, 0.898149,
		-0.929507, -0.368641, -0.011011,
		0.326635, -0.836721, 0.439554,
		44.087044, 34.010838, 32.538334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311058, 34.348095, 32.786308>,  <43.858398, 34.596542, 32.230644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311058, 34.348095, 32.786308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.662670, 34.190697, 32.893990>,  <43.873638, 34.096260, 32.958599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.662670, 34.190697, 32.893990>,  <43.311058, 34.348095, 32.786308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662670, 34.190697, 32.893990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096820, 0.405542, 0.908934,
		-0.466832, -0.825045, 0.318385,
		0.879030, -0.393493, 0.269200,
		43.926380, 34.072647, 32.974751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103146, 34.040264, 33.400970>,  <43.311058, 34.348095, 32.786308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103146, 34.040264, 33.400970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.499420, 34.071133, 33.445854>,  <43.737183, 34.089653, 33.472786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.499420, 34.071133, 33.445854>,  <43.103146, 34.040264, 33.400970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499420, 34.071133, 33.445854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131156, 0.318852, 0.938686,
		0.036659, -0.944658, 0.326003,
		0.990683, 0.077168, 0.112209,
		43.796627, 34.094284, 33.479515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.101833, 34.034031, 34.113094>,  <43.103146, 34.040264, 33.400970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.101833, 34.034031, 34.113094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.477741, 34.131275, 34.016991>,  <43.703285, 34.189621, 33.959328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.477741, 34.131275, 34.016991>,  <43.101833, 34.034031, 34.113094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477741, 34.131275, 34.016991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087118, 0.509347, 0.856140,
		0.330515, -0.825508, 0.457490,
		0.939771, 0.243111, -0.240263,
		43.759674, 34.204208, 33.944912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.526241, 33.735676, 34.687397>,  <43.101833, 34.034031, 34.113094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.526241, 33.735676, 34.687397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.690590, 34.048252, 34.499550>,  <43.789200, 34.235798, 34.386841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.690590, 34.048252, 34.499550>,  <43.526241, 33.735676, 34.687397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690590, 34.048252, 34.499550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092863, 0.476556, 0.874226,
		0.906952, -0.402803, 0.123236,
		0.410870, 0.781437, -0.469619,
		43.813850, 34.282684, 34.358665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066200, 33.953236, 35.075554>,  <43.526241, 33.735676, 34.687397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066200, 33.953236, 35.075554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.007252, 34.273521, 34.843300>,  <43.971882, 34.465694, 34.703949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.007252, 34.273521, 34.843300>,  <44.066200, 33.953236, 35.075554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007252, 34.273521, 34.843300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143685, 0.598148, 0.788399,
		0.978588, 0.032763, -0.203204,
		-0.147376, 0.800716, -0.580633,
		43.963039, 34.513737, 34.669109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.485634, 34.410889, 35.284115>,  <44.066200, 33.953236, 35.075554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.485634, 34.410889, 35.284115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.219772, 34.619175, 35.069790>,  <44.060257, 34.744144, 34.941193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.219772, 34.619175, 35.069790>,  <44.485634, 34.410889, 35.284115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219772, 34.619175, 35.069790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095422, 0.652110, 0.752095,
		0.741034, 0.551010, -0.383739,
		-0.664653, 0.520711, -0.535814,
		44.020378, 34.775387, 34.909046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665653, 35.119774, 35.374790>,  <44.485634, 34.410889, 35.284115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.665653, 35.119774, 35.374790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.287197, 35.133297, 35.245991>,  <44.060123, 35.141411, 35.168713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.287197, 35.133297, 35.245991>,  <44.665653, 35.119774, 35.374790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.287197, 35.133297, 35.245991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231339, 0.625182, 0.745406,
		0.226509, 0.779746, -0.583686,
		-0.946137, 0.033811, -0.321995,
		44.003357, 35.143440, 35.149391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.472794, 35.805470, 35.414089>,  <44.665653, 35.119774, 35.374790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.472794, 35.805470, 35.414089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.124481, 35.610104, 35.391499>,  <43.915493, 35.492886, 35.377945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.124481, 35.610104, 35.391499>,  <44.472794, 35.805470, 35.414089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124481, 35.610104, 35.391499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412163, 0.662516, 0.625454,
		-0.268063, 0.567913, -0.778214,
		-0.870783, -0.488412, -0.056477,
		43.863247, 35.463581, 35.374554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964245, 36.328789, 35.376812>,  <44.472794, 35.805470, 35.414089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964245, 36.328789, 35.376812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.745163, 36.023788, 35.514572>,  <43.613712, 35.840790, 35.597229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.745163, 36.023788, 35.514572>,  <43.964245, 36.328789, 35.376812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.745163, 36.023788, 35.514572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376643, 0.592271, 0.712289,
		-0.747100, 0.260408, -0.611580,
		-0.547707, -0.762498, 0.344405,
		43.580853, 35.795040, 35.617893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.530239, 36.724861, 35.790955>,  <43.964245, 36.328789, 35.376812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.530239, 36.724861, 35.790955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.924755, 36.668568, 35.825420>,  <45.161465, 36.634792, 35.846100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.924755, 36.668568, 35.825420>,  <44.530239, 36.724861, 35.790955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.924755, 36.668568, 35.825420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142765, 0.465916, -0.873235,
		0.082750, 0.873565, 0.479621,
		0.986291, -0.140733, 0.086160,
		45.220642, 36.626347, 35.851269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.804092, 37.372623, 35.606598>,  <44.530239, 36.724861, 35.790955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.804092, 37.372623, 35.606598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.087528, 37.096531, 35.547985>,  <45.257591, 36.930874, 35.512817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.087528, 37.096531, 35.547985>,  <44.804092, 37.372623, 35.606598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.087528, 37.096531, 35.547985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172883, 0.371165, -0.912331,
		0.684110, 0.621140, 0.382335,
		0.708594, -0.690234, -0.146533,
		45.300106, 36.889462, 35.504025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.350651, 37.787346, 35.339935>,  <44.804092, 37.372623, 35.606598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.350651, 37.787346, 35.339935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.398659, 37.407116, 35.225395>,  <45.427464, 37.178978, 35.156670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.398659, 37.407116, 35.225395>,  <45.350651, 37.787346, 35.339935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.398659, 37.407116, 35.225395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220555, 0.255695, -0.941263,
		0.967962, 0.176130, -0.178965,
		0.120024, -0.950578, -0.286350,
		45.434666, 37.121944, 35.139492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.727135, 37.967201, 34.815262>,  <45.350651, 37.787346, 35.339935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.727135, 37.967201, 34.815262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.608212, 37.589073, 34.761620>,  <45.536858, 37.362198, 34.729435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.608212, 37.589073, 34.761620>,  <45.727135, 37.967201, 34.815262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.608212, 37.589073, 34.761620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027945, 0.131786, -0.990884,
		0.954373, -0.298346, -0.012765,
		-0.297308, -0.945316, -0.134110,
		45.519020, 37.305477, 34.721386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.116867, 37.623543, 34.137825>,  <45.727135, 37.967201, 34.815262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.116867, 37.623543, 34.137825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.824921, 37.354137, 34.184589>,  <45.649754, 37.192493, 34.212646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.824921, 37.354137, 34.184589>,  <46.116867, 37.623543, 34.137825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.824921, 37.354137, 34.184589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076000, -0.090017, -0.993036,
		0.679352, -0.733669, 0.014513,
		-0.729866, -0.673518, 0.116912,
		45.605961, 37.152081, 34.219662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.279503, 37.108280, 33.650879>,  <46.116867, 37.623543, 34.137825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.279503, 37.108280, 33.650879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.890308, 37.103230, 33.743088>,  <45.656792, 37.100201, 33.798412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.890308, 37.103230, 33.743088>,  <46.279503, 37.108280, 33.650879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.890308, 37.103230, 33.743088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228960, -0.075422, -0.970509,
		0.029645, -0.997072, 0.070492,
		-0.972984, -0.012631, 0.230526,
		45.598412, 37.099442, 33.812244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.017117, 36.515636, 33.439953>,  <46.279503, 37.108280, 33.650879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.017117, 36.515636, 33.439953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.704601, 36.765240, 33.445690>,  <45.517094, 36.915001, 33.449135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.704601, 36.765240, 33.445690>,  <46.017117, 36.515636, 33.439953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.704601, 36.765240, 33.445690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220098, -0.253919, -0.941850,
		-0.584077, -0.739015, 0.335726,
		-0.781289, 0.624005, 0.014347,
		45.470215, 36.952442, 33.449993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574337, 36.149742, 33.190384>,  <46.017117, 36.515636, 33.439953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574337, 36.149742, 33.190384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.444180, 36.525284, 33.145351>,  <45.366085, 36.750607, 33.118332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.444180, 36.525284, 33.145351>,  <45.574337, 36.149742, 33.190384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.444180, 36.525284, 33.145351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225114, -0.192558, -0.955115,
		-0.918390, -0.285448, 0.274006,
		-0.325398, 0.938851, -0.112585,
		45.346561, 36.806938, 33.111576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.855804, 36.088657, 32.823887>,  <45.574337, 36.149742, 33.190384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.855804, 36.088657, 32.823887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.958847, 36.471455, 32.770519>,  <45.020672, 36.701134, 32.738499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.958847, 36.471455, 32.770519>,  <44.855804, 36.088657, 32.823887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.958847, 36.471455, 32.770519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168840, -0.091373, -0.981399,
		-0.951384, 0.275342, 0.138040,
		0.257608, 0.956994, -0.133419,
		45.036129, 36.758553, 32.730495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295094, 36.433853, 32.457077>,  <44.855804, 36.088657, 32.823887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295094, 36.433853, 32.457077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.627861, 36.645016, 32.388695>,  <44.827522, 36.771713, 32.347664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.627861, 36.645016, 32.388695>,  <44.295094, 36.433853, 32.457077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627861, 36.645016, 32.388695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185126, -0.026389, -0.982360,
		-0.523106, 0.848893, 0.075776,
		0.831919, 0.527906, -0.170956,
		44.877438, 36.803387, 32.337406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066139, 36.892586, 31.977037>,  <44.295094, 36.433853, 32.457077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066139, 36.892586, 31.977037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.464329, 36.886448, 31.939522>,  <44.703243, 36.882763, 31.917011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.464329, 36.886448, 31.939522>,  <44.066139, 36.892586, 31.977037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.464329, 36.886448, 31.939522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094671, -0.073468, -0.992794,
		0.008348, 0.997179, -0.074589,
		0.995474, -0.015349, -0.093791,
		44.762970, 36.881844, 31.911385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.148956, 37.285339, 31.414156>,  <44.066139, 36.892586, 31.977037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.148956, 37.285339, 31.414156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.479038, 37.064190, 31.460400>,  <44.677086, 36.931499, 31.488146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.479038, 37.064190, 31.460400>,  <44.148956, 37.285339, 31.414156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.479038, 37.064190, 31.460400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067061, -0.299133, -0.951852,
		0.560841, 0.777718, -0.283922,
		0.825203, -0.552878, 0.115611,
		44.726601, 36.898327, 31.495083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.461166, 37.393948, 30.788219>,  <44.148956, 37.285339, 31.414156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.461166, 37.393948, 30.788219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.655941, 37.071499, 30.922718>,  <44.772808, 36.878029, 31.003416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.655941, 37.071499, 30.922718>,  <44.461166, 37.393948, 30.788219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.655941, 37.071499, 30.922718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081207, -0.425084, -0.901504,
		0.869653, 0.411672, -0.272453,
		0.486939, -0.806120, 0.336245,
		44.802021, 36.829662, 31.023592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.066250, 37.336689, 30.415451>,  <44.461166, 37.393948, 30.788219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.066250, 37.336689, 30.415451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.991440, 36.976208, 30.571835>,  <44.946552, 36.759918, 30.665665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.991440, 36.976208, 30.571835>,  <45.066250, 37.336689, 30.415451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.991440, 36.976208, 30.571835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018715, -0.394640, -0.918645,
		0.982176, -0.179129, 0.056943,
		-0.187028, -0.901206, 0.390959,
		44.935333, 36.705845, 30.689121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.585430, 36.852966, 30.169029>,  <45.066250, 37.336689, 30.415451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.585430, 36.852966, 30.169029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.298405, 36.606144, 30.298237>,  <45.126190, 36.458050, 30.375761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.298405, 36.606144, 30.298237>,  <45.585430, 36.852966, 30.169029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.298405, 36.606144, 30.298237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001303, -0.462589, -0.886572,
		0.696494, -0.636591, 0.331132,
		-0.717562, -0.617060, 0.323020,
		45.083138, 36.421024, 30.395144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.778584, 36.237194, 29.947153>,  <45.585430, 36.852966, 30.169029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.778584, 36.237194, 29.947153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.388119, 36.202175, 30.026602>,  <45.153839, 36.181164, 30.074270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.388119, 36.202175, 30.026602>,  <45.778584, 36.237194, 29.947153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.388119, 36.202175, 30.026602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145885, -0.412948, -0.898995,
		0.160727, -0.906537, 0.390330,
		-0.976158, -0.087549, 0.198622,
		45.095272, 36.175911, 30.086189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.753544, 35.513432, 29.745882>,  <45.778584, 36.237194, 29.947153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.753544, 35.513432, 29.745882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.387859, 35.674160, 29.766886>,  <45.168449, 35.770596, 29.779488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.387859, 35.674160, 29.766886>,  <45.753544, 35.513432, 29.745882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.387859, 35.674160, 29.766886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283273, -0.541011, -0.791873,
		-0.289781, -0.738815, 0.608424,
		-0.914212, 0.401820, 0.052512,
		45.113594, 35.794704, 29.782639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.367073, 34.951866, 29.779816>,  <45.753544, 35.513432, 29.745882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.367073, 34.951866, 29.779816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.111736, 35.234982, 29.658777>,  <44.958534, 35.404850, 29.586155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.111736, 35.234982, 29.658777>,  <45.367073, 34.951866, 29.779816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.111736, 35.234982, 29.658777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293569, -0.587244, -0.754296,
		-0.711577, -0.392663, 0.582644,
		-0.638338, 0.707786, -0.302595,
		44.920235, 35.447319, 29.567999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.626678, 34.615463, 29.642826>,  <45.367073, 34.951866, 29.779816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.626678, 34.615463, 29.642826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.670738, 34.967854, 29.458765>,  <44.697174, 35.179291, 29.348328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.670738, 34.967854, 29.458765>,  <44.626678, 34.615463, 29.642826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.670738, 34.967854, 29.458765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338889, -0.401939, -0.850646,
		-0.934356, 0.249636, 0.254283,
		0.110145, 0.880980, -0.460154,
		44.703781, 35.232147, 29.320719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.990494, 34.768505, 29.202173>,  <44.626678, 34.615463, 29.642826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.990494, 34.768505, 29.202173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.261620, 35.014183, 29.040516>,  <44.424297, 35.161591, 28.943521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.261620, 35.014183, 29.040516>,  <43.990494, 34.768505, 29.202173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.261620, 35.014183, 29.040516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312528, -0.256861, -0.914521,
		-0.665501, 0.746184, 0.017848,
		0.677816, 0.614193, -0.404144,
		44.464966, 35.198441, 28.919273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.625237, 35.019577, 28.578804>,  <43.990494, 34.768505, 29.202173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.625237, 35.019577, 28.578804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.018791, 35.074013, 28.532408>,  <44.254925, 35.106674, 28.504570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.018791, 35.074013, 28.532408>,  <43.625237, 35.019577, 28.578804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018791, 35.074013, 28.532408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102304, -0.103607, -0.989343,
		-0.146660, 0.985263, -0.088014,
		0.983882, 0.136093, -0.115992,
		44.313957, 35.114841, 28.497610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.270889, 40.733826, 41.837185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048927, 40.401882, 41.813786>,  <38.915749, 40.202717, 41.799747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048927, 40.401882, 41.813786>,  <39.270889, 40.733826, 41.837185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048927, 40.401882, 41.813786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573869, -0.330929, -0.749106,
		0.602292, -0.449250, 0.659862,
		-0.554904, -0.829855, -0.058494,
		38.882458, 40.152927, 41.796238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709473, 40.146351, 41.716480>,  <39.270889, 40.733826, 41.837185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709473, 40.146351, 41.716480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349770, 40.013096, 41.603100>,  <39.133945, 39.933144, 41.535072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349770, 40.013096, 41.603100>,  <39.709473, 40.146351, 41.716480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349770, 40.013096, 41.603100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408487, -0.407871, -0.816566,
		0.156419, -0.850093, 0.502866,
		-0.899262, -0.333141, -0.283453,
		39.079990, 39.913155, 41.518063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860867, 39.524921, 41.307304>,  <39.709473, 40.146351, 41.716480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860867, 39.524921, 41.307304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476044, 39.593281, 41.222221>,  <39.245152, 39.634296, 41.171173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476044, 39.593281, 41.222221>,  <39.860867, 39.524921, 41.307304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476044, 39.593281, 41.222221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083566, -0.557543, -0.825931,
		-0.259742, -0.812366, 0.522106,
		-0.962056, 0.170899, -0.212704,
		39.187428, 39.644550, 41.158409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470898, 38.836735, 41.105057>,  <39.860867, 39.524921, 41.307304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470898, 38.836735, 41.105057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279140, 39.147007, 40.940861>,  <39.164085, 39.333172, 40.842342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279140, 39.147007, 40.940861>,  <39.470898, 38.836735, 41.105057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279140, 39.147007, 40.940861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005118, -0.470200, -0.882545,
		-0.877585, -0.420986, 0.229381,
		-0.479395, 0.775682, -0.410486,
		39.135323, 39.379711, 40.817715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969868, 38.560925, 40.665051>,  <39.470898, 38.836735, 41.105057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969868, 38.560925, 40.665051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006424, 38.935951, 40.530811>,  <39.028358, 39.160965, 40.450268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006424, 38.935951, 40.530811>,  <38.969868, 38.560925, 40.665051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006424, 38.935951, 40.530811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092772, -0.327525, -0.940277,
		-0.991484, 0.117064, 0.057048,
		0.091388, 0.937563, -0.335596,
		39.033840, 39.217220, 40.430134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475601, 38.541931, 40.251854>,  <38.969868, 38.560925, 40.665051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475601, 38.541931, 40.251854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670177, 38.873127, 40.140278>,  <38.786922, 39.071846, 40.073334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670177, 38.873127, 40.140278>,  <38.475601, 38.541931, 40.251854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670177, 38.873127, 40.140278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246857, -0.176002, -0.952935,
		-0.838118, 0.532400, 0.118783,
		0.486436, 0.827994, -0.278937,
		38.816109, 39.121525, 40.056599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150852, 38.774479, 39.718319>,  <38.475601, 38.541931, 40.251854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150852, 38.774479, 39.718319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505547, 38.954037, 39.674160>,  <38.718365, 39.061771, 39.647663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505547, 38.954037, 39.674160>,  <38.150852, 38.774479, 39.718319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505547, 38.954037, 39.674160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116525, -0.014050, -0.993088,
		-0.447340, 0.893476, 0.039848,
		0.886740, 0.448892, -0.110397,
		38.771568, 39.088703, 39.641041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036148, 39.317619, 39.180691>,  <38.150852, 38.774479, 39.718319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036148, 39.317619, 39.180691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421490, 39.210602, 39.188328>,  <38.652695, 39.146389, 39.192909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421490, 39.210602, 39.188328>,  <38.036148, 39.317619, 39.180691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421490, 39.210602, 39.188328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007307, -0.097332, -0.995225,
		0.268128, 0.958616, -0.095720,
		0.963355, -0.267548, 0.019093,
		38.710495, 39.130337, 39.194057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354832, 39.730377, 38.689713>,  <38.036148, 39.317619, 39.180691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354832, 39.730377, 38.689713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637409, 39.449791, 38.727417>,  <38.806957, 39.281441, 38.750042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637409, 39.449791, 38.727417>,  <38.354832, 39.730377, 38.689713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637409, 39.449791, 38.727417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100587, -0.032328, -0.994403,
		0.700582, 0.711974, 0.047720,
		0.706447, -0.701461, 0.094264,
		38.849342, 39.239353, 38.755695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876549, 39.927349, 38.232502>,  <38.354832, 39.730377, 38.689713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876549, 39.927349, 38.232502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973969, 39.543716, 38.290249>,  <39.032421, 39.313538, 38.324898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973969, 39.543716, 38.290249>,  <38.876549, 39.927349, 38.232502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973969, 39.543716, 38.290249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036090, -0.157709, -0.986826,
		0.969216, 0.235134, -0.073024,
		0.243553, -0.959083, 0.144368,
		39.047035, 39.255993, 38.333561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516155, 39.849537, 37.924858>,  <38.876549, 39.927349, 38.232502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516155, 39.849537, 37.924858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329082, 39.497330, 37.955753>,  <39.216839, 39.286007, 37.974289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329082, 39.497330, 37.955753>,  <39.516155, 39.849537, 37.924858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329082, 39.497330, 37.955753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014161, -0.094835, -0.995392,
		0.883785, -0.464431, 0.056821,
		-0.467680, -0.880517, 0.077237,
		39.188778, 39.233173, 37.978924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929714, 39.307941, 37.510006>,  <39.516155, 39.849537, 37.924858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929714, 39.307941, 37.510006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554352, 39.172188, 37.535965>,  <39.329132, 39.090736, 37.551540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554352, 39.172188, 37.535965>,  <39.929714, 39.307941, 37.510006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554352, 39.172188, 37.535965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025693, -0.118752, -0.992592,
		0.344572, -0.933123, 0.102718,
		-0.938408, -0.339381, 0.064894,
		39.272831, 39.070374, 37.555431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861893, 38.483059, 37.374760>,  <39.929714, 39.307941, 37.510006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861893, 38.483059, 37.374760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534233, 38.697113, 37.292175>,  <39.337639, 38.825546, 37.242626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534233, 38.697113, 37.292175>,  <39.861893, 38.483059, 37.374760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534233, 38.697113, 37.292175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138068, -0.165405, -0.976513,
		-0.556717, -0.828415, 0.061606,
		-0.819148, 0.535136, -0.206462,
		39.288490, 38.857655, 37.230236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991264, 37.803604, 37.746624>,  <39.861893, 38.483059, 37.374760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991264, 37.803604, 37.746624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842598, 37.476803, 37.922977>,  <39.753399, 37.280724, 38.028790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842598, 37.476803, 37.922977>,  <39.991264, 37.803604, 37.746624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842598, 37.476803, 37.922977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740393, 0.025650, 0.671685,
		-0.560076, 0.576065, 0.595369,
		-0.371663, -0.817002, 0.440880,
		39.731098, 37.231701, 38.055241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367199, 38.186161, 38.304573>,  <39.991264, 37.803604, 37.746624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367199, 38.186161, 38.304573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553898, 38.197117, 37.950985>,  <40.665916, 38.203690, 37.738834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553898, 38.197117, 37.950985>,  <40.367199, 38.186161, 38.304573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553898, 38.197117, 37.950985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011197, 0.999623, 0.025066,
		0.884321, -0.001801, 0.466876,
		0.466745, 0.027394, -0.883967,
		40.693920, 38.205334, 37.685795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636719, 37.463882, 38.097145>,  <40.367199, 38.186161, 38.304573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636719, 37.463882, 38.097145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898972, 37.188492, 38.221176>,  <41.056324, 37.023258, 38.295597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898972, 37.188492, 38.221176>,  <40.636719, 37.463882, 38.097145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898972, 37.188492, 38.221176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443711, -0.019013, 0.895968,
		-0.610955, -0.725013, -0.317949,
		0.655634, -0.688473, 0.310079,
		41.095661, 36.981949, 38.314201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340866, 36.877007, 38.348309>,  <40.636719, 37.463882, 38.097145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340866, 36.877007, 38.348309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681732, 36.899708, 38.556381>,  <40.886253, 36.913330, 38.681225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681732, 36.899708, 38.556381>,  <40.340866, 36.877007, 38.348309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681732, 36.899708, 38.556381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523256, 0.086523, 0.847772,
		0.003103, -0.994632, 0.103426,
		0.852170, 0.056749, 0.520179,
		40.937382, 36.916733, 38.712433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169395, 36.626816, 39.036957>,  <40.340866, 36.877007, 38.348309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169395, 36.626816, 39.036957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519684, 36.809429, 39.099796>,  <40.729858, 36.918999, 39.137501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519684, 36.809429, 39.099796>,  <40.169395, 36.626816, 39.036957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519684, 36.809429, 39.099796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250731, 0.151972, 0.956054,
		0.412600, -0.876629, 0.247554,
		0.875725, 0.456537, 0.157094,
		40.782402, 36.946392, 39.146923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416359, 36.289917, 39.607487>,  <40.169395, 36.626816, 39.036957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416359, 36.289917, 39.607487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665062, 36.603161, 39.602623>,  <40.814285, 36.791107, 39.599705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665062, 36.603161, 39.602623>,  <40.416359, 36.289917, 39.607487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665062, 36.603161, 39.602623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034745, 0.043086, 0.998467,
		0.782436, -0.620385, 0.053999,
		0.621761, 0.783113, -0.012157,
		40.851589, 36.838093, 39.598976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923943, 36.168129, 40.130005>,  <40.416359, 36.289917, 39.607487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923943, 36.168129, 40.130005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890060, 36.563431, 40.079140>,  <40.869732, 36.800613, 40.048622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890060, 36.563431, 40.079140>,  <40.923943, 36.168129, 40.130005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890060, 36.563431, 40.079140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100078, 0.118534, 0.987894,
		0.991367, 0.096405, 0.088862,
		-0.084705, 0.988259, -0.127159,
		40.864651, 36.859909, 40.040993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404354, 36.424324, 40.650333>,  <40.923943, 36.168129, 40.130005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404354, 36.424324, 40.650333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144127, 36.716072, 40.565681>,  <40.987991, 36.891121, 40.514893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144127, 36.716072, 40.565681>,  <41.404354, 36.424324, 40.650333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144127, 36.716072, 40.565681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083678, 0.208120, 0.974517,
		0.754824, 0.651699, -0.074364,
		-0.650568, 0.729366, -0.211626,
		40.948956, 36.934883, 40.502193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582474, 36.967178, 41.083622>,  <41.404354, 36.424324, 40.650333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582474, 36.967178, 41.083622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211926, 37.076977, 40.980480>,  <40.989597, 37.142857, 40.918594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211926, 37.076977, 40.980480>,  <41.582474, 36.967178, 41.083622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211926, 37.076977, 40.980480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208803, 0.195450, 0.958228,
		0.313425, 0.941516, -0.123745,
		-0.926373, 0.274494, -0.257850,
		40.934013, 37.159325, 40.903126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410286, 37.738548, 41.376534>,  <41.582474, 36.967178, 41.083622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410286, 37.738548, 41.376534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057346, 37.559021, 41.319935>,  <40.845581, 37.451305, 41.285976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057346, 37.559021, 41.319935>,  <41.410286, 37.738548, 41.376534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057346, 37.559021, 41.319935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255710, 0.204859, 0.944799,
		-0.395053, 0.869827, -0.295524,
		-0.882352, -0.448814, -0.141493,
		40.792641, 37.424377, 41.277489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984493, 38.158245, 41.891685>,  <41.410286, 37.738548, 41.376534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984493, 38.158245, 41.891685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720798, 37.881176, 41.774651>,  <40.562580, 37.714935, 41.704430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720798, 37.881176, 41.774651>,  <40.984493, 38.158245, 41.891685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720798, 37.881176, 41.774651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588544, 0.233144, 0.774119,
		-0.468000, 0.682527, -0.561368,
		-0.659237, -0.692677, -0.292586,
		40.523029, 37.673374, 41.686874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277519, 38.496368, 41.977566>,  <40.984493, 38.158245, 41.891685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277519, 38.496368, 41.977566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272007, 38.098591, 42.019306>,  <40.268700, 37.859924, 42.044350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272007, 38.098591, 42.019306>,  <40.277519, 38.496368, 41.977566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272007, 38.098591, 42.019306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506964, 0.096901, 0.856503,
		-0.861857, -0.041100, -0.505484,
		-0.013780, -0.994445, 0.104351,
		40.267872, 37.800259, 42.050613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527752, 38.207619, 41.951843>,  <40.277519, 38.496368, 41.977566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527752, 38.207619, 41.951843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765221, 37.945419, 42.138550>,  <39.907703, 37.788097, 42.250572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765221, 37.945419, 42.138550>,  <39.527752, 38.207619, 41.951843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765221, 37.945419, 42.138550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617351, 0.001054, 0.786687,
		-0.516166, -0.755193, -0.404049,
		0.593676, -0.655501, 0.466763,
		39.943325, 37.748768, 42.278580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021648, 37.779320, 42.334576>,  <39.527752, 38.207619, 41.951843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021648, 37.779320, 42.334576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368465, 37.685268, 42.510281>,  <39.576557, 37.628838, 42.615704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368465, 37.685268, 42.510281>,  <39.021648, 37.779320, 42.334576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368465, 37.685268, 42.510281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458171, -0.029894, 0.888361,
		-0.195753, -0.971503, -0.133651,
		0.867041, -0.235135, 0.439263,
		39.628578, 37.614727, 42.642059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875053, 37.128654, 42.679264>,  <39.021648, 37.779320, 42.334576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875053, 37.128654, 42.679264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192394, 37.295349, 42.856766>,  <39.382797, 37.395367, 42.963268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192394, 37.295349, 42.856766>,  <38.875053, 37.128654, 42.679264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192394, 37.295349, 42.856766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469180, -0.045900, 0.881909,
		0.387892, -0.907868, 0.159109,
		0.793354, 0.416736, 0.443757,
		39.430401, 37.420368, 42.989895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850903, 36.439640, 42.494385>,  <38.875053, 37.128654, 42.679264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850903, 36.439640, 42.494385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789558, 36.047081, 42.540585>,  <38.752750, 35.811546, 42.568306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789558, 36.047081, 42.540585>,  <38.850903, 36.439640, 42.494385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789558, 36.047081, 42.540585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165771, -0.140779, -0.976064,
		0.974166, -0.130545, 0.184278,
		-0.153362, -0.981397, 0.115501,
		38.743549, 35.752663, 42.575233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449814, 36.084633, 42.272678>,  <38.850903, 36.439640, 42.494385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449814, 36.084633, 42.272678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141731, 35.832218, 42.235622>,  <38.956882, 35.680771, 42.213390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141731, 35.832218, 42.235622>,  <39.449814, 36.084633, 42.272678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141731, 35.832218, 42.235622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200591, -0.101783, -0.974373,
		0.605432, -0.769050, 0.204973,
		-0.770205, -0.631033, -0.092641,
		38.910671, 35.642910, 42.207829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671524, 35.557144, 41.760487>,  <39.449814, 36.084633, 42.272678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671524, 35.557144, 41.760487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272499, 35.532494, 41.773567>,  <39.033085, 35.517704, 41.781418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272499, 35.532494, 41.773567>,  <39.671524, 35.557144, 41.760487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272499, 35.532494, 41.773567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036077, 0.054394, -0.997868,
		0.059782, -0.996612, -0.056487,
		-0.997559, -0.061692, 0.032703,
		38.973228, 35.514004, 41.783379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529682, 35.142216, 41.212440>,  <39.671524, 35.557144, 41.760487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529682, 35.142216, 41.212440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176876, 35.303635, 41.309765>,  <38.965191, 35.400486, 41.368160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176876, 35.303635, 41.309765>,  <39.529682, 35.142216, 41.212440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176876, 35.303635, 41.309765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266529, -0.001421, -0.963826,
		-0.388599, -0.914960, 0.108810,
		-0.882017, 0.403543, 0.243311,
		38.912270, 35.424698, 41.382759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103943, 34.760147, 40.855869>,  <39.529682, 35.142216, 41.212440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103943, 34.760147, 40.855869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873459, 35.075157, 40.943302>,  <38.735168, 35.264164, 40.995762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873459, 35.075157, 40.943302>,  <39.103943, 34.760147, 40.855869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873459, 35.075157, 40.943302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414535, -0.051116, -0.908597,
		-0.704371, -0.614156, 0.355911,
		-0.576213, 0.787527, 0.218584,
		38.700596, 35.311417, 41.008877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606762, 34.680450, 40.558422>,  <39.103943, 34.760147, 40.855869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606762, 34.680450, 40.558422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565792, 35.072464, 40.626587>,  <38.541210, 35.307671, 40.667488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565792, 35.072464, 40.626587>,  <38.606762, 34.680450, 40.558422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565792, 35.072464, 40.626587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119256, 0.157984, -0.980214,
		-0.987567, -0.120717, 0.100694,
		-0.102420, 0.980035, 0.170415,
		38.535065, 35.366474, 40.677711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033573, 34.777706, 40.072155>,  <38.606762, 34.680450, 40.558422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033573, 34.777706, 40.072155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185276, 35.145435, 40.114132>,  <38.276299, 35.366074, 40.139320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185276, 35.145435, 40.114132>,  <38.033573, 34.777706, 40.072155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185276, 35.145435, 40.114132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149226, 0.172704, -0.973604,
		-0.913177, 0.353590, 0.202686,
		0.379261, 0.919319, 0.104944,
		38.299053, 35.421230, 40.145615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507328, 35.306892, 39.745399>,  <38.033573, 34.777706, 40.072155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507328, 35.306892, 39.745399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855503, 35.503769, 39.741806>,  <38.064407, 35.621895, 39.739651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855503, 35.503769, 39.741806>,  <37.507328, 35.306892, 39.745399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855503, 35.503769, 39.741806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110377, 0.177346, -0.977939,
		-0.479743, 0.852228, 0.208696,
		0.870439, 0.492195, -0.008986,
		38.116634, 35.651428, 39.739109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412346, 36.040157, 39.499256>,  <37.507328, 35.306892, 39.745399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412346, 36.040157, 39.499256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781811, 35.911572, 39.415821>,  <38.003490, 35.834419, 39.365761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781811, 35.911572, 39.415821>,  <37.412346, 36.040157, 39.499256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781811, 35.911572, 39.415821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116072, 0.284057, -0.951756,
		0.365209, 0.903311, 0.225059,
		0.923661, -0.321466, -0.208589,
		38.058910, 35.815132, 39.353245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609356, 36.474960, 38.927719>,  <37.412346, 36.040157, 39.499256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609356, 36.474960, 38.927719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880981, 36.181824, 38.944801>,  <38.043957, 36.005943, 38.955051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880981, 36.181824, 38.944801>,  <37.609356, 36.474960, 38.927719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880981, 36.181824, 38.944801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068882, 0.005692, -0.997609,
		0.730844, 0.680378, 0.054345,
		0.679060, -0.732840, 0.042706,
		38.084698, 35.961971, 38.957615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161633, 36.673843, 38.472775>,  <37.609356, 36.474960, 38.927719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161633, 36.673843, 38.472775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198284, 36.277237, 38.509636>,  <38.220276, 36.039272, 38.531754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198284, 36.277237, 38.509636>,  <38.161633, 36.673843, 38.472775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198284, 36.277237, 38.509636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000837, -0.092467, -0.995716,
		0.995793, 0.091313, -0.007642,
		0.091628, -0.991520, 0.092155,
		38.225773, 35.979782, 38.537281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752876, 36.447426, 38.035095>,  <38.161633, 36.673843, 38.472775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752876, 36.447426, 38.035095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487144, 36.159004, 38.113831>,  <38.327705, 35.985950, 38.161072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487144, 36.159004, 38.113831>,  <38.752876, 36.447426, 38.035095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487144, 36.159004, 38.113831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003524, -0.266369, -0.963865,
		0.747431, -0.639631, 0.179498,
		-0.664331, -0.721055, 0.196838,
		38.287846, 35.942688, 38.172882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.934746, 35.939346, 46.446037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.576271, 35.793526, 46.344887>,  <38.361187, 35.706032, 46.284199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.576271, 35.793526, 46.344887>,  <38.934746, 35.939346, 46.446037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576271, 35.793526, 46.344887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334797, -0.181682, -0.924610,
		0.291125, -0.913288, 0.284872,
		-0.896190, -0.364551, -0.252874,
		38.307415, 35.684162, 46.269024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950321, 35.197186, 46.161926>,  <38.934746, 35.939346, 46.446037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950321, 35.197186, 46.161926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.593086, 35.328968, 46.039379>,  <38.378746, 35.408039, 45.965851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.593086, 35.328968, 46.039379>,  <38.950321, 35.197186, 46.161926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593086, 35.328968, 46.039379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192050, -0.336623, -0.921847,
		-0.406842, -0.882123, 0.237359,
		-0.893082, 0.329461, -0.306364,
		38.325161, 35.427807, 45.947472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658539, 34.616768, 45.746559>,  <38.950321, 35.197186, 46.161926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658539, 34.616768, 45.746559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.497089, 34.954395, 45.605343>,  <38.400219, 35.156971, 45.520615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.497089, 34.954395, 45.605343>,  <38.658539, 34.616768, 45.746559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497089, 34.954395, 45.605343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154174, -0.317598, -0.935608,
		-0.901843, -0.432060, -0.001945,
		-0.403621, 0.844071, -0.353036,
		38.376003, 35.207615, 45.499432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552692, 34.523624, 45.111221>,  <38.658539, 34.616768, 45.746559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552692, 34.523624, 45.111221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.420803, 34.900360, 45.085209>,  <38.341671, 35.126400, 45.069603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.420803, 34.900360, 45.085209>,  <38.552692, 34.523624, 45.111221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420803, 34.900360, 45.085209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103277, -0.104450, -0.989153,
		-0.938412, -0.319430, 0.131709,
		-0.329722, 0.941836, -0.065028,
		38.321888, 35.182911, 45.065701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962181, 34.543488, 44.610313>,  <38.552692, 34.523624, 45.111221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962181, 34.543488, 44.610313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.106064, 34.916702, 44.613045>,  <38.192394, 35.140633, 44.614685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.106064, 34.916702, 44.613045>,  <37.962181, 34.543488, 44.610313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106064, 34.916702, 44.613045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067759, -0.018819, -0.997524,
		-0.930602, 0.359277, -0.069991,
		0.359705, 0.933041, 0.006831,
		38.213974, 35.196613, 44.615093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575573, 34.951149, 44.065887>,  <37.962181, 34.543488, 44.610313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575573, 34.951149, 44.065887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.930080, 35.129986, 44.114273>,  <38.142784, 35.237289, 44.143303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.930080, 35.129986, 44.114273>,  <37.575573, 34.951149, 44.065887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930080, 35.129986, 44.114273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045583, 0.175694, -0.983389,
		-0.460919, 0.877063, 0.135333,
		0.886271, 0.447094, 0.120960,
		38.195961, 35.264114, 44.150562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551914, 35.311970, 43.512516>,  <37.575573, 34.951149, 44.065887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551914, 35.311970, 43.512516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.937607, 35.345898, 43.612965>,  <38.169022, 35.366257, 43.673233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.937607, 35.345898, 43.612965>,  <37.551914, 35.311970, 43.512516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937607, 35.345898, 43.612965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211609, 0.324186, -0.922022,
		-0.159618, 0.942183, 0.294641,
		0.964232, 0.084822, 0.251120,
		38.226875, 35.371346, 43.688301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756805, 35.988895, 43.317257>,  <37.551914, 35.311970, 43.512516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756805, 35.988895, 43.317257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.097740, 35.780289, 43.332947>,  <38.302299, 35.655125, 43.342361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.097740, 35.780289, 43.332947>,  <37.756805, 35.988895, 43.317257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097740, 35.780289, 43.332947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182415, 0.226162, -0.956857,
		0.490151, 0.822719, 0.287899,
		0.852336, -0.521521, 0.039222,
		38.353439, 35.623833, 43.344715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356236, 36.377968, 43.092491>,  <37.756805, 35.988895, 43.317257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356236, 36.377968, 43.092491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.473335, 35.997242, 43.055935>,  <38.543594, 35.768806, 43.034000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.473335, 35.997242, 43.055935>,  <38.356236, 36.377968, 43.092491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473335, 35.997242, 43.055935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045455, 0.109321, -0.992967,
		0.955109, 0.286533, 0.075268,
		0.292746, -0.951813, -0.091389,
		38.561157, 35.711697, 43.028519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903084, 36.776588, 43.332111>,  <38.356236, 36.377968, 43.092491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903084, 36.776588, 43.332111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.146278, 37.089706, 43.385143>,  <39.292198, 37.277576, 43.416962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.146278, 37.089706, 43.385143>,  <38.903084, 36.776588, 43.332111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146278, 37.089706, 43.385143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272442, 0.048853, 0.960931,
		0.745736, -0.620358, 0.242969,
		0.607991, 0.782796, 0.132581,
		39.328674, 37.324547, 43.424919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319756, 36.668510, 44.063477>,  <38.903084, 36.776588, 43.332111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319756, 36.668510, 44.063477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.319653, 37.051899, 43.949406>,  <39.319592, 37.281933, 43.880962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.319653, 37.051899, 43.949406>,  <39.319756, 36.668510, 44.063477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319653, 37.051899, 43.949406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386513, 0.262917, 0.884015,
		0.922284, 0.110455, 0.370395,
		-0.000261, 0.958475, -0.285176,
		39.319576, 37.339443, 43.863853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630665, 37.011162, 44.642952>,  <39.319756, 36.668510, 44.063477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630665, 37.011162, 44.642952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.447292, 37.306023, 44.444378>,  <39.337269, 37.482937, 44.325233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.447292, 37.306023, 44.444378>,  <39.630665, 37.011162, 44.642952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447292, 37.306023, 44.444378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478679, 0.265841, 0.836777,
		0.748801, 0.621242, 0.230986,
		-0.458436, 0.737147, -0.496438,
		39.309761, 37.527168, 44.295448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815964, 37.608891, 44.942196>,  <39.630665, 37.011162, 44.642952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815964, 37.608891, 44.942196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.485268, 37.737953, 44.757851>,  <39.286850, 37.815392, 44.647243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.485268, 37.737953, 44.757851>,  <39.815964, 37.608891, 44.942196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485268, 37.737953, 44.757851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331930, 0.381645, 0.862652,
		0.454227, 0.866163, -0.208422,
		-0.826741, 0.322658, -0.460859,
		39.237244, 37.834751, 44.619595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745304, 38.171730, 45.263950>,  <39.815964, 37.608891, 44.942196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745304, 38.171730, 45.263950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.383713, 38.089863, 45.113781>,  <39.166759, 38.040741, 45.023682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.383713, 38.089863, 45.113781>,  <39.745304, 38.171730, 45.263950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383713, 38.089863, 45.113781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420424, 0.585479, 0.693151,
		0.077936, 0.784427, -0.615305,
		-0.903974, -0.204668, -0.375422,
		39.112522, 38.028461, 45.001156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391632, 38.886398, 45.226696>,  <39.745304, 38.171730, 45.263950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391632, 38.886398, 45.226696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.110233, 38.602844, 45.246994>,  <38.941395, 38.432713, 45.259171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.110233, 38.602844, 45.246994>,  <39.391632, 38.886398, 45.226696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110233, 38.602844, 45.246994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454337, 0.503489, 0.734899,
		-0.546504, 0.493947, -0.676276,
		-0.703499, -0.708883, 0.050741,
		38.899185, 38.390179, 45.262215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685501, 39.307114, 45.389896>,  <39.391632, 38.886398, 45.226696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685501, 39.307114, 45.389896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.568768, 38.925732, 45.420238>,  <38.498730, 38.696903, 45.438446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.568768, 38.925732, 45.420238>,  <38.685501, 39.307114, 45.389896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568768, 38.925732, 45.420238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582838, 0.240156, 0.776289,
		-0.758377, 0.182330, -0.625796,
		-0.291829, -0.953457, 0.075860,
		38.481220, 38.639694, 45.442997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959541, 39.276714, 45.406898>,  <38.685501, 39.307114, 45.389896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959541, 39.276714, 45.406898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.089802, 38.943928, 45.586578>,  <38.167957, 38.744255, 45.694386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.089802, 38.943928, 45.586578>,  <37.959541, 39.276714, 45.406898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089802, 38.943928, 45.586578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514876, 0.242433, 0.822270,
		-0.793003, -0.499058, -0.349411,
		0.325652, -0.831966, 0.449203,
		38.187496, 38.694340, 45.721340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380836, 38.934944, 45.596878>,  <37.959541, 39.276714, 45.406898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380836, 38.934944, 45.596878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.654720, 38.793976, 45.852058>,  <37.819050, 38.709396, 46.005165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.654720, 38.793976, 45.852058>,  <37.380836, 38.934944, 45.596878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654720, 38.793976, 45.852058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638136, 0.132956, 0.758357,
		-0.352078, -0.926350, -0.133855,
		0.684707, -0.352418, 0.637948,
		37.860134, 38.688251, 46.043442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053238, 38.492508, 46.039169>,  <37.380836, 38.934944, 45.596878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053238, 38.492508, 46.039169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.382839, 38.616825, 46.228664>,  <37.580601, 38.691414, 46.342361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.382839, 38.616825, 46.228664>,  <37.053238, 38.492508, 46.039169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382839, 38.616825, 46.228664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523156, 0.096311, 0.846777,
		0.217546, -0.945586, 0.241953,
		0.824003, 0.310792, 0.473737,
		37.630039, 38.710060, 46.370785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961185, 38.258263, 46.787033>,  <37.053238, 38.492508, 46.039169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961185, 38.258263, 46.787033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.274384, 38.504608, 46.821987>,  <37.462303, 38.652416, 46.842960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.274384, 38.504608, 46.821987>,  <36.961185, 38.258263, 46.787033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274384, 38.504608, 46.821987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159065, 0.062435, 0.985292,
		0.601346, -0.785378, 0.146849,
		0.782995, 0.615860, 0.087381,
		37.509281, 38.689365, 46.848202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389801, 38.062023, 47.223877>,  <36.961185, 38.258263, 46.787033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389801, 38.062023, 47.223877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.491673, 38.448833, 47.223553>,  <37.552795, 38.680920, 47.223358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.491673, 38.448833, 47.223553>,  <37.389801, 38.062023, 47.223877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491673, 38.448833, 47.223553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095452, 0.025975, 0.995095,
		0.962304, -0.253349, 0.098920,
		0.254676, 0.967026, -0.000814,
		37.568077, 38.738941, 47.223309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823933, 38.148914, 47.788830>,  <37.389801, 38.062023, 47.223877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823933, 38.148914, 47.788830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.723713, 38.528019, 47.709862>,  <37.663582, 38.755482, 47.662479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.723713, 38.528019, 47.709862>,  <37.823933, 38.148914, 47.788830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723713, 38.528019, 47.709862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245288, 0.135123, 0.959987,
		0.936515, 0.288947, 0.198620,
		-0.250547, 0.947761, -0.197420,
		37.648548, 38.812347, 47.650635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111126, 38.575211, 48.212742>,  <37.823933, 38.148914, 47.788830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111126, 38.575211, 48.212742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.820694, 38.826210, 48.100277>,  <37.646435, 38.976810, 48.032799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.820694, 38.826210, 48.100277>,  <38.111126, 38.575211, 48.212742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820694, 38.826210, 48.100277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130348, 0.275880, 0.952313,
		0.675139, 0.728107, -0.118519,
		-0.726083, 0.627495, -0.281164,
		37.602871, 39.014458, 48.015926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.657648, 37.561543, 45.513447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.025681, 37.484543, 45.649914>,  <31.246500, 37.438343, 45.731792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.025681, 37.484543, 45.649914>,  <30.657648, 37.561543, 45.513447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025681, 37.484543, 45.649914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349570, 0.010433, -0.936852,
		0.176781, 0.981242, 0.076890,
		0.920081, -0.192496, 0.341169,
		31.301704, 37.426792, 45.752266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060139, 38.030830, 45.175671>,  <30.657648, 37.561543, 45.513447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060139, 38.030830, 45.175671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.297775, 37.747421, 45.328014>,  <31.440357, 37.577377, 45.419418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.297775, 37.747421, 45.328014>,  <31.060139, 38.030830, 45.175671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297775, 37.747421, 45.328014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457454, -0.091866, -0.884475,
		0.661657, 0.699685, 0.269538,
		0.594093, -0.708520, 0.380858,
		31.476004, 37.534866, 45.442272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640480, 38.377228, 45.248253>,  <31.060139, 38.030830, 45.175671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640480, 38.377228, 45.248253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.725643, 37.990028, 45.195110>,  <31.776741, 37.757710, 45.163223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.725643, 37.990028, 45.195110>,  <31.640480, 38.377228, 45.248253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725643, 37.990028, 45.195110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497169, 0.224383, -0.838138,
		0.841127, 0.112394, 0.529031,
		0.212907, -0.967998, -0.132855,
		31.789515, 37.699631, 45.155254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361290, 38.341465, 45.049931>,  <31.640480, 38.377228, 45.248253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361290, 38.341465, 45.049931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.200222, 37.996647, 44.926811>,  <32.103580, 37.789757, 44.852940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.200222, 37.996647, 44.926811>,  <32.361290, 38.341465, 45.049931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200222, 37.996647, 44.926811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488499, 0.081990, -0.868703,
		0.774097, -0.500156, 0.388093,
		-0.402668, -0.862045, -0.307794,
		32.079422, 37.738033, 44.834473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954975, 37.912415, 44.726395>,  <32.361290, 38.341465, 45.049931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954975, 37.912415, 44.726395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.614403, 37.765949, 44.576202>,  <32.410061, 37.678070, 44.486088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.614403, 37.765949, 44.576202>,  <32.954975, 37.912415, 44.726395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614403, 37.765949, 44.576202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440588, -0.110990, -0.890822,
		0.284516, -0.923906, 0.255829,
		-0.851430, -0.366168, -0.375483,
		32.358974, 37.656097, 44.463558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166420, 37.361561, 44.247074>,  <32.954975, 37.912415, 44.726395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166420, 37.361561, 44.247074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.795761, 37.470161, 44.143063>,  <32.573368, 37.535324, 44.080654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.795761, 37.470161, 44.143063>,  <33.166420, 37.361561, 44.247074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795761, 37.470161, 44.143063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206444, -0.210568, -0.955532,
		-0.314186, -0.939120, 0.139071,
		-0.926643, 0.271505, -0.260033,
		32.517769, 37.551613, 44.065052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965775, 36.824245, 43.782124>,  <33.166420, 37.361561, 44.247074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965775, 36.824245, 43.782124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.707851, 37.121948, 43.712490>,  <32.553097, 37.300571, 43.670712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.707851, 37.121948, 43.712490>,  <32.965775, 36.824245, 43.782124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707851, 37.121948, 43.712490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216212, -0.040848, -0.975492,
		-0.733126, -0.666645, -0.134578,
		-0.644809, 0.744255, -0.174083,
		32.514408, 37.345226, 43.660267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548740, 36.571762, 43.295971>,  <32.965775, 36.824245, 43.782124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548740, 36.571762, 43.295971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.539913, 36.969627, 43.255669>,  <32.534618, 37.208347, 43.231487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.539913, 36.969627, 43.255669>,  <32.548740, 36.571762, 43.295971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539913, 36.969627, 43.255669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119396, -0.097432, -0.988054,
		-0.992601, -0.033835, -0.116609,
		-0.022069, 0.994667, -0.100751,
		32.533291, 37.268028, 43.225445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247681, 36.681942, 42.651001>,  <32.548740, 36.571762, 43.295971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247681, 36.681942, 42.651001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.440941, 37.024067, 42.725838>,  <32.556896, 37.229343, 42.770741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.440941, 37.024067, 42.725838>,  <32.247681, 36.681942, 42.651001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440941, 37.024067, 42.725838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287893, 0.046610, -0.956527,
		-0.826849, 0.516014, -0.223719,
		0.483154, 0.855311, 0.187096,
		32.585888, 37.280659, 42.781967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024979, 37.200775, 42.071304>,  <32.247681, 36.681942, 42.651001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024979, 37.200775, 42.071304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.363514, 37.351070, 42.222313>,  <32.566635, 37.441250, 42.312920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.363514, 37.351070, 42.222313>,  <32.024979, 37.200775, 42.071304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363514, 37.351070, 42.222313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296631, 0.256203, -0.919984,
		-0.442399, 0.890606, 0.105378,
		0.846341, 0.375742, 0.377525,
		32.617416, 37.463795, 42.335571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095284, 37.945202, 41.975124>,  <32.024979, 37.200775, 42.071304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095284, 37.945202, 41.975124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.473007, 37.821571, 42.020306>,  <32.699642, 37.747395, 42.047413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.473007, 37.821571, 42.020306>,  <32.095284, 37.945202, 41.975124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473007, 37.821571, 42.020306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228596, 0.369235, -0.900783,
		0.236705, 0.876435, 0.419324,
		0.944306, -0.309076, 0.112950,
		32.756298, 37.728848, 42.054192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560219, 38.457176, 41.969528>,  <32.095284, 37.945202, 41.975124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560219, 38.457176, 41.969528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.767788, 38.144524, 41.831093>,  <32.892330, 37.956932, 41.748032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.767788, 38.144524, 41.831093>,  <32.560219, 38.457176, 41.969528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767788, 38.144524, 41.831093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211926, 0.509860, -0.833744,
		0.828137, 0.359301, 0.430224,
		0.518919, -0.781630, -0.346089,
		32.923462, 37.910034, 41.727264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164482, 38.684555, 41.609375>,  <32.560219, 38.457176, 41.969528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164482, 38.684555, 41.609375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.149296, 38.305016, 41.484001>,  <33.140182, 38.077290, 41.408775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.149296, 38.305016, 41.484001>,  <33.164482, 38.684555, 41.609375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149296, 38.305016, 41.484001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226366, 0.297340, -0.927549,
		0.973302, -0.106170, 0.203497,
		-0.037970, -0.948850, -0.313435,
		33.137905, 38.020359, 41.389969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697830, 38.636238, 41.189125>,  <33.164482, 38.684555, 41.609375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697830, 38.636238, 41.189125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.505306, 38.308880, 41.063545>,  <33.389793, 38.112465, 40.988197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.505306, 38.308880, 41.063545>,  <33.697830, 38.636238, 41.189125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505306, 38.308880, 41.063545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156305, 0.272289, -0.949435,
		0.862502, -0.506044, -0.003135,
		-0.481310, -0.818400, -0.313947,
		33.360912, 38.063358, 40.969360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506710, 38.669815, 41.128548>,  <33.697830, 38.636238, 41.189125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506710, 38.669815, 41.128548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.754642, 38.981022, 41.169540>,  <34.903400, 39.167747, 41.194134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.754642, 38.981022, 41.169540>,  <34.506710, 38.669815, 41.128548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754642, 38.981022, 41.169540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125091, -0.030962, 0.991662,
		0.774702, -0.627481, 0.078131,
		0.619830, 0.778016, 0.102479,
		34.940590, 39.214428, 41.200283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994091, 38.393341, 41.590801>,  <34.506710, 38.669815, 41.128548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994091, 38.393341, 41.590801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.038597, 38.790627, 41.604313>,  <35.065300, 39.028999, 41.612419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.038597, 38.790627, 41.604313>,  <34.994091, 38.393341, 41.590801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038597, 38.790627, 41.604313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016490, -0.035835, 0.999222,
		0.993654, -0.110621, -0.020365,
		0.111265, 0.993216, 0.033784,
		35.071976, 39.088593, 41.614449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571804, 38.603336, 42.029251>,  <34.994091, 38.393341, 41.590801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571804, 38.603336, 42.029251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.355991, 38.939320, 42.005974>,  <35.226505, 39.140907, 41.992008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.355991, 38.939320, 42.005974>,  <35.571804, 38.603336, 42.029251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355991, 38.939320, 42.005974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023824, 0.084322, 0.996154,
		0.841630, 0.536067, -0.065505,
		-0.539529, 0.839953, -0.058196,
		35.194134, 39.191307, 41.988514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731941, 39.016460, 42.583523>,  <35.571804, 38.603336, 42.029251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731941, 39.016460, 42.583523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.392048, 39.192036, 42.466705>,  <35.188114, 39.297382, 42.396614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.392048, 39.192036, 42.466705>,  <35.731941, 39.016460, 42.583523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392048, 39.192036, 42.466705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197049, 0.249373, 0.948148,
		0.489008, 0.863218, -0.125407,
		-0.849731, 0.438940, -0.292041,
		35.137127, 39.323719, 42.379093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728180, 39.569004, 43.125328>,  <35.731941, 39.016460, 42.583523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728180, 39.569004, 43.125328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.365509, 39.500397, 42.971176>,  <35.147907, 39.459232, 42.878685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.365509, 39.500397, 42.971176>,  <35.728180, 39.569004, 43.125328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365509, 39.500397, 42.971176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413517, 0.180960, 0.892333,
		-0.083310, 0.968419, -0.234996,
		-0.906677, -0.171515, -0.385382,
		35.093506, 39.448944, 42.855560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306389, 40.189350, 43.204029>,  <35.728180, 39.569004, 43.125328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306389, 40.189350, 43.204029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.080231, 39.859707, 43.190334>,  <34.944538, 39.661919, 43.182117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.080231, 39.859707, 43.190334>,  <35.306389, 40.189350, 43.204029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080231, 39.859707, 43.190334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305110, 0.170402, 0.936948,
		-0.766315, 0.540189, -0.347789,
		-0.565393, -0.824111, -0.034236,
		34.910614, 39.612473, 43.180065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597034, 40.373909, 43.311024>,  <35.306389, 40.189350, 43.204029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597034, 40.373909, 43.311024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.602402, 39.982620, 43.393867>,  <34.605621, 39.747845, 43.443573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.602402, 39.982620, 43.393867>,  <34.597034, 40.373909, 43.311024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602402, 39.982620, 43.393867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412382, 0.183275, 0.892385,
		-0.910912, -0.097380, -0.400944,
		0.013417, -0.978227, 0.207105,
		34.606426, 39.689152, 43.455997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833107, 40.226627, 43.479465>,  <34.597034, 40.373909, 43.311024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833107, 40.226627, 43.479465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.035324, 39.926952, 43.650650>,  <34.156654, 39.747147, 43.753361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.035324, 39.926952, 43.650650>,  <33.833107, 40.226627, 43.479465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035324, 39.926952, 43.650650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454885, 0.190043, 0.870037,
		-0.733151, -0.634509, -0.244720,
		0.505539, -0.749188, 0.427959,
		34.186985, 39.702198, 43.779037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350136, 39.783745, 43.902271>,  <33.833107, 40.226627, 43.479465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350136, 39.783745, 43.902271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.715179, 39.706139, 44.046215>,  <33.934208, 39.659576, 44.132584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.715179, 39.706139, 44.046215>,  <33.350136, 39.783745, 43.902271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715179, 39.706139, 44.046215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355602, 0.057598, 0.932861,
		-0.201713, -0.979307, -0.016426,
		0.912611, -0.194012, 0.359862,
		33.988964, 39.647934, 44.154175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166126, 39.320679, 44.479893>,  <33.350136, 39.783745, 43.902271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166126, 39.320679, 44.479893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.536526, 39.465427, 44.522923>,  <33.758766, 39.552277, 44.548740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.536526, 39.465427, 44.522923>,  <33.166126, 39.320679, 44.479893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536526, 39.465427, 44.522923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123987, 0.022382, 0.992031,
		0.356580, -0.931959, 0.065593,
		0.926001, 0.361871, 0.107570,
		33.814327, 39.573990, 44.555195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452713, 38.885593, 45.025383>,  <33.166126, 39.320679, 44.479893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452713, 38.885593, 45.025383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.670185, 39.221214, 45.017391>,  <33.800667, 39.422588, 45.012596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.670185, 39.221214, 45.017391>,  <33.452713, 38.885593, 45.025383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670185, 39.221214, 45.017391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162797, 0.128785, 0.978218,
		0.823354, -0.528583, 0.206614,
		0.543678, 0.839056, -0.019984,
		33.833290, 39.472931, 45.011395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831871, 38.857952, 45.579021>,  <33.452713, 38.885593, 45.025383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831871, 38.857952, 45.579021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.837746, 39.249306, 45.496506>,  <33.841270, 39.484116, 45.446999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.837746, 39.249306, 45.496506>,  <33.831871, 38.857952, 45.579021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837746, 39.249306, 45.496506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059802, 0.205079, 0.976917,
		0.998102, -0.026687, -0.055497,
		0.014690, 0.978382, -0.206285,
		33.842152, 39.542820, 45.434620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458981, 39.195217, 45.969513>,  <33.831871, 38.857952, 45.579021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458981, 39.195217, 45.969513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.238213, 39.516541, 45.880001>,  <34.105751, 39.709335, 45.826294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.238213, 39.516541, 45.880001>,  <34.458981, 39.195217, 45.969513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238213, 39.516541, 45.880001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182780, 0.145296, 0.972358,
		0.813617, 0.577571, 0.066636,
		-0.551924, 0.803306, -0.223784,
		34.072636, 39.757534, 45.812866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730316, 39.686451, 46.304790>,  <34.458981, 39.195217, 45.969513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730316, 39.686451, 46.304790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.344852, 39.767498, 46.235161>,  <34.113575, 39.816124, 46.193382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.344852, 39.767498, 46.235161>,  <34.730316, 39.686451, 46.304790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344852, 39.767498, 46.235161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150587, 0.126204, 0.980508,
		0.220633, 0.971092, -0.091107,
		-0.963662, 0.202613, -0.174079,
		34.055756, 39.828281, 46.182938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183815, 40.271255, 46.452133>,  <34.730316, 39.686451, 46.304790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183815, 40.271255, 46.452133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.534191, 40.432446, 46.558220>,  <35.744415, 40.529160, 46.621872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.534191, 40.432446, 46.558220>,  <35.183815, 40.271255, 46.452133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534191, 40.432446, 46.558220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339138, -0.123392, -0.932609,
		-0.343093, 0.906855, -0.244748,
		0.875941, 0.402975, 0.265214,
		35.796974, 40.553337, 46.637783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440384, 40.659599, 45.824158>,  <35.183815, 40.271255, 46.452133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440384, 40.659599, 45.824158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.768776, 40.658550, 46.052540>,  <35.965809, 40.657921, 46.189568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.768776, 40.658550, 46.052540>,  <35.440384, 40.659599, 45.824158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768776, 40.658550, 46.052540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570940, -0.004469, -0.820980,
		0.004703, 0.999987, -0.002173,
		0.820978, -0.002621, 0.570953,
		36.015068, 40.657764, 46.223827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923321, 41.215771, 45.648193>,  <35.440384, 40.659599, 45.824158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923321, 41.215771, 45.648193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.148792, 40.928192, 45.810863>,  <36.284073, 40.755646, 45.908466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.148792, 40.928192, 45.810863>,  <35.923321, 41.215771, 45.648193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148792, 40.928192, 45.810863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626219, 0.050906, -0.777984,
		0.538626, 0.693199, 0.478912,
		0.563677, -0.718946, 0.406675,
		36.317894, 40.712509, 45.932865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580994, 41.426613, 45.619152>,  <35.923321, 41.215771, 45.648193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580994, 41.426613, 45.619152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.634632, 41.031075, 45.645073>,  <36.666817, 40.793751, 45.660625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.634632, 41.031075, 45.645073>,  <36.580994, 41.426613, 45.619152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634632, 41.031075, 45.645073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695410, 0.047315, -0.717054,
		0.705992, 0.141215, 0.693999,
		0.134095, -0.988848, 0.064798,
		36.674862, 40.734421, 45.664513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337505, 41.241943, 45.471344>,  <36.580994, 41.426613, 45.619152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337505, 41.241943, 45.471344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.189827, 40.870949, 45.447819>,  <37.101219, 40.648350, 45.433704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.189827, 40.870949, 45.447819>,  <37.337505, 41.241943, 45.471344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189827, 40.870949, 45.447819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523643, -0.155324, -0.837659,
		0.767785, -0.340054, 0.543019,
		-0.369193, -0.927490, -0.058811,
		37.079067, 40.592701, 45.430176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902309, 40.861618, 45.206429>,  <37.337505, 41.241943, 45.471344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902309, 40.861618, 45.206429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.555752, 40.685738, 45.111752>,  <37.347816, 40.580208, 45.054943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.555752, 40.685738, 45.111752>,  <37.902309, 40.861618, 45.206429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555752, 40.685738, 45.111752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359738, -0.220830, -0.906545,
		0.346339, -0.870573, 0.349503,
		-0.866394, -0.439701, -0.236696,
		37.295834, 40.553829, 45.040741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136787, 40.364265, 44.921787>,  <37.902309, 40.861618, 45.206429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136787, 40.364265, 44.921787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.754887, 40.356075, 44.803108>,  <37.525745, 40.351162, 44.731899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.754887, 40.356075, 44.803108>,  <38.136787, 40.364265, 44.921787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754887, 40.356075, 44.803108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295016, -0.191402, -0.936126,
		-0.037623, -0.981298, 0.188781,
		-0.954751, -0.020474, -0.296700,
		37.468460, 40.349934, 44.714100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048340, 39.744812, 44.526024>,  <38.136787, 40.364265, 44.921787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048340, 39.744812, 44.526024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.751469, 39.989891, 44.417374>,  <37.573345, 40.136940, 44.352184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.751469, 39.989891, 44.417374>,  <38.048340, 39.744812, 44.526024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751469, 39.989891, 44.417374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316133, -0.037331, -0.947980,
		-0.590964, -0.789436, -0.165988,
		-0.742173, 0.612696, -0.271628,
		37.528816, 40.173698, 44.335884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797031, 39.430809, 43.962376>,  <38.048340, 39.744812, 44.526024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797031, 39.430809, 43.962376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.741531, 39.824093, 43.914959>,  <37.708233, 40.060062, 43.886509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.741531, 39.824093, 43.914959>,  <37.797031, 39.430809, 43.962376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741531, 39.824093, 43.914959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326454, -0.067599, -0.942793,
		-0.934974, -0.169507, -0.311593,
		-0.138747, 0.983208, -0.118540,
		37.699905, 40.119057, 43.879398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332977, 39.467113, 43.474342>,  <37.797031, 39.430809, 43.962376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332977, 39.467113, 43.474342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.514290, 39.823421, 43.487373>,  <37.623077, 40.037209, 43.495190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.514290, 39.823421, 43.487373>,  <37.332977, 39.467113, 43.474342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514290, 39.823421, 43.487373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329574, -0.133528, -0.934640,
		-0.828202, 0.434389, -0.354101,
		0.453280, 0.890773, 0.032576,
		37.650272, 40.090652, 43.497147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192230, 39.748184, 42.793633>,  <37.332977, 39.467113, 43.474342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192230, 39.748184, 42.793633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.491138, 39.975262, 42.931797>,  <37.670483, 40.111507, 43.014698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.491138, 39.975262, 42.931797>,  <37.192230, 39.748184, 42.793633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491138, 39.975262, 42.931797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408190, 0.018034, -0.912719,
		-0.524377, 0.823039, -0.218252,
		0.747268, 0.567698, 0.345413,
		37.715321, 40.145573, 43.035419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320755, 40.213524, 42.260399>,  <37.192230, 39.748184, 42.793633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320755, 40.213524, 42.260399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.648605, 40.236237, 42.488434>,  <37.845314, 40.249863, 42.625256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.648605, 40.236237, 42.488434>,  <37.320755, 40.213524, 42.260399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648605, 40.236237, 42.488434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569956, 0.020043, -0.821431,
		-0.058065, 0.998186, -0.015933,
		0.819621, 0.056778, 0.570086,
		37.894493, 40.253269, 42.659458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738731, 40.857620, 42.004036>,  <37.320755, 40.213524, 42.260399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738731, 40.857620, 42.004036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.976654, 40.579128, 42.164768>,  <38.119408, 40.412033, 42.261208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.976654, 40.579128, 42.164768>,  <37.738731, 40.857620, 42.004036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976654, 40.579128, 42.164768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629451, 0.092475, -0.771518,
		0.499996, 0.711835, 0.493249,
		0.594807, -0.696232, 0.401828,
		38.155098, 40.370258, 42.285316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509167, 41.112587, 41.799416>,  <37.738731, 40.857620, 42.004036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509167, 41.112587, 41.799416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.504627, 40.730064, 41.916279>,  <38.501904, 40.500553, 41.986397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.504627, 40.730064, 41.916279>,  <38.509167, 41.112587, 41.799416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504627, 40.730064, 41.916279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581180, -0.244062, -0.776314,
		0.813696, 0.160988, 0.558553,
		-0.011344, -0.956303, 0.292156,
		38.501225, 40.443172, 42.003925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.208012, 42.457401, 32.618359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.460052, 42.157032, 32.697445>,  <29.611277, 41.976810, 32.744896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.460052, 42.157032, 32.697445>,  <29.208012, 42.457401, 32.618359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460052, 42.157032, 32.697445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622139, -0.335827, 0.707222,
		-0.464667, -0.568630, -0.678781,
		0.630101, -0.750919, 0.197719,
		29.649082, 41.931755, 32.756760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768879, 41.871258, 32.685486>,  <29.208012, 42.457401, 32.618359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768879, 41.871258, 32.685486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.125963, 41.765594, 32.831516>,  <29.340214, 41.702194, 32.919136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.125963, 41.765594, 32.831516>,  <28.768879, 41.871258, 32.685486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125963, 41.765594, 32.831516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450447, -0.500244, 0.739495,
		-0.012717, -0.824606, -0.565564,
		0.892713, -0.264161, 0.365080,
		29.393778, 41.686348, 32.941040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.703112, 41.119823, 32.754787>,  <28.768879, 41.871258, 32.685486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.703112, 41.119823, 32.754787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.011332, 41.235100, 32.982189>,  <29.196264, 41.304264, 33.118629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.011332, 41.235100, 32.982189>,  <28.703112, 41.119823, 32.754787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011332, 41.235100, 32.982189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335247, -0.575346, 0.746047,
		0.542088, -0.765457, -0.346720,
		0.770552, 0.288186, 0.568506,
		29.242496, 41.321556, 33.152740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065605, 40.530724, 33.029121>,  <28.703112, 41.119823, 32.754787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065605, 40.530724, 33.029121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.102598, 40.836586, 33.284229>,  <29.124794, 41.020103, 33.437294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.102598, 40.836586, 33.284229>,  <29.065605, 40.530724, 33.029121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102598, 40.836586, 33.284229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187695, -0.615640, 0.765348,
		0.977864, -0.190485, 0.086588,
		0.092481, 0.764659, 0.637765,
		29.130342, 41.065983, 33.475559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407427, 40.253273, 33.640327>,  <29.065605, 40.530724, 33.029121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407427, 40.253273, 33.640327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.260067, 40.606995, 33.755070>,  <29.171652, 40.819229, 33.823914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.260067, 40.606995, 33.755070>,  <29.407427, 40.253273, 33.640327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260067, 40.606995, 33.755070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155686, -0.362879, 0.918739,
		0.916540, 0.293802, 0.271358,
		-0.368398, 0.884307, 0.286852,
		29.149548, 40.872288, 33.841125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516729, 40.230972, 34.371506>,  <29.407427, 40.253273, 33.640327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516729, 40.230972, 34.371506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.225130, 40.483898, 34.266628>,  <29.050171, 40.635654, 34.203701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.225130, 40.483898, 34.266628>,  <29.516729, 40.230972, 34.371506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225130, 40.483898, 34.266628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606633, -0.419334, 0.675393,
		0.317112, 0.651415, 0.689274,
		-0.728997, 0.632311, -0.262194,
		29.006432, 40.673592, 34.187969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420979, 40.546440, 34.943172>,  <29.516729, 40.230972, 34.371506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420979, 40.546440, 34.943172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.099693, 40.620197, 34.716599>,  <28.906921, 40.664452, 34.580654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.099693, 40.620197, 34.716599>,  <29.420979, 40.546440, 34.943172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099693, 40.620197, 34.716599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527488, -0.661966, 0.532502,
		-0.276772, 0.726500, 0.628964,
		-0.803215, 0.184389, -0.566433,
		28.858728, 40.675514, 34.546669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875614, 40.724209, 35.461960>,  <29.420979, 40.546440, 34.943172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875614, 40.724209, 35.461960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.691652, 40.628765, 35.119835>,  <28.581274, 40.571499, 34.914562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.691652, 40.628765, 35.119835>,  <28.875614, 40.724209, 35.461960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691652, 40.628765, 35.119835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610129, -0.614920, 0.499616,
		-0.645158, 0.751625, 0.137225,
		-0.459907, -0.238607, -0.855309,
		28.553680, 40.557182, 34.863243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176611, 40.730270, 35.640015>,  <28.875614, 40.724209, 35.461960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176611, 40.730270, 35.640015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.214031, 40.487873, 35.324036>,  <28.236485, 40.342434, 35.134449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.214031, 40.487873, 35.324036>,  <28.176611, 40.730270, 35.640015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214031, 40.487873, 35.324036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613295, -0.660097, 0.433753,
		-0.784294, 0.443893, -0.433408,
		0.093552, -0.605996, -0.789947,
		28.242096, 40.306072, 35.087051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565758, 40.379265, 35.735725>,  <28.176611, 40.730270, 35.640015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565758, 40.379265, 35.735725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.739244, 40.169392, 35.442715>,  <27.843336, 40.043468, 35.266907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.739244, 40.169392, 35.442715>,  <27.565758, 40.379265, 35.735725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739244, 40.169392, 35.442715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635363, -0.754540, 0.164264,
		-0.638909, 0.394177, -0.660621,
		0.433716, -0.524684, -0.732528,
		27.869360, 40.011986, 35.222958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036922, 40.160450, 35.394817>,  <27.565758, 40.379265, 35.735725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036922, 40.160450, 35.394817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.336229, 39.915520, 35.292717>,  <27.515814, 39.768562, 35.231457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.336229, 39.915520, 35.292717>,  <27.036922, 40.160450, 35.394817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336229, 39.915520, 35.292717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572468, -0.790421, 0.217980,
		-0.335227, -0.016986, -0.941984,
		0.748266, -0.612329, -0.255247,
		27.560709, 39.731823, 35.216145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.727163, 39.688694, 34.991272>,  <27.036922, 40.160450, 35.394817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.727163, 39.688694, 34.991272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.061132, 39.507713, 35.116615>,  <27.261515, 39.399124, 35.191822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.061132, 39.507713, 35.116615>,  <26.727163, 39.688694, 34.991272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061132, 39.507713, 35.116615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517041, -0.839932, 0.164873,
		0.188603, -0.299676, -0.935213,
		0.834924, -0.452448, 0.313358,
		27.311609, 39.371979, 35.210621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835924, 39.105270, 34.573311>,  <26.727163, 39.688694, 34.991272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835924, 39.105270, 34.573311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.048046, 39.040073, 34.906109>,  <27.175320, 39.000954, 35.105785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.048046, 39.040073, 34.906109>,  <26.835924, 39.105270, 34.573311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048046, 39.040073, 34.906109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434366, -0.894997, 0.101524,
		0.728081, -0.415227, -0.545421,
		0.530305, -0.162994, 0.831991,
		27.207138, 38.991177, 35.155704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067137, 38.521927, 34.425262>,  <26.835924, 39.105270, 34.573311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067137, 38.521927, 34.425262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.091019, 38.570137, 34.821629>,  <27.105349, 38.599064, 35.059448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.091019, 38.570137, 34.821629>,  <27.067137, 38.521927, 34.425262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091019, 38.570137, 34.821629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627764, -0.767276, 0.131151,
		0.776111, -0.629890, 0.029853,
		0.059705, 0.120529, 0.990913,
		27.108931, 38.606297, 35.118904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328220, 37.876289, 34.607433>,  <27.067137, 38.521927, 34.425262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328220, 37.876289, 34.607433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.138819, 38.053749, 34.911793>,  <27.025177, 38.160225, 35.094410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.138819, 38.053749, 34.911793>,  <27.328220, 37.876289, 34.607433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138819, 38.053749, 34.911793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502806, -0.845441, 0.180043,
		0.723172, -0.297334, 0.623389,
		-0.473506, 0.443646, 0.760901,
		26.996767, 38.186844, 35.140064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322254, 37.381775, 35.122372>,  <27.328220, 37.876289, 34.607433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322254, 37.381775, 35.122372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.019487, 37.624641, 35.219055>,  <26.837828, 37.770363, 35.277065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.019487, 37.624641, 35.219055>,  <27.322254, 37.381775, 35.122372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.019487, 37.624641, 35.219055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552995, -0.792169, 0.258196,
		0.348240, 0.061771, 0.935368,
		-0.756919, 0.607168, 0.241705,
		26.792412, 37.806793, 35.291565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.007830, 37.091469, 35.631168>,  <27.322254, 37.381775, 35.122372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.007830, 37.091469, 35.631168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.705128, 37.347351, 35.577347>,  <26.523506, 37.500881, 35.545055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.705128, 37.347351, 35.577347>,  <27.007830, 37.091469, 35.631168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705128, 37.347351, 35.577347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648310, -0.708058, 0.279909,
		0.083786, 0.299054, 0.950551,
		-0.756752, 0.639704, -0.134554,
		26.478102, 37.539261, 35.536980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552664, 36.987141, 36.167847>,  <27.007830, 37.091469, 35.631168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.552664, 36.987141, 36.167847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.336187, 37.159824, 35.879196>,  <26.206303, 37.263435, 35.706005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.336187, 37.159824, 35.879196>,  <26.552664, 36.987141, 36.167847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336187, 37.159824, 35.879196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753485, -0.629946, 0.188224,
		-0.373327, 0.645598, 0.666205,
		-0.541190, 0.431707, -0.721625,
		26.173830, 37.289337, 35.662708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.922865, 36.451809, 36.039803>,  <26.552664, 36.987141, 36.167847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.922865, 36.451809, 36.039803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.125645, 36.237267, 36.309715>,  <27.247313, 36.108543, 36.471661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.125645, 36.237267, 36.309715>,  <26.922865, 36.451809, 36.039803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125645, 36.237267, 36.309715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861966, 0.319120, -0.393926,
		-0.004053, 0.781337, 0.624096,
		0.506950, -0.536353, 0.674779,
		27.277729, 36.076363, 36.512150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309193, 36.902477, 36.454723>,  <26.922865, 36.451809, 36.039803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309193, 36.902477, 36.454723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.502968, 36.554356, 36.419178>,  <27.619232, 36.345482, 36.397850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.502968, 36.554356, 36.419178>,  <27.309193, 36.902477, 36.454723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502968, 36.554356, 36.419178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724127, 0.455908, -0.517483,
		0.490879, 0.186340, 0.851067,
		0.484436, -0.870302, -0.088862,
		27.648298, 36.293266, 36.392521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919874, 36.927769, 36.898674>,  <27.309193, 36.902477, 36.454723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919874, 36.927769, 36.898674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.998739, 36.649384, 36.622478>,  <28.046059, 36.482353, 36.456760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.998739, 36.649384, 36.622478>,  <27.919874, 36.927769, 36.898674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998739, 36.649384, 36.622478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871292, 0.447258, -0.202015,
		0.449419, -0.561784, 0.694565,
		0.197161, -0.695959, -0.690485,
		28.057888, 36.440598, 36.415333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618155, 36.872051, 37.020290>,  <27.919874, 36.927769, 36.898674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618155, 36.872051, 37.020290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.533443, 36.728989, 36.656483>,  <28.482616, 36.643150, 36.438198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.533443, 36.728989, 36.656483>,  <28.618155, 36.872051, 37.020290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533443, 36.728989, 36.656483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748506, 0.539027, -0.386249,
		0.628402, -0.762583, 0.153552,
		-0.211778, -0.357655, -0.909523,
		28.469910, 36.621693, 36.383625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250067, 36.651173, 36.884209>,  <28.618155, 36.872051, 37.020290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250067, 36.651173, 36.884209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.023521, 36.707230, 36.559345>,  <28.887594, 36.740864, 36.364429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.023521, 36.707230, 36.559345>,  <29.250067, 36.651173, 36.884209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023521, 36.707230, 36.559345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672534, 0.648184, -0.357149,
		0.476375, -0.748477, -0.461356,
		-0.566361, 0.140140, -0.812155,
		28.853613, 36.749271, 36.315701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721800, 36.680538, 36.217617>,  <29.250067, 36.651173, 36.884209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721800, 36.680538, 36.217617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.398642, 36.867367, 36.073868>,  <29.204746, 36.979465, 35.987617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.398642, 36.867367, 36.073868>,  <29.721800, 36.680538, 36.217617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398642, 36.867367, 36.073868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583427, 0.547827, -0.599582,
		-0.083174, -0.694067, -0.715089,
		-0.807896, 0.467072, -0.359373,
		29.156273, 37.007488, 35.966057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.873665, 36.652706, 35.521225>,  <29.721800, 36.680538, 36.217617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.873665, 36.652706, 35.521225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.607061, 36.945335, 35.578587>,  <29.447100, 37.120914, 35.613003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.607061, 36.945335, 35.578587>,  <29.873665, 36.652706, 35.521225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607061, 36.945335, 35.578587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491944, 0.576140, -0.652728,
		-0.560141, -0.364501, -0.743896,
		-0.666508, 0.731575, 0.143405,
		29.407108, 37.164806, 35.621609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859537, 36.852394, 34.948719>,  <29.873665, 36.652706, 35.521225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859537, 36.852394, 34.948719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.718166, 37.161873, 35.159046>,  <29.633345, 37.347561, 35.285244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.718166, 37.161873, 35.159046>,  <29.859537, 36.852394, 34.948719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718166, 37.161873, 35.159046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478047, 0.632535, -0.609402,
		-0.804090, 0.035987, -0.593418,
		-0.353427, 0.773695, 0.525818,
		29.612139, 37.393982, 35.316792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554667, 37.363350, 34.443504>,  <29.859537, 36.852394, 34.948719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554667, 37.363350, 34.443504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.627277, 37.562408, 34.782772>,  <29.670843, 37.681843, 34.986332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.627277, 37.562408, 34.782772>,  <29.554667, 37.363350, 34.443504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627277, 37.562408, 34.782772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474541, 0.711103, -0.518789,
		-0.861312, 0.496666, -0.107071,
		0.181527, 0.497649, 0.848171,
		29.681736, 37.711704, 35.037224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413179, 38.122936, 34.306915>,  <29.554667, 37.363350, 34.443504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413179, 38.122936, 34.306915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.651670, 38.131172, 34.627937>,  <29.794765, 38.136112, 34.820549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.651670, 38.131172, 34.627937>,  <29.413179, 38.122936, 34.306915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651670, 38.131172, 34.627937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560205, 0.705390, -0.434276,
		-0.575053, 0.708521, 0.409039,
		0.596226, 0.020585, 0.802553,
		29.830538, 38.137348, 34.868702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530355, 38.839680, 34.385063>,  <29.413179, 38.122936, 34.306915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530355, 38.839680, 34.385063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.812439, 38.643669, 34.590027>,  <29.981689, 38.526062, 34.713005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.812439, 38.643669, 34.590027>,  <29.530355, 38.839680, 34.385063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812439, 38.643669, 34.590027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685181, 0.656786, -0.314894,
		-0.182236, 0.573157, 0.798925,
		0.705207, -0.490024, 0.512406,
		30.024000, 38.496662, 34.743748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938612, 39.394184, 34.731403>,  <29.530355, 38.839680, 34.385063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938612, 39.394184, 34.731403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.179390, 39.075287, 34.713242>,  <30.323856, 38.883949, 34.702343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.179390, 39.075287, 34.713242>,  <29.938612, 39.394184, 34.731403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179390, 39.075287, 34.713242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752670, 0.585446, -0.301230,
		0.266738, 0.147147, 0.952470,
		0.601945, -0.797245, -0.045408,
		30.359974, 38.836113, 34.699619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544935, 39.628601, 35.062424>,  <29.938612, 39.394184, 34.731403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544935, 39.628601, 35.062424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.639566, 39.292347, 34.867546>,  <30.696344, 39.090595, 34.750618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.639566, 39.292347, 34.867546>,  <30.544935, 39.628601, 35.062424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639566, 39.292347, 34.867546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799351, 0.453443, -0.394243,
		0.552330, -0.296169, 0.779240,
		0.236578, -0.840639, -0.487193,
		30.710541, 39.040154, 34.721390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256655, 39.510098, 35.299770>,  <30.544935, 39.628601, 35.062424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256655, 39.510098, 35.299770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.169731, 39.318085, 34.959808>,  <31.117577, 39.202877, 34.755829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.169731, 39.318085, 34.959808>,  <31.256655, 39.510098, 35.299770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169731, 39.318085, 34.959808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826735, 0.372385, -0.421710,
		0.518928, -0.794290, 0.315939,
		-0.217309, -0.480035, -0.849908,
		31.104538, 39.174076, 34.704838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880732, 39.319569, 35.112316>,  <31.256655, 39.510098, 35.299770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880732, 39.319569, 35.112316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.685410, 39.290173, 34.764488>,  <31.568216, 39.272533, 34.555790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.685410, 39.290173, 34.764488>,  <31.880732, 39.319569, 35.112316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685410, 39.290173, 34.764488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807761, 0.339053, -0.482250,
		0.330272, -0.937892, -0.106199,
		-0.488305, -0.073490, -0.869573,
		31.538918, 39.268124, 34.503616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310341, 38.890297, 34.536850>,  <31.880732, 39.319569, 35.112316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310341, 38.890297, 34.536850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.055119, 39.126560, 34.339256>,  <31.901987, 39.268318, 34.220699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.055119, 39.126560, 34.339256>,  <32.310341, 38.890297, 34.536850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055119, 39.126560, 34.339256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742901, 0.303538, -0.596626,
		-0.202457, -0.747658, -0.632470,
		-0.638052, 0.590654, -0.493982,
		31.863703, 39.303757, 34.191063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549519, 38.841946, 33.970581>,  <32.310341, 38.890297, 34.536850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549519, 38.841946, 33.970581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.320312, 39.167149, 33.929283>,  <32.182789, 39.362270, 33.904503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.320312, 39.167149, 33.929283>,  <32.549519, 38.841946, 33.970581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320312, 39.167149, 33.929283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701710, 0.421639, -0.574302,
		-0.423381, -0.401537, -0.812106,
		-0.573019, 0.813012, -0.103249,
		32.148407, 39.411053, 33.898308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580345, 38.940681, 33.299824>,  <32.549519, 38.841946, 33.970581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580345, 38.940681, 33.299824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.461258, 39.283939, 33.467136>,  <32.389805, 39.489895, 33.567524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.461258, 39.283939, 33.467136>,  <32.580345, 38.940681, 33.299824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461258, 39.283939, 33.467136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689930, 0.496236, -0.527016,
		-0.659820, 0.131683, -0.739795,
		-0.297714, 0.858143, 0.418279,
		32.371944, 39.541382, 33.592621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452381, 39.281979, 32.709541>,  <32.580345, 38.940681, 33.299824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452381, 39.281979, 32.709541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.535648, 39.531097, 33.011215>,  <32.585609, 39.680569, 33.192219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.535648, 39.531097, 33.011215>,  <32.452381, 39.281979, 32.709541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535648, 39.531097, 33.011215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631921, 0.502905, -0.589714,
		-0.746553, 0.599346, -0.288866,
		0.208170, 0.622793, 0.754184,
		32.598099, 39.717934, 33.237469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305641, 39.997208, 32.505894>,  <32.452381, 39.281979, 32.709541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305641, 39.997208, 32.505894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.582325, 39.987377, 32.794598>,  <32.748337, 39.981480, 32.967819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.582325, 39.987377, 32.794598>,  <32.305641, 39.997208, 32.505894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582325, 39.987377, 32.794598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609702, 0.555498, -0.565407,
		-0.387038, 0.831154, 0.399229,
		0.691711, -0.024576, 0.721756,
		32.789837, 39.980003, 33.011124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400414, 40.693287, 32.554569>,  <32.305641, 39.997208, 32.505894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400414, 40.693287, 32.554569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.719227, 40.514767, 32.717319>,  <32.910515, 40.407654, 32.814972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.719227, 40.514767, 32.717319>,  <32.400414, 40.693287, 32.554569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719227, 40.514767, 32.717319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603187, 0.554782, -0.573046,
		0.030022, 0.702162, 0.711384,
		0.797035, -0.446302, 0.406879,
		32.958336, 40.380875, 32.839382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740204, 41.212582, 32.680805>,  <32.400414, 40.693287, 32.554569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740204, 41.212582, 32.680805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.997200, 40.906208, 32.671394>,  <33.151398, 40.722385, 32.665749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.997200, 40.906208, 32.671394>,  <32.740204, 41.212582, 32.680805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997200, 40.906208, 32.671394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672962, 0.578650, -0.460745,
		0.366513, 0.280193, 0.887221,
		0.642488, -0.765935, -0.023523,
		33.189945, 40.676426, 32.664337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309814, 41.457623, 32.912277>,  <32.740204, 41.212582, 32.680805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309814, 41.457623, 32.912277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.448338, 41.115124, 32.758961>,  <33.531452, 40.909626, 32.666969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.448338, 41.115124, 32.758961>,  <33.309814, 41.457623, 32.912277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448338, 41.115124, 32.758961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782242, 0.489101, -0.385847,
		0.517847, -0.166203, 0.839173,
		0.346312, -0.856246, -0.383291,
		33.552231, 40.858250, 32.643974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099564, 41.489269, 32.981121>,  <33.309814, 41.457623, 32.912277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099564, 41.489269, 32.981121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.033268, 41.231422, 32.682590>,  <33.993492, 41.076714, 32.503471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.033268, 41.231422, 32.682590>,  <34.099564, 41.489269, 32.981121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033268, 41.231422, 32.682590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733405, 0.425366, -0.530266,
		0.659279, -0.635241, 0.402268,
		-0.165736, -0.644618, -0.746324,
		33.983547, 41.038036, 32.458694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.033028, 39.492908, 48.798340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.735096, 39.632717, 48.570988>,  <37.556335, 39.716602, 48.434574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.735096, 39.632717, 48.570988>,  <38.033028, 39.492908, 48.798340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735096, 39.632717, 48.570988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624026, -0.063272, 0.778838,
		0.236259, 0.934789, 0.265239,
		-0.744831, 0.349524, -0.568384,
		37.511646, 39.737576, 48.400471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684734, 40.189003, 49.045013>,  <38.033028, 39.492908, 48.798340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684734, 40.189003, 49.045013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.448643, 39.909981, 48.882511>,  <37.306988, 39.742569, 48.785007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.448643, 39.909981, 48.882511>,  <37.684734, 40.189003, 49.045013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448643, 39.909981, 48.882511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518365, -0.058278, 0.853171,
		-0.618807, 0.714161, -0.327188,
		-0.590234, -0.697551, -0.406259,
		37.271572, 39.700714, 48.760632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977791, 40.378658, 49.368946>,  <37.684734, 40.189003, 49.045013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977791, 40.378658, 49.368946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.933968, 40.004269, 49.235107>,  <36.907673, 39.779636, 49.154804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.933968, 40.004269, 49.235107>,  <36.977791, 40.378658, 49.368946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933968, 40.004269, 49.235107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438190, -0.256672, 0.861457,
		-0.892181, 0.240994, -0.382014,
		-0.109554, -0.935971, -0.334599,
		36.901100, 39.723476, 49.134727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256535, 40.102306, 49.339512>,  <36.977791, 40.378658, 49.368946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256535, 40.102306, 49.339512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.454166, 39.757610, 49.385609>,  <36.572746, 39.550793, 49.413265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.454166, 39.757610, 49.385609>,  <36.256535, 40.102306, 49.339512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454166, 39.757610, 49.385609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545176, -0.203835, 0.813163,
		-0.677249, -0.464595, -0.570514,
		0.494082, -0.861744, 0.115239,
		36.602390, 39.499088, 49.420181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781898, 39.456501, 49.314671>,  <36.256535, 40.102306, 49.339512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781898, 39.456501, 49.314671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.103928, 39.356895, 49.530022>,  <36.297146, 39.297134, 49.659233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.103928, 39.356895, 49.530022>,  <35.781898, 39.456501, 49.314671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103928, 39.356895, 49.530022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584256, -0.176113, 0.792231,
		-0.102456, -0.952355, -0.287267,
		0.805076, -0.249006, 0.538375,
		36.345451, 39.282192, 49.691532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501110, 38.903946, 49.847225>,  <35.781898, 39.456501, 49.314671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501110, 38.903946, 49.847225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.851223, 39.027622, 49.995972>,  <36.061291, 39.101826, 50.085220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.851223, 39.027622, 49.995972>,  <35.501110, 38.903946, 49.847225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851223, 39.027622, 49.995972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296899, -0.263437, 0.917852,
		0.381752, -0.913786, -0.138784,
		0.875281, 0.309187, 0.371869,
		36.113808, 39.120377, 50.107533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637161, 38.411289, 50.326981>,  <35.501110, 38.903946, 49.847225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637161, 38.411289, 50.326981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.878056, 38.711277, 50.436424>,  <36.022591, 38.891270, 50.502090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.878056, 38.711277, 50.436424>,  <35.637161, 38.411289, 50.326981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878056, 38.711277, 50.436424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300951, -0.104164, 0.947934,
		0.739421, -0.653220, 0.162973,
		0.602234, 0.749969, 0.273608,
		36.058727, 38.936268, 50.518505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910328, 38.221752, 50.968792>,  <35.637161, 38.411289, 50.326981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910328, 38.221752, 50.968792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.930717, 38.620823, 50.950729>,  <35.942951, 38.860268, 50.939892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.930717, 38.620823, 50.950729>,  <35.910328, 38.221752, 50.968792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930717, 38.620823, 50.950729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482024, 0.064179, 0.873804,
		0.874674, -0.022771, 0.484176,
		0.050971, 0.997679, -0.045160,
		35.946011, 38.920128, 50.937183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154587, 38.442196, 51.648567>,  <35.910328, 38.221752, 50.968792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154587, 38.442196, 51.648567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.978024, 38.757145, 51.476425>,  <35.872086, 38.946114, 51.373138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.978024, 38.757145, 51.476425>,  <36.154587, 38.442196, 51.648567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978024, 38.757145, 51.476425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421210, 0.241667, 0.874173,
		0.792302, 0.567135, 0.224976,
		-0.441405, 0.787372, -0.430357,
		35.845600, 38.993355, 51.347317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041805, 38.861732, 52.218113>,  <36.154587, 38.442196, 51.648567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041805, 38.861732, 52.218113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.792458, 39.040646, 51.961567>,  <35.642849, 39.147995, 51.807640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.792458, 39.040646, 51.961567>,  <36.041805, 38.861732, 52.218113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792458, 39.040646, 51.961567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632550, 0.193727, 0.749901,
		0.459670, 0.873158, 0.162167,
		-0.623366, 0.447285, -0.641366,
		35.605450, 39.174831, 51.769157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830090, 39.403053, 52.639874>,  <36.041805, 38.861732, 52.218113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830090, 39.403053, 52.639874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.574291, 39.411285, 52.332466>,  <35.420811, 39.416225, 52.148022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.574291, 39.411285, 52.332466>,  <35.830090, 39.403053, 52.639874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574291, 39.411285, 52.332466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756089, 0.164128, 0.633555,
		0.139175, 0.986224, -0.089398,
		-0.639500, 0.020583, -0.768516,
		35.382442, 39.417461, 52.101910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295933, 39.944221, 52.780075>,  <35.830090, 39.403053, 52.639874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295933, 39.944221, 52.780075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.146843, 39.679989, 52.519394>,  <35.057388, 39.521450, 52.362988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.146843, 39.679989, 52.519394>,  <35.295933, 39.944221, 52.780075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146843, 39.679989, 52.519394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865701, -0.005342, 0.500533,
		-0.334123, 0.750737, -0.569873,
		-0.372725, -0.660579, -0.651698,
		35.035027, 39.481815, 52.323883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596111, 40.204636, 52.554451>,  <35.295933, 39.944221, 52.780075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596111, 40.204636, 52.554451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.631756, 39.811001, 52.492950>,  <34.653141, 39.574821, 52.456051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.631756, 39.811001, 52.492950>,  <34.596111, 40.204636, 52.554451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631756, 39.811001, 52.492950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827413, -0.159072, 0.538594,
		-0.554479, 0.079224, -0.828418,
		0.089109, -0.984083, -0.153753,
		34.658489, 39.515778, 52.446823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491096, 40.790977, 52.109634>,  <34.596111, 40.204636, 52.554451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491096, 40.790977, 52.109634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.839340, 40.976891, 52.045116>,  <35.048286, 41.088436, 52.006405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.839340, 40.976891, 52.045116>,  <34.491096, 40.790977, 52.109634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839340, 40.976891, 52.045116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491963, 0.820436, -0.291302,
		-0.003059, 0.332962, 0.942935,
		0.870611, 0.464781, -0.161295,
		35.100525, 41.116325, 51.996727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002121, 41.322372, 52.062504>,  <34.491096, 40.790977, 52.109634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002121, 41.322372, 52.062504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.697540, 41.452896, 51.838463>,  <33.514790, 41.531212, 51.704041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.697540, 41.452896, 51.838463>,  <34.002121, 41.322372, 52.062504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697540, 41.452896, 51.838463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601442, 0.033373, -0.798219,
		-0.241775, -0.944673, -0.221669,
		-0.761454, 0.326311, -0.560098,
		33.469105, 41.550789, 51.670433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021782, 40.899338, 51.481007>,  <34.002121, 41.322372, 52.062504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021782, 40.899338, 51.481007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.806831, 41.215874, 51.364388>,  <33.677860, 41.405796, 51.294415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.806831, 41.215874, 51.364388>,  <34.021782, 40.899338, 51.481007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806831, 41.215874, 51.364388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509462, 0.029115, -0.860000,
		-0.672067, -0.610678, -0.418805,
		-0.537376, 0.791344, -0.291550,
		33.645618, 41.453278, 51.276924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726925, 40.760670, 50.809654>,  <34.021782, 40.899338, 51.481007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726925, 40.760670, 50.809654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.759911, 41.158237, 50.838856>,  <33.779701, 41.396778, 50.856377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.759911, 41.158237, 50.838856>,  <33.726925, 40.760670, 50.809654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759911, 41.158237, 50.838856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548580, 0.015886, -0.835947,
		-0.832022, 0.108983, -0.543932,
		0.082463, 0.993917, 0.073003,
		33.784649, 41.456413, 50.860756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502659, 41.003357, 50.234055>,  <33.726925, 40.760670, 50.809654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502659, 41.003357, 50.234055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.732346, 41.303185, 50.365765>,  <33.870159, 41.483082, 50.444790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.732346, 41.303185, 50.365765>,  <33.502659, 41.003357, 50.234055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732346, 41.303185, 50.365765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496379, 0.001081, -0.868105,
		-0.651059, 0.661927, -0.371449,
		0.574221, 0.749568, 0.329270,
		33.904613, 41.528053, 50.464546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340710, 41.544445, 49.843082>,  <33.502659, 41.003357, 50.234055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340710, 41.544445, 49.843082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.722889, 41.577663, 49.956375>,  <33.952198, 41.597595, 50.024353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.722889, 41.577663, 49.956375>,  <33.340710, 41.544445, 49.843082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722889, 41.577663, 49.956375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285368, -0.014808, -0.958304,
		-0.075389, 0.996436, -0.037847,
		0.955448, 0.083046, 0.283234,
		34.009525, 41.602577, 50.041344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683987, 41.811260, 49.254848>,  <33.340710, 41.544445, 49.843082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683987, 41.811260, 49.254848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.997089, 41.774227, 49.501011>,  <34.184952, 41.752007, 49.648708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.997089, 41.774227, 49.501011>,  <33.683987, 41.811260, 49.254848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997089, 41.774227, 49.501011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615422, -0.031785, -0.787556,
		0.092476, 0.995197, 0.032098,
		0.782754, -0.092584, 0.615406,
		34.231915, 41.746452, 49.685635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165215, 42.398266, 49.267620>,  <33.683987, 41.811260, 49.254848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165215, 42.398266, 49.267620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.383221, 42.076653, 49.362686>,  <34.514023, 41.883682, 49.419727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.383221, 42.076653, 49.362686>,  <34.165215, 42.398266, 49.267620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383221, 42.076653, 49.362686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517692, 0.099743, -0.849733,
		0.659511, 0.586154, 0.470604,
		0.545014, -0.804037, 0.237666,
		34.546726, 41.835442, 49.433987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845711, 42.541904, 48.960201>,  <34.165215, 42.398266, 49.267620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845711, 42.541904, 48.960201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.848427, 42.147861, 49.028923>,  <34.850056, 41.911434, 49.070156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.848427, 42.147861, 49.028923>,  <34.845711, 42.541904, 48.960201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848427, 42.147861, 49.028923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436347, -0.151668, -0.886903,
		0.899753, 0.080988, 0.428819,
		0.006790, -0.985108, 0.171802,
		34.850464, 41.852329, 49.080463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508835, 42.299778, 48.871502>,  <34.845711, 42.541904, 48.960201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508835, 42.299778, 48.871502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.277157, 41.980465, 48.805431>,  <35.138149, 41.788879, 48.765789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.277157, 41.980465, 48.805431>,  <35.508835, 42.299778, 48.871502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277157, 41.980465, 48.805431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614168, -0.294080, -0.732335,
		0.536033, -0.525610, 0.660608,
		-0.579194, -0.798280, -0.165176,
		35.103397, 41.740982, 48.755878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063606, 41.851452, 48.535458>,  <35.508835, 42.299778, 48.871502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063606, 41.851452, 48.535458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716904, 41.660633, 48.477272>,  <35.508884, 41.546143, 48.442360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716904, 41.660633, 48.477272>,  <36.063606, 41.851452, 48.535458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716904, 41.660633, 48.477272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411385, -0.518971, -0.749287,
		0.281957, -0.709290, 0.646072,
		-0.866754, -0.477051, -0.145464,
		35.456879, 41.517517, 48.433632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232803, 41.134312, 48.542572>,  <36.063606, 41.851452, 48.535458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232803, 41.134312, 48.542572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.884129, 41.168053, 48.349468>,  <35.674923, 41.188297, 48.233608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.884129, 41.168053, 48.349468>,  <36.232803, 41.134312, 48.542572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884129, 41.168053, 48.349468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340335, -0.604604, -0.720158,
		-0.352621, -0.792048, 0.498315,
		-0.871683, 0.084349, -0.482758,
		35.622623, 41.193356, 48.204639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256397, 40.435215, 48.180313>,  <36.232803, 41.134312, 48.542572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256397, 40.435215, 48.180313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.982403, 40.669125, 48.006496>,  <35.818005, 40.809471, 47.902206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.982403, 40.669125, 48.006496>,  <36.256397, 40.435215, 48.180313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982403, 40.669125, 48.006496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333499, -0.278613, -0.900641,
		-0.647743, -0.761847, -0.004175,
		-0.684987, 0.584776, -0.434545,
		35.776905, 40.844559, 47.876133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805157, 40.004185, 47.682201>,  <36.256397, 40.435215, 48.180313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805157, 40.004185, 47.682201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.792137, 40.385445, 47.561909>,  <35.784325, 40.614201, 47.489731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.792137, 40.385445, 47.561909>,  <35.805157, 40.004185, 47.682201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792137, 40.385445, 47.561909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313739, -0.275942, -0.908528,
		-0.948951, -0.123925, -0.290059,
		-0.032550, 0.953152, -0.300736,
		35.782372, 40.671391, 47.471687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290623, 40.100094, 47.136139>,  <35.805157, 40.004185, 47.682201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290623, 40.100094, 47.136139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.544460, 40.407616, 47.104561>,  <35.696762, 40.592129, 47.085613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.544460, 40.407616, 47.104561>,  <35.290623, 40.100094, 47.136139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544460, 40.407616, 47.104561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171086, -0.239360, -0.955739,
		-0.753672, 0.592999, -0.283428,
		0.634593, 0.768804, -0.078945,
		35.734837, 40.638256, 47.080875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594162, 40.183243, 46.884769>,  <35.290623, 40.100094, 47.136139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594162, 40.183243, 46.884769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.247280, 40.058914, 46.729156>,  <34.039150, 39.984318, 46.635788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.247280, 40.058914, 46.729156>,  <34.594162, 40.183243, 46.884769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247280, 40.058914, 46.729156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346343, -0.184834, 0.919719,
		-0.357779, 0.932322, 0.052636,
		-0.867203, -0.310826, -0.389033,
		33.987118, 39.965668, 46.612446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122139, 40.635166, 46.994656>,  <34.594162, 40.183243, 46.884769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122139, 40.635166, 46.994656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.888397, 40.315441, 46.938602>,  <33.748154, 40.123608, 46.904972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.888397, 40.315441, 46.938602>,  <34.122139, 40.635166, 46.994656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888397, 40.315441, 46.938602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387550, 0.123158, 0.913585,
		-0.712978, 0.588164, -0.381740,
		-0.584352, -0.799309, -0.140134,
		33.713093, 40.075649, 46.896561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478638, 40.801865, 47.307579>,  <34.122139, 40.635166, 46.994656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478638, 40.801865, 47.307579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442848, 40.405399, 47.268410>,  <33.421375, 40.167519, 47.244907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442848, 40.405399, 47.268410>,  <33.478638, 40.801865, 47.307579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442848, 40.405399, 47.268410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305524, -0.066266, 0.949876,
		-0.947971, 0.114905, -0.296895,
		-0.089471, -0.991164, -0.097924,
		33.416008, 40.108051, 47.239033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825771, 40.646412, 47.563835>,  <33.478638, 40.801865, 47.307579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825771, 40.646412, 47.563835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.029526, 40.302368, 47.574768>,  <33.151779, 40.095943, 47.581326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.029526, 40.302368, 47.574768>,  <32.825771, 40.646412, 47.563835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029526, 40.302368, 47.574768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444368, -0.235708, 0.864279,
		-0.736929, -0.452395, -0.502269,
		0.509384, -0.860105, 0.027330,
		33.182343, 40.044338, 47.582966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266575, 40.160542, 47.526348>,  <32.825771, 40.646412, 47.563835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266575, 40.160542, 47.526348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.604794, 40.023235, 47.689915>,  <32.807724, 39.940849, 47.788055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.604794, 40.023235, 47.689915>,  <32.266575, 40.160542, 47.526348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604794, 40.023235, 47.689915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468312, -0.109073, 0.876805,
		-0.256380, -0.932882, -0.252984,
		0.845549, -0.343271, 0.408915,
		32.858459, 39.920254, 47.812588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146519, 39.561367, 47.820618>,  <32.266575, 40.160542, 47.526348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146519, 39.561367, 47.820618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.477013, 39.664257, 48.021088>,  <32.675308, 39.725990, 48.141369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.477013, 39.664257, 48.021088>,  <32.146519, 39.561367, 47.820618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477013, 39.664257, 48.021088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461478, -0.201176, 0.864040,
		0.323081, -0.945178, -0.047512,
		0.826230, 0.257229, 0.501175,
		32.724880, 39.741425, 48.171440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231239, 39.011520, 48.347740>,  <32.146519, 39.561367, 47.820618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231239, 39.011520, 48.347740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.424019, 39.341854, 48.464851>,  <32.539688, 39.540054, 48.535118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.424019, 39.341854, 48.464851>,  <32.231239, 39.011520, 48.347740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424019, 39.341854, 48.464851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398970, -0.090652, 0.912472,
		0.780095, -0.556573, 0.285795,
		0.481950, 0.825838, 0.292773,
		32.568604, 39.589607, 48.552685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967157, 38.255268, 48.357491>,  <32.231239, 39.011520, 48.347740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967157, 38.255268, 48.357491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.698305, 37.996124, 48.500889>,  <31.536993, 37.840637, 48.586929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.698305, 37.996124, 48.500889>,  <31.967157, 38.255268, 48.357491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698305, 37.996124, 48.500889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032817, -0.509764, -0.859688,
		0.739704, -0.566059, 0.363889,
		-0.672131, -0.647857, 0.358498,
		31.496666, 37.801765, 48.608437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253185, 37.644695, 48.241783>,  <31.967157, 38.255268, 48.357491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253185, 37.644695, 48.241783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.868727, 37.540726, 48.278961>,  <31.638052, 37.478344, 48.301266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.868727, 37.540726, 48.278961>,  <32.253185, 37.644695, 48.241783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868727, 37.540726, 48.278961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062251, -0.532127, -0.844373,
		0.268927, -0.805780, 0.527633,
		-0.961146, -0.259921, 0.092943,
		31.580383, 37.462749, 48.306843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193604, 36.978756, 47.933182>,  <32.253185, 37.644695, 48.241783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193604, 36.978756, 47.933182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.816088, 37.109760, 47.915268>,  <31.589579, 37.188362, 47.904518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.816088, 37.109760, 47.915268>,  <32.193604, 36.978756, 47.933182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816088, 37.109760, 47.915268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071863, -0.335533, -0.939283,
		-0.322644, -0.883267, 0.340208,
		-0.943788, 0.327502, -0.044783,
		31.532951, 37.208015, 47.901833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700552, 36.422497, 47.719933>,  <32.193604, 36.978756, 47.933182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700552, 36.422497, 47.719933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.516771, 36.766193, 47.629955>,  <31.406504, 36.972412, 47.575970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.516771, 36.766193, 47.629955>,  <31.700552, 36.422497, 47.719933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516771, 36.766193, 47.629955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101804, -0.302537, -0.947685,
		-0.882350, -0.412514, 0.226476,
		-0.459451, 0.859246, -0.224948,
		31.378937, 37.023968, 47.562469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123550, 36.243267, 47.197361>,  <31.700552, 36.422497, 47.719933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123550, 36.243267, 47.197361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.208624, 36.631073, 47.148693>,  <31.259668, 36.863758, 47.119492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.208624, 36.631073, 47.148693>,  <31.123550, 36.243267, 47.197361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208624, 36.631073, 47.148693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014237, -0.121435, -0.992497,
		-0.977017, 0.212822, -0.012025,
		0.212686, 0.969515, -0.121674,
		31.272430, 36.921928, 47.112190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809193, 36.368938, 46.550835>,  <31.123550, 36.243267, 47.197361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809193, 36.368938, 46.550835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.036585, 36.691845, 46.614277>,  <31.173021, 36.885590, 46.652344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.036585, 36.691845, 46.614277>,  <30.809193, 36.368938, 46.550835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036585, 36.691845, 46.614277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163885, 0.077802, -0.983406,
		-0.806207, 0.585042, -0.088069,
		0.568482, 0.807263, 0.158604,
		31.207129, 36.934025, 46.661858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513332, 36.981262, 46.177753>,  <30.809193, 36.368938, 46.550835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513332, 36.981262, 46.177753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.903807, 37.056362, 46.221214>,  <31.138092, 37.101421, 46.247292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.903807, 37.056362, 46.221214>,  <30.513332, 36.981262, 46.177753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903807, 37.056362, 46.221214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094007, 0.085248, -0.991915,
		-0.195498, 0.978510, 0.065568,
		0.976188, 0.187753, 0.108652,
		31.196663, 37.112690, 46.253811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.125244, 36.131599, 52.002987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.266483, 36.505215, 51.981480>,  <34.351227, 36.729385, 51.968575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.266483, 36.505215, 51.981480>,  <34.125244, 36.131599, 52.002987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266483, 36.505215, 51.981480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676986, -0.294739, -0.674403,
		-0.645767, 0.201730, -0.736404,
		0.353094, 0.934042, -0.053764,
		34.372410, 36.785427, 51.965351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270611, 36.190556, 51.272331>,  <34.125244, 36.131599, 52.002987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270611, 36.190556, 51.272331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.458836, 36.496010, 51.449162>,  <34.571770, 36.679283, 51.555260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.458836, 36.496010, 51.449162>,  <34.270611, 36.190556, 51.272331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458836, 36.496010, 51.449162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809272, -0.173840, -0.561122,
		-0.351641, 0.621805, -0.699791,
		0.470561, 0.763635, 0.442080,
		34.600002, 36.725101, 51.581787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393555, 36.692207, 50.734627>,  <34.270611, 36.190556, 51.272331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393555, 36.692207, 50.734627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.668705, 36.781792, 51.010792>,  <34.833794, 36.835545, 51.176491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.668705, 36.781792, 51.010792>,  <34.393555, 36.692207, 50.734627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668705, 36.781792, 51.010792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696863, 0.062256, -0.714497,
		-0.203004, 0.972607, -0.113249,
		0.687874, 0.223965, 0.690412,
		34.875069, 36.848980, 51.217915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773262, 37.232777, 50.503452>,  <34.393555, 36.692207, 50.734627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773262, 37.232777, 50.503452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.019901, 37.094948, 50.786598>,  <35.167885, 37.012249, 50.956486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.019901, 37.094948, 50.786598>,  <34.773262, 37.232777, 50.503452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019901, 37.094948, 50.786598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775025, 0.107682, -0.622689,
		0.138338, 0.932563, 0.333449,
		0.616603, -0.344573, 0.707863,
		35.204884, 36.991577, 50.998959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495491, 37.395500, 50.282089>,  <34.773262, 37.232777, 50.503452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495491, 37.395500, 50.282089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.570274, 37.113728, 50.555973>,  <35.615147, 36.944664, 50.720303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.570274, 37.113728, 50.555973>,  <35.495491, 37.395500, 50.282089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570274, 37.113728, 50.555973> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880278, -0.189262, -0.435076,
		0.436069, 0.684077, 0.584707,
		0.186962, -0.704428, 0.684709,
		35.626362, 36.902401, 50.761387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191620, 37.519520, 50.641891>,  <35.495491, 37.395500, 50.282089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191620, 37.519520, 50.641891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.110188, 37.128048, 50.631001>,  <36.061329, 36.893166, 50.624466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.110188, 37.128048, 50.631001>,  <36.191620, 37.519520, 50.641891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110188, 37.128048, 50.631001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840386, -0.160410, -0.517706,
		0.502302, -0.128271, 0.855125,
		-0.203577, -0.978680, -0.027223,
		36.049114, 36.834442, 50.622833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850651, 37.301208, 50.630554>,  <36.191620, 37.519520, 50.641891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850651, 37.301208, 50.630554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.637257, 36.974934, 50.541077>,  <36.509220, 36.779167, 50.487392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.637257, 36.974934, 50.541077>,  <36.850651, 37.301208, 50.630554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637257, 36.974934, 50.541077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716703, -0.295525, -0.631666,
		0.449139, -0.497306, 0.742267,
		-0.533490, -0.815691, -0.223689,
		36.477211, 36.730225, 50.473969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341137, 36.689659, 50.506134>,  <36.850651, 37.301208, 50.630554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341137, 36.689659, 50.506134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.998585, 36.600891, 50.319645>,  <36.793053, 36.547630, 50.207752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.998585, 36.600891, 50.319645>,  <37.341137, 36.689659, 50.506134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998585, 36.600891, 50.319645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509718, -0.219129, -0.831967,
		0.082468, -0.950123, 0.300775,
		-0.856380, -0.221921, -0.466224,
		36.741673, 36.534313, 50.179779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510128, 36.021477, 50.091667>,  <37.341137, 36.689659, 50.506134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510128, 36.021477, 50.091667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.161533, 36.150349, 49.943768>,  <36.952377, 36.227673, 49.855026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.161533, 36.150349, 49.943768>,  <37.510128, 36.021477, 50.091667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161533, 36.150349, 49.943768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180213, -0.490813, -0.852423,
		-0.456106, -0.809510, 0.369677,
		-0.871487, 0.322174, -0.369747,
		36.900089, 36.247002, 49.832844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140121, 35.514290, 49.753998>,  <37.510128, 36.021477, 50.091667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140121, 35.514290, 49.753998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.009644, 35.840645, 49.563034>,  <36.931355, 36.036457, 49.448456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.009644, 35.840645, 49.563034>,  <37.140121, 35.514290, 49.753998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009644, 35.840645, 49.563034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254912, -0.410401, -0.875552,
		-0.910283, -0.407300, -0.074109,
		-0.326198, 0.815891, -0.477407,
		36.911785, 36.085411, 49.419811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109589, 35.170952, 49.039703>,  <37.140121, 35.514290, 49.753998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109589, 35.170952, 49.039703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.012245, 35.556305, 48.994678>,  <36.953838, 35.787518, 48.967663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.012245, 35.556305, 48.994678>,  <37.109589, 35.170952, 49.039703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012245, 35.556305, 48.994678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177216, -0.069935, -0.981684,
		-0.953608, -0.258853, -0.153707,
		-0.243362, 0.963381, -0.112564,
		36.939236, 35.845318, 48.960911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412834, 35.272083, 48.577843>,  <37.109589, 35.170952, 49.039703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412834, 35.272083, 48.577843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.699516, 35.548779, 48.542439>,  <36.871525, 35.714798, 48.521198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.699516, 35.548779, 48.542439>,  <36.412834, 35.272083, 48.577843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699516, 35.548779, 48.542439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034811, -0.162242, -0.986137,
		-0.696510, 0.703685, -0.140359,
		0.716702, 0.691740, -0.088507,
		36.914528, 35.756302, 48.515888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699810, 35.497658, 48.219772>,  <36.412834, 35.272083, 48.577843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699810, 35.497658, 48.219772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.362858, 35.402138, 48.026539>,  <35.160686, 35.344826, 47.910599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.362858, 35.402138, 48.026539>,  <35.699810, 35.497658, 48.219772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362858, 35.402138, 48.026539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536419, 0.285887, 0.794055,
		-0.051513, 0.928032, -0.368922,
		-0.842378, -0.238801, -0.483087,
		35.110146, 35.330498, 47.881611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245094, 36.060444, 48.276093>,  <35.699810, 35.497658, 48.219772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245094, 36.060444, 48.276093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.996231, 35.761654, 48.182327>,  <34.846912, 35.582378, 48.126068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.996231, 35.761654, 48.182327>,  <35.245094, 36.060444, 48.276093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996231, 35.761654, 48.182327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677729, 0.363987, 0.638903,
		-0.391923, 0.556365, -0.732704,
		-0.622158, -0.746975, -0.234410,
		34.809586, 35.537560, 48.112003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635796, 36.353828, 48.358818>,  <35.245094, 36.060444, 48.276093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635796, 36.353828, 48.358818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.519653, 35.973003, 48.320293>,  <34.449966, 35.744511, 48.297176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.519653, 35.973003, 48.320293>,  <34.635796, 36.353828, 48.358818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519653, 35.973003, 48.320293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775634, 0.175209, 0.606377,
		-0.560431, 0.250772, -0.789323,
		-0.290358, -0.952058, -0.096314,
		34.432545, 35.687386, 48.291401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945755, 36.433704, 48.264336>,  <34.635796, 36.353828, 48.358818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945755, 36.433704, 48.264336> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.003284, 36.073215, 48.427853>,  <34.037804, 35.856922, 48.525963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.003284, 36.073215, 48.427853>,  <33.945755, 36.433704, 48.264336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003284, 36.073215, 48.427853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774989, 0.154306, 0.612847,
		-0.615391, -0.404954, -0.676244,
		0.143827, -0.901222, 0.408794,
		34.046432, 35.802849, 48.550491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286488, 36.088905, 48.304161>,  <33.945755, 36.433704, 48.264336>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286488, 36.088905, 48.304161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.512310, 35.896427, 48.572407>,  <33.647804, 35.780941, 48.733353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.512310, 35.896427, 48.572407>,  <33.286488, 36.088905, 48.304161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512310, 35.896427, 48.572407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785227, -0.062747, 0.616021,
		-0.254349, -0.874364, -0.413274,
		0.564558, -0.481198, 0.670614,
		33.681679, 35.752068, 48.773590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969551, 35.461937, 48.421883>,  <33.286488, 36.088905, 48.304161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969551, 35.461937, 48.421883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.203686, 35.490860, 48.744907>,  <33.344166, 35.508213, 48.938721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.203686, 35.490860, 48.744907>,  <32.969551, 35.461937, 48.421883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203686, 35.490860, 48.744907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740901, -0.356846, 0.568970,
		0.329313, -0.931361, -0.155306,
		0.585337, 0.072303, 0.807560,
		33.379288, 35.512550, 48.987175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867134, 34.816528, 48.804199>,  <32.969551, 35.461937, 48.421883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867134, 34.816528, 48.804199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.020172, 35.084335, 49.058872>,  <33.111996, 35.245018, 49.211678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.020172, 35.084335, 49.058872>,  <32.867134, 34.816528, 48.804199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020172, 35.084335, 49.058872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608686, -0.335775, 0.718858,
		0.695071, -0.662571, 0.279061,
		0.382593, 0.669518, 0.636685,
		33.134949, 35.285191, 49.249878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988720, 34.480919, 49.448524>,  <32.867134, 34.816528, 48.804199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988720, 34.480919, 49.448524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.963726, 34.868298, 49.545021>,  <32.948730, 35.100727, 49.602921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.963726, 34.868298, 49.545021>,  <32.988720, 34.480919, 49.448524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963726, 34.868298, 49.545021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544072, -0.235697, 0.805253,
		0.836709, -0.080937, 0.541634,
		-0.062487, 0.968450, 0.241245,
		32.944981, 35.158833, 49.617393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227062, 34.526535, 50.188034>,  <32.988720, 34.480919, 49.448524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227062, 34.526535, 50.188034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.996246, 34.837734, 50.088638>,  <32.857758, 35.024452, 50.029003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.996246, 34.837734, 50.088638>,  <33.227062, 34.526535, 50.188034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996246, 34.837734, 50.088638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606304, -0.204222, 0.768562,
		0.547192, 0.594150, 0.589547,
		-0.577040, 0.777997, -0.248487,
		32.823135, 35.071133, 50.014091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898949, 34.611660, 50.805717>,  <33.227062, 34.526535, 50.188034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898949, 34.611660, 50.805717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.701954, 34.826618, 50.531883>,  <32.583755, 34.955593, 50.367584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.701954, 34.826618, 50.531883>,  <32.898949, 34.611660, 50.805717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701954, 34.826618, 50.531883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835906, -0.073076, 0.543986,
		0.242311, 0.840156, 0.485204,
		-0.492490, 0.537399, -0.684585,
		32.554207, 34.987839, 50.326508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558678, 35.046951, 51.204014>,  <32.898949, 34.611660, 50.805717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558678, 35.046951, 51.204014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.359104, 35.052101, 50.857395>,  <32.239361, 35.055191, 50.649426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.359104, 35.052101, 50.857395>,  <32.558678, 35.046951, 51.204014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359104, 35.052101, 50.857395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852821, 0.170560, 0.493564,
		0.154151, 0.985263, -0.074120,
		-0.498933, 0.012872, -0.866545,
		32.209423, 35.055962, 50.597431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118610, 35.605576, 51.313049>,  <32.558678, 35.046951, 51.204014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118610, 35.605576, 51.313049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.941656, 35.387051, 51.028564>,  <31.835482, 35.255936, 50.857872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.941656, 35.387051, 51.028564>,  <32.118610, 35.605576, 51.313049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941656, 35.387051, 51.028564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870403, 0.070478, 0.487270,
		-0.216079, 0.834608, -0.506694,
		-0.442390, -0.546317, -0.711217,
		31.808939, 35.223156, 50.815201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430244, 36.053650, 51.009624>,  <32.118610, 35.605576, 51.313049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430244, 36.053650, 51.009624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.402405, 35.660049, 50.944019>,  <31.385702, 35.423889, 50.904655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.402405, 35.660049, 50.944019>,  <31.430244, 36.053650, 51.009624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402405, 35.660049, 50.944019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920125, -0.000197, 0.391625,
		-0.385391, 0.178170, -0.905389,
		-0.069597, -0.984000, -0.164015,
		31.381525, 35.364849, 50.894814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742424, 35.938301, 50.946011>,  <31.430244, 36.053650, 51.009624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742424, 35.938301, 50.946011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.896431, 35.580944, 51.038631>,  <30.988834, 35.366531, 51.094204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.896431, 35.580944, 51.038631>,  <30.742424, 35.938301, 50.946011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896431, 35.580944, 51.038631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680451, -0.105293, 0.725190,
		-0.623497, -0.436769, -0.648448,
		0.385017, -0.893391, 0.231550,
		31.011936, 35.312927, 51.108097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941154, 36.661163, 51.066727>,  <30.742424, 35.938301, 50.946011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941154, 36.661163, 51.066727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.924595, 37.060696, 51.076740>,  <30.914660, 37.300415, 51.082748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.924595, 37.060696, 51.076740>,  <30.941154, 36.661163, 51.066727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924595, 37.060696, 51.076740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218599, 0.015390, -0.975693,
		-0.974936, -0.045866, 0.217706,
		-0.041401, 0.998829, 0.025030,
		30.912174, 37.360344, 51.084248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321543, 36.892845, 50.625488>,  <30.941154, 36.661163, 51.066727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321543, 36.892845, 50.625488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.580093, 37.193180, 50.679798>,  <30.735224, 37.373383, 50.712383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.580093, 37.193180, 50.679798>,  <30.321543, 36.892845, 50.625488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580093, 37.193180, 50.679798> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046729, 0.216563, -0.975150,
		-0.761586, 0.623971, 0.175067,
		0.646378, 0.750841, 0.135774,
		30.774006, 37.418434, 50.720531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109098, 37.384903, 50.200573>,  <30.321543, 36.892845, 50.625488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109098, 37.384903, 50.200573> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.493643, 37.476921, 50.261055>,  <30.724369, 37.532131, 50.297344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.493643, 37.476921, 50.261055>,  <30.109098, 37.384903, 50.200573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493643, 37.476921, 50.261055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064853, 0.344554, -0.936524,
		-0.267546, 0.910143, 0.316321,
		0.961360, 0.230049, 0.151209,
		30.782051, 37.545937, 50.306419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202309, 38.009781, 49.909348>,  <30.109098, 37.384903, 50.200573>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202309, 38.009781, 49.909348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.585962, 37.903355, 49.947853>,  <30.816154, 37.839497, 49.970959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.585962, 37.903355, 49.947853>,  <30.202309, 38.009781, 49.909348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585962, 37.903355, 49.947853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152937, 0.201252, -0.967527,
		0.238056, 0.942711, 0.233720,
		0.959135, -0.266070, 0.096266,
		30.873703, 37.823532, 49.976734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575024, 38.467052, 49.499641>,  <30.202309, 38.009781, 49.909348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575024, 38.467052, 49.499641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.822195, 38.155800, 49.544693>,  <30.970497, 37.969048, 49.571724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.822195, 38.155800, 49.544693>,  <30.575024, 38.467052, 49.499641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822195, 38.155800, 49.544693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217418, 0.031453, -0.975572,
		0.755577, 0.627318, 0.188615,
		0.617926, -0.778128, 0.112625,
		31.007572, 37.922363, 49.578480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373304, 38.573360, 49.410934>,  <30.575024, 38.467052, 49.499641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373304, 38.573360, 49.410934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.253862, 38.202801, 49.319183>,  <31.182198, 37.980465, 49.264133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.253862, 38.202801, 49.319183>,  <31.373304, 38.573360, 49.410934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253862, 38.202801, 49.319183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406488, 0.093996, -0.908808,
		0.863482, -0.364614, 0.348504,
		-0.298606, -0.926402, -0.229375,
		31.164280, 37.924881, 49.250370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897552, 38.407146, 49.061497>,  <31.373304, 38.573360, 49.410934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897552, 38.407146, 49.061497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.603333, 38.143734, 48.997879>,  <31.426800, 37.985687, 48.959709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.603333, 38.143734, 48.997879>,  <31.897552, 38.407146, 49.061497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603333, 38.143734, 48.997879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376405, -0.202066, -0.904150,
		0.563278, -0.724914, 0.396506,
		-0.735552, -0.658535, -0.159043,
		31.382668, 37.946175, 48.950165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571674, 38.777485, 49.045959>,  <31.897552, 38.407146, 49.061497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571674, 38.777485, 49.045959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.566006, 39.176880, 49.067242>,  <32.562603, 39.416515, 49.080009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.566006, 39.176880, 49.067242>,  <32.571674, 38.777485, 49.045959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566006, 39.176880, 49.067242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246571, -0.055060, 0.967559,
		0.969021, 0.000597, 0.246977,
		-0.014176, 0.998483, 0.053207,
		32.561752, 39.476425, 49.083202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678631, 38.912437, 49.769447>,  <32.571674, 38.777485, 49.045959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678631, 38.912437, 49.769447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.550312, 39.266586, 49.634861>,  <32.473320, 39.479076, 49.554108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.550312, 39.266586, 49.634861>,  <32.678631, 38.912437, 49.769447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550312, 39.266586, 49.634861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253052, 0.262210, 0.931241,
		0.912718, 0.383881, 0.139929,
		-0.320795, 0.885371, -0.336466,
		32.454075, 39.532196, 49.533920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015675, 39.478642, 50.050995>,  <32.678631, 38.912437, 49.769447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015675, 39.478642, 50.050995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.646267, 39.598404, 49.955105>,  <32.424622, 39.670261, 49.897572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.646267, 39.598404, 49.955105>,  <33.015675, 39.478642, 50.050995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646267, 39.598404, 49.955105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203438, 0.147464, 0.967919,
		0.325152, 0.942661, -0.075275,
		-0.923520, 0.299407, -0.239722,
		32.369209, 39.688225, 49.883190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084904, 40.099171, 50.444382>,  <33.015675, 39.478642, 50.050995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084904, 40.099171, 50.444382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.704540, 40.037537, 50.337029>,  <32.476322, 40.000557, 50.272617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.704540, 40.037537, 50.337029>,  <33.084904, 40.099171, 50.444382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704540, 40.037537, 50.337029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308965, 0.522234, 0.794866,
		0.017681, 0.838766, -0.544204,
		-0.950909, -0.154087, -0.268383,
		32.419266, 39.991310, 50.256512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688004, 40.731804, 50.534199>,  <33.084904, 40.099171, 50.444382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688004, 40.731804, 50.534199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.393551, 40.461216, 50.525349>,  <32.216877, 40.298862, 50.520039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.393551, 40.461216, 50.525349>,  <32.688004, 40.731804, 50.534199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393551, 40.461216, 50.525349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459558, 0.475556, 0.750102,
		-0.496903, 0.562343, -0.660952,
		-0.736135, -0.676473, -0.022124,
		32.172710, 40.258274, 50.518711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988085, 41.113003, 50.654339>,  <32.688004, 40.731804, 50.534199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988085, 41.113003, 50.654339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.916399, 40.727547, 50.733616>,  <31.873388, 40.496273, 50.781181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.916399, 40.727547, 50.733616>,  <31.988085, 41.113003, 50.654339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916399, 40.727547, 50.733616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455064, 0.259802, 0.851716,
		-0.872238, 0.062450, -0.485078,
		-0.179214, -0.963640, 0.198191,
		31.862635, 40.438454, 50.793072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238834, 41.071709, 50.757008>,  <31.988085, 41.113003, 50.654339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238834, 41.071709, 50.757008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.417456, 40.770687, 50.950607>,  <31.524628, 40.590076, 51.066769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.417456, 40.770687, 50.950607>,  <31.238834, 41.071709, 50.757008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417456, 40.770687, 50.950607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399395, 0.316403, 0.860449,
		-0.800672, -0.577544, -0.159274,
		0.446552, -0.752550, 0.484003,
		31.551422, 40.544922, 51.095810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738340, 40.921562, 51.156197>,  <31.238834, 41.071709, 50.757008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738340, 40.921562, 51.156197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.009310, 40.689800, 51.337475>,  <31.171892, 40.550743, 51.446243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.009310, 40.689800, 51.337475>,  <30.738340, 40.921562, 51.156197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009310, 40.689800, 51.337475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528559, 0.045078, 0.847699,
		-0.511587, -0.813795, -0.275711,
		0.677424, -0.579401, 0.453199,
		31.212538, 40.515980, 51.473434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349031, 40.374290, 51.364071>,  <30.738340, 40.921562, 51.156197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349031, 40.374290, 51.364071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.687407, 40.381008, 51.577278>,  <30.890432, 40.385036, 51.705200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.687407, 40.381008, 51.577278>,  <30.349031, 40.374290, 51.364071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687407, 40.381008, 51.577278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504841, 0.347248, 0.790287,
		-0.171819, -0.937623, 0.302228,
		0.845940, 0.016791, 0.533014,
		30.941189, 40.386047, 51.737183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.802578, 39.018005, 36.352123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160355, 38.877377, 36.462669>,  <36.375019, 38.792999, 36.528996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160355, 38.877377, 36.462669>,  <35.802578, 39.018005, 36.352123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160355, 38.877377, 36.462669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377893, -0.263773, 0.887480,
		-0.239109, -0.898235, -0.368783,
		0.894440, -0.351565, 0.276367,
		36.428684, 38.771904, 36.545578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746960, 38.279633, 36.689533>,  <35.802578, 39.018005, 36.352123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746960, 38.279633, 36.689533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076660, 38.436840, 36.852577>,  <36.274483, 38.531162, 36.950401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076660, 38.436840, 36.852577>,  <35.746960, 38.279633, 36.689533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076660, 38.436840, 36.852577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335210, -0.241461, 0.910676,
		0.456332, -0.887262, -0.067282,
		0.824255, 0.393017, 0.407605,
		36.323936, 38.554745, 36.974857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805389, 37.863766, 37.335079>,  <35.746960, 38.279633, 36.689533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805389, 37.863766, 37.335079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996494, 38.212452, 37.378609>,  <36.111156, 38.421665, 37.404728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996494, 38.212452, 37.378609>,  <35.805389, 37.863766, 37.335079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996494, 38.212452, 37.378609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201663, -0.011740, 0.979385,
		0.855027, -0.489863, 0.170185,
		0.477767, 0.871720, 0.108826,
		36.139824, 38.473969, 37.411255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306023, 37.699375, 37.938175>,  <35.805389, 37.863766, 37.335079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306023, 37.699375, 37.938175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219131, 38.087078, 37.891949>,  <36.166996, 38.319698, 37.864212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219131, 38.087078, 37.891949>,  <36.306023, 37.699375, 37.938175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219131, 38.087078, 37.891949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215606, 0.067827, 0.974122,
		0.952012, 0.236524, 0.194243,
		-0.217228, 0.969255, -0.115568,
		36.153961, 38.377853, 37.857277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662342, 38.067707, 38.403690>,  <36.306023, 37.699375, 37.938175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662342, 38.067707, 38.403690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362480, 38.322655, 38.332394>,  <36.182564, 38.475624, 38.289616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362480, 38.322655, 38.332394>,  <36.662342, 38.067707, 38.403690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362480, 38.322655, 38.332394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116598, 0.137918, 0.983557,
		0.651472, 0.758115, -0.029076,
		-0.749659, 0.637370, -0.178245,
		36.137581, 38.513866, 38.278919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785976, 38.608559, 38.876633>,  <36.662342, 38.067707, 38.403690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785976, 38.608559, 38.876633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421337, 38.736328, 38.773125>,  <36.202553, 38.812992, 38.711021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421337, 38.736328, 38.773125>,  <36.785976, 38.608559, 38.876633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421337, 38.736328, 38.773125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121113, 0.392844, 0.911595,
		0.392844, 0.862345, -0.319428,
		-0.911595, 0.319428, -0.258768,
		36.147858, 38.832157, 38.695496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736603, 39.298695, 39.062214>,  <36.785976, 38.608559, 38.876633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736603, 39.298695, 39.062214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353111, 39.185898, 39.047668>,  <36.123016, 39.118221, 39.038940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353111, 39.185898, 39.047668>,  <36.736603, 39.298695, 39.062214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353111, 39.185898, 39.047668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175920, 0.487849, 0.855018,
		-0.223365, 0.826127, -0.517322,
		-0.958728, -0.281989, -0.036364,
		36.065495, 39.101303, 39.036758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294289, 39.921841, 39.225567>,  <36.736603, 39.298695, 39.062214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294289, 39.921841, 39.225567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062504, 39.602066, 39.288967>,  <35.923431, 39.410202, 39.327007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062504, 39.602066, 39.288967>,  <36.294289, 39.921841, 39.225567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062504, 39.602066, 39.288967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261762, 0.366735, 0.892741,
		-0.771819, 0.475819, -0.421772,
		-0.579462, -0.799438, 0.158502,
		35.888664, 39.362236, 39.336517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659485, 40.248821, 39.587448>,  <36.294289, 39.921841, 39.225567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659485, 40.248821, 39.587448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648880, 39.854343, 39.652824>,  <35.642517, 39.617657, 39.692051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648880, 39.854343, 39.652824>,  <35.659485, 40.248821, 39.587448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648880, 39.854343, 39.652824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293240, 0.163974, 0.941872,
		-0.955671, -0.022959, -0.293539,
		-0.026508, -0.986197, 0.163438,
		35.640926, 39.558483, 39.701855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996563, 40.082859, 39.801666>,  <35.659485, 40.248821, 39.587448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996563, 40.082859, 39.801666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207100, 39.761726, 39.913689>,  <35.333424, 39.569046, 39.980900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207100, 39.761726, 39.913689>,  <34.996563, 40.082859, 39.801666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207100, 39.761726, 39.913689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403151, 0.054355, 0.913518,
		-0.748621, -0.593727, -0.295052,
		0.526342, -0.802829, 0.280053,
		35.365002, 39.520878, 39.997704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504364, 39.626129, 40.098240>,  <34.996563, 40.082859, 39.801666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504364, 39.626129, 40.098240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870502, 39.538502, 40.233387>,  <35.090187, 39.485928, 40.314476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870502, 39.538502, 40.233387>,  <34.504364, 39.626129, 40.098240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870502, 39.538502, 40.233387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296260, 0.201889, 0.933526,
		-0.272717, -0.954594, 0.119898,
		0.915344, -0.219067, 0.337866,
		35.145107, 39.472782, 40.334747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404839, 39.113823, 40.563866>,  <34.504364, 39.626129, 40.098240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404839, 39.113823, 40.563866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756443, 39.262272, 40.683601>,  <34.967407, 39.351341, 40.755444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756443, 39.262272, 40.683601>,  <34.404839, 39.113823, 40.563866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756443, 39.262272, 40.683601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323633, 0.003365, 0.946177,
		0.350139, -0.928578, 0.123064,
		0.879013, 0.371121, 0.299340,
		35.020145, 39.373608, 40.773403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088032, 38.354210, 40.646893>,  <34.404839, 39.113823, 40.563866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088032, 38.354210, 40.646893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735023, 38.174534, 40.591206>,  <33.523220, 38.066727, 40.557793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735023, 38.174534, 40.591206>,  <34.088032, 38.354210, 40.646893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735023, 38.174534, 40.591206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171004, -0.030750, -0.984790,
		0.438080, -0.892905, 0.103951,
		-0.882521, -0.449193, -0.139220,
		33.470268, 38.039776, 40.549438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209866, 37.865620, 40.120541>,  <34.088032, 38.354210, 40.646893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209866, 37.865620, 40.120541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812012, 37.906914, 40.117783>,  <33.573299, 37.931690, 40.116127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812012, 37.906914, 40.117783>,  <34.209866, 37.865620, 40.120541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812012, 37.906914, 40.117783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010250, -0.164619, -0.986304,
		-0.102948, -0.980941, 0.164793,
		-0.994634, 0.103227, -0.006892,
		33.513622, 37.937885, 40.115715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951595, 37.269890, 39.732372>,  <34.209866, 37.865620, 40.120541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951595, 37.269890, 39.732372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652325, 37.535255, 39.736580>,  <33.472763, 37.694473, 39.739105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652325, 37.535255, 39.736580>,  <33.951595, 37.269890, 39.732372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652325, 37.535255, 39.736580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295059, -0.318479, -0.900839,
		-0.594282, -0.677090, 0.434026,
		-0.748177, 0.663416, 0.010515,
		33.427872, 37.734280, 39.739735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268566, 36.857407, 39.582581>,  <33.951595, 37.269890, 39.732372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268566, 36.857407, 39.582581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189259, 37.244213, 39.518627>,  <33.141674, 37.476299, 39.480255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189259, 37.244213, 39.518627>,  <33.268566, 36.857407, 39.582581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189259, 37.244213, 39.518627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434141, -0.232890, -0.870221,
		-0.878757, -0.103121, 0.465997,
		-0.198264, 0.967021, -0.159884,
		33.129780, 37.534321, 39.470661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541645, 36.922779, 39.395561>,  <33.268566, 36.857407, 39.582581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541645, 36.922779, 39.395561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724846, 37.246838, 39.249195>,  <32.834766, 37.441273, 39.161373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724846, 37.246838, 39.249195>,  <32.541645, 36.922779, 39.395561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724846, 37.246838, 39.249195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475071, -0.124852, -0.871045,
		-0.751361, 0.572777, 0.327695,
		0.458001, 0.810148, -0.365919,
		32.862247, 37.489883, 39.139420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063316, 37.248112, 38.840019>,  <32.541645, 36.922779, 39.395561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063316, 37.248112, 38.840019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431816, 37.380764, 38.758705>,  <32.652916, 37.460354, 38.709915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431816, 37.380764, 38.758705>,  <32.063316, 37.248112, 38.840019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431816, 37.380764, 38.758705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071706, -0.368866, -0.926713,
		-0.382310, 0.868309, -0.316037,
		0.921248, 0.331630, -0.203284,
		32.708191, 37.480251, 38.697720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031364, 37.562843, 38.224083>,  <32.063316, 37.248112, 38.840019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031364, 37.562843, 38.224083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419445, 37.466549, 38.235088>,  <32.652294, 37.408772, 38.241692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419445, 37.466549, 38.235088>,  <32.031364, 37.562843, 38.224083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419445, 37.466549, 38.235088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099760, -0.500322, -0.860073,
		0.220818, 0.831698, -0.509429,
		0.970200, -0.240741, 0.027510,
		32.710506, 37.394325, 38.243340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048775, 37.286034, 37.540504>,  <32.031364, 37.562843, 38.224083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048775, 37.286034, 37.540504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409145, 37.250702, 37.710464>,  <32.625366, 37.229504, 37.812439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409145, 37.250702, 37.710464>,  <32.048775, 37.286034, 37.540504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409145, 37.250702, 37.710464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303623, -0.571260, -0.762545,
		0.310084, 0.816002, -0.487841,
		0.900922, -0.088334, 0.424896,
		32.679420, 37.224201, 37.837933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597664, 37.524090, 37.050247>,  <32.048775, 37.286034, 37.540504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597664, 37.524090, 37.050247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760971, 37.261154, 37.303612>,  <32.858955, 37.103394, 37.455631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760971, 37.261154, 37.303612>,  <32.597664, 37.524090, 37.050247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760971, 37.261154, 37.303612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136024, -0.642326, -0.754264,
		0.902671, 0.394102, -0.172827,
		0.408269, -0.657344, 0.633416,
		32.883453, 37.063950, 37.493637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209385, 37.276939, 36.759773>,  <32.597664, 37.524090, 37.050247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209385, 37.276939, 36.759773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087315, 36.989929, 37.010220>,  <33.014072, 36.817722, 37.160488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087315, 36.989929, 37.010220>,  <33.209385, 37.276939, 36.759773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087315, 36.989929, 37.010220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178791, -0.688958, -0.702403,
		0.935361, -0.102414, 0.338542,
		-0.305177, -0.717529, 0.626114,
		32.995762, 36.774670, 37.198055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879631, 36.775162, 36.797810>,  <33.209385, 37.276939, 36.759773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879631, 36.775162, 36.797810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556286, 36.582249, 36.932831>,  <33.362278, 36.466499, 37.013844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556286, 36.582249, 36.932831>,  <33.879631, 36.775162, 36.797810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556286, 36.582249, 36.932831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011052, -0.585745, -0.810420,
		0.588575, -0.651386, 0.478827,
		-0.808367, -0.482285, 0.337556,
		33.313774, 36.437565, 37.034096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123890, 36.039219, 36.835411>,  <33.879631, 36.775162, 36.797810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123890, 36.039219, 36.835411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741875, 36.142826, 36.777702>,  <33.512665, 36.204990, 36.743076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741875, 36.142826, 36.777702>,  <34.123890, 36.039219, 36.835411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741875, 36.142826, 36.777702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021949, -0.423490, -0.905635,
		-0.295672, -0.868082, 0.398764,
		-0.955037, 0.259018, -0.144267,
		33.455364, 36.220531, 36.734421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750938, 35.492653, 36.630733>,  <34.123890, 36.039219, 36.835411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750938, 35.492653, 36.630733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557762, 35.821220, 36.509380>,  <33.441856, 36.018360, 36.436569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557762, 35.821220, 36.509380>,  <33.750938, 35.492653, 36.630733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557762, 35.821220, 36.509380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059467, -0.376431, -0.924534,
		-0.873630, -0.428456, 0.230642,
		-0.482943, 0.821416, -0.303383,
		33.412880, 36.067646, 36.418365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530983, 35.487091, 36.645470>,  <33.750938, 35.492653, 36.630733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530983, 35.487091, 36.645470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634514, 35.671097, 36.985210>,  <34.696632, 35.781502, 37.189053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634514, 35.671097, 36.985210>,  <34.530983, 35.487091, 36.645470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634514, 35.671097, 36.985210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492701, -0.693443, 0.525721,
		0.830816, -0.554544, 0.047172,
		0.258824, 0.460019, 0.849348,
		34.712162, 35.809101, 37.240013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718086, 35.013973, 37.150639>,  <34.530983, 35.487091, 36.645470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718086, 35.013973, 37.150639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595772, 35.326733, 37.367943>,  <34.522381, 35.514389, 37.498325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595772, 35.326733, 37.367943>,  <34.718086, 35.013973, 37.150639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595772, 35.326733, 37.367943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390091, -0.623390, 0.677652,
		0.868517, -0.004703, 0.495637,
		-0.305788, 0.781897, 0.543260,
		34.504036, 35.561302, 37.530922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393963, 35.209206, 37.207993>,  <34.718086, 35.013973, 37.150639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393963, 35.209206, 37.207993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706448, 34.991062, 37.329517>,  <35.893936, 34.860176, 37.402431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706448, 34.991062, 37.329517>,  <35.393963, 35.209206, 37.207993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706448, 34.991062, 37.329517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296503, 0.104138, 0.949337,
		-0.549365, -0.831711, -0.080346,
		0.781207, -0.545355, 0.303815,
		35.940811, 34.827457, 37.420662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230682, 34.561054, 37.576008>,  <35.393963, 35.209206, 37.207993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230682, 34.561054, 37.576008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593567, 34.672688, 37.701916>,  <35.811298, 34.739670, 37.777462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593567, 34.672688, 37.701916>,  <35.230682, 34.561054, 37.576008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593567, 34.672688, 37.701916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302042, -0.088696, 0.949159,
		0.292819, -0.956160, 0.003831,
		0.907209, 0.279089, 0.314773,
		35.865730, 34.756413, 37.796349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489597, 34.020840, 38.047962>,  <35.230682, 34.561054, 37.576008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489597, 34.020840, 38.047962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686806, 34.359730, 38.127098>,  <35.805130, 34.563065, 38.174580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686806, 34.359730, 38.127098>,  <35.489597, 34.020840, 38.047962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686806, 34.359730, 38.127098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165214, -0.132091, 0.977372,
		0.854188, -0.514549, 0.074851,
		0.493018, 0.847226, 0.197842,
		35.834713, 34.613899, 38.186451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939865, 33.791672, 38.613052>,  <35.489597, 34.020840, 38.047962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939865, 33.791672, 38.613052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910366, 34.190479, 38.622093>,  <35.892666, 34.429764, 38.627518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910366, 34.190479, 38.622093>,  <35.939865, 33.791672, 38.613052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910366, 34.190479, 38.622093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143550, -0.011813, 0.989572,
		0.986891, 0.076226, -0.142251,
		-0.073751, 0.997020, 0.022600,
		35.888241, 34.489586, 38.628872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363155, 33.996872, 39.111519>,  <35.939865, 33.791672, 38.613052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363155, 33.996872, 39.111519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153248, 34.331074, 39.046345>,  <36.027306, 34.531597, 39.007240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153248, 34.331074, 39.046345>,  <36.363155, 33.996872, 39.111519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153248, 34.331074, 39.046345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066845, 0.231263, 0.970592,
		0.848618, 0.498442, -0.177209,
		-0.524766, 0.835507, -0.162936,
		35.995819, 34.581726, 38.997463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776737, 34.542057, 39.369816>,  <36.363155, 33.996872, 39.111519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776737, 34.542057, 39.369816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399467, 34.674553, 39.359249>,  <36.173103, 34.754051, 39.352909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399467, 34.674553, 39.359249>,  <36.776737, 34.542057, 39.369816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399467, 34.674553, 39.359249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074097, 0.287157, 0.955013,
		0.323925, 0.898789, -0.295384,
		-0.943177, 0.331239, -0.026420,
		36.116516, 34.773926, 39.351322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765079, 35.237244, 39.628727>,  <36.776737, 34.542057, 39.369816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765079, 35.237244, 39.628727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389767, 35.105713, 39.671627>,  <36.164577, 35.026794, 39.697369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389767, 35.105713, 39.671627>,  <36.765079, 35.237244, 39.628727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389767, 35.105713, 39.671627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003518, 0.300999, 0.953618,
		-0.345855, 0.895139, -0.281265,
		-0.938281, -0.328824, 0.107252,
		36.108284, 35.007065, 39.703804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426979, 35.856514, 39.865364>,  <36.765079, 35.237244, 39.628727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426979, 35.856514, 39.865364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196568, 35.542858, 39.957722>,  <36.058323, 35.354664, 40.013138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196568, 35.542858, 39.957722>,  <36.426979, 35.856514, 39.865364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196568, 35.542858, 39.957722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048626, 0.314833, 0.947900,
		-0.815983, 0.534789, -0.219482,
		-0.576027, -0.784144, 0.230894,
		36.023758, 35.307613, 40.026989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958645, 36.077023, 40.381626>,  <36.426979, 35.856514, 39.865364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958645, 36.077023, 40.381626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932636, 35.678814, 40.409050>,  <35.917030, 35.439888, 40.425503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932636, 35.678814, 40.409050>,  <35.958645, 36.077023, 40.381626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932636, 35.678814, 40.409050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011074, 0.067977, 0.997625,
		-0.997822, 0.065630, 0.006605,
		-0.065025, -0.995526, 0.068556,
		35.913128, 35.380157, 40.429615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389645, 35.926819, 40.813931>,  <35.958645, 36.077023, 40.381626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389645, 35.926819, 40.813931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627769, 35.605801, 40.829559>,  <35.770645, 35.413189, 40.838936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627769, 35.605801, 40.829559>,  <35.389645, 35.926819, 40.813931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627769, 35.605801, 40.829559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132853, -0.050360, 0.989856,
		-0.792434, -0.594466, -0.136600,
		0.595314, -0.802542, 0.039070,
		35.806362, 35.365036, 40.841282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995396, 35.457340, 41.105358>,  <35.389645, 35.926819, 40.813931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995396, 35.457340, 41.105358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366337, 35.324066, 41.173492>,  <35.588902, 35.244102, 41.214371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366337, 35.324066, 41.173492>,  <34.995396, 35.457340, 41.105358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366337, 35.324066, 41.173492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225157, -0.133256, 0.965167,
		-0.298879, -0.933398, -0.198593,
		0.927349, -0.333183, 0.170333,
		35.644543, 35.224113, 41.224594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853912, 34.916576, 41.448475>,  <34.995396, 35.457340, 41.105358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853912, 34.916576, 41.448475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240261, 34.972710, 41.535553>,  <35.472073, 35.006390, 41.587799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240261, 34.972710, 41.535553>,  <34.853912, 34.916576, 41.448475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240261, 34.972710, 41.535553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197561, -0.144337, 0.969606,
		0.167489, -0.979527, -0.111687,
		0.965876, 0.140333, 0.217691,
		35.530025, 35.014809, 41.600861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926537, 34.374630, 41.902733>,  <34.853912, 34.916576, 41.448475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926537, 34.374630, 41.902733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247925, 34.608112, 41.949593>,  <35.440758, 34.748199, 41.977707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247925, 34.608112, 41.949593>,  <34.926537, 34.374630, 41.902733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247925, 34.608112, 41.949593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058937, -0.273791, 0.959982,
		0.592419, -0.764413, -0.254385,
		0.803471, 0.583704, 0.117147,
		35.488968, 34.783222, 41.984737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327030, 33.974476, 42.341015>,  <34.926537, 34.374630, 41.902733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327030, 33.974476, 42.341015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472614, 34.346504, 42.361050>,  <35.559963, 34.569721, 42.373070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472614, 34.346504, 42.361050>,  <35.327030, 33.974476, 42.341015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472614, 34.346504, 42.361050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087928, -0.087847, 0.992245,
		0.927255, -0.356732, -0.113752,
		0.363959, 0.930067, 0.050090,
		35.581802, 34.625523, 42.376076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852116, 33.999519, 42.842594>,  <35.327030, 33.974476, 42.341015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852116, 33.999519, 42.842594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742641, 34.384106, 42.832130>,  <35.676956, 34.614857, 42.825851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742641, 34.384106, 42.832130>,  <35.852116, 33.999519, 42.842594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742641, 34.384106, 42.832130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095704, 0.054287, 0.993928,
		0.957047, 0.269516, -0.106873,
		-0.273681, 0.961465, -0.026161,
		35.660538, 34.672546, 42.824284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333065, 34.338230, 43.306889>,  <35.852116, 33.999519, 42.842594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333065, 34.338230, 43.306889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029846, 34.595634, 43.264442>,  <35.847916, 34.750076, 43.238976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029846, 34.595634, 43.264442>,  <36.333065, 34.338230, 43.306889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029846, 34.595634, 43.264442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025700, 0.192044, 0.981050,
		0.651694, 0.740954, -0.162116,
		-0.758047, 0.643511, -0.106112,
		35.802433, 34.788689, 43.232609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503803, 34.947109, 43.723289>,  <36.333065, 34.338230, 43.306889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503803, 34.947109, 43.723289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108356, 34.984406, 43.676056>,  <35.871090, 35.006783, 43.647717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108356, 34.984406, 43.676056>,  <36.503803, 34.947109, 43.723289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108356, 34.984406, 43.676056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086579, 0.289305, 0.953314,
		0.123045, 0.952685, -0.277940,
		-0.988617, 0.093237, -0.118080,
		35.811771, 35.012375, 43.640633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273998, 35.597137, 43.924095>,  <36.503803, 34.947109, 43.723289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273998, 35.597137, 43.924095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946301, 35.369076, 43.948643>,  <35.749683, 35.232239, 43.963371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946301, 35.369076, 43.948643>,  <36.273998, 35.597137, 43.924095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946301, 35.369076, 43.948643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139548, 0.302021, 0.943032,
		-0.556207, 0.764009, -0.326993,
		-0.819243, -0.570153, 0.061371,
		35.700527, 35.198029, 43.967052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818550, 36.009258, 44.268978>,  <36.273998, 35.597137, 43.924095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818550, 36.009258, 44.268978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681408, 35.639221, 44.334290>,  <35.599121, 35.417198, 44.373478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681408, 35.639221, 44.334290>,  <35.818550, 36.009258, 44.268978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681408, 35.639221, 44.334290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200676, 0.241928, 0.949316,
		-0.917703, 0.292712, -0.268590,
		-0.342855, -0.925090, 0.163278,
		35.578552, 35.361694, 44.383274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179874, 36.067356, 44.620880>,  <35.818550, 36.009258, 44.268978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179874, 36.067356, 44.620880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301109, 35.694550, 44.700359>,  <35.373852, 35.470867, 44.748047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301109, 35.694550, 44.700359>,  <35.179874, 36.067356, 44.620880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301109, 35.694550, 44.700359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345359, 0.086908, 0.934438,
		-0.888181, -0.351840, -0.295540,
		0.303088, -0.932017, 0.198701,
		35.392036, 35.414944, 44.759972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638577, 35.819870, 44.912155>,  <35.179874, 36.067356, 44.620880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638577, 35.819870, 44.912155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921810, 35.557350, 45.016376>,  <35.091751, 35.399837, 45.078907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921810, 35.557350, 45.016376>,  <34.638577, 35.819870, 44.912155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921810, 35.557350, 45.016376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296344, 0.058724, 0.953274,
		-0.640936, -0.752210, -0.152910,
		0.708083, -0.656302, 0.260551,
		35.134235, 35.360458, 45.094543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401192, 35.500828, 45.470379>,  <34.638577, 35.819870, 44.912155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401192, 35.500828, 45.470379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779675, 35.376640, 45.506813>,  <35.006763, 35.302128, 45.528675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779675, 35.376640, 45.506813>,  <34.401192, 35.500828, 45.470379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779675, 35.376640, 45.506813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086554, 0.028381, 0.995843,
		-0.311767, -0.950159, -0.000018,
		0.946208, -0.310472, 0.091088,
		35.063538, 35.283501, 45.534138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404667, 34.926308, 45.941635>,  <34.401192, 35.500828, 45.470379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404667, 34.926308, 45.941635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774586, 35.078487, 45.940804>,  <34.996536, 35.169796, 45.940304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774586, 35.078487, 45.940804>,  <34.404667, 34.926308, 45.941635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774586, 35.078487, 45.940804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030745, -0.069291, 0.997123,
		0.379212, -0.922201, -0.075777,
		0.924799, 0.380451, -0.002077,
		35.052025, 35.192623, 45.940182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812397, 34.471069, 46.423332>,  <34.404667, 34.926308, 45.941635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812397, 34.471069, 46.423332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009075, 34.818287, 46.395817>,  <35.127083, 35.026619, 46.379307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009075, 34.818287, 46.395817>,  <34.812397, 34.471069, 46.423332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009075, 34.818287, 46.395817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052299, 0.049411, 0.997408,
		0.869198, -0.494014, -0.021103,
		0.491691, 0.868049, -0.068785,
		35.156582, 35.078701, 46.375183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319683, 34.392727, 46.835686>,  <34.812397, 34.471069, 46.423332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319683, 34.392727, 46.835686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289566, 34.788017, 46.782410>,  <35.271496, 35.025192, 46.750446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289566, 34.788017, 46.782410>,  <35.319683, 34.392727, 46.835686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289566, 34.788017, 46.782410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022652, 0.135227, 0.990556,
		0.996904, 0.071564, -0.032567,
		-0.075292, 0.988227, -0.133187,
		35.266979, 35.084484, 46.742455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824574, 34.599014, 47.187138>,  <35.319683, 34.392727, 46.835686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824574, 34.599014, 47.187138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587383, 34.919662, 47.156704>,  <35.445068, 35.112053, 47.138443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587383, 34.919662, 47.156704>,  <35.824574, 34.599014, 47.187138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587383, 34.919662, 47.156704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007289, 0.099826, 0.994978,
		0.805189, 0.589441, -0.065037,
		-0.592973, 0.801620, -0.076082,
		35.409492, 35.160149, 47.133881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959133, 35.009151, 47.660606>,  <35.824574, 34.599014, 47.187138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959133, 35.009151, 47.660606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582703, 35.114998, 47.576370>,  <35.356842, 35.178505, 47.525829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582703, 35.114998, 47.576370>,  <35.959133, 35.009151, 47.660606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582703, 35.114998, 47.576370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196196, 0.080029, 0.977293,
		0.275458, 0.961028, -0.023398,
		-0.941079, 0.264612, -0.210595,
		35.300381, 35.194382, 47.513191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223049, 35.865337, 47.625748>,  <35.959133, 35.009151, 47.660606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223049, 35.865337, 47.625748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582134, 35.955894, 47.776936>,  <36.797585, 36.010231, 47.867649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582134, 35.955894, 47.776936>,  <36.223049, 35.865337, 47.625748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582134, 35.955894, 47.776936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420760, -0.186117, -0.887875,
		-0.130665, 0.956089, -0.262337,
		0.897712, 0.226395, 0.377965,
		36.851448, 36.023811, 47.890324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516087, 36.286335, 47.189800>,  <36.223049, 35.865337, 47.625748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516087, 36.286335, 47.189800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850544, 36.176720, 47.379860>,  <37.051220, 36.110950, 47.493896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850544, 36.176720, 47.379860>,  <36.516087, 36.286335, 47.189800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850544, 36.176720, 47.379860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485505, -0.033354, -0.873597,
		0.255247, 0.961140, 0.105158,
		0.836142, -0.274038, 0.475152,
		37.101387, 36.094509, 47.522408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018620, 36.669594, 46.914997>,  <36.516087, 36.286335, 47.189800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018620, 36.669594, 46.914997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215427, 36.366241, 47.086006>,  <37.333511, 36.184231, 47.188610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215427, 36.366241, 47.086006>,  <37.018620, 36.669594, 46.914997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215427, 36.366241, 47.086006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524342, -0.133873, -0.840918,
		0.694972, 0.637913, 0.331784,
		0.492016, -0.758383, 0.427523,
		37.363033, 36.138725, 47.214264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687916, 36.715908, 46.660679>,  <37.018620, 36.669594, 46.914997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687916, 36.715908, 46.660679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688885, 36.334877, 46.782394>,  <37.689465, 36.106258, 46.855423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688885, 36.334877, 46.782394>,  <37.687916, 36.715908, 46.660679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688885, 36.334877, 46.782394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589676, -0.244399, -0.769773,
		0.807636, 0.181294, 0.561121,
		0.002418, -0.952576, 0.304290,
		37.689610, 36.049103, 46.873680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442890, 36.433670, 46.657963>,  <37.687916, 36.715908, 46.660679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442890, 36.433670, 46.657963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202015, 36.115391, 46.631943>,  <38.057491, 35.924423, 46.616329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202015, 36.115391, 46.631943>,  <38.442890, 36.433670, 46.657963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202015, 36.115391, 46.631943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545383, -0.350500, -0.761385,
		0.583032, -0.493975, 0.645028,
		-0.602188, -0.795699, -0.065053,
		38.021358, 35.876682, 46.612427>
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
