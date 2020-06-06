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
	<24.472973, 35.286594, 35.054943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.464453, 34.887867, 35.085659>,  <24.459341, 34.648632, 35.104088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.464453, 34.887867, 35.085659>,  <24.472973, 35.286594, 35.054943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.464453, 34.887867, 35.085659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999767, -0.021504, -0.001819,
		0.003465, 0.076738, 0.997045,
		-0.021301, -0.996819, 0.076794,
		24.458063, 34.588821, 35.108696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.895180, 35.116684, 35.741535>,  <24.472973, 35.286594, 35.054943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.895180, 35.116684, 35.741535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898258, 34.880474, 35.418743>,  <24.900105, 34.738747, 35.225067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898258, 34.880474, 35.418743>,  <24.895180, 35.116684, 35.741535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.898258, 34.880474, 35.418743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975516, -0.172946, 0.135858,
		-0.219792, -0.788271, 0.574736,
		0.007695, -0.590525, -0.806983,
		24.900566, 34.703316, 35.176647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.077402, 34.384636, 35.916862>,  <24.895180, 35.116684, 35.741535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.077402, 34.384636, 35.916862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179525, 34.583717, 35.585293>,  <25.240799, 34.703167, 35.386353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179525, 34.583717, 35.585293>,  <25.077402, 34.384636, 35.916862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.179525, 34.583717, 35.585293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941832, 0.065787, 0.329583,
		0.218566, -0.864850, -0.451955,
		0.255307, 0.497701, -0.828922,
		25.256117, 34.733028, 35.336617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.696325, 34.078896, 35.729736>,  <25.077402, 34.384636, 35.916862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.696325, 34.078896, 35.729736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678267, 34.441837, 35.562565>,  <25.667431, 34.659603, 35.462261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678267, 34.441837, 35.562565>,  <25.696325, 34.078896, 35.729736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678267, 34.441837, 35.562565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955146, 0.161776, 0.248042,
		0.292674, -0.387985, -0.873962,
		-0.045149, 0.907357, -0.417930,
		25.664722, 34.714043, 35.437187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120752, 34.206776, 35.132824>,  <25.696325, 34.078896, 35.729736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120752, 34.206776, 35.132824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085451, 34.554390, 35.327545>,  <26.064270, 34.762959, 35.444378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085451, 34.554390, 35.327545>,  <26.120752, 34.206776, 35.132824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085451, 34.554390, 35.327545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975014, -0.024655, 0.220771,
		0.203861, 0.494128, -0.845150,
		-0.088252, 0.869040, 0.486808,
		26.058975, 34.815102, 35.473587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757650, 34.483437, 35.165424>,  <26.120752, 34.206776, 35.132824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757650, 34.483437, 35.165424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572369, 34.674812, 35.463829>,  <26.461199, 34.789639, 35.642872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572369, 34.674812, 35.463829>,  <26.757650, 34.483437, 35.165424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572369, 34.674812, 35.463829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838411, -0.036257, 0.543832,
		0.287241, 0.877369, -0.384337,
		-0.463206, 0.478443, 0.746010,
		26.433407, 34.818344, 35.687634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131689, 35.068104, 35.413490>,  <26.757650, 34.483437, 35.165424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131689, 35.068104, 35.413490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892090, 34.948898, 35.710781>,  <26.748331, 34.877377, 35.889156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892090, 34.948898, 35.710781>,  <27.131689, 35.068104, 35.413490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892090, 34.948898, 35.710781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777783, 0.004176, 0.628519,
		-0.190409, 0.954553, 0.229286,
		-0.598997, -0.298010, 0.743231,
		26.712391, 34.859497, 35.933750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613256, 34.716808, 34.895744>,  <27.131689, 35.068104, 35.413490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613256, 34.716808, 34.895744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660835, 34.322067, 34.851982>,  <27.689383, 34.085220, 34.825726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660835, 34.322067, 34.851982>,  <27.613256, 34.716808, 34.895744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.660835, 34.322067, 34.851982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161099, 0.127907, -0.978615,
		0.979744, 0.098781, 0.174196,
		0.118949, -0.986855, -0.109403,
		27.696520, 34.026012, 34.819160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242338, 34.633575, 34.355614>,  <27.613256, 34.716808, 34.895744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242338, 34.633575, 34.355614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038252, 34.290222, 34.377010>,  <27.915800, 34.084209, 34.389847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038252, 34.290222, 34.377010>,  <28.242338, 34.633575, 34.355614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038252, 34.290222, 34.377010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130022, -0.138462, -0.981796,
		0.850161, -0.493974, 0.182254,
		-0.510217, -0.858381, 0.053487,
		27.885187, 34.032707, 34.393055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685467, 34.147003, 34.130489>,  <28.242338, 34.633575, 34.355614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685467, 34.147003, 34.130489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.323374, 33.990078, 34.065197>,  <28.106119, 33.895924, 34.026020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.323374, 33.990078, 34.065197>,  <28.685467, 34.147003, 34.130489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323374, 33.990078, 34.065197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234064, -0.139764, -0.962123,
		0.354643, -0.909150, 0.218346,
		-0.905230, -0.392317, -0.163233,
		28.051805, 33.872383, 34.016228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732971, 33.546684, 33.709755>,  <28.685467, 34.147003, 34.130489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732971, 33.546684, 33.709755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341761, 33.620609, 33.671158>,  <28.107035, 33.664967, 33.647999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341761, 33.620609, 33.671158>,  <28.732971, 33.546684, 33.709755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341761, 33.620609, 33.671158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066993, -0.159708, -0.984888,
		-0.197436, -0.969709, 0.143817,
		-0.978024, 0.184817, -0.096496,
		28.048353, 33.676052, 33.642208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515633, 32.996719, 33.323429>,  <28.732971, 33.546684, 33.709755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515633, 32.996719, 33.323429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253767, 33.295380, 33.276234>,  <28.096647, 33.474575, 33.247917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253767, 33.295380, 33.276234>,  <28.515633, 32.996719, 33.323429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253767, 33.295380, 33.276234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151125, -0.023656, -0.988232,
		-0.740658, -0.664793, -0.097351,
		-0.654666, 0.746653, -0.117988,
		28.057367, 33.519375, 33.240837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196999, 32.755886, 32.696747>,  <28.515633, 32.996719, 33.323429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196999, 32.755886, 32.696747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097221, 33.142960, 32.711498>,  <28.037355, 33.375206, 32.720348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097221, 33.142960, 32.711498>,  <28.196999, 32.755886, 32.696747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097221, 33.142960, 32.711498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182967, 0.084489, -0.979482,
		-0.950948, -0.237576, -0.198130,
		-0.249442, 0.967687, 0.036876,
		28.022388, 33.433266, 32.722561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688261, 32.913151, 32.147572>,  <28.196999, 32.755886, 32.696747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688261, 32.913151, 32.147572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850847, 33.265877, 32.243229>,  <27.948399, 33.477512, 32.300625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850847, 33.265877, 32.243229>,  <27.688261, 32.913151, 32.147572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850847, 33.265877, 32.243229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026083, 0.272834, -0.961708,
		-0.913295, 0.384661, 0.133898,
		0.406464, 0.881815, 0.239145,
		27.972786, 33.530422, 32.314972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316931, 33.519588, 31.690367>,  <27.688261, 32.913151, 32.147572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316931, 33.519588, 31.690367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660435, 33.679184, 31.818951>,  <27.866537, 33.774940, 31.896101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660435, 33.679184, 31.818951>,  <27.316931, 33.519588, 31.690367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.660435, 33.679184, 31.818951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196927, 0.322187, -0.925967,
		-0.473025, 0.858487, 0.198109,
		0.858759, 0.398992, 0.321462,
		27.918062, 33.798882, 31.915390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473389, 33.926727, 31.145752>,  <27.316931, 33.519588, 31.690367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473389, 33.926727, 31.145752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816807, 33.930977, 31.350801>,  <28.022858, 33.933525, 31.473831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816807, 33.930977, 31.350801>,  <27.473389, 33.926727, 31.145752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816807, 33.930977, 31.350801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492467, 0.261235, -0.830200,
		-0.142732, 0.965217, 0.219053,
		0.858548, 0.010619, 0.512624,
		28.074371, 33.934162, 31.504589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799498, 34.482010, 30.938103>,  <27.473389, 33.926727, 31.145752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799498, 34.482010, 30.938103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089157, 34.247074, 31.082682>,  <28.262953, 34.106113, 31.169430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089157, 34.247074, 31.082682>,  <27.799498, 34.482010, 30.938103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.089157, 34.247074, 31.082682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546289, 0.168634, -0.820445,
		0.420924, 0.791580, 0.442971,
		0.724149, -0.587335, 0.361450,
		28.306402, 34.070873, 31.191116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382521, 34.859112, 30.912516>,  <27.799498, 34.482010, 30.938103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382521, 34.859112, 30.912516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508614, 34.479855, 30.928812>,  <28.584270, 34.252300, 30.938589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508614, 34.479855, 30.928812>,  <28.382521, 34.859112, 30.912516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508614, 34.479855, 30.928812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497884, 0.128683, -0.857643,
		0.807923, 0.290643, 0.512628,
		0.315234, -0.948139, 0.040741,
		28.603184, 34.195412, 30.941034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092070, 34.947346, 30.722414>,  <28.382521, 34.859112, 30.912516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092070, 34.947346, 30.722414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.005106, 34.560417, 30.670237>,  <28.952929, 34.328259, 30.638929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.005106, 34.560417, 30.670237>,  <29.092070, 34.947346, 30.722414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005106, 34.560417, 30.670237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448558, 0.019679, -0.893537,
		0.866908, -0.252773, 0.429623,
		-0.217408, -0.967326, -0.130443,
		28.939884, 34.270218, 30.631104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635511, 34.730877, 30.445610>,  <29.092070, 34.947346, 30.722414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635511, 34.730877, 30.445610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367035, 34.448032, 30.356623>,  <29.205948, 34.278324, 30.303230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367035, 34.448032, 30.356623>,  <29.635511, 34.730877, 30.445610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367035, 34.448032, 30.356623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423588, -0.119570, -0.897929,
		0.608337, -0.696917, 0.379779,
		-0.671192, -0.707113, -0.222467,
		29.165678, 34.235897, 30.289883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056820, 34.360008, 30.179968>,  <29.635511, 34.730877, 30.445610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056820, 34.360008, 30.179968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715723, 34.217125, 30.027529>,  <29.511065, 34.131393, 29.936066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715723, 34.217125, 30.027529>,  <30.056820, 34.360008, 30.179968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715723, 34.217125, 30.027529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383897, 0.066149, -0.921003,
		0.354200, -0.931679, 0.080724,
		-0.852740, -0.357209, -0.381099,
		29.459902, 34.109962, 29.913198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247610, 33.895763, 29.676188>,  <30.056820, 34.360008, 30.179968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247610, 33.895763, 29.676188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.870556, 33.982384, 29.574564>,  <29.644323, 34.034355, 29.513590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.870556, 33.982384, 29.574564>,  <30.247610, 33.895763, 29.676188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870556, 33.982384, 29.574564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249173, -0.050042, -0.967165,
		-0.222157, -0.974987, -0.006788,
		-0.942634, 0.216554, -0.254057,
		29.587765, 34.047348, 29.498346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116570, 33.547146, 29.009970>,  <30.247610, 33.895763, 29.676188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116570, 33.547146, 29.009970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816021, 33.810993, 29.017330>,  <29.635693, 33.969303, 29.021746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816021, 33.810993, 29.017330>,  <30.116570, 33.547146, 29.009970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816021, 33.810993, 29.017330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188725, 0.241529, -0.951864,
		-0.632316, -0.711731, -0.305966,
		-0.751371, 0.659623, 0.018401,
		29.590609, 34.008881, 29.022850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714931, 33.432709, 28.487186>,  <30.116570, 33.547146, 29.009970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714931, 33.432709, 28.487186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621666, 33.816608, 28.549820>,  <29.565706, 34.046947, 28.587400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621666, 33.816608, 28.549820>,  <29.714931, 33.432709, 28.487186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621666, 33.816608, 28.549820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286990, 0.221765, -0.931910,
		-0.929124, -0.172349, -0.327146,
		-0.233163, 0.959748, 0.156585,
		29.551718, 34.104534, 28.596796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480753, 33.623249, 27.785015>,  <29.714931, 33.432709, 28.487186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480753, 33.623249, 27.785015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.577988, 33.949863, 27.994463>,  <29.636330, 34.145832, 28.120132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.577988, 33.949863, 27.994463>,  <29.480753, 33.623249, 27.785015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577988, 33.949863, 27.994463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544120, 0.332098, -0.770483,
		-0.803020, 0.472207, -0.363565,
		0.243088, 0.816536, 0.523619,
		29.650913, 34.194824, 28.151548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420382, 34.111759, 27.412035>,  <29.480753, 33.623249, 27.785015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420382, 34.111759, 27.412035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683325, 34.260914, 27.673977>,  <29.841091, 34.350407, 27.831142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683325, 34.260914, 27.673977>,  <29.420382, 34.111759, 27.412035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683325, 34.260914, 27.673977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614578, 0.237600, -0.752224,
		-0.436089, 0.896940, -0.072980,
		0.657359, 0.372888, 0.654854,
		29.880533, 34.372780, 27.870434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076630, 33.827618, 27.300377>,  <29.420382, 34.111759, 27.412035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076630, 33.827618, 27.300377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708851, 33.804020, 27.144873>,  <29.488184, 33.789864, 27.051571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708851, 33.804020, 27.144873>,  <30.076630, 33.827618, 27.300377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708851, 33.804020, 27.144873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272885, 0.616102, -0.738886,
		0.283104, -0.785455, -0.550375,
		-0.919449, -0.058993, -0.388760,
		29.433016, 33.786324, 27.028244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.242107, 34.573025, 26.949963>,  <30.076630, 33.827618, 27.300377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.242107, 34.573025, 26.949963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109402, 34.764736, 27.274979>,  <30.029779, 34.879765, 27.469988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109402, 34.764736, 27.274979>,  <30.242107, 34.573025, 26.949963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109402, 34.764736, 27.274979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352914, 0.735724, -0.578068,
		-0.874863, -0.478538, -0.074940,
		-0.331762, 0.479283, 0.812540,
		30.009872, 34.908520, 27.518742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345659, 34.577751, 26.214748>,  <30.242107, 34.573025, 26.949963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345659, 34.577751, 26.214748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476162, 34.777325, 25.893595>,  <30.554464, 34.897068, 25.700903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476162, 34.777325, 25.893595>,  <30.345659, 34.577751, 26.214748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476162, 34.777325, 25.893595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668420, 0.478818, 0.569165,
		0.668410, -0.722358, -0.177278,
		0.326257, 0.498931, -0.802885,
		30.574039, 34.927006, 25.652729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028109, 34.695728, 26.352352>,  <30.345659, 34.577751, 26.214748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028109, 34.695728, 26.352352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947361, 34.965981, 26.068726>,  <30.898912, 35.128132, 25.898550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947361, 34.965981, 26.068726>,  <31.028109, 34.695728, 26.352352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947361, 34.965981, 26.068726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747228, 0.574272, 0.334458,
		0.633167, -0.462319, -0.620774,
		-0.201867, 0.675627, -0.709068,
		30.886801, 35.168667, 25.856005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349146, 35.300133, 26.112883>,  <31.028109, 34.695728, 26.352352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349146, 35.300133, 26.112883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525162, 35.357899, 26.467398>,  <31.630772, 35.392559, 26.680107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525162, 35.357899, 26.467398>,  <31.349146, 35.300133, 26.112883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525162, 35.357899, 26.467398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146056, -0.985351, 0.088042,
		0.886020, 0.090705, -0.454688,
		0.440041, 0.144417, 0.886288,
		31.657175, 35.401222, 26.733284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140488, 35.107925, 26.217659>,  <31.349146, 35.300133, 26.112883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140488, 35.107925, 26.217659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906490, 35.039742, 26.534828>,  <31.766092, 34.998829, 26.725130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906490, 35.039742, 26.534828>,  <32.140488, 35.107925, 26.217659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906490, 35.039742, 26.534828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131394, -0.984667, -0.114745,
		0.800325, 0.037061, 0.598419,
		-0.584991, -0.170462, 0.792924,
		31.730993, 34.988602, 26.772705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510910, 34.636684, 26.538326>,  <32.140488, 35.107925, 26.217659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510910, 34.636684, 26.538326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124218, 34.620567, 26.639364>,  <31.892202, 34.610897, 26.699987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124218, 34.620567, 26.639364>,  <32.510910, 34.636684, 26.538326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124218, 34.620567, 26.639364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008067, -0.982224, -0.187539,
		0.255660, -0.183338, 0.949223,
		-0.966733, -0.040289, 0.252595,
		31.834198, 34.608482, 26.715143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505539, 35.133083, 27.097641>,  <32.510910, 34.636684, 26.538326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505539, 35.133083, 27.097641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397568, 35.488914, 26.950239>,  <32.332787, 35.702412, 26.861797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397568, 35.488914, 26.950239>,  <32.505539, 35.133083, 27.097641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397568, 35.488914, 26.950239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415424, 0.237669, 0.878030,
		0.868656, 0.390089, 0.305398,
		-0.269926, 0.889575, -0.368505,
		32.316589, 35.755787, 26.839687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822136, 35.675098, 27.472687>,  <32.505539, 35.133083, 27.097641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822136, 35.675098, 27.472687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474300, 35.805141, 27.324034>,  <32.265598, 35.883167, 27.234842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474300, 35.805141, 27.324034>,  <32.822136, 35.675098, 27.472687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474300, 35.805141, 27.324034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288057, 0.277274, 0.916593,
		0.401036, 0.904115, -0.147466,
		-0.869594, 0.325108, -0.371634,
		32.213421, 35.902676, 27.212543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633915, 36.466019, 27.678535>,  <32.822136, 35.675098, 27.472687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633915, 36.466019, 27.678535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326900, 36.214130, 27.630646>,  <32.142693, 36.062996, 27.601912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326900, 36.214130, 27.630646>,  <32.633915, 36.466019, 27.678535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326900, 36.214130, 27.630646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300329, 0.188280, 0.935069,
		-0.566291, 0.753659, -0.333636,
		-0.767540, -0.629721, -0.119724,
		32.096638, 36.025215, 27.594728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026558, 36.837135, 28.002283>,  <32.633915, 36.466019, 27.678535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026558, 36.837135, 28.002283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935007, 36.448513, 27.977961>,  <31.880077, 36.215340, 27.963367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935007, 36.448513, 27.977961>,  <32.026558, 36.837135, 28.002283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935007, 36.448513, 27.977961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398967, 0.036644, 0.916233,
		-0.887942, 0.233964, -0.396005,
		-0.228877, -0.971554, -0.060806,
		31.866344, 36.157047, 27.959719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341280, 36.828613, 28.198792>,  <32.026558, 36.837135, 28.002283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341280, 36.828613, 28.198792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487543, 36.460121, 28.251890>,  <31.575300, 36.239025, 28.283749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487543, 36.460121, 28.251890>,  <31.341280, 36.828613, 28.198792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487543, 36.460121, 28.251890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453191, -0.051649, 0.889916,
		-0.812966, -0.385563, -0.436381,
		0.365657, -0.921235, 0.132745,
		31.597240, 36.183750, 28.291714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848980, 36.547672, 28.482470>,  <31.341280, 36.828613, 28.198792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848980, 36.547672, 28.482470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140482, 36.290493, 28.576731>,  <31.315382, 36.136185, 28.633287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140482, 36.290493, 28.576731>,  <30.848980, 36.547672, 28.482470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140482, 36.290493, 28.576731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461412, -0.206773, 0.862754,
		-0.505983, -0.737467, -0.447352,
		0.728753, -0.642952, 0.235652,
		31.359108, 36.097607, 28.647427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531034, 36.133228, 28.947546>,  <30.848980, 36.547672, 28.482470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531034, 36.133228, 28.947546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916861, 36.044998, 29.005457>,  <31.148355, 35.992062, 29.040203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916861, 36.044998, 29.005457>,  <30.531034, 36.133228, 28.947546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916861, 36.044998, 29.005457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188712, -0.193270, 0.962826,
		-0.184366, -0.956037, -0.228042,
		0.964571, -0.220547, 0.144783,
		31.206230, 35.978825, 29.048889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537117, 35.479641, 29.244637>,  <30.531034, 36.133228, 28.947546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537117, 35.479641, 29.244637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879395, 35.665298, 29.336170>,  <31.084761, 35.776691, 29.391090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879395, 35.665298, 29.336170>,  <30.537117, 35.479641, 29.244637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879395, 35.665298, 29.336170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119426, -0.253148, 0.960028,
		0.503517, -0.848816, -0.161186,
		0.855691, 0.464141, 0.228835,
		31.136103, 35.804543, 29.404821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867918, 34.979622, 29.679085>,  <30.537117, 35.479641, 29.244637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867918, 34.979622, 29.679085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062426, 35.324238, 29.737459>,  <31.179131, 35.531006, 29.772484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062426, 35.324238, 29.737459>,  <30.867918, 34.979622, 29.679085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062426, 35.324238, 29.737459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101731, -0.221696, 0.969795,
		0.867867, -0.456735, -0.195449,
		0.486269, 0.861536, 0.145938,
		31.208307, 35.582699, 29.781240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532455, 34.828945, 29.941452>,  <30.867918, 34.979622, 29.679085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532455, 34.828945, 29.941452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433567, 35.202419, 30.045074>,  <31.374235, 35.426506, 30.107248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433567, 35.202419, 30.045074>,  <31.532455, 34.828945, 29.941452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433567, 35.202419, 30.045074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179142, -0.306789, 0.934767,
		0.952256, 0.184684, 0.243107,
		-0.247219, 0.933688, 0.259057,
		31.359402, 35.482525, 30.122791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859097, 34.984921, 30.516794>,  <31.532455, 34.828945, 29.941452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859097, 34.984921, 30.516794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572483, 35.263939, 30.518007>,  <31.400515, 35.431351, 30.518734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572483, 35.263939, 30.518007>,  <31.859097, 34.984921, 30.516794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572483, 35.263939, 30.518007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148063, -0.156335, 0.976543,
		0.681659, 0.699276, 0.215300,
		-0.716532, 0.697548, 0.003031,
		31.357523, 35.473202, 30.518917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938541, 35.435917, 31.049116>,  <31.859097, 34.984921, 30.516794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938541, 35.435917, 31.049116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550451, 35.515102, 30.993298>,  <31.317596, 35.562614, 30.959806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550451, 35.515102, 30.993298>,  <31.938541, 35.435917, 31.049116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550451, 35.515102, 30.993298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124562, 0.086281, 0.988453,
		0.207716, 0.976405, -0.059053,
		-0.970226, 0.197962, -0.139545,
		31.259384, 35.574490, 30.951433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732750, 35.830734, 31.558393>,  <31.938541, 35.435917, 31.049116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732750, 35.830734, 31.558393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359764, 35.736076, 31.449207>,  <31.135973, 35.679283, 31.383696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359764, 35.736076, 31.449207>,  <31.732750, 35.830734, 31.558393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359764, 35.736076, 31.449207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254008, -0.107818, 0.961174,
		-0.256884, 0.965596, 0.040427,
		-0.932465, -0.236642, -0.272965,
		31.080025, 35.665085, 31.367317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341499, 36.286411, 31.891293>,  <31.732750, 35.830734, 31.558393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341499, 36.286411, 31.891293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074320, 35.999290, 31.812693>,  <30.914013, 35.827019, 31.765532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074320, 35.999290, 31.812693>,  <31.341499, 36.286411, 31.891293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074320, 35.999290, 31.812693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384389, 0.106662, 0.916989,
		-0.637253, 0.688034, -0.347159,
		-0.667948, -0.717797, -0.196502,
		30.873936, 35.783951, 31.753742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848558, 36.510704, 32.274845>,  <31.341499, 36.286411, 31.891293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848558, 36.510704, 32.274845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737940, 36.132626, 32.205410>,  <30.671568, 35.905781, 32.163750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737940, 36.132626, 32.205410>,  <30.848558, 36.510704, 32.274845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737940, 36.132626, 32.205410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528843, -0.001142, 0.848719,
		-0.802400, 0.326515, -0.499542,
		-0.276549, -0.945191, -0.173592,
		30.654976, 35.849068, 32.153332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120104, 36.390217, 32.425930>,  <30.848558, 36.510704, 32.274845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120104, 36.390217, 32.425930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271009, 36.022308, 32.469185>,  <30.361553, 35.801563, 32.495136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271009, 36.022308, 32.469185>,  <30.120104, 36.390217, 32.425930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271009, 36.022308, 32.469185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525768, -0.116589, 0.842600,
		-0.762392, -0.374736, -0.527571,
		0.377262, -0.919772, 0.108138,
		30.384188, 35.746376, 32.501625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535515, 36.149372, 32.788307>,  <30.120104, 36.390217, 32.425930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535515, 36.149372, 32.788307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813635, 35.864162, 32.824417>,  <29.980507, 35.693035, 32.846085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813635, 35.864162, 32.824417>,  <29.535515, 36.149372, 32.788307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813635, 35.864162, 32.824417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354493, -0.230960, 0.906086,
		-0.625215, -0.662003, -0.413350,
		0.695298, -0.713029, 0.090276,
		30.022224, 35.650253, 32.851501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127201, 35.530392, 32.834263>,  <29.535515, 36.149372, 32.788307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127201, 35.530392, 32.834263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484821, 35.450966, 32.994884>,  <29.699394, 35.403313, 33.091259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484821, 35.450966, 32.994884>,  <29.127201, 35.530392, 32.834263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484821, 35.450966, 32.994884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447731, -0.367010, 0.815378,
		-0.014528, -0.908778, -0.417028,
		0.894050, -0.198562, 0.401556,
		29.753036, 35.391396, 33.115353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987741, 34.945812, 33.179333>,  <29.127201, 35.530392, 32.834263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987741, 34.945812, 33.179333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320946, 35.092636, 33.344913>,  <29.520868, 35.180729, 33.444263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320946, 35.092636, 33.344913>,  <28.987741, 34.945812, 33.179333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320946, 35.092636, 33.344913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236517, -0.440136, 0.866222,
		0.500152, -0.819480, -0.279823,
		0.833012, 0.367060, 0.413956,
		29.570848, 35.202755, 33.469101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219961, 34.451153, 33.514248>,  <28.987741, 34.945812, 33.179333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219961, 34.451153, 33.514248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394674, 34.763386, 33.693092>,  <29.499502, 34.950726, 33.800400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394674, 34.763386, 33.693092>,  <29.219961, 34.451153, 33.514248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394674, 34.763386, 33.693092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043815, -0.477982, 0.877276,
		0.898500, -0.402768, -0.174572,
		0.436781, 0.780584, 0.447114,
		29.525709, 34.997562, 33.827225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764141, 34.151321, 34.025738>,  <29.219961, 34.451153, 33.514248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764141, 34.151321, 34.025738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690716, 34.520973, 34.159779>,  <29.646662, 34.742764, 34.240204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690716, 34.520973, 34.159779>,  <29.764141, 34.151321, 34.025738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690716, 34.520973, 34.159779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202120, -0.298128, 0.932881,
		0.962005, 0.238971, -0.132060,
		-0.183561, 0.924128, 0.335101,
		29.635647, 34.798210, 34.260307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405443, 34.352547, 34.284946>,  <29.764141, 34.151321, 34.025738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405443, 34.352547, 34.284946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133865, 34.614220, 34.418262>,  <29.970919, 34.771225, 34.498253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133865, 34.614220, 34.418262>,  <30.405443, 34.352547, 34.284946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133865, 34.614220, 34.418262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248248, -0.222664, 0.942758,
		0.690948, 0.722818, -0.011224,
		-0.678943, 0.654183, 0.333287,
		29.930182, 34.810474, 34.518250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608221, 34.809048, 34.784168>,  <30.405443, 34.352547, 34.284946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608221, 34.809048, 34.784168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221043, 34.798687, 34.884098>,  <29.988735, 34.792473, 34.944057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221043, 34.798687, 34.884098>,  <30.608221, 34.809048, 34.784168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221043, 34.798687, 34.884098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249927, -0.000737, 0.968264,
		-0.024894, 0.999664, 0.007187,
		-0.967945, -0.025900, 0.249825,
		29.930658, 34.790916, 34.959045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615515, 35.146080, 35.409012>,  <30.608221, 34.809048, 34.784168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615515, 35.146080, 35.409012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251869, 34.979565, 35.403107>,  <30.033682, 34.879654, 35.399563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251869, 34.979565, 35.403107>,  <30.615515, 35.146080, 35.409012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251869, 34.979565, 35.403107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067354, -0.181890, 0.981009,
		-0.411070, 0.890853, 0.193397,
		-0.909112, -0.416289, -0.014767,
		29.979136, 34.854679, 35.398678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194952, 35.441196, 35.953590>,  <30.615515, 35.146080, 35.409012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194952, 35.441196, 35.953590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080837, 35.071621, 35.851646>,  <30.012369, 34.849876, 35.790482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080837, 35.071621, 35.851646>,  <30.194952, 35.441196, 35.953590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080837, 35.071621, 35.851646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119554, -0.298137, 0.947007,
		-0.950957, 0.239698, 0.195514,
		-0.285286, -0.923937, -0.254859,
		29.995251, 34.794441, 35.775188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629812, 35.312611, 36.327606>,  <30.194952, 35.441196, 35.953590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629812, 35.312611, 36.327606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838028, 34.986309, 36.226738>,  <29.962957, 34.790527, 36.166218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838028, 34.986309, 36.226738>,  <29.629812, 35.312611, 36.327606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838028, 34.986309, 36.226738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002499, -0.293880, 0.955839,
		-0.853835, -0.498180, -0.150937,
		0.520537, -0.815752, -0.252170,
		29.994190, 34.741585, 36.151089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388681, 34.638657, 36.492111>,  <29.629812, 35.312611, 36.327606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388681, 34.638657, 36.492111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782768, 34.640816, 36.560600>,  <30.019220, 34.642109, 36.601692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782768, 34.640816, 36.560600>,  <29.388681, 34.638657, 36.492111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782768, 34.640816, 36.560600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171232, 0.060321, 0.983382,
		-0.005020, -0.998164, 0.060353,
		0.985218, 0.005397, 0.171221,
		30.078333, 34.642433, 36.611965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624229, 34.217892, 37.075066>,  <29.388681, 34.638657, 36.492111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.624229, 34.217892, 37.075066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926521, 34.478573, 37.049294>,  <30.107897, 34.634983, 37.033829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926521, 34.478573, 37.049294>,  <29.624229, 34.217892, 37.075066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926521, 34.478573, 37.049294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131142, -0.054204, 0.989881,
		0.641620, -0.756531, -0.126430,
		0.755729, 0.651708, -0.064435,
		30.153240, 34.674084, 37.029964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359112, 34.062138, 36.775208>,  <29.624229, 34.217892, 37.075066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359112, 34.062138, 36.775208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474422, 33.686966, 36.852337>,  <30.543610, 33.461861, 36.898613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474422, 33.686966, 36.852337>,  <30.359112, 34.062138, 36.775208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474422, 33.686966, 36.852337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293009, -0.105306, -0.950293,
		0.911615, 0.330445, 0.244465,
		0.288276, -0.937932, 0.192822,
		30.560905, 33.405586, 36.910183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009525, 34.088493, 36.447243>,  <30.359112, 34.062138, 36.775208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009525, 34.088493, 36.447243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836288, 33.733604, 36.510822>,  <30.732346, 33.520672, 36.548969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836288, 33.733604, 36.510822>,  <31.009525, 34.088493, 36.447243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836288, 33.733604, 36.510822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224812, -0.277104, -0.934170,
		0.872864, -0.368847, 0.319470,
		-0.433092, -0.887223, 0.158953,
		30.706360, 33.467438, 36.558510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461643, 33.599155, 36.184155>,  <31.009525, 34.088493, 36.447243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461643, 33.599155, 36.184155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079298, 33.482868, 36.167141>,  <30.849892, 33.413094, 36.156933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079298, 33.482868, 36.167141>,  <31.461643, 33.599155, 36.184155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079298, 33.482868, 36.167141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080982, -0.121541, -0.989277,
		0.282434, -0.949057, 0.139719,
		-0.955862, -0.290720, -0.042530,
		30.792540, 33.395653, 36.154381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175426, 33.523186, 35.524841>,  <31.461643, 33.599155, 36.184155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175426, 33.523186, 35.524841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496708, 33.402596, 35.319324>,  <31.689476, 33.330242, 35.196014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496708, 33.402596, 35.319324>,  <31.175426, 33.523186, 35.524841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496708, 33.402596, 35.319324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419445, -0.326225, 0.847138,
		-0.423005, -0.895928, -0.135570,
		0.803201, -0.301479, -0.513787,
		31.737669, 33.312153, 35.165188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417782, 32.893421, 35.866802>,  <31.175426, 33.523186, 35.524841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417782, 32.893421, 35.866802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727261, 33.051811, 35.668976>,  <31.912947, 33.146847, 35.550282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727261, 33.051811, 35.668976>,  <31.417782, 32.893421, 35.866802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727261, 33.051811, 35.668976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573760, -0.106869, 0.812021,
		0.268690, -0.912019, -0.309881,
		0.773696, 0.395979, -0.494566,
		31.959370, 33.170605, 35.520607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075500, 32.495182, 36.045200>,  <31.417782, 32.893421, 35.866802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075500, 32.495182, 36.045200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198231, 32.856033, 35.923855>,  <32.271870, 33.072544, 35.851048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198231, 32.856033, 35.923855>,  <32.075500, 32.495182, 36.045200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198231, 32.856033, 35.923855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558055, 0.087678, 0.825159,
		0.770994, -0.422474, -0.476533,
		0.306827, 0.902124, -0.303363,
		32.290279, 33.126671, 35.832848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808231, 32.442265, 36.091843>,  <32.075500, 32.495182, 36.045200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808231, 32.442265, 36.091843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728374, 32.832512, 36.055389>,  <32.680462, 33.066662, 36.033516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728374, 32.832512, 36.055389>,  <32.808231, 32.442265, 36.091843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728374, 32.832512, 36.055389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601709, 0.195471, 0.774428,
		0.773362, 0.099772, -0.626064,
		-0.199644, 0.975621, -0.091136,
		32.668480, 33.125198, 36.028049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430256, 32.901592, 36.220039>,  <32.808231, 32.442265, 36.091843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430256, 32.901592, 36.220039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143555, 33.173080, 36.284046>,  <32.971535, 33.335972, 36.322453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143555, 33.173080, 36.284046>,  <33.430256, 32.901592, 36.220039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143555, 33.173080, 36.284046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534962, 0.387989, 0.750520,
		0.447308, 0.623540, -0.641181,
		-0.716750, 0.678721, 0.160019,
		32.928528, 33.376698, 36.332050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741768, 33.601643, 36.263969>,  <33.430256, 32.901592, 36.220039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741768, 33.601643, 36.263969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394047, 33.611389, 36.461441>,  <33.185413, 33.617237, 36.579926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394047, 33.611389, 36.461441>,  <33.741768, 33.601643, 36.263969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394047, 33.611389, 36.461441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474983, 0.317531, 0.820710,
		-0.136763, 0.947935, -0.287603,
		-0.869302, 0.024364, 0.493680,
		33.133255, 33.618698, 36.609547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793381, 34.150047, 36.739361>,  <33.741768, 33.601643, 36.263969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793381, 34.150047, 36.739361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489983, 33.932384, 36.882793>,  <33.307945, 33.801788, 36.968853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489983, 33.932384, 36.882793>,  <33.793381, 34.150047, 36.739361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489983, 33.932384, 36.882793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402930, 0.040866, 0.914318,
		-0.512183, 0.837990, 0.188259,
		-0.758496, -0.544153, 0.358582,
		33.262432, 33.769138, 36.990368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764442, 34.428257, 37.373699>,  <33.793381, 34.150047, 36.739361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764442, 34.428257, 37.373699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566788, 34.082779, 37.413422>,  <33.448196, 33.875492, 37.437256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566788, 34.082779, 37.413422>,  <33.764442, 34.428257, 37.373699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566788, 34.082779, 37.413422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343818, -0.089221, 0.934788,
		-0.798512, 0.496054, 0.341041,
		-0.494133, -0.863696, 0.099308,
		33.418549, 33.823669, 37.443214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416496, 34.559944, 38.005527>,  <33.764442, 34.428257, 37.373699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416496, 34.559944, 38.005527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431587, 34.165840, 37.938782>,  <33.440639, 33.929379, 37.898735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431587, 34.165840, 37.938782>,  <33.416496, 34.559944, 38.005527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431587, 34.165840, 37.938782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220227, -0.154682, 0.963106,
		-0.974719, -0.073081, 0.211145,
		0.037725, -0.985258, -0.166866,
		33.442905, 33.870262, 37.888721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213974, 34.303524, 38.628616>,  <33.416496, 34.559944, 38.005527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213974, 34.303524, 38.628616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375038, 33.982018, 38.453426>,  <33.471676, 33.789112, 38.348312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375038, 33.982018, 38.453426>,  <33.213974, 34.303524, 38.628616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375038, 33.982018, 38.453426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349733, -0.307084, 0.885091,
		-0.845901, -0.509569, 0.157452,
		0.402665, -0.803766, -0.437976,
		33.495838, 33.740887, 38.322033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017315, 33.725113, 39.024719>,  <33.213974, 34.303524, 38.628616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017315, 33.725113, 39.024719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335762, 33.605412, 38.814331>,  <33.526829, 33.533592, 38.688099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335762, 33.605412, 38.814331>,  <33.017315, 33.725113, 39.024719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335762, 33.605412, 38.814331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404170, -0.383949, 0.830198,
		-0.450390, -0.873515, -0.184717,
		0.796113, -0.299257, -0.525976,
		33.574596, 33.515636, 38.656540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183163, 33.028481, 39.197010>,  <33.017315, 33.725113, 39.024719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183163, 33.028481, 39.197010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528267, 33.168442, 39.051018>,  <33.735329, 33.252419, 38.963425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528267, 33.168442, 39.051018>,  <33.183163, 33.028481, 39.197010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528267, 33.168442, 39.051018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492707, -0.419812, 0.762232,
		0.113484, -0.837453, -0.534597,
		0.862763, 0.349901, -0.364977,
		33.787094, 33.273411, 38.941525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661942, 32.398525, 39.149792>,  <33.183163, 33.028481, 39.197010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661942, 32.398525, 39.149792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893188, 32.724312, 39.130112>,  <34.031937, 32.919785, 39.118301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893188, 32.724312, 39.130112>,  <33.661942, 32.398525, 39.149792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893188, 32.724312, 39.130112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624143, -0.402575, 0.669611,
		0.525568, -0.417825, -0.741081,
		0.578121, 0.814466, -0.049202,
		34.066624, 32.968651, 39.115353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307480, 32.166904, 38.971439>,  <33.661942, 32.398525, 39.149792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307480, 32.166904, 38.971439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292946, 32.494930, 39.199886>,  <34.284225, 32.691746, 39.336952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292946, 32.494930, 39.199886>,  <34.307480, 32.166904, 38.971439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292946, 32.494930, 39.199886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578011, -0.448953, 0.681429,
		0.815220, 0.354869, -0.457695,
		-0.036335, 0.820067, 0.571113,
		34.282047, 32.740952, 39.371220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926937, 32.218685, 39.355774>,  <34.307480, 32.166904, 38.971439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926937, 32.218685, 39.355774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725540, 32.484596, 39.576523>,  <34.604702, 32.644142, 39.708973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725540, 32.484596, 39.576523>,  <34.926937, 32.218685, 39.355774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725540, 32.484596, 39.576523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499196, -0.297514, 0.813811,
		0.705194, 0.685241, -0.182059,
		-0.503492, 0.664778, 0.551875,
		34.574493, 32.684029, 39.742085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416740, 32.570923, 39.823662>,  <34.926937, 32.218685, 39.355774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416740, 32.570923, 39.823662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064198, 32.636673, 40.000835>,  <34.852673, 32.676125, 40.107140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064198, 32.636673, 40.000835>,  <35.416740, 32.570923, 39.823662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064198, 32.636673, 40.000835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397729, -0.247859, 0.883390,
		0.254995, 0.954749, 0.153074,
		-0.881356, 0.164378, 0.442934,
		34.799789, 32.685986, 40.133717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571033, 32.711464, 40.456474>,  <35.416740, 32.570923, 39.823662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571033, 32.711464, 40.456474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180405, 32.636620, 40.498989>,  <34.946026, 32.591713, 40.524498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180405, 32.636620, 40.498989>,  <35.571033, 32.711464, 40.456474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180405, 32.636620, 40.498989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161758, -0.312530, 0.936034,
		-0.141927, 0.931297, 0.335475,
		-0.976571, -0.187115, 0.106288,
		34.887432, 32.580486, 40.530876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304665, 32.993900, 41.058083>,  <35.571033, 32.711464, 40.456474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304665, 32.993900, 41.058083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033058, 32.707542, 40.993053>,  <34.870094, 32.535728, 40.954037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033058, 32.707542, 40.993053>,  <35.304665, 32.993900, 41.058083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033058, 32.707542, 40.993053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187246, -0.383016, 0.904565,
		-0.709838, 0.583778, 0.394123,
		-0.679020, -0.715893, -0.162570,
		34.829353, 32.492775, 40.944283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925667, 32.952667, 41.715263>,  <35.304665, 32.993900, 41.058083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925667, 32.952667, 41.715263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826729, 32.631630, 41.498131>,  <34.767365, 32.439007, 41.367851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826729, 32.631630, 41.498131>,  <34.925667, 32.952667, 41.715263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826729, 32.631630, 41.498131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135619, -0.526046, 0.839573,
		-0.959388, 0.281285, 0.021271,
		-0.247349, -0.802592, -0.542830,
		34.752525, 32.390854, 41.335281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396317, 32.722904, 42.055351>,  <34.925667, 32.952667, 41.715263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396317, 32.722904, 42.055351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557018, 32.426647, 41.839928>,  <34.653439, 32.248894, 41.710674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557018, 32.426647, 41.839928>,  <34.396317, 32.722904, 42.055351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557018, 32.426647, 41.839928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002776, -0.587118, 0.809497,
		-0.915743, -0.326715, -0.233821,
		0.401755, -0.740642, -0.538556,
		34.677544, 32.204456, 41.678360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967922, 32.142319, 42.332207>,  <34.396317, 32.722904, 42.055351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967922, 32.142319, 42.332207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290703, 31.979727, 42.160809>,  <34.484371, 31.882172, 42.057972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290703, 31.979727, 42.160809>,  <33.967922, 32.142319, 42.332207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290703, 31.979727, 42.160809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043906, -0.682204, 0.729843,
		-0.588981, -0.607762, -0.532660,
		0.806953, -0.406477, -0.428489,
		34.532787, 31.857782, 42.032261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834042, 31.420750, 42.372055>,  <33.967922, 32.142319, 42.332207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834042, 31.420750, 42.372055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225941, 31.451977, 42.298306>,  <34.461082, 31.470713, 42.254055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225941, 31.451977, 42.298306>,  <33.834042, 31.420750, 42.372055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225941, 31.451977, 42.298306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188034, -0.675116, 0.713345,
		-0.068783, -0.733569, -0.676125,
		0.979751, 0.078069, -0.184372,
		34.519867, 31.475397, 42.242992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954861, 30.756744, 42.362709>,  <33.834042, 31.420750, 42.372055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954861, 30.756744, 42.362709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297047, 30.959345, 42.405857>,  <34.502357, 31.080906, 42.431744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297047, 30.959345, 42.405857>,  <33.954861, 30.756744, 42.362709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297047, 30.959345, 42.405857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247912, -0.583423, 0.773406,
		0.454665, -0.634880, -0.624665,
		0.855465, 0.506503, 0.107867,
		34.553684, 31.111296, 42.438217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445015, 30.193937, 42.414162>,  <33.954861, 30.756744, 42.362709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445015, 30.193937, 42.414162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585670, 30.523861, 42.591267>,  <34.670063, 30.721815, 42.697529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585670, 30.523861, 42.591267>,  <34.445015, 30.193937, 42.414162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585670, 30.523861, 42.591267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176779, -0.522968, 0.833819,
		0.919291, -0.214935, -0.329706,
		0.351643, 0.824807, 0.442764,
		34.691162, 30.771303, 42.724094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960140, 29.928762, 42.875526>,  <34.445015, 30.193937, 42.414162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960140, 29.928762, 42.875526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862663, 30.280493, 43.039185>,  <34.804176, 30.491531, 43.137379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862663, 30.280493, 43.039185>,  <34.960140, 29.928762, 42.875526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862663, 30.280493, 43.039185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061172, -0.407087, 0.911339,
		0.967921, 0.247114, 0.045413,
		-0.243692, 0.879326, 0.409144,
		34.789555, 30.544291, 43.161926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507164, 30.051464, 43.301670>,  <34.960140, 29.928762, 42.875526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507164, 30.051464, 43.301670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216892, 30.278137, 43.457752>,  <35.042728, 30.414141, 43.551399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216892, 30.278137, 43.457752>,  <35.507164, 30.051464, 43.301670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216892, 30.278137, 43.457752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294811, -0.256325, 0.920534,
		0.621670, 0.783050, 0.018946,
		-0.725681, 0.566683, 0.390202,
		34.999187, 30.448143, 43.574814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766079, 30.180439, 43.919872>,  <35.507164, 30.051464, 43.301670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766079, 30.180439, 43.919872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398323, 30.315983, 43.999763>,  <35.177670, 30.397308, 44.047699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398323, 30.315983, 43.999763>,  <35.766079, 30.180439, 43.919872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398323, 30.315983, 43.999763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093186, -0.305665, 0.947568,
		0.382140, 0.889800, 0.249450,
		-0.919394, 0.338858, 0.199724,
		35.122505, 30.417641, 44.059681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888844, 30.568087, 44.523457>,  <35.766079, 30.180439, 43.919872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888844, 30.568087, 44.523457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505466, 30.455547, 44.504570>,  <35.275440, 30.388023, 44.493237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505466, 30.455547, 44.504570>,  <35.888844, 30.568087, 44.523457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505466, 30.455547, 44.504570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015346, -0.216116, 0.976247,
		-0.284872, 0.934952, 0.211452,
		-0.958443, -0.281350, -0.047218,
		35.217934, 30.371141, 44.490406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520412, 30.825134, 45.147587>,  <35.888844, 30.568087, 44.523457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520412, 30.825134, 45.147587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288113, 30.528532, 45.013184>,  <35.148731, 30.350571, 44.932541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288113, 30.528532, 45.013184>,  <35.520412, 30.825134, 45.147587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288113, 30.528532, 45.013184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052220, -0.377962, 0.924347,
		-0.812405, 0.554362, 0.180781,
		-0.580751, -0.741503, -0.336007,
		35.113888, 30.306082, 44.912380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899628, 30.871572, 45.613876>,  <35.520412, 30.825134, 45.147587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899628, 30.871572, 45.613876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919621, 30.503796, 45.457863>,  <34.931614, 30.283131, 45.364254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919621, 30.503796, 45.457863>,  <34.899628, 30.871572, 45.613876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919621, 30.503796, 45.457863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048637, -0.387822, 0.920450,
		-0.997565, -0.064972, 0.025337,
		0.049978, -0.919441, -0.390038,
		34.934612, 30.227962, 45.340851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318275, 30.534067, 45.792797>,  <34.899628, 30.871572, 45.613876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318275, 30.534067, 45.792797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576275, 30.242838, 45.699947>,  <34.731075, 30.068100, 45.644238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576275, 30.242838, 45.699947>,  <34.318275, 30.534067, 45.792797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576275, 30.242838, 45.699947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199400, -0.453585, 0.868620,
		-0.737711, -0.513971, -0.437740,
		0.644998, -0.728075, -0.232129,
		34.769775, 30.024416, 45.630310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071739, 29.973309, 46.022499>,  <34.318275, 30.534067, 45.792797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071739, 29.973309, 46.022499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447411, 29.844376, 45.975086>,  <34.672813, 29.767017, 45.946640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447411, 29.844376, 45.975086>,  <34.071739, 29.973309, 46.022499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447411, 29.844376, 45.975086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046922, -0.462325, 0.885468,
		-0.340210, -0.826051, -0.449330,
		0.939178, -0.322328, -0.118527,
		34.729164, 29.747677, 45.939529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052963, 29.255013, 46.275017>,  <34.071739, 29.973309, 46.022499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052963, 29.255013, 46.275017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433899, 29.374399, 46.249825>,  <34.662460, 29.446032, 46.234707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433899, 29.374399, 46.249825>,  <34.052963, 29.255013, 46.275017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433899, 29.374399, 46.249825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212089, -0.499477, 0.839965,
		0.219245, -0.813289, -0.538974,
		0.952339, 0.298468, -0.062982,
		34.719601, 29.463940, 46.230930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486530, 28.733585, 46.475990>,  <34.052963, 29.255013, 46.275017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486530, 28.733585, 46.475990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739727, 29.035406, 46.545242>,  <34.891644, 29.216499, 46.586796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739727, 29.035406, 46.545242>,  <34.486530, 28.733585, 46.475990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739727, 29.035406, 46.545242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196724, -0.373075, 0.906705,
		0.748748, -0.539876, -0.384591,
		0.632990, 0.754552, 0.173132,
		34.929623, 29.261772, 46.597183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080173, 28.392342, 46.680145>,  <34.486530, 28.733585, 46.475990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080173, 28.392342, 46.680145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099323, 28.774361, 46.797169>,  <35.110813, 29.003572, 46.867382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099323, 28.774361, 46.797169>,  <35.080173, 28.392342, 46.680145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099323, 28.774361, 46.797169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259811, -0.294721, 0.919586,
		0.964472, 0.031983, -0.262242,
		0.047877, 0.955048, 0.292559,
		35.113686, 29.060875, 46.884937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630810, 28.371574, 47.006763>,  <35.080173, 28.392342, 46.680145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630810, 28.371574, 47.006763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426304, 28.675663, 47.167095>,  <35.303600, 28.858116, 47.263294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426304, 28.675663, 47.167095>,  <35.630810, 28.371574, 47.006763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426304, 28.675663, 47.167095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208414, -0.342802, 0.915997,
		0.833768, 0.551859, 0.016822,
		-0.511267, 0.760223, 0.400833,
		35.272923, 28.903730, 47.287346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054287, 28.611565, 47.509930>,  <35.630810, 28.371574, 47.006763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054287, 28.611565, 47.509930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674896, 28.711372, 47.588039>,  <35.447262, 28.771257, 47.634907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674896, 28.711372, 47.588039>,  <36.054287, 28.611565, 47.509930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674896, 28.711372, 47.588039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130131, -0.255162, 0.958101,
		0.288891, 0.934148, 0.209545,
		-0.948477, 0.249518, 0.195276,
		35.390354, 28.786228, 47.646622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041065, 29.112885, 47.982731>,  <36.054287, 28.611565, 47.509930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041065, 29.112885, 47.982731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682186, 28.939079, 48.014313>,  <35.466858, 28.834797, 48.033260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682186, 28.939079, 48.014313>,  <36.041065, 29.112885, 47.982731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682186, 28.939079, 48.014313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206687, -0.255146, 0.944553,
		-0.390276, 0.863770, 0.318724,
		-0.897199, -0.434512, 0.078953,
		35.413025, 28.808725, 48.037998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991898, 29.145527, 48.755085>,  <36.041065, 29.112885, 47.982731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991898, 29.145527, 48.755085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670971, 28.938438, 48.636257>,  <35.478416, 28.814186, 48.564960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670971, 28.938438, 48.636257>,  <35.991898, 29.145527, 48.755085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670971, 28.938438, 48.636257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159227, -0.294024, 0.942442,
		-0.575269, 0.803439, 0.153465,
		-0.802317, -0.517721, -0.297072,
		35.430275, 28.783121, 48.547134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416576, 29.331556, 49.128441>,  <35.991898, 29.145527, 48.755085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416576, 29.331556, 49.128441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347099, 28.956491, 49.008026>,  <35.305412, 28.731453, 48.935776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347099, 28.956491, 49.008026>,  <35.416576, 29.331556, 49.128441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347099, 28.956491, 49.008026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113178, -0.322662, 0.939724,
		-0.978276, 0.129149, 0.162166,
		-0.173689, -0.937662, -0.301035,
		35.294994, 28.675194, 48.917717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046074, 29.074671, 49.711498>,  <35.416576, 29.331556, 49.128441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046074, 29.074671, 49.711498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194229, 28.761288, 49.511894>,  <35.283119, 28.573257, 49.392132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194229, 28.761288, 49.511894>,  <35.046074, 29.074671, 49.711498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194229, 28.761288, 49.511894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144915, -0.481905, 0.864157,
		-0.917506, -0.392383, -0.064955,
		0.370383, -0.783456, -0.499013,
		35.305344, 28.526251, 49.362190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738110, 28.441814, 49.781582>,  <35.046074, 29.074671, 49.711498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738110, 28.441814, 49.781582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128334, 28.392670, 49.708706>,  <35.362469, 28.363182, 49.664982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128334, 28.392670, 49.708706>,  <34.738110, 28.441814, 49.781582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128334, 28.392670, 49.708706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074777, -0.593998, 0.800984,
		-0.206629, -0.795029, -0.570292,
		0.975558, -0.122862, -0.182187,
		35.421001, 28.355810, 49.654049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800114, 27.773468, 49.836292>,  <34.738110, 28.441814, 49.781582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800114, 27.773468, 49.836292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150379, 27.949072, 49.916775>,  <35.360538, 28.054434, 49.965065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150379, 27.949072, 49.916775>,  <34.800114, 27.773468, 49.836292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150379, 27.949072, 49.916775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059357, -0.511327, 0.857334,
		0.479262, -0.738792, -0.473808,
		0.875662, 0.439011, 0.201207,
		35.413078, 28.080774, 49.977139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211029, 27.143120, 50.004719>,  <34.800114, 27.773468, 49.836292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211029, 27.143120, 50.004719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402042, 27.458307, 50.160187>,  <35.516651, 27.647421, 50.253468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402042, 27.458307, 50.160187>,  <35.211029, 27.143120, 50.004719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402042, 27.458307, 50.160187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224349, -0.537058, 0.813164,
		0.849487, -0.301117, -0.433244,
		0.477535, 0.787970, 0.388668,
		35.545303, 27.694698, 50.276787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051701, 27.139477, 50.763271>,  <35.211029, 27.143120, 50.004719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051701, 27.139477, 50.763271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419140, 27.238756, 50.640259>,  <35.639603, 27.298325, 50.566452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419140, 27.238756, 50.640259>,  <35.051701, 27.139477, 50.763271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419140, 27.238756, 50.640259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151782, 0.496921, 0.854419,
		0.364886, -0.831544, 0.418798,
		0.918597, 0.248200, -0.307533,
		35.694717, 27.313215, 50.548000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701408, 26.830662, 51.140469>,  <35.051701, 27.139477, 50.763271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701408, 26.830662, 51.140469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717213, 27.198429, 50.983952>,  <35.726696, 27.419088, 50.890041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717213, 27.198429, 50.983952>,  <35.701408, 26.830662, 51.140469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717213, 27.198429, 50.983952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057046, 0.388886, 0.919518,
		0.997590, -0.058649, -0.037085,
		0.039507, 0.919417, -0.391294,
		35.729065, 27.474255, 50.866562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709999, 26.514467, 50.494183>,  <35.701408, 26.830662, 51.140469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709999, 26.514467, 50.494183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082924, 26.431503, 50.612694>,  <36.306679, 26.381725, 50.683800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082924, 26.431503, 50.612694>,  <35.709999, 26.514467, 50.494183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082924, 26.431503, 50.612694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240379, -0.256697, -0.936122,
		0.270214, 0.943974, -0.189464,
		0.932310, -0.207410, 0.296275,
		36.362617, 26.369280, 50.701576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242355, 26.899982, 49.959705>,  <35.709999, 26.514467, 50.494183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242355, 26.899982, 49.959705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386967, 26.560991, 50.115185>,  <36.473732, 26.357597, 50.208473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386967, 26.560991, 50.115185>,  <36.242355, 26.899982, 49.959705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386967, 26.560991, 50.115185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342215, -0.267181, -0.900834,
		0.867288, 0.458692, 0.193426,
		0.361525, -0.847476, 0.388694,
		36.495426, 26.306747, 50.231792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970394, 26.709587, 49.849918>,  <36.242355, 26.899982, 49.959705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970394, 26.709587, 49.849918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746109, 26.380547, 49.887714>,  <36.611538, 26.183123, 49.910393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746109, 26.380547, 49.887714>,  <36.970394, 26.709587, 49.849918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746109, 26.380547, 49.887714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173469, -0.228292, -0.958014,
		0.809635, -0.520780, 0.270702,
		-0.560713, -0.822600, 0.094494,
		36.577896, 26.133766, 49.916061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222187, 26.087841, 49.410156>,  <36.970394, 26.709587, 49.849918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222187, 26.087841, 49.410156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828796, 26.049936, 49.471859>,  <36.592762, 26.027193, 49.508881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828796, 26.049936, 49.471859>,  <37.222187, 26.087841, 49.410156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828796, 26.049936, 49.471859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147667, -0.073070, -0.986334,
		0.104740, -0.992814, 0.057869,
		-0.983475, -0.094764, 0.154259,
		36.533752, 26.021507, 49.518135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952099, 25.435585, 49.181358>,  <37.222187, 26.087841, 49.410156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952099, 25.435585, 49.181358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672169, 25.720068, 49.154755>,  <36.504211, 25.890759, 49.138794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672169, 25.720068, 49.154755>,  <36.952099, 25.435585, 49.181358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672169, 25.720068, 49.154755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025925, -0.118338, -0.992635,
		-0.713839, -0.692951, 0.101255,
		-0.699829, 0.711207, -0.066510,
		36.462219, 25.933430, 49.134800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456474, 25.188883, 48.670353>,  <36.952099, 25.435585, 49.181358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456474, 25.188883, 48.670353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484497, 25.585125, 48.717323>,  <36.501308, 25.822870, 48.745506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484497, 25.585125, 48.717323>,  <36.456474, 25.188883, 48.670353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484497, 25.585125, 48.717323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034492, 0.115242, -0.992738,
		-0.996947, 0.073595, -0.026095,
		0.070053, 0.990607, 0.117428,
		36.505512, 25.882307, 48.752552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128788, 25.425081, 48.168102>,  <36.456474, 25.188883, 48.670353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128788, 25.425081, 48.168102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299313, 25.771273, 48.273335>,  <36.401627, 25.978987, 48.336475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299313, 25.771273, 48.273335>,  <36.128788, 25.425081, 48.168102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299313, 25.771273, 48.273335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060976, 0.262679, -0.962955,
		-0.902521, 0.426556, 0.059208,
		0.426307, 0.865477, 0.263083,
		36.427204, 26.030916, 48.352261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758698, 25.805490, 47.812950>,  <36.128788, 25.425081, 48.168102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758698, 25.805490, 47.812950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095512, 25.998713, 47.908981>,  <36.297600, 26.114647, 47.966599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095512, 25.998713, 47.908981>,  <35.758698, 25.805490, 47.812950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095512, 25.998713, 47.908981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096663, 0.302729, -0.948162,
		-0.530693, 0.821591, 0.208215,
		0.842034, 0.483056, 0.240074,
		36.348122, 26.143629, 47.981003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778980, 26.372860, 47.456932>,  <35.758698, 25.805490, 47.812950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778980, 26.372860, 47.456932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166561, 26.406027, 47.550098>,  <36.399109, 26.425926, 47.605999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166561, 26.406027, 47.550098>,  <35.778980, 26.372860, 47.456932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166561, 26.406027, 47.550098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198367, 0.301548, -0.932587,
		-0.147563, 0.949839, 0.275739,
		0.968956, 0.082918, 0.232914,
		36.457249, 26.430902, 47.619972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985336, 27.006681, 47.175438>,  <35.778980, 26.372860, 47.456932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985336, 27.006681, 47.175438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309460, 26.783300, 47.246471>,  <36.503933, 26.649273, 47.289093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309460, 26.783300, 47.246471>,  <35.985336, 27.006681, 47.175438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309460, 26.783300, 47.246471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336539, 0.195379, -0.921178,
		0.479736, 0.806200, 0.346258,
		0.810305, -0.558452, 0.177587,
		36.552551, 26.615765, 47.299747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541325, 27.424034, 47.045914>,  <35.985336, 27.006681, 47.175438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541325, 27.424034, 47.045914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652847, 27.044806, 46.984688>,  <36.719761, 26.817268, 46.947952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652847, 27.044806, 46.984688>,  <36.541325, 27.424034, 47.045914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652847, 27.044806, 46.984688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229415, 0.220525, -0.948018,
		0.932542, 0.229200, 0.278985,
		0.278809, -0.948070, -0.153067,
		36.736488, 26.760386, 46.938766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146378, 27.512728, 46.853615>,  <36.541325, 27.424034, 47.045914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146378, 27.512728, 46.853615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069756, 27.141150, 46.726891>,  <37.023785, 26.918203, 46.650856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069756, 27.141150, 46.726891>,  <37.146378, 27.512728, 46.853615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069756, 27.141150, 46.726891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456874, 0.201293, -0.866457,
		0.868663, -0.310714, 0.385852,
		-0.191551, -0.928944, -0.316813,
		37.012291, 26.862467, 46.631847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708492, 27.422329, 46.368454>,  <37.146378, 27.512728, 46.853615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708492, 27.422329, 46.368454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433796, 27.142527, 46.289375>,  <37.268978, 26.974646, 46.241928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433796, 27.142527, 46.289375>,  <37.708492, 27.422329, 46.368454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433796, 27.142527, 46.289375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245272, 0.033030, -0.968891,
		0.684275, -0.713863, 0.148887,
		-0.686738, -0.699506, -0.197693,
		37.227776, 26.932674, 46.230068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026691, 26.977097, 46.050594>,  <37.708492, 27.422329, 46.368454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026691, 26.977097, 46.050594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641842, 26.953812, 45.944073>,  <37.410931, 26.939840, 45.880157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641842, 26.953812, 45.944073>,  <38.026691, 26.977097, 46.050594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641842, 26.953812, 45.944073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242699, 0.261897, -0.934081,
		0.124120, -0.963339, -0.237850,
		-0.962128, -0.058212, -0.266308,
		37.353203, 26.936348, 45.864182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036655, 26.583971, 45.376602>,  <38.026691, 26.977097, 46.050594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036655, 26.583971, 45.376602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682377, 26.768507, 45.397438>,  <37.469810, 26.879229, 45.409939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682377, 26.768507, 45.397438>,  <38.036655, 26.583971, 45.376602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682377, 26.768507, 45.397438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178304, 0.441601, -0.879316,
		-0.428666, -0.769516, -0.473382,
		-0.885694, 0.461339, 0.052092,
		37.416668, 26.906908, 45.413067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799931, 26.547106, 44.707241>,  <38.036655, 26.583971, 45.376602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799931, 26.547106, 44.707241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539513, 26.807989, 44.862553>,  <37.383263, 26.964520, 44.955738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539513, 26.807989, 44.862553>,  <37.799931, 26.547106, 44.707241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539513, 26.807989, 44.862553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031967, 0.487528, -0.872522,
		-0.758365, -0.580464, -0.296554,
		-0.651046, 0.652210, 0.388279,
		37.344200, 27.003653, 44.979038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231083, 26.705557, 44.228733>,  <37.799931, 26.547106, 44.707241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231083, 26.705557, 44.228733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286106, 27.036049, 44.447243>,  <37.319118, 27.234344, 44.578350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286106, 27.036049, 44.447243>,  <37.231083, 26.705557, 44.228733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286106, 27.036049, 44.447243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115641, 0.561147, -0.819598,
		-0.983720, 0.049571, 0.172738,
		0.137559, 0.826231, 0.546279,
		37.327374, 27.283918, 44.611126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732506, 27.127031, 43.984184>,  <37.231083, 26.705557, 44.228733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732506, 27.127031, 43.984184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961369, 27.380096, 44.192944>,  <37.098686, 27.531935, 44.318199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961369, 27.380096, 44.192944>,  <36.732506, 27.127031, 43.984184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961369, 27.380096, 44.192944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189609, 0.721147, -0.666330,
		-0.797927, 0.282288, 0.532566,
		0.572155, 0.632662, 0.521898,
		37.133015, 27.569895, 44.349514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441319, 27.797304, 43.909340>,  <36.732506, 27.127031, 43.984184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441319, 27.797304, 43.909340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793858, 27.918892, 44.054020>,  <37.005383, 27.991844, 44.140827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793858, 27.918892, 44.054020>,  <36.441319, 27.797304, 43.909340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793858, 27.918892, 44.054020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001268, 0.767077, -0.641553,
		-0.472468, 0.564973, 0.676446,
		0.881347, 0.303971, 0.361703,
		37.058262, 28.010084, 44.162533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354038, 28.420408, 44.199333>,  <36.441319, 27.797304, 43.909340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354038, 28.420408, 44.199333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738972, 28.420074, 44.090584>,  <36.969933, 28.419874, 44.025333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738972, 28.420074, 44.090584>,  <36.354038, 28.420408, 44.199333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738972, 28.420074, 44.090584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170505, 0.777043, -0.605914,
		0.211765, 0.629447, 0.747631,
		0.962332, -0.000836, -0.271874,
		37.027672, 28.419823, 44.009022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537636, 29.036507, 44.007862>,  <36.354038, 28.420408, 44.199333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537636, 29.036507, 44.007862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857872, 28.863672, 43.841797>,  <37.050014, 28.759972, 43.742157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857872, 28.863672, 43.841797>,  <36.537636, 29.036507, 44.007862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857872, 28.863672, 43.841797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112842, 0.571735, -0.812642,
		0.588491, 0.697440, 0.408968,
		0.800590, -0.432084, -0.415161,
		37.098049, 28.734047, 43.717247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986359, 29.637270, 43.770668>,  <36.537636, 29.036507, 44.007862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986359, 29.637270, 43.770668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063206, 29.300571, 43.568855>,  <37.109314, 29.098553, 43.447769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063206, 29.300571, 43.568855>,  <36.986359, 29.637270, 43.770668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063206, 29.300571, 43.568855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006707, 0.515222, -0.857030,
		0.981349, 0.161269, 0.104630,
		0.192120, -0.841747, -0.504531,
		37.120842, 29.048048, 43.417496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511349, 29.796370, 43.298473>,  <36.986359, 29.637270, 43.770668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511349, 29.796370, 43.298473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324062, 29.477516, 43.145973>,  <37.211689, 29.286205, 43.054474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324062, 29.477516, 43.145973>,  <37.511349, 29.796370, 43.298473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324062, 29.477516, 43.145973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010008, 0.426656, -0.904359,
		0.883556, -0.427254, -0.191791,
		-0.468219, -0.797132, -0.381250,
		37.183598, 29.238377, 43.031597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741886, 29.742235, 42.617302>,  <37.511349, 29.796370, 43.298473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741886, 29.742235, 42.617302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404037, 29.528419, 42.605404>,  <37.201328, 29.400129, 42.598263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404037, 29.528419, 42.605404>,  <37.741886, 29.742235, 42.617302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404037, 29.528419, 42.605404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264744, 0.465325, -0.844620,
		0.465325, -0.705508, -0.534539,
		0.844620, 0.534539, 0.029748,
		37.150650, 29.368057, 42.596478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652458, 29.595881, 41.999130>,  <37.741886, 29.742235, 42.617302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652458, 29.595881, 41.999130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281834, 29.477612, 42.092133>,  <37.059460, 29.406651, 42.147934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281834, 29.477612, 42.092133>,  <37.652458, 29.595881, 41.999130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281834, 29.477612, 42.092133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323144, 0.309379, -0.894350,
		0.192499, -0.903806, -0.382203,
		-0.926565, -0.295668, 0.232504,
		37.003864, 29.388910, 42.161884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380386, 29.273657, 41.342876>,  <37.652458, 29.595881, 41.999130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380386, 29.273657, 41.342876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065765, 29.385342, 41.563194>,  <36.876991, 29.452353, 41.695385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065765, 29.385342, 41.563194>,  <37.380386, 29.273657, 41.342876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065765, 29.385342, 41.563194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451472, 0.348536, -0.821399,
		-0.421315, -0.894742, -0.148086,
		-0.786554, 0.279211, 0.550795,
		36.829800, 29.469105, 41.728432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833160, 28.859806, 41.073185>,  <37.380386, 29.273657, 41.342876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833160, 28.859806, 41.073185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652130, 29.172567, 41.244675>,  <36.543514, 29.360224, 41.347569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652130, 29.172567, 41.244675>,  <36.833160, 28.859806, 41.073185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652130, 29.172567, 41.244675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426688, 0.232287, -0.874059,
		-0.783017, -0.578508, 0.228502,
		-0.452572, 0.781903, 0.428727,
		36.516357, 29.407139, 41.373291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096977, 28.796791, 40.848846>,  <36.833160, 28.859806, 41.073185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096977, 28.796791, 40.848846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180431, 29.173286, 40.955086>,  <36.230503, 29.399183, 41.018829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180431, 29.173286, 40.955086>,  <36.096977, 28.796791, 40.848846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180431, 29.173286, 40.955086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402506, 0.330149, -0.853809,
		-0.891325, 0.071226, 0.447734,
		0.208632, 0.941237, 0.265602,
		36.243023, 29.455658, 41.034767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501686, 29.096344, 40.570496>,  <36.096977, 28.796791, 40.848846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501686, 29.096344, 40.570496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766861, 29.389910, 40.629673>,  <35.925964, 29.566050, 40.665180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766861, 29.389910, 40.629673>,  <35.501686, 29.096344, 40.570496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766861, 29.389910, 40.629673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125176, 0.303484, -0.944578,
		-0.738140, 0.607673, 0.293058,
		0.662933, 0.733915, 0.147948,
		35.965740, 29.610085, 40.674057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174026, 29.698748, 40.368061>,  <35.501686, 29.096344, 40.570496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174026, 29.698748, 40.368061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556896, 29.809860, 40.335415>,  <35.786617, 29.876528, 40.315826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556896, 29.809860, 40.335415>,  <35.174026, 29.698748, 40.368061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556896, 29.809860, 40.335415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192633, 0.400560, -0.895792,
		-0.216144, 0.873148, 0.436915,
		0.957170, 0.277784, -0.081618,
		35.844048, 29.893196, 40.310928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169304, 30.288759, 40.069977>,  <35.174026, 29.698748, 40.368061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169304, 30.288759, 40.069977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550835, 30.190647, 40.000629>,  <35.779751, 30.131779, 39.959023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550835, 30.190647, 40.000629>,  <35.169304, 30.288759, 40.069977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550835, 30.190647, 40.000629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042760, 0.460422, -0.886670,
		0.297306, 0.853141, 0.428673,
		0.953824, -0.245282, -0.173367,
		35.836983, 30.117062, 39.948620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581848, 30.957994, 39.857876>,  <35.169304, 30.288759, 40.069977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581848, 30.957994, 39.857876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756794, 30.618624, 39.738621>,  <35.861763, 30.415001, 39.667068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756794, 30.618624, 39.738621>,  <35.581848, 30.957994, 39.857876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756794, 30.618624, 39.738621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002570, 0.332701, -0.943029,
		0.899280, 0.411683, 0.147692,
		0.437366, -0.848427, -0.298133,
		35.888004, 30.364096, 39.649181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908894, 31.162403, 39.307812>,  <35.581848, 30.957994, 39.857876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908894, 31.162403, 39.307812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987736, 30.774298, 39.251606>,  <36.035042, 30.541435, 39.217884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987736, 30.774298, 39.251606>,  <35.908894, 31.162403, 39.307812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987736, 30.774298, 39.251606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051375, 0.153350, -0.986835,
		0.979036, 0.187288, 0.080073,
		0.197102, -0.970261, -0.140513,
		36.046867, 30.483219, 39.209454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648830, 31.184908, 39.179302>,  <35.908894, 31.162403, 39.307812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648830, 31.184908, 39.179302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447468, 30.871611, 39.033363>,  <36.326649, 30.683632, 38.945801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447468, 30.871611, 39.033363>,  <36.648830, 31.184908, 39.179302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447468, 30.871611, 39.033363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153696, 0.334345, -0.929834,
		0.850269, -0.524162, -0.047930,
		-0.503408, -0.783242, -0.364845,
		36.296444, 30.636639, 38.923908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875549, 31.089035, 38.415756>,  <36.648830, 31.184908, 39.179302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875549, 31.089035, 38.415756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543453, 30.866095, 38.419075>,  <36.344196, 30.732330, 38.421066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543453, 30.866095, 38.419075>,  <36.875549, 31.089035, 38.415756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543453, 30.866095, 38.419075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133182, 0.183897, -0.973881,
		0.541268, -0.809656, -0.226907,
		-0.830236, -0.557350, 0.008294,
		36.294384, 30.698889, 38.421562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863537, 30.564981, 37.720081>,  <36.875549, 31.089035, 38.415756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863537, 30.564981, 37.720081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486416, 30.642418, 37.828636>,  <36.260143, 30.688879, 37.893768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486416, 30.642418, 37.828636>,  <36.863537, 30.564981, 37.720081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486416, 30.642418, 37.828636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232056, 0.203350, -0.951209,
		-0.239333, -0.959777, -0.146795,
		-0.942799, 0.193591, 0.271390,
		36.203575, 30.700495, 37.910053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507168, 30.422712, 37.174625>,  <36.863537, 30.564981, 37.720081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507168, 30.422712, 37.174625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211685, 30.572628, 37.398716>,  <36.034397, 30.662579, 37.533169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211685, 30.572628, 37.398716>,  <36.507168, 30.422712, 37.174625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211685, 30.572628, 37.398716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508291, 0.236114, -0.828185,
		-0.442672, -0.896539, 0.016085,
		-0.738703, 0.374790, 0.560224,
		35.990074, 30.685064, 37.566784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775127, 30.199051, 36.933842>,  <36.507168, 30.422712, 37.174625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775127, 30.199051, 36.933842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767052, 30.557661, 37.110855>,  <35.762207, 30.772827, 37.217064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767052, 30.557661, 37.110855>,  <35.775127, 30.199051, 36.933842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767052, 30.557661, 37.110855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439748, 0.389549, -0.809242,
		-0.897894, -0.210941, 0.386380,
		-0.020189, 0.896524, 0.442535,
		35.760994, 30.826618, 37.243614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032455, 30.424845, 36.781818>,  <35.775127, 30.199051, 36.933842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032455, 30.424845, 36.781818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274231, 30.734238, 36.858105>,  <35.419296, 30.919874, 36.903877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274231, 30.734238, 36.858105>,  <35.032455, 30.424845, 36.781818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274231, 30.734238, 36.858105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296774, 0.440793, -0.847129,
		-0.739307, 0.455440, 0.495983,
		0.604442, 0.773483, 0.190719,
		35.455563, 30.966282, 36.915321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544552, 31.131006, 36.694447>,  <35.032455, 30.424845, 36.781818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544552, 31.131006, 36.694447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930344, 31.222267, 36.641193>,  <35.161819, 31.277023, 36.609241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930344, 31.222267, 36.641193>,  <34.544552, 31.131006, 36.694447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930344, 31.222267, 36.641193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255080, 0.673427, -0.693852,
		-0.068648, 0.703166, 0.707704,
		0.964480, 0.228153, -0.133135,
		35.219688, 31.290712, 36.601254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507313, 31.805674, 36.942612>,  <34.544552, 31.131006, 36.694447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507313, 31.805674, 36.942612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831982, 31.743172, 36.717484>,  <35.026783, 31.705669, 36.582405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831982, 31.743172, 36.717484>,  <34.507313, 31.805674, 36.942612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831982, 31.743172, 36.717484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270146, 0.753891, -0.598890,
		0.517888, 0.638148, 0.569701,
		0.811673, -0.156256, -0.562824,
		35.075485, 31.696295, 36.548637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690594, 32.450123, 36.764145>,  <34.507313, 31.805674, 36.942612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690594, 32.450123, 36.764145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859936, 32.235725, 36.471985>,  <34.961540, 32.107086, 36.296688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859936, 32.235725, 36.471985>,  <34.690594, 32.450123, 36.764145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859936, 32.235725, 36.471985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292902, 0.681937, -0.670201,
		0.857311, 0.497666, 0.131705,
		0.423351, -0.535995, -0.730400,
		34.986942, 32.074928, 36.252865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787437, 32.980133, 36.135105>,  <34.690594, 32.450123, 36.764145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787437, 32.980133, 36.135105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838638, 32.619217, 35.970432>,  <34.869358, 32.402668, 35.871628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838638, 32.619217, 35.970432>,  <34.787437, 32.980133, 36.135105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838638, 32.619217, 35.970432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494928, 0.301606, -0.814911,
		0.859454, 0.308066, -0.407963,
		0.128002, -0.902291, -0.411687,
		34.877037, 32.348530, 35.846928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141605, 33.225773, 35.544071>,  <34.787437, 32.980133, 36.135105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141605, 33.225773, 35.544071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970062, 32.866085, 35.509468>,  <34.867138, 32.650272, 35.488708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970062, 32.866085, 35.509468>,  <35.141605, 33.225773, 35.544071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970062, 32.866085, 35.509468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473096, 0.305135, -0.826482,
		0.769587, -0.313514, -0.556277,
		-0.428853, -0.899223, -0.086506,
		34.841408, 32.596317, 35.483517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576710, 32.942020, 36.081429>,  <35.141605, 33.225773, 35.544071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576710, 32.942020, 36.081429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659901, 32.746334, 36.420231>,  <35.709816, 32.628922, 36.623512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659901, 32.746334, 36.420231>,  <35.576710, 32.942020, 36.081429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659901, 32.746334, 36.420231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953660, 0.293914, -0.064403,
		-0.217439, 0.821147, 0.527672,
		0.207974, -0.489216, 0.847003,
		35.722294, 32.599567, 36.674332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325958, 32.716370, 36.230537>,  <35.576710, 32.942020, 36.081429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325958, 32.716370, 36.230537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659458, 32.857121, 36.060341>,  <36.859558, 32.941570, 35.958221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659458, 32.857121, 36.060341>,  <36.325958, 32.716370, 36.230537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659458, 32.857121, 36.060341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551912, -0.553284, 0.623915,
		-0.015878, -0.755024, -0.655505,
		0.833751, 0.351875, -0.425492,
		36.909584, 32.962685, 35.932693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760643, 32.201138, 35.924629>,  <36.325958, 32.716370, 36.230537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760643, 32.201138, 35.924629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010139, 32.496513, 36.027122>,  <37.159836, 32.673740, 36.088619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010139, 32.496513, 36.027122>,  <36.760643, 32.201138, 35.924629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010139, 32.496513, 36.027122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564380, -0.652282, 0.505967,
		0.540763, -0.170978, -0.823615,
		0.623739, 0.738440, 0.256234,
		37.197262, 32.718044, 36.103992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388065, 31.956064, 35.945797>,  <36.760643, 32.201138, 35.924629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388065, 31.956064, 35.945797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480778, 32.277653, 36.164852>,  <37.536404, 32.470608, 36.296284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480778, 32.277653, 36.164852>,  <37.388065, 31.956064, 35.945797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480778, 32.277653, 36.164852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587455, -0.564402, 0.579954,
		0.775355, 0.187293, -0.603113,
		0.231777, 0.803972, 0.547638,
		37.550312, 32.518845, 36.329144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133614, 31.930620, 35.982227>,  <37.388065, 31.956064, 35.945797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133614, 31.930620, 35.982227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045326, 32.188023, 36.275398>,  <37.992352, 32.342464, 36.451302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045326, 32.188023, 36.275398>,  <38.133614, 31.930620, 35.982227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045326, 32.188023, 36.275398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768099, -0.348429, 0.537235,
		0.601087, 0.681540, -0.417371,
		-0.220723, 0.643507, 0.732926,
		37.979111, 32.381073, 36.495277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811043, 32.304649, 36.265202>,  <38.133614, 31.930620, 35.982227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811043, 32.304649, 36.265202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553288, 32.341469, 36.568859>,  <38.398636, 32.363560, 36.751053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553288, 32.341469, 36.568859>,  <38.811043, 32.304649, 36.265202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553288, 32.341469, 36.568859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676180, -0.395051, 0.621864,
		0.357140, 0.914036, 0.192325,
		-0.644384, 0.092046, 0.759142,
		38.359974, 32.369083, 36.796600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167843, 32.602379, 36.864235>,  <38.811043, 32.304649, 36.265202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167843, 32.602379, 36.864235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846958, 32.437431, 37.036934>,  <38.654427, 32.338463, 37.140553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846958, 32.437431, 37.036934>,  <39.167843, 32.602379, 36.864235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846958, 32.437431, 37.036934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587426, -0.415918, 0.694221,
		-0.106701, 0.810535, 0.575889,
		-0.802213, -0.412366, 0.431751,
		38.606293, 32.313721, 37.166458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252808, 32.682251, 37.537888>,  <39.167843, 32.602379, 36.864235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252808, 32.682251, 37.537888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978725, 32.391312, 37.522655>,  <38.814278, 32.216747, 37.513515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978725, 32.391312, 37.522655>,  <39.252808, 32.682251, 37.537888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978725, 32.391312, 37.522655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547415, -0.548776, 0.631808,
		-0.480447, 0.412071, 0.774189,
		-0.685206, -0.727353, -0.038084,
		38.773163, 32.173107, 37.511230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014145, 32.544449, 38.199135>,  <39.252808, 32.682251, 37.537888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014145, 32.544449, 38.199135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939629, 32.186234, 38.037491>,  <38.894920, 31.971304, 37.940506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939629, 32.186234, 38.037491>,  <39.014145, 32.544449, 38.199135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939629, 32.186234, 38.037491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555099, -0.435307, 0.708783,
		-0.810655, -0.092279, 0.578207,
		-0.186292, -0.895541, -0.404107,
		38.883739, 31.917572, 37.916260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762627, 32.103043, 38.706619>,  <39.014145, 32.544449, 38.199135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762627, 32.103043, 38.706619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857460, 31.848492, 38.413002>,  <38.914360, 31.695761, 38.236832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857460, 31.848492, 38.413002>,  <38.762627, 32.103043, 38.706619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857460, 31.848492, 38.413002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371276, -0.638873, 0.673792,
		-0.897744, -0.432278, 0.084804,
		0.237086, -0.636379, -0.734038,
		38.928585, 31.657578, 38.192791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445499, 31.436319, 38.919758>,  <38.762627, 32.103043, 38.706619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445499, 31.436319, 38.919758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763420, 31.389023, 38.681664>,  <38.954174, 31.360645, 38.538807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763420, 31.389023, 38.681664>,  <38.445499, 31.436319, 38.919758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763420, 31.389023, 38.681664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400818, -0.634184, 0.661178,
		-0.455667, -0.764088, -0.456659,
		0.794804, -0.118240, -0.595237,
		39.001862, 31.353550, 38.503094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516090, 30.723597, 38.891136>,  <38.445499, 31.436319, 38.919758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516090, 30.723597, 38.891136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880947, 30.839283, 38.774967>,  <39.099861, 30.908695, 38.705265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880947, 30.839283, 38.774967>,  <38.516090, 30.723597, 38.891136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880947, 30.839283, 38.774967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400284, -0.780922, 0.479514,
		-0.088116, -0.553639, -0.828082,
		0.912145, 0.289215, -0.290425,
		39.154591, 30.926048, 38.687840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847153, 30.141411, 38.834351>,  <38.516090, 30.723597, 38.891136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847153, 30.141411, 38.834351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161346, 30.388926, 38.830158>,  <39.349865, 30.537436, 38.827644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161346, 30.388926, 38.830158>,  <38.847153, 30.141411, 38.834351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161346, 30.388926, 38.830158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534747, -0.670089, 0.514807,
		0.311537, -0.409976, -0.857242,
		0.785487, 0.618789, -0.010476,
		39.396992, 30.574562, 38.827015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423191, 29.732101, 38.706833>,  <38.847153, 30.141411, 38.834351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423191, 29.732101, 38.706833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562462, 30.073267, 38.862431>,  <39.646023, 30.277966, 38.955788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562462, 30.073267, 38.862431>,  <39.423191, 29.732101, 38.706833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562462, 30.073267, 38.862431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500185, -0.519975, 0.692417,
		0.792838, -0.046514, -0.607656,
		0.348172, 0.852914, 0.388990,
		39.666912, 30.329142, 38.979126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151314, 29.719381, 38.922157>,  <39.423191, 29.732101, 38.706833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151314, 29.719381, 38.922157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085953, 30.059439, 39.122379>,  <40.046734, 30.263474, 39.242512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085953, 30.059439, 39.122379>,  <40.151314, 29.719381, 38.922157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085953, 30.059439, 39.122379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543410, -0.345908, 0.764888,
		0.823410, 0.396993, -0.405453,
		-0.163406, 0.850144, 0.500554,
		40.036930, 30.314482, 39.272545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815571, 29.879169, 39.224407>,  <40.151314, 29.719381, 38.922157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815571, 29.879169, 39.224407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519592, 30.035339, 39.443516>,  <40.342007, 30.129042, 39.574982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519592, 30.035339, 39.443516>,  <40.815571, 29.879169, 39.224407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519592, 30.035339, 39.443516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352269, -0.468821, 0.810008,
		0.573053, 0.792323, 0.209366,
		-0.739943, 0.390425, 0.547771,
		40.297607, 30.152466, 39.607845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149174, 30.044609, 39.843079>,  <40.815571, 29.879169, 39.224407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149174, 30.044609, 39.843079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764645, 30.022713, 39.951057>,  <40.533928, 30.009575, 40.015842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764645, 30.022713, 39.951057>,  <41.149174, 30.044609, 39.843079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764645, 30.022713, 39.951057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263654, -0.466495, 0.844316,
		0.079709, 0.882828, 0.462883,
		-0.961318, -0.054742, 0.269945,
		40.476250, 30.006290, 40.032040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074558, 30.364195, 40.564880>,  <41.149174, 30.044609, 39.843079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074558, 30.364195, 40.564880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759827, 30.122601, 40.514122>,  <40.570988, 29.977644, 40.483665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759827, 30.122601, 40.514122>,  <41.074558, 30.364195, 40.564880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759827, 30.122601, 40.514122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063905, -0.284239, 0.956621,
		-0.613857, 0.744585, 0.262245,
		-0.786826, -0.603987, -0.126899,
		40.523777, 29.941404, 40.476051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606041, 30.380955, 41.193703>,  <41.074558, 30.364195, 40.564880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606041, 30.380955, 41.193703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486614, 30.042698, 41.016731>,  <40.414959, 29.839745, 40.910549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486614, 30.042698, 41.016731>,  <40.606041, 30.380955, 41.193703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486614, 30.042698, 41.016731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094414, -0.435133, 0.895402,
		-0.949707, 0.309111, 0.050076,
		-0.298569, -0.845642, -0.442433,
		40.397045, 29.789005, 40.884003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956097, 30.206398, 41.505013>,  <40.606041, 30.380955, 41.193703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956097, 30.206398, 41.505013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074539, 29.864126, 41.335243>,  <40.145603, 29.658764, 41.233383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074539, 29.864126, 41.335243>,  <39.956097, 30.206398, 41.505013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074539, 29.864126, 41.335243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336101, -0.509272, 0.792262,
		-0.894068, -0.091946, -0.438393,
		0.296107, -0.855680, -0.424420,
		40.163372, 29.607422, 41.207916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462257, 29.773388, 41.672470>,  <39.956097, 30.206398, 41.505013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462257, 29.773388, 41.672470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776478, 29.544085, 41.579269>,  <39.965012, 29.406504, 41.523350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776478, 29.544085, 41.579269>,  <39.462257, 29.773388, 41.672470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776478, 29.544085, 41.579269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229964, -0.620015, 0.750132,
		-0.574479, -0.535686, -0.618881,
		0.785551, -0.573256, -0.232997,
		40.012142, 29.372107, 41.509369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131210, 29.099342, 41.742714>,  <39.462257, 29.773388, 41.672470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131210, 29.099342, 41.742714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529442, 29.075491, 41.771748>,  <39.768379, 29.061180, 41.789169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529442, 29.075491, 41.771748>,  <39.131210, 29.099342, 41.742714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529442, 29.075491, 41.771748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092850, -0.507309, 0.856748,
		-0.014262, -0.859699, -0.510602,
		0.995578, -0.059628, 0.072588,
		39.828114, 29.057602, 41.793526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380596, 28.490780, 41.917641>,  <39.131210, 29.099342, 41.742714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380596, 28.490780, 41.917641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669056, 28.721422, 42.071243>,  <39.842133, 28.859808, 42.163406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669056, 28.721422, 42.071243>,  <39.380596, 28.490780, 41.917641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669056, 28.721422, 42.071243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125902, -0.435992, 0.891100,
		0.681239, -0.690968, -0.241821,
		0.721153, 0.576606, 0.384008,
		39.885403, 28.894403, 42.186447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887005, 28.101593, 42.299591>,  <39.380596, 28.490780, 41.917641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887005, 28.101593, 42.299591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896332, 28.468584, 42.458431>,  <39.901928, 28.688780, 42.553734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896332, 28.468584, 42.458431>,  <39.887005, 28.101593, 42.299591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896332, 28.468584, 42.458431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057728, -0.397781, 0.915662,
		0.998060, 0.001576, -0.062238,
		0.023314, 0.917479, 0.397100,
		39.903324, 28.743828, 42.577560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350056, 28.068771, 42.867924>,  <39.887005, 28.101593, 42.299591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350056, 28.068771, 42.867924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179043, 28.421684, 42.946705>,  <40.076435, 28.633432, 42.993973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179043, 28.421684, 42.946705>,  <40.350056, 28.068771, 42.867924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179043, 28.421684, 42.946705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033512, -0.202246, 0.978761,
		0.903378, 0.425055, 0.056900,
		-0.427535, 0.882284, 0.196949,
		40.050781, 28.686369, 43.005791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638000, 28.175104, 43.498600>,  <40.350056, 28.068771, 42.867924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638000, 28.175104, 43.498600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333763, 28.431564, 43.539436>,  <40.151218, 28.585440, 43.563938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333763, 28.431564, 43.539436>,  <40.638000, 28.175104, 43.498600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333763, 28.431564, 43.539436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160682, -0.338264, 0.927232,
		0.629028, 0.688844, 0.360303,
		-0.760596, 0.641149, 0.102092,
		40.105583, 28.623909, 43.570065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681988, 28.541996, 44.135498>,  <40.638000, 28.175104, 43.498600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681988, 28.541996, 44.135498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290546, 28.586657, 44.066376>,  <40.055679, 28.613453, 44.024902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290546, 28.586657, 44.066376>,  <40.681988, 28.541996, 44.135498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290546, 28.586657, 44.066376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181042, -0.068365, 0.981096,
		0.097728, 0.991393, 0.087116,
		-0.978608, 0.111652, -0.172802,
		39.996964, 28.620152, 44.014534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463619, 29.195913, 44.430504>,  <40.681988, 28.541996, 44.135498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463619, 29.195913, 44.430504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164665, 28.931253, 44.406372>,  <39.985294, 28.772457, 44.391891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164665, 28.931253, 44.406372>,  <40.463619, 29.195913, 44.430504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164665, 28.931253, 44.406372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067150, -0.015119, 0.997628,
		-0.660993, 0.749660, -0.033130,
		-0.747381, -0.661650, -0.060333,
		39.940453, 28.732758, 44.388271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078510, 29.435436, 44.996277>,  <40.463619, 29.195913, 44.430504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078510, 29.435436, 44.996277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895409, 29.092421, 44.902401>,  <39.785545, 28.886610, 44.846073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895409, 29.092421, 44.902401>,  <40.078510, 29.435436, 44.996277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895409, 29.092421, 44.902401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347511, -0.070399, 0.935030,
		-0.818349, 0.509575, -0.265780,
		-0.457757, -0.857542, -0.234694,
		39.758083, 28.835157, 44.831993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309834, 29.441299, 45.132431>,  <40.078510, 29.435436, 44.996277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309834, 29.441299, 45.132431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426098, 29.058643, 45.139977>,  <39.495857, 28.829050, 45.144505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426098, 29.058643, 45.139977>,  <39.309834, 29.441299, 45.132431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426098, 29.058643, 45.139977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484530, -0.130162, 0.865037,
		-0.825074, -0.260570, -0.501354,
		0.290660, -0.956640, 0.018861,
		39.513294, 28.771650, 45.145634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736298, 29.030924, 45.418491>,  <39.309834, 29.441299, 45.132431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736298, 29.030924, 45.418491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057945, 28.799711, 45.474018>,  <39.250935, 28.660984, 45.507336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057945, 28.799711, 45.474018>,  <38.736298, 29.030924, 45.418491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057945, 28.799711, 45.474018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260603, -0.132883, 0.956257,
		-0.534298, -0.805124, -0.257490,
		0.804122, -0.578029, 0.138819,
		39.299183, 28.626303, 45.515663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497532, 28.613623, 45.860928>,  <38.736298, 29.030924, 45.418491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497532, 28.613623, 45.860928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884045, 28.520311, 45.904510>,  <39.115952, 28.464325, 45.930660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884045, 28.520311, 45.904510>,  <38.497532, 28.613623, 45.860928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884045, 28.520311, 45.904510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167029, -0.245901, 0.954795,
		-0.195935, -0.940806, -0.276574,
		0.966287, -0.233274, 0.108961,
		39.173931, 28.450327, 45.937199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578682, 28.106861, 46.286915>,  <38.497532, 28.613623, 45.860928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578682, 28.106861, 46.286915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934139, 28.286446, 46.324329>,  <39.147411, 28.394197, 46.346779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934139, 28.286446, 46.324329>,  <38.578682, 28.106861, 46.286915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934139, 28.286446, 46.324329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124303, 0.039473, 0.991459,
		0.441437, -0.892678, 0.090885,
		0.888641, 0.448964, 0.093538,
		39.200733, 28.421135, 46.352390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861500, 27.734966, 46.845589>,  <38.578682, 28.106861, 46.286915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861500, 27.734966, 46.845589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088619, 28.062241, 46.809422>,  <39.224892, 28.258606, 46.787724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088619, 28.062241, 46.809422>,  <38.861500, 27.734966, 46.845589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088619, 28.062241, 46.809422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006363, 0.105473, 0.994402,
		0.823143, -0.565195, 0.054682,
		0.567798, 0.818187, -0.090416,
		39.258957, 28.307697, 46.782295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377853, 27.571623, 47.296551>,  <38.861500, 27.734966, 46.845589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377853, 27.571623, 47.296551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351730, 27.968712, 47.256069>,  <39.336056, 28.206964, 47.231781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351730, 27.968712, 47.256069>,  <39.377853, 27.571623, 47.296551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351730, 27.968712, 47.256069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110959, 0.093565, 0.989411,
		0.991677, 0.075843, 0.104041,
		-0.065305, 0.992720, -0.101202,
		39.332138, 28.266527, 47.225708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831741, 27.787994, 47.842007>,  <39.377853, 27.571623, 47.296551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831741, 27.787994, 47.842007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560390, 28.067221, 47.750351>,  <39.397579, 28.234756, 47.695358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560390, 28.067221, 47.750351>,  <39.831741, 27.787994, 47.842007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560390, 28.067221, 47.750351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052450, 0.265068, 0.962802,
		0.732838, 0.665163, -0.143203,
		-0.678379, 0.698067, -0.229140,
		39.356876, 28.276640, 47.681610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957565, 28.371475, 48.258896>,  <39.831741, 27.787994, 47.842007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957565, 28.371475, 48.258896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582470, 28.442150, 48.139275>,  <39.357414, 28.484556, 48.067501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582470, 28.442150, 48.139275>,  <39.957565, 28.371475, 48.258896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582470, 28.442150, 48.139275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205084, 0.413238, 0.887229,
		0.280343, 0.893317, -0.351272,
		-0.937736, 0.176688, -0.299054,
		39.301147, 28.495157, 48.049557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857758, 28.990873, 48.538017>,  <39.957565, 28.371475, 48.258896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857758, 28.990873, 48.538017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482845, 28.873817, 48.462254>,  <39.257900, 28.803583, 48.416798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482845, 28.873817, 48.462254>,  <39.857758, 28.990873, 48.538017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482845, 28.873817, 48.462254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320165, 0.507791, 0.799776,
		-0.137868, 0.810253, -0.569634,
		-0.937276, -0.292641, -0.189407,
		39.201664, 28.786026, 48.405430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637020, 29.397949, 49.260799>,  <39.857758, 28.990873, 48.538017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637020, 29.397949, 49.260799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921333, 29.640436, 49.403507>,  <40.091923, 29.785929, 49.489132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921333, 29.640436, 49.403507>,  <39.637020, 29.397949, 49.260799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921333, 29.640436, 49.403507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091398, 0.582500, -0.807676,
		-0.697446, 0.541476, 0.469439,
		0.710786, 0.606216, 0.356772,
		40.134567, 29.822300, 49.510540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071598, 29.899443, 49.182537>,  <39.637020, 29.397949, 49.260799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071598, 29.899443, 49.182537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169113, 30.286600, 49.207031>,  <39.227623, 30.518894, 49.221729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169113, 30.286600, 49.207031>,  <39.071598, 29.899443, 49.182537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169113, 30.286600, 49.207031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425579, 0.163501, -0.890028,
		-0.871464, 0.190918, 0.451775,
		0.243788, 0.967893, 0.061234,
		39.242249, 30.576967, 49.225403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665741, 30.170013, 48.705643>,  <39.071598, 29.899443, 49.182537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665741, 30.170013, 48.705643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884216, 30.498634, 48.771038>,  <39.015301, 30.695807, 48.810276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884216, 30.498634, 48.771038>,  <38.665741, 30.170013, 48.705643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884216, 30.498634, 48.771038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196211, 0.315220, -0.928513,
		-0.814360, 0.475063, 0.333367,
		0.546186, 0.821554, 0.163490,
		39.048073, 30.745100, 48.820084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251728, 30.806026, 48.639984>,  <38.665741, 30.170013, 48.705643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251728, 30.806026, 48.639984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634033, 30.870897, 48.541832>,  <38.863419, 30.909821, 48.482941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634033, 30.870897, 48.541832>,  <38.251728, 30.806026, 48.639984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634033, 30.870897, 48.541832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292579, 0.438629, -0.849707,
		-0.030175, 0.883913, 0.466676,
		0.955765, 0.162179, -0.245379,
		38.920761, 30.919552, 48.468220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242859, 31.318653, 48.132172>,  <38.251728, 30.806026, 48.639984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242859, 31.318653, 48.132172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622795, 31.201134, 48.089302>,  <38.850758, 31.130623, 48.063580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622795, 31.201134, 48.089302>,  <38.242859, 31.318653, 48.132172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622795, 31.201134, 48.089302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026796, 0.417892, -0.908101,
		0.311586, 0.859679, 0.404804,
		0.949840, -0.293799, -0.107173,
		38.907745, 31.112993, 48.057152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674191, 31.896597, 47.891422>,  <38.242859, 31.318653, 48.132172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674191, 31.896597, 47.891422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897358, 31.588840, 47.766998>,  <39.031258, 31.404186, 47.692345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897358, 31.588840, 47.766998>,  <38.674191, 31.896597, 47.891422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897358, 31.588840, 47.766998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069064, 0.416564, -0.906479,
		0.827015, 0.484261, 0.285547,
		0.557921, -0.769393, -0.311060,
		39.064735, 31.358023, 47.673679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376961, 32.165455, 47.575512>,  <38.674191, 31.896597, 47.891422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376961, 32.165455, 47.575512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329693, 31.796511, 47.428383>,  <39.301334, 31.575146, 47.340103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329693, 31.796511, 47.428383>,  <39.376961, 32.165455, 47.575512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329693, 31.796511, 47.428383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197410, 0.341207, -0.919025,
		0.973173, -0.181210, 0.141763,
		-0.118166, -0.922356, -0.367826,
		39.294243, 31.519804, 47.318035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818504, 32.182663, 47.000179>,  <39.376961, 32.165455, 47.575512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818504, 32.182663, 47.000179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610626, 31.850449, 46.920055>,  <39.485897, 31.651119, 46.871983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610626, 31.850449, 46.920055>,  <39.818504, 32.182663, 47.000179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610626, 31.850449, 46.920055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297281, 0.044007, -0.953775,
		0.800961, -0.555221, 0.224033,
		-0.519697, -0.830537, -0.200305,
		39.454716, 31.601288, 46.859962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298103, 31.642000, 46.668461>,  <39.818504, 32.182663, 47.000179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298103, 31.642000, 46.668461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914669, 31.579903, 46.572952>,  <39.684608, 31.542645, 46.515648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914669, 31.579903, 46.572952>,  <40.298103, 31.642000, 46.668461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914669, 31.579903, 46.572952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215822, 0.151049, -0.964679,
		0.185828, -0.976260, -0.111288,
		-0.958587, -0.155246, -0.238767,
		39.627094, 31.533329, 46.501324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337723, 31.263163, 46.015656>,  <40.298103, 31.642000, 46.668461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337723, 31.263163, 46.015656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959991, 31.391947, 46.042767>,  <39.733353, 31.469217, 46.059032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959991, 31.391947, 46.042767>,  <40.337723, 31.263163, 46.015656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959991, 31.391947, 46.042767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019387, 0.260085, -0.965391,
		-0.328444, -0.910328, -0.251846,
		-0.944324, 0.321959, 0.067774,
		39.676693, 31.488535, 46.063099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075588, 31.086353, 45.400753>,  <40.337723, 31.263163, 46.015656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075588, 31.086353, 45.400753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783260, 31.335968, 45.511375>,  <39.607864, 31.485737, 45.577751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783260, 31.335968, 45.511375>,  <40.075588, 31.086353, 45.400753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783260, 31.335968, 45.511375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026872, 0.378551, -0.925190,
		-0.682045, -0.683576, -0.259882,
		-0.730816, 0.624038, 0.276558,
		39.564014, 31.523180, 45.594341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422607, 31.011431, 44.941673>,  <40.075588, 31.086353, 45.400753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422607, 31.011431, 44.941673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463211, 31.378767, 45.094692>,  <39.487572, 31.599169, 45.186504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463211, 31.378767, 45.094692>,  <39.422607, 31.011431, 44.941673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463211, 31.378767, 45.094692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086102, 0.391204, -0.916267,
		-0.991102, 0.060069, 0.118780,
		0.101507, 0.918341, 0.382551,
		39.493664, 31.654270, 45.209457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043575, 31.324209, 44.446342>,  <39.422607, 31.011431, 44.941673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043575, 31.324209, 44.446342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229599, 31.616369, 44.646435>,  <39.341213, 31.791666, 44.766491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229599, 31.616369, 44.646435>,  <39.043575, 31.324209, 44.446342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229599, 31.616369, 44.646435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144840, 0.494667, -0.856928,
		-0.873350, 0.470978, 0.124259,
		0.465061, 0.730400, 0.500233,
		39.369118, 31.835489, 44.796505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780495, 31.964258, 44.155262>,  <39.043575, 31.324209, 44.446342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780495, 31.964258, 44.155262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144596, 32.027760, 44.308228>,  <39.363056, 32.065861, 44.400005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144596, 32.027760, 44.308228>,  <38.780495, 31.964258, 44.155262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144596, 32.027760, 44.308228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330175, 0.279002, -0.901744,
		-0.249849, 0.947077, 0.201546,
		0.910253, 0.158755, 0.382410,
		39.417671, 32.075386, 44.422951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015442, 32.616947, 43.812382>,  <38.780495, 31.964258, 44.155262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015442, 32.616947, 43.812382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332809, 32.431438, 43.970070>,  <39.523228, 32.320133, 44.064682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332809, 32.431438, 43.970070>,  <39.015442, 32.616947, 43.812382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332809, 32.431438, 43.970070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549978, 0.268712, -0.790770,
		0.260802, 0.844223, 0.468263,
		0.793414, -0.463769, 0.394223,
		39.570835, 32.292309, 44.088337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587616, 33.015598, 43.559563>,  <39.015442, 32.616947, 43.812382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587616, 33.015598, 43.559563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750767, 32.671825, 43.682861>,  <39.848660, 32.465561, 43.756840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750767, 32.671825, 43.682861>,  <39.587616, 33.015598, 43.559563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750767, 32.671825, 43.682861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603467, 0.000404, -0.797388,
		0.685173, 0.511257, 0.518801,
		0.407880, -0.859428, 0.308249,
		39.873131, 32.413998, 43.775337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230984, 33.097996, 43.411201>,  <39.587616, 33.015598, 43.559563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230984, 33.097996, 43.411201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195278, 32.699734, 43.421776>,  <40.173855, 32.460777, 43.428120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195278, 32.699734, 43.421776>,  <40.230984, 33.097996, 43.411201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195278, 32.699734, 43.421776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486576, -0.066752, -0.871085,
		0.869066, -0.064892, 0.490421,
		-0.089263, -0.995657, 0.026438,
		40.168499, 32.401035, 43.429707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838718, 32.732269, 43.262932>,  <40.230984, 33.097996, 43.411201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838718, 32.732269, 43.262932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559807, 32.465103, 43.158855>,  <40.392460, 32.304806, 43.096409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559807, 32.465103, 43.158855>,  <40.838718, 32.732269, 43.262932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559807, 32.465103, 43.158855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418075, -0.084096, -0.904511,
		0.582254, -0.739473, 0.337876,
		-0.697276, -0.667913, -0.260190,
		40.350624, 32.264729, 43.080799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282967, 32.201168, 42.931038>,  <40.838718, 32.732269, 43.262932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282967, 32.201168, 42.931038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902718, 32.181068, 42.808533>,  <40.674568, 32.169006, 42.735031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902718, 32.181068, 42.808533>,  <41.282967, 32.201168, 42.931038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902718, 32.181068, 42.808533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307656, -0.022643, -0.951228,
		0.040868, -0.998480, 0.036985,
		-0.950620, -0.050254, -0.306263,
		40.617531, 32.165993, 42.716652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340145, 31.846174, 42.291153>,  <41.282967, 32.201168, 42.931038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340145, 31.846174, 42.291153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968220, 31.991892, 42.270229>,  <40.745064, 32.079323, 42.257675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968220, 31.991892, 42.270229>,  <41.340145, 31.846174, 42.291153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968220, 31.991892, 42.270229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094807, 0.099765, -0.990484,
		-0.355608, -0.925925, -0.127301,
		-0.929814, 0.364293, -0.052307,
		40.689274, 32.101181, 42.254536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021332, 31.416672, 41.761120>,  <41.340145, 31.846174, 42.291153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021332, 31.416672, 41.761120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807346, 31.752329, 41.800426>,  <40.678955, 31.953724, 41.824009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807346, 31.752329, 41.800426>,  <41.021332, 31.416672, 41.761120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807346, 31.752329, 41.800426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155570, 0.016481, -0.987687,
		-0.830431, -0.543659, 0.121729,
		-0.534959, 0.839144, 0.098264,
		40.646858, 32.004070, 41.829906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495079, 31.479866, 41.221790>,  <41.021332, 31.416672, 41.761120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495079, 31.479866, 41.221790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504444, 31.872446, 41.297909>,  <40.510063, 32.107994, 41.343578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504444, 31.872446, 41.297909>,  <40.495079, 31.479866, 41.221790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504444, 31.872446, 41.297909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163068, 0.191545, -0.967843,
		-0.986337, -0.008374, 0.164527,
		0.023410, 0.981448, 0.190293,
		40.511467, 32.166882, 41.354996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073513, 31.708635, 40.749783>,  <40.495079, 31.479866, 41.221790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073513, 31.708635, 40.749783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266788, 32.037563, 40.869999>,  <40.382751, 32.234921, 40.942127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266788, 32.037563, 40.869999>,  <40.073513, 31.708635, 40.749783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266788, 32.037563, 40.869999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057428, 0.372298, -0.926335,
		-0.873633, 0.430332, 0.227114,
		0.483185, 0.822319, 0.300539,
		40.411743, 32.284260, 40.960159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699852, 32.330177, 40.510719>,  <40.073513, 31.708635, 40.749783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699852, 32.330177, 40.510719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073891, 32.463482, 40.558941>,  <40.298313, 32.543465, 40.587872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073891, 32.463482, 40.558941>,  <39.699852, 32.330177, 40.510719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073891, 32.463482, 40.558941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014926, 0.376894, -0.926136,
		-0.354077, 0.864228, 0.357407,
		0.935097, 0.333258, 0.120550,
		40.354420, 32.563457, 40.595104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685837, 33.050053, 40.370979>,  <39.699852, 32.330177, 40.510719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685837, 33.050053, 40.370979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054707, 32.904144, 40.319542>,  <40.276028, 32.816597, 40.288681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054707, 32.904144, 40.319542>,  <39.685837, 33.050053, 40.370979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054707, 32.904144, 40.319542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001197, 0.335165, -0.942159,
		0.386775, 0.868680, 0.309517,
		0.922173, -0.364774, -0.128594,
		40.331360, 32.794712, 40.280964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962231, 33.605312, 40.003082>,  <39.685837, 33.050053, 40.370979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962231, 33.605312, 40.003082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239487, 33.317703, 39.982800>,  <40.405842, 33.145138, 39.970631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239487, 33.317703, 39.982800>,  <39.962231, 33.605312, 40.003082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239487, 33.317703, 39.982800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261442, 0.316346, -0.911906,
		0.671719, 0.618820, 0.407253,
		0.693139, -0.719018, -0.050710,
		40.447430, 33.101997, 39.967587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572613, 33.894333, 39.774662>,  <39.962231, 33.605312, 40.003082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572613, 33.894333, 39.774662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605618, 33.508636, 39.673923>,  <40.625420, 33.277218, 39.613480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605618, 33.508636, 39.673923>,  <40.572613, 33.894333, 39.774662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605618, 33.508636, 39.673923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328370, 0.264896, -0.906644,
		0.940939, -0.007893, 0.338485,
		0.082507, -0.964245, -0.251842,
		40.630371, 33.219364, 39.598370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262329, 33.753345, 39.459270>,  <40.572613, 33.894333, 39.774662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262329, 33.753345, 39.459270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024925, 33.453259, 39.342705>,  <40.882484, 33.273205, 39.272766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024925, 33.453259, 39.342705>,  <41.262329, 33.753345, 39.459270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024925, 33.453259, 39.342705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103734, 0.287752, -0.952070,
		0.798117, -0.595288, -0.092959,
		-0.593505, -0.750221, -0.291411,
		40.846874, 33.228191, 39.255280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605476, 33.500771, 38.884972>,  <41.262329, 33.753345, 39.459270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605476, 33.500771, 38.884972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226170, 33.375324, 38.865227>,  <40.998585, 33.300056, 38.853378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226170, 33.375324, 38.865227>,  <41.605476, 33.500771, 38.884972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226170, 33.375324, 38.865227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001193, 0.159001, -0.987278,
		0.317472, -0.936144, -0.151150,
		-0.948267, -0.313614, -0.049362,
		40.941689, 33.281239, 38.850418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587379, 33.568081, 38.152477>,  <41.605476, 33.500771, 38.884972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587379, 33.568081, 38.152477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215588, 33.473251, 38.265518>,  <40.992512, 33.416351, 38.333344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215588, 33.473251, 38.265518>,  <41.587379, 33.568081, 38.152477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215588, 33.473251, 38.265518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283991, -0.028997, -0.958388,
		0.235409, -0.971057, -0.040376,
		-0.929479, -0.237080, 0.282598,
		40.936745, 33.402126, 38.350296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382107, 33.076988, 37.715633>,  <41.587379, 33.568081, 38.152477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382107, 33.076988, 37.715633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044025, 33.237148, 37.857231>,  <40.841175, 33.333244, 37.942188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044025, 33.237148, 37.857231>,  <41.382107, 33.076988, 37.715633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044025, 33.237148, 37.857231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327346, 0.135730, -0.935105,
		-0.422466, -0.906231, 0.016351,
		-0.845203, 0.400402, 0.353992,
		40.790466, 33.357269, 37.963428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847057, 32.850803, 37.240524>,  <41.382107, 33.076988, 37.715633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847057, 32.850803, 37.240524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692139, 33.165901, 37.432129>,  <40.599186, 33.354961, 37.547092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692139, 33.165901, 37.432129>,  <40.847057, 32.850803, 37.240524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692139, 33.165901, 37.432129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503954, 0.254187, -0.825481,
		-0.772029, -0.561110, 0.298541,
		-0.387301, 0.787746, 0.479013,
		40.575947, 33.402225, 37.575832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246330, 32.942070, 36.837601>,  <40.847057, 32.850803, 37.240524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246330, 32.942070, 36.837601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300266, 33.287548, 37.031857>,  <40.332630, 33.494835, 37.148411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300266, 33.287548, 37.031857>,  <40.246330, 32.942070, 36.837601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300266, 33.287548, 37.031857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466259, 0.487772, -0.738025,
		-0.874311, -0.126917, 0.468478,
		0.134842, 0.863696, 0.485641,
		40.340717, 33.546658, 37.177547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534851, 33.351952, 36.724323>,  <40.246330, 32.942070, 36.837601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534851, 33.351952, 36.724323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829674, 33.611393, 36.800282>,  <40.006569, 33.767056, 36.845856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829674, 33.611393, 36.800282>,  <39.534851, 33.351952, 36.724323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829674, 33.611393, 36.800282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303682, 0.568873, -0.764304,
		-0.603756, 0.505669, 0.616261,
		0.737059, 0.648601, 0.189898,
		40.050793, 33.805973, 36.857250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235401, 34.115704, 36.684998>,  <39.534851, 33.351952, 36.724323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235401, 34.115704, 36.684998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631275, 34.149658, 36.638844>,  <39.868801, 34.170029, 36.611149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631275, 34.149658, 36.638844>,  <39.235401, 34.115704, 36.684998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631275, 34.149658, 36.638844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141497, 0.704848, -0.695103,
		0.022329, 0.704261, 0.709589,
		0.989687, 0.084883, -0.115390,
		39.928181, 34.175121, 36.604225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375523, 34.861958, 36.532749>,  <39.235401, 34.115704, 36.684998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375523, 34.861958, 36.532749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730618, 34.736519, 36.397945>,  <39.943676, 34.661255, 36.317062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730618, 34.736519, 36.397945>,  <39.375523, 34.861958, 36.532749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730618, 34.736519, 36.397945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087680, 0.603496, -0.792531,
		0.451920, 0.733110, 0.508251,
		0.887739, -0.313597, -0.337011,
		39.996941, 34.642441, 36.296841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768440, 35.495762, 36.325787>,  <39.375523, 34.861958, 36.532749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768440, 35.495762, 36.325787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947666, 35.183800, 36.150978>,  <40.055202, 34.996624, 36.046093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947666, 35.183800, 36.150978>,  <39.768440, 35.495762, 36.325787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947666, 35.183800, 36.150978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144258, 0.545501, -0.825602,
		0.882284, 0.306882, 0.356929,
		0.448067, -0.779905, -0.437017,
		40.082085, 34.949829, 36.019875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336452, 35.785873, 35.930202>,  <39.768440, 35.495762, 36.325787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336452, 35.785873, 35.930202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275921, 35.413937, 35.796040>,  <40.239601, 35.190777, 35.715542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275921, 35.413937, 35.796040>,  <40.336452, 35.785873, 35.930202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275921, 35.413937, 35.796040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158107, 0.312181, -0.936774,
		0.975757, -0.194794, 0.099770,
		-0.151332, -0.929838, -0.335411,
		40.230522, 35.134987, 35.695415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922184, 35.571304, 35.514000>,  <40.336452, 35.785873, 35.930202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922184, 35.571304, 35.514000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587727, 35.384846, 35.398365>,  <40.387051, 35.272972, 35.328983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587727, 35.384846, 35.398365>,  <40.922184, 35.571304, 35.514000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587727, 35.384846, 35.398365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066152, 0.437498, -0.896783,
		0.544508, -0.768963, -0.334974,
		-0.836143, -0.466146, -0.289090,
		40.336884, 35.245003, 35.311638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175430, 35.416981, 34.805885>,  <40.922184, 35.571304, 35.514000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175430, 35.416981, 34.805885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777378, 35.377983, 34.800198>,  <40.538548, 35.354584, 34.796783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777378, 35.377983, 34.800198>,  <41.175430, 35.416981, 34.805885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777378, 35.377983, 34.800198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038326, 0.516002, -0.855729,
		0.090763, -0.851021, -0.517228,
		-0.995135, -0.097492, -0.014218,
		40.478836, 35.348736, 34.795933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906307, 35.231777, 34.063023>,  <41.175430, 35.416981, 34.805885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906307, 35.231777, 34.063023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627388, 35.440151, 34.259956>,  <40.460037, 35.565174, 34.378117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627388, 35.440151, 34.259956>,  <40.906307, 35.231777, 34.063023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627388, 35.440151, 34.259956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086564, 0.620648, -0.779296,
		-0.711531, -0.586024, -0.387686,
		-0.697302, 0.520934, 0.492339,
		40.418198, 35.596432, 34.407658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055824, 34.515984, 34.002495>,  <40.906307, 35.231777, 34.063023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055824, 34.515984, 34.002495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344135, 34.655560, 33.762920>,  <41.517120, 34.739307, 33.619175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344135, 34.655560, 33.762920>,  <41.055824, 34.515984, 34.002495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344135, 34.655560, 33.762920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638938, 0.000583, 0.769258,
		0.268778, -0.937143, -0.222534,
		0.720775, 0.348945, -0.598933,
		41.560368, 34.760242, 33.583241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545605, 34.124748, 34.135605>,  <41.055824, 34.515984, 34.002495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545605, 34.124748, 34.135605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720608, 34.459591, 34.004250>,  <41.825611, 34.660496, 33.925434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720608, 34.459591, 34.004250>,  <41.545605, 34.124748, 34.135605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720608, 34.459591, 34.004250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634795, -0.028865, 0.772142,
		0.636886, -0.546277, -0.544020,
		0.437507, 0.837107, -0.328390,
		41.851860, 34.710724, 33.905731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301064, 34.063965, 34.154636>,  <41.545605, 34.124748, 34.135605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301064, 34.063965, 34.154636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195934, 34.449314, 34.175903>,  <42.132858, 34.680527, 34.188663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195934, 34.449314, 34.175903>,  <42.301064, 34.063965, 34.154636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195934, 34.449314, 34.175903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642451, 0.133624, 0.754586,
		0.719847, 0.232481, -0.654043,
		-0.262823, 0.963378, 0.053169,
		42.117088, 34.738327, 34.191853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840988, 34.553574, 34.071209>,  <42.301064, 34.063965, 34.154636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840988, 34.553574, 34.071209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658760, 34.691208, 34.399612>,  <42.549423, 34.773788, 34.596657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658760, 34.691208, 34.399612>,  <42.840988, 34.553574, 34.071209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658760, 34.691208, 34.399612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874229, -0.000979, 0.485512,
		0.167860, 0.938939, -0.300362,
		-0.455572, 0.344083, 0.821012,
		42.522087, 34.794434, 34.645916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974880, 35.308731, 34.230968>,  <42.840988, 34.553574, 34.071209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974880, 35.308731, 34.230968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925339, 35.067326, 34.546040>,  <42.895615, 34.922482, 34.735081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925339, 35.067326, 34.546040>,  <42.974880, 35.308731, 34.230968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925339, 35.067326, 34.546040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977327, 0.063183, 0.202090,
		-0.171732, 0.794845, 0.582005,
		-0.123857, -0.603514, 0.787674,
		42.888180, 34.886272, 34.782341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229801, 35.731358, 34.827229>,  <42.974880, 35.308731, 34.230968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229801, 35.731358, 34.827229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265018, 35.335037, 34.868351>,  <43.286148, 35.097244, 34.893024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265018, 35.335037, 34.868351>,  <43.229801, 35.731358, 34.827229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265018, 35.335037, 34.868351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990149, 0.075763, -0.117750,
		0.108877, 0.112164, 0.987707,
		0.088039, -0.990797, 0.102810,
		43.291431, 35.037800, 34.899193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.924465, 35.580170, 35.022148>,  <43.229801, 35.731358, 34.827229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.924465, 35.580170, 35.022148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.316582, 35.578098, 35.101139>,  <44.551853, 35.576855, 35.148533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.316582, 35.578098, 35.101139>,  <43.924465, 35.580170, 35.022148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.316582, 35.578098, 35.101139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197112, 0.040227, 0.979555,
		-0.013019, -0.999177, 0.038414,
		0.980294, -0.005181, 0.197473,
		44.610672, 35.576546, 35.160381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070320, 35.054394, 35.592731>,  <43.924465, 35.580170, 35.022148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070320, 35.054394, 35.592731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.350853, 35.339527, 35.593399>,  <44.519173, 35.510605, 35.593800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.350853, 35.339527, 35.593399>,  <44.070320, 35.054394, 35.592731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.350853, 35.339527, 35.593399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207634, -0.206520, 0.956158,
		0.681921, -0.670242, -0.292848,
		0.701336, 0.712829, 0.001665,
		44.561253, 35.553375, 35.593899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.527725, 34.803219, 36.032276>,  <44.070320, 35.054394, 35.592731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.527725, 34.803219, 36.032276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.667694, 35.177010, 36.006035>,  <44.751675, 35.401283, 35.990288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.667694, 35.177010, 36.006035>,  <44.527725, 34.803219, 36.032276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.667694, 35.177010, 36.006035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358060, -0.068703, 0.931167,
		0.865650, -0.349323, -0.358641,
		0.349918, 0.934480, -0.065606,
		44.772671, 35.457355, 35.986355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.296352, 34.856033, 36.281033>,  <44.527725, 34.803219, 36.032276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.296352, 34.856033, 36.281033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.127625, 35.215698, 36.327621>,  <45.026386, 35.431499, 36.355576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.127625, 35.215698, 36.327621>,  <45.296352, 34.856033, 36.281033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.127625, 35.215698, 36.327621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085003, -0.088676, 0.992427,
		0.902685, 0.428529, -0.039026,
		-0.421823, 0.899166, 0.116473,
		45.001080, 35.485447, 36.362564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.616638, 35.029625, 36.877605>,  <45.296352, 34.856033, 36.281033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.616638, 35.029625, 36.877605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.317585, 35.293598, 36.847847>,  <45.138153, 35.451981, 36.829990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.317585, 35.293598, 36.847847>,  <45.616638, 35.029625, 36.877605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.317585, 35.293598, 36.847847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086831, 0.013931, 0.996126,
		0.658414, 0.751194, 0.046887,
		-0.747631, 0.659934, -0.074399,
		45.093296, 35.491577, 36.825527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.805988, 35.665806, 37.158783>,  <45.616638, 35.029625, 36.877605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.805988, 35.665806, 37.158783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.406792, 35.653820, 37.181087>,  <45.167274, 35.646629, 37.194469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.406792, 35.653820, 37.181087>,  <45.805988, 35.665806, 37.158783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.406792, 35.653820, 37.181087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047217, 0.234296, 0.971018,
		-0.042155, 0.971704, -0.232411,
		-0.997995, -0.029960, 0.055757,
		45.107391, 35.644833, 37.197815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.636543, 36.328804, 37.478951>,  <45.805988, 35.665806, 37.158783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.636543, 36.328804, 37.478951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.331142, 36.077682, 37.539524>,  <45.147903, 35.927010, 37.575867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.331142, 36.077682, 37.539524>,  <45.636543, 36.328804, 37.478951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.331142, 36.077682, 37.539524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090255, 0.128457, 0.987600,
		-0.639471, 0.767699, -0.041415,
		-0.763499, -0.627804, 0.151433,
		45.102093, 35.889343, 37.584953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203239, 36.661446, 37.981785>,  <45.636543, 36.328804, 37.478951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.203239, 36.661446, 37.981785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.071835, 36.284172, 38.001751>,  <44.992992, 36.057808, 38.013729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.071835, 36.284172, 38.001751>,  <45.203239, 36.661446, 37.981785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.071835, 36.284172, 38.001751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088088, 0.083213, 0.992631,
		-0.940384, 0.321693, -0.110419,
		-0.328511, -0.943180, 0.049915,
		44.973282, 36.001217, 38.016724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706707, 36.713417, 38.346413>,  <45.203239, 36.661446, 37.981785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.706707, 36.713417, 38.346413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.787014, 36.324814, 38.396797>,  <44.835197, 36.091652, 38.427029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.787014, 36.324814, 38.396797>,  <44.706707, 36.713417, 38.346413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.787014, 36.324814, 38.396797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274824, 0.067564, 0.959118,
		-0.940300, -0.227178, -0.253429,
		0.200767, -0.971507, 0.125964,
		44.847244, 36.033363, 38.434586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.077049, 36.462715, 38.755131>,  <44.706707, 36.713417, 38.346413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.077049, 36.462715, 38.755131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396488, 36.224369, 38.789036>,  <44.588150, 36.081360, 38.809380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396488, 36.224369, 38.789036>,  <44.077049, 36.462715, 38.755131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396488, 36.224369, 38.789036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238095, -0.183426, 0.953764,
		-0.552768, -0.781856, -0.288357,
		0.798598, -0.595866, 0.084764,
		44.636066, 36.045609, 38.814465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809601, 35.785679, 39.059917>,  <44.077049, 36.462715, 38.755131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.809601, 35.785679, 39.059917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200096, 35.852482, 39.115162>,  <44.434391, 35.892563, 39.148308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200096, 35.852482, 39.115162>,  <43.809601, 35.785679, 39.059917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200096, 35.852482, 39.115162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138339, -0.010352, 0.990331,
		0.166822, -0.985901, 0.012997,
		0.976234, 0.167007, 0.138116,
		44.492966, 35.902584, 39.156597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033398, 35.475826, 39.664070>,  <43.809601, 35.785679, 39.059917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033398, 35.475826, 39.664070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.351383, 35.714119, 39.618229>,  <44.542175, 35.857094, 39.590725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.351383, 35.714119, 39.618229>,  <44.033398, 35.475826, 39.664070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.351383, 35.714119, 39.618229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154102, -0.015590, 0.987932,
		0.586753, -0.803034, -0.104196,
		0.794968, 0.595729, -0.114602,
		44.589874, 35.892838, 39.583847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.412350, 35.239151, 40.180794>,  <44.033398, 35.475826, 39.664070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.412350, 35.239151, 40.180794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574852, 35.591675, 40.084251>,  <44.672356, 35.803188, 40.026325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574852, 35.591675, 40.084251>,  <44.412350, 35.239151, 40.180794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.574852, 35.591675, 40.084251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168768, 0.187224, 0.967711,
		0.898038, -0.433873, -0.072675,
		0.406258, 0.881307, -0.241358,
		44.696728, 35.856068, 40.011845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.077076, 35.297817, 40.542274>,  <44.412350, 35.239151, 40.180794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.077076, 35.297817, 40.542274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987602, 35.677845, 40.455257>,  <44.933918, 35.905861, 40.403046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987602, 35.677845, 40.455257>,  <45.077076, 35.297817, 40.542274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.987602, 35.677845, 40.455257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015528, 0.226648, 0.973853,
		0.974538, 0.214457, -0.065450,
		-0.223683, 0.950073, -0.217547,
		44.920498, 35.962868, 40.389992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.644241, 35.751644, 40.852787>,  <45.077076, 35.297817, 40.542274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.644241, 35.751644, 40.852787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.315338, 35.976368, 40.816425>,  <45.117996, 36.111202, 40.794609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.315338, 35.976368, 40.816425>,  <45.644241, 35.751644, 40.852787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.315338, 35.976368, 40.816425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067220, 0.254476, 0.964740,
		0.565136, 0.787152, -0.247009,
		-0.822255, 0.561813, -0.090901,
		45.068661, 36.144913, 40.789154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.876385, 36.430538, 41.050198>,  <45.644241, 35.751644, 40.852787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.876385, 36.430538, 41.050198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.477989, 36.426441, 41.085758>,  <45.238953, 36.423981, 41.107094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.477989, 36.426441, 41.085758>,  <45.876385, 36.430538, 41.050198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.477989, 36.426441, 41.085758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086470, 0.145753, 0.985535,
		-0.023054, 0.989268, -0.144283,
		-0.995988, -0.010244, 0.088902,
		45.179192, 36.423367, 41.112431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.642639, 37.124142, 41.329510>,  <45.876385, 36.430538, 41.050198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.642639, 37.124142, 41.329510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.320831, 36.912636, 41.437695>,  <45.127747, 36.785732, 41.502605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.320831, 36.912636, 41.437695>,  <45.642639, 37.124142, 41.329510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.320831, 36.912636, 41.437695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028786, 0.420136, 0.907004,
		-0.593226, 0.737490, -0.322787,
		-0.804521, -0.528767, 0.270465,
		45.079475, 36.754005, 41.518833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.178364, 37.577061, 41.523487>,  <45.642639, 37.124142, 41.329510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.178364, 37.577061, 41.523487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.067520, 37.240543, 41.709148>,  <45.001015, 37.038635, 41.820545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.067520, 37.240543, 41.709148>,  <45.178364, 37.577061, 41.523487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.067520, 37.240543, 41.709148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121447, 0.448533, 0.885477,
		-0.953133, 0.301742, -0.022119,
		-0.277107, -0.841291, 0.464157,
		44.984386, 36.988155, 41.848396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630989, 37.758732, 41.965584>,  <45.178364, 37.577061, 41.523487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630989, 37.758732, 41.965584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.785942, 37.418308, 42.107361>,  <44.878914, 37.214054, 42.192425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.785942, 37.418308, 42.107361>,  <44.630989, 37.758732, 41.965584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.785942, 37.418308, 42.107361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065608, 0.408934, 0.910203,
		-0.919582, -0.329342, 0.214250,
		0.387382, -0.851062, 0.354441,
		44.902157, 37.162991, 42.213692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305408, 37.663631, 42.593987>,  <44.630989, 37.758732, 41.965584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305408, 37.663631, 42.593987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643372, 37.451065, 42.618443>,  <44.846149, 37.323524, 42.633118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643372, 37.451065, 42.618443>,  <44.305408, 37.663631, 42.593987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.643372, 37.451065, 42.618443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203565, 0.425122, 0.881948,
		-0.494670, -0.732715, 0.467365,
		0.844904, -0.531412, 0.061140,
		44.896843, 37.291641, 42.636784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344013, 37.473324, 43.238422>,  <44.305408, 37.663631, 42.593987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344013, 37.473324, 43.238422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.725712, 37.414669, 43.134182>,  <44.954731, 37.379475, 43.071636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.725712, 37.414669, 43.134182>,  <44.344013, 37.473324, 43.238422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.725712, 37.414669, 43.134182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299022, 0.471751, 0.829480,
		0.001304, -0.869453, 0.494015,
		0.954245, -0.146640, -0.260601,
		45.011986, 37.370678, 43.056000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.676861, 37.164413, 43.777592>,  <44.344013, 37.473324, 43.238422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.676861, 37.164413, 43.777592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.964863, 37.364342, 43.585018>,  <45.137665, 37.484299, 43.469475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.964863, 37.364342, 43.585018>,  <44.676861, 37.164413, 43.777592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.964863, 37.364342, 43.585018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314981, 0.382790, 0.868481,
		0.618368, -0.776952, 0.118178,
		0.720005, 0.499817, -0.481430,
		45.180866, 37.514286, 43.440590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274586, 36.986572, 44.120678>,  <44.676861, 37.164413, 43.777592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274586, 36.986572, 44.120678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.328060, 37.332649, 43.927357>,  <45.360146, 37.540295, 43.811363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.328060, 37.332649, 43.927357>,  <45.274586, 36.986572, 44.120678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.328060, 37.332649, 43.927357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495747, 0.363891, 0.788554,
		0.858116, -0.345011, -0.380269,
		0.133683, 0.865188, -0.483299,
		45.368164, 37.592205, 43.782368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.025021, 37.307137, 44.072971>,  <45.274586, 36.986572, 44.120678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.025021, 37.307137, 44.072971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.733925, 37.578323, 44.114464>,  <45.559269, 37.741035, 44.139359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.733925, 37.578323, 44.114464>,  <46.025021, 37.307137, 44.072971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.733925, 37.578323, 44.114464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399939, 0.296610, 0.867221,
		0.557179, 0.672594, -0.486999,
		-0.727736, 0.677967, 0.103731,
		45.515602, 37.781715, 44.145584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.567963, 37.681736, 43.549274>,  <46.025021, 37.307137, 44.072971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.567963, 37.681736, 43.549274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.479694, 37.770542, 43.929173>,  <46.426731, 37.823826, 44.157112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.479694, 37.770542, 43.929173>,  <46.567963, 37.681736, 43.549274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.479694, 37.770542, 43.929173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929964, -0.341469, -0.136255,
		0.294057, -0.913295, 0.281820,
		-0.220674, 0.222016, 0.949743,
		46.413490, 37.837147, 44.214096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.826347, 38.276180, 43.197674>,  <46.567963, 37.681736, 43.549274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.826347, 38.276180, 43.197674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.995266, 38.566849, 42.980930>,  <47.096619, 38.741249, 42.850883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.995266, 38.566849, 42.980930>,  <46.826347, 38.276180, 43.197674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.995266, 38.566849, 42.980930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512581, 0.684464, 0.518430,
		0.747614, 0.058818, 0.661524,
		0.422297, 0.726670, -0.541863,
		47.121956, 38.784851, 42.818371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.718815, 38.847538, 43.630550>,  <46.826347, 38.276180, 43.197674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.718815, 38.847538, 43.630550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.801620, 39.017307, 43.277958>,  <46.851303, 39.119167, 43.066402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.801620, 39.017307, 43.277958>,  <46.718815, 38.847538, 43.630550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.801620, 39.017307, 43.277958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295001, 0.886145, 0.357383,
		0.932801, 0.186053, 0.308652,
		0.207018, 0.424420, -0.881483,
		46.863728, 39.144634, 43.013512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.144798, 39.504517, 43.732090>,  <46.718815, 38.847538, 43.630550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.144798, 39.504517, 43.732090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934555, 39.507217, 43.391808>,  <46.808411, 39.508839, 43.187637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934555, 39.507217, 43.391808>,  <47.144798, 39.504517, 43.732090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.934555, 39.507217, 43.391808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469390, 0.831683, 0.296609,
		0.709516, 0.555210, -0.433969,
		-0.525605, 0.006748, -0.850702,
		46.776875, 39.509243, 43.136597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.243404, 40.184772, 43.436718>,  <47.144798, 39.504517, 43.732090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.243404, 40.184772, 43.436718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.899002, 40.016438, 43.322475>,  <46.692360, 39.915436, 43.253929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.899002, 40.016438, 43.322475>,  <47.243404, 40.184772, 43.436718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.899002, 40.016438, 43.322475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508339, 0.729990, 0.456844,
		0.016233, 0.538528, -0.842451,
		-0.861004, -0.420835, -0.285605,
		46.640701, 39.890186, 43.236794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.727558, 40.679035, 43.269829>,  <47.243404, 40.184772, 43.436718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.727558, 40.679035, 43.269829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.506046, 40.362522, 43.373524>,  <46.373138, 40.172615, 43.435741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.506046, 40.362522, 43.373524>,  <46.727558, 40.679035, 43.269829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.506046, 40.362522, 43.373524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664442, 0.607577, 0.435162,
		-0.501845, 0.068731, -0.862222,
		-0.553776, -0.791282, 0.259242,
		46.339912, 40.125137, 43.451298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.511330, 40.318394, 42.636089>,  <46.727558, 40.679035, 43.269829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.511330, 40.318394, 42.636089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.723042, 39.989971, 42.721622>,  <46.850067, 39.792915, 42.772942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.723042, 39.989971, 42.721622>,  <46.511330, 40.318394, 42.636089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.723042, 39.989971, 42.721622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257706, -0.084553, -0.962517,
		0.808364, 0.564546, 0.166840,
		0.529278, -0.821060, 0.213837,
		46.881824, 39.743652, 42.785774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.255642, 40.321514, 42.531570>,  <46.511330, 40.318394, 42.636089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.255642, 40.321514, 42.531570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.093521, 39.957722, 42.494514>,  <46.996250, 39.739449, 42.472279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.093521, 39.957722, 42.494514>,  <47.255642, 40.321514, 42.531570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.093521, 39.957722, 42.494514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243809, -0.009867, -0.969773,
		0.881074, -0.415633, 0.225738,
		-0.405297, -0.909479, -0.092642,
		46.971931, 39.684879, 42.466721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.672928, 39.748699, 42.237030>,  <47.255642, 40.321514, 42.531570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.672928, 39.748699, 42.237030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.290451, 39.678230, 42.143509>,  <47.060966, 39.635948, 42.087395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.290451, 39.678230, 42.143509>,  <47.672928, 39.748699, 42.237030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.290451, 39.678230, 42.143509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254182, -0.103419, -0.961611,
		0.145230, -0.978912, 0.143668,
		-0.956191, -0.176172, -0.233802,
		47.003593, 39.625378, 42.073368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.715847, 39.227829, 41.738873>,  <47.672928, 39.748699, 42.237030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.715847, 39.227829, 41.738873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.342575, 39.355412, 41.672607>,  <47.118610, 39.431961, 41.632847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.342575, 39.355412, 41.672607>,  <47.715847, 39.227829, 41.738873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.342575, 39.355412, 41.672607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095095, -0.225396, -0.969615,
		-0.346605, -0.920578, 0.180003,
		-0.933178, 0.318956, -0.165666,
		47.062622, 39.451099, 41.622906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.518436, 38.766785, 41.338127>,  <47.715847, 39.227829, 41.738873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.518436, 38.766785, 41.338127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.283318, 39.084080, 41.274529>,  <47.142246, 39.274456, 41.236370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.283318, 39.084080, 41.274529>,  <47.518436, 38.766785, 41.338127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.283318, 39.084080, 41.274529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100677, -0.123278, -0.987252,
		-0.802723, -0.596306, -0.007399,
		-0.587793, 0.793235, -0.158992,
		47.106979, 39.322052, 41.226830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.191547, 38.634266, 40.686211>,  <47.518436, 38.766785, 41.338127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.191547, 38.634266, 40.686211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.042347, 39.002583, 40.731838>,  <46.952827, 39.223572, 40.759212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.042347, 39.002583, 40.731838>,  <47.191547, 38.634266, 40.686211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.042347, 39.002583, 40.731838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078825, 0.091044, -0.992722,
		-0.924478, -0.379275, 0.038622,
		-0.372998, 0.920794, 0.114065,
		46.930447, 39.278820, 40.766056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.493103, 38.713409, 40.473270>,  <47.191547, 38.634266, 40.686211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.493103, 38.713409, 40.473270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.623123, 39.090176, 40.439468>,  <46.701134, 39.316235, 40.419186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.623123, 39.090176, 40.439468>,  <46.493103, 38.713409, 40.473270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.623123, 39.090176, 40.439468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208772, -0.015682, -0.977839,
		-0.922366, 0.335485, 0.191548,
		0.325046, 0.941915, -0.084505,
		46.720638, 39.372749, 40.414116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.918755, 39.222683, 40.102474>,  <46.493103, 38.713409, 40.473270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.918755, 39.222683, 40.102474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.292244, 39.358368, 40.056686>,  <46.516338, 39.439777, 40.029213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.292244, 39.358368, 40.056686>,  <45.918755, 39.222683, 40.102474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.292244, 39.358368, 40.056686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159010, 0.106483, -0.981518,
		-0.320755, 0.934663, 0.153363,
		0.933719, 0.339213, -0.114466,
		46.572361, 39.460133, 40.022346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.764538, 39.607105, 39.550301>,  <45.918755, 39.222683, 40.102474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.764538, 39.607105, 39.550301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.164501, 39.612320, 39.549023>,  <46.404480, 39.615448, 39.548256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.164501, 39.612320, 39.549023>,  <45.764538, 39.607105, 39.550301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.164501, 39.612320, 39.549023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002509, -0.052460, -0.998620,
		-0.013183, 0.998538, -0.052423,
		0.999910, 0.013034, -0.003197,
		46.464474, 39.616230, 39.548065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.982857, 40.038952, 39.049274>,  <45.764538, 39.607105, 39.550301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.982857, 40.038952, 39.049274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314327, 39.820965, 39.100349>,  <46.513210, 39.690174, 39.130997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314327, 39.820965, 39.100349>,  <45.982857, 40.038952, 39.049274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.314327, 39.820965, 39.100349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160271, 0.012448, -0.986995,
		0.536288, 0.838367, 0.097657,
		0.828679, -0.544965, 0.127690,
		46.562931, 39.657475, 39.138657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.527428, 40.383938, 38.588253>,  <45.982857, 40.038952, 39.049274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.527428, 40.383938, 38.588253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.636478, 40.005646, 38.658985>,  <46.701908, 39.778671, 38.701424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.636478, 40.005646, 38.658985>,  <46.527428, 40.383938, 38.588253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.636478, 40.005646, 38.658985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223418, -0.116540, -0.967731,
		0.935820, 0.303338, 0.179521,
		0.272628, -0.945730, 0.176832,
		46.718266, 39.721928, 38.712036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.255268, 40.309841, 38.260899>,  <46.527428, 40.383938, 38.588253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.255268, 40.309841, 38.260899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.083069, 39.949329, 38.280392>,  <46.979752, 39.733025, 38.292088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.083069, 39.949329, 38.280392>,  <47.255268, 40.309841, 38.260899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.083069, 39.949329, 38.280392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221193, -0.157692, -0.962396,
		0.875070, -0.403528, 0.267242,
		-0.430496, -0.901276, 0.048734,
		46.953918, 39.678947, 38.295013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.621006, 39.945797, 37.825672>,  <47.255268, 40.309841, 38.260899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.621006, 39.945797, 37.825672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.313923, 39.699833, 37.897789>,  <47.129673, 39.552254, 37.941059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.313923, 39.699833, 37.897789>,  <47.621006, 39.945797, 37.825672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.313923, 39.699833, 37.897789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124140, -0.418742, -0.899580,
		0.628657, -0.668236, 0.397808,
		-0.767710, -0.614912, 0.180290,
		47.083611, 39.515358, 37.951878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.870445, 39.246010, 37.839241>,  <47.621006, 39.945797, 37.825672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.870445, 39.246010, 37.839241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.483082, 39.237911, 37.739826>,  <47.250664, 39.233051, 37.680180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.483082, 39.237911, 37.739826>,  <47.870445, 39.246010, 37.839241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.483082, 39.237911, 37.739826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213743, -0.580717, -0.785546,
		-0.128427, -0.813854, 0.566699,
		-0.968411, -0.020243, -0.248535,
		47.192558, 39.231838, 37.665264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.772449, 38.602764, 37.652168>,  <47.870445, 39.246010, 37.839241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.772449, 38.602764, 37.652168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.431080, 38.759056, 37.514183>,  <47.226257, 38.852833, 37.431393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.431080, 38.759056, 37.514183>,  <47.772449, 38.602764, 37.652168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.431080, 38.759056, 37.514183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001489, -0.660005, -0.751260,
		-0.521214, -0.641657, 0.562683,
		-0.853425, 0.390729, -0.344959,
		47.175053, 38.876274, 37.410694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.357265, 38.039959, 37.424549>,  <47.772449, 38.602764, 37.652168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.357265, 38.039959, 37.424549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.163769, 38.340908, 37.245693>,  <47.047668, 38.521477, 37.138382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.163769, 38.340908, 37.245693>,  <47.357265, 38.039959, 37.424549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.163769, 38.340908, 37.245693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223251, -0.600067, -0.768166,
		-0.846257, -0.271772, 0.458246,
		-0.483744, 0.752370, -0.447137,
		47.018646, 38.566620, 37.111553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.693684, 37.844475, 37.310425>,  <47.357265, 38.039959, 37.424549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.693684, 37.844475, 37.310425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.789593, 38.116489, 37.033279>,  <46.847137, 38.279697, 36.866993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.789593, 38.116489, 37.033279>,  <46.693684, 37.844475, 37.310425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.789593, 38.116489, 37.033279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258537, -0.643180, -0.720748,
		-0.935772, 0.351943, 0.021601,
		0.239769, 0.680041, -0.692860,
		46.861523, 38.320503, 36.825420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.202419, 37.778675, 36.775902>,  <46.693684, 37.844475, 37.310425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.202419, 37.778675, 36.775902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.488289, 37.984814, 36.586731>,  <46.659809, 38.108498, 36.473228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.488289, 37.984814, 36.586731>,  <46.202419, 37.778675, 36.775902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.488289, 37.984814, 36.586731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076460, -0.614517, -0.785190,
		-0.695268, 0.597313, -0.399774,
		0.714672, 0.515351, -0.472925,
		46.702690, 38.139420, 36.444855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.004395, 37.829742, 36.069565>,  <46.202419, 37.778675, 36.775902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.004395, 37.829742, 36.069565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.401035, 37.881420, 36.072128>,  <46.639019, 37.912426, 36.073666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.401035, 37.881420, 36.072128>,  <46.004395, 37.829742, 36.069565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.401035, 37.881420, 36.072128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079972, -0.573373, -0.815382,
		-0.101668, 0.809044, -0.578888,
		0.991599, 0.129193, 0.006407,
		46.698517, 37.920177, 36.074051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.105469, 38.042389, 35.436974>,  <46.004395, 37.829742, 36.069565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.105469, 38.042389, 35.436974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.473335, 37.916000, 35.530251>,  <46.694054, 37.840168, 35.586216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.473335, 37.916000, 35.530251>,  <46.105469, 38.042389, 35.436974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.473335, 37.916000, 35.530251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030444, -0.534658, -0.844520,
		0.391517, 0.783777, -0.482088,
		0.919667, -0.315967, 0.233188,
		46.749237, 37.821209, 35.600208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.402920, 38.145626, 34.869125>,  <46.105469, 38.042389, 35.436974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.402920, 38.145626, 34.869125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.628506, 37.884464, 35.071377>,  <46.763859, 37.727768, 35.192726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.628506, 37.884464, 35.071377>,  <46.402920, 38.145626, 34.869125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.628506, 37.884464, 35.071377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102779, -0.552028, -0.827467,
		0.819378, 0.518629, -0.244219,
		0.563964, -0.652908, 0.505624,
		46.797695, 37.688591, 35.223064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.969742, 38.052933, 34.514179>,  <46.402920, 38.145626, 34.869125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.969742, 38.052933, 34.514179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.885647, 37.730000, 34.734730>,  <46.835190, 37.536240, 34.867062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.885647, 37.730000, 34.734730>,  <46.969742, 38.052933, 34.514179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.885647, 37.730000, 34.734730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065471, -0.551090, -0.831874,
		0.975456, -0.210988, 0.063002,
		-0.210236, -0.807331, 0.551377,
		46.822575, 37.487801, 34.900143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.325737, 37.520821, 34.178913>,  <46.969742, 38.052933, 34.514179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.325737, 37.520821, 34.178913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.053646, 37.331779, 34.403034>,  <46.890392, 37.218353, 34.537506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.053646, 37.331779, 34.403034>,  <47.325737, 37.520821, 34.178913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.053646, 37.331779, 34.403034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168802, -0.642845, -0.747165,
		0.713302, -0.602820, 0.357502,
		-0.680225, -0.472607, 0.560300,
		46.849579, 37.189999, 34.571125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.446415, 36.801960, 34.256226>,  <47.325737, 37.520821, 34.178913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.446415, 36.801960, 34.256226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.054588, 36.850330, 34.320518>,  <46.819492, 36.879353, 34.359097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.054588, 36.850330, 34.320518>,  <47.446415, 36.801960, 34.256226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.054588, 36.850330, 34.320518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200886, -0.628284, -0.751601,
		0.010102, -0.768529, 0.639735,
		-0.979562, 0.120921, 0.160734,
		46.760719, 36.886608, 34.368740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.139561, 36.138226, 34.656166>,  <47.446415, 36.801960, 34.256226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.139561, 36.138226, 34.656166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.974899, 36.401428, 34.403950>,  <46.876102, 36.559349, 34.252621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.974899, 36.401428, 34.403950>,  <47.139561, 36.138226, 34.656166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.974899, 36.401428, 34.403950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022138, -0.698893, -0.714884,
		-0.911074, -0.280322, 0.302265,
		-0.411649, 0.658004, -0.630537,
		46.851406, 36.598827, 34.214790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.398182, 35.639229, 35.176697>,  <47.139561, 36.138226, 34.656166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.398182, 35.639229, 35.176697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.694519, 35.422604, 35.335625>,  <47.872322, 35.292629, 35.430981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.694519, 35.422604, 35.335625>,  <47.398182, 35.639229, 35.176697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.694519, 35.422604, 35.335625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523449, -0.836178, -0.163729,
		0.420897, -0.086678, -0.902958,
		0.740842, -0.541565, 0.397316,
		47.916771, 35.260136, 35.454819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.625687, 35.000599, 34.766533>,  <47.398182, 35.639229, 35.176697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.625687, 35.000599, 34.766533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.721478, 34.909206, 35.143986>,  <47.778954, 34.854370, 35.370457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.721478, 34.909206, 35.143986>,  <47.625687, 35.000599, 34.766533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.721478, 34.909206, 35.143986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498139, -0.863156, -0.082580,
		0.833372, -0.450285, -0.320523,
		0.239477, -0.228484, 0.943634,
		47.793320, 34.840660, 35.427074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.452942, 34.415550, 43.612141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.136738, 34.171154, 43.595261>,  <35.947014, 34.024517, 43.585133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.136738, 34.171154, 43.595261>,  <36.452942, 34.415550, 43.612141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136738, 34.171154, 43.595261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051288, 0.134708, -0.989557,
		0.610296, -0.780092, -0.137825,
		-0.790511, -0.610991, -0.042202,
		35.899586, 33.987858, 43.582600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632496, 34.113087, 43.064972>,  <36.452942, 34.415550, 43.612141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632496, 34.113087, 43.064972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.242268, 34.043076, 43.118065>,  <36.008129, 34.001068, 43.149921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.242268, 34.043076, 43.118065>,  <36.632496, 34.113087, 43.064972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242268, 34.043076, 43.118065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181511, 0.301989, -0.935872,
		0.123722, -0.937106, -0.326382,
		-0.975575, -0.175030, 0.132733,
		35.949596, 33.990566, 43.157883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426540, 33.653011, 42.554287>,  <36.632496, 34.113087, 43.064972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426540, 33.653011, 42.554287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.074093, 33.822544, 42.638195>,  <35.862625, 33.924263, 42.688541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.074093, 33.822544, 42.638195>,  <36.426540, 33.653011, 42.554287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074093, 33.822544, 42.638195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162375, 0.145477, -0.975946,
		-0.444152, -0.893983, -0.059363,
		-0.881115, 0.423829, 0.209775,
		35.809757, 33.949692, 42.701126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980915, 33.434685, 41.973656>,  <36.426540, 33.653011, 42.554287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980915, 33.434685, 41.973656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.791885, 33.747658, 42.135876>,  <35.678467, 33.935444, 42.233208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.791885, 33.747658, 42.135876>,  <35.980915, 33.434685, 41.973656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791885, 33.747658, 42.135876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204048, 0.350531, -0.914053,
		-0.857345, -0.514707, -0.005997,
		-0.472571, 0.782435, 0.405551,
		35.650112, 33.982388, 42.257542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306370, 33.550507, 41.650692>,  <35.980915, 33.434685, 41.973656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306370, 33.550507, 41.650692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.379051, 33.917198, 41.793011>,  <35.422661, 34.137215, 41.878403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.379051, 33.917198, 41.793011>,  <35.306370, 33.550507, 41.650692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379051, 33.917198, 41.793011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146299, 0.382998, -0.912091,
		-0.972409, 0.113680, 0.203709,
		0.181707, 0.916728, 0.355799,
		35.433563, 34.192215, 41.899750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824673, 33.947716, 41.334927>,  <35.306370, 33.550507, 41.650692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824673, 33.947716, 41.334927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.093006, 34.212757, 41.468163>,  <35.254005, 34.371780, 41.548103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.093006, 34.212757, 41.468163>,  <34.824673, 33.947716, 41.334927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093006, 34.212757, 41.468163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118547, 0.539177, -0.833807,
		-0.732074, 0.519856, 0.440246,
		0.670831, 0.662599, 0.333090,
		35.294254, 34.411537, 41.568089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465214, 34.515347, 41.185982>,  <34.824673, 33.947716, 41.334927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465214, 34.515347, 41.185982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.852692, 34.612671, 41.205730>,  <35.085178, 34.671066, 41.217579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.852692, 34.612671, 41.205730>,  <34.465214, 34.515347, 41.185982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852692, 34.612671, 41.205730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080018, 0.494224, -0.865644,
		-0.235016, 0.834592, 0.498220,
		0.968692, 0.243307, 0.049368,
		35.143299, 34.685661, 41.220539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548820, 35.211880, 41.113323>,  <34.465214, 34.515347, 41.185982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548820, 35.211880, 41.113323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.912136, 35.075119, 41.016895>,  <35.130127, 34.993061, 40.959038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.912136, 35.075119, 41.016895>,  <34.548820, 35.211880, 41.113323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912136, 35.075119, 41.016895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030755, 0.520113, -0.853543,
		0.417212, 0.782678, 0.461898,
		0.908289, -0.341903, -0.241069,
		35.184624, 34.972549, 40.944576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877941, 35.743275, 40.716454>,  <34.548820, 35.211880, 41.113323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877941, 35.743275, 40.716454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.086788, 35.415569, 40.621628>,  <35.212097, 35.218945, 40.564732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.086788, 35.415569, 40.621628>,  <34.877941, 35.743275, 40.716454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086788, 35.415569, 40.621628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196393, 0.385981, -0.901359,
		0.829956, 0.424053, 0.362424,
		0.522113, -0.819266, -0.237067,
		35.243423, 35.169788, 40.550507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358181, 35.932980, 40.241226>,  <34.877941, 35.743275, 40.716454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358181, 35.932980, 40.241226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.353687, 35.539284, 40.170635>,  <35.350990, 35.303066, 40.128281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.353687, 35.539284, 40.170635>,  <35.358181, 35.932980, 40.241226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353687, 35.539284, 40.170635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022445, 0.176199, -0.984099,
		0.999685, -0.015014, 0.020112,
		-0.011232, -0.984240, -0.176481,
		35.350319, 35.244011, 40.117691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000771, 35.705963, 39.936405>,  <35.358181, 35.932980, 40.241226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000771, 35.705963, 39.936405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.691216, 35.474396, 39.833672>,  <35.505482, 35.335457, 39.772034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.691216, 35.474396, 39.833672>,  <36.000771, 35.705963, 39.936405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691216, 35.474396, 39.833672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119901, 0.264270, -0.956967,
		0.621875, -0.771375, -0.135102,
		-0.773883, -0.578915, -0.256832,
		35.459049, 35.300720, 39.756622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111725, 35.257408, 39.349144>,  <36.000771, 35.705963, 39.936405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111725, 35.257408, 39.349144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.713879, 35.230942, 39.317249>,  <35.475170, 35.215061, 39.298115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.713879, 35.230942, 39.317249>,  <36.111725, 35.257408, 39.349144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713879, 35.230942, 39.317249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073634, 0.089988, -0.993217,
		0.072874, -0.993744, -0.084633,
		-0.994619, -0.066148, -0.079732,
		35.415493, 35.211090, 39.293331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935844, 34.920818, 38.689739>,  <36.111725, 35.257408, 39.349144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935844, 34.920818, 38.689739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.609150, 35.126240, 38.794964>,  <35.413132, 35.249493, 38.858097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.609150, 35.126240, 38.794964>,  <35.935844, 34.920818, 38.689739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609150, 35.126240, 38.794964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050193, 0.390944, -0.919045,
		-0.574821, -0.763823, -0.293522,
		-0.816738, 0.513554, 0.263062,
		35.364128, 35.280304, 38.873882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427532, 34.850586, 38.036896>,  <35.935844, 34.920818, 38.689739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427532, 34.850586, 38.036896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.327824, 35.156555, 38.274467>,  <35.267998, 35.340137, 38.417011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.327824, 35.156555, 38.274467>,  <35.427532, 34.850586, 38.036896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327824, 35.156555, 38.274467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119805, 0.584218, -0.802705,
		-0.960994, -0.271249, -0.053988,
		-0.249273, 0.764927, 0.593927,
		35.253040, 35.386032, 38.452644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019516, 35.203625, 37.644554>,  <35.427532, 34.850586, 38.036896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019516, 35.203625, 37.644554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.125862, 35.476368, 37.917141>,  <35.189671, 35.640015, 38.080692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.125862, 35.476368, 37.917141>,  <35.019516, 35.203625, 37.644554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125862, 35.476368, 37.917141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137454, 0.672869, -0.726879,
		-0.954162, 0.286918, 0.085166,
		0.265861, 0.681854, 0.681464,
		35.205620, 35.680923, 38.121582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596352, 35.781269, 37.544296>,  <35.019516, 35.203625, 37.644554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596352, 35.781269, 37.544296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.942886, 35.875732, 37.720337>,  <35.150806, 35.932411, 37.825962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.942886, 35.875732, 37.720337>,  <34.596352, 35.781269, 37.544296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942886, 35.875732, 37.720337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187797, 0.662480, -0.725157,
		-0.462808, 0.710881, 0.529583,
		0.866338, 0.236154, 0.440102,
		35.202789, 35.946579, 37.852367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677887, 36.502968, 37.468018>,  <34.596352, 35.781269, 37.544296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677887, 36.502968, 37.468018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.049999, 36.419277, 37.588551>,  <35.273266, 36.369061, 37.660870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.049999, 36.419277, 37.588551>,  <34.677887, 36.502968, 37.468018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049999, 36.419277, 37.588551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358545, 0.692320, -0.626209,
		-0.077595, 0.690591, 0.719071,
		0.930282, -0.209228, 0.301329,
		35.329082, 36.356510, 37.678947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968506, 37.123142, 37.644276>,  <34.677887, 36.502968, 37.468018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968506, 37.123142, 37.644276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.281715, 36.884533, 37.573811>,  <35.469643, 36.741367, 37.531532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.281715, 36.884533, 37.573811>,  <34.968506, 37.123142, 37.644276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281715, 36.884533, 37.573811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432968, 0.726089, -0.534165,
		0.446553, 0.341990, 0.826821,
		0.783025, -0.596521, -0.176167,
		35.516624, 36.705578, 37.520962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594685, 37.541042, 37.768757>,  <34.968506, 37.123142, 37.644276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594685, 37.541042, 37.768757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.715416, 37.228119, 37.550804>,  <35.787857, 37.040363, 37.420033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.715416, 37.228119, 37.550804>,  <35.594685, 37.541042, 37.768757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715416, 37.228119, 37.550804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596864, 0.600728, -0.531865,
		0.743406, -0.164686, 0.648248,
		0.301830, -0.782307, -0.544880,
		35.805965, 36.993427, 37.387341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294800, 37.719002, 37.517193>,  <35.594685, 37.541042, 37.768757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294800, 37.719002, 37.517193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.198063, 37.416199, 37.274387>,  <36.140022, 37.234516, 37.128704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.198063, 37.416199, 37.274387>,  <36.294800, 37.719002, 37.517193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198063, 37.416199, 37.274387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647123, 0.340308, -0.682219,
		0.723012, -0.557796, 0.407574,
		-0.241838, -0.757003, -0.607010,
		36.125511, 37.189098, 37.092285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896183, 37.365734, 37.294773>,  <36.294800, 37.719002, 37.517193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896183, 37.365734, 37.294773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.616940, 37.288624, 37.018951>,  <36.449394, 37.242355, 36.853458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.616940, 37.288624, 37.018951>,  <36.896183, 37.365734, 37.294773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616940, 37.288624, 37.018951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653658, 0.221438, -0.723669,
		0.292203, -0.955930, -0.028574,
		-0.698104, -0.192780, -0.689556,
		36.407509, 37.230789, 36.812084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208435, 36.841091, 36.747810>,  <36.896183, 37.365734, 37.294773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208435, 36.841091, 36.747810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.918549, 37.031147, 36.548195>,  <36.744617, 37.145180, 36.428425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.918549, 37.031147, 36.548195>,  <37.208435, 36.841091, 36.747810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918549, 37.031147, 36.548195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591805, 0.058252, -0.803973,
		-0.352926, -0.877982, -0.323403,
		-0.724713, 0.475135, -0.499036,
		36.701134, 37.173687, 36.398483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261395, 36.465122, 36.062599>,  <37.208435, 36.841091, 36.747810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261395, 36.465122, 36.062599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.636242, 36.591747, 36.121380>,  <37.861149, 36.667725, 36.156647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.636242, 36.591747, 36.121380>,  <37.261395, 36.465122, 36.062599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636242, 36.591747, 36.121380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021945, -0.366769, 0.930053,
		0.348321, -0.874795, -0.336759,
		0.937118, 0.316567, 0.146950,
		37.917377, 36.686718, 36.165466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615883, 35.884926, 36.443382>,  <37.261395, 36.465122, 36.062599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615883, 35.884926, 36.443382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.866371, 36.188725, 36.513817>,  <38.016666, 36.371002, 36.556080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.866371, 36.188725, 36.513817>,  <37.615883, 35.884926, 36.443382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866371, 36.188725, 36.513817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021564, -0.242645, 0.969875,
		0.779344, -0.603563, -0.168329,
		0.626225, 0.759496, 0.176089,
		38.054237, 36.416573, 36.566643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247932, 35.623539, 36.896904>,  <37.615883, 35.884926, 36.443382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247932, 35.623539, 36.896904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.254047, 36.022232, 36.928631>,  <38.257717, 36.261448, 36.947666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.254047, 36.022232, 36.928631>,  <38.247932, 35.623539, 36.896904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254047, 36.022232, 36.928631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160467, -0.080746, 0.983733,
		0.986923, -0.002308, -0.161177,
		0.015285, 0.996732, 0.079319,
		38.258633, 36.321251, 36.952427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918842, 35.744915, 37.246529>,  <38.247932, 35.623539, 36.896904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918842, 35.744915, 37.246529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.740894, 36.101349, 37.282433>,  <38.634125, 36.315208, 37.303974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.740894, 36.101349, 37.282433>,  <38.918842, 35.744915, 37.246529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740894, 36.101349, 37.282433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284627, 0.045644, 0.957551,
		0.849163, 0.451535, -0.273932,
		-0.444871, 0.891085, 0.089759,
		38.607433, 36.368675, 37.309361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409458, 36.221794, 37.366707>,  <38.918842, 35.744915, 37.246529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409458, 36.221794, 37.366707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.069756, 36.341602, 37.540623>,  <38.865932, 36.413486, 37.644974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.069756, 36.341602, 37.540623>,  <39.409458, 36.221794, 37.366707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069756, 36.341602, 37.540623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472119, 0.062163, 0.879341,
		0.236354, 0.952062, -0.194202,
		-0.849259, 0.299522, 0.434794,
		38.814980, 36.431458, 37.671062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598511, 36.717010, 37.888374>,  <39.409458, 36.221794, 37.366707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598511, 36.717010, 37.888374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.224804, 36.645374, 38.011707>,  <39.000580, 36.602394, 38.085709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.224804, 36.645374, 38.011707>,  <39.598511, 36.717010, 37.888374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224804, 36.645374, 38.011707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298022, 0.082569, 0.950981,
		-0.195769, 0.980362, -0.023769,
		-0.934268, -0.179089, 0.308334,
		38.944523, 36.591648, 38.104206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456940, 37.108616, 38.386761>,  <39.598511, 36.717010, 37.888374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456940, 37.108616, 38.386761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.150688, 36.857262, 38.441818>,  <38.966938, 36.706448, 38.474854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.150688, 36.857262, 38.441818>,  <39.456940, 37.108616, 38.386761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150688, 36.857262, 38.441818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180748, -0.004793, 0.983518,
		-0.617367, 0.777888, 0.117249,
		-0.765629, -0.628384, 0.137643,
		38.920998, 36.668747, 38.483112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155426, 37.365742, 39.024635>,  <39.456940, 37.108616, 38.386761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155426, 37.365742, 39.024635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.072144, 36.976837, 38.982002>,  <39.022175, 36.743496, 38.956421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.072144, 36.976837, 38.982002>,  <39.155426, 37.365742, 39.024635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072144, 36.976837, 38.982002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157906, -0.140954, 0.977342,
		-0.965254, 0.186661, 0.182874,
		-0.208209, -0.972260, -0.106582,
		39.009682, 36.685158, 38.950027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644779, 37.173893, 39.479412>,  <39.155426, 37.365742, 39.024635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644779, 37.173893, 39.479412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.803391, 36.815022, 39.401608>,  <38.898560, 36.599697, 39.354923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.803391, 36.815022, 39.401608>,  <38.644779, 37.173893, 39.479412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803391, 36.815022, 39.401608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168668, -0.137074, 0.976095,
		-0.902393, -0.419861, 0.096971,
		0.396533, -0.897178, -0.194511,
		38.922352, 36.545868, 39.343254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142986, 36.719894, 39.883327>,  <38.644779, 37.173893, 39.479412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142986, 36.719894, 39.883327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.504124, 36.566460, 39.805622>,  <38.720806, 36.474400, 39.758999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.504124, 36.566460, 39.805622>,  <38.142986, 36.719894, 39.883327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504124, 36.566460, 39.805622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223985, 0.033928, 0.974002,
		-0.367025, -0.922881, 0.116549,
		0.902842, -0.383588, -0.194259,
		38.774975, 36.451382, 39.747345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153454, 36.226471, 40.413898>,  <38.142986, 36.719894, 39.883327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153454, 36.226471, 40.413898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.539669, 36.255527, 40.313927>,  <38.771397, 36.272961, 40.253944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.539669, 36.255527, 40.313927>,  <38.153454, 36.226471, 40.413898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539669, 36.255527, 40.313927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239956, 0.123508, 0.962895,
		0.100807, -0.989682, 0.101823,
		0.965535, 0.072634, -0.249931,
		38.829330, 36.277321, 40.238949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502487, 35.757355, 40.807331>,  <38.153454, 36.226471, 40.413898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502487, 35.757355, 40.807331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.776764, 36.030102, 40.705441>,  <38.941330, 36.193752, 40.644306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.776764, 36.030102, 40.705441>,  <38.502487, 35.757355, 40.807331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776764, 36.030102, 40.705441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363881, -0.018028, 0.931271,
		0.630414, -0.731251, -0.260481,
		0.685689, 0.681871, -0.254723,
		38.982471, 36.234661, 40.629025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088799, 35.469906, 41.136017>,  <38.502487, 35.757355, 40.807331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088799, 35.469906, 41.136017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.110744, 35.861107, 41.055508>,  <39.123913, 36.095825, 41.007202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.110744, 35.861107, 41.055508>,  <39.088799, 35.469906, 41.136017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110744, 35.861107, 41.055508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185192, 0.188110, 0.964530,
		0.981170, -0.090189, -0.170797,
		0.054861, 0.977998, -0.201270,
		39.127201, 36.154507, 40.995125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778938, 35.770042, 41.279728>,  <39.088799, 35.469906, 41.136017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778938, 35.770042, 41.279728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.485149, 36.038383, 41.320732>,  <39.308876, 36.199387, 41.345333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.485149, 36.038383, 41.320732>,  <39.778938, 35.770042, 41.279728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485149, 36.038383, 41.320732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083170, -0.060936, 0.994671,
		0.673521, 0.739086, -0.011039,
		-0.734475, 0.670849, 0.102511,
		39.264809, 36.239639, 41.351486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022209, 36.229351, 41.758549>,  <39.778938, 35.770042, 41.279728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022209, 36.229351, 41.758549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.623367, 36.256386, 41.772495>,  <39.384064, 36.272606, 41.780861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.623367, 36.256386, 41.772495>,  <40.022209, 36.229351, 41.758549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623367, 36.256386, 41.772495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029163, -0.083549, 0.996077,
		0.070233, 0.994209, 0.081336,
		-0.997104, 0.067586, 0.034862,
		39.324238, 36.276661, 41.782955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830429, 36.494225, 42.525711>,  <40.022209, 36.229351, 41.758549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830429, 36.494225, 42.525711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.492962, 36.346325, 42.370014>,  <39.290482, 36.257584, 42.276596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.492962, 36.346325, 42.370014>,  <39.830429, 36.494225, 42.525711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492962, 36.346325, 42.370014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301635, -0.273320, 0.913407,
		-0.444121, 0.888021, 0.119061,
		-0.843666, -0.369751, -0.389245,
		39.239861, 36.235401, 42.253242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221088, 36.815102, 42.946648>,  <39.830429, 36.494225, 42.525711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221088, 36.815102, 42.946648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.133839, 36.464859, 42.774261>,  <39.081490, 36.254715, 42.670830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.133839, 36.464859, 42.774261>,  <39.221088, 36.815102, 42.946648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133839, 36.464859, 42.774261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320642, -0.352789, 0.879050,
		-0.921744, 0.329929, -0.203804,
		-0.218124, -0.875607, -0.430969,
		39.068401, 36.202175, 42.644970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654549, 36.679718, 43.239094>,  <39.221088, 36.815102, 42.946648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654549, 36.679718, 43.239094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.779148, 36.327976, 43.095039>,  <38.853909, 36.116932, 43.008606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.779148, 36.327976, 43.095039>,  <38.654549, 36.679718, 43.239094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779148, 36.327976, 43.095039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263662, -0.444092, 0.856308,
		-0.912935, -0.171786, -0.370188,
		0.311499, -0.879359, -0.360134,
		38.872597, 36.064167, 42.987000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.097775, 36.235542, 43.233978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.391109, 35.963825, 43.222805>,  <38.567108, 35.800793, 43.216103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.391109, 35.963825, 43.222805>,  <38.097775, 36.235542, 43.233978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391109, 35.963825, 43.222805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389612, -0.453567, 0.801548,
		-0.557158, -0.576917, -0.597278,
		0.733333, -0.679296, -0.027934,
		38.611111, 35.760036, 43.214424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747524, 35.509956, 43.181889>,  <38.097775, 36.235542, 43.233978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747524, 35.509956, 43.181889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.127159, 35.485458, 43.305492>,  <38.354939, 35.470760, 43.379654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.127159, 35.485458, 43.305492>,  <37.747524, 35.509956, 43.181889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127159, 35.485458, 43.305492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264691, -0.686938, 0.676798,
		0.170821, -0.724130, -0.668173,
		0.949083, -0.061248, 0.309014,
		38.411884, 35.467083, 43.398197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025726, 34.838730, 43.070168>,  <37.747524, 35.509956, 43.181889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025726, 34.838730, 43.070168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.219269, 35.013416, 43.373528>,  <38.335392, 35.118229, 43.555542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.219269, 35.013416, 43.373528>,  <38.025726, 34.838730, 43.070168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219269, 35.013416, 43.373528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405918, -0.655745, 0.636576,
		0.775317, -0.615857, -0.140013,
		0.483853, 0.436715, 0.758398,
		38.364426, 35.144432, 43.601048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827827, 34.313915, 43.530510>,  <38.025726, 34.838730, 43.070168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827827, 34.313915, 43.530510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.021870, 34.588940, 43.746635>,  <38.138294, 34.753956, 43.876308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.021870, 34.588940, 43.746635>,  <37.827827, 34.313915, 43.530510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021870, 34.588940, 43.746635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137460, -0.550242, 0.823613,
		0.863586, -0.473807, -0.172412,
		0.485102, 0.687561, 0.540311,
		38.167400, 34.795208, 43.908730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308304, 33.954887, 43.919891>,  <37.827827, 34.313915, 43.530510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308304, 33.954887, 43.919891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.234310, 34.307995, 44.092632>,  <38.189915, 34.519859, 44.196278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.234310, 34.307995, 44.092632>,  <38.308304, 33.954887, 43.919891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234310, 34.307995, 44.092632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023783, -0.443326, 0.896045,
		0.982453, 0.155487, 0.103005,
		-0.184988, 0.882772, 0.431849,
		38.178814, 34.572826, 44.222187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668468, 34.001968, 44.484180>,  <38.308304, 33.954887, 43.919891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668468, 34.001968, 44.484180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.394314, 34.278477, 44.575733>,  <38.229820, 34.444382, 44.630665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.394314, 34.278477, 44.575733>,  <38.668468, 34.001968, 44.484180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394314, 34.278477, 44.575733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027942, -0.289119, 0.956885,
		0.727642, 0.662233, 0.178843,
		-0.685388, 0.691272, 0.228879,
		38.188698, 34.485859, 44.644398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865608, 34.318676, 45.112171>,  <38.668468, 34.001968, 44.484180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865608, 34.318676, 45.112171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.471905, 34.385273, 45.088463>,  <38.235683, 34.425232, 45.074238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.471905, 34.385273, 45.088463>,  <38.865608, 34.318676, 45.112171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471905, 34.385273, 45.088463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077200, -0.103333, 0.991646,
		0.158978, 0.980613, 0.114560,
		-0.984259, 0.166494, -0.059275,
		38.176628, 34.435223, 45.070679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723576, 34.632694, 45.782753>,  <38.865608, 34.318676, 45.112171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723576, 34.632694, 45.782753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.346996, 34.633747, 45.647896>,  <38.121048, 34.634380, 45.566982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.346996, 34.633747, 45.647896>,  <38.723576, 34.632694, 45.782753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346996, 34.633747, 45.647896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319624, -0.325233, 0.889980,
		-0.107310, 0.945630, 0.307031,
		-0.941448, 0.002631, -0.337147,
		38.064560, 34.634537, 45.546753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311058, 35.205032, 45.999794>,  <38.723576, 34.632694, 45.782753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311058, 35.205032, 45.999794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.130005, 34.853737, 45.938057>,  <38.021374, 34.642960, 45.901012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.130005, 34.853737, 45.938057>,  <38.311058, 35.205032, 45.999794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130005, 34.853737, 45.938057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189545, -0.074376, 0.979051,
		-0.871319, 0.472407, -0.132801,
		-0.452633, -0.878237, -0.154347,
		37.994217, 34.590267, 45.891754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627857, 35.189316, 46.390236>,  <38.311058, 35.205032, 45.999794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627857, 35.189316, 46.390236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.751049, 34.814590, 46.323875>,  <37.824963, 34.589756, 46.284058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.751049, 34.814590, 46.323875>,  <37.627857, 35.189316, 46.390236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751049, 34.814590, 46.323875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134870, -0.215607, 0.967121,
		-0.941785, -0.275477, -0.192751,
		0.307978, -0.936817, -0.165902,
		37.843441, 34.533546, 46.274105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172863, 34.807701, 46.901848>,  <37.627857, 35.189316, 46.390236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172863, 34.807701, 46.901848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.426350, 34.523258, 46.780041>,  <37.578442, 34.352592, 46.706955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.426350, 34.523258, 46.780041>,  <37.172863, 34.807701, 46.901848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426350, 34.523258, 46.780041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029302, -0.415440, 0.909148,
		-0.773011, -0.567218, -0.284108,
		0.633715, -0.711107, -0.304519,
		37.616463, 34.309925, 46.688686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939293, 34.187119, 47.105461>,  <37.172863, 34.807701, 46.901848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939293, 34.187119, 47.105461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.327858, 34.115913, 47.042648>,  <37.560997, 34.073189, 47.004959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.327858, 34.115913, 47.042648>,  <36.939293, 34.187119, 47.105461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327858, 34.115913, 47.042648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045351, -0.510173, 0.858876,
		-0.233005, -0.841448, -0.487517,
		0.971417, -0.178013, -0.157033,
		37.619282, 34.062508, 46.995537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004395, 33.463760, 47.238693>,  <36.939293, 34.187119, 47.105461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004395, 33.463760, 47.238693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.372074, 33.616909, 47.275532>,  <37.592682, 33.708797, 47.297634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.372074, 33.616909, 47.275532>,  <37.004395, 33.463760, 47.238693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372074, 33.616909, 47.275532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162341, -0.581503, 0.797182,
		0.358770, -0.717820, -0.596673,
		0.919201, 0.382869, 0.092094,
		37.647835, 33.731770, 47.303162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407295, 32.891663, 47.283131>,  <37.004395, 33.463760, 47.238693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407295, 32.891663, 47.283131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.596596, 33.191780, 47.467781>,  <37.710175, 33.371849, 47.578571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.596596, 33.191780, 47.467781>,  <37.407295, 32.891663, 47.283131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596596, 33.191780, 47.467781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101259, -0.566876, 0.817556,
		0.875090, -0.340164, -0.344248,
		0.473249, 0.750293, 0.461622,
		37.738571, 33.416866, 47.606266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028946, 32.578064, 47.656757>,  <37.407295, 32.891663, 47.283131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028946, 32.578064, 47.656757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.966663, 32.938065, 47.819611>,  <37.929295, 33.154064, 47.917320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.966663, 32.938065, 47.819611>,  <38.028946, 32.578064, 47.656757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966663, 32.938065, 47.819611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254845, -0.361604, 0.896826,
		0.954363, 0.243399, -0.173055,
		-0.155709, 0.900000, 0.407130,
		37.919952, 33.208065, 47.941750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516968, 32.686684, 48.191154>,  <38.028946, 32.578064, 47.656757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516968, 32.686684, 48.191154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.231976, 32.952271, 48.281948>,  <38.060982, 33.111622, 48.336426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.231976, 32.952271, 48.281948>,  <38.516968, 32.686684, 48.191154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231976, 32.952271, 48.281948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078008, -0.246533, 0.965990,
		0.697341, 0.705957, 0.123856,
		-0.712482, 0.663962, 0.226988,
		38.018230, 33.151459, 48.350044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671421, 32.810402, 48.798855>,  <38.516968, 32.686684, 48.191154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671421, 32.810402, 48.798855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.301258, 32.959587, 48.771957>,  <38.079159, 33.049099, 48.755821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.301258, 32.959587, 48.771957>,  <38.671421, 32.810402, 48.798855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301258, 32.959587, 48.771957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217475, -0.377315, 0.900188,
		0.310362, 0.847665, 0.430279,
		-0.925408, 0.372959, -0.067242,
		38.023636, 33.071476, 48.751785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595146, 33.255920, 49.310242>,  <38.671421, 32.810402, 48.798855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595146, 33.255920, 49.310242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.212227, 33.184734, 49.219105>,  <37.982475, 33.142021, 49.164421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.212227, 33.184734, 49.219105>,  <38.595146, 33.255920, 49.310242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212227, 33.184734, 49.219105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225232, -0.035023, 0.973675,
		-0.181260, 0.983413, -0.006556,
		-0.957296, -0.177965, -0.227844,
		37.925037, 33.131344, 49.150753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298138, 33.727242, 49.701096>,  <38.595146, 33.255920, 49.310242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298138, 33.727242, 49.701096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.040951, 33.426025, 49.645210>,  <37.886639, 33.245296, 49.611679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.040951, 33.426025, 49.645210>,  <38.298138, 33.727242, 49.701096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040951, 33.426025, 49.645210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032705, -0.155263, 0.987332,
		-0.765196, 0.639391, 0.075201,
		-0.642967, -0.753043, -0.139718,
		37.848061, 33.200111, 49.603294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625465, 33.765491, 50.244041>,  <38.298138, 33.727242, 49.701096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625465, 33.765491, 50.244041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.625668, 33.389706, 50.106987>,  <37.625790, 33.164234, 50.024754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.625668, 33.389706, 50.106987>,  <37.625465, 33.765491, 50.244041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625668, 33.389706, 50.106987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286437, -0.328415, 0.900054,
		-0.958099, 0.097684, -0.269266,
		0.000510, -0.939469, -0.342635,
		37.625820, 33.107864, 50.004196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952797, 33.444729, 50.486649>,  <37.625465, 33.765491, 50.244041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952797, 33.444729, 50.486649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.189533, 33.134869, 50.397526>,  <37.331573, 32.948952, 50.344051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.189533, 33.134869, 50.397526>,  <36.952797, 33.444729, 50.486649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189533, 33.134869, 50.397526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144529, -0.373917, 0.916132,
		-0.792995, -0.509998, -0.333258,
		0.591836, -0.774653, -0.222805,
		37.367085, 32.902473, 50.330685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665401, 32.938416, 50.804665>,  <36.952797, 33.444729, 50.486649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665401, 32.938416, 50.804665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.028942, 32.785210, 50.738598>,  <37.247066, 32.693287, 50.698959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.028942, 32.785210, 50.738598>,  <36.665401, 32.938416, 50.804665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028942, 32.785210, 50.738598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104862, -0.593064, 0.798298,
		-0.403714, -0.708218, -0.579173,
		0.908856, -0.383017, -0.165163,
		37.301598, 32.670303, 50.689049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452518, 32.290924, 51.081791>,  <36.665401, 32.938416, 50.804665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452518, 32.290924, 51.081791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.818443, 32.282951, 51.243141>,  <37.037998, 32.278168, 51.339951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.818443, 32.282951, 51.243141>,  <36.452518, 32.290924, 51.081791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818443, 32.282951, 51.243141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327742, -0.620281, 0.712627,
		0.236003, -0.784126, -0.573976,
		0.914816, -0.019934, 0.403379,
		37.092888, 32.276970, 51.364155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615036, 31.543182, 51.216259>,  <36.452518, 32.290924, 51.081791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615036, 31.543182, 51.216259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.812057, 31.756844, 51.491089>,  <36.930271, 31.885040, 51.655987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.812057, 31.756844, 51.491089>,  <36.615036, 31.543182, 51.216259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812057, 31.756844, 51.491089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529465, -0.442648, 0.723692,
		0.690696, -0.720237, 0.064789,
		0.492551, 0.534155, 0.687075,
		36.959824, 31.917089, 51.697212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055450, 31.364557, 50.866928>,  <36.615036, 31.543182, 51.216259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055450, 31.364557, 50.866928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.702091, 31.178053, 50.885708>,  <35.490074, 31.066151, 50.896976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.702091, 31.178053, 50.885708>,  <36.055450, 31.364557, 50.866928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702091, 31.178053, 50.885708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095717, 0.081464, -0.992070,
		0.458737, -0.880889, -0.116594,
		-0.883402, -0.466259, 0.046946,
		35.437069, 31.038176, 50.899792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170250, 30.892159, 50.429501>,  <36.055450, 31.364557, 50.866928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170250, 30.892159, 50.429501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.770885, 30.914478, 50.432835>,  <35.531269, 30.927870, 50.434834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.770885, 30.914478, 50.432835>,  <36.170250, 30.892159, 50.429501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770885, 30.914478, 50.432835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006930, 0.025330, -0.999655,
		-0.055992, -0.998121, -0.024903,
		-0.998407, 0.055800, 0.008335,
		35.471363, 30.931217, 50.435337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891582, 30.439856, 49.898506>,  <36.170250, 30.892159, 50.429501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891582, 30.439856, 49.898506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.581181, 30.683098, 49.965466>,  <35.394939, 30.829044, 50.005642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.581181, 30.683098, 49.965466>,  <35.891582, 30.439856, 49.898506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581181, 30.683098, 49.965466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212783, -0.002557, -0.977096,
		-0.593751, -0.793851, 0.131380,
		-0.776005, 0.608107, 0.167400,
		35.348377, 30.865530, 50.015686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397354, 30.182930, 49.486786>,  <35.891582, 30.439856, 49.898506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397354, 30.182930, 49.486786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.283154, 30.560713, 49.551884>,  <35.214634, 30.787382, 49.590942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.283154, 30.560713, 49.551884>,  <35.397354, 30.182930, 49.486786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283154, 30.560713, 49.551884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233261, 0.096230, -0.967641,
		-0.929556, -0.314230, 0.192831,
		-0.285506, 0.944457, 0.162748,
		35.197502, 30.844049, 49.600708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690517, 30.321411, 49.121796>,  <35.397354, 30.182930, 49.486786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690517, 30.321411, 49.121796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.832291, 30.691202, 49.177959>,  <34.917355, 30.913076, 49.211658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.832291, 30.691202, 49.177959>,  <34.690517, 30.321411, 49.121796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832291, 30.691202, 49.177959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059971, 0.172323, -0.983213,
		-0.933155, 0.340066, 0.116520,
		0.354436, 0.924478, 0.140409,
		34.938622, 30.968546, 49.220081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441689, 30.745794, 48.531025>,  <34.690517, 30.321411, 49.121796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441689, 30.745794, 48.531025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.729820, 30.970078, 48.694355>,  <34.902699, 31.104649, 48.792355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.729820, 30.970078, 48.694355>,  <34.441689, 30.745794, 48.531025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729820, 30.970078, 48.694355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193045, 0.403364, -0.894445,
		-0.666228, 0.723120, 0.182312,
		0.720329, 0.560710, 0.408327,
		34.945919, 31.138290, 48.816853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249870, 31.388281, 48.316467>,  <34.441689, 30.745794, 48.531025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249870, 31.388281, 48.316467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.641369, 31.355721, 48.391762>,  <34.876266, 31.336185, 48.436939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.641369, 31.355721, 48.391762>,  <34.249870, 31.388281, 48.316467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641369, 31.355721, 48.391762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204326, 0.465992, -0.860873,
		-0.017644, 0.881037, 0.472719,
		0.978744, -0.081400, 0.188240,
		34.934994, 31.331301, 48.448235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541862, 32.046837, 48.038895>,  <34.249870, 31.388281, 48.316467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541862, 32.046837, 48.038895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.856766, 31.801916, 48.068031>,  <35.045708, 31.654964, 48.085514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.856766, 31.801916, 48.068031>,  <34.541862, 32.046837, 48.038895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856766, 31.801916, 48.068031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458856, 0.502819, -0.732547,
		0.411912, 0.610131, 0.676808,
		0.787261, -0.612302, 0.072845,
		35.092945, 31.618225, 48.089886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069672, 32.425049, 48.008015>,  <34.541862, 32.046837, 48.038895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069672, 32.425049, 48.008015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.258480, 32.080555, 47.932678>,  <35.371765, 31.873859, 47.887478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.258480, 32.080555, 47.932678>,  <35.069672, 32.425049, 48.008015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258480, 32.080555, 47.932678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542340, 0.452106, -0.708144,
		0.695026, 0.232117, 0.680486,
		0.472024, -0.861233, -0.188340,
		35.400085, 31.822186, 47.876175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765148, 32.589226, 48.018417>,  <35.069672, 32.425049, 48.008015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765148, 32.589226, 48.018417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.737137, 32.242374, 47.821159>,  <35.720329, 32.034264, 47.702805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.737137, 32.242374, 47.821159>,  <35.765148, 32.589226, 48.018417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737137, 32.242374, 47.821159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697016, 0.311120, -0.646044,
		0.713628, -0.388967, 0.582614,
		-0.070027, -0.867126, -0.493141,
		35.716129, 31.982237, 47.673218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483253, 32.351200, 47.823559>,  <35.765148, 32.589226, 48.018417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483253, 32.351200, 47.823559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.213173, 32.190475, 47.576122>,  <36.051125, 32.094040, 47.427662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.213173, 32.190475, 47.576122>,  <36.483253, 32.351200, 47.823559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213173, 32.190475, 47.576122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494944, 0.375012, -0.783834,
		0.546929, -0.835414, -0.054338,
		-0.675203, -0.401808, -0.618588,
		36.010612, 32.069935, 47.390545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887524, 32.311001, 47.220497>,  <36.483253, 32.351200, 47.823559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887524, 32.311001, 47.220497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.520119, 32.235558, 47.081493>,  <36.299675, 32.190292, 46.998089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.520119, 32.235558, 47.081493>,  <36.887524, 32.311001, 47.220497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520119, 32.235558, 47.081493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244850, 0.418782, -0.874454,
		0.310457, -0.888285, -0.338477,
		-0.918512, -0.188604, -0.347511,
		36.244564, 32.178974, 46.977242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907192, 31.956085, 46.538155>,  <36.887524, 32.311001, 47.220497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907192, 31.956085, 46.538155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.557343, 32.149899, 46.544628>,  <36.347435, 32.266186, 46.548512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.557343, 32.149899, 46.544628>,  <36.907192, 31.956085, 46.538155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557343, 32.149899, 46.544628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167122, 0.332666, -0.928118,
		-0.455090, -0.809048, -0.371933,
		-0.874622, 0.484536, 0.016183,
		36.294956, 32.295258, 46.549484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546963, 31.837309, 45.890148>,  <36.907192, 31.956085, 46.538155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546963, 31.837309, 45.890148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.347603, 32.148315, 46.043545>,  <36.227985, 32.334919, 46.135582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.347603, 32.148315, 46.043545>,  <36.546963, 31.837309, 45.890148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347603, 32.148315, 46.043545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100603, 0.387491, -0.916368,
		-0.861089, -0.495299, -0.114905,
		-0.498401, 0.777515, 0.383493,
		36.198082, 32.381569, 46.158592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959503, 31.859684, 45.467075>,  <36.546963, 31.837309, 45.890148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959503, 31.859684, 45.467075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.958122, 32.227757, 45.623665>,  <35.957294, 32.448601, 45.717621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.958122, 32.227757, 45.623665>,  <35.959503, 31.859684, 45.467075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958122, 32.227757, 45.623665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103242, 0.389059, -0.915410,
		-0.994650, -0.043581, 0.093656,
		-0.003457, 0.920181, 0.391477,
		35.957085, 32.503811, 45.741108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392292, 32.154514, 45.169647>,  <35.959503, 31.859684, 45.467075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392292, 32.154514, 45.169647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.605770, 32.465317, 45.303169>,  <35.733856, 32.651798, 45.383282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.605770, 32.465317, 45.303169>,  <35.392292, 32.154514, 45.169647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605770, 32.465317, 45.303169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181648, 0.490838, -0.852105,
		-0.825939, 0.394127, 0.403099,
		0.533693, 0.777009, 0.333810,
		35.765877, 32.698418, 45.403313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000381, 32.776970, 45.095707>,  <35.392292, 32.154514, 45.169647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000381, 32.776970, 45.095707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.373409, 32.920815, 45.083157>,  <35.597225, 33.007122, 45.075626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.373409, 32.920815, 45.083157>,  <35.000381, 32.776970, 45.095707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373409, 32.920815, 45.083157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283476, 0.675752, -0.680442,
		-0.223494, 0.643456, 0.732130,
		0.932573, 0.359616, -0.031378,
		35.653183, 33.028698, 45.073742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864834, 33.582127, 44.960835>,  <35.000381, 32.776970, 45.095707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864834, 33.582127, 44.960835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.245720, 33.512119, 44.860703>,  <35.474251, 33.470116, 44.800625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.245720, 33.512119, 44.860703>,  <34.864834, 33.582127, 44.960835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245720, 33.512119, 44.860703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128393, 0.514286, -0.847954,
		0.277144, 0.839572, 0.467238,
		0.952211, -0.175015, -0.250326,
		35.531384, 33.459614, 44.785606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150970, 34.220119, 44.703876>,  <34.864834, 33.582127, 44.960835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150970, 34.220119, 44.703876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.392773, 33.934536, 44.562546>,  <35.537853, 33.763187, 44.477749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.392773, 33.934536, 44.562546>,  <35.150970, 34.220119, 44.703876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392773, 33.934536, 44.562546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070160, 0.394101, -0.916385,
		0.793503, 0.578752, 0.188146,
		0.604508, -0.713954, -0.353326,
		35.574123, 33.720348, 44.456547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788158, 34.566456, 44.405708>,  <35.150970, 34.220119, 44.703876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788158, 34.566456, 44.405708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.773804, 34.202927, 44.239452>,  <35.765190, 33.984810, 44.139698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.773804, 34.202927, 44.239452>,  <35.788158, 34.566456, 44.405708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773804, 34.202927, 44.239452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158760, 0.405443, -0.900229,
		0.986665, -0.098293, 0.129735,
		-0.035886, -0.908821, -0.415641,
		35.763039, 33.930279, 44.114761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.188972, 37.904301, 42.687725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.893436, 37.804569, 42.938148>,  <45.716114, 37.744732, 43.088402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.893436, 37.804569, 42.938148>,  <46.188972, 37.904301, 42.687725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.893436, 37.804569, 42.938148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176254, -0.825196, -0.536643,
		0.650421, -0.506840, 0.565745,
		-0.738842, -0.249329, 0.626057,
		45.671783, 37.729771, 43.125965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.265675, 37.129204, 42.855549>,  <46.188972, 37.904301, 42.687725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.265675, 37.129204, 42.855549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.872452, 37.192837, 42.891960>,  <45.636517, 37.231018, 42.913807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.872452, 37.192837, 42.891960>,  <46.265675, 37.129204, 42.855549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.872452, 37.192837, 42.891960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180196, -0.747987, -0.638784,
		-0.033529, -0.644366, 0.763981,
		-0.983059, 0.159084, 0.091033,
		45.577534, 37.240562, 42.919270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.902565, 36.453785, 42.753437>,  <46.265675, 37.129204, 42.855549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.902565, 36.453785, 42.753437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.602940, 36.716869, 42.721645>,  <45.423164, 36.874722, 42.702572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.602940, 36.716869, 42.721645>,  <45.902565, 36.453785, 42.753437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602940, 36.716869, 42.721645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390460, -0.535208, -0.749062,
		-0.535208, -0.530060, 0.657715,
		0.749062, -0.657715, 0.079480,
		45.378220, 36.914185, 42.697800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.172924, 36.049774, 42.691746>,  <45.902565, 36.453785, 42.753437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.172924, 36.049774, 42.691746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.106529, 36.406376, 42.523144>,  <45.066692, 36.620338, 42.421982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.106529, 36.406376, 42.523144>,  <45.172924, 36.049774, 42.691746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.106529, 36.406376, 42.523144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429254, -0.450130, -0.783022,
		-0.887801, 0.050963, 0.457397,
		-0.165983, 0.891508, -0.421502,
		45.056736, 36.673828, 42.396694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707653, 35.842033, 42.327778>,  <45.172924, 36.049774, 42.691746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707653, 35.842033, 42.327778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.762527, 36.212261, 42.186642>,  <44.795452, 36.434399, 42.101959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.762527, 36.212261, 42.186642>,  <44.707653, 35.842033, 42.327778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.762527, 36.212261, 42.186642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193891, -0.324224, -0.925897,
		-0.971383, 0.195437, 0.134980,
		0.137190, 0.925572, -0.352840,
		44.803684, 36.489933, 42.080791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.088276, 35.989815, 41.946930>,  <44.707653, 35.842033, 42.327778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.088276, 35.989815, 41.946930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.389153, 36.220051, 41.818615>,  <44.569679, 36.358192, 41.741627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.389153, 36.220051, 41.818615>,  <44.088276, 35.989815, 41.946930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.389153, 36.220051, 41.818615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283136, -0.157272, -0.946097,
		-0.595019, 0.802469, 0.044674,
		0.752188, 0.575594, -0.320788,
		44.614807, 36.392731, 41.722378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944290, 36.489117, 41.308849>,  <44.088276, 35.989815, 41.946930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.944290, 36.489117, 41.308849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.337666, 36.438946, 41.256508>,  <44.573689, 36.408844, 41.225101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.337666, 36.438946, 41.256508>,  <43.944290, 36.489117, 41.308849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.337666, 36.438946, 41.256508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152460, -0.181931, -0.971420,
		0.098033, 0.975280, -0.198039,
		0.983436, -0.125424, -0.130856,
		44.632698, 36.401318, 41.217251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128597, 36.974316, 40.697517>,  <43.944290, 36.489117, 41.308849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.128597, 36.974316, 40.697517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.430119, 36.712421, 40.719780>,  <44.611031, 36.555286, 40.733135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.430119, 36.712421, 40.719780>,  <44.128597, 36.974316, 40.697517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.430119, 36.712421, 40.719780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000999, -0.085838, -0.996309,
		0.657095, 0.750969, -0.065360,
		0.753807, -0.654735, 0.055654,
		44.656261, 36.516003, 40.736477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.501064, 37.126373, 40.180210>,  <44.128597, 36.974316, 40.697517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.501064, 37.126373, 40.180210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.646408, 36.757462, 40.232922>,  <44.733616, 36.536114, 40.264549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.646408, 36.757462, 40.232922>,  <44.501064, 37.126373, 40.180210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.646408, 36.757462, 40.232922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062671, -0.116926, -0.991161,
		0.929538, 0.368409, 0.015314,
		0.363362, -0.922282, 0.131775,
		44.755417, 36.480778, 40.272453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.160488, 37.038822, 39.740383>,  <44.501064, 37.126373, 40.180210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.160488, 37.038822, 39.740383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.019253, 36.675152, 39.828682>,  <44.934513, 36.456951, 39.881660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.019253, 36.675152, 39.828682>,  <45.160488, 37.038822, 39.740383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.019253, 36.675152, 39.828682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019544, -0.243062, -0.969814,
		0.935387, -0.338112, 0.103590,
		-0.353084, -0.909176, 0.220749,
		44.913326, 36.402397, 39.894905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.666466, 36.576797, 39.518700>,  <45.160488, 37.038822, 39.740383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.666466, 36.576797, 39.518700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.320461, 36.376938, 39.537014>,  <45.112858, 36.257023, 39.548000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.320461, 36.376938, 39.537014>,  <45.666466, 36.576797, 39.518700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.320461, 36.376938, 39.537014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046966, -0.171480, -0.984067,
		0.499543, -0.849083, 0.171799,
		-0.865015, -0.499653, 0.045783,
		45.060955, 36.227043, 39.550751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.782001, 35.933434, 39.271370>,  <45.666466, 36.576797, 39.518700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.782001, 35.933434, 39.271370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.382938, 35.944988, 39.246559>,  <45.143501, 35.951920, 39.231674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.382938, 35.944988, 39.246559>,  <45.782001, 35.933434, 39.271370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.382938, 35.944988, 39.246559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052718, -0.253404, -0.965923,
		-0.043620, -0.966929, 0.251287,
		-0.997657, 0.028886, -0.062028,
		45.083641, 35.953655, 39.227951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.696686, 35.296444, 38.937317>,  <45.782001, 35.933434, 39.271370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.696686, 35.296444, 38.937317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.382946, 35.541119, 38.896046>,  <45.194702, 35.687923, 38.871284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.382946, 35.541119, 38.896046>,  <45.696686, 35.296444, 38.937317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.382946, 35.541119, 38.896046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090919, -0.277889, -0.956301,
		-0.613626, -0.740689, 0.273575,
		-0.784345, 0.611684, -0.103177,
		45.147644, 35.724625, 38.865093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.144062, 34.800438, 38.603424>,  <45.696686, 35.296444, 38.937317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.144062, 34.800438, 38.603424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.052288, 35.185940, 38.548962>,  <44.997223, 35.417240, 38.516285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.052288, 35.185940, 38.548962>,  <45.144062, 34.800438, 38.603424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.052288, 35.185940, 38.548962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053450, -0.152153, -0.986911,
		-0.971855, -0.219156, 0.086423,
		-0.229437, 0.963753, -0.136157,
		44.983456, 35.475067, 38.508114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.547749, 34.796616, 38.060627>,  <45.144062, 34.800438, 38.603424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.547749, 34.796616, 38.060627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.692039, 35.169575, 38.051609>,  <44.778614, 35.393349, 38.046200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.692039, 35.169575, 38.051609>,  <44.547749, 34.796616, 38.060627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.692039, 35.169575, 38.051609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032358, -0.036671, -0.998803,
		-0.932110, 0.359565, -0.043398,
		0.360726, 0.932399, -0.022546,
		44.800259, 35.449295, 38.044846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.092625, 35.066723, 37.593597>,  <44.547749, 34.796616, 38.060627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.092625, 35.066723, 37.593597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.393215, 35.330284, 37.607082>,  <44.573570, 35.488419, 37.615173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.393215, 35.330284, 37.607082>,  <44.092625, 35.066723, 37.593597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.393215, 35.330284, 37.607082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176426, 0.249923, -0.952057,
		-0.635736, 0.709499, 0.304058,
		0.751474, 0.658901, 0.033711,
		44.618656, 35.527954, 37.617195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.862537, 35.715767, 37.215111>,  <44.092625, 35.066723, 37.593597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.862537, 35.715767, 37.215111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.262302, 35.702827, 37.219769>,  <44.502159, 35.695065, 37.222561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.262302, 35.702827, 37.219769>,  <43.862537, 35.715767, 37.215111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.262302, 35.702827, 37.219769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021733, 0.332100, -0.942994,
		0.026638, 0.942689, 0.332607,
		0.999409, -0.032348, 0.011641,
		44.562126, 35.693123, 37.223263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.116673, 36.338730, 36.804913>,  <43.862537, 35.715767, 37.215111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.116673, 36.338730, 36.804913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.422195, 36.080906, 36.818432>,  <44.605511, 35.926212, 36.826546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.422195, 36.080906, 36.818432>,  <44.116673, 36.338730, 36.804913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422195, 36.080906, 36.818432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264296, 0.264558, -0.927446,
		0.588853, 0.717322, 0.372426,
		0.763806, -0.644560, 0.033800,
		44.651337, 35.887539, 36.828571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.617935, 36.721863, 36.481159>,  <44.116673, 36.338730, 36.804913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.617935, 36.721863, 36.481159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.737400, 36.341747, 36.445950>,  <44.809078, 36.113678, 36.424824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.737400, 36.341747, 36.445950>,  <44.617935, 36.721863, 36.481159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.737400, 36.341747, 36.445950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141242, 0.135229, -0.980696,
		0.943849, 0.280465, 0.174609,
		0.298663, -0.950291, -0.088022,
		44.827000, 36.056660, 36.419544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.043449, 36.727100, 35.841461>,  <44.617935, 36.721863, 36.481159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.043449, 36.727100, 35.841461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.967903, 36.338413, 35.898155>,  <44.922573, 36.105202, 35.932171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.967903, 36.338413, 35.898155>,  <45.043449, 36.727100, 35.841461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967903, 36.338413, 35.898155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098335, -0.162326, -0.981825,
		0.977066, -0.171499, 0.126212,
		-0.188869, -0.971719, 0.141739,
		44.911243, 36.046898, 35.940678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.583107, 36.337837, 35.474861>,  <45.043449, 36.727100, 35.841461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.583107, 36.337837, 35.474861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.257236, 36.109344, 35.514858>,  <45.061714, 35.972248, 35.538857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.257236, 36.109344, 35.514858>,  <45.583107, 36.337837, 35.474861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.257236, 36.109344, 35.514858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005593, -0.180154, -0.983623,
		0.579895, -0.800771, 0.149961,
		-0.814672, -0.571237, 0.099991,
		45.012836, 35.937973, 35.544857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.366253, 36.375469, 35.474075>,  <45.583107, 36.337837, 35.474861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.366253, 36.375469, 35.474075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.658894, 36.563183, 35.276276>,  <46.834476, 36.675812, 35.157597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.658894, 36.563183, 35.276276>,  <46.366253, 36.375469, 35.474075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.658894, 36.563183, 35.276276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034569, 0.698888, 0.714395,
		0.680851, -0.539750, 0.495088,
		0.731606, 0.469282, -0.494497,
		46.878376, 36.703968, 35.127926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.081623, 36.487617, 35.746426>,  <46.366253, 36.375469, 35.474075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.081623, 36.487617, 35.746426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.045895, 36.779255, 35.475002>,  <47.024456, 36.954235, 35.312149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.045895, 36.779255, 35.475002>,  <47.081623, 36.487617, 35.746426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.045895, 36.779255, 35.475002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000688, 0.681331, 0.731975,
		0.996002, 0.064915, -0.061360,
		-0.089323, 0.729091, -0.678563,
		47.019096, 36.997982, 35.271435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.651157, 36.904339, 35.923153>,  <47.081623, 36.487617, 35.746426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.651157, 36.904339, 35.923153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.403259, 37.136917, 35.712315>,  <47.254520, 37.276463, 35.585812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.403259, 37.136917, 35.712315>,  <47.651157, 36.904339, 35.923153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.403259, 37.136917, 35.712315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100065, 0.724697, 0.681763,
		0.778397, 0.369777, -0.507311,
		-0.619747, 0.581446, -0.527100,
		47.217335, 37.311352, 35.554184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.951225, 37.456238, 35.914146>,  <47.651157, 36.904339, 35.923153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.951225, 37.456238, 35.914146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.569065, 37.553497, 35.847111>,  <47.339767, 37.611855, 35.806889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.569065, 37.553497, 35.847111>,  <47.951225, 37.456238, 35.914146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.569065, 37.553497, 35.847111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096035, 0.792478, 0.602292,
		0.279263, 0.559335, -0.780485,
		-0.955400, 0.243152, -0.167594,
		47.282444, 37.626442, 35.796833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.968353, 38.113625, 35.948822>,  <47.951225, 37.456238, 35.914146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.968353, 38.113625, 35.948822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.575691, 38.056545, 35.999409>,  <47.340096, 38.022297, 36.029758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.575691, 38.056545, 35.999409>,  <47.968353, 38.113625, 35.948822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.575691, 38.056545, 35.999409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034138, 0.784084, 0.619715,
		-0.187588, 0.604029, -0.774571,
		-0.981654, -0.142694, 0.126464,
		47.281197, 38.013737, 36.037350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.619373, 38.825752, 35.822220>,  <47.968353, 38.113625, 35.948822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.619373, 38.825752, 35.822220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.324711, 38.626041, 36.004673>,  <47.147915, 38.506214, 36.114147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.324711, 38.626041, 36.004673>,  <47.619373, 38.825752, 35.822220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.324711, 38.626041, 36.004673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008062, 0.667956, 0.744157,
		-0.676221, 0.551864, -0.488027,
		-0.736654, -0.499281, 0.456135,
		47.103714, 38.476257, 36.141514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.204510, 39.337013, 36.082985>,  <47.619373, 38.825752, 35.822220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.204510, 39.337013, 36.082985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.085327, 39.011093, 36.281914>,  <47.013817, 38.815540, 36.401272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.085327, 39.011093, 36.281914>,  <47.204510, 39.337013, 36.082985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.085327, 39.011093, 36.281914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121500, 0.549117, 0.826867,
		-0.946817, 0.185943, -0.262608,
		-0.297953, -0.814798, 0.497321,
		46.995941, 38.766655, 36.431110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.661839, 39.537766, 36.382278>,  <47.204510, 39.337013, 36.082985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.661839, 39.537766, 36.382278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.729019, 39.210251, 36.601871>,  <46.769325, 39.013741, 36.733627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.729019, 39.210251, 36.601871>,  <46.661839, 39.537766, 36.382278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.729019, 39.210251, 36.601871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216252, 0.512724, 0.830872,
		-0.961784, -0.258263, -0.090953,
		0.167950, -0.818788, 0.548980,
		46.779404, 38.964615, 36.766567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.137268, 39.465290, 36.885387>,  <46.661839, 39.537766, 36.382278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.137268, 39.465290, 36.885387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.452724, 39.280979, 37.048225>,  <46.641998, 39.170391, 37.145927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.452724, 39.280979, 37.048225>,  <46.137268, 39.465290, 36.885387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.452724, 39.280979, 37.048225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227090, 0.397004, 0.889279,
		-0.571382, -0.793769, 0.208455,
		0.788640, -0.460780, 0.407098,
		46.689316, 39.142746, 37.170353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.912762, 39.034054, 37.476406>,  <46.137268, 39.465290, 36.885387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.912762, 39.034054, 37.476406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.298550, 39.104568, 37.555119>,  <46.530022, 39.146877, 37.602345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.298550, 39.104568, 37.555119>,  <45.912762, 39.034054, 37.476406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.298550, 39.104568, 37.555119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238373, 0.259468, 0.935871,
		0.113924, -0.949526, 0.292271,
		0.964468, 0.176288, 0.196782,
		46.587891, 39.157455, 37.614155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.006077, 38.785858, 38.094040>,  <45.912762, 39.034054, 37.476406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.006077, 38.785858, 38.094040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.345547, 38.992355, 38.048000>,  <46.549229, 39.116253, 38.020374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.345547, 38.992355, 38.048000>,  <46.006077, 38.785858, 38.094040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.345547, 38.992355, 38.048000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099075, 0.058609, 0.993353,
		0.519561, -0.854433, -0.001408,
		0.848670, 0.516246, -0.115103,
		46.600147, 39.147228, 38.013470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.451885, 38.497078, 38.568558>,  <46.006077, 38.785858, 38.094040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.451885, 38.497078, 38.568558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.617489, 38.849178, 38.475819>,  <46.716850, 39.060440, 38.420174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.617489, 38.849178, 38.475819>,  <46.451885, 38.497078, 38.568558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.617489, 38.849178, 38.475819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125908, 0.196877, 0.972310,
		0.901523, -0.431736, -0.029322,
		0.414008, 0.880252, -0.231848,
		46.741692, 39.113255, 38.406265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.136047, 38.515949, 38.887032>,  <46.451885, 38.497078, 38.568558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.136047, 38.515949, 38.887032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.995804, 38.887306, 38.837772>,  <46.911659, 39.110119, 38.808216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.995804, 38.887306, 38.837772>,  <47.136047, 38.515949, 38.887032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.995804, 38.887306, 38.837772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025239, 0.122082, 0.992199,
		0.936182, 0.350983, -0.019371,
		-0.350610, 0.928390, -0.123149,
		46.890621, 39.165825, 38.800827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.512691, 38.774185, 39.361935>,  <47.136047, 38.515949, 38.887032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.512691, 38.774185, 39.361935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.227726, 39.045452, 39.289764>,  <47.056747, 39.208214, 39.246464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.227726, 39.045452, 39.289764>,  <47.512691, 38.774185, 39.361935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.227726, 39.045452, 39.289764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000703, 0.257789, 0.966201,
		0.701756, 0.688211, -0.184130,
		-0.712417, 0.678167, -0.180421,
		47.014000, 39.248901, 39.235638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.705841, 39.321960, 39.701614>,  <47.512691, 38.774185, 39.361935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.705841, 39.321960, 39.701614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.330235, 39.433903, 39.621677>,  <47.104870, 39.501068, 39.573715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.330235, 39.433903, 39.621677>,  <47.705841, 39.321960, 39.701614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.330235, 39.433903, 39.621677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069008, 0.415974, 0.906755,
		0.336887, 0.865245, -0.371293,
		-0.939013, 0.279852, -0.199845,
		47.048531, 39.517857, 39.561726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.690548, 40.042915, 39.843639>,  <47.705841, 39.321960, 39.701614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.690548, 40.042915, 39.843639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.337433, 39.863556, 39.899670>,  <47.125565, 39.755939, 39.933289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.337433, 39.863556, 39.899670>,  <47.690548, 40.042915, 39.843639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.337433, 39.863556, 39.899670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001434, 0.300750, 0.953702,
		-0.469769, 0.841716, -0.266141,
		-0.882788, -0.448402, 0.140076,
		47.072598, 39.729034, 39.941692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.317104, 40.507156, 40.311504>,  <47.690548, 40.042915, 39.843639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.317104, 40.507156, 40.311504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.145351, 40.147228, 40.342377>,  <47.042301, 39.931271, 40.360901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.145351, 40.147228, 40.342377>,  <47.317104, 40.507156, 40.311504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.145351, 40.147228, 40.342377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109826, 0.136845, 0.984486,
		-0.896421, 0.414244, -0.157582,
		-0.429381, -0.899820, 0.077176,
		47.016537, 39.877281, 40.365528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.752701, 40.588333, 40.884159>,  <47.317104, 40.507156, 40.311504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.752701, 40.588333, 40.884159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.795494, 40.194714, 40.827297>,  <46.821171, 39.958542, 40.793179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.795494, 40.194714, 40.827297>,  <46.752701, 40.588333, 40.884159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.795494, 40.194714, 40.827297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201331, -0.161453, 0.966126,
		-0.973663, -0.074739, -0.215392,
		0.106983, -0.984046, -0.142154,
		46.827587, 39.899498, 40.784653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.157379, 40.231304, 40.968410>,  <46.752701, 40.588333, 40.884159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.157379, 40.231304, 40.968410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.452602, 39.971260, 41.040668>,  <46.629734, 39.815235, 41.084023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.452602, 39.971260, 41.040668>,  <46.157379, 40.231304, 40.968410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.452602, 39.971260, 41.040668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343223, -0.131230, 0.930041,
		-0.580924, -0.748421, -0.319988,
		0.738055, -0.650111, 0.180641,
		46.674019, 39.776226, 41.094860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.844307, 39.773151, 41.428253>,  <46.157379, 40.231304, 40.968410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.844307, 39.773151, 41.428253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.221169, 39.661682, 41.502750>,  <46.447285, 39.594799, 41.547451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.221169, 39.661682, 41.502750>,  <45.844307, 39.773151, 41.428253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.221169, 39.661682, 41.502750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215303, -0.077301, 0.973483,
		-0.256885, -0.957271, -0.132828,
		0.942154, -0.278671, 0.186246,
		46.503815, 39.578079, 41.558624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.819439, 39.201122, 41.818520>,  <45.844307, 39.773151, 41.428253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.819439, 39.201122, 41.818520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.180809, 39.346073, 41.910175>,  <46.397633, 39.433044, 41.965168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.180809, 39.346073, 41.910175>,  <45.819439, 39.201122, 41.818520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.180809, 39.346073, 41.910175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208921, -0.094607, 0.973346,
		0.374399, -0.927216, -0.009761,
		0.903425, 0.362381, 0.229136,
		46.451836, 39.454788, 41.978916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.838787, 37.112221, 40.183399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586739, 36.839020, 40.331158>,  <39.435509, 36.675098, 40.419815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586739, 36.839020, 40.331158>,  <39.838787, 37.112221, 40.183399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586739, 36.839020, 40.331158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220766, -0.298513, -0.928522,
		0.744455, -0.666630, 0.037314,
		-0.630119, -0.683004, 0.369398,
		39.397701, 36.634117, 40.441978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039951, 36.387089, 39.795094>,  <39.838787, 37.112221, 40.183399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039951, 36.387089, 39.795094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670261, 36.345299, 39.942001>,  <39.448448, 36.320225, 40.030148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670261, 36.345299, 39.942001>,  <40.039951, 36.387089, 39.795094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670261, 36.345299, 39.942001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282724, -0.459259, -0.842109,
		0.256649, -0.882137, 0.394924,
		-0.924228, -0.104472, 0.367270,
		39.392994, 36.313957, 40.052181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887135, 35.657242, 39.681244>,  <40.039951, 36.387089, 39.795094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887135, 35.657242, 39.681244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570267, 35.901276, 39.674831>,  <39.380146, 36.047695, 39.670982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570267, 35.901276, 39.674831>,  <39.887135, 35.657242, 39.681244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570267, 35.901276, 39.674831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121025, -0.182789, -0.975675,
		-0.598179, -0.770961, 0.218636,
		-0.792171, 0.610088, -0.016035,
		39.332615, 36.084301, 39.670021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407597, 35.404938, 39.089230>,  <39.887135, 35.657242, 39.681244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407597, 35.404938, 39.089230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282806, 35.774456, 39.178020>,  <39.207932, 35.996166, 39.231293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282806, 35.774456, 39.178020>,  <39.407597, 35.404938, 39.089230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282806, 35.774456, 39.178020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376863, 0.094146, -0.921472,
		-0.872150, -0.371132, 0.318773,
		-0.311976, 0.923795, 0.221975,
		39.189213, 36.051594, 39.244614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727268, 35.409615, 38.756573>,  <39.407597, 35.404938, 39.089230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727268, 35.409615, 38.756573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809448, 35.797539, 38.809124>,  <38.858757, 36.030293, 38.840656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809448, 35.797539, 38.809124>,  <38.727268, 35.409615, 38.756573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809448, 35.797539, 38.809124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429905, 0.210027, -0.878106,
		-0.879189, 0.123924, 0.460075,
		0.205447, 0.969810, 0.131378,
		38.871082, 36.088482, 38.848537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109215, 35.754284, 38.731720>,  <38.727268, 35.409615, 38.756573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109215, 35.754284, 38.731720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388393, 36.025463, 38.639416>,  <38.555901, 36.188171, 38.584034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388393, 36.025463, 38.639416>,  <38.109215, 35.754284, 38.731720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388393, 36.025463, 38.639416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483620, 0.208536, -0.850073,
		-0.528182, 0.704912, 0.473417,
		0.697951, 0.677947, -0.230765,
		38.597778, 36.228848, 38.570187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736950, 36.382824, 38.644825>,  <38.109215, 35.754284, 38.731720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736950, 36.382824, 38.644825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083305, 36.427959, 38.449886>,  <38.291119, 36.455040, 38.332924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083305, 36.427959, 38.449886>,  <37.736950, 36.382824, 38.644825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083305, 36.427959, 38.449886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500084, 0.219404, -0.837722,
		0.012401, 0.969087, 0.246407,
		0.865888, 0.112835, -0.487346,
		38.343071, 36.461811, 38.303684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624683, 36.838039, 38.082859>,  <37.736950, 36.382824, 38.644825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624683, 36.838039, 38.082859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986088, 36.730915, 37.949024>,  <38.202930, 36.666641, 37.868725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986088, 36.730915, 37.949024>,  <37.624683, 36.838039, 38.082859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986088, 36.730915, 37.949024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200575, 0.425686, -0.882361,
		0.378731, 0.864332, 0.330896,
		0.903511, -0.267808, -0.334584,
		38.257141, 36.650574, 37.848648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870853, 37.385269, 37.620663>,  <37.624683, 36.838039, 38.082859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870853, 37.385269, 37.620663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082630, 37.061188, 37.520054>,  <38.209694, 36.866737, 37.459690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082630, 37.061188, 37.520054>,  <37.870853, 37.385269, 37.620663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082630, 37.061188, 37.520054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022814, 0.282780, -0.958913,
		0.848042, 0.513423, 0.131230,
		0.529437, -0.810205, -0.251523,
		38.241463, 36.818127, 37.444595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258514, 37.569847, 36.980667>,  <37.870853, 37.385269, 37.620663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258514, 37.569847, 36.980667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298149, 37.171886, 36.973095>,  <38.321930, 36.933109, 36.968552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298149, 37.171886, 36.973095>,  <38.258514, 37.569847, 36.980667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298149, 37.171886, 36.973095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027312, 0.021738, -0.999391,
		0.994704, 0.098509, 0.029327,
		0.099087, -0.994899, -0.018933,
		38.327873, 36.873417, 36.967415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823826, 37.474190, 36.638031>,  <38.258514, 37.569847, 36.980667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823826, 37.474190, 36.638031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606705, 37.138744, 36.619770>,  <38.476433, 36.937477, 36.608814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606705, 37.138744, 36.619770>,  <38.823826, 37.474190, 36.638031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606705, 37.138744, 36.619770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004651, 0.057357, -0.998343,
		0.839846, -0.541694, -0.035034,
		-0.542805, -0.838617, -0.045652,
		38.443863, 36.887161, 36.606075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172405, 36.988384, 36.282574>,  <38.823826, 37.474190, 36.638031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172405, 36.988384, 36.282574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785313, 36.892960, 36.250092>,  <38.553059, 36.835705, 36.230602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785313, 36.892960, 36.250092>,  <39.172405, 36.988384, 36.282574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785313, 36.892960, 36.250092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065294, 0.073869, -0.995128,
		0.243395, -0.968315, -0.055908,
		-0.967727, -0.238558, -0.081205,
		38.494995, 36.821392, 36.225731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157368, 36.453400, 35.767735>,  <39.172405, 36.988384, 36.282574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157368, 36.453400, 35.767735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807102, 36.644577, 35.795403>,  <38.596943, 36.759285, 35.812004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807102, 36.644577, 35.795403>,  <39.157368, 36.453400, 35.767735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807102, 36.644577, 35.795403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013268, 0.166978, -0.985871,
		-0.482744, -0.862371, -0.152557,
		-0.875661, 0.477948, 0.069166,
		38.544403, 36.787960, 35.816151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130138, 36.649101, 34.999699>,  <39.157368, 36.453400, 35.767735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130138, 36.649101, 34.999699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498611, 36.748730, 35.119286>,  <39.719696, 36.808506, 35.191036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498611, 36.748730, 35.119286>,  <39.130138, 36.649101, 34.999699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498611, 36.748730, 35.119286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334305, -0.113364, -0.935622,
		-0.199140, 0.961829, -0.187694,
		0.921186, 0.249066, 0.298969,
		39.774967, 36.823448, 35.208977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489563, 35.977547, 34.736778>,  <39.130138, 36.649101, 34.999699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489563, 35.977547, 34.736778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734394, 35.715633, 34.559410>,  <39.881294, 35.558487, 34.452991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734394, 35.715633, 34.559410>,  <39.489563, 35.977547, 34.736778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734394, 35.715633, 34.559410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208862, -0.406956, 0.889248,
		-0.762718, -0.636901, -0.112329,
		0.612077, -0.654784, -0.443418,
		39.918018, 35.519199, 34.426384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182735, 35.247028, 34.760914>,  <39.489563, 35.977547, 34.736778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182735, 35.247028, 34.760914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582016, 35.261227, 34.780205>,  <39.821587, 35.269745, 34.791779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582016, 35.261227, 34.780205>,  <39.182735, 35.247028, 34.760914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582016, 35.261227, 34.780205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017406, -0.598636, 0.800832,
		0.057293, -0.800234, -0.596945,
		0.998206, 0.035491, 0.048227,
		39.881477, 35.271873, 34.794674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380634, 34.526196, 34.940022>,  <39.182735, 35.247028, 34.760914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380634, 34.526196, 34.940022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688389, 34.755371, 35.053009>,  <39.873039, 34.892876, 35.120800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688389, 34.755371, 35.053009>,  <39.380634, 34.526196, 34.940022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688389, 34.755371, 35.053009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108125, -0.552619, 0.826391,
		0.629569, -0.605270, -0.487125,
		0.769384, 0.572941, 0.282467,
		39.919205, 34.927254, 35.137749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892319, 34.022842, 35.213779>,  <39.380634, 34.526196, 34.940022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892319, 34.022842, 35.213779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004482, 34.377552, 35.360748>,  <40.071781, 34.590378, 35.448929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004482, 34.377552, 35.360748>,  <39.892319, 34.022842, 35.213779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004482, 34.377552, 35.360748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391707, -0.455172, 0.799615,
		0.876320, -0.080296, -0.474990,
		0.280408, 0.886775, 0.367424,
		40.088604, 34.643585, 35.470974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549564, 33.856937, 35.495872>,  <39.892319, 34.022842, 35.213779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549564, 33.856937, 35.495872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416901, 34.200302, 35.652405>,  <40.337303, 34.406319, 35.746323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416901, 34.200302, 35.652405>,  <40.549564, 33.856937, 35.495872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416901, 34.200302, 35.652405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250785, -0.319657, 0.913743,
		0.909455, 0.401192, -0.109258,
		-0.331661, 0.858408, 0.391327,
		40.317402, 34.457825, 35.769802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066368, 34.106091, 35.907578>,  <40.549564, 33.856937, 35.495872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066368, 34.106091, 35.907578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725330, 34.259567, 36.049484>,  <40.520706, 34.351654, 36.134628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725330, 34.259567, 36.049484>,  <41.066368, 34.106091, 35.907578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725330, 34.259567, 36.049484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202163, -0.383854, 0.900992,
		0.481883, 0.839903, 0.249704,
		-0.852595, 0.383692, 0.354771,
		40.469551, 34.374676, 36.155914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215046, 34.430466, 36.583714>,  <41.066368, 34.106091, 35.907578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215046, 34.430466, 36.583714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830357, 34.320904, 36.580669>,  <40.599541, 34.255165, 36.578842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830357, 34.320904, 36.580669>,  <41.215046, 34.430466, 36.583714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830357, 34.320904, 36.580669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082220, -0.314950, 0.945540,
		-0.261388, 0.908725, 0.325416,
		-0.961726, -0.273909, -0.007609,
		40.541840, 34.238731, 36.578388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001614, 34.736641, 37.219429>,  <41.215046, 34.430466, 36.583714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001614, 34.736641, 37.219429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737640, 34.450901, 37.126305>,  <40.579258, 34.279457, 37.070431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737640, 34.450901, 37.126305>,  <41.001614, 34.736641, 37.219429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737640, 34.450901, 37.126305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030601, -0.335161, 0.941664,
		-0.750701, 0.614311, 0.243044,
		-0.659933, -0.714345, -0.232807,
		40.539661, 34.236599, 37.056461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576748, 34.709000, 37.750847>,  <41.001614, 34.736641, 37.219429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576748, 34.709000, 37.750847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484299, 34.353313, 37.592918>,  <40.428829, 34.139904, 37.498161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484299, 34.353313, 37.592918>,  <40.576748, 34.709000, 37.750847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484299, 34.353313, 37.592918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025748, -0.411254, 0.911157,
		-0.972584, 0.200423, 0.117945,
		-0.231122, -0.889214, -0.394819,
		40.414963, 34.086548, 37.474472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102505, 34.466358, 38.166309>,  <40.576748, 34.709000, 37.750847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102505, 34.466358, 38.166309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235386, 34.143143, 37.971699>,  <40.315113, 33.949211, 37.854931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235386, 34.143143, 37.971699>,  <40.102505, 34.466358, 38.166309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235386, 34.143143, 37.971699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016669, -0.520773, 0.853533,
		-0.943062, -0.275432, -0.186469,
		0.332198, -0.808043, -0.486530,
		40.335045, 33.900730, 37.825741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697277, 33.878387, 38.482079>,  <40.102505, 34.466358, 38.166309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697277, 33.878387, 38.482079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036297, 33.730801, 38.329494>,  <40.239708, 33.642250, 38.237942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036297, 33.730801, 38.329494>,  <39.697277, 33.878387, 38.482079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036297, 33.730801, 38.329494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124868, -0.559963, 0.819054,
		-0.515808, -0.741827, -0.428527,
		0.847556, -0.368965, -0.381463,
		40.290562, 33.620110, 38.215054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672409, 33.225246, 38.628307>,  <39.697277, 33.878387, 38.482079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672409, 33.225246, 38.628307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056412, 33.254669, 38.520248>,  <40.286812, 33.272324, 38.455414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056412, 33.254669, 38.520248>,  <39.672409, 33.225246, 38.628307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056412, 33.254669, 38.520248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245644, -0.684264, 0.686616,
		-0.134350, -0.725515, -0.674965,
		0.960005, 0.073555, -0.270149,
		40.344414, 33.276737, 38.439205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912403, 32.560791, 38.445751>,  <39.672409, 33.225246, 38.628307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912403, 32.560791, 38.445751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230545, 32.763844, 38.578247>,  <40.421432, 32.885674, 38.657745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230545, 32.763844, 38.578247>,  <39.912403, 32.560791, 38.445751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230545, 32.763844, 38.578247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021778, -0.570052, 0.821320,
		0.605749, -0.646030, -0.464450,
		0.795358, 0.507628, 0.331239,
		40.469151, 32.916134, 38.677620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144733, 32.124115, 38.924171>,  <39.912403, 32.560791, 38.445751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144733, 32.124115, 38.924171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360085, 32.446617, 39.022236>,  <40.489296, 32.640118, 39.081074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360085, 32.446617, 39.022236>,  <40.144733, 32.124115, 38.924171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360085, 32.446617, 39.022236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141340, -0.373188, 0.916926,
		0.830767, -0.459002, -0.314872,
		0.538377, 0.806256, 0.245157,
		40.521599, 32.688496, 39.095783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373756, 31.467049, 38.804043>,  <40.144733, 32.124115, 38.924171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373756, 31.467049, 38.804043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097298, 31.178116, 38.794628>,  <39.931423, 31.004757, 38.788979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097298, 31.178116, 38.794628>,  <40.373756, 31.467049, 38.804043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097298, 31.178116, 38.794628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405269, 0.414326, -0.814918,
		0.598391, -0.553690, -0.579098,
		-0.691147, -0.722330, -0.023535,
		39.889954, 30.961416, 38.787567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275013, 31.266153, 38.127834>,  <40.373756, 31.467049, 38.804043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275013, 31.266153, 38.127834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936245, 31.171511, 38.318306>,  <39.732983, 31.114725, 38.432587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936245, 31.171511, 38.318306>,  <40.275013, 31.266153, 38.127834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936245, 31.171511, 38.318306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520974, 0.548393, -0.654103,
		-0.106366, -0.802049, -0.587711,
		-0.846920, -0.236608, 0.476177,
		39.682171, 31.100529, 38.461159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877647, 31.143232, 37.603722>,  <40.275013, 31.266153, 38.127834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877647, 31.143232, 37.603722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603752, 31.192129, 37.891106>,  <39.439415, 31.221468, 38.063538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603752, 31.192129, 37.891106>,  <39.877647, 31.143232, 37.603722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603752, 31.192129, 37.891106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621459, 0.417017, -0.663239,
		-0.380688, -0.900640, -0.209579,
		-0.684738, 0.122243, 0.718464,
		39.398331, 31.228802, 38.106644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266205, 30.820953, 37.318974>,  <39.877647, 31.143232, 37.603722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266205, 30.820953, 37.318974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151875, 31.091490, 37.590523>,  <39.083275, 31.253811, 37.753452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151875, 31.091490, 37.590523>,  <39.266205, 30.820953, 37.318974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151875, 31.091490, 37.590523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554993, 0.460687, -0.692639,
		-0.781208, -0.574744, 0.243688,
		-0.285826, 0.676341, 0.678872,
		39.066128, 31.294392, 37.794186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450855, 30.979572, 37.121212>,  <39.266205, 30.820953, 37.318974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450855, 30.979572, 37.121212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595287, 31.254177, 37.373661>,  <38.681946, 31.418940, 37.525131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595287, 31.254177, 37.373661>,  <38.450855, 30.979572, 37.121212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595287, 31.254177, 37.373661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630144, 0.678514, -0.377540,
		-0.687413, -0.261375, 0.677604,
		0.361084, 0.686514, 0.631123,
		38.703613, 31.460131, 37.563000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915581, 31.209497, 37.622261>,  <38.450855, 30.979572, 37.121212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915581, 31.209497, 37.622261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190472, 31.492594, 37.556755>,  <38.355408, 31.662453, 37.517452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190472, 31.492594, 37.556755>,  <37.915581, 31.209497, 37.622261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190472, 31.492594, 37.556755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697620, 0.580106, -0.420480,
		-0.202591, 0.403210, 0.892401,
		0.687229, 0.707742, -0.163763,
		38.396641, 31.704916, 37.507626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542324, 31.798285, 37.702927>,  <37.915581, 31.209497, 37.622261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542324, 31.798285, 37.702927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865955, 31.945000, 37.519249>,  <38.060135, 32.033028, 37.409042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865955, 31.945000, 37.519249>,  <37.542324, 31.798285, 37.702927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865955, 31.945000, 37.519249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539351, 0.773753, -0.332274,
		0.233427, 0.516501, 0.823856,
		0.809081, 0.366786, -0.459191,
		38.108681, 32.055035, 37.381493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468159, 32.500324, 37.725971>,  <37.542324, 31.798285, 37.702927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468159, 32.500324, 37.725971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747967, 32.497929, 37.440136>,  <37.915852, 32.496490, 37.268635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747967, 32.497929, 37.440136>,  <37.468159, 32.500324, 37.725971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747967, 32.497929, 37.440136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554815, 0.625682, -0.548363,
		0.450390, 0.780055, 0.434353,
		0.699520, -0.005992, -0.714587,
		37.957825, 32.496132, 37.225761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503128, 33.202171, 37.401810>,  <37.468159, 32.500324, 37.725971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503128, 33.202171, 37.401810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660316, 32.950676, 37.133404>,  <37.754631, 32.799778, 36.972359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660316, 32.950676, 37.133404>,  <37.503128, 33.202171, 37.401810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660316, 32.950676, 37.133404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561507, 0.413806, -0.716571,
		0.728204, 0.658375, -0.190424,
		0.392974, -0.628735, -0.671018,
		37.778210, 32.762054, 36.932098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649986, 33.668739, 36.988228>,  <37.503128, 33.202171, 37.401810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649986, 33.668739, 36.988228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641151, 33.313267, 36.805031>,  <37.635849, 33.099983, 36.695110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641151, 33.313267, 36.805031>,  <37.649986, 33.668739, 36.988228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641151, 33.313267, 36.805031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172078, 0.454652, -0.873888,
		0.984836, 0.059508, -0.162965,
		-0.022089, -0.888679, -0.457997,
		37.634525, 33.046661, 36.667633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052399, 33.611858, 36.342449>,  <37.649986, 33.668739, 36.988228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052399, 33.611858, 36.342449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752842, 33.351051, 36.295063>,  <37.573109, 33.194565, 36.266632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752842, 33.351051, 36.295063>,  <38.052399, 33.611858, 36.342449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752842, 33.351051, 36.295063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278445, 0.471809, -0.836579,
		0.601359, -0.593519, -0.534884,
		-0.748889, -0.652021, -0.118464,
		37.528175, 33.155445, 36.259525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144104, 33.241440, 35.686642>,  <38.052399, 33.611858, 36.342449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144104, 33.241440, 35.686642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766830, 33.298092, 35.806866>,  <37.540466, 33.332085, 35.879002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766830, 33.298092, 35.806866>,  <38.144104, 33.241440, 35.686642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766830, 33.298092, 35.806866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153702, 0.616000, -0.772606,
		-0.294572, -0.774909, -0.559235,
		-0.943188, 0.141633, 0.300561,
		37.483875, 33.340580, 35.897034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.135296, 28.940134, 41.823002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.736279, 28.928839, 41.797386>,  <40.496868, 28.922062, 41.782017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.736279, 28.928839, 41.797386>,  <41.135296, 28.940134, 41.823002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736279, 28.928839, 41.797386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059975, 0.126622, -0.990136,
		0.036066, -0.991549, -0.124618,
		-0.997548, -0.028237, -0.064035,
		40.437016, 28.920366, 41.778175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938107, 28.537304, 41.238312>,  <41.135296, 28.940134, 41.823002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938107, 28.537304, 41.238312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.637974, 28.790350, 41.315044>,  <40.457893, 28.942177, 41.361084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.637974, 28.790350, 41.315044>,  <40.938107, 28.537304, 41.238312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637974, 28.790350, 41.315044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003791, 0.294301, -0.955705,
		-0.661050, -0.716369, -0.223222,
		-0.750332, 0.632616, 0.191832,
		40.412872, 28.980135, 41.372593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506081, 28.469482, 40.731869>,  <40.938107, 28.537304, 41.238312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506081, 28.469482, 40.731869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.387096, 28.826178, 40.868294>,  <40.315704, 29.040194, 40.950150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.387096, 28.826178, 40.868294>,  <40.506081, 28.469482, 40.731869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387096, 28.826178, 40.868294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131465, 0.315575, -0.939750,
		-0.945640, -0.324376, 0.023361,
		-0.297460, 0.891736, 0.341065,
		40.297859, 29.093699, 40.970612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078274, 28.688881, 40.268452>,  <40.506081, 28.469482, 40.731869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078274, 28.688881, 40.268452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.176540, 29.029018, 40.454597>,  <40.235500, 29.233101, 40.566284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.176540, 29.029018, 40.454597>,  <40.078274, 28.688881, 40.268452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176540, 29.029018, 40.454597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129936, 0.504630, -0.853502,
		-0.960607, 0.149205, 0.234459,
		0.245662, 0.850345, 0.465364,
		40.250240, 29.284122, 40.594208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522297, 29.194006, 40.157368>,  <40.078274, 28.688881, 40.268452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522297, 29.194006, 40.157368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838310, 29.416811, 40.259808>,  <40.027920, 29.550493, 40.321270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838310, 29.416811, 40.259808>,  <39.522297, 29.194006, 40.157368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838310, 29.416811, 40.259808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247539, 0.671998, -0.697957,
		-0.560866, 0.488015, 0.668783,
		0.790034, 0.557010, 0.256098,
		40.075321, 29.583914, 40.336636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221882, 29.941317, 40.400185>,  <39.522297, 29.194006, 40.157368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221882, 29.941317, 40.400185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.601357, 29.946594, 40.273804>,  <39.829041, 29.949760, 40.197975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.601357, 29.946594, 40.273804>,  <39.221882, 29.941317, 40.400185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601357, 29.946594, 40.273804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239575, 0.682138, -0.690863,
		0.206411, 0.731104, 0.650293,
		0.948682, 0.013192, -0.315955,
		39.885960, 29.950552, 40.179016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285503, 30.628061, 40.273075>,  <39.221882, 29.941317, 40.400185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285503, 30.628061, 40.273075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.605392, 30.489199, 40.077148>,  <39.797325, 30.405882, 39.959591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.605392, 30.489199, 40.077148>,  <39.285503, 30.628061, 40.273075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605392, 30.489199, 40.077148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191391, 0.625879, -0.756072,
		0.569042, 0.698397, 0.434088,
		0.799725, -0.347156, -0.489818,
		39.845310, 30.385052, 39.930202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562920, 31.187433, 40.028549>,  <39.285503, 30.628061, 40.273075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562920, 31.187433, 40.028549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.699650, 30.890839, 39.797600>,  <39.781689, 30.712881, 39.659031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.699650, 30.890839, 39.797600>,  <39.562920, 31.187433, 40.028549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699650, 30.890839, 39.797600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011457, 0.617619, -0.786394,
		0.939694, 0.262193, 0.219612,
		0.341823, -0.741486, -0.577369,
		39.802197, 30.668392, 39.624390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112534, 31.396599, 39.545639>,  <39.562920, 31.187433, 40.028549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112534, 31.396599, 39.545639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.959095, 31.075363, 39.363255>,  <39.867031, 30.882622, 39.253822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.959095, 31.075363, 39.363255>,  <40.112534, 31.396599, 39.545639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959095, 31.075363, 39.363255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050172, 0.511127, -0.858039,
		0.922138, -0.306262, -0.236358,
		-0.383594, -0.803089, -0.455964,
		39.844017, 30.834436, 39.226467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636940, 31.879765, 39.391132>,  <40.112534, 31.396599, 39.545639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636940, 31.879765, 39.391132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.649521, 32.275536, 39.447758>,  <40.657070, 32.513000, 39.481735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.649521, 32.275536, 39.447758>,  <40.636940, 31.879765, 39.391132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649521, 32.275536, 39.447758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105409, -0.144129, 0.983929,
		0.993931, -0.016022, -0.108828,
		0.031450, 0.989429, 0.141566,
		40.658955, 32.572365, 39.490227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287537, 32.082596, 39.682606>,  <40.636940, 31.879765, 39.391132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287537, 32.082596, 39.682606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.006649, 32.345444, 39.792217>,  <40.838116, 32.503151, 39.857983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.006649, 32.345444, 39.792217>,  <41.287537, 32.082596, 39.682606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006649, 32.345444, 39.792217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288716, -0.088997, 0.953269,
		0.650796, 0.748518, -0.127224,
		-0.702217, 0.657115, 0.274028,
		40.795982, 32.542580, 39.874424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580791, 32.403042, 40.288044>,  <41.287537, 32.082596, 39.682606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580791, 32.403042, 40.288044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.192196, 32.496906, 40.274502>,  <40.959038, 32.553226, 40.266376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.192196, 32.496906, 40.274502>,  <41.580791, 32.403042, 40.288044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192196, 32.496906, 40.274502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045900, -0.046034, 0.997885,
		0.232609, 0.970986, 0.055493,
		-0.971487, 0.234664, -0.033860,
		40.900749, 32.567307, 40.264343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577648, 32.921684, 40.806816>,  <41.580791, 32.403042, 40.288044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577648, 32.921684, 40.806816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.200092, 32.817749, 40.725281>,  <40.973557, 32.755386, 40.676357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.200092, 32.817749, 40.725281>,  <41.577648, 32.921684, 40.806816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200092, 32.817749, 40.725281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214309, 0.012297, 0.976689,
		-0.251274, 0.965574, -0.067292,
		-0.943892, -0.259838, -0.203841,
		40.916924, 32.739799, 40.664127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156513, 33.373665, 41.156666>,  <41.577648, 32.921684, 40.806816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156513, 33.373665, 41.156666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.929604, 33.047020, 41.114067>,  <40.793457, 32.851032, 41.088509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.929604, 33.047020, 41.114067>,  <41.156513, 33.373665, 41.156666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929604, 33.047020, 41.114067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197960, 0.009693, 0.980162,
		-0.799380, 0.577105, -0.167155,
		-0.567277, -0.816613, -0.106495,
		40.759422, 32.802036, 41.082119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611694, 33.468166, 41.587238>,  <41.156513, 33.373665, 41.156666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611694, 33.468166, 41.587238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.564877, 33.077721, 41.514030>,  <40.536785, 32.843452, 41.470104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.564877, 33.077721, 41.514030>,  <40.611694, 33.468166, 41.587238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564877, 33.077721, 41.514030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202783, -0.156913, 0.966570,
		-0.972203, 0.150249, -0.179573,
		-0.117049, -0.976117, -0.183019,
		40.529762, 32.784885, 41.459126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127625, 33.176250, 42.003212>,  <40.611694, 33.468166, 41.587238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127625, 33.176250, 42.003212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.261501, 32.802330, 41.955662>,  <40.341827, 32.577976, 41.927132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.261501, 32.802330, 41.955662>,  <40.127625, 33.176250, 42.003212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261501, 32.802330, 41.955662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352394, -0.241158, 0.904246,
		-0.873957, -0.260751, -0.410131,
		0.334690, -0.934800, -0.118874,
		40.361908, 32.521889, 41.919998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559647, 32.690845, 42.207722>,  <40.127625, 33.176250, 42.003212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559647, 32.690845, 42.207722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.906994, 32.495270, 42.240894>,  <40.115402, 32.377926, 42.260799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.906994, 32.495270, 42.240894>,  <39.559647, 32.690845, 42.207722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906994, 32.495270, 42.240894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358851, -0.504072, 0.785581,
		-0.342297, -0.711933, -0.613175,
		0.868366, -0.488941, 0.082935,
		40.167503, 32.348587, 42.265774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400398, 31.928156, 42.334908>,  <39.559647, 32.690845, 42.207722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400398, 31.928156, 42.334908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.773369, 32.010715, 42.453552>,  <39.997150, 32.060253, 42.524738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.773369, 32.010715, 42.453552>,  <39.400398, 31.928156, 42.334908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773369, 32.010715, 42.453552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220047, -0.326786, 0.919125,
		0.286639, -0.922285, -0.259285,
		0.932425, 0.206402, 0.296616,
		40.053097, 32.072636, 42.542538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456566, 31.403835, 42.804939>,  <39.400398, 31.928156, 42.334908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456566, 31.403835, 42.804939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.731438, 31.685997, 42.874439>,  <39.896362, 31.855293, 42.916138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.731438, 31.685997, 42.874439>,  <39.456566, 31.403835, 42.804939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731438, 31.685997, 42.874439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140596, -0.105510, 0.984429,
		0.712751, -0.700910, 0.026673,
		0.687182, 0.705403, 0.173748,
		39.937592, 31.897617, 42.926563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772949, 31.154556, 43.426109>,  <39.456566, 31.403835, 42.804939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772949, 31.154556, 43.426109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.915379, 31.528303, 43.420902>,  <40.000835, 31.752552, 43.417778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.915379, 31.528303, 43.420902>,  <39.772949, 31.154556, 43.426109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915379, 31.528303, 43.420902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258227, 0.111778, 0.959596,
		0.898071, -0.338324, 0.281080,
		0.356073, 0.934368, -0.013020,
		40.022202, 31.808613, 43.416996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269672, 31.195225, 43.951843>,  <39.772949, 31.154556, 43.426109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269672, 31.195225, 43.951843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.129921, 31.564682, 43.888828>,  <40.046070, 31.786356, 43.851017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.129921, 31.564682, 43.888828>,  <40.269672, 31.195225, 43.951843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129921, 31.564682, 43.888828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053586, 0.187559, 0.980791,
		0.935447, 0.334228, -0.115024,
		-0.349382, 0.923641, -0.157542,
		40.025108, 31.841774, 43.841564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686859, 31.654409, 44.272663>,  <40.269672, 31.195225, 43.951843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686859, 31.654409, 44.272663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.317951, 31.804771, 44.236633>,  <40.096607, 31.894989, 44.215015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.317951, 31.804771, 44.236633>,  <40.686859, 31.654409, 44.272663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317951, 31.804771, 44.236633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008401, 0.213480, 0.976911,
		0.386456, 0.901732, -0.193728,
		-0.922270, 0.375905, -0.090076,
		40.041271, 31.917543, 44.209610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677052, 32.264664, 44.677505>,  <40.686859, 31.654409, 44.272663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677052, 32.264664, 44.677505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.285812, 32.196251, 44.630062>,  <40.051067, 32.155205, 44.601597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.285812, 32.196251, 44.630062>,  <40.677052, 32.264664, 44.677505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285812, 32.196251, 44.630062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142374, 0.134126, 0.980683,
		-0.151817, 0.976094, -0.155539,
		-0.978101, -0.171029, -0.118607,
		39.992382, 32.144943, 44.594479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.885307, 30.643726, 44.317173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.270302, 30.568153, 44.239285>,  <34.501301, 30.522810, 44.192551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.270302, 30.568153, 44.239285>,  <33.885307, 30.643726, 44.317173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270302, 30.568153, 44.239285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065068, 0.536011, -0.841700,
		0.263398, 0.822798, 0.503611,
		0.962490, -0.188934, -0.194722,
		34.559048, 30.511473, 44.180866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137417, 31.294529, 44.070141>,  <33.885307, 30.643726, 44.317173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137417, 31.294529, 44.070141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.396973, 31.029406, 43.920670>,  <34.552704, 30.870331, 43.830986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.396973, 31.029406, 43.920670>,  <34.137417, 31.294529, 44.070141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396973, 31.029406, 43.920670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029875, 0.512918, -0.857917,
		0.760299, 0.545527, 0.352627,
		0.648886, -0.662808, -0.373674,
		34.591637, 30.830563, 43.808567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515522, 31.717176, 43.678173>,  <34.137417, 31.294529, 44.070141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515522, 31.717176, 43.678173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.591373, 31.349802, 43.539310>,  <34.636883, 31.129377, 43.455994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.591373, 31.349802, 43.539310>,  <34.515522, 31.717176, 43.678173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591373, 31.349802, 43.539310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134882, 0.374583, -0.917330,
		0.972548, 0.127123, 0.194911,
		0.189624, -0.918437, -0.347154,
		34.648262, 31.074270, 43.435165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136051, 31.814684, 43.262608>,  <34.515522, 31.717176, 43.678173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136051, 31.814684, 43.262608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.982929, 31.484434, 43.096813>,  <34.891056, 31.286283, 42.997337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.982929, 31.484434, 43.096813>,  <35.136051, 31.814684, 43.262608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982929, 31.484434, 43.096813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233552, 0.347598, -0.908091,
		0.893818, -0.444429, 0.059764,
		-0.382808, -0.825626, -0.414486,
		34.868088, 31.236746, 42.972466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664803, 31.614866, 42.855667>,  <35.136051, 31.814684, 43.262608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664803, 31.614866, 42.855667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.317421, 31.463902, 42.727074>,  <35.108994, 31.373323, 42.649918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.317421, 31.463902, 42.727074>,  <35.664803, 31.614866, 42.855667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317421, 31.463902, 42.727074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217634, 0.292423, -0.931195,
		0.445453, -0.878664, -0.171818,
		-0.868451, -0.377411, -0.321488,
		35.056885, 31.350679, 42.630627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840988, 31.491739, 42.153111>,  <35.664803, 31.614866, 42.855667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840988, 31.491739, 42.153111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.441452, 31.479460, 42.167973>,  <35.201733, 31.472092, 42.176891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.441452, 31.479460, 42.167973>,  <35.840988, 31.491739, 42.153111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441452, 31.479460, 42.167973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046931, 0.444010, -0.894792,
		0.010971, -0.895496, -0.444935,
		-0.998838, -0.030698, 0.037155,
		35.141800, 31.470251, 42.179119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724518, 31.422560, 41.462578>,  <35.840988, 31.491739, 42.153111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724518, 31.422560, 41.462578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.373558, 31.545504, 41.609924>,  <35.162979, 31.619270, 41.698330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.373558, 31.545504, 41.609924>,  <35.724518, 31.422560, 41.462578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373558, 31.545504, 41.609924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200269, 0.463069, -0.863400,
		-0.435952, -0.831323, -0.344744,
		-0.877404, 0.307360, 0.368364,
		35.110336, 31.637711, 41.720432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080345, 31.156376, 41.073387>,  <35.724518, 31.422560, 41.462578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080345, 31.156376, 41.073387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.980995, 31.497768, 41.256638>,  <34.921387, 31.702604, 41.366589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.980995, 31.497768, 41.256638>,  <35.080345, 31.156376, 41.073387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980995, 31.497768, 41.256638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329336, 0.370369, -0.868542,
		-0.910960, -0.366602, 0.189091,
		-0.248375, 0.853481, 0.458127,
		34.906483, 31.753813, 41.394077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456875, 31.236233, 40.814213>,  <35.080345, 31.156376, 41.073387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456875, 31.236233, 40.814213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.570839, 31.589567, 40.963097>,  <34.639217, 31.801569, 41.052425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.570839, 31.589567, 40.963097>,  <34.456875, 31.236233, 40.814213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570839, 31.589567, 40.963097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293477, 0.450042, -0.843406,
		-0.912522, 0.131061, 0.387462,
		0.284911, 0.883338, 0.372210,
		34.656311, 31.854568, 41.074760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911110, 31.655071, 40.700867>,  <34.456875, 31.236233, 40.814213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911110, 31.655071, 40.700867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.211086, 31.911255, 40.767086>,  <34.391071, 32.064964, 40.806816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.211086, 31.911255, 40.767086>,  <33.911110, 31.655071, 40.700867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211086, 31.911255, 40.767086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173334, 0.431766, -0.885174,
		-0.638393, 0.635132, 0.434812,
		0.749940, 0.640457, 0.165547,
		34.436069, 32.103394, 40.816750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596241, 32.325748, 40.704178>,  <33.911110, 31.655071, 40.700867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596241, 32.325748, 40.704178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.986950, 32.384357, 40.641636>,  <34.221375, 32.419521, 40.604111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.986950, 32.384357, 40.641636>,  <33.596241, 32.325748, 40.704178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986950, 32.384357, 40.641636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212191, 0.559683, -0.801081,
		-0.029866, 0.815651, 0.577773,
		0.976772, 0.146524, -0.156358,
		34.279980, 32.428314, 40.594730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603050, 33.050465, 40.567333>,  <33.596241, 32.325748, 40.704178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603050, 33.050465, 40.567333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.973736, 32.946770, 40.458523>,  <34.196148, 32.884552, 40.393238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.973736, 32.946770, 40.458523>,  <33.603050, 33.050465, 40.567333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973736, 32.946770, 40.458523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002647, 0.719399, -0.694592,
		0.375758, 0.644408, 0.665991,
		0.926714, -0.259235, -0.272026,
		34.251751, 32.868999, 40.376915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951210, 33.627853, 40.369591>,  <33.603050, 33.050465, 40.567333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951210, 33.627853, 40.369591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.150135, 33.339920, 40.175880>,  <34.269489, 33.167160, 40.059654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.150135, 33.339920, 40.175880>,  <33.951210, 33.627853, 40.369591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150135, 33.339920, 40.175880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002804, 0.556862, -0.830601,
		0.867567, 0.414426, 0.274916,
		0.497313, -0.719831, -0.484277,
		34.299328, 33.123970, 40.030598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417843, 33.952938, 39.988831>,  <33.951210, 33.627853, 40.369591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417843, 33.952938, 39.988831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.397999, 33.601143, 39.799500>,  <34.386093, 33.390068, 39.685898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.397999, 33.601143, 39.799500>,  <34.417843, 33.952938, 39.988831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397999, 33.601143, 39.799500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124553, 0.475665, -0.870764,
		0.990972, 0.015753, -0.133142,
		-0.049614, -0.879486, -0.473332,
		34.383114, 33.337296, 39.657501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139671, 34.031052, 40.067711>,  <34.417843, 33.952938, 39.988831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139671, 34.031052, 40.067711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.297955, 34.398380, 40.063522>,  <35.392925, 34.618778, 40.061008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.297955, 34.398380, 40.063522>,  <35.139671, 34.031052, 40.067711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297955, 34.398380, 40.063522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119760, -0.040298, 0.991985,
		0.910536, -0.393787, -0.125924,
		0.395705, 0.918318, -0.010467,
		35.416668, 34.673874, 40.060383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873924, 34.039169, 40.365555>,  <35.139671, 34.031052, 40.067711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873924, 34.039169, 40.365555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.685863, 34.389114, 40.412155>,  <35.573025, 34.599079, 40.440117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.685863, 34.389114, 40.412155>,  <35.873924, 34.039169, 40.365555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685863, 34.389114, 40.412155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040049, -0.110719, 0.993044,
		0.881675, 0.471551, 0.017017,
		-0.470155, 0.874861, 0.116504,
		35.544819, 34.651573, 40.447105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332905, 34.502197, 40.696613>,  <35.873924, 34.039169, 40.365555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332905, 34.502197, 40.696613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.986862, 34.683674, 40.782169>,  <35.779236, 34.792561, 40.833504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.986862, 34.683674, 40.782169>,  <36.332905, 34.502197, 40.696613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986862, 34.683674, 40.782169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136911, -0.196651, 0.970868,
		0.482538, 0.869190, 0.108009,
		-0.865108, 0.453693, 0.213893,
		35.727329, 34.819782, 40.846336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434258, 34.827744, 41.333481>,  <36.332905, 34.502197, 40.696613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434258, 34.827744, 41.333481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.037205, 34.808826, 41.288860>,  <35.798973, 34.797478, 41.262089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.037205, 34.808826, 41.288860>,  <36.434258, 34.827744, 41.333481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037205, 34.808826, 41.288860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098958, -0.214829, 0.971625,
		-0.069912, 0.975506, 0.208567,
		-0.992633, -0.047289, -0.111554,
		35.739414, 34.794640, 41.255394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094505, 35.369186, 41.785728>,  <36.434258, 34.827744, 41.333481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094505, 35.369186, 41.785728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.837738, 35.065777, 41.740856>,  <35.683678, 34.883732, 41.713932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.837738, 35.065777, 41.740856>,  <36.094505, 35.369186, 41.785728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837738, 35.065777, 41.740856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038678, -0.178145, 0.983244,
		-0.765798, 0.626822, 0.143693,
		-0.641917, -0.758524, -0.112178,
		35.645164, 34.838219, 41.707203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721405, 35.352512, 42.419144>,  <36.094505, 35.369186, 41.785728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721405, 35.352512, 42.419144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.647846, 34.995655, 42.254093>,  <35.603710, 34.781540, 42.155064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.647846, 34.995655, 42.254093>,  <35.721405, 35.352512, 42.419144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647846, 34.995655, 42.254093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064187, -0.429791, 0.900644,
		-0.980847, 0.139141, 0.136301,
		-0.183898, -0.892143, -0.412628,
		35.592678, 34.728012, 42.130306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054375, 35.067688, 42.745872>,  <35.721405, 35.352512, 42.419144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054375, 35.067688, 42.745872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.245510, 34.745972, 42.604572>,  <35.360191, 34.552940, 42.519794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.245510, 34.745972, 42.604572>,  <35.054375, 35.067688, 42.745872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245510, 34.745972, 42.604572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038283, -0.382678, 0.923088,
		-0.877611, -0.454615, -0.152069,
		0.477843, -0.804290, -0.353246,
		35.388863, 34.504684, 42.498600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710361, 34.566120, 43.009552>,  <35.054375, 35.067688, 42.745872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710361, 34.566120, 43.009552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.054718, 34.383682, 42.919350>,  <35.261330, 34.274220, 42.865231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.054718, 34.383682, 42.919350>,  <34.710361, 34.566120, 43.009552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054718, 34.383682, 42.919350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051797, -0.362341, 0.930605,
		-0.506153, -0.812826, -0.288310,
		0.860887, -0.456096, -0.225502,
		35.312984, 34.246853, 42.851700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663864, 33.821232, 43.174988>,  <34.710361, 34.566120, 43.009552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663864, 33.821232, 43.174988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.059502, 33.879169, 43.185719>,  <35.296883, 33.913933, 43.192158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.059502, 33.879169, 43.185719>,  <34.663864, 33.821232, 43.174988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059502, 33.879169, 43.185719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035771, -0.412849, 0.910097,
		0.142894, -0.899209, -0.413527,
		0.989091, 0.144840, 0.026828,
		35.356228, 33.922623, 43.193768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872185, 33.195827, 43.510895>,  <34.663864, 33.821232, 43.174988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872185, 33.195827, 43.510895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.191334, 33.436371, 43.527760>,  <35.382824, 33.580696, 43.537880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.191334, 33.436371, 43.527760>,  <34.872185, 33.195827, 43.510895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191334, 33.436371, 43.527760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291067, -0.445542, 0.846624,
		0.527908, -0.663222, -0.530518,
		0.797868, 0.601356, 0.042163,
		35.430695, 33.616779, 43.540409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551277, 32.704620, 43.627857>,  <34.872185, 33.195827, 43.510895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551277, 32.704620, 43.627857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.611332, 33.076614, 43.762066>,  <35.647366, 33.299812, 43.842590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.611332, 33.076614, 43.762066>,  <35.551277, 32.704620, 43.627857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611332, 33.076614, 43.762066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298445, -0.366174, 0.881389,
		0.942543, -0.032196, -0.332529,
		0.150141, 0.929989, 0.335526,
		35.656376, 33.355610, 43.862724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228100, 32.730770, 43.876045>,  <35.551277, 32.704620, 43.627857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228100, 32.730770, 43.876045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.032558, 33.034042, 44.048637>,  <35.915234, 33.216007, 44.152191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.032558, 33.034042, 44.048637>,  <36.228100, 32.730770, 43.876045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032558, 33.034042, 44.048637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302074, -0.316889, 0.899073,
		0.818394, 0.569858, -0.074114,
		-0.488858, 0.758184, 0.431480,
		35.885902, 33.261497, 44.178082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671738, 32.969090, 44.390812>,  <36.228100, 32.730770, 43.876045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671738, 32.969090, 44.390812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.336086, 33.127533, 44.539928>,  <36.134697, 33.222599, 44.629398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.336086, 33.127533, 44.539928>,  <36.671738, 32.969090, 44.390812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336086, 33.127533, 44.539928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294010, -0.246317, 0.923518,
		0.457635, 0.884550, 0.090231,
		-0.839124, 0.396105, 0.372790,
		36.084351, 33.246365, 44.651764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842838, 33.429092, 45.070004>,  <36.671738, 32.969090, 44.390812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842838, 33.429092, 45.070004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.457401, 33.323982, 45.089767>,  <36.226139, 33.260918, 45.101627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.457401, 33.323982, 45.089767>,  <36.842838, 33.429092, 45.070004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457401, 33.323982, 45.089767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152690, -0.389090, 0.908457,
		-0.219496, 0.882926, 0.415047,
		-0.963591, -0.262777, 0.049410,
		36.168324, 33.245148, 45.104591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908920, 34.188869, 45.205086>,  <36.842838, 33.429092, 45.070004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908920, 34.188869, 45.205086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.281731, 34.314716, 45.277016>,  <37.505417, 34.390224, 45.320175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.281731, 34.314716, 45.277016>,  <36.908920, 34.188869, 45.205086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281731, 34.314716, 45.277016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047485, 0.597975, -0.800107,
		-0.359261, 0.737184, 0.572269,
		0.932028, 0.314621, 0.179824,
		37.561340, 34.409103, 45.330963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962742, 34.853462, 44.973854>,  <36.908920, 34.188869, 45.205086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962742, 34.853462, 44.973854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.344124, 34.740803, 45.016914>,  <37.572952, 34.673206, 45.042751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.344124, 34.740803, 45.016914>,  <36.962742, 34.853462, 44.973854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344124, 34.740803, 45.016914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227111, 0.435988, -0.870824,
		0.198331, 0.854744, 0.479663,
		0.953459, -0.281649, 0.107652,
		37.630161, 34.656307, 45.049210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387985, 35.479912, 44.867493>,  <36.962742, 34.853462, 44.973854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387985, 35.479912, 44.867493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.633213, 35.168316, 44.814846>,  <37.780350, 34.981358, 44.783257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.633213, 35.168316, 44.814846>,  <37.387985, 35.479912, 44.867493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633213, 35.168316, 44.814846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412880, 0.457956, -0.787277,
		0.673558, 0.428310, 0.602387,
		0.613066, -0.778991, -0.131619,
		37.817131, 34.934620, 44.775360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039497, 35.742134, 44.853745>,  <37.387985, 35.479912, 44.867493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039497, 35.742134, 44.853745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.080841, 35.385117, 44.678165>,  <38.105648, 35.170906, 44.572819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.080841, 35.385117, 44.678165>,  <38.039497, 35.742134, 44.853745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080841, 35.385117, 44.678165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580033, 0.412589, -0.702376,
		0.808010, -0.182009, 0.560351,
		0.103356, -0.892548, -0.438947,
		38.111847, 35.117352, 44.546482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780735, 35.524200, 44.802235>,  <38.039497, 35.742134, 44.853745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780735, 35.524200, 44.802235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.590385, 35.318718, 44.516674>,  <38.476177, 35.195427, 44.345337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.590385, 35.318718, 44.516674>,  <38.780735, 35.524200, 44.802235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590385, 35.318718, 44.516674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641350, 0.352757, -0.681347,
		0.601846, -0.782091, 0.161600,
		-0.475870, -0.513708, -0.713899,
		38.447624, 35.164604, 44.302505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328728, 35.491837, 44.348042>,  <38.780735, 35.524200, 44.802235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328728, 35.491837, 44.348042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.032814, 35.348343, 44.120350>,  <38.855267, 35.262245, 43.983734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.032814, 35.348343, 44.120350>,  <39.328728, 35.491837, 44.348042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032814, 35.348343, 44.120350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516780, 0.238829, -0.822131,
		0.430880, -0.902367, 0.008706,
		-0.739785, -0.358739, -0.569232,
		38.810879, 35.240723, 43.949581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620564, 35.174496, 43.800594>,  <39.328728, 35.491837, 44.348042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620564, 35.174496, 43.800594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.252075, 35.234886, 43.657169>,  <39.030983, 35.271122, 43.571114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.252075, 35.234886, 43.657169>,  <39.620564, 35.174496, 43.800594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252075, 35.234886, 43.657169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388561, 0.310804, -0.867422,
		-0.019517, -0.938407, -0.344981,
		-0.921216, 0.150976, -0.358563,
		38.975712, 35.280178, 43.549599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517990, 34.831085, 43.124943>,  <39.620564, 35.174496, 43.800594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517990, 34.831085, 43.124943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.243809, 35.120861, 43.154160>,  <39.079300, 35.294727, 43.171688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.243809, 35.120861, 43.154160>,  <39.517990, 34.831085, 43.124943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243809, 35.120861, 43.154160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285551, 0.359740, -0.888284,
		-0.669783, -0.588024, -0.453451,
		-0.685457, 0.724441, 0.073037,
		39.038170, 35.338192, 43.176071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266739, 34.968700, 42.441593>,  <39.517990, 34.831085, 43.124943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266739, 34.968700, 42.441593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.154160, 35.305328, 42.626003>,  <39.086613, 35.507305, 42.736649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.154160, 35.305328, 42.626003>,  <39.266739, 34.968700, 42.441593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154160, 35.305328, 42.626003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029960, 0.472505, -0.880819,
		-0.959109, -0.261715, -0.107771,
		-0.281446, 0.841572, 0.461025,
		39.069725, 35.557800, 42.764309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641846, 35.083244, 42.103657>,  <39.266739, 34.968700, 42.441593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641846, 35.083244, 42.103657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.778896, 35.428631, 42.251728>,  <38.861126, 35.635864, 42.340572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.778896, 35.428631, 42.251728>,  <38.641846, 35.083244, 42.103657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778896, 35.428631, 42.251728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145247, 0.437980, -0.887174,
		-0.928175, 0.250203, 0.275480,
		0.342628, 0.863465, 0.370181,
		38.881683, 35.687672, 42.362782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214474, 35.589676, 41.826633>,  <38.641846, 35.083244, 42.103657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214474, 35.589676, 41.826633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.525040, 35.809437, 41.950142>,  <38.711380, 35.941292, 42.024246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.525040, 35.809437, 41.950142>,  <38.214474, 35.589676, 41.826633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525040, 35.809437, 41.950142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088571, 0.580205, -0.809640,
		-0.623967, 0.601269, 0.499141,
		0.776415, 0.549398, 0.308774,
		38.757965, 35.974255, 42.042774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036320, 36.356586, 41.728073>,  <38.214474, 35.589676, 41.826633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036320, 36.356586, 41.728073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.434868, 36.340851, 41.758278>,  <38.673996, 36.331409, 41.776402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.434868, 36.340851, 41.758278>,  <38.036320, 36.356586, 41.728073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434868, 36.340851, 41.758278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084679, 0.364986, -0.927154,
		0.008909, 0.930182, 0.366992,
		0.996369, -0.039337, 0.075515,
		38.733780, 36.329048, 41.780933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272694, 37.061764, 41.429607>,  <38.036320, 36.356586, 41.728073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272694, 37.061764, 41.429607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.589760, 36.817966, 41.423809>,  <38.779999, 36.671688, 41.420330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.589760, 36.817966, 41.423809>,  <38.272694, 37.061764, 41.429607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589760, 36.817966, 41.423809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196901, 0.278437, -0.940055,
		0.576991, 0.742290, 0.340716,
		0.792661, -0.609490, -0.014498,
		38.827557, 36.635120, 41.419460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908493, 37.373135, 41.030037>,  <38.272694, 37.061764, 41.429607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908493, 37.373135, 41.030037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.835686, 36.984459, 40.969788>,  <38.792000, 36.751255, 40.933636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.835686, 36.984459, 40.969788>,  <38.908493, 37.373135, 41.030037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835686, 36.984459, 40.969788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075276, 0.138965, -0.987432,
		0.980409, -0.191070, 0.047851,
		-0.182019, -0.971690, -0.150625,
		38.781078, 36.692951, 40.924599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.044161, 35.260078, 28.749262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.891684, 34.951725, 28.545134>,  <29.800198, 34.766712, 28.422657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.891684, 34.951725, 28.545134>,  <30.044161, 35.260078, 28.749262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.891684, 34.951725, 28.545134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611658, -0.203614, 0.764471,
		-0.693228, 0.603553, -0.393902,
		-0.381195, -0.770886, -0.510319,
		29.777325, 34.720459, 28.392038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296892, 35.324036, 28.789133>,  <30.044161, 35.260078, 28.749262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296892, 35.324036, 28.789133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.386824, 34.940830, 28.717957>,  <29.440783, 34.710907, 28.675251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.386824, 34.940830, 28.717957>,  <29.296892, 35.324036, 28.789133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386824, 34.940830, 28.717957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526932, -0.273150, 0.804817,
		-0.819631, -0.087182, -0.566220,
		0.224829, -0.958012, -0.177943,
		29.454273, 34.653427, 28.664574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727585, 34.949986, 28.873396>,  <29.296892, 35.324036, 28.789133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727585, 34.949986, 28.873396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.007504, 34.674000, 28.947407>,  <29.175455, 34.508408, 28.991814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.007504, 34.674000, 28.947407>,  <28.727585, 34.949986, 28.873396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007504, 34.674000, 28.947407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597052, -0.422732, 0.681782,
		-0.392185, -0.587583, -0.707770,
		0.699801, -0.689960, 0.185028,
		29.217443, 34.467010, 29.002914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384638, 34.409275, 29.153179>,  <28.727585, 34.949986, 28.873396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384638, 34.409275, 29.153179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.752161, 34.308792, 29.274954>,  <28.972675, 34.248501, 29.348019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.752161, 34.308792, 29.274954>,  <28.384638, 34.409275, 29.153179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752161, 34.308792, 29.274954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354993, -0.188781, 0.915610,
		-0.172525, -0.949348, -0.262627,
		0.918812, -0.251196, 0.304443,
		29.027803, 34.233429, 29.366285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294538, 33.678173, 29.424749>,  <28.384638, 34.409275, 29.153179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294538, 33.678173, 29.424749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.640854, 33.817375, 29.568584>,  <28.848642, 33.900898, 29.654886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.640854, 33.817375, 29.568584>,  <28.294538, 33.678173, 29.424749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640854, 33.817375, 29.568584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339492, -0.119438, 0.932995,
		0.367639, -0.929852, 0.014738,
		0.865787, 0.348009, 0.359587,
		28.900591, 33.921780, 29.676460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173223, 33.477711, 30.024479>,  <28.294538, 33.678173, 29.424749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173223, 33.477711, 30.024479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.490934, 33.709820, 30.096491>,  <28.681561, 33.849087, 30.139698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.490934, 33.709820, 30.096491>,  <28.173223, 33.477711, 30.024479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490934, 33.709820, 30.096491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245208, 0.035057, 0.968836,
		0.555877, -0.813668, 0.170133,
		0.794276, 0.580272, 0.180031,
		28.729218, 33.883900, 30.150499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494072, 33.067146, 30.467152>,  <28.173223, 33.477711, 30.024479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494072, 33.067146, 30.467152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.645256, 33.436058, 30.499535>,  <28.735968, 33.657406, 30.518965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.645256, 33.436058, 30.499535>,  <28.494072, 33.067146, 30.467152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.645256, 33.436058, 30.499535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103371, -0.044860, 0.993631,
		0.920032, -0.383923, 0.078381,
		0.377962, 0.922275, 0.080959,
		28.758644, 33.712742, 30.523823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905508, 32.950611, 30.944843>,  <28.494072, 33.067146, 30.467152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905508, 32.950611, 30.944843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787558, 33.332825, 30.944313>,  <28.716787, 33.562153, 30.943995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787558, 33.332825, 30.944313>,  <28.905508, 32.950611, 30.944843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787558, 33.332825, 30.944313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301974, -0.091871, 0.948879,
		0.906565, 0.280201, 0.315637,
		-0.294875, 0.955535, -0.001327,
		28.699095, 33.619484, 30.943914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157187, 33.177372, 31.575781>,  <28.905508, 32.950611, 30.944843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157187, 33.177372, 31.575781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.866499, 33.419571, 31.446012>,  <28.692087, 33.564892, 31.368151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.866499, 33.419571, 31.446012>,  <29.157187, 33.177372, 31.575781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866499, 33.419571, 31.446012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390775, 0.024017, 0.920173,
		0.564957, 0.795482, 0.219161,
		-0.726717, 0.605501, -0.324422,
		28.648483, 33.601223, 31.348686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204493, 33.813122, 32.039989>,  <29.157187, 33.177372, 31.575781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204493, 33.813122, 32.039989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.846382, 33.835716, 31.863222>,  <28.631516, 33.849274, 31.757162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.846382, 33.835716, 31.863222>,  <29.204493, 33.813122, 32.039989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846382, 33.835716, 31.863222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436197, 0.090618, 0.895277,
		0.090618, 0.994282, -0.056488,
		-0.895277, 0.056488, -0.441914,
		28.577799, 33.852661, 31.730648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978506, 34.427010, 32.288589>,  <29.204493, 33.813122, 32.039989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978506, 34.427010, 32.288589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.662664, 34.202942, 32.188404>,  <28.473160, 34.068501, 32.128292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.662664, 34.202942, 32.188404>,  <28.978506, 34.427010, 32.288589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662664, 34.202942, 32.188404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338121, 0.056586, 0.939400,
		-0.512052, 0.826442, -0.234086,
		-0.789605, -0.560171, -0.250462,
		28.425783, 34.034889, 32.113266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467588, 34.671089, 32.672066>,  <28.978506, 34.427010, 32.288589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467588, 34.671089, 32.672066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.314384, 34.318447, 32.561741>,  <28.222462, 34.106861, 32.495548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.314384, 34.318447, 32.561741>,  <28.467588, 34.671089, 32.672066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314384, 34.318447, 32.561741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474272, -0.068544, 0.877706,
		-0.792698, 0.466978, -0.391869,
		-0.383009, -0.881609, -0.275809,
		28.199482, 34.053963, 32.478996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803198, 34.713642, 32.848385>,  <28.467588, 34.671089, 32.672066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803198, 34.713642, 32.848385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.856834, 34.318733, 32.814186>,  <27.889017, 34.081787, 32.793667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.856834, 34.318733, 32.814186>,  <27.803198, 34.713642, 32.848385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856834, 34.318733, 32.814186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420848, -0.134842, 0.897053,
		-0.897166, -0.084308, -0.433574,
		0.134093, -0.987274, -0.085495,
		27.897062, 34.022552, 32.788536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124748, 34.354046, 33.130104>,  <27.803198, 34.713642, 32.848385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124748, 34.354046, 33.130104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.430635, 34.097195, 33.151562>,  <27.614168, 33.943085, 33.164436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.430635, 34.097195, 33.151562>,  <27.124748, 34.354046, 33.130104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.430635, 34.097195, 33.151562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187976, -0.142681, 0.971755,
		-0.616338, -0.753201, -0.229816,
		0.764717, -0.642129, 0.053644,
		27.660051, 33.904556, 33.167656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801819, 33.761757, 33.470974>,  <27.124748, 34.354046, 33.130104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801819, 33.761757, 33.470974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.199266, 33.734581, 33.506985>,  <27.437735, 33.718277, 33.528591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.199266, 33.734581, 33.506985>,  <26.801819, 33.761757, 33.470974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.199266, 33.734581, 33.506985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100176, -0.164912, 0.981208,
		-0.051813, -0.983966, -0.170665,
		0.993620, -0.067936, 0.090025,
		27.497353, 33.714199, 33.533993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956772, 33.262402, 33.943584>,  <26.801819, 33.761757, 33.470974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956772, 33.262402, 33.943584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.308052, 33.453419, 33.954235>,  <27.518820, 33.568031, 33.960625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.308052, 33.453419, 33.954235>,  <26.956772, 33.262402, 33.943584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308052, 33.453419, 33.954235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068698, -0.181035, 0.981074,
		0.473330, -0.859752, -0.191792,
		0.878202, 0.477548, 0.026626,
		27.571512, 33.596684, 33.962223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297300, 32.853115, 34.349213>,  <26.956772, 33.262402, 33.943584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297300, 32.853115, 34.349213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.473061, 33.212383, 34.355030>,  <27.578516, 33.427944, 34.358521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.473061, 33.212383, 34.355030>,  <27.297300, 32.853115, 34.349213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473061, 33.212383, 34.355030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075114, -0.052874, 0.995772,
		0.895145, -0.436450, -0.090699,
		0.439400, 0.898174, 0.014546,
		27.604881, 33.481834, 34.359394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.950033, 32.766869, 34.739418>,  <27.297300, 32.853115, 34.349213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.950033, 32.766869, 34.739418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.818275, 33.144447, 34.747971>,  <27.739222, 33.370995, 34.753101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.818275, 33.144447, 34.747971>,  <27.950033, 32.766869, 34.739418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818275, 33.144447, 34.747971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036755, -0.035449, 0.998695,
		0.943477, 0.328177, 0.046371,
		-0.329393, 0.943951, 0.021384,
		27.719458, 33.427631, 34.754387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384747, 33.315617, 35.078278>,  <27.950033, 32.766869, 34.739418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384747, 33.315617, 35.078278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.998222, 33.407734, 35.124249>,  <27.766308, 33.463005, 35.151829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.998222, 33.407734, 35.124249>,  <28.384747, 33.315617, 35.078278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998222, 33.407734, 35.124249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045522, -0.286554, 0.956982,
		0.253316, 0.929975, 0.266417,
		-0.966312, 0.230291, 0.114923,
		27.708328, 33.476822, 35.158726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249184, 33.748962, 35.586124>,  <28.384747, 33.315617, 35.078278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249184, 33.748962, 35.586124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.925789, 33.516617, 35.548294>,  <27.731752, 33.377209, 35.525597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.925789, 33.516617, 35.548294>,  <28.249184, 33.748962, 35.586124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925789, 33.516617, 35.548294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141325, -0.347624, 0.926922,
		-0.571296, 0.736037, 0.363140,
		-0.808485, -0.580868, -0.094576,
		27.683243, 33.342358, 35.519920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819740, 34.301296, 35.530399>,  <28.249184, 33.748962, 35.586124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819740, 34.301296, 35.530399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.157553, 34.512867, 35.496941>,  <29.360241, 34.639809, 35.476864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.157553, 34.512867, 35.496941>,  <28.819740, 34.301296, 35.530399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157553, 34.512867, 35.496941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287230, 0.315591, -0.904379,
		-0.451955, 0.787804, 0.418452,
		0.844533, 0.528931, -0.083648,
		29.410912, 34.671547, 35.471848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667080, 34.914764, 35.196602>,  <28.819740, 34.301296, 35.530399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667080, 34.914764, 35.196602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.059980, 34.885670, 35.127441>,  <29.295721, 34.868214, 35.085945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.059980, 34.885670, 35.127441>,  <28.667080, 34.914764, 35.196602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059980, 34.885670, 35.127441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148238, 0.263823, -0.953112,
		0.114940, 0.961825, 0.248358,
		0.982250, -0.072735, -0.172903,
		29.354656, 34.863850, 35.075569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884594, 35.501179, 34.977505>,  <28.667080, 34.914764, 35.196602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884594, 35.501179, 34.977505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.196722, 35.286327, 34.849384>,  <29.383999, 35.157417, 34.772514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.196722, 35.286327, 34.849384>,  <28.884594, 35.501179, 34.977505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196722, 35.286327, 34.849384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043540, 0.464259, -0.884629,
		0.623864, 0.704239, 0.338883,
		0.780319, -0.537133, -0.320297,
		29.430819, 35.125187, 34.753296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443083, 36.001667, 34.696220>,  <28.884594, 35.501179, 34.977505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443083, 36.001667, 34.696220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.495987, 35.627880, 34.563988>,  <29.527729, 35.403610, 34.484650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.495987, 35.627880, 34.563988>,  <29.443083, 36.001667, 34.696220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495987, 35.627880, 34.563988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306761, 0.355727, -0.882812,
		0.942553, 0.015350, 0.333705,
		0.132259, -0.934464, -0.330582,
		29.535664, 35.347542, 34.464813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007559, 36.056705, 34.394196>,  <29.443083, 36.001667, 34.696220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007559, 36.056705, 34.394196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.883051, 35.710812, 34.236534>,  <29.808346, 35.503277, 34.141937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.883051, 35.710812, 34.236534>,  <30.007559, 36.056705, 34.394196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883051, 35.710812, 34.236534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482918, 0.213283, -0.849294,
		0.818476, -0.454700, 0.351205,
		-0.311268, -0.864730, -0.394149,
		29.789671, 35.451393, 34.118290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574009, 35.772308, 34.124466>,  <30.007559, 36.056705, 34.394196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574009, 35.772308, 34.124466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.277468, 35.612068, 33.909092>,  <30.099543, 35.515923, 33.779865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.277468, 35.612068, 33.909092>,  <30.574009, 35.772308, 34.124466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277468, 35.612068, 33.909092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561687, 0.068719, -0.824491,
		0.367296, -0.913670, 0.174069,
		-0.741351, -0.400605, -0.538437,
		30.055063, 35.491886, 33.747562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917633, 35.293102, 33.672565>,  <30.574009, 35.772308, 34.124466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917633, 35.293102, 33.672565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.557056, 35.335716, 33.504730>,  <30.340710, 35.361286, 33.404030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.557056, 35.335716, 33.504730>,  <30.917633, 35.293102, 33.672565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557056, 35.335716, 33.504730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430689, 0.122838, -0.894102,
		-0.043711, -0.986692, -0.156614,
		-0.901441, 0.106534, -0.419588,
		30.286625, 35.367676, 33.378853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009260, 34.867931, 33.134674>,  <30.917633, 35.293102, 33.672565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009260, 34.867931, 33.134674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.688765, 35.088310, 33.041317>,  <30.496468, 35.220539, 32.985302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.688765, 35.088310, 33.041317>,  <31.009260, 34.867931, 33.134674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688765, 35.088310, 33.041317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345113, 0.106896, -0.932454,
		-0.488784, -0.827666, -0.275788,
		-0.801241, 0.550947, -0.233389,
		30.448393, 35.253593, 32.971302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915749, 34.607166, 32.527763>,  <31.009260, 34.867931, 33.134674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915749, 34.607166, 32.527763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.740555, 34.966755, 32.529499>,  <30.635439, 35.182510, 32.530540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.740555, 34.966755, 32.529499>,  <30.915749, 34.607166, 32.527763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740555, 34.966755, 32.529499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072621, 0.040189, -0.996550,
		-0.896046, -0.436156, -0.082886,
		-0.437982, 0.898973, 0.004337,
		30.609159, 35.236446, 32.530800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368462, 34.618534, 32.034042>,  <30.915749, 34.607166, 32.527763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368462, 34.618534, 32.034042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.466887, 35.005768, 32.053074>,  <30.525942, 35.238110, 32.064491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.466887, 35.005768, 32.053074>,  <30.368462, 34.618534, 32.034042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466887, 35.005768, 32.053074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082726, 0.069883, -0.994119,
		-0.965717, 0.240680, 0.097281,
		0.246063, 0.968085, 0.047577,
		30.540705, 35.296192, 32.067348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962271, 34.946030, 31.436535>,  <30.368462, 34.618534, 32.034042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962271, 34.946030, 31.436535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.248426, 35.208252, 31.533251>,  <30.420120, 35.365585, 31.591280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.248426, 35.208252, 31.533251>,  <29.962271, 34.946030, 31.436535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248426, 35.208252, 31.533251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076417, 0.270564, -0.959664,
		-0.694534, 0.705011, 0.143463,
		0.715390, 0.655557, 0.241791,
		30.463043, 35.404919, 31.605787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853720, 35.420296, 30.911995>,  <29.962271, 34.946030, 31.436535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853720, 35.420296, 30.911995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.230572, 35.460339, 31.039978>,  <30.456682, 35.484364, 31.116768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.230572, 35.460339, 31.039978>,  <29.853720, 35.420296, 30.911995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230572, 35.460339, 31.039978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296263, 0.198100, -0.934337,
		-0.156917, 0.975056, 0.156977,
		0.942128, 0.100107, 0.319958,
		30.513210, 35.490372, 31.135965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057674, 35.967266, 30.638174>,  <29.853720, 35.420296, 30.911995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057674, 35.967266, 30.638174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.428442, 35.853283, 30.735840>,  <30.650904, 35.784893, 30.794439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.428442, 35.853283, 30.735840>,  <30.057674, 35.967266, 30.638174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428442, 35.853283, 30.735840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341775, 0.372422, -0.862840,
		0.154941, 0.883233, 0.442597,
		0.926921, -0.284958, 0.244163,
		30.706518, 35.767796, 30.809090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455299, 36.429859, 30.443609>,  <30.057674, 35.967266, 30.638174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455299, 36.429859, 30.443609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.728807, 36.139103, 30.469202>,  <30.892912, 35.964649, 30.484558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.728807, 36.139103, 30.469202>,  <30.455299, 36.429859, 30.443609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728807, 36.139103, 30.469202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516652, 0.420350, -0.745907,
		0.515295, 0.543085, 0.662970,
		0.683771, -0.726887, 0.063981,
		30.933939, 35.921036, 30.488396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088770, 36.685699, 30.496523>,  <30.455299, 36.429859, 30.443609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088770, 36.685699, 30.496523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.159967, 36.313171, 30.369431>,  <31.202686, 36.089653, 30.293175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.159967, 36.313171, 30.369431>,  <31.088770, 36.685699, 30.496523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159967, 36.313171, 30.369431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468898, 0.364146, -0.804694,
		0.865132, -0.005755, 0.501511,
		0.177992, -0.931324, -0.317733,
		31.213366, 36.033775, 30.274111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797329, 36.717026, 30.141880>,  <31.088770, 36.685699, 30.496523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797329, 36.717026, 30.141880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.606165, 36.387192, 30.020773>,  <31.491467, 36.189293, 29.948109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.606165, 36.387192, 30.020773>,  <31.797329, 36.717026, 30.141880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606165, 36.387192, 30.020773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431152, 0.080102, -0.898717,
		0.765319, -0.560042, 0.317239,
		-0.477908, -0.824583, -0.302766,
		31.462793, 36.139816, 29.929943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263866, 36.253338, 29.853498>,  <31.797329, 36.717026, 30.141880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263866, 36.253338, 29.853498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.918417, 36.129055, 29.694700>,  <31.711147, 36.054485, 29.599421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.918417, 36.129055, 29.694700>,  <32.263866, 36.253338, 29.853498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918417, 36.129055, 29.694700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379682, 0.117177, -0.917666,
		0.331647, -0.943254, 0.016773,
		-0.863627, -0.310710, -0.396998,
		31.659328, 36.035843, 29.575602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476959, 35.754662, 29.390291>,  <32.263866, 36.253338, 29.853498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476959, 35.754662, 29.390291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.091465, 35.782024, 29.287109>,  <31.860168, 35.798443, 29.225201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.091465, 35.782024, 29.287109>,  <32.476959, 35.754662, 29.390291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091465, 35.782024, 29.287109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251649, -0.088844, -0.963732,
		-0.088844, -0.993694, 0.068407,
		0.963732, -0.068407, 0.257955,
		31.802345, 35.802547, 29.209723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379482, 35.252220, 28.895061>,  <32.476959, 35.754662, 29.390291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379482, 35.252220, 28.895061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.083832, 35.515354, 28.837172>,  <31.906441, 35.673233, 28.802439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.083832, 35.515354, 28.837172>,  <32.379482, 35.252220, 28.895061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083832, 35.515354, 28.837172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069237, -0.139521, -0.987796,
		-0.669995, -0.740130, 0.057578,
		-0.739130, 0.657831, -0.144723,
		31.862093, 35.712704, 28.793755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105145, 34.999184, 28.421194>,  <32.379482, 35.252220, 28.895061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105145, 34.999184, 28.421194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.935419, 35.358742, 28.377459>,  <31.833584, 35.574474, 28.351217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.935419, 35.358742, 28.377459>,  <32.105145, 34.999184, 28.421194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935419, 35.358742, 28.377459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001564, -0.121475, -0.992593,
		-0.905515, -0.420997, 0.052950,
		-0.424310, 0.898891, -0.109339,
		31.808126, 35.628410, 28.344656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409842, 34.953476, 27.997349>,  <32.105145, 34.999184, 28.421194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409842, 34.953476, 27.997349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.580904, 35.314442, 27.976347>,  <31.683540, 35.531021, 27.963747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.580904, 35.314442, 27.976347>,  <31.409842, 34.953476, 27.997349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580904, 35.314442, 27.976347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096801, -0.012029, -0.995231,
		-0.898744, 0.430698, 0.082211,
		0.427655, 0.902416, -0.052503,
		31.709200, 35.585167, 27.960596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061502, 35.304554, 27.463036>,  <31.409842, 34.953476, 27.997349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061502, 35.304554, 27.463036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.411659, 35.496349, 27.487617>,  <31.621754, 35.611427, 27.502367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.411659, 35.496349, 27.487617>,  <31.061502, 35.304554, 27.463036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411659, 35.496349, 27.487617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015760, 0.155361, -0.987732,
		-0.483158, 0.863684, 0.143558,
		0.875392, 0.479493, 0.061452,
		31.674276, 35.640198, 27.506054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.027504, 32.719868, 45.420559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.823338, 32.432285, 45.231846>,  <39.700836, 32.259735, 45.118618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.823338, 32.432285, 45.231846>,  <40.027504, 32.719868, 45.420559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823338, 32.432285, 45.231846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486717, -0.210755, 0.847755,
		-0.708930, 0.662330, -0.242357,
		-0.510415, -0.718959, -0.471778,
		39.670212, 32.216599, 45.090313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307495, 32.817860, 45.685059>,  <40.027504, 32.719868, 45.420559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307495, 32.817860, 45.685059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.395535, 32.448795, 45.558411>,  <39.448357, 32.227356, 45.482422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.395535, 32.448795, 45.558411>,  <39.307495, 32.817860, 45.685059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395535, 32.448795, 45.558411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286233, -0.371378, 0.883261,
		-0.932539, -0.103774, -0.345835,
		0.220095, -0.922664, -0.316621,
		39.461563, 32.171997, 45.463425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893578, 32.489666, 46.088051>,  <39.307495, 32.817860, 45.685059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893578, 32.489666, 46.088051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.074757, 32.171535, 45.926907>,  <39.183464, 31.980658, 45.830219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.074757, 32.171535, 45.926907>,  <38.893578, 32.489666, 46.088051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074757, 32.171535, 45.926907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130467, -0.506137, 0.852528,
		-0.881938, -0.333593, -0.333018,
		0.452950, -0.795325, -0.402858,
		39.210640, 31.932938, 45.806049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466896, 31.941765, 46.049988>,  <38.893578, 32.489666, 46.088051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466896, 31.941765, 46.049988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.842606, 31.804697, 46.057312>,  <39.068031, 31.722456, 46.061707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.842606, 31.804697, 46.057312>,  <38.466896, 31.941765, 46.049988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842606, 31.804697, 46.057312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211422, -0.535850, 0.817414,
		-0.270290, -0.771650, -0.575760,
		0.939278, -0.342667, 0.018308,
		39.124390, 31.701897, 46.062805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415058, 31.217232, 46.203377>,  <38.466896, 31.941765, 46.049988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415058, 31.217232, 46.203377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.792278, 31.309786, 46.298973>,  <39.018612, 31.365318, 46.356331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.792278, 31.309786, 46.298973>,  <38.415058, 31.217232, 46.203377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792278, 31.309786, 46.298973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124430, -0.420931, 0.898518,
		0.308504, -0.877085, -0.368167,
		0.943049, 0.231385, 0.238995,
		39.075191, 31.379202, 46.370670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661777, 30.624620, 46.537201>,  <38.415058, 31.217232, 46.203377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661777, 30.624620, 46.537201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.891758, 30.933052, 46.646652>,  <39.029747, 31.118111, 46.712322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.891758, 30.933052, 46.646652>,  <38.661777, 30.624620, 46.537201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891758, 30.933052, 46.646652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021017, -0.348237, 0.937171,
		0.817920, -0.533074, -0.216424,
		0.574948, 0.771079, 0.273626,
		39.064243, 31.164375, 46.728741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167877, 30.309605, 46.883564>,  <38.661777, 30.624620, 46.537201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167877, 30.309605, 46.883564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.184513, 30.692490, 46.998119>,  <39.194496, 30.922220, 47.066853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.184513, 30.692490, 46.998119>,  <39.167877, 30.309605, 46.883564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184513, 30.692490, 46.998119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113778, -0.289309, 0.950450,
		0.992635, -0.006944, -0.120942,
		0.041590, 0.957210, 0.286388,
		39.196991, 30.979652, 47.084034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862354, 30.437506, 47.306442>,  <39.167877, 30.309605, 46.883564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862354, 30.437506, 47.306442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.580475, 30.697895, 47.419319>,  <39.411346, 30.854130, 47.487045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.580475, 30.697895, 47.419319>,  <39.862354, 30.437506, 47.306442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580475, 30.697895, 47.419319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179876, -0.220811, 0.958586,
		0.686326, 0.726274, 0.038510,
		-0.704699, 0.650976, 0.282188,
		39.369064, 30.893188, 47.503975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121750, 30.704996, 47.805031>,  <39.862354, 30.437506, 47.306442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121750, 30.704996, 47.805031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.745235, 30.819862, 47.876041>,  <39.519325, 30.888783, 47.918648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.745235, 30.819862, 47.876041>,  <40.121750, 30.704996, 47.805031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745235, 30.819862, 47.876041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181962, -0.011403, 0.983240,
		0.284379, 0.957813, -0.041520,
		-0.941286, 0.287168, 0.177528,
		39.462849, 30.906013, 47.929298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172531, 31.263515, 48.249451>,  <40.121750, 30.704996, 47.805031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172531, 31.263515, 48.249451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.793266, 31.156939, 48.318726>,  <39.565708, 31.092993, 48.360291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.793266, 31.156939, 48.318726>,  <40.172531, 31.263515, 48.249451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793266, 31.156939, 48.318726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181279, -0.005882, 0.983414,
		-0.261006, 0.963833, 0.053878,
		-0.948163, -0.266444, 0.173188,
		39.508816, 31.077005, 48.370682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755028, 31.764656, 48.697964>,  <40.172531, 31.263515, 48.249451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755028, 31.764656, 48.697964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.578274, 31.412146, 48.765003>,  <39.472221, 31.200640, 48.805229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.578274, 31.412146, 48.765003>,  <39.755028, 31.764656, 48.697964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578274, 31.412146, 48.765003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132771, 0.120525, 0.983791,
		-0.887194, 0.456971, 0.063750,
		-0.441881, -0.881278, 0.167602,
		39.445709, 31.147762, 48.815285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709618, 31.787651, 49.341572>,  <39.755028, 31.764656, 48.697964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709618, 31.787651, 49.341572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.548847, 31.423876, 49.298897>,  <39.452385, 31.205610, 49.273293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.548847, 31.423876, 49.298897>,  <39.709618, 31.787651, 49.341572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548847, 31.423876, 49.298897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077704, -0.149963, 0.985633,
		-0.912371, 0.387858, 0.130941,
		-0.401922, -0.909438, -0.106684,
		39.428272, 31.151045, 49.266891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175858, 31.826384, 49.887253>,  <39.709618, 31.787651, 49.341572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175858, 31.826384, 49.887253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.287296, 31.452431, 49.799274>,  <39.354160, 31.228060, 49.746487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.287296, 31.452431, 49.799274>,  <39.175858, 31.826384, 49.887253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287296, 31.452431, 49.799274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036753, -0.218469, 0.975152,
		-0.959704, -0.279761, -0.026506,
		0.278600, -0.934882, -0.219947,
		39.370876, 31.171967, 49.733292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906734, 31.597158, 50.465996>,  <39.175858, 31.826384, 49.887253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906734, 31.597158, 50.465996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.155308, 31.320375, 50.319019>,  <39.304451, 31.154306, 50.230835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.155308, 31.320375, 50.319019>,  <38.906734, 31.597158, 50.465996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155308, 31.320375, 50.319019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262419, -0.258065, 0.929806,
		-0.738209, -0.674239, 0.021211,
		0.621437, -0.691957, -0.367439,
		39.341740, 31.112789, 50.208786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459679, 32.183777, 50.429291>,  <38.906734, 31.597158, 50.465996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459679, 32.183777, 50.429291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.083271, 32.297512, 50.502651>,  <37.857426, 32.365753, 50.546665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.083271, 32.297512, 50.502651>,  <38.459679, 32.183777, 50.429291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083271, 32.297512, 50.502651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051202, 0.416118, -0.907868,
		-0.334455, -0.863712, -0.377016,
		-0.941020, 0.284337, 0.183396,
		37.800964, 32.382812, 50.557671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056572, 31.902617, 49.946255>,  <38.459679, 32.183777, 50.429291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056572, 31.902617, 49.946255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.850700, 32.222137, 50.070847>,  <37.727177, 32.413849, 50.145603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.850700, 32.222137, 50.070847>,  <38.056572, 31.902617, 49.946255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850700, 32.222137, 50.070847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102486, 0.303374, -0.947344,
		-0.851238, -0.519497, -0.074273,
		-0.514675, 0.798804, 0.311484,
		37.696297, 32.461777, 50.164291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295143, 31.888483, 49.700493>,  <38.056572, 31.902617, 49.946255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295143, 31.888483, 49.700493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.429188, 32.258892, 49.769989>,  <37.509613, 32.481136, 49.811687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.429188, 32.258892, 49.769989>,  <37.295143, 31.888483, 49.700493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429188, 32.258892, 49.769989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171057, 0.241133, -0.955298,
		-0.926522, 0.290409, 0.239208,
		0.335108, 0.926023, 0.173738,
		37.529720, 32.536697, 49.822109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866024, 32.366631, 49.368938>,  <37.295143, 31.888483, 49.700493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866024, 32.366631, 49.368938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.188412, 32.594986, 49.431545>,  <37.381844, 32.731998, 49.469109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.188412, 32.594986, 49.431545>,  <36.866024, 32.366631, 49.368938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188412, 32.594986, 49.431545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094228, 0.384764, -0.918193,
		-0.584406, 0.725289, 0.363903,
		0.805972, 0.570887, 0.156516,
		37.430202, 32.766251, 49.478500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662991, 32.857719, 48.836178>,  <36.866024, 32.366631, 49.368938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662991, 32.857719, 48.836178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.032070, 32.966610, 48.945374>,  <37.253517, 33.031944, 49.010891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.032070, 32.966610, 48.945374>,  <36.662991, 32.857719, 48.836178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032070, 32.966610, 48.945374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121358, 0.466996, -0.875892,
		-0.365923, 0.841313, 0.397859,
		0.922698, 0.272226, 0.272985,
		37.308880, 33.048279, 49.027267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768269, 33.383232, 48.530876>,  <36.662991, 32.857719, 48.836178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768269, 33.383232, 48.530876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152431, 33.302620, 48.607826>,  <37.382931, 33.254253, 48.653996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152431, 33.302620, 48.607826>,  <36.768269, 33.383232, 48.530876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152431, 33.302620, 48.607826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262976, 0.427744, -0.864800,
		0.091995, 0.881148, 0.463805,
		0.960406, -0.201527, 0.192370,
		37.440552, 33.242161, 48.665539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183842, 34.050068, 48.569305>,  <36.768269, 33.383232, 48.530876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183842, 34.050068, 48.569305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.428822, 33.743443, 48.492065>,  <37.575809, 33.559467, 48.445721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.428822, 33.743443, 48.492065>,  <37.183842, 34.050068, 48.569305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428822, 33.743443, 48.492065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293448, 0.447285, -0.844881,
		0.734027, 0.460779, 0.498885,
		0.612448, -0.766563, -0.193104,
		37.612556, 33.513474, 48.434135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716118, 34.395226, 48.440666>,  <37.183842, 34.050068, 48.569305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716118, 34.395226, 48.440666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.771099, 34.028755, 48.290077>,  <37.804089, 33.808872, 48.199722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.771099, 34.028755, 48.290077>,  <37.716118, 34.395226, 48.440666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771099, 34.028755, 48.290077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186294, 0.397214, -0.898619,
		0.972832, 0.053383, 0.225276,
		0.137453, -0.916172, -0.376477,
		37.812336, 33.753902, 48.177135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388351, 34.413738, 48.128723>,  <37.716118, 34.395226, 48.440666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388351, 34.413738, 48.128723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.188305, 34.116699, 47.950542>,  <38.068275, 33.938477, 47.843636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.188305, 34.116699, 47.950542>,  <38.388351, 34.413738, 48.128723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188305, 34.116699, 47.950542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267620, 0.356676, -0.895076,
		0.823567, -0.566854, 0.020355,
		-0.500118, -0.742602, -0.445448,
		38.038269, 33.893917, 47.816910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722996, 34.346607, 47.509899>,  <38.388351, 34.413738, 48.128723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722996, 34.346607, 47.509899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.406975, 34.115170, 47.428856>,  <38.217361, 33.976307, 47.380230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.406975, 34.115170, 47.428856>,  <38.722996, 34.346607, 47.509899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406975, 34.115170, 47.428856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060870, 0.254829, -0.965068,
		0.610014, -0.774784, -0.166108,
		-0.790049, -0.578594, -0.202610,
		38.169960, 33.941589, 47.368073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894192, 33.802830, 46.909050>,  <38.722996, 34.346607, 47.509899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894192, 33.802830, 46.909050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.503777, 33.888802, 46.922623>,  <38.269527, 33.940384, 46.930767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.503777, 33.888802, 46.922623>,  <38.894192, 33.802830, 46.909050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503777, 33.888802, 46.922623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002572, 0.167311, -0.985901,
		-0.217573, -0.962192, -0.163855,
		-0.976040, 0.214927, 0.033928,
		38.210964, 33.953278, 46.932800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597378, 33.536781, 46.358780>,  <38.894192, 33.802830, 46.909050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597378, 33.536781, 46.358780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.295979, 33.776623, 46.466644>,  <38.115139, 33.920528, 46.531364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.295979, 33.776623, 46.466644>,  <38.597378, 33.536781, 46.358780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295979, 33.776623, 46.466644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274748, 0.085447, -0.957712,
		-0.597288, -0.795723, 0.100356,
		-0.753498, 0.599603, 0.269660,
		38.069927, 33.956505, 46.547543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920345, 33.293419, 45.987900>,  <38.597378, 33.536781, 46.358780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920345, 33.293419, 45.987900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.893864, 33.681587, 46.080765>,  <37.877975, 33.914490, 46.136486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.893864, 33.681587, 46.080765>,  <37.920345, 33.293419, 45.987900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893864, 33.681587, 46.080765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350792, 0.195189, -0.915886,
		-0.934110, -0.142076, 0.327493,
		-0.066202, 0.970420, 0.232167,
		37.874004, 33.972713, 46.150414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308273, 33.519455, 45.655052>,  <37.920345, 33.293419, 45.987900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308273, 33.519455, 45.655052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.523659, 33.848969, 45.725971>,  <37.652889, 34.046677, 45.768524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.523659, 33.848969, 45.725971>,  <37.308273, 33.519455, 45.655052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523659, 33.848969, 45.725971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228278, 0.345146, -0.910364,
		-0.811137, 0.449727, 0.373901,
		0.538466, 0.823783, 0.177298,
		37.685200, 34.096104, 45.779160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606762, 33.637096, 45.712536>,  <37.308273, 33.519455, 45.655052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606762, 33.637096, 45.712536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.337360, 33.358631, 45.613136>,  <36.175720, 33.191551, 45.553497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.337360, 33.358631, 45.613136>,  <36.606762, 33.637096, 45.712536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337360, 33.358631, 45.613136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181131, -0.170494, 0.968568,
		-0.716650, 0.697342, -0.011270,
		-0.673501, -0.696165, -0.248495,
		36.135311, 33.149780, 45.538589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036606, 33.714600, 46.207111>,  <36.606762, 33.637096, 45.712536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036606, 33.714600, 46.207111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.040520, 33.343174, 46.058693>,  <36.042870, 33.120319, 45.969643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.040520, 33.343174, 46.058693>,  <36.036606, 33.714600, 46.207111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040520, 33.343174, 46.058693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065958, -0.370856, 0.926345,
		-0.997774, 0.015411, -0.064874,
		0.009783, -0.928563, -0.371047,
		36.043453, 33.064606, 45.947380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619507, 33.402470, 46.631844>,  <36.036606, 33.714600, 46.207111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619507, 33.402470, 46.631844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794975, 33.090916, 46.452557>,  <35.900257, 32.903984, 46.344986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794975, 33.090916, 46.452557>,  <35.619507, 33.402470, 46.631844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794975, 33.090916, 46.452557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188993, -0.567575, 0.801336,
		-0.878549, -0.266813, -0.396184,
		0.438672, -0.778890, -0.448217,
		35.926579, 32.857250, 46.318092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132511, 32.889362, 46.651871>,  <35.619507, 33.402470, 46.631844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132511, 32.889362, 46.651871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.493839, 32.718010, 46.642864>,  <35.710636, 32.615196, 46.637463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.493839, 32.718010, 46.642864>,  <35.132511, 32.889362, 46.651871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493839, 32.718010, 46.642864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232118, -0.532239, 0.814152,
		-0.360751, -0.730211, -0.580216,
		0.903316, -0.428385, -0.022511,
		35.764835, 32.589493, 46.636112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107391, 32.172188, 46.425529>,  <35.132511, 32.889362, 46.651871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107391, 32.172188, 46.425529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.448822, 32.186970, 46.633389>,  <35.653683, 32.195839, 46.758106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.448822, 32.186970, 46.633389>,  <35.107391, 32.172188, 46.425529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448822, 32.186970, 46.633389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389847, -0.616362, 0.684191,
		0.345575, -0.786596, -0.511709,
		0.853580, 0.036951, 0.519651,
		35.704895, 32.198055, 46.789284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201828, 31.535192, 46.524895>,  <35.107391, 32.172188, 46.425529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201828, 31.535192, 46.524895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.436131, 31.707047, 46.799793>,  <35.576710, 31.810160, 46.964733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.436131, 31.707047, 46.799793>,  <35.201828, 31.535192, 46.524895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436131, 31.707047, 46.799793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307692, -0.666577, 0.678970,
		0.749812, -0.609169, -0.258254,
		0.585754, 0.429637, 0.687244,
		35.611858, 31.835938, 47.005966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557178, 30.990700, 46.892548>,  <35.201828, 31.535192, 46.524895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557178, 30.990700, 46.892548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.601528, 31.299238, 47.143219>,  <35.628139, 31.484362, 47.293621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.601528, 31.299238, 47.143219>,  <35.557178, 30.990700, 46.892548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601528, 31.299238, 47.143219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110484, -0.617094, 0.779095,
		0.987674, -0.155618, 0.016803,
		0.110873, 0.771349, 0.626681,
		35.634789, 31.530643, 47.331223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637917, 30.247681, 46.846428>,  <35.557178, 30.990700, 46.892548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637917, 30.247681, 46.846428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.402287, 29.934652, 46.765854>,  <35.260910, 29.746836, 46.717510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.402287, 29.934652, 46.765854>,  <35.637917, 30.247681, 46.846428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402287, 29.934652, 46.765854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042228, 0.219129, -0.974781,
		0.806977, -0.582722, -0.096036,
		-0.589071, -0.782571, -0.201439,
		35.225567, 29.699881, 46.705421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920330, 29.934965, 46.265545>,  <35.637917, 30.247681, 46.846428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920330, 29.934965, 46.265545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.549667, 29.784702, 46.271099>,  <35.327271, 29.694546, 46.274429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.549667, 29.784702, 46.271099>,  <35.920330, 29.934965, 46.265545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549667, 29.784702, 46.271099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061830, 0.115881, -0.991337,
		0.370793, -0.919486, -0.130609,
		-0.926655, -0.375657, 0.013884,
		35.271671, 29.672005, 46.275265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962257, 29.517128, 45.776005>,  <35.920330, 29.934965, 46.265545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962257, 29.517128, 45.776005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.568325, 29.556396, 45.833233>,  <35.331966, 29.579958, 45.867569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.568325, 29.556396, 45.833233>,  <35.962257, 29.517128, 45.776005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568325, 29.556396, 45.833233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121645, 0.197321, -0.972763,
		-0.123729, -0.975411, -0.182386,
		-0.984832, 0.098173, 0.143068,
		35.272877, 29.585848, 45.876152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640598, 29.164589, 45.197147>,  <35.962257, 29.517128, 45.776005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640598, 29.164589, 45.197147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.395164, 29.438965, 45.353607>,  <35.247902, 29.603590, 45.447483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.395164, 29.438965, 45.353607>,  <35.640598, 29.164589, 45.197147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395164, 29.438965, 45.353607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223145, 0.324537, -0.919175,
		-0.757440, -0.651278, -0.046068,
		-0.613589, 0.685939, 0.391147,
		35.211086, 29.644747, 45.470951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029308, 29.042511, 44.843697>,  <35.640598, 29.164589, 45.197147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029308, 29.042511, 44.843697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015026, 29.414661, 44.989643>,  <35.006458, 29.637951, 45.077209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015026, 29.414661, 44.989643>,  <35.029308, 29.042511, 44.843697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015026, 29.414661, 44.989643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299501, 0.338356, -0.892084,
		-0.953428, -0.141131, 0.266567,
		-0.035707, 0.930375, 0.364867,
		35.004314, 29.693773, 45.099102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388699, 29.335373, 44.504803>,  <35.029308, 29.042511, 44.843697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388699, 29.335373, 44.504803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.599255, 29.647497, 44.639874>,  <34.725590, 29.834772, 44.720917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.599255, 29.647497, 44.639874>,  <34.388699, 29.335373, 44.504803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599255, 29.647497, 44.639874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219015, 0.508197, -0.832928,
		-0.821550, 0.364489, 0.438410,
		0.526391, 0.780310, 0.337681,
		34.757172, 29.881590, 44.741177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004154, 29.838327, 44.421402>,  <34.388699, 29.335373, 44.504803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004154, 29.838327, 44.421402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.359745, 30.017975, 44.457195>,  <34.573101, 30.125763, 44.478672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.359745, 30.017975, 44.457195>,  <34.004154, 29.838327, 44.421402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359745, 30.017975, 44.457195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198571, 0.554111, -0.808412,
		-0.412657, 0.700893, 0.581775,
		0.888979, 0.449120, 0.089481,
		34.626438, 30.152712, 44.484039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.227879, 28.360683, 48.828007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.424782, 28.680622, 48.690643>,  <38.542923, 28.872585, 48.608227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.424782, 28.680622, 48.690643>,  <38.227879, 28.360683, 48.828007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424782, 28.680622, 48.690643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061853, -0.425661, -0.902766,
		-0.868247, 0.423156, -0.259009,
		0.492261, 0.799845, -0.343406,
		38.572460, 28.920576, 48.587620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995659, 28.582596, 48.032677>,  <38.227879, 28.360683, 48.828007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995659, 28.582596, 48.032677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.368160, 28.659842, 48.156265>,  <38.591663, 28.706188, 48.230419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.368160, 28.659842, 48.156265>,  <37.995659, 28.582596, 48.032677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368160, 28.659842, 48.156265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350361, -0.241801, -0.904864,
		-0.100032, 0.950915, -0.292838,
		0.931258, 0.193115, 0.308976,
		38.647537, 28.717775, 48.248959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279980, 28.812059, 47.385300>,  <37.995659, 28.582596, 48.032677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279980, 28.812059, 47.385300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.592815, 28.759117, 47.628880>,  <38.780518, 28.727352, 47.775028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.592815, 28.759117, 47.628880>,  <38.279980, 28.812059, 47.385300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592815, 28.759117, 47.628880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576817, -0.216057, -0.787783,
		0.235834, 0.967369, -0.092631,
		0.782090, -0.132354, 0.608948,
		38.827442, 28.719410, 47.811565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750019, 29.424446, 47.300098>,  <38.279980, 28.812059, 47.385300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750019, 29.424446, 47.300098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.888596, 29.063875, 47.403950>,  <38.971741, 28.847532, 47.466263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.888596, 29.063875, 47.403950>,  <38.750019, 29.424446, 47.300098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888596, 29.063875, 47.403950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585586, -0.008406, -0.810567,
		0.732848, 0.432853, 0.524950,
		0.346444, -0.901425, 0.259633,
		38.992527, 28.793447, 47.481838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486084, 29.507553, 47.336212>,  <38.750019, 29.424446, 47.300098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486084, 29.507553, 47.336212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.400787, 29.120728, 47.280617>,  <39.349609, 28.888632, 47.247261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.400787, 29.120728, 47.280617>,  <39.486084, 29.507553, 47.336212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400787, 29.120728, 47.280617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484361, 0.018901, -0.874663,
		0.848481, -0.253837, 0.464377,
		-0.213244, -0.967062, -0.138986,
		39.336815, 28.830608, 47.238922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843056, 29.409456, 46.701908>,  <39.486084, 29.507553, 47.336212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843056, 29.409456, 46.701908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.657616, 29.056787, 46.737068>,  <39.546352, 28.845186, 46.758163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.657616, 29.056787, 46.737068>,  <39.843056, 29.409456, 46.701908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657616, 29.056787, 46.737068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062277, -0.131382, -0.989374,
		0.883853, -0.453201, 0.115817,
		-0.463601, -0.881673, 0.087898,
		39.518536, 28.792286, 46.763439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326817, 28.999207, 46.420479>,  <39.843056, 29.409456, 46.701908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326817, 28.999207, 46.420479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.971333, 28.818419, 46.389687>,  <39.758041, 28.709946, 46.371212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.971333, 28.818419, 46.389687>,  <40.326817, 28.999207, 46.420479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971333, 28.818419, 46.389687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220787, -0.274739, -0.935827,
		0.401816, -0.848671, 0.343951,
		-0.888706, -0.451970, -0.076981,
		39.704720, 28.682827, 46.366592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483150, 28.348297, 46.075840>,  <40.326817, 28.999207, 46.420479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483150, 28.348297, 46.075840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.085808, 28.377295, 46.040073>,  <39.847404, 28.394693, 46.018612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.085808, 28.377295, 46.040073>,  <40.483150, 28.348297, 46.075840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085808, 28.377295, 46.040073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059530, -0.341318, -0.938061,
		-0.098522, -0.937148, 0.334733,
		-0.993353, 0.072493, -0.089415,
		39.787804, 28.399042, 46.013248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352367, 27.861679, 45.567883>,  <40.483150, 28.348297, 46.075840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352367, 27.861679, 45.567883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.023724, 28.089029, 45.550400>,  <39.826538, 28.225439, 45.539909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.023724, 28.089029, 45.550400>,  <40.352367, 27.861679, 45.567883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023724, 28.089029, 45.550400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100125, -0.219358, -0.970493,
		-0.561194, -0.792987, 0.237135,
		-0.821606, 0.568378, -0.043705,
		39.777241, 28.259542, 45.537289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841766, 27.511616, 45.203804>,  <40.352367, 27.861679, 45.567883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841766, 27.511616, 45.203804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.733559, 27.896372, 45.187870>,  <39.668633, 28.127226, 45.178310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.733559, 27.896372, 45.187870>,  <39.841766, 27.511616, 45.203804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733559, 27.896372, 45.187870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077882, -0.063106, -0.994963,
		-0.959558, -0.266059, 0.091985,
		-0.270523, 0.961889, -0.039832,
		39.652401, 28.184938, 45.175919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348545, 27.620762, 44.692955>,  <39.841766, 27.511616, 45.203804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348545, 27.620762, 44.692955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.481583, 27.994469, 44.744373>,  <39.561405, 28.218693, 44.775227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.481583, 27.994469, 44.744373>,  <39.348545, 27.620762, 44.692955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481583, 27.994469, 44.744373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073453, 0.161557, -0.984126,
		-0.940204, 0.317877, 0.122359,
		0.332599, 0.934266, 0.128548,
		39.581364, 28.274748, 44.782936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841698, 28.032560, 44.361652>,  <39.348545, 27.620762, 44.692955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841698, 28.032560, 44.361652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.186222, 28.235332, 44.375336>,  <39.392937, 28.356995, 44.383545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.186222, 28.235332, 44.375336>,  <38.841698, 28.032560, 44.361652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186222, 28.235332, 44.375336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002111, 0.063755, -0.997963,
		-0.508077, 0.859627, 0.053842,
		0.861309, 0.506928, 0.034207,
		39.444614, 28.387411, 44.385597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242352, 28.353268, 44.545422>,  <38.841698, 28.032560, 44.361652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242352, 28.353268, 44.545422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.874660, 28.251070, 44.425594>,  <37.654045, 28.189751, 44.353699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.874660, 28.251070, 44.425594>,  <38.242352, 28.353268, 44.545422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874660, 28.251070, 44.425594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092396, -0.599626, 0.794929,
		-0.382728, 0.758400, 0.527587,
		-0.919229, -0.255495, -0.299567,
		37.598892, 28.174421, 44.335724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939552, 28.336750, 45.130196>,  <38.242352, 28.353268, 44.545422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939552, 28.336750, 45.130196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.700405, 28.130114, 44.885021>,  <37.556915, 28.006132, 44.737919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.700405, 28.130114, 44.885021>,  <37.939552, 28.336750, 45.130196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700405, 28.130114, 44.885021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272459, -0.588154, 0.761473,
		-0.753869, 0.622260, 0.210889,
		-0.597869, -0.516593, -0.612931,
		37.521046, 27.975136, 44.701141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194782, 28.252085, 45.424072>,  <37.939552, 28.336750, 45.130196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194782, 28.252085, 45.424072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.237320, 27.950390, 45.164902>,  <37.262844, 27.769373, 45.009399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.237320, 27.950390, 45.164902>,  <37.194782, 28.252085, 45.424072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237320, 27.950390, 45.164902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316097, -0.643466, 0.697161,
		-0.942748, 0.130669, -0.306843,
		0.106346, -0.754239, -0.647930,
		37.269222, 27.724117, 44.970524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560513, 27.992374, 45.430012>,  <37.194782, 28.252085, 45.424072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560513, 27.992374, 45.430012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.803478, 27.702669, 45.299480>,  <36.949257, 27.528847, 45.221161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.803478, 27.702669, 45.299480>,  <36.560513, 27.992374, 45.430012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803478, 27.702669, 45.299480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403926, -0.635317, 0.658192,
		-0.684026, -0.267983, -0.678450,
		0.607415, -0.724263, -0.326328,
		36.985703, 27.485390, 45.201584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221825, 27.378401, 45.341919>,  <36.560513, 27.992374, 45.430012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221825, 27.378401, 45.341919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.596779, 27.242533, 45.372711>,  <36.821751, 27.161013, 45.391186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.596779, 27.242533, 45.372711>,  <36.221825, 27.378401, 45.341919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596779, 27.242533, 45.372711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225317, -0.422875, 0.877729,
		-0.265581, -0.840120, -0.472932,
		0.937389, -0.339668, 0.076985,
		36.877995, 27.140633, 45.395805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198814, 26.626463, 45.397774>,  <36.221825, 27.378401, 45.341919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198814, 26.626463, 45.397774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.539570, 26.769812, 45.550533>,  <36.744022, 26.855822, 45.642189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.539570, 26.769812, 45.550533>,  <36.198814, 26.626463, 45.397774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539570, 26.769812, 45.550533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232992, -0.393736, 0.889206,
		0.469035, -0.846488, -0.251923,
		0.851893, 0.358373, 0.381900,
		36.795139, 26.877323, 45.665104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260384, 26.132614, 45.903625>,  <36.198814, 26.626463, 45.397774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260384, 26.132614, 45.903625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.565285, 26.368839, 46.009613>,  <36.748226, 26.510574, 46.073204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.565285, 26.368839, 46.009613>,  <36.260384, 26.132614, 45.903625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565285, 26.368839, 46.009613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038138, -0.367663, 0.929177,
		0.646156, -0.718372, -0.257729,
		0.762252, 0.590564, 0.264965,
		36.793961, 26.546009, 46.089104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743465, 25.691599, 46.210522>,  <36.260384, 26.132614, 45.903625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743465, 25.691599, 46.210522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.816929, 26.064692, 46.334637>,  <36.861008, 26.288548, 46.409103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.816929, 26.064692, 46.334637>,  <36.743465, 25.691599, 46.210522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816929, 26.064692, 46.334637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019370, -0.319026, 0.947548,
		0.982799, -0.168016, -0.076659,
		0.183660, 0.932734, 0.310284,
		36.872028, 26.344511, 46.427723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124893, 25.554256, 46.767998>,  <36.743465, 25.691599, 46.210522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124893, 25.554256, 46.767998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.039722, 25.939329, 46.834816>,  <36.988621, 26.170374, 46.874908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.039722, 25.939329, 46.834816>,  <37.124893, 25.554256, 46.767998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039722, 25.939329, 46.834816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053778, -0.182253, 0.981780,
		0.975587, 0.200065, 0.090577,
		-0.212928, 0.962683, 0.167044,
		36.975845, 26.228134, 46.884930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501408, 25.734770, 47.301792>,  <37.124893, 25.554256, 46.767998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501408, 25.734770, 47.301792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.235008, 26.033144, 47.299778>,  <37.075169, 26.212168, 47.298569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.235008, 26.033144, 47.299778>,  <37.501408, 25.734770, 47.301792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235008, 26.033144, 47.299778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051508, -0.039250, 0.997901,
		0.744172, 0.664861, 0.064562,
		-0.665999, 0.745935, -0.005037,
		37.035210, 26.256924, 47.298267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698460, 26.199108, 47.869675>,  <37.501408, 25.734770, 47.301792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698460, 26.199108, 47.869675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.314510, 26.283981, 47.796326>,  <37.084141, 26.334906, 47.752316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.314510, 26.283981, 47.796326>,  <37.698460, 26.199108, 47.869675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314510, 26.283981, 47.796326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154990, 0.143568, 0.977428,
		0.233722, 0.966626, -0.104920,
		-0.959871, 0.212185, -0.183373,
		37.026550, 26.347637, 47.741314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508400, 26.772543, 48.200806>,  <37.698460, 26.199108, 47.869675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508400, 26.772543, 48.200806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.173531, 26.564516, 48.133076>,  <36.972610, 26.439701, 48.092438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.173531, 26.564516, 48.133076>,  <37.508400, 26.772543, 48.200806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173531, 26.564516, 48.133076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171859, -0.043768, 0.984149,
		-0.519233, 0.853004, -0.052737,
		-0.837175, -0.520066, -0.169322,
		36.922379, 26.408497, 48.082279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191532, 27.064150, 48.747837>,  <37.508400, 26.772543, 48.200806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191532, 27.064150, 48.747837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.959812, 26.762962, 48.622971>,  <36.820778, 26.582251, 48.548050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.959812, 26.762962, 48.622971>,  <37.191532, 27.064150, 48.747837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959812, 26.762962, 48.622971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414333, -0.057785, 0.908289,
		-0.701951, 0.655515, -0.278505,
		-0.579304, -0.752968, -0.312164,
		36.786022, 26.537071, 48.529320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392078, 27.192612, 48.994793>,  <37.191532, 27.064150, 48.747837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392078, 27.192612, 48.994793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.493267, 26.807976, 48.952190>,  <36.553982, 26.577194, 48.926628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.493267, 26.807976, 48.952190>,  <36.392078, 27.192612, 48.994793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493267, 26.807976, 48.952190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272645, -0.176486, 0.945789,
		-0.928261, -0.210223, -0.306820,
		0.252976, -0.961592, -0.106509,
		36.569160, 26.519499, 48.920238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690132, 27.436249, 48.815285>,  <36.392078, 27.192612, 48.994793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690132, 27.436249, 48.815285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.573280, 27.778797, 48.985596>,  <35.503170, 27.984327, 49.087780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.573280, 27.778797, 48.985596>,  <35.690132, 27.436249, 48.815285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573280, 27.778797, 48.985596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403135, 0.293447, -0.866817,
		-0.867261, -0.424869, 0.259509,
		-0.292131, 0.856373, 0.425775,
		35.485641, 28.035709, 49.113327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003674, 27.536978, 48.525997>,  <35.690132, 27.436249, 48.815285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003674, 27.536978, 48.525997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.119560, 27.902025, 48.641365>,  <35.189095, 28.121054, 48.710587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.119560, 27.902025, 48.641365>,  <35.003674, 27.536978, 48.525997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119560, 27.902025, 48.641365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414551, 0.391268, -0.821619,
		-0.862676, 0.118473, 0.491685,
		0.289720, 0.912619, 0.288424,
		35.206478, 28.175812, 48.727894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476795, 27.828283, 48.227982>,  <35.003674, 27.536978, 48.525997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476795, 27.828283, 48.227982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.756493, 28.101439, 48.312565>,  <34.924313, 28.265331, 48.363316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.756493, 28.101439, 48.312565>,  <34.476795, 27.828283, 48.227982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756493, 28.101439, 48.312565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325703, 0.567640, -0.756110,
		-0.636374, 0.459834, 0.619340,
		0.699247, 0.682890, 0.211461,
		34.966267, 28.306305, 48.376003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204105, 28.568861, 48.200600>,  <34.476795, 27.828283, 48.227982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204105, 28.568861, 48.200600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.594685, 28.621754, 48.132416>,  <34.829033, 28.653490, 48.091503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.594685, 28.621754, 48.132416>,  <34.204105, 28.568861, 48.200600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594685, 28.621754, 48.132416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206845, 0.798341, -0.565568,
		0.061302, 0.587509, 0.806892,
		0.976451, 0.132231, -0.170463,
		34.887619, 28.661423, 48.081276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243587, 29.327822, 48.050106>,  <34.204105, 28.568861, 48.200600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243587, 29.327822, 48.050106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.568127, 29.148046, 47.900589>,  <34.762852, 29.040182, 47.810879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.568127, 29.148046, 47.900589>,  <34.243587, 29.327822, 48.050106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568127, 29.148046, 47.900589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019982, 0.617744, -0.786125,
		0.584223, 0.645290, 0.492225,
		0.811347, -0.449436, -0.373794,
		34.811531, 29.013216, 47.788452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549229, 29.863056, 47.729176>,  <34.243587, 29.327822, 48.050106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549229, 29.863056, 47.729176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.771133, 29.558867, 47.594170>,  <34.904278, 29.376352, 47.513168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.771133, 29.558867, 47.594170>,  <34.549229, 29.863056, 47.729176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771133, 29.558867, 47.594170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139610, 0.484993, -0.863302,
		0.820212, 0.431808, 0.375226,
		0.554763, -0.760476, -0.337513,
		34.937561, 29.330723, 47.492916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281113, 30.098925, 47.557640>,  <34.549229, 29.863056, 47.729176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281113, 30.098925, 47.557640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.172947, 29.783051, 47.337360>,  <35.108047, 29.593527, 47.205193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.172947, 29.783051, 47.337360>,  <35.281113, 30.098925, 47.557640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172947, 29.783051, 47.337360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184783, 0.518805, -0.834684,
		0.944844, -0.327474, 0.005626,
		-0.270418, -0.789685, -0.550701,
		35.091820, 29.546144, 47.172150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820930, 30.634991, 47.482044>,  <35.281113, 30.098925, 47.557640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820930, 30.634991, 47.482044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.705692, 30.995092, 47.612610>,  <35.636547, 31.211153, 47.690948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.705692, 30.995092, 47.612610>,  <35.820930, 30.634991, 47.482044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705692, 30.995092, 47.612610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317042, -0.411312, 0.854580,
		0.903594, 0.142718, 0.403917,
		-0.288100, 0.900252, 0.326411,
		35.619263, 31.265167, 47.710533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124237, 30.784025, 48.150463>,  <35.820930, 30.634991, 47.482044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124237, 30.784025, 48.150463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.817574, 31.039873, 48.128109>,  <35.633575, 31.193382, 48.114697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.817574, 31.039873, 48.128109>,  <36.124237, 30.784025, 48.150463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817574, 31.039873, 48.128109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284637, -0.260570, 0.922543,
		0.575517, 0.723179, 0.381827,
		-0.766656, 0.639622, -0.055881,
		35.587578, 31.231760, 48.111343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187031, 31.286627, 48.717434>,  <36.124237, 30.784025, 48.150463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187031, 31.286627, 48.717434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.799816, 31.330013, 48.626984>,  <35.567486, 31.356045, 48.572712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.799816, 31.330013, 48.626984>,  <36.187031, 31.286627, 48.717434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799816, 31.330013, 48.626984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238580, -0.120282, 0.963645,
		0.077322, 0.986796, 0.142315,
		-0.968040, 0.108465, -0.226129,
		35.509403, 31.362553, 48.559143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952850, 31.859472, 49.182732>,  <36.187031, 31.286627, 48.717434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952850, 31.859472, 49.182732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.647026, 31.623371, 49.079163>,  <35.463531, 31.481710, 49.017021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.647026, 31.623371, 49.079163>,  <35.952850, 31.859472, 49.182732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647026, 31.623371, 49.079163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288096, -0.046401, 0.956477,
		-0.576577, 0.805884, -0.134573,
		-0.764565, -0.590253, -0.258926,
		35.417656, 31.446295, 49.001484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267155, 32.200245, 49.375076>,  <35.952850, 31.859472, 49.182732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267155, 32.200245, 49.375076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.203022, 31.806360, 49.347866>,  <35.164543, 31.570028, 49.331539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.203022, 31.806360, 49.347866>,  <35.267155, 32.200245, 49.375076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203022, 31.806360, 49.347866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312912, -0.014656, 0.949669,
		-0.936151, 0.173552, -0.305780,
		-0.160335, -0.984716, -0.068027,
		35.154922, 31.510946, 49.327457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762035, 32.105816, 49.814507>,  <35.267155, 32.200245, 49.375076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762035, 32.105816, 49.814507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.888279, 31.732222, 49.747490>,  <34.964024, 31.508066, 49.707279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.888279, 31.732222, 49.747490>,  <34.762035, 32.105816, 49.814507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888279, 31.732222, 49.747490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136142, -0.219307, 0.966111,
		-0.939073, -0.282102, -0.196369,
		0.315607, -0.933982, -0.167539,
		34.982960, 31.452026, 49.697227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448612, 31.771557, 50.335094>,  <34.762035, 32.105816, 49.814507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448612, 31.771557, 50.335094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.706062, 31.487434, 50.221104>,  <34.860531, 31.316961, 50.152710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.706062, 31.487434, 50.221104>,  <34.448612, 31.771557, 50.335094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706062, 31.487434, 50.221104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073648, -0.313142, 0.946846,
		-0.761790, -0.630402, -0.149233,
		0.643624, -0.710307, -0.284976,
		34.899151, 31.274342, 50.135612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218990, 31.194424, 50.594936>,  <34.448612, 31.771557, 50.335094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218990, 31.194424, 50.594936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.605965, 31.111479, 50.536884>,  <34.838150, 31.061712, 50.502052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.605965, 31.111479, 50.536884>,  <34.218990, 31.194424, 50.594936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605965, 31.111479, 50.536884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068142, -0.338849, 0.938370,
		-0.243756, -0.917706, -0.313686,
		0.967439, -0.207358, -0.145131,
		34.896198, 31.049271, 50.493343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274376, 30.550680, 50.865879>,  <34.218990, 31.194424, 50.594936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274376, 30.550680, 50.865879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.619743, 30.750851, 50.891426>,  <34.826965, 30.870953, 50.906754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.619743, 30.750851, 50.891426>,  <34.274376, 30.550680, 50.865879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619743, 30.750851, 50.891426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055661, -0.220325, 0.973837,
		0.501405, -0.837276, -0.218087,
		0.863421, 0.500425, 0.063869,
		34.878769, 30.900978, 50.910587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.555321, 37.635815, 35.807636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890236, 37.507668, 35.984863>,  <36.091187, 37.430779, 36.091202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890236, 37.507668, 35.984863>,  <35.555321, 37.635815, 35.807636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890236, 37.507668, 35.984863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519937, -0.215826, 0.826489,
		-0.169154, -0.922380, -0.347279,
		0.837289, -0.320367, 0.443072,
		36.141422, 37.411556, 36.117786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497208, 36.898220, 35.957760>,  <35.555321, 37.635815, 35.807636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497208, 36.898220, 35.957760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769608, 37.024265, 36.222168>,  <35.933048, 37.099892, 36.380814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769608, 37.024265, 36.222168>,  <35.497208, 36.898220, 35.957760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769608, 37.024265, 36.222168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445042, -0.538747, 0.715325,
		0.581530, -0.781316, -0.226647,
		0.681000, 0.315115, 0.661016,
		35.973907, 37.118801, 36.420471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797028, 36.330837, 36.227062>,  <35.497208, 36.898220, 35.957760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797028, 36.330837, 36.227062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888981, 36.604973, 36.503456>,  <35.944153, 36.769455, 36.669292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888981, 36.604973, 36.503456>,  <35.797028, 36.330837, 36.227062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888981, 36.604973, 36.503456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380458, -0.590215, 0.711968,
		0.895771, -0.426559, 0.125064,
		0.229882, 0.685342, 0.690985,
		35.957947, 36.810574, 36.710751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313297, 35.959492, 36.710861>,  <35.797028, 36.330837, 36.227062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313297, 35.959492, 36.710861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153080, 36.267464, 36.909565>,  <36.056950, 36.452248, 37.028790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153080, 36.267464, 36.909565>,  <36.313297, 35.959492, 36.710861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153080, 36.267464, 36.909565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073938, -0.567544, 0.820016,
		0.913289, 0.291724, 0.284255,
		-0.400546, 0.769929, 0.496762,
		36.032917, 36.498444, 37.058594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610645, 36.022434, 37.351288>,  <36.313297, 35.959492, 36.710861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610645, 36.022434, 37.351288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260117, 36.207333, 37.405525>,  <36.049797, 36.318272, 37.438068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260117, 36.207333, 37.405525>,  <36.610645, 36.022434, 37.351288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260117, 36.207333, 37.405525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122895, -0.486688, 0.864888,
		0.465781, 0.741259, 0.483304,
		-0.876325, 0.462244, 0.135594,
		35.997219, 36.346004, 37.446205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532444, 36.077457, 38.041008>,  <36.610645, 36.022434, 37.351288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532444, 36.077457, 38.041008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160595, 36.171513, 37.927505>,  <35.937485, 36.227943, 37.859402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160595, 36.171513, 37.927505>,  <36.532444, 36.077457, 38.041008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160595, 36.171513, 37.927505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361653, -0.434108, 0.825080,
		0.070823, 0.869633, 0.488592,
		-0.929619, 0.235136, -0.283760,
		35.881710, 36.242054, 37.842377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204540, 36.415314, 38.571754>,  <36.532444, 36.077457, 38.041008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204540, 36.415314, 38.571754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895714, 36.273010, 38.361103>,  <35.710419, 36.187626, 38.234711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895714, 36.273010, 38.361103>,  <36.204540, 36.415314, 38.571754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895714, 36.273010, 38.361103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376237, -0.411976, 0.829893,
		-0.512205, 0.838873, 0.184223,
		-0.772070, -0.355763, -0.526631,
		35.664093, 36.166283, 38.203114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505985, 36.547859, 38.987591>,  <36.204540, 36.415314, 38.571754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505985, 36.547859, 38.987591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397358, 36.266266, 38.725090>,  <35.332184, 36.097309, 38.567589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397358, 36.266266, 38.725090>,  <35.505985, 36.547859, 38.987591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397358, 36.266266, 38.725090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363296, -0.556445, 0.747252,
		-0.891218, 0.441340, -0.104643,
		-0.271564, -0.703980, -0.656250,
		35.315887, 36.055073, 38.528214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757236, 36.401287, 39.116203>,  <35.505985, 36.547859, 38.987591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757236, 36.401287, 39.116203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890949, 36.075741, 38.926094>,  <34.971176, 35.880413, 38.812027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890949, 36.075741, 38.926094>,  <34.757236, 36.401287, 39.116203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890949, 36.075741, 38.926094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154543, -0.544789, 0.824210,
		-0.929717, -0.202066, -0.307888,
		0.334279, -0.813864, -0.475272,
		34.991234, 35.831581, 38.783512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258198, 35.893608, 39.189926>,  <34.757236, 36.401287, 39.116203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258198, 35.893608, 39.189926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606518, 35.714558, 39.108593>,  <34.815510, 35.607128, 39.059792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606518, 35.714558, 39.108593>,  <34.258198, 35.893608, 39.189926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606518, 35.714558, 39.108593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121103, -0.596133, 0.793700,
		-0.476489, -0.666529, -0.573321,
		0.870800, -0.447621, -0.203332,
		34.867756, 35.580273, 39.047592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108555, 35.207436, 39.283764>,  <34.258198, 35.893608, 39.189926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108555, 35.207436, 39.283764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508091, 35.226562, 39.285748>,  <34.747814, 35.238037, 39.286938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508091, 35.226562, 39.285748>,  <34.108555, 35.207436, 39.283764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508091, 35.226562, 39.285748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018265, -0.472889, 0.880933,
		0.044467, -0.879824, -0.473215,
		0.998844, 0.047816, 0.004958,
		34.807743, 35.240906, 39.287235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447300, 34.537102, 39.373959>,  <34.108555, 35.207436, 39.283764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447300, 34.537102, 39.373959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730515, 34.781288, 39.515945>,  <34.900444, 34.927799, 39.601139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730515, 34.781288, 39.515945>,  <34.447300, 34.537102, 39.373959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730515, 34.781288, 39.515945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129538, -0.606420, 0.784522,
		0.694189, -0.509491, -0.508449,
		0.708040, 0.610470, 0.354972,
		34.942928, 34.964428, 39.622437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866627, 33.955276, 39.020569>,  <34.447300, 34.537102, 39.373959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866627, 33.955276, 39.020569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614796, 33.648716, 39.071564>,  <34.463696, 33.464779, 39.102161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614796, 33.648716, 39.071564>,  <34.866627, 33.955276, 39.020569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614796, 33.648716, 39.071564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332778, 0.117738, -0.935626,
		0.702058, -0.631477, -0.329168,
		-0.629582, -0.766404, 0.127483,
		34.425922, 33.418797, 39.109810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901199, 33.586205, 38.446980>,  <34.866627, 33.955276, 39.020569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901199, 33.586205, 38.446980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545097, 33.474411, 38.590836>,  <34.331436, 33.407333, 38.677151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545097, 33.474411, 38.590836>,  <34.901199, 33.586205, 38.446980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545097, 33.474411, 38.590836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399454, 0.099720, -0.911314,
		0.218836, -0.954957, -0.200418,
		-0.890252, -0.279486, 0.359639,
		34.278023, 33.390568, 38.698727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607307, 33.270927, 37.890224>,  <34.901199, 33.586205, 38.446980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607307, 33.270927, 37.890224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295731, 33.306549, 38.138523>,  <34.108784, 33.327923, 38.287502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295731, 33.306549, 38.138523>,  <34.607307, 33.270927, 37.890224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295731, 33.306549, 38.138523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599837, 0.182884, -0.778941,
		-0.182889, -0.979093, -0.089040,
		-0.778940, 0.089051, 0.620744,
		34.062050, 33.333263, 38.324745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096916, 32.750889, 37.807480>,  <34.607307, 33.270927, 37.890224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096916, 32.750889, 37.807480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893631, 33.068623, 37.940598>,  <33.771660, 33.259262, 38.020466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893631, 33.068623, 37.940598>,  <34.096916, 32.750889, 37.807480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893631, 33.068623, 37.940598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560867, -0.012024, -0.827818,
		-0.653563, -0.607362, 0.451627,
		-0.508216, 0.794335, 0.332791,
		33.741165, 33.306923, 38.040436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486626, 32.538479, 37.689419>,  <34.096916, 32.750889, 37.807480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486626, 32.538479, 37.689419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471733, 32.936516, 37.726086>,  <33.462799, 33.175339, 37.748085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471733, 32.936516, 37.726086>,  <33.486626, 32.538479, 37.689419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471733, 32.936516, 37.726086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575424, 0.053653, -0.816094,
		-0.817007, -0.083133, 0.570603,
		-0.037230, 0.995093, 0.091672,
		33.460564, 33.235043, 37.753586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881763, 32.656120, 37.403950>,  <33.486626, 32.538479, 37.689419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881763, 32.656120, 37.403950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028469, 33.026287, 37.442101>,  <33.116493, 33.248386, 37.464989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028469, 33.026287, 37.442101>,  <32.881763, 32.656120, 37.403950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028469, 33.026287, 37.442101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583935, 0.308803, -0.750773,
		-0.724226, 0.219665, 0.653639,
		0.366764, 0.925412, 0.095373,
		33.138500, 33.303909, 37.470711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254139, 33.096199, 37.446690>,  <32.881763, 32.656120, 37.403950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254139, 33.096199, 37.446690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576679, 33.296181, 37.320297>,  <32.770203, 33.416168, 37.244461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576679, 33.296181, 37.320297>,  <32.254139, 33.096199, 37.446690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576679, 33.296181, 37.320297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484998, 0.253189, -0.837062,
		-0.338490, 0.828215, 0.446636,
		0.806351, 0.499955, -0.315980,
		32.818584, 33.446167, 37.225502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941977, 33.612080, 37.068897>,  <32.254139, 33.096199, 37.446690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941977, 33.612080, 37.068897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317940, 33.660233, 36.941097>,  <32.543518, 33.689125, 36.864418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317940, 33.660233, 36.941097>,  <31.941977, 33.612080, 37.068897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317940, 33.660233, 36.941097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337063, 0.178015, -0.924500,
		-0.054422, 0.976636, 0.207896,
		0.939908, 0.120387, -0.319500,
		32.599911, 33.696350, 36.845249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983604, 34.193913, 36.475861>,  <31.941977, 33.612080, 37.068897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983604, 34.193913, 36.475861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289650, 33.937759, 36.449001>,  <32.473278, 33.784069, 36.432884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289650, 33.937759, 36.449001>,  <31.983604, 34.193913, 36.475861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289650, 33.937759, 36.449001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099238, -0.014232, -0.994962,
		0.636200, 0.767925, -0.074440,
		0.765116, -0.640382, -0.067153,
		32.519184, 33.745644, 36.428856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273155, 34.396736, 35.903534>,  <31.983604, 34.193913, 36.475861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273155, 34.396736, 35.903534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415104, 34.025524, 35.948830>,  <32.500275, 33.802795, 35.976006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415104, 34.025524, 35.948830>,  <32.273155, 34.396736, 35.903534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415104, 34.025524, 35.948830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203558, -0.194912, -0.959465,
		0.912486, 0.317435, -0.258077,
		0.354870, -0.928033, 0.113238,
		32.521564, 33.747116, 35.982800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766338, 34.295380, 35.426327>,  <32.273155, 34.396736, 35.903534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766338, 34.295380, 35.426327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606426, 33.944885, 35.533951>,  <32.510479, 33.734589, 35.598526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606426, 33.944885, 35.533951>,  <32.766338, 34.295380, 35.426327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606426, 33.944885, 35.533951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241150, -0.182653, -0.953144,
		0.884320, -0.445933, -0.138282,
		-0.399781, -0.876232, 0.269060,
		32.486492, 33.682014, 35.614670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006424, 33.731956, 34.938992>,  <32.766338, 34.295380, 35.426327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006424, 33.731956, 34.938992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673882, 33.588413, 35.108730>,  <32.474358, 33.502285, 35.210571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673882, 33.588413, 35.108730>,  <33.006424, 33.731956, 34.938992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673882, 33.588413, 35.108730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405006, -0.131633, -0.904789,
		0.380551, -0.924063, -0.035906,
		-0.831355, -0.358860, 0.424344,
		32.424477, 33.480755, 35.236034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836220, 33.273041, 34.425602>,  <33.006424, 33.731956, 34.938992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836220, 33.273041, 34.425602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527107, 33.341988, 34.669930>,  <32.341640, 33.383354, 34.816525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527107, 33.341988, 34.669930>,  <32.836220, 33.273041, 34.425602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527107, 33.341988, 34.669930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621453, -0.010103, -0.783386,
		-0.128861, -0.984981, 0.114927,
		-0.772781, 0.172369, 0.610818,
		32.295273, 33.393700, 34.853176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454338, 33.003574, 34.034077>,  <32.836220, 33.273041, 34.425602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454338, 33.003574, 34.034077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437691, 32.637093, 34.193493>,  <33.427704, 32.417202, 34.289143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437691, 32.637093, 34.193493>,  <33.454338, 33.003574, 34.034077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437691, 32.637093, 34.193493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853084, 0.175063, 0.491530,
		-0.520112, 0.360445, 0.774315,
		-0.041616, -0.916206, 0.398542,
		33.425205, 32.362232, 34.313057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733791, 33.037212, 34.705608>,  <33.454338, 33.003574, 34.034077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733791, 33.037212, 34.705608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742516, 32.640224, 34.657398>,  <33.747749, 32.402031, 34.628471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742516, 32.640224, 34.657398>,  <33.733791, 33.037212, 34.705608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742516, 32.640224, 34.657398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646978, -0.077900, 0.758519,
		-0.762197, -0.094518, 0.640408,
		0.021806, -0.992471, -0.120526,
		33.749058, 32.342484, 34.621239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714039, 32.787773, 35.365734>,  <33.733791, 33.037212, 34.705608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714039, 32.787773, 35.365734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904003, 32.549953, 35.106205>,  <34.017982, 32.407261, 34.950489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904003, 32.549953, 35.106205>,  <33.714039, 32.787773, 35.365734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904003, 32.549953, 35.106205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775603, -0.065576, 0.627805,
		-0.415808, -0.801381, 0.429991,
		0.474914, -0.594549, -0.648821,
		34.046478, 32.371590, 34.911560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815208, 31.896906, 35.314354>,  <33.714039, 32.787773, 35.365734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815208, 31.896906, 35.314354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124149, 32.088444, 35.147411>,  <34.309513, 32.203365, 35.047245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124149, 32.088444, 35.147411>,  <33.815208, 31.896906, 35.314354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124149, 32.088444, 35.147411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610000, -0.375916, 0.697558,
		0.177132, -0.793344, -0.582434,
		0.772349, 0.478845, -0.417353,
		34.355854, 32.232098, 35.022205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363426, 31.425922, 35.157932>,  <33.815208, 31.896906, 35.314354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363426, 31.425922, 35.157932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525993, 31.783714, 35.232479>,  <34.623531, 31.998390, 35.277206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525993, 31.783714, 35.232479>,  <34.363426, 31.425922, 35.157932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525993, 31.783714, 35.232479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636286, -0.423456, 0.644845,
		0.655719, -0.143491, -0.741244,
		0.406414, 0.894480, 0.186367,
		34.647919, 32.052059, 35.288387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024326, 31.186371, 35.255222>,  <34.363426, 31.425922, 35.157932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024326, 31.186371, 35.255222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982040, 31.540371, 35.436592>,  <34.956669, 31.752771, 35.545414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982040, 31.540371, 35.436592>,  <35.024326, 31.186371, 35.255222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982040, 31.540371, 35.436592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538771, -0.332280, 0.774155,
		0.835793, 0.326132, -0.441687,
		-0.105713, 0.885002, 0.453428,
		34.950325, 31.805872, 35.572620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622665, 31.268894, 35.497879>,  <35.024326, 31.186371, 35.255222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622665, 31.268894, 35.497879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452042, 31.553045, 35.721809>,  <35.349667, 31.723536, 35.856171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452042, 31.553045, 35.721809>,  <35.622665, 31.268894, 35.497879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452042, 31.553045, 35.721809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535162, -0.300755, 0.789397,
		0.729141, 0.636327, -0.251876,
		-0.426562, 0.710377, 0.559831,
		35.324074, 31.766159, 35.889759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137371, 31.434288, 35.901207>,  <35.622665, 31.268894, 35.497879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137371, 31.434288, 35.901207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806324, 31.542202, 36.098087>,  <35.607697, 31.606951, 36.216217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806324, 31.542202, 36.098087>,  <36.137371, 31.434288, 35.901207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806324, 31.542202, 36.098087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448067, -0.210595, 0.868842,
		0.338056, 0.939609, 0.053410,
		-0.827619, 0.269786, 0.492201,
		35.558037, 31.623138, 36.245747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420231, 31.713253, 36.577213>,  <36.137371, 31.434288, 35.901207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420231, 31.713253, 36.577213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036335, 31.606777, 36.613098>,  <35.806000, 31.542891, 36.634628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036335, 31.606777, 36.613098>,  <36.420231, 31.713253, 36.577213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036335, 31.606777, 36.613098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199954, -0.423088, 0.883750,
		-0.197292, 0.866105, 0.459280,
		-0.959737, -0.266192, 0.089710,
		35.748413, 31.526920, 36.640011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210339, 31.898233, 37.324638>,  <36.420231, 31.713253, 36.577213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210339, 31.898233, 37.324638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935829, 31.629330, 37.213573>,  <35.771122, 31.467987, 37.146935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935829, 31.629330, 37.213573>,  <36.210339, 31.898233, 37.324638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935829, 31.629330, 37.213573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135838, -0.256570, 0.956932,
		-0.714548, 0.694433, 0.084759,
		-0.686272, -0.672261, -0.277662,
		35.729946, 31.427652, 37.130276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632008, 31.958693, 37.794071>,  <36.210339, 31.898233, 37.324638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632008, 31.958693, 37.794071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635441, 31.599752, 37.617580>,  <35.637501, 31.384388, 37.511684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635441, 31.599752, 37.617580>,  <35.632008, 31.958693, 37.794071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635441, 31.599752, 37.617580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049288, -0.441091, 0.896108,
		-0.998748, 0.014055, -0.048015,
		0.008584, -0.897352, -0.441231,
		35.638016, 31.330547, 37.485210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056782, 31.466797, 38.123569>,  <35.632008, 31.958693, 37.794071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056782, 31.466797, 38.123569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342125, 31.233831, 37.967667>,  <35.513332, 31.094053, 37.874123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342125, 31.233831, 37.967667>,  <35.056782, 31.466797, 38.123569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342125, 31.233831, 37.967667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049198, -0.513176, 0.856872,
		-0.699069, -0.630434, -0.337426,
		0.713360, -0.582412, -0.389761,
		35.556133, 31.059109, 37.850739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005829, 30.734911, 38.398361>,  <35.056782, 31.466797, 38.123569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005829, 30.734911, 38.398361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384468, 30.744225, 38.269737>,  <35.611652, 30.749813, 38.192562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384468, 30.744225, 38.269737>,  <35.005829, 30.734911, 38.398361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384468, 30.744225, 38.269737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282034, -0.543056, 0.790916,
		-0.156213, -0.839374, -0.520624,
		0.946601, 0.023282, -0.321564,
		35.668449, 30.751209, 38.173267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190468, 30.106537, 38.487782>,  <35.005829, 30.734911, 38.398361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190468, 30.106537, 38.487782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558601, 30.257727, 38.447540>,  <35.779480, 30.348440, 38.423397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558601, 30.257727, 38.447540>,  <35.190468, 30.106537, 38.487782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558601, 30.257727, 38.447540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301685, -0.522292, 0.797620,
		0.248937, -0.764426, -0.594712,
		0.920335, 0.377973, -0.100599,
		35.834702, 30.371119, 38.417362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652725, 29.565548, 38.391361>,  <35.190468, 30.106537, 38.487782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652725, 29.565548, 38.391361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833569, 29.872301, 38.573563>,  <35.942074, 30.056353, 38.682884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833569, 29.872301, 38.573563>,  <35.652725, 29.565548, 38.391361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833569, 29.872301, 38.573563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200035, -0.584846, 0.786093,
		0.869242, -0.264283, -0.417818,
		0.452110, 0.766883, 0.455507,
		35.969200, 30.102365, 38.710217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155102, 29.319750, 38.709534>,  <35.652725, 29.565548, 38.391361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155102, 29.319750, 38.709534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129749, 29.665554, 38.908974>,  <36.114540, 29.873037, 39.028637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129749, 29.665554, 38.908974>,  <36.155102, 29.319750, 38.709534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129749, 29.665554, 38.908974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289315, -0.462235, 0.838234,
		0.955133, 0.197380, -0.220820,
		-0.063379, 0.864512, 0.498601,
		36.110737, 29.924908, 39.058556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676243, 29.382732, 39.289043>,  <36.155102, 29.319750, 38.709534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676243, 29.382732, 39.289043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425171, 29.677715, 39.388779>,  <36.274529, 29.854706, 39.448620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425171, 29.677715, 39.388779>,  <36.676243, 29.382732, 39.289043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425171, 29.677715, 39.388779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124176, -0.221348, 0.967257,
		0.768502, 0.638092, 0.047362,
		-0.627682, 0.737458, 0.249342,
		36.236866, 29.898952, 39.463581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085026, 29.782684, 39.697212>,  <36.676243, 29.382732, 39.289043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085026, 29.782684, 39.697212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701900, 29.864582, 39.777878>,  <36.472023, 29.913721, 39.826279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701900, 29.864582, 39.777878>,  <37.085026, 29.782684, 39.697212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701900, 29.864582, 39.777878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157739, -0.212017, 0.964452,
		0.240222, 0.955578, 0.170777,
		-0.957816, 0.204744, 0.201662,
		36.414555, 29.926004, 39.838375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112259, 30.185734, 40.380199>,  <37.085026, 29.782684, 39.697212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112259, 30.185734, 40.380199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719139, 30.116213, 40.355251>,  <36.483265, 30.074501, 40.340282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719139, 30.116213, 40.355251>,  <37.112259, 30.185734, 40.380199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719139, 30.116213, 40.355251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045044, -0.101934, 0.993771,
		-0.179078, 0.979491, 0.092352,
		-0.982803, -0.173803, -0.062375,
		36.424297, 30.064072, 40.336540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735241, 30.615576, 40.883160>,  <37.112259, 30.185734, 40.380199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735241, 30.615576, 40.883160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521736, 30.283892, 40.816814>,  <36.393631, 30.084881, 40.777008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521736, 30.283892, 40.816814>,  <36.735241, 30.615576, 40.883160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521736, 30.283892, 40.816814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083950, -0.143209, 0.986125,
		-0.841456, 0.540282, 0.006828,
		-0.533764, -0.829208, -0.165861,
		36.361607, 30.035130, 40.767056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224251, 30.721664, 41.343033>,  <36.735241, 30.615576, 40.883160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224251, 30.721664, 41.343033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237041, 30.328783, 41.269001>,  <36.244717, 30.093054, 41.224583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237041, 30.328783, 41.269001>,  <36.224251, 30.721664, 41.343033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237041, 30.328783, 41.269001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137602, -0.179083, 0.974164,
		-0.989971, -0.056622, 0.129426,
		0.031981, -0.982203, -0.185079,
		36.246635, 30.034122, 41.213478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893879, 30.399727, 41.926571>,  <36.224251, 30.721664, 41.343033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893879, 30.399727, 41.926571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098251, 30.099058, 41.759747>,  <36.220875, 29.918657, 41.659653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098251, 30.099058, 41.759747>,  <35.893879, 30.399727, 41.926571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098251, 30.099058, 41.759747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174217, -0.384553, 0.906514,
		-0.841781, -0.535827, -0.065527,
		0.510934, -0.751670, -0.417060,
		36.251530, 29.873558, 41.634628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779308, 29.889824, 42.386326>,  <35.893879, 30.399727, 41.926571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779308, 29.889824, 42.386326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088757, 29.752769, 42.173115>,  <36.274426, 29.670536, 42.045189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088757, 29.752769, 42.173115>,  <35.779308, 29.889824, 42.386326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088757, 29.752769, 42.173115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179914, -0.687802, 0.703249,
		-0.607576, -0.639944, -0.470450,
		0.773617, -0.342636, -0.533027,
		36.320843, 29.649979, 42.013206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809795, 29.176647, 42.552711>,  <35.779308, 29.889824, 42.386326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809795, 29.176647, 42.552711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183689, 29.232620, 42.422058>,  <36.408024, 29.266205, 42.343666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183689, 29.232620, 42.422058>,  <35.809795, 29.176647, 42.552711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183689, 29.232620, 42.422058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340753, -0.613716, 0.712208,
		-0.100800, -0.777027, -0.621344,
		0.934734, 0.139934, -0.326637,
		36.464108, 29.274601, 42.324066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213970, 28.490137, 42.636089>,  <35.809795, 29.176647, 42.552711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213970, 28.490137, 42.636089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506111, 28.757463, 42.579597>,  <36.681396, 28.917860, 42.545704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506111, 28.757463, 42.579597>,  <36.213970, 28.490137, 42.636089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506111, 28.757463, 42.579597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617448, -0.557486, 0.554948,
		0.292148, -0.492507, -0.819809,
		0.730348, 0.668316, -0.141229,
		36.725216, 28.957958, 42.537228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807060, 28.104519, 42.463680>,  <36.213970, 28.490137, 42.636089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807060, 28.104519, 42.463680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909096, 28.447006, 42.643379>,  <36.970318, 28.652498, 42.751198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909096, 28.447006, 42.643379>,  <36.807060, 28.104519, 42.463680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909096, 28.447006, 42.643379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456931, -0.516209, 0.724391,
		0.852139, 0.020486, -0.522914,
		0.255093, 0.856218, 0.449243,
		36.985622, 28.703871, 42.778152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341892, 27.935406, 42.758011>,  <36.807060, 28.104519, 42.463680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341892, 27.935406, 42.758011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292538, 28.276451, 42.961117>,  <37.262924, 28.481079, 43.082981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292538, 28.276451, 42.961117>,  <37.341892, 27.935406, 42.758011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292538, 28.276451, 42.961117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351459, -0.440962, 0.825851,
		0.928037, 0.280360, -0.245248,
		-0.123390, 0.852614, 0.507764,
		37.255520, 28.532236, 43.113445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004883, 28.015537, 43.111946>,  <37.341892, 27.935406, 42.758011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004883, 28.015537, 43.111946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711426, 28.215023, 43.296577>,  <37.535351, 28.334715, 43.407356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711426, 28.215023, 43.296577>,  <38.004883, 28.015537, 43.111946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711426, 28.215023, 43.296577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231876, -0.454758, 0.859901,
		0.638750, 0.737888, 0.217990,
		-0.733643, 0.498715, 0.461575,
		37.491333, 28.364637, 43.435051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324284, 28.087999, 43.826660>,  <38.004883, 28.015537, 43.111946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324284, 28.087999, 43.826660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948929, 28.218210, 43.873081>,  <37.723717, 28.296337, 43.900932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948929, 28.218210, 43.873081>,  <38.324284, 28.087999, 43.826660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948929, 28.218210, 43.873081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048801, -0.457256, 0.887995,
		0.342133, 0.827616, 0.444968,
		-0.938384, 0.325527, 0.116054,
		37.667416, 28.315868, 43.907898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760090, 28.697626, 43.850544>,  <38.324284, 28.087999, 43.826660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760090, 28.697626, 43.850544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158474, 28.709730, 43.884377>,  <39.397503, 28.716991, 43.904675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158474, 28.709730, 43.884377>,  <38.760090, 28.697626, 43.850544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158474, 28.709730, 43.884377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066233, 0.388703, -0.918979,
		-0.060684, 0.920866, 0.385127,
		0.995957, 0.030259, 0.084580,
		39.457260, 28.718807, 43.909752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119797, 29.418346, 43.667717>,  <38.760090, 28.697626, 43.850544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119797, 29.418346, 43.667717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405209, 29.144201, 43.609539>,  <39.576454, 28.979713, 43.574631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405209, 29.144201, 43.609539>,  <39.119797, 29.418346, 43.667717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405209, 29.144201, 43.609539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190141, 0.389229, -0.901303,
		0.674333, 0.615448, 0.408041,
		0.713527, -0.685364, -0.145448,
		39.619267, 28.938593, 43.565907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349842, 29.753925, 43.177250>,  <39.119797, 29.418346, 43.667717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349842, 29.753925, 43.177250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589478, 29.434048, 43.161358>,  <39.733261, 29.242121, 43.151821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589478, 29.434048, 43.161358>,  <39.349842, 29.753925, 43.177250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589478, 29.434048, 43.161358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357053, 0.311245, -0.880704,
		0.716661, 0.513435, 0.471998,
		0.599091, -0.799694, -0.039734,
		39.769203, 29.194139, 43.149437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107475, 29.937880, 42.981667>,  <39.349842, 29.753925, 43.177250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107475, 29.937880, 42.981667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060051, 29.561628, 42.854443>,  <40.031597, 29.335878, 42.778107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060051, 29.561628, 42.854443>,  <40.107475, 29.937880, 42.981667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060051, 29.561628, 42.854443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361130, 0.257539, -0.896247,
		0.924948, -0.221125, 0.309153,
		-0.118564, -0.940626, -0.318064,
		40.024483, 29.279440, 42.759022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670532, 29.895998, 42.605667>,  <40.107475, 29.937880, 42.981667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670532, 29.895998, 42.605667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420486, 29.605238, 42.491932>,  <40.270458, 29.430782, 42.423691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420486, 29.605238, 42.491932>,  <40.670532, 29.895998, 42.605667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420486, 29.605238, 42.491932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198685, 0.204095, -0.958577,
		0.754821, -0.655714, 0.016841,
		-0.625115, -0.726900, -0.284336,
		40.232952, 29.387167, 42.406631>
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
