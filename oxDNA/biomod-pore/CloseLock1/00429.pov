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
	<24.313196, 35.321419, 35.367867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.412807, 35.099770, 35.050140>,  <24.472574, 34.966782, 34.859505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.412807, 35.099770, 35.050140>,  <24.313196, 35.321419, 35.367867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.412807, 35.099770, 35.050140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963226, 0.056263, 0.262738,
		-0.100898, -0.830531, 0.547757,
		0.249030, -0.554123, -0.794312,
		24.487516, 34.933533, 34.811848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.603596, 34.677849, 35.615475>,  <24.313196, 35.321419, 35.367867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.603596, 34.677849, 35.615475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757181, 34.841732, 35.284485>,  <24.849333, 34.940063, 35.085892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757181, 34.841732, 35.284485>,  <24.603596, 34.677849, 35.615475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.757181, 34.841732, 35.284485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919012, -0.082828, 0.385429,
		0.089376, -0.908448, -0.408332,
		0.383964, 0.409710, -0.827472,
		24.872370, 34.964645, 35.036243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.239576, 34.318577, 35.440887>,  <24.603596, 34.677849, 35.615475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.239576, 34.318577, 35.440887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.246740, 34.681931, 35.273785>,  <25.251038, 34.899944, 35.173523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.246740, 34.681931, 35.273785>,  <25.239576, 34.318577, 35.440887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.246740, 34.681931, 35.273785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969891, 0.085714, 0.227958,
		0.242881, -0.409258, -0.879498,
		0.017908, 0.908384, -0.417754,
		25.252113, 34.954445, 35.148457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703243, 34.277431, 34.818398>,  <25.239576, 34.318577, 35.440887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.703243, 34.277431, 34.818398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664654, 34.621300, 35.019058>,  <25.641500, 34.827621, 35.139454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664654, 34.621300, 35.019058>,  <25.703243, 34.277431, 34.818398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.664654, 34.621300, 35.019058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974891, -0.020016, 0.221780,
		0.200699, 0.510455, -0.836155,
		-0.096473, 0.859671, 0.501656,
		25.635712, 34.879200, 35.169556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.157961, 34.728218, 34.627270>,  <25.703243, 34.277431, 34.818398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.157961, 34.728218, 34.627270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063820, 34.850376, 34.996342>,  <26.007336, 34.923672, 35.217785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063820, 34.850376, 34.996342>,  <26.157961, 34.728218, 34.627270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063820, 34.850376, 34.996342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947987, 0.281473, 0.148642,
		-0.214315, 0.909673, -0.355759,
		-0.235352, 0.305399, 0.922682,
		25.993214, 34.941998, 35.273148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.212835, 35.455612, 34.612350>,  <26.157961, 34.728218, 34.627270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.212835, 35.455612, 34.612350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.516268, 35.515701, 34.358742>,  <26.698328, 35.551754, 34.206577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.516268, 35.515701, 34.358742>,  <26.212835, 35.455612, 34.612350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.516268, 35.515701, 34.358742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373674, 0.897444, -0.234441,
		0.533782, 0.414761, 0.736920,
		0.758581, 0.150227, -0.634024,
		26.743841, 35.560768, 34.168533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411156, 36.086430, 34.763317>,  <26.212835, 35.455612, 34.612350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.411156, 36.086430, 34.763317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584274, 36.026749, 34.407692>,  <26.688145, 35.990940, 34.194317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584274, 36.026749, 34.407692>,  <26.411156, 36.086430, 34.763317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584274, 36.026749, 34.407692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258799, 0.924134, -0.281069,
		0.863546, 0.351733, 0.361347,
		0.432794, -0.149200, -0.889060,
		26.714113, 35.981987, 34.140972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887661, 36.529663, 34.725700>,  <26.411156, 36.086430, 34.763317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887661, 36.529663, 34.725700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.800097, 36.457447, 34.342140>,  <26.747557, 36.414116, 34.112003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.800097, 36.457447, 34.342140>,  <26.887661, 36.529663, 34.725700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.800097, 36.457447, 34.342140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115902, 0.980587, -0.158167,
		0.968836, 0.076513, -0.235589,
		-0.218913, -0.180543, -0.958896,
		26.734423, 36.403286, 34.054470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369316, 37.032761, 34.317108>,  <26.887661, 36.529663, 34.725700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369316, 37.032761, 34.317108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048084, 36.904999, 34.115894>,  <26.855345, 36.828342, 33.995167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048084, 36.904999, 34.115894>,  <27.369316, 37.032761, 34.317108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048084, 36.904999, 34.115894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260053, 0.947429, -0.186416,
		0.536128, -0.018893, -0.843925,
		-0.803081, -0.319408, -0.503030,
		26.807159, 36.809177, 33.964985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318659, 37.410820, 33.755463>,  <27.369316, 37.032761, 34.317108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318659, 37.410820, 33.755463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.943766, 37.273487, 33.779861>,  <26.718830, 37.191090, 33.794498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.943766, 37.273487, 33.779861>,  <27.318659, 37.410820, 33.755463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.943766, 37.273487, 33.779861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344712, 0.885815, -0.310655,
		0.052629, -0.312180, -0.948564,
		-0.937232, -0.343331, 0.060993,
		26.662596, 37.170486, 33.798161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934587, 37.655979, 33.102112>,  <27.318659, 37.410820, 33.755463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934587, 37.655979, 33.102112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613125, 37.575264, 33.326050>,  <26.420248, 37.526836, 33.460411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613125, 37.575264, 33.326050>,  <26.934587, 37.655979, 33.102112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.613125, 37.575264, 33.326050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484244, 0.768562, -0.418115,
		-0.345901, -0.607119, -0.715373,
		-0.803654, -0.201788, 0.559840,
		26.372028, 37.514729, 33.494003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419094, 37.628716, 32.654552>,  <26.934587, 37.655979, 33.102112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419094, 37.628716, 32.654552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251022, 37.680481, 33.013821>,  <26.150179, 37.711540, 33.229382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251022, 37.680481, 33.013821>,  <26.419094, 37.628716, 32.654552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.251022, 37.680481, 33.013821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498702, 0.793976, -0.347703,
		-0.758120, -0.594015, -0.269073,
		-0.420179, 0.129413, 0.898166,
		26.124969, 37.719303, 33.283272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.835575, 37.860416, 32.458153>,  <26.419094, 37.628716, 32.654552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.835575, 37.860416, 32.458153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.855356, 37.978230, 32.839897>,  <25.867226, 38.048920, 33.068943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.855356, 37.978230, 32.839897>,  <25.835575, 37.860416, 32.458153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.855356, 37.978230, 32.839897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393035, 0.884174, -0.252509,
		-0.918193, -0.362609, 0.159490,
		0.049455, 0.294537, 0.954359,
		25.870193, 38.066589, 33.126205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.046450, 38.049400, 32.748283>,  <25.835575, 37.860416, 32.458153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.046450, 38.049400, 32.748283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307632, 38.245823, 32.978939>,  <25.464342, 38.363678, 33.117332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307632, 38.245823, 32.978939>,  <25.046450, 38.049400, 32.748283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.307632, 38.245823, 32.978939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395142, 0.870380, -0.293771,
		-0.646151, -0.036034, 0.762358,
		0.652956, 0.491061, 0.576636,
		25.503519, 38.393143, 33.151928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.694462, 38.684437, 33.067894>,  <25.046450, 38.049400, 32.748283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.694462, 38.684437, 33.067894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.082079, 38.763378, 33.127232>,  <25.314650, 38.810745, 33.162834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.082079, 38.763378, 33.127232>,  <24.694462, 38.684437, 33.067894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.082079, 38.763378, 33.127232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129320, 0.917565, -0.375967,
		-0.210311, 0.345145, 0.914682,
		0.969044, 0.197357, 0.148340,
		25.372791, 38.822586, 33.171734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.775822, 39.214939, 33.575684>,  <24.694462, 38.684437, 33.067894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.775822, 39.214939, 33.575684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105213, 39.231682, 33.349361>,  <25.302849, 39.241726, 33.213570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105213, 39.231682, 33.349361>,  <24.775822, 39.214939, 33.575684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.105213, 39.231682, 33.349361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138063, 0.982079, -0.128294,
		0.550292, 0.183763, 0.814499,
		0.823479, 0.041853, -0.565802,
		25.352257, 39.244236, 33.179623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.116501, 39.966549, 33.656921>,  <24.775822, 39.214939, 33.575684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.116501, 39.966549, 33.656921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303129, 39.838596, 33.327076>,  <25.415106, 39.761826, 33.129169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303129, 39.838596, 33.327076>,  <25.116501, 39.966549, 33.656921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.303129, 39.838596, 33.327076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129818, 0.946980, -0.293900,
		0.874905, 0.030076, 0.483360,
		0.466572, -0.319883, -0.824613,
		25.443100, 39.742630, 33.079693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.760622, 40.338978, 33.491337>,  <25.116501, 39.966549, 33.656921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.760622, 40.338978, 33.491337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692799, 40.163162, 33.138508>,  <25.652105, 40.057674, 32.926811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692799, 40.163162, 33.138508>,  <25.760622, 40.338978, 33.491337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.692799, 40.163162, 33.138508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175187, 0.867339, -0.465868,
		0.969824, -0.233520, -0.070064,
		-0.169559, -0.439536, -0.882076,
		25.641932, 40.031300, 32.873886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291540, 40.619732, 33.076397>,  <25.760622, 40.338978, 33.491337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.291540, 40.619732, 33.076397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023897, 40.489689, 32.809086>,  <25.863312, 40.411663, 32.648697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023897, 40.489689, 32.809086>,  <26.291540, 40.619732, 33.076397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023897, 40.489689, 32.809086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340833, 0.664845, -0.664691,
		0.660417, -0.672513, -0.334027,
		-0.669090, -0.325126, -0.668290,
		25.823166, 40.392155, 32.608601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709690, 40.476280, 32.376476>,  <26.291540, 40.619732, 33.076397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709690, 40.476280, 32.376476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.320551, 40.523960, 32.297119>,  <26.087069, 40.552567, 32.249504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.320551, 40.523960, 32.297119>,  <26.709690, 40.476280, 32.376476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.320551, 40.523960, 32.297119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222317, 0.719667, -0.657765,
		0.064371, -0.684011, -0.726626,
		-0.972847, 0.119200, -0.198393,
		26.028696, 40.559719, 32.237602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597084, 40.409473, 31.711491>,  <26.709690, 40.476280, 32.376476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597084, 40.409473, 31.711491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.278872, 40.624367, 31.823566>,  <26.087944, 40.753304, 31.890812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.278872, 40.624367, 31.823566>,  <26.597084, 40.409473, 31.711491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.278872, 40.624367, 31.823566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203911, 0.672837, -0.711133,
		-0.570569, -0.508595, -0.644812,
		-0.795532, 0.537235, 0.280192,
		26.040213, 40.785538, 31.907623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230604, 40.535374, 31.085842>,  <26.597084, 40.409473, 31.711491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230604, 40.535374, 31.085842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.072767, 40.798550, 31.342405>,  <25.978065, 40.956455, 31.496344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.072767, 40.798550, 31.342405>,  <26.230604, 40.535374, 31.085842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.072767, 40.798550, 31.342405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017033, 0.692695, -0.721030,
		-0.918698, -0.295439, -0.262126,
		-0.394594, 0.657943, 0.641410,
		25.954390, 40.995934, 31.534828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.803736, 40.820705, 30.647078>,  <26.230604, 40.535374, 31.085842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.803736, 40.820705, 30.647078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867952, 41.068192, 30.954693>,  <25.906483, 41.216682, 31.139261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867952, 41.068192, 30.954693>,  <25.803736, 40.820705, 30.647078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867952, 41.068192, 30.954693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135772, 0.757894, -0.638093,
		-0.977647, 0.206854, 0.037669,
		0.160541, 0.618715, 0.769038,
		25.916115, 41.253807, 31.185404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.370861, 41.324516, 30.530088>,  <25.803736, 40.820705, 30.647078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.370861, 41.324516, 30.530088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646875, 41.486271, 30.770197>,  <25.812485, 41.583324, 30.914263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646875, 41.486271, 30.770197>,  <25.370861, 41.324516, 30.530088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.646875, 41.486271, 30.770197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167247, 0.717827, -0.675835,
		-0.704188, 0.566743, 0.427694,
		0.690035, 0.404384, 0.600271,
		25.853886, 41.607586, 30.950277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.298643, 42.020973, 30.429996>,  <25.370861, 41.324516, 30.530088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.298643, 42.020973, 30.429996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673189, 41.970249, 30.560926>,  <25.897917, 41.939816, 30.639484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673189, 41.970249, 30.560926>,  <25.298643, 42.020973, 30.429996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673189, 41.970249, 30.560926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342430, 0.535105, -0.772272,
		-0.077221, 0.835214, 0.544476,
		0.936365, -0.126809, 0.327324,
		25.954098, 41.932205, 30.659124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.629797, 42.677677, 30.319811>,  <25.298643, 42.020973, 30.429996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.629797, 42.677677, 30.319811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933651, 42.425327, 30.382998>,  <26.115963, 42.273918, 30.420910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933651, 42.425327, 30.382998>,  <25.629797, 42.677677, 30.319811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.933651, 42.425327, 30.382998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501675, 0.413858, -0.759634,
		0.413858, 0.656291, 0.630875,
		0.759634, -0.630875, 0.157966,
		26.161541, 42.236065, 30.430387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219437, 43.032379, 30.423647>,  <25.629797, 42.677677, 30.319811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219437, 43.032379, 30.423647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358957, 42.676128, 30.306950>,  <26.442669, 42.462376, 30.236931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358957, 42.676128, 30.306950>,  <26.219437, 43.032379, 30.423647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358957, 42.676128, 30.306950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523826, 0.443398, -0.727327,
		0.777139, 0.100870, 0.621193,
		0.348801, -0.890631, -0.291743,
		26.463598, 42.408939, 30.219427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.265846, 43.838058, 30.438637>,  <26.219437, 43.032379, 30.423647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.265846, 43.838058, 30.438637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.046021, 43.642265, 30.167822>,  <25.914125, 43.524788, 30.005333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.046021, 43.642265, 30.167822>,  <26.265846, 43.838058, 30.438637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.046021, 43.642265, 30.167822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834213, -0.365614, -0.412813,
		-0.045468, -0.791663, 0.609264,
		-0.549564, -0.489486, -0.677039,
		25.881151, 43.495419, 29.964710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.279491, 44.414974, 29.930552>,  <26.265846, 43.838058, 30.438637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.279491, 44.414974, 29.930552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450647, 44.297764, 29.588547>,  <26.553341, 44.227436, 29.383345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450647, 44.297764, 29.588547>,  <26.279491, 44.414974, 29.930552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450647, 44.297764, 29.588547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356314, 0.814684, -0.457526,
		0.830632, 0.500423, 0.244185,
		0.427890, -0.293029, -0.855011,
		26.579014, 44.209854, 29.332043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823431, 44.933819, 29.883781>,  <26.279491, 44.414974, 29.930552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823431, 44.933819, 29.883781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906288, 44.933357, 29.492456>,  <25.956003, 44.933083, 29.257662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906288, 44.933357, 29.492456>,  <25.823431, 44.933819, 29.883781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906288, 44.933357, 29.492456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203830, -0.978003, 0.044308,
		-0.956841, -0.208587, -0.202351,
		0.207143, -0.001151, -0.978310,
		25.968431, 44.933010, 29.198963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.468077, 44.336315, 29.587193>,  <25.823431, 44.933819, 29.883781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.468077, 44.336315, 29.587193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.798653, 44.433327, 29.383949>,  <25.996998, 44.491531, 29.262003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.798653, 44.433327, 29.383949>,  <25.468077, 44.336315, 29.587193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.798653, 44.433327, 29.383949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202653, -0.970117, -0.133433,
		-0.525286, 0.007305, -0.850894,
		0.826442, 0.242527, -0.508109,
		26.046585, 44.506084, 29.231516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.505024, 44.039959, 28.922516>,  <25.468077, 44.336315, 29.587193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.505024, 44.039959, 28.922516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884232, 44.036503, 29.049753>,  <26.111757, 44.034431, 29.126095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884232, 44.036503, 29.049753>,  <25.505024, 44.039959, 28.922516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884232, 44.036503, 29.049753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014272, -0.999780, 0.015392,
		0.317888, -0.019132, -0.947935,
		0.948021, -0.008636, 0.318091,
		26.168638, 44.033913, 29.145180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929090, 43.777111, 28.334475>,  <25.505024, 44.039959, 28.922516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.929090, 43.777111, 28.334475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063997, 43.699772, 28.703011>,  <26.144941, 43.653370, 28.924131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063997, 43.699772, 28.703011>,  <25.929090, 43.777111, 28.334475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063997, 43.699772, 28.703011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127526, -0.960278, -0.248202,
		0.932731, 0.201205, -0.299215,
		0.337269, -0.193348, 0.921339,
		26.165178, 43.641769, 28.979412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016069, 43.106571, 28.256823>,  <25.929090, 43.777111, 28.334475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016069, 43.106571, 28.256823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153507, 43.167850, 28.627438>,  <26.235970, 43.204617, 28.849808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153507, 43.167850, 28.627438>,  <26.016069, 43.106571, 28.256823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.153507, 43.167850, 28.627438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219981, -0.972285, 0.079181,
		0.912990, 0.176615, -0.367772,
		0.343595, 0.153194, 0.926539,
		26.256586, 43.213810, 28.905399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728476, 42.824360, 28.371609>,  <26.016069, 43.106571, 28.256823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728476, 42.824360, 28.371609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582209, 42.830257, 28.743860>,  <26.494448, 42.833797, 28.967211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582209, 42.830257, 28.743860>,  <26.728476, 42.824360, 28.371609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.582209, 42.830257, 28.743860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580949, -0.777569, 0.240591,
		0.727177, 0.628625, 0.275763,
		-0.365667, 0.014748, 0.930629,
		26.472509, 42.834682, 29.023048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228868, 42.923916, 28.952566>,  <26.728476, 42.824360, 28.371609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228868, 42.923916, 28.952566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915205, 42.711273, 29.080624>,  <26.727007, 42.583687, 29.157457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915205, 42.711273, 29.080624>,  <27.228868, 42.923916, 28.952566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915205, 42.711273, 29.080624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616822, -0.724238, 0.308238,
		0.068000, 0.439179, 0.895822,
		-0.784160, -0.531603, 0.320143,
		26.679956, 42.551792, 29.176666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568762, 42.421627, 29.409061>,  <27.228868, 42.923916, 28.952566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568762, 42.421627, 29.409061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.194527, 42.289200, 29.359959>,  <26.969986, 42.209743, 29.330498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.194527, 42.289200, 29.359959>,  <27.568762, 42.421627, 29.409061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194527, 42.289200, 29.359959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261509, -0.883288, 0.389121,
		-0.237257, 0.331954, 0.912971,
		-0.935587, -0.331072, -0.122757,
		26.913851, 42.189877, 29.323132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370598, 42.065418, 30.019434>,  <27.568762, 42.421627, 29.409061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370598, 42.065418, 30.019434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099485, 41.914597, 29.766943>,  <26.936817, 41.824104, 29.615448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099485, 41.914597, 29.766943>,  <27.370598, 42.065418, 30.019434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.099485, 41.914597, 29.766943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066989, -0.886599, 0.457662,
		-0.732205, 0.267910, 0.626179,
		-0.677782, -0.377050, -0.631225,
		26.896151, 41.801483, 29.577576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888041, 41.643013, 30.348820>,  <27.370598, 42.065418, 30.019434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888041, 41.643013, 30.348820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.893690, 41.486031, 29.980955>,  <26.897079, 41.391842, 29.760237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.893690, 41.486031, 29.980955>,  <26.888041, 41.643013, 30.348820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.893690, 41.486031, 29.980955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135847, -0.910474, 0.390619,
		-0.990629, -0.130451, 0.040454,
		0.014124, -0.392454, -0.919663,
		26.897928, 41.368294, 29.705055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507473, 41.019955, 30.348444>,  <26.888041, 41.643013, 30.348820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.507473, 41.019955, 30.348444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737720, 40.972183, 30.024864>,  <26.875868, 40.943520, 29.830715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737720, 40.972183, 30.024864>,  <26.507473, 41.019955, 30.348444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.737720, 40.972183, 30.024864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254986, -0.913736, 0.316336,
		-0.776947, -0.388360, -0.495511,
		0.575618, -0.119428, -0.808950,
		26.910406, 40.936356, 29.782179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.395962, 40.322857, 30.173317>,  <26.507473, 41.019955, 30.348444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.395962, 40.322857, 30.173317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714455, 40.419476, 29.951447>,  <26.905550, 40.477448, 29.818323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714455, 40.419476, 29.951447>,  <26.395962, 40.322857, 30.173317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714455, 40.419476, 29.951447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355817, -0.928474, 0.106446,
		-0.489292, -0.282119, -0.825228,
		0.796234, 0.241547, -0.554678,
		26.953325, 40.491940, 29.785044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.506598, 39.659904, 29.764280>,  <26.395962, 40.322857, 30.173317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.506598, 39.659904, 29.764280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840630, 39.877804, 29.794983>,  <27.041048, 40.008545, 29.813404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840630, 39.877804, 29.794983>,  <26.506598, 39.659904, 29.764280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.840630, 39.877804, 29.794983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499622, -0.809391, 0.308647,
		0.230262, -0.219395, -0.948074,
		0.835079, 0.544749, 0.076758,
		27.091154, 40.041229, 29.818010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.919981, 39.172432, 29.542177>,  <26.506598, 39.659904, 29.764280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.919981, 39.172432, 29.542177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153801, 39.432999, 29.735655>,  <27.294094, 39.589340, 29.851742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153801, 39.432999, 29.735655>,  <26.919981, 39.172432, 29.542177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153801, 39.432999, 29.735655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562439, -0.755005, 0.337089,
		0.584775, 0.075002, -0.807721,
		0.584551, 0.651415, 0.483692,
		27.329166, 39.628422, 29.880762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.554464, 38.891300, 29.403164>,  <26.919981, 39.172432, 29.542177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.554464, 38.891300, 29.403164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635826, 39.136375, 29.708647>,  <27.684643, 39.283421, 29.891935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635826, 39.136375, 29.708647>,  <27.554464, 38.891300, 29.403164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635826, 39.136375, 29.708647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545718, -0.718559, 0.431120,
		0.812908, 0.329077, -0.480509,
		0.203402, 0.612684, 0.763706,
		27.696846, 39.320179, 29.937759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272287, 38.902088, 29.515469>,  <27.554464, 38.891300, 29.403164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272287, 38.902088, 29.515469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099548, 39.008461, 29.860209>,  <27.995905, 39.072285, 30.067053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099548, 39.008461, 29.860209>,  <28.272287, 38.902088, 29.515469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099548, 39.008461, 29.860209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495733, -0.728292, 0.473116,
		0.753496, 0.631563, 0.182681,
		-0.431848, 0.265930, 0.861852,
		27.969994, 39.088242, 30.118765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850801, 39.087753, 30.005688>,  <28.272287, 38.902088, 29.515469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850801, 39.087753, 30.005688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515764, 39.018875, 30.213066>,  <28.314743, 38.977547, 30.337494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515764, 39.018875, 30.213066>,  <28.850801, 39.087753, 30.005688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515764, 39.018875, 30.213066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514919, -0.565849, 0.643952,
		0.182478, 0.806327, 0.562617,
		-0.837592, -0.172195, 0.518448,
		28.264486, 38.967216, 30.368601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902199, 39.184380, 30.681152>,  <28.850801, 39.087753, 30.005688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902199, 39.184380, 30.681152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584541, 38.943565, 30.714361>,  <28.393948, 38.799076, 30.734285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584541, 38.943565, 30.714361>,  <28.902199, 39.184380, 30.681152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584541, 38.943565, 30.714361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433498, -0.465413, 0.771667,
		-0.425932, 0.648803, 0.630585,
		-0.794142, -0.602035, 0.083020,
		28.346298, 38.762955, 30.739267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754631, 39.081364, 31.370749>,  <28.902199, 39.184380, 30.681152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754631, 39.081364, 31.370749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543758, 38.794655, 31.188181>,  <28.417234, 38.622631, 31.078640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543758, 38.794655, 31.188181>,  <28.754631, 39.081364, 31.370749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543758, 38.794655, 31.188181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156879, -0.609984, 0.776729,
		-0.835145, 0.337875, 0.434019,
		-0.527182, -0.716771, -0.456420,
		28.385603, 38.579624, 31.051254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185106, 38.837154, 31.842798>,  <28.754631, 39.081364, 31.370749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185106, 38.837154, 31.842798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240259, 38.555634, 31.564043>,  <28.273350, 38.386723, 31.396790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240259, 38.555634, 31.564043>,  <28.185106, 38.837154, 31.842798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240259, 38.555634, 31.564043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158088, -0.678951, 0.716961,
		-0.977751, -0.209025, 0.017648,
		0.137881, -0.703799, -0.696890,
		28.281624, 38.344494, 31.354977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779024, 38.346375, 31.996977>,  <28.185106, 38.837154, 31.842798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779024, 38.346375, 31.996977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047659, 38.144466, 31.780024>,  <28.208839, 38.023323, 31.649851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047659, 38.144466, 31.780024>,  <27.779024, 38.346375, 31.996977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047659, 38.144466, 31.780024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180692, -0.598353, 0.780593,
		-0.718558, -0.622238, -0.310636,
		0.671584, -0.504772, -0.542384,
		28.249134, 37.993034, 31.617308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656540, 37.536167, 32.143600>,  <27.779024, 38.346375, 31.996977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656540, 37.536167, 32.143600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019852, 37.557297, 31.977596>,  <28.237839, 37.569977, 31.877993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019852, 37.557297, 31.977596>,  <27.656540, 37.536167, 32.143600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019852, 37.557297, 31.977596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306957, -0.758169, 0.575289,
		-0.284258, -0.649914, -0.704846,
		0.908281, 0.052827, -0.415011,
		28.292336, 37.573147, 31.853092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853571, 36.848179, 31.905657>,  <27.656540, 37.536167, 32.143600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853571, 36.848179, 31.905657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188354, 37.057526, 31.969641>,  <28.389225, 37.183136, 32.008030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188354, 37.057526, 31.969641>,  <27.853571, 36.848179, 31.905657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188354, 37.057526, 31.969641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299378, -0.682529, 0.666729,
		0.458122, -0.510135, -0.727933,
		0.836957, 0.523370, 0.159958,
		28.439442, 37.214539, 32.017628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387310, 36.429268, 31.888735>,  <27.853571, 36.848179, 31.905657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387310, 36.429268, 31.888735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560205, 36.731655, 32.085381>,  <28.663942, 36.913086, 32.203369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560205, 36.731655, 32.085381>,  <28.387310, 36.429268, 31.888735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.560205, 36.731655, 32.085381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386969, -0.647919, 0.656092,
		0.814510, -0.093347, -0.572590,
		0.432236, 0.755968, 0.491614,
		28.689877, 36.958447, 32.232864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109612, 36.248466, 31.904591>,  <28.387310, 36.429268, 31.888735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109612, 36.248466, 31.904591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090284, 36.518906, 32.198681>,  <29.078688, 36.681168, 32.375134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090284, 36.518906, 32.198681>,  <29.109612, 36.248466, 31.904591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090284, 36.518906, 32.198681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483725, -0.628167, 0.609439,
		0.873886, 0.385092, -0.296695,
		-0.048316, 0.676099, 0.735225,
		29.075790, 36.721737, 32.419247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749445, 36.244976, 32.040363>,  <29.109612, 36.248466, 31.904591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749445, 36.244976, 32.040363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538454, 36.369583, 32.356522>,  <29.411860, 36.444347, 32.546215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538454, 36.369583, 32.356522>,  <29.749445, 36.244976, 32.040363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538454, 36.369583, 32.356522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465796, -0.672007, 0.575709,
		0.710493, 0.671837, 0.209367,
		-0.527479, 0.311515, 0.790395,
		29.380211, 36.463039, 32.593639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207375, 36.273476, 32.622860>,  <29.749445, 36.244976, 32.040363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207375, 36.273476, 32.622860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847027, 36.249119, 32.794781>,  <29.630817, 36.234505, 32.897934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847027, 36.249119, 32.794781>,  <30.207375, 36.273476, 32.622860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847027, 36.249119, 32.794781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372964, -0.615171, 0.694595,
		0.222107, 0.786039, 0.576898,
		-0.900870, -0.060887, 0.429798,
		29.576765, 36.230854, 32.923721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338614, 36.249962, 33.355915>,  <30.207375, 36.273476, 32.622860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338614, 36.249962, 33.355915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976818, 36.092396, 33.290516>,  <29.759741, 35.997856, 33.251278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976818, 36.092396, 33.290516>,  <30.338614, 36.249962, 33.355915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976818, 36.092396, 33.290516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138124, -0.633238, 0.761532,
		-0.403511, 0.666214, 0.627166,
		-0.904489, -0.393914, -0.163498,
		29.705471, 35.974220, 33.241467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038754, 36.191288, 34.049194>,  <30.338614, 36.249962, 33.355915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038754, 36.191288, 34.049194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847368, 35.936043, 33.807903>,  <29.732538, 35.782894, 33.663128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847368, 35.936043, 33.807903>,  <30.038754, 36.191288, 34.049194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847368, 35.936043, 33.807903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000715, -0.686683, 0.726957,
		-0.878108, 0.348253, 0.328095,
		-0.478462, -0.638112, -0.603231,
		29.703829, 35.744610, 33.626934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572321, 36.074745, 34.550777>,  <30.038754, 36.191288, 34.049194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572321, 36.074745, 34.550777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888960, 36.217396, 34.352306>,  <31.078943, 36.302986, 34.233223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888960, 36.217396, 34.352306>,  <30.572321, 36.074745, 34.550777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888960, 36.217396, 34.352306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524022, 0.021443, 0.851435,
		0.314283, -0.934002, -0.169905,
		0.791598, 0.356625, -0.496176,
		31.126440, 36.324383, 34.203453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159462, 35.609703, 34.402233>,  <30.572321, 36.074745, 34.550777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159462, 35.609703, 34.402233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166456, 35.999256, 34.492783>,  <31.170652, 36.232990, 34.547112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166456, 35.999256, 34.492783>,  <31.159462, 35.609703, 34.402233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166456, 35.999256, 34.492783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349520, -0.218073, 0.911197,
		0.936766, 0.063189, -0.344205,
		0.017484, 0.973885, 0.226369,
		31.171701, 36.291420, 34.560692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847397, 35.796139, 34.604534>,  <31.159462, 35.609703, 34.402233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847397, 35.796139, 34.604534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560350, 35.998077, 34.796432>,  <31.388123, 36.119240, 34.911572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560350, 35.998077, 34.796432>,  <31.847397, 35.796139, 34.604534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560350, 35.998077, 34.796432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500273, -0.105566, 0.859409,
		0.484514, 0.856730, -0.176805,
		-0.717617, 0.504846, 0.479747,
		31.345066, 36.149532, 34.940357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035622, 36.444477, 35.002842>,  <31.847397, 35.796139, 34.604534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035622, 36.444477, 35.002842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720623, 36.258980, 35.165222>,  <31.531624, 36.147682, 35.262650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720623, 36.258980, 35.165222>,  <32.035622, 36.444477, 35.002842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720623, 36.258980, 35.165222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491332, -0.074716, 0.867762,
		-0.372086, 0.882814, 0.286689,
		-0.787493, -0.463742, 0.405954,
		31.484375, 36.119858, 35.287010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666103, 36.782978, 35.513546>,  <32.035622, 36.444477, 35.002842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666103, 36.782978, 35.513546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622278, 36.392769, 35.589806>,  <31.595984, 36.158642, 35.635559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622278, 36.392769, 35.589806>,  <31.666103, 36.782978, 35.513546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622278, 36.392769, 35.589806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393575, 0.133548, 0.909540,
		-0.912740, 0.174685, 0.369310,
		-0.109562, -0.975526, 0.190646,
		31.589409, 36.100113, 35.646999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370956, 36.802685, 36.150993>,  <31.666103, 36.782978, 35.513546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370956, 36.802685, 36.150993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572384, 36.461628, 36.095253>,  <31.693241, 36.256992, 36.061810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572384, 36.461628, 36.095253>,  <31.370956, 36.802685, 36.150993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572384, 36.461628, 36.095253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494392, 0.152115, 0.855826,
		-0.708516, -0.499863, 0.498140,
		0.503570, -0.852642, -0.139352,
		31.723455, 36.205833, 36.053448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412729, 36.300140, 36.802311>,  <31.370956, 36.802685, 36.150993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412729, 36.300140, 36.802311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714922, 36.176517, 36.571232>,  <31.896236, 36.102345, 36.432587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714922, 36.176517, 36.571232>,  <31.412729, 36.300140, 36.802311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714922, 36.176517, 36.571232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597391, -0.037110, 0.801091,
		-0.269024, -0.950318, 0.156594,
		0.755480, -0.309060, -0.577695,
		31.941566, 36.083797, 36.397923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639345, 35.690643, 37.216827>,  <31.412729, 36.300140, 36.802311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639345, 35.690643, 37.216827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921774, 35.809639, 36.959778>,  <32.091232, 35.881035, 36.805550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921774, 35.809639, 36.959778>,  <31.639345, 35.690643, 37.216827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921774, 35.809639, 36.959778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647495, 0.096220, 0.755971,
		0.286726, -0.949864, -0.124685,
		0.706072, 0.297489, -0.642621,
		32.133595, 35.898884, 36.766991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203884, 35.431065, 37.533466>,  <31.639345, 35.690643, 37.216827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203884, 35.431065, 37.533466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382961, 35.706177, 37.304897>,  <32.490406, 35.871246, 37.167755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382961, 35.706177, 37.304897>,  <32.203884, 35.431065, 37.533466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382961, 35.706177, 37.304897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582806, 0.260222, 0.769819,
		0.678167, -0.677671, -0.284345,
		0.447691, 0.687784, -0.571424,
		32.517269, 35.912514, 37.133469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028603, 35.353283, 37.552696>,  <32.203884, 35.431065, 37.533466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028603, 35.353283, 37.552696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949364, 35.732986, 37.454994>,  <32.901821, 35.960808, 37.396374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949364, 35.732986, 37.454994>,  <33.028603, 35.353283, 37.552696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949364, 35.732986, 37.454994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619649, 0.314360, 0.719175,
		0.759470, -0.008888, -0.650482,
		-0.198093, 0.949262, -0.244255,
		32.889935, 36.017765, 37.381718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645138, 35.706001, 37.540230>,  <33.028603, 35.353283, 37.552696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645138, 35.706001, 37.540230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371792, 35.996769, 37.567394>,  <33.207787, 36.171230, 37.583694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371792, 35.996769, 37.567394>,  <33.645138, 35.706001, 37.540230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371792, 35.996769, 37.567394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375296, 0.269966, 0.886719,
		0.626235, 0.631438, -0.457292,
		-0.683361, 0.726915, 0.067914,
		33.166782, 36.214844, 37.587769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990974, 36.298294, 37.584221>,  <33.645138, 35.706001, 37.540230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990974, 36.298294, 37.584221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644524, 36.387318, 37.763241>,  <33.436653, 36.440731, 37.870651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644524, 36.387318, 37.763241>,  <33.990974, 36.298294, 37.584221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644524, 36.387318, 37.763241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478445, 0.110039, 0.871196,
		0.144645, 0.968689, -0.201790,
		-0.866122, 0.222560, 0.447548,
		33.384686, 36.454086, 37.897507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094578, 36.785263, 38.214931>,  <33.990974, 36.298294, 37.584221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094578, 36.785263, 38.214931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723698, 36.653622, 38.286476>,  <33.501171, 36.574638, 38.329403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723698, 36.653622, 38.286476>,  <34.094578, 36.785263, 38.214931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723698, 36.653622, 38.286476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284458, -0.308008, 0.907863,
		-0.243685, 0.892650, 0.379200,
		-0.927201, -0.329099, 0.178864,
		33.445538, 36.554893, 38.340134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827362, 37.178257, 38.844196>,  <34.094578, 36.785263, 38.214931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827362, 37.178257, 38.844196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615765, 36.840900, 38.806561>,  <33.488804, 36.638485, 38.783978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615765, 36.840900, 38.806561>,  <33.827362, 37.178257, 38.844196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615765, 36.840900, 38.806561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250295, -0.261002, 0.932325,
		-0.810873, 0.469647, 0.349166,
		-0.528997, -0.843392, -0.094089,
		33.457066, 36.587883, 38.778336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422207, 37.082405, 39.387302>,  <33.827362, 37.178257, 38.844196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422207, 37.082405, 39.387302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450191, 36.703987, 39.260750>,  <33.466980, 36.476936, 39.184818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450191, 36.703987, 39.260750>,  <33.422207, 37.082405, 39.387302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450191, 36.703987, 39.260750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287912, -0.284513, 0.914417,
		-0.955098, -0.155061, 0.252475,
		0.069958, -0.946049, -0.316382,
		33.471180, 36.420174, 39.165836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147476, 36.776688, 40.044041>,  <33.422207, 37.082405, 39.387302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147476, 36.776688, 40.044041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298058, 36.465977, 39.842091>,  <33.388405, 36.279549, 39.720921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298058, 36.465977, 39.842091>,  <33.147476, 36.776688, 40.044041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298058, 36.465977, 39.842091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025777, -0.535968, 0.843845,
		-0.926079, -0.330679, -0.181741,
		0.376449, -0.776782, -0.504872,
		33.410992, 36.232941, 39.690628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854973, 36.081013, 40.261135>,  <33.147476, 36.776688, 40.044041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854973, 36.081013, 40.261135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221325, 36.020222, 40.112511>,  <33.441135, 35.983746, 40.023335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221325, 36.020222, 40.112511>,  <32.854973, 36.081013, 40.261135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221325, 36.020222, 40.112511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233572, -0.551036, 0.801126,
		-0.326499, -0.820525, -0.469187,
		0.915883, -0.151978, -0.371565,
		33.496090, 35.974628, 40.001041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035145, 35.438549, 40.513390>,  <32.854973, 36.081013, 40.261135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035145, 35.438549, 40.513390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400063, 35.544155, 40.388161>,  <33.619011, 35.607521, 40.313023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400063, 35.544155, 40.388161>,  <33.035145, 35.438549, 40.513390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400063, 35.544155, 40.388161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408753, -0.539624, 0.736021,
		0.025381, -0.799437, -0.600214,
		0.912292, 0.264020, -0.313076,
		33.673752, 35.623360, 40.294239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372269, 34.916454, 40.684376>,  <33.035145, 35.438549, 40.513390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372269, 34.916454, 40.684376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667225, 35.180897, 40.628948>,  <33.844200, 35.339561, 40.595692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667225, 35.180897, 40.628948>,  <33.372269, 34.916454, 40.684376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667225, 35.180897, 40.628948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523756, -0.430068, 0.735338,
		0.426541, -0.614805, -0.663384,
		0.737389, 0.661103, -0.138566,
		33.888443, 35.379227, 40.587379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978542, 34.569370, 40.674309>,  <33.372269, 34.916454, 40.684376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978542, 34.569370, 40.674309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043449, 34.940910, 40.807518>,  <34.082394, 35.163834, 40.887444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043449, 34.940910, 40.807518>,  <33.978542, 34.569370, 40.674309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043449, 34.940910, 40.807518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408681, -0.370451, 0.834113,
		0.898136, 0.000751, -0.439716,
		0.162267, 0.928852, 0.333023,
		34.092129, 35.219566, 40.907425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757717, 34.604382, 40.922977>,  <33.978542, 34.569370, 40.674309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757717, 34.604382, 40.922977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554585, 34.897552, 41.104053>,  <34.432705, 35.073456, 41.212700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554585, 34.897552, 41.104053>,  <34.757717, 34.604382, 40.922977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554585, 34.897552, 41.104053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281280, -0.355614, 0.891302,
		0.814243, 0.579961, -0.025567,
		-0.507829, 0.732928, 0.452688,
		34.402237, 35.117432, 41.239861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198170, 34.655434, 41.409664>,  <34.757717, 34.604382, 40.922977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198170, 34.655434, 41.409664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858837, 34.836407, 41.519672>,  <34.655235, 34.944988, 41.585678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858837, 34.836407, 41.519672>,  <35.198170, 34.655434, 41.409664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858837, 34.836407, 41.519672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114208, -0.350844, 0.929444,
		0.516997, 0.819888, 0.245962,
		-0.848334, 0.452429, 0.275023,
		34.604336, 34.972134, 41.602180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245644, 34.991611, 42.089920>,  <35.198170, 34.655434, 41.409664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245644, 34.991611, 42.089920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860073, 34.901031, 42.033955>,  <34.628731, 34.846684, 42.000378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860073, 34.901031, 42.033955>,  <35.245644, 34.991611, 42.089920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860073, 34.901031, 42.033955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011654, -0.561017, 0.827722,
		-0.265929, 0.796229, 0.543416,
		-0.963922, -0.226448, -0.139912,
		34.570896, 34.833096, 41.991982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020226, 35.202103, 42.672424>,  <35.245644, 34.991611, 42.089920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020226, 35.202103, 42.672424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725899, 34.984409, 42.511238>,  <34.549301, 34.853794, 42.414528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725899, 34.984409, 42.511238>,  <35.020226, 35.202103, 42.672424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725899, 34.984409, 42.511238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097349, -0.503866, 0.858279,
		-0.670146, 0.670765, 0.317773,
		-0.735818, -0.544237, -0.402962,
		34.505154, 34.821136, 42.390350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517967, 35.153530, 43.269848>,  <35.020226, 35.202103, 42.672424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517967, 35.153530, 43.269848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410175, 34.872169, 43.006760>,  <34.345501, 34.703354, 42.848907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410175, 34.872169, 43.006760>,  <34.517967, 35.153530, 43.269848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410175, 34.872169, 43.006760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227949, -0.616989, 0.753236,
		-0.935638, 0.352911, 0.005927,
		-0.269482, -0.703405, -0.657724,
		34.329330, 34.661148, 42.809441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902405, 34.971149, 43.477032>,  <34.517967, 35.153530, 43.269848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902405, 34.971149, 43.477032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028088, 34.668915, 43.247124>,  <34.103497, 34.487572, 43.109180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028088, 34.668915, 43.247124>,  <33.902405, 34.971149, 43.477032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028088, 34.668915, 43.247124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189615, -0.643180, 0.741866,
		-0.930226, -0.124113, -0.345362,
		0.314205, -0.755589, -0.574769,
		34.122349, 34.442238, 43.074692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401928, 34.587391, 43.428406>,  <33.902405, 34.971149, 43.477032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401928, 34.587391, 43.428406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697651, 34.332989, 43.339924>,  <33.875084, 34.180347, 43.286835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697651, 34.332989, 43.339924>,  <33.401928, 34.587391, 43.428406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697651, 34.332989, 43.339924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335085, -0.632413, 0.698407,
		-0.584077, -0.442215, -0.680661,
		0.739305, -0.636003, -0.221198,
		33.919441, 34.142189, 43.273563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154675, 33.958279, 43.454681>,  <33.401928, 34.587391, 43.428406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154675, 33.958279, 43.454681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543556, 33.881939, 43.508926>,  <33.776886, 33.836136, 43.541473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543556, 33.881939, 43.508926>,  <33.154675, 33.958279, 43.454681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543556, 33.881939, 43.508926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213796, -0.487638, 0.846463,
		-0.095414, -0.851931, -0.514888,
		0.972207, -0.190846, 0.135612,
		33.835220, 33.824684, 43.549610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192810, 33.220901, 43.705093>,  <33.154675, 33.958279, 43.454681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192810, 33.220901, 43.705093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548775, 33.382179, 43.790401>,  <33.762356, 33.478947, 43.841587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548775, 33.382179, 43.790401>,  <33.192810, 33.220901, 43.705093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548775, 33.382179, 43.790401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044275, -0.388995, 0.920175,
		0.453970, -0.828321, -0.328321,
		0.889917, 0.403196, 0.213266,
		33.815750, 33.503139, 43.854382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662346, 32.637268, 43.839962>,  <33.192810, 33.220901, 43.705093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662346, 32.637268, 43.839962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813259, 32.962727, 44.016888>,  <33.903809, 33.158001, 44.123043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813259, 32.962727, 44.016888>,  <33.662346, 32.637268, 43.839962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813259, 32.962727, 44.016888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112945, -0.514466, 0.850040,
		0.919185, -0.270748, -0.285996,
		0.377282, 0.813646, 0.442310,
		33.926445, 33.206821, 44.149582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310333, 32.426624, 44.198864>,  <33.662346, 32.637268, 43.839962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310333, 32.426624, 44.198864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177891, 32.772636, 44.349648>,  <34.098427, 32.980244, 44.440117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177891, 32.772636, 44.349648>,  <34.310333, 32.426624, 44.198864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177891, 32.772636, 44.349648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072096, -0.375128, 0.924165,
		0.940836, 0.333170, 0.061840,
		-0.331102, 0.865030, 0.376955,
		34.078560, 33.032146, 44.462734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805820, 32.583294, 44.749401>,  <34.310333, 32.426624, 44.198864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805820, 32.583294, 44.749401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480385, 32.803677, 44.823711>,  <34.285122, 32.935905, 44.868298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480385, 32.803677, 44.823711>,  <34.805820, 32.583294, 44.749401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480385, 32.803677, 44.823711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075440, -0.216788, 0.973299,
		0.576522, 0.805883, 0.134813,
		-0.813592, 0.550958, 0.185779,
		34.236309, 32.968964, 44.879444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957027, 33.029217, 45.176846>,  <34.805820, 32.583294, 44.749401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957027, 33.029217, 45.176846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563305, 32.987141, 45.233528>,  <34.327072, 32.961895, 45.267536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563305, 32.987141, 45.233528>,  <34.957027, 33.029217, 45.176846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563305, 32.987141, 45.233528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169773, -0.345136, 0.923070,
		-0.048191, 0.932639, 0.357577,
		-0.984304, -0.105190, 0.141704,
		34.268013, 32.955585, 45.276039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977341, 33.202648, 45.822037>,  <34.957027, 33.029217, 45.176846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977341, 33.202648, 45.822037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632950, 33.012184, 45.750500>,  <34.426315, 32.897903, 45.707577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632950, 33.012184, 45.750500>,  <34.977341, 33.202648, 45.822037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632950, 33.012184, 45.750500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062326, -0.447726, 0.891996,
		-0.504808, 0.756843, 0.415159,
		-0.860979, -0.476162, -0.178844,
		34.374657, 32.869335, 45.696846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663960, 33.133499, 46.434570>,  <34.977341, 33.202648, 45.822037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663960, 33.133499, 46.434570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453388, 32.862648, 46.228905>,  <34.327045, 32.700138, 46.105503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453388, 32.862648, 46.228905>,  <34.663960, 33.133499, 46.434570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453388, 32.862648, 46.228905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025989, -0.617280, 0.786314,
		-0.849820, 0.400579, 0.342554,
		-0.526432, -0.677128, -0.514166,
		34.295460, 32.659508, 46.074654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143665, 32.903225, 46.865353>,  <34.663960, 33.133499, 46.434570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143665, 32.903225, 46.865353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215076, 32.622902, 46.589092>,  <34.257923, 32.454708, 46.423336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215076, 32.622902, 46.589092>,  <34.143665, 32.903225, 46.865353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215076, 32.622902, 46.589092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108799, -0.683562, 0.721738,
		-0.977901, -0.203994, -0.045789,
		0.178530, -0.700806, -0.690650,
		34.268635, 32.412659, 46.381897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784191, 32.323734, 47.201389>,  <34.143665, 32.903225, 46.865353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784191, 32.323734, 47.201389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034645, 32.182716, 46.923206>,  <34.184917, 32.098106, 46.756298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034645, 32.182716, 46.923206>,  <33.784191, 32.323734, 47.201389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034645, 32.182716, 46.923206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271399, -0.737622, 0.618269,
		-0.730955, -0.575868, -0.366171,
		0.626137, -0.352548, -0.695458,
		34.222485, 32.076950, 46.714569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653374, 31.603493, 47.219135>,  <33.784191, 32.323734, 47.201389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653374, 31.603493, 47.219135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015835, 31.688671, 47.072964>,  <34.233311, 31.739779, 46.985260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015835, 31.688671, 47.072964>,  <33.653374, 31.603493, 47.219135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015835, 31.688671, 47.072964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400906, -0.707741, 0.581702,
		-0.134759, -0.673615, -0.726693,
		0.906154, 0.212946, -0.365431,
		34.287682, 31.752556, 46.963333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999115, 31.063461, 47.485149>,  <33.653374, 31.603493, 47.219135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999115, 31.063461, 47.485149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323067, 31.253256, 47.347191>,  <34.517437, 31.367132, 47.264416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323067, 31.253256, 47.347191>,  <33.999115, 31.063461, 47.485149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323067, 31.253256, 47.347191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571333, -0.504819, 0.647099,
		0.132928, -0.721125, -0.679933,
		0.809882, 0.474485, -0.344898,
		34.566032, 31.395601, 47.243721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582989, 30.564056, 47.297306>,  <33.999115, 31.063461, 47.485149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582989, 30.564056, 47.297306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786274, 30.907721, 47.321182>,  <34.908245, 31.113918, 47.335506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786274, 30.907721, 47.321182>,  <34.582989, 30.564056, 47.297306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786274, 30.907721, 47.321182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734390, -0.468526, 0.491075,
		0.449877, -0.205739, -0.869070,
		0.508215, 0.859159, 0.059686,
		34.938740, 31.165468, 47.339088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187401, 30.365459, 47.060173>,  <34.582989, 30.564056, 47.297306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187401, 30.365459, 47.060173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286457, 30.709450, 47.238663>,  <35.345890, 30.915844, 47.345757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286457, 30.709450, 47.238663>,  <35.187401, 30.365459, 47.060173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286457, 30.709450, 47.238663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671360, -0.484384, 0.560934,
		0.698535, 0.160670, -0.697305,
		0.247638, 0.859975, 0.446226,
		35.360748, 30.967442, 47.372532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003723, 30.449926, 47.158035>,  <35.187401, 30.365459, 47.060173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003723, 30.449926, 47.158035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830269, 30.686567, 47.429905>,  <35.726196, 30.828552, 47.593029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830269, 30.686567, 47.429905>,  <36.003723, 30.449926, 47.158035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830269, 30.686567, 47.429905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534866, -0.438037, 0.722525,
		0.725173, 0.676851, -0.126479,
		-0.433639, 0.591604, 0.679677,
		35.700176, 30.864048, 47.633808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500568, 30.434752, 47.665611>,  <36.003723, 30.449926, 47.158035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500568, 30.434752, 47.665611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177044, 30.586832, 47.845066>,  <35.982929, 30.678080, 47.952740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177044, 30.586832, 47.845066>,  <36.500568, 30.434752, 47.665611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177044, 30.586832, 47.845066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286401, -0.411633, 0.865178,
		0.513614, 0.828255, 0.224042,
		-0.808811, 0.380202, 0.448633,
		35.934402, 30.700893, 47.979656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805775, 30.753883, 48.162529>,  <36.500568, 30.434752, 47.665611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805775, 30.753883, 48.162529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427860, 30.707178, 48.285000>,  <36.201111, 30.679155, 48.358482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427860, 30.707178, 48.285000>,  <36.805775, 30.753883, 48.162529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427860, 30.707178, 48.285000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326619, -0.410956, 0.851138,
		0.026442, 0.904146, 0.426404,
		-0.944786, -0.116765, 0.306178,
		36.144424, 30.672148, 48.376854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842552, 30.848133, 48.867081>,  <36.805775, 30.753883, 48.162529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842552, 30.848133, 48.867081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513126, 30.638819, 48.779518>,  <36.315472, 30.513231, 48.726978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513126, 30.638819, 48.779518>,  <36.842552, 30.848133, 48.867081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513126, 30.638819, 48.779518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250277, -0.681557, 0.687635,
		-0.509027, 0.511521, 0.692270,
		-0.823561, -0.523284, -0.218909,
		36.266060, 30.481834, 48.713844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458504, 30.767418, 49.480644>,  <36.842552, 30.848133, 48.867081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458504, 30.767418, 49.480644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319534, 30.470278, 49.251743>,  <36.236153, 30.291994, 49.114403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319534, 30.470278, 49.251743>,  <36.458504, 30.767418, 49.480644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319534, 30.470278, 49.251743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135189, -0.643567, 0.753356,
		-0.927912, 0.184373, 0.324016,
		-0.347425, -0.742851, -0.572248,
		36.215305, 30.247423, 49.080070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777943, 30.415754, 49.813774>,  <36.458504, 30.767418, 49.480644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777943, 30.415754, 49.813774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930950, 30.148909, 49.558075>,  <36.022755, 29.988800, 49.404655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930950, 30.148909, 49.558075>,  <35.777943, 30.415754, 49.813774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930950, 30.148909, 49.558075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130736, -0.645826, 0.752209,
		-0.914653, -0.371304, -0.159822,
		0.382515, -0.667115, -0.639249,
		36.045704, 29.948774, 49.366299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391003, 29.724312, 49.930992>,  <35.777943, 30.415754, 49.813774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391003, 29.724312, 49.930992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759438, 29.676168, 49.782875>,  <35.980499, 29.647284, 49.694004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759438, 29.676168, 49.782875>,  <35.391003, 29.724312, 49.930992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759438, 29.676168, 49.782875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250774, -0.544134, 0.800644,
		-0.297853, -0.830321, -0.471011,
		0.921084, -0.120357, -0.370295,
		36.035763, 29.640060, 49.671787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504337, 29.086611, 50.048706>,  <35.391003, 29.724312, 49.930992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504337, 29.086611, 50.048706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857655, 29.272146, 50.021458>,  <36.069645, 29.383469, 50.005108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857655, 29.272146, 50.021458>,  <35.504337, 29.086611, 50.048706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857655, 29.272146, 50.021458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366574, -0.592747, 0.717130,
		0.292254, -0.658410, -0.693603,
		0.883296, 0.463840, -0.068123,
		36.122643, 29.411299, 50.001022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075806, 28.615597, 49.933773>,  <35.504337, 29.086611, 50.048706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075806, 28.615597, 49.933773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182903, 28.934494, 50.150185>,  <36.247162, 29.125834, 50.280033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182903, 28.934494, 50.150185>,  <36.075806, 28.615597, 49.933773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182903, 28.934494, 50.150185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397592, -0.602915, 0.691675,
		0.877630, 0.029918, -0.478405,
		0.267744, 0.797245, 0.541031,
		36.263226, 29.173668, 50.312492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890537, 28.781893, 49.907700>,  <36.075806, 28.615597, 49.933773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890537, 28.781893, 49.907700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654015, 28.834551, 50.225952>,  <36.512100, 28.866146, 50.416904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654015, 28.834551, 50.225952>,  <36.890537, 28.781893, 49.907700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654015, 28.834551, 50.225952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610210, -0.571997, 0.548145,
		0.527258, 0.809623, 0.257894,
		-0.591306, 0.131644, 0.795630,
		36.476624, 28.874044, 50.464642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284607, 28.798510, 50.520573>,  <36.890537, 28.781893, 49.907700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284607, 28.798510, 50.520573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922485, 28.688881, 50.650379>,  <36.705212, 28.623104, 50.728264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922485, 28.688881, 50.650379>,  <37.284607, 28.798510, 50.520573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922485, 28.688881, 50.650379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388661, -0.842712, 0.372532,
		0.171373, 0.463381, 0.869431,
		-0.905303, -0.274072, 0.324516,
		36.650894, 28.606659, 50.747734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914196, 28.122257, 50.290123>,  <37.284607, 28.798510, 50.520573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914196, 28.122257, 50.290123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714592, 28.075083, 49.946709>,  <36.594830, 28.046778, 49.740662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714592, 28.075083, 49.946709>,  <36.914196, 28.122257, 50.290123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714592, 28.075083, 49.946709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330631, -0.941667, -0.062817,
		-0.801047, -0.315205, 0.508891,
		-0.499006, -0.117936, -0.858536,
		36.564892, 28.039701, 49.689148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518044, 27.473658, 50.349808>,  <36.914196, 28.122257, 50.290123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518044, 27.473658, 50.349808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704842, 27.610744, 50.023750>,  <36.816921, 27.692997, 49.828117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704842, 27.610744, 50.023750>,  <36.518044, 27.473658, 50.349808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704842, 27.610744, 50.023750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476106, -0.874262, -0.094808,
		-0.745140, -0.343819, -0.571449,
		0.466999, 0.342716, -0.815143,
		36.844940, 27.713560, 49.779209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396145, 26.980457, 49.748451>,  <36.518044, 27.473658, 50.349808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396145, 26.980457, 49.748451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718674, 27.217037, 49.746300>,  <36.912189, 27.358986, 49.745010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718674, 27.217037, 49.746300>,  <36.396145, 26.980457, 49.748451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718674, 27.217037, 49.746300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586069, -0.800145, -0.127635,
		-0.079793, 0.099763, -0.991807,
		0.806323, 0.591452, -0.005378,
		36.960571, 27.394472, 49.744686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883121, 26.922197, 49.157829>,  <36.396145, 26.980457, 49.748451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883121, 26.922197, 49.157829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494289, 26.873798, 49.238247>,  <35.260990, 26.844759, 49.286499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494289, 26.873798, 49.238247>,  <35.883121, 26.922197, 49.157829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494289, 26.873798, 49.238247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234463, 0.534970, -0.811686,
		-0.009343, -0.836162, -0.548403,
		-0.972080, -0.120997, 0.201047,
		35.202667, 26.837500, 49.298561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431507, 26.637289, 48.581264>,  <35.883121, 26.922197, 49.157829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431507, 26.637289, 48.581264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271183, 26.900560, 48.836185>,  <35.174988, 27.058523, 48.989140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271183, 26.900560, 48.836185>,  <35.431507, 26.637289, 48.581264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271183, 26.900560, 48.836185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082014, 0.667051, -0.740484,
		-0.912485, -0.349058, -0.213379,
		-0.400806, 0.658180, 0.637302,
		35.150940, 27.098015, 49.027374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771263, 26.889948, 48.242916>,  <35.431507, 26.637289, 48.581264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771263, 26.889948, 48.242916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987720, 27.142290, 48.465336>,  <35.117596, 27.293695, 48.598789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987720, 27.142290, 48.465336>,  <34.771263, 26.889948, 48.242916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987720, 27.142290, 48.465336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090054, 0.613953, -0.784189,
		-0.836097, 0.474430, 0.275424,
		0.541140, 0.630855, 0.556048,
		35.150063, 27.331547, 48.632149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345768, 27.390245, 48.169533>,  <34.771263, 26.889948, 48.242916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345768, 27.390245, 48.169533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730896, 27.471497, 48.240768>,  <34.961971, 27.520247, 48.283508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730896, 27.471497, 48.240768>,  <34.345768, 27.390245, 48.169533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730896, 27.471497, 48.240768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048105, 0.519778, -0.852946,
		-0.265821, 0.829801, 0.490682,
		0.962821, 0.203127, 0.178086,
		35.019741, 27.532434, 48.294193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340836, 28.095863, 48.154869>,  <34.345768, 27.390245, 48.169533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340836, 28.095863, 48.154869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718357, 27.990955, 48.074429>,  <34.944870, 27.928011, 48.026165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718357, 27.990955, 48.074429>,  <34.340836, 28.095863, 48.154869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718357, 27.990955, 48.074429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018708, 0.649898, -0.759791,
		0.329966, 0.713334, 0.618286,
		0.943808, -0.262272, -0.201099,
		35.001499, 27.912273, 48.014099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729980, 28.728573, 48.070408>,  <34.340836, 28.095863, 48.154869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729980, 28.728573, 48.070408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955444, 28.452526, 47.888847>,  <35.090721, 28.286898, 47.779911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955444, 28.452526, 47.888847>,  <34.729980, 28.728573, 48.070408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955444, 28.452526, 47.888847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123887, 0.613932, -0.779576,
		0.816665, 0.383181, 0.431544,
		0.563658, -0.690115, -0.453906,
		35.124542, 28.245491, 47.752674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290302, 29.108307, 47.797268>,  <34.729980, 28.728573, 48.070408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290302, 29.108307, 47.797268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300079, 28.767565, 47.587986>,  <35.305946, 28.563120, 47.462418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300079, 28.767565, 47.587986>,  <35.290302, 29.108307, 47.797268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300079, 28.767565, 47.587986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087806, 0.523171, -0.847692,
		0.995838, -0.025224, 0.087584,
		0.024439, -0.851854, -0.523208,
		35.307411, 28.512009, 47.431023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756199, 29.198917, 47.287189>,  <35.290302, 29.108307, 47.797268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756199, 29.198917, 47.287189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534103, 28.900297, 47.140560>,  <35.400848, 28.721125, 47.052582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534103, 28.900297, 47.140560>,  <35.756199, 29.198917, 47.287189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534103, 28.900297, 47.140560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153424, 0.525134, -0.837075,
		0.817419, -0.408533, -0.406112,
		-0.555236, -0.746549, -0.366576,
		35.367531, 28.676332, 47.030586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129581, 29.076403, 46.602150>,  <35.756199, 29.198917, 47.287189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129581, 29.076403, 46.602150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769756, 28.908844, 46.552643>,  <35.553864, 28.808310, 46.522938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769756, 28.908844, 46.552643>,  <36.129581, 29.076403, 46.602150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769756, 28.908844, 46.552643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040336, 0.361810, -0.931379,
		0.434931, -0.832838, -0.342366,
		-0.899560, -0.418896, -0.123769,
		35.499889, 28.783176, 46.515511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096382, 28.941837, 45.922203>,  <36.129581, 29.076403, 46.602150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096382, 28.941837, 45.922203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712826, 28.880217, 46.017532>,  <35.482693, 28.843245, 46.074730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712826, 28.880217, 46.017532>,  <36.096382, 28.941837, 45.922203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712826, 28.880217, 46.017532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274653, 0.292512, -0.915971,
		0.071390, -0.943772, -0.322797,
		-0.958890, -0.154048, 0.238328,
		35.425159, 28.834002, 46.089031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757412, 28.489958, 45.363712>,  <36.096382, 28.941837, 45.922203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757412, 28.489958, 45.363712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480671, 28.706455, 45.554874>,  <35.314625, 28.836353, 45.669571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480671, 28.706455, 45.554874>,  <35.757412, 28.489958, 45.363712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480671, 28.706455, 45.554874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277428, 0.411809, -0.868013,
		-0.666612, -0.733123, -0.134756,
		-0.691855, 0.541243, 0.477905,
		35.273113, 28.868828, 45.698246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172047, 28.454952, 44.952366>,  <35.757412, 28.489958, 45.363712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172047, 28.454952, 44.952366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085300, 28.784601, 45.161667>,  <35.033253, 28.982391, 45.287247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085300, 28.784601, 45.161667>,  <35.172047, 28.454952, 44.952366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085300, 28.784601, 45.161667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355034, 0.432717, -0.828678,
		-0.909351, -0.365485, 0.198749,
		-0.216867, 0.824122, 0.523251,
		35.020241, 29.031837, 45.318642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597385, 28.669252, 44.670654>,  <35.172047, 28.454952, 44.952366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597385, 28.669252, 44.670654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725224, 28.980957, 44.886288>,  <34.801926, 29.167980, 45.015667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725224, 28.980957, 44.886288>,  <34.597385, 28.669252, 44.670654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725224, 28.980957, 44.886288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087670, 0.590798, -0.802042,
		-0.943491, 0.209065, 0.257132,
		0.319593, 0.779262, 0.539084,
		34.821102, 29.214735, 45.048012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088135, 29.200895, 44.705853>,  <34.597385, 28.669252, 44.670654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088135, 29.200895, 44.705853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441170, 29.383095, 44.752415>,  <34.652992, 29.492414, 44.780354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441170, 29.383095, 44.752415>,  <34.088135, 29.200895, 44.705853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441170, 29.383095, 44.752415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182071, 0.559437, -0.808629,
		-0.433453, 0.692495, 0.576688,
		0.882592, 0.455501, 0.116406,
		34.705948, 29.519745, 44.787338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899040, 29.986549, 44.745892>,  <34.088135, 29.200895, 44.705853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899040, 29.986549, 44.745892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292545, 30.020664, 44.682735>,  <34.528648, 30.041132, 44.644844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292545, 30.020664, 44.682735>,  <33.899040, 29.986549, 44.745892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292545, 30.020664, 44.682735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163693, 0.787014, -0.594822,
		0.073531, 0.611012, 0.788199,
		0.983767, 0.085285, -0.157889,
		34.587677, 30.046249, 44.635368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887009, 30.689119, 44.650223>,  <33.899040, 29.986549, 44.745892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887009, 30.689119, 44.650223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233498, 30.546457, 44.510250>,  <34.441391, 30.460859, 44.426266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233498, 30.546457, 44.510250>,  <33.887009, 30.689119, 44.650223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233498, 30.546457, 44.510250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037851, 0.745171, -0.665798,
		0.498219, 0.563485, 0.658986,
		0.866225, -0.356656, -0.349930,
		34.493366, 30.439461, 44.405270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460850, 31.299135, 44.546413>,  <33.887009, 30.689119, 44.650223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460850, 31.299135, 44.546413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554825, 30.987383, 44.314079>,  <34.611210, 30.800331, 44.174679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554825, 30.987383, 44.314079>,  <34.460850, 31.299135, 44.546413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554825, 30.987383, 44.314079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114424, 0.615581, -0.779723,
		0.965253, 0.116721, 0.233801,
		0.234933, -0.779382, -0.580836,
		34.625305, 30.753569, 44.139828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022152, 31.542252, 44.069702>,  <34.460850, 31.299135, 44.546413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022152, 31.542252, 44.069702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879128, 31.213448, 43.892410>,  <34.793312, 31.016165, 43.786034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879128, 31.213448, 43.892410>,  <35.022152, 31.542252, 44.069702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879128, 31.213448, 43.892410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182621, 0.526989, -0.830019,
		0.915861, -0.215837, -0.338545,
		-0.357558, -0.822008, -0.443232,
		34.771858, 30.966845, 43.759441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262558, 31.566771, 43.373905>,  <35.022152, 31.542252, 44.069702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262558, 31.566771, 43.373905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961658, 31.305460, 43.339596>,  <34.781120, 31.148674, 43.319012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961658, 31.305460, 43.339596>,  <35.262558, 31.566771, 43.373905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961658, 31.305460, 43.339596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217936, 0.369550, -0.903292,
		0.621798, -0.660803, -0.420365,
		-0.752244, -0.653278, -0.085773,
		34.735985, 31.109476, 43.313866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101585, 31.472935, 42.658310>,  <35.262558, 31.566771, 43.373905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101585, 31.472935, 42.658310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756336, 31.322046, 42.792603>,  <34.549187, 31.231512, 42.873177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756336, 31.322046, 42.792603>,  <35.101585, 31.472935, 42.658310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756336, 31.322046, 42.792603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426943, 0.190062, -0.884079,
		0.269686, -0.906410, -0.325101,
		-0.863128, -0.377223, 0.335728,
		34.497398, 31.208879, 42.893322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824944, 30.914547, 42.236256>,  <35.101585, 31.472935, 42.658310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824944, 30.914547, 42.236256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511826, 31.074770, 42.426746>,  <34.323956, 31.170904, 42.541039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511826, 31.074770, 42.426746>,  <34.824944, 30.914547, 42.236256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511826, 31.074770, 42.426746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399336, 0.263571, -0.878101,
		-0.477248, -0.877544, -0.046365,
		-0.782793, 0.400557, 0.476224,
		34.276989, 31.194937, 42.569614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236053, 30.659307, 41.999851>,  <34.824944, 30.914547, 42.236256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236053, 30.659307, 41.999851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152454, 31.028978, 42.127735>,  <34.102295, 31.250782, 42.204464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152454, 31.028978, 42.127735>,  <34.236053, 30.659307, 41.999851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152454, 31.028978, 42.127735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426429, 0.208081, -0.880262,
		-0.880044, -0.320306, 0.350608,
		-0.208998, 0.924179, 0.319708,
		34.089756, 31.306232, 42.223648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035660, 31.036722, 41.446392>,  <34.236053, 30.659307, 41.999851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035660, 31.036722, 41.446392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916801, 31.305780, 41.717464>,  <33.845486, 31.467215, 41.880108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916801, 31.305780, 41.717464>,  <34.035660, 31.036722, 41.446392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916801, 31.305780, 41.717464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441249, 0.532673, -0.722190,
		-0.846761, -0.513622, 0.138523,
		-0.297145, 0.672645, 0.677682,
		33.827660, 31.507574, 41.920769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267582, 31.119677, 41.320671>,  <34.035660, 31.036722, 41.446392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267582, 31.119677, 41.320671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475574, 31.420633, 41.482422>,  <33.600368, 31.601208, 41.579472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475574, 31.420633, 41.482422>,  <33.267582, 31.119677, 41.320671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475574, 31.420633, 41.482422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285140, 0.599154, -0.748138,
		-0.805179, 0.273714, 0.526087,
		0.519983, 0.752393, 0.404379,
		33.631569, 31.646351, 41.603737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922539, 31.678255, 41.095901>,  <33.267582, 31.119677, 41.320671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922539, 31.678255, 41.095901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262730, 31.838175, 41.232632>,  <33.466846, 31.934126, 41.314671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262730, 31.838175, 41.232632>,  <32.922539, 31.678255, 41.095901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262730, 31.838175, 41.232632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021491, 0.675720, -0.736845,
		-0.525570, 0.619325, 0.583278,
		0.850479, 0.399799, 0.341828,
		33.517872, 31.958115, 41.335178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771729, 32.406956, 41.257408>,  <32.922539, 31.678255, 41.095901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771729, 32.406956, 41.257408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155476, 32.337753, 41.168243>,  <33.385723, 32.296234, 41.114742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155476, 32.337753, 41.168243>,  <32.771729, 32.406956, 41.257408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155476, 32.337753, 41.168243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047692, 0.679215, -0.732389,
		0.278112, 0.713258, 0.643363,
		0.959364, -0.173003, -0.222914,
		33.443283, 32.285851, 41.101368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944897, 33.053722, 41.070381>,  <32.771729, 32.406956, 41.257408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944897, 33.053722, 41.070381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245014, 32.832771, 40.925087>,  <33.425083, 32.700199, 40.837910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245014, 32.832771, 40.925087>,  <32.944897, 33.053722, 41.070381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245014, 32.832771, 40.925087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026284, 0.524071, -0.851269,
		0.660585, 0.648246, 0.378687,
		0.750291, -0.552382, -0.363232,
		33.470100, 32.667057, 40.816116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418606, 33.551853, 40.716858>,  <32.944897, 33.053722, 41.070381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418606, 33.551853, 40.716858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508102, 33.199333, 40.550365>,  <33.561802, 32.987820, 40.450470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508102, 33.199333, 40.550365>,  <33.418606, 33.551853, 40.716858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508102, 33.199333, 40.550365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049157, 0.436721, -0.898253,
		0.973407, 0.180519, 0.141037,
		0.223746, -0.881299, -0.416234,
		33.575226, 32.934944, 40.425495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883690, 33.676659, 40.126949>,  <33.418606, 33.551853, 40.716858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883690, 33.676659, 40.126949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736977, 33.309990, 40.063477>,  <33.648949, 33.089989, 40.025394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736977, 33.309990, 40.063477>,  <33.883690, 33.676659, 40.126949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736977, 33.309990, 40.063477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103271, 0.209633, -0.972311,
		0.924555, -0.340244, -0.171556,
		-0.366787, -0.916672, -0.158680,
		33.626942, 33.034988, 40.015873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139553, 33.540188, 39.399055>,  <33.883690, 33.676659, 40.126949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139553, 33.540188, 39.399055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846581, 33.272282, 39.447983>,  <33.670795, 33.111538, 39.477341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846581, 33.272282, 39.447983>,  <34.139553, 33.540188, 39.399055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846581, 33.272282, 39.447983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281015, 0.133750, -0.950338,
		0.620140, -0.730431, -0.286176,
		-0.732432, -0.669762, 0.122318,
		33.626850, 33.071354, 39.484676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216587, 33.024193, 38.889984>,  <34.139553, 33.540188, 39.399055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216587, 33.024193, 38.889984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835239, 33.054245, 39.006908>,  <33.606430, 33.072277, 39.077065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835239, 33.054245, 39.006908>,  <34.216587, 33.024193, 38.889984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835239, 33.054245, 39.006908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287752, 0.065913, -0.955434,
		-0.091054, -0.994992, -0.041219,
		-0.953366, 0.075135, 0.292313,
		33.549229, 33.076786, 39.094601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864586, 32.419453, 38.530960>,  <34.216587, 33.024193, 38.889984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864586, 32.419453, 38.530960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595867, 32.688213, 38.655693>,  <33.434635, 32.849472, 38.730534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595867, 32.688213, 38.655693>,  <33.864586, 32.419453, 38.530960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595867, 32.688213, 38.655693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392246, 0.034428, -0.919216,
		-0.628361, -0.739837, 0.240423,
		-0.671793, 0.671904, 0.311831,
		33.394329, 32.889786, 38.749241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195885, 32.111538, 38.345139>,  <33.864586, 32.419453, 38.530960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195885, 32.111538, 38.345139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109295, 32.497673, 38.403458>,  <33.057343, 32.729355, 38.438450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109295, 32.497673, 38.403458>,  <33.195885, 32.111538, 38.345139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109295, 32.497673, 38.403458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525958, 0.010505, -0.850446,
		-0.822502, -0.260782, 0.505454,
		-0.216471, 0.965340, 0.145801,
		33.044353, 32.787273, 38.447197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427380, 32.220470, 38.234982>,  <33.195885, 32.111538, 38.345139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427380, 32.220470, 38.234982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581730, 32.585758, 38.182632>,  <32.674339, 32.804932, 38.151222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581730, 32.585758, 38.182632>,  <32.427380, 32.220470, 38.234982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581730, 32.585758, 38.182632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582543, 0.131197, -0.802142,
		-0.715362, 0.385768, 0.582615,
		0.385878, 0.913220, -0.130873,
		32.697495, 32.859726, 38.143372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849646, 32.663837, 38.088463>,  <32.427380, 32.220470, 38.234982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849646, 32.663837, 38.088463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159134, 32.866684, 37.936577>,  <32.344826, 32.988392, 37.845444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159134, 32.866684, 37.936577>,  <31.849646, 32.663837, 38.088463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159134, 32.866684, 37.936577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554589, 0.252436, -0.792910,
		-0.306247, 0.824078, 0.476559,
		0.773721, 0.507120, -0.379717,
		32.391251, 33.018822, 37.822662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549328, 33.104507, 37.602726>,  <31.849646, 32.663837, 38.088463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549328, 33.104507, 37.602726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935942, 33.167484, 37.521709>,  <32.167912, 33.205269, 37.473099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935942, 33.167484, 37.521709>,  <31.549328, 33.104507, 37.602726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935942, 33.167484, 37.521709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249335, 0.390765, -0.886078,
		-0.060355, 0.906927, 0.416943,
		0.966535, 0.157438, -0.202544,
		32.225903, 33.214714, 37.460945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559856, 33.836502, 37.337654>,  <31.549328, 33.104507, 37.602726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559856, 33.836502, 37.337654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858278, 33.618420, 37.184734>,  <32.037331, 33.487572, 37.092983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858278, 33.618420, 37.184734>,  <31.559856, 33.836502, 37.337654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858278, 33.618420, 37.184734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141582, 0.431120, -0.891117,
		0.650659, 0.718950, 0.244448,
		0.746055, -0.545204, -0.382302,
		32.082096, 33.454857, 37.070045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861248, 34.265217, 36.908619>,  <31.559856, 33.836502, 37.337654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861248, 34.265217, 36.908619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015800, 33.927536, 36.760010>,  <32.108532, 33.724926, 36.670845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015800, 33.927536, 36.760010>,  <31.861248, 34.265217, 36.908619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015800, 33.927536, 36.760010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017563, 0.396000, -0.918082,
		0.922171, 0.361257, 0.138182,
		0.386384, -0.844202, -0.371524,
		32.131714, 33.674274, 36.648552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483215, 34.433853, 36.455326>,  <31.861248, 34.265217, 36.908619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483215, 34.433853, 36.455326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348652, 34.070217, 36.357040>,  <32.267914, 33.852036, 36.298069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348652, 34.070217, 36.357040>,  <32.483215, 34.433853, 36.455326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348652, 34.070217, 36.357040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107791, 0.296382, -0.948967,
		0.935527, -0.292754, -0.197697,
		-0.336408, -0.909095, -0.245717,
		32.247730, 33.797489, 36.283325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883850, 34.219498, 35.857586>,  <32.483215, 34.433853, 36.455326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883850, 34.219498, 35.857586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556587, 33.989704, 35.847935>,  <32.360229, 33.851830, 35.842144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556587, 33.989704, 35.847935>,  <32.883850, 34.219498, 35.857586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556587, 33.989704, 35.847935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031826, 0.087145, -0.995687,
		0.574110, -0.813863, -0.089582,
		-0.818160, -0.574485, -0.024128,
		32.311138, 33.817360, 35.840694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867645, 33.692791, 35.324825>,  <32.883850, 34.219498, 35.857586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867645, 33.692791, 35.324825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475754, 33.717426, 35.401081>,  <32.240620, 33.732208, 35.446835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475754, 33.717426, 35.401081>,  <32.867645, 33.692791, 35.324825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475754, 33.717426, 35.401081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187494, 0.053353, -0.980816,
		-0.070582, -0.996674, -0.040723,
		-0.979727, 0.061592, 0.190637,
		32.181835, 33.735905, 35.458271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916050, 33.131294, 34.899525>,  <32.867645, 33.692791, 35.324825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916050, 33.131294, 34.899525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157478, 33.337524, 34.656254>,  <33.302338, 33.461262, 34.510292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157478, 33.337524, 34.656254>,  <32.916050, 33.131294, 34.899525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157478, 33.337524, 34.656254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765890, -0.162904, 0.621992,
		0.221609, -0.841216, -0.493199,
		0.603574, 0.515576, -0.608178,
		33.338551, 33.492195, 34.473801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415554, 32.725296, 34.942150>,  <32.916050, 33.131294, 34.899525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415554, 32.725296, 34.942150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548145, 33.089298, 34.842545>,  <33.627701, 33.307701, 34.782784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548145, 33.089298, 34.842545>,  <33.415554, 32.725296, 34.942150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548145, 33.089298, 34.842545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763315, -0.103550, 0.637674,
		0.554505, -0.401447, -0.728948,
		0.331474, 0.910010, -0.249011,
		33.647587, 33.362301, 34.767841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175400, 32.726727, 34.869541>,  <33.415554, 32.725296, 34.942150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175400, 32.726727, 34.869541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071354, 33.101353, 34.963512>,  <34.008926, 33.326126, 35.019894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071354, 33.101353, 34.963512>,  <34.175400, 32.726727, 34.869541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071354, 33.101353, 34.963512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813479, 0.081479, 0.575858,
		0.520185, 0.340899, -0.783068,
		-0.260113, 0.936562, 0.234929,
		33.993320, 33.382320, 35.033993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735954, 33.109402, 34.784824>,  <34.175400, 32.726727, 34.869541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735954, 33.109402, 34.784824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517002, 33.309803, 35.052963>,  <34.385632, 33.430046, 35.213848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517002, 33.309803, 35.052963>,  <34.735954, 33.109402, 34.784824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517002, 33.309803, 35.052963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786713, 0.034878, 0.616332,
		0.285405, 0.864741, -0.413240,
		-0.547381, 0.501005, 0.670349,
		34.352787, 33.460106, 35.254066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247929, 33.460533, 35.022438>,  <34.735954, 33.109402, 34.784824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247929, 33.460533, 35.022438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941582, 33.507599, 35.275295>,  <34.757774, 33.535839, 35.427010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941582, 33.507599, 35.275295>,  <35.247929, 33.460533, 35.022438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941582, 33.507599, 35.275295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604974, -0.201196, 0.770407,
		0.217830, 0.972459, 0.082908,
		-0.765870, 0.117660, 0.632139,
		34.711823, 33.542896, 35.464935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585659, 33.821182, 35.569427>,  <35.247929, 33.460533, 35.022438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585659, 33.821182, 35.569427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261925, 33.656971, 35.737446>,  <35.067684, 33.558445, 35.838257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261925, 33.656971, 35.737446>,  <35.585659, 33.821182, 35.569427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261925, 33.656971, 35.737446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562642, -0.336695, 0.755030,
		-0.168538, 0.847408, 0.503483,
		-0.809339, -0.410532, 0.420041,
		35.019123, 33.533810, 35.863457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685131, 34.022400, 36.217144>,  <35.585659, 33.821182, 35.569427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685131, 34.022400, 36.217144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410263, 33.734352, 36.255573>,  <35.245342, 33.561523, 36.278629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410263, 33.734352, 36.255573>,  <35.685131, 34.022400, 36.217144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410263, 33.734352, 36.255573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391635, -0.255805, 0.883847,
		-0.611896, 0.644979, 0.457804,
		-0.687172, -0.720115, 0.096071,
		35.204113, 33.518318, 36.284393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620453, 34.017563, 36.952194>,  <35.685131, 34.022400, 36.217144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620453, 34.017563, 36.952194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511669, 33.670612, 36.785488>,  <35.446400, 33.462440, 36.685467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511669, 33.670612, 36.785488>,  <35.620453, 34.017563, 36.952194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511669, 33.670612, 36.785488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542433, -0.495901, 0.678121,
		-0.794861, -0.041643, 0.605361,
		-0.271960, -0.867380, -0.416761,
		35.430080, 33.410397, 36.660461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394409, 33.661316, 37.474533>,  <35.620453, 34.017563, 36.952194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394409, 33.661316, 37.474533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507622, 33.398720, 37.194843>,  <35.575550, 33.241161, 37.027031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507622, 33.398720, 37.194843>,  <35.394409, 33.661316, 37.474533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507622, 33.398720, 37.194843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420024, -0.570566, 0.705716,
		-0.862249, -0.493429, 0.114255,
		0.283030, -0.656493, -0.699222,
		35.592529, 33.201771, 36.985077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393223, 33.161140, 37.930626>,  <35.394409, 33.661316, 37.474533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393223, 33.161140, 37.930626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573368, 33.003613, 37.610107>,  <35.681458, 32.909096, 37.417797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573368, 33.003613, 37.610107>,  <35.393223, 33.161140, 37.930626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573368, 33.003613, 37.610107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432725, -0.688741, 0.581708,
		-0.780974, -0.608723, -0.139771,
		0.450365, -0.393817, -0.801298,
		35.708477, 32.885468, 37.369717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183674, 32.538242, 37.751701>,  <35.393223, 33.161140, 37.930626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183674, 32.538242, 37.751701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549294, 32.508087, 37.592285>,  <35.768665, 32.489994, 37.496635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549294, 32.508087, 37.592285>,  <35.183674, 32.538242, 37.751701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549294, 32.508087, 37.592285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209199, -0.754182, 0.622451,
		-0.347501, -0.652323, -0.673586,
		0.914045, -0.075389, -0.398544,
		35.823505, 32.485470, 37.472721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305592, 31.825310, 37.737385>,  <35.183674, 32.538242, 37.751701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305592, 31.825310, 37.737385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664597, 31.997873, 37.700821>,  <35.880001, 32.101410, 37.678883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664597, 31.997873, 37.700821>,  <35.305592, 31.825310, 37.737385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664597, 31.997873, 37.700821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376342, -0.641261, 0.668694,
		0.229859, -0.634565, -0.737897,
		0.897514, 0.431407, -0.091413,
		35.933849, 32.127296, 37.673397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755768, 31.273241, 37.779617>,  <35.305592, 31.825310, 37.737385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755768, 31.273241, 37.779617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013367, 31.576683, 37.819183>,  <36.167927, 31.758749, 37.842922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013367, 31.576683, 37.819183>,  <35.755768, 31.273241, 37.779617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013367, 31.576683, 37.819183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606482, -0.585058, 0.538411,
		0.466311, -0.286747, -0.836857,
		0.643998, 0.758606, 0.098912,
		36.206566, 31.804264, 37.848858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464149, 31.013929, 37.680191>,  <35.755768, 31.273241, 37.779617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464149, 31.013929, 37.680191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473629, 31.335836, 37.917439>,  <36.479317, 31.528980, 38.059788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473629, 31.335836, 37.917439>,  <36.464149, 31.013929, 37.680191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473629, 31.335836, 37.917439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458656, -0.535911, 0.708826,
		0.888298, 0.255241, -0.381810,
		0.023695, 0.804768, 0.593116,
		36.480736, 31.577267, 38.095375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052338, 31.003044, 38.175663>,  <36.464149, 31.013929, 37.680191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052338, 31.003044, 38.175663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816975, 31.277313, 38.347069>,  <36.675755, 31.441875, 38.449913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816975, 31.277313, 38.347069>,  <37.052338, 31.003044, 38.175663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816975, 31.277313, 38.347069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180117, -0.405501, 0.896174,
		0.788245, 0.604502, 0.115100,
		-0.588412, 0.685673, 0.428515,
		36.640450, 31.483015, 38.475624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469418, 31.219576, 38.710182>,  <37.052338, 31.003044, 38.175663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469418, 31.219576, 38.710182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095013, 31.327242, 38.800903>,  <36.870369, 31.391842, 38.855335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095013, 31.327242, 38.800903>,  <37.469418, 31.219576, 38.710182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095013, 31.327242, 38.800903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097054, -0.422021, 0.901376,
		0.338334, 0.865707, 0.368892,
		-0.936008, 0.269163, 0.226804,
		36.814209, 31.407991, 38.868946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493622, 31.436674, 39.357334>,  <37.469418, 31.219576, 38.710182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493622, 31.436674, 39.357334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106277, 31.343304, 39.322033>,  <36.873871, 31.287281, 39.300850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106277, 31.343304, 39.322033>,  <37.493622, 31.436674, 39.357334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106277, 31.343304, 39.322033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076537, -0.614414, 0.785262,
		-0.237528, 0.753662, 0.612841,
		-0.968361, -0.233426, -0.088258,
		36.815769, 31.273275, 39.295555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204185, 31.647436, 39.953369>,  <37.493622, 31.436674, 39.357334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204185, 31.647436, 39.953369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947857, 31.390148, 39.785744>,  <36.794060, 31.235775, 39.685169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947857, 31.390148, 39.785744>,  <37.204185, 31.647436, 39.953369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947857, 31.390148, 39.785744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012164, -0.554320, 0.832214,
		-0.767594, 0.528202, 0.363044,
		-0.640821, -0.643219, -0.419068,
		36.755611, 31.197182, 39.660023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662949, 31.666656, 40.445858>,  <37.204185, 31.647436, 39.953369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662949, 31.666656, 40.445858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579887, 31.331335, 40.244217>,  <36.530048, 31.130142, 40.123230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579887, 31.331335, 40.244217>,  <36.662949, 31.666656, 40.445858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579887, 31.331335, 40.244217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188908, -0.471273, 0.861519,
		-0.959787, 0.274131, -0.060500,
		-0.207657, -0.838305, -0.504107,
		36.517590, 31.079844, 40.092983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017746, 31.418089, 40.735695>,  <36.662949, 31.666656, 40.445858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017746, 31.418089, 40.735695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226635, 31.119646, 40.570477>,  <36.351967, 30.940580, 40.471344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226635, 31.119646, 40.570477>,  <36.017746, 31.418089, 40.735695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226635, 31.119646, 40.570477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051870, -0.511228, 0.857878,
		-0.851232, -0.426576, -0.305674,
		0.522220, -0.746109, -0.413047,
		36.383301, 30.895813, 40.446564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732700, 30.889252, 40.996071>,  <36.017746, 31.418089, 40.735695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732700, 30.889252, 40.996071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071117, 30.718925, 40.867764>,  <36.274166, 30.616730, 40.790779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071117, 30.718925, 40.867764>,  <35.732700, 30.889252, 40.996071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071117, 30.718925, 40.867764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065466, -0.514148, 0.855199,
		-0.529085, -0.744532, -0.407113,
		0.846040, -0.425821, -0.320770,
		36.324932, 30.591181, 40.771534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674183, 30.161812, 41.115948>,  <35.732700, 30.889252, 40.996071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674183, 30.161812, 41.115948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068581, 30.227758, 41.105820>,  <36.305218, 30.267326, 41.099743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068581, 30.227758, 41.105820>,  <35.674183, 30.161812, 41.115948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068581, 30.227758, 41.105820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101513, -0.472678, 0.875369,
		0.132352, -0.865676, -0.482793,
		0.985991, 0.164866, -0.025317,
		36.364376, 30.277218, 41.098225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103653, 29.535032, 41.307861>,  <35.674183, 30.161812, 41.115948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103653, 29.535032, 41.307861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324211, 29.858450, 41.390049>,  <36.456547, 30.052500, 41.439362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324211, 29.858450, 41.390049>,  <36.103653, 29.535032, 41.307861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324211, 29.858450, 41.390049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156749, -0.342324, 0.926415,
		0.819384, -0.478616, -0.315495,
		0.551398, 0.808542, 0.205473,
		36.489632, 30.101013, 41.451691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633938, 29.290815, 41.790203>,  <36.103653, 29.535032, 41.307861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633938, 29.290815, 41.790203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677345, 29.686533, 41.829239>,  <36.703388, 29.923964, 41.852661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677345, 29.686533, 41.829239>,  <36.633938, 29.290815, 41.790203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677345, 29.686533, 41.829239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096703, -0.108210, 0.989414,
		0.989380, -0.097932, -0.107410,
		0.108518, 0.989293, 0.097590,
		36.709900, 29.983320, 41.858517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346992, 29.508562, 42.060318>,  <36.633938, 29.290815, 41.790203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346992, 29.508562, 42.060318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087219, 29.798029, 42.153736>,  <36.931355, 29.971708, 42.209785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087219, 29.798029, 42.153736>,  <37.346992, 29.508562, 42.060318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087219, 29.798029, 42.153736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275668, -0.062179, 0.959240,
		0.708692, 0.687342, -0.159111,
		-0.649433, 0.723667, 0.233544,
		36.892391, 30.015129, 42.223801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704491, 29.960089, 42.454277>,  <37.346992, 29.508562, 42.060318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704491, 29.960089, 42.454277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348354, 30.120420, 42.540661>,  <37.134674, 30.216619, 42.592491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348354, 30.120420, 42.540661>,  <37.704491, 29.960089, 42.454277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348354, 30.120420, 42.540661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246181, 0.024808, 0.968906,
		0.383008, 0.915817, -0.120764,
		-0.890337, 0.400829, 0.215955,
		37.081253, 30.240669, 42.605446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827785, 30.517061, 42.837307>,  <37.704491, 29.960089, 42.454277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827785, 30.517061, 42.837307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458858, 30.384935, 42.917526>,  <37.237503, 30.305660, 42.965656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458858, 30.384935, 42.917526>,  <37.827785, 30.517061, 42.837307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458858, 30.384935, 42.917526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102082, 0.292270, 0.950872,
		-0.372702, 0.897480, -0.235846,
		-0.922319, -0.330316, 0.200546,
		37.182163, 30.285841, 42.977692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600929, 30.986614, 43.247181>,  <37.827785, 30.517061, 42.837307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600929, 30.986614, 43.247181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334930, 30.692438, 43.299187>,  <37.175331, 30.515932, 43.330391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334930, 30.692438, 43.299187>,  <37.600929, 30.986614, 43.247181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334930, 30.692438, 43.299187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037510, 0.206751, 0.977674,
		-0.745902, 0.645276, -0.165076,
		-0.664999, -0.735441, 0.130012,
		37.135429, 30.471806, 43.338192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034458, 31.289671, 43.660927>,  <37.600929, 30.986614, 43.247181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034458, 31.289671, 43.660927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032074, 30.892052, 43.704445>,  <37.030643, 30.653481, 43.730556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032074, 30.892052, 43.704445>,  <37.034458, 31.289671, 43.660927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032074, 30.892052, 43.704445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104622, 0.108823, 0.988540,
		-0.994494, -0.005488, -0.104648,
		-0.005963, -0.994046, 0.108798,
		37.030285, 30.593838, 43.737083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593349, 31.216619, 44.272995>,  <37.034458, 31.289671, 43.660927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593349, 31.216619, 44.272995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746284, 30.854088, 44.201012>,  <36.838047, 30.636570, 44.157822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746284, 30.854088, 44.201012>,  <36.593349, 31.216619, 44.272995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746284, 30.854088, 44.201012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171856, -0.121612, 0.977587,
		-0.907900, -0.404698, 0.109260,
		0.382340, -0.906328, -0.179961,
		36.860985, 30.582190, 44.147022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444057, 30.911015, 44.878185>,  <36.593349, 31.216619, 44.272995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444057, 30.911015, 44.878185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732159, 30.679171, 44.725723>,  <36.905022, 30.540064, 44.634247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732159, 30.679171, 44.725723>,  <36.444057, 30.911015, 44.878185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732159, 30.679171, 44.725723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246003, -0.300335, 0.921565,
		-0.648623, -0.757529, -0.073733,
		0.720257, -0.579610, -0.381159,
		36.948235, 30.505287, 44.611374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451935, 30.298851, 45.320133>,  <36.444057, 30.911015, 44.878185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451935, 30.298851, 45.320133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814804, 30.323294, 45.153618>,  <37.032528, 30.337959, 45.053707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814804, 30.323294, 45.153618>,  <36.451935, 30.298851, 45.320133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814804, 30.323294, 45.153618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408727, -0.362843, 0.837429,
		-0.099877, -0.929845, -0.354138,
		0.907175, 0.061106, -0.416292,
		37.086956, 30.341625, 45.028728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783810, 29.821650, 45.609718>,  <36.451935, 30.298851, 45.320133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783810, 29.821650, 45.609718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104221, 30.008230, 45.459633>,  <37.296467, 30.120178, 45.369583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104221, 30.008230, 45.459633>,  <36.783810, 29.821650, 45.609718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104221, 30.008230, 45.459633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487894, -0.145518, 0.860688,
		0.346869, -0.872495, -0.344142,
		0.801025, 0.466451, -0.375210,
		37.344528, 30.148165, 45.347069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457817, 29.488079, 45.892494>,  <36.783810, 29.821650, 45.609718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457817, 29.488079, 45.892494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585640, 29.845238, 45.765614>,  <37.662334, 30.059534, 45.689487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585640, 29.845238, 45.765614>,  <37.457817, 29.488079, 45.892494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585640, 29.845238, 45.765614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540796, 0.103020, 0.834821,
		0.778088, -0.438315, -0.449954,
		0.319561, 0.892898, -0.317198,
		37.681507, 30.113108, 45.670456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238247, 29.511332, 45.980228>,  <37.457817, 29.488079, 45.892494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238247, 29.511332, 45.980228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083809, 29.879381, 46.006477>,  <37.991146, 30.100210, 46.022228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083809, 29.879381, 46.006477>,  <38.238247, 29.511332, 45.980228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083809, 29.879381, 46.006477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591691, 0.192447, 0.782858,
		0.707697, 0.341082, -0.618731,
		-0.386092, 0.920123, 0.065621,
		37.967979, 30.155418, 46.026165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759995, 29.957113, 46.123928>,  <38.238247, 29.511332, 45.980228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759995, 29.957113, 46.123928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444157, 30.169649, 46.246712>,  <38.254654, 30.297171, 46.320381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444157, 30.169649, 46.246712>,  <38.759995, 29.957113, 46.123928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444157, 30.169649, 46.246712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451484, 0.164257, 0.877030,
		0.415581, 0.831082, -0.369587,
		-0.789591, 0.531340, 0.306958,
		38.207279, 30.329052, 46.338799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004108, 30.594374, 46.364124>,  <38.759995, 29.957113, 46.123928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004108, 30.594374, 46.364124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665829, 30.503822, 46.557430>,  <38.462860, 30.449492, 46.673412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665829, 30.503822, 46.557430>,  <39.004108, 30.594374, 46.364124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665829, 30.503822, 46.557430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465711, 0.129118, 0.875467,
		-0.260584, 0.965444, -0.003769,
		-0.845701, -0.226377, 0.483263,
		38.412117, 30.435909, 46.702408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202869, 30.811863, 46.948898>,  <39.004108, 30.594374, 46.364124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202869, 30.811863, 46.948898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852482, 30.637178, 47.030834>,  <38.642250, 30.532368, 47.079998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852482, 30.637178, 47.030834>,  <39.202869, 30.811863, 46.948898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852482, 30.637178, 47.030834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349081, -0.280854, 0.894015,
		-0.332896, 0.854637, 0.398468,
		-0.875970, -0.436712, 0.204842,
		38.589691, 30.506165, 47.092285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939621, 31.116365, 47.600124>,  <39.202869, 30.811863, 46.948898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939621, 31.116365, 47.600124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844227, 30.734459, 47.529087>,  <38.786991, 30.505314, 47.486465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844227, 30.734459, 47.529087>,  <38.939621, 31.116365, 47.600124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844227, 30.734459, 47.529087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404376, -0.263894, 0.875694,
		-0.882951, 0.137029, 0.449022,
		-0.238489, -0.954769, -0.177595,
		38.772678, 30.448029, 47.475807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197483, 30.973078, 48.308605>,  <38.939621, 31.116365, 47.600124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197483, 30.973078, 48.308605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330845, 31.341255, 48.390213>,  <39.410862, 31.562162, 48.439178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330845, 31.341255, 48.390213>,  <39.197483, 30.973078, 48.308605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330845, 31.341255, 48.390213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744030, 0.389783, -0.542667,
		-0.579020, 0.029128, 0.814793,
		0.333400, 0.920446, 0.204020,
		39.430866, 31.617390, 48.451420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614513, 31.371738, 48.474991>,  <39.197483, 30.973078, 48.308605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614513, 31.371738, 48.474991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896767, 31.635939, 48.372372>,  <39.066120, 31.794458, 48.310799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896767, 31.635939, 48.372372>,  <38.614513, 31.371738, 48.474991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896767, 31.635939, 48.372372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640537, 0.439793, -0.629520,
		-0.302968, 0.608542, 0.733408,
		0.705637, 0.660499, -0.256550,
		39.108459, 31.834089, 48.295406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364555, 32.067867, 48.612415>,  <38.614513, 31.371738, 48.474991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364555, 32.067867, 48.612415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643749, 32.119907, 48.330738>,  <38.811268, 32.151131, 48.161732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643749, 32.119907, 48.330738>,  <38.364555, 32.067867, 48.612415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643749, 32.119907, 48.330738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678864, 0.433222, -0.592843,
		0.227940, 0.891847, 0.390706,
		0.697988, 0.130104, -0.704192,
		38.853146, 32.158939, 48.119480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262192, 32.782990, 48.311344>,  <38.364555, 32.067867, 48.612415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262192, 32.782990, 48.311344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506809, 32.627457, 48.035713>,  <38.653580, 32.534138, 47.870335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506809, 32.627457, 48.035713>,  <38.262192, 32.782990, 48.311344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506809, 32.627457, 48.035713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591382, 0.353947, -0.724561,
		0.525629, 0.850607, -0.013494,
		0.611541, -0.388830, -0.689079,
		38.690273, 32.510807, 47.828991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366463, 33.359482, 47.852386>,  <38.262192, 32.782990, 48.311344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366463, 33.359482, 47.852386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466080, 33.022675, 47.660980>,  <38.525848, 32.820591, 47.546135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466080, 33.022675, 47.660980>,  <38.366463, 33.359482, 47.852386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466080, 33.022675, 47.660980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411645, 0.355201, -0.839274,
		0.876656, 0.405994, -0.258154,
		0.249043, -0.842022, -0.478514,
		38.540794, 32.770069, 47.517426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731758, 33.632977, 47.249359>,  <38.366463, 33.359482, 47.852386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731758, 33.632977, 47.249359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653355, 33.254356, 47.146896>,  <38.606312, 33.027184, 47.085419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653355, 33.254356, 47.146896>,  <38.731758, 33.632977, 47.249359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653355, 33.254356, 47.146896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240006, 0.299585, -0.923388,
		0.950778, -0.119510, -0.285899,
		-0.196005, -0.946555, -0.256155,
		38.594555, 32.970390, 47.070049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139324, 33.494446, 46.613503>,  <38.731758, 33.632977, 47.249359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139324, 33.494446, 46.613503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851063, 33.218983, 46.645512>,  <38.678104, 33.053703, 46.664719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851063, 33.218983, 46.645512>,  <39.139324, 33.494446, 46.613503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851063, 33.218983, 46.645512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282981, 0.186808, -0.940758,
		0.632914, -0.700606, -0.329502,
		-0.720654, -0.688661, 0.080025,
		38.634865, 33.012383, 46.669518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179432, 33.045650, 45.985607>,  <39.139324, 33.494446, 46.613503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179432, 33.045650, 45.985607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807293, 33.048386, 46.132259>,  <38.584011, 33.050026, 46.220249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807293, 33.048386, 46.132259>,  <39.179432, 33.045650, 45.985607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807293, 33.048386, 46.132259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353323, 0.250803, -0.901255,
		-0.098111, -0.968014, -0.230918,
		-0.930342, 0.006835, 0.366628,
		38.528191, 33.050434, 46.242249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759228, 32.637482, 45.418232>,  <39.179432, 33.045650, 45.985607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759228, 32.637482, 45.418232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470749, 32.790295, 45.649380>,  <38.297661, 32.881985, 45.788067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470749, 32.790295, 45.649380>,  <38.759228, 32.637482, 45.418232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470749, 32.790295, 45.649380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613768, 0.034394, -0.788737,
		-0.321201, -0.923507, 0.209677,
		-0.721193, 0.382036, 0.577866,
		38.254391, 32.904907, 45.822739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210709, 32.280022, 45.297375>,  <38.759228, 32.637482, 45.418232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210709, 32.280022, 45.297375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064667, 32.629482, 45.426018>,  <37.977039, 32.839157, 45.503204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064667, 32.629482, 45.426018>,  <38.210709, 32.280022, 45.297375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064667, 32.629482, 45.426018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576270, 0.059226, -0.815110,
		-0.731169, -0.482936, 0.481835,
		-0.365109, 0.873650, 0.321606,
		37.955135, 32.891579, 45.522499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682781, 32.208633, 44.932991>,  <38.210709, 32.280022, 45.297375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682781, 32.208633, 44.932991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683651, 32.586674, 45.063705>,  <37.684174, 32.813496, 45.142132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683651, 32.586674, 45.063705>,  <37.682781, 32.208633, 44.932991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683651, 32.586674, 45.063705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546462, 0.274801, -0.791116,
		-0.837481, -0.176854, 0.517057,
		0.002176, 0.945097, 0.326784,
		37.684303, 32.870201, 45.161739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973518, 32.449059, 44.862782>,  <37.682781, 32.208633, 44.932991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973518, 32.449059, 44.862782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235996, 32.750465, 44.846691>,  <37.393482, 32.931309, 44.837036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235996, 32.750465, 44.846691>,  <36.973518, 32.449059, 44.862782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235996, 32.750465, 44.846691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482142, 0.377673, -0.790507,
		-0.580469, 0.538121, 0.611130,
		0.656196, 0.753517, -0.040223,
		37.432854, 32.976521, 44.834625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601444, 33.077930, 44.580990>,  <36.973518, 32.449059, 44.862782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601444, 33.077930, 44.580990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992260, 33.133720, 44.516552>,  <37.226749, 33.167194, 44.477890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992260, 33.133720, 44.516552>,  <36.601444, 33.077930, 44.580990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992260, 33.133720, 44.516552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202912, 0.378243, -0.903194,
		-0.065040, 0.915139, 0.397857,
		0.977035, 0.139473, -0.161092,
		37.285370, 33.175564, 44.468224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646477, 33.705009, 44.267422>,  <36.601444, 33.077930, 44.580990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646477, 33.705009, 44.267422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000801, 33.542503, 44.177719>,  <37.213394, 33.445000, 44.123898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000801, 33.542503, 44.177719>,  <36.646477, 33.705009, 44.267422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000801, 33.542503, 44.177719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084661, 0.333674, -0.938879,
		0.456262, 0.850654, 0.261177,
		0.885809, -0.406263, -0.224260,
		37.266544, 33.420624, 44.110439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979771, 34.192341, 43.804646>,  <36.646477, 33.705009, 44.267422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979771, 34.192341, 43.804646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145515, 33.832687, 43.748280>,  <37.244961, 33.616894, 43.714462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145515, 33.832687, 43.748280>,  <36.979771, 34.192341, 43.804646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145515, 33.832687, 43.748280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019423, 0.163529, -0.986347,
		0.909905, 0.405967, 0.085224,
		0.414361, -0.899138, -0.140911,
		37.269825, 33.562946, 43.706005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528839, 34.302589, 43.283333>,  <36.979771, 34.192341, 43.804646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528839, 34.302589, 43.283333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475334, 33.906200, 43.279850>,  <37.443230, 33.668365, 43.277760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475334, 33.906200, 43.279850>,  <37.528839, 34.302589, 43.283333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475334, 33.906200, 43.279850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272729, -0.028363, -0.961673,
		0.952747, -0.131010, 0.274061,
		-0.133762, -0.990975, -0.008707,
		37.435207, 33.608910, 43.277237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956814, 34.101177, 42.789917>,  <37.528839, 34.302589, 43.283333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956814, 34.101177, 42.789917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732601, 33.771587, 42.823051>,  <37.598072, 33.573833, 42.842934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732601, 33.771587, 42.823051>,  <37.956814, 34.101177, 42.789917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732601, 33.771587, 42.823051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083590, -0.043222, -0.995562,
		0.823903, -0.564969, -0.044649,
		-0.560532, -0.823979, 0.082836,
		37.564442, 33.524395, 42.847904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141262, 33.690536, 42.219097>,  <37.956814, 34.101177, 42.789917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141262, 33.690536, 42.219097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782497, 33.570286, 42.348820>,  <37.567238, 33.498135, 42.426655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782497, 33.570286, 42.348820>,  <38.141262, 33.690536, 42.219097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782497, 33.570286, 42.348820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317698, -0.072086, -0.945448,
		0.307603, -0.951014, -0.030853,
		-0.896911, -0.300625, 0.324309,
		37.513424, 33.480099, 42.446114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918686, 33.180542, 41.786713>,  <38.141262, 33.690536, 42.219097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918686, 33.180542, 41.786713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568691, 33.303535, 41.936302>,  <37.358696, 33.377331, 42.026058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568691, 33.303535, 41.936302>,  <37.918686, 33.180542, 41.786713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568691, 33.303535, 41.936302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423419, -0.111410, -0.899058,
		-0.234786, -0.945007, 0.227678,
		-0.874981, 0.307489, 0.373976,
		37.306198, 33.395782, 42.048496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415241, 32.707455, 41.485008>,  <37.918686, 33.180542, 41.786713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415241, 32.707455, 41.485008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190231, 33.020512, 41.591621>,  <37.055225, 33.208344, 41.655590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190231, 33.020512, 41.591621>,  <37.415241, 32.707455, 41.485008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190231, 33.020512, 41.591621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483895, -0.050262, -0.873681,
		-0.670381, -0.620443, 0.406989,
		-0.562525, 0.782639, 0.266534,
		37.021473, 33.255302, 41.671581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775372, 32.539455, 41.201275>,  <37.415241, 32.707455, 41.485008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775372, 32.539455, 41.201275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765564, 32.932446, 41.275188>,  <36.759682, 33.168240, 41.319538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765564, 32.932446, 41.275188>,  <36.775372, 32.539455, 41.201275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765564, 32.932446, 41.275188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263461, 0.171959, -0.949220,
		-0.964358, -0.071957, 0.254628,
		-0.024517, 0.982473, 0.184788,
		36.758209, 33.227188, 41.330624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098240, 32.808273, 40.960880>,  <36.775372, 32.539455, 41.201275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098240, 32.808273, 40.960880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344250, 33.122780, 40.984634>,  <36.491856, 33.311485, 40.998886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344250, 33.122780, 40.984634>,  <36.098240, 32.808273, 40.960880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344250, 33.122780, 40.984634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201091, 0.229224, -0.952375,
		-0.762437, 0.573790, 0.299090,
		0.615023, 0.786270, 0.059385,
		36.528755, 33.358662, 41.002449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789986, 33.293114, 40.496010>,  <36.098240, 32.808273, 40.960880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789986, 33.293114, 40.496010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162994, 33.429050, 40.544853>,  <36.386799, 33.510612, 40.574158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162994, 33.429050, 40.544853>,  <35.789986, 33.293114, 40.496010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162994, 33.429050, 40.544853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036686, 0.425547, -0.904193,
		-0.359247, 0.838699, 0.409299,
		0.932521, 0.339844, 0.122108,
		36.442749, 33.531002, 40.581486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819115, 33.915104, 40.131176>,  <35.789986, 33.293114, 40.496010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819115, 33.915104, 40.131176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207710, 33.831104, 40.175182>,  <36.440868, 33.780704, 40.201588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207710, 33.831104, 40.175182>,  <35.819115, 33.915104, 40.131176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207710, 33.831104, 40.175182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155814, 0.215848, -0.963915,
		0.178673, 0.953578, 0.242415,
		0.971492, -0.209998, 0.110015,
		36.499157, 33.768105, 40.208187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140652, 34.538548, 39.937401>,  <35.819115, 33.915104, 40.131176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140652, 34.538548, 39.937401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416313, 34.251705, 39.895790>,  <36.581711, 34.079597, 39.870823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416313, 34.251705, 39.895790>,  <36.140652, 34.538548, 39.937401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416313, 34.251705, 39.895790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243152, 0.364098, -0.899060,
		0.682602, 0.594295, 0.425286,
		0.689153, -0.717109, -0.104030,
		36.623058, 34.036572, 39.864582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794319, 34.846752, 39.712749>,  <36.140652, 34.538548, 39.937401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794319, 34.846752, 39.712749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814362, 34.468037, 39.585575>,  <36.826385, 34.240807, 39.509270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814362, 34.468037, 39.585575>,  <36.794319, 34.846752, 39.712749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814362, 34.468037, 39.585575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400069, 0.310705, -0.862211,
		0.915115, -0.083995, 0.394348,
		0.050104, -0.946788, -0.317935,
		36.829391, 34.184002, 39.490196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503601, 34.718731, 39.627678>,  <36.794319, 34.846752, 39.712749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503601, 34.718731, 39.627678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297291, 34.453018, 39.411270>,  <37.173504, 34.293591, 39.281425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297291, 34.453018, 39.411270>,  <37.503601, 34.718731, 39.627678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297291, 34.453018, 39.411270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613513, 0.154384, -0.774447,
		0.597976, -0.731365, 0.327918,
		-0.515778, -0.664282, -0.541020,
		37.142559, 34.253735, 39.248962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027088, 34.538605, 39.206356>,  <37.503601, 34.718731, 39.627678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027088, 34.538605, 39.206356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675518, 34.422779, 39.054756>,  <37.464577, 34.353283, 38.963795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675518, 34.422779, 39.054756>,  <38.027088, 34.538605, 39.206356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675518, 34.422779, 39.054756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329690, 0.205378, -0.921479,
		0.344665, -0.934865, -0.085045,
		-0.878926, -0.289563, -0.379003,
		37.411839, 34.335911, 38.941055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144577, 34.067863, 38.597389>,  <38.027088, 34.538605, 39.206356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144577, 34.067863, 38.597389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775730, 34.212502, 38.542320>,  <37.554420, 34.299282, 38.509281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775730, 34.212502, 38.542320>,  <38.144577, 34.067863, 38.597389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775730, 34.212502, 38.542320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225582, 0.213357, -0.950574,
		-0.314347, -0.907596, -0.278309,
		-0.922116, 0.361592, -0.137669,
		37.499096, 34.320980, 38.501019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859737, 33.559906, 38.132786>,  <38.144577, 34.067863, 38.597389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859737, 33.559906, 38.132786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697918, 33.925709, 38.131245>,  <37.600826, 34.145191, 38.130322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697918, 33.925709, 38.131245>,  <37.859737, 33.559906, 38.132786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697918, 33.925709, 38.131245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301451, 0.129377, -0.944664,
		-0.863404, -0.383324, -0.328018,
		-0.404550, 0.914508, -0.003849,
		37.576553, 34.200062, 38.130089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457752, 33.577774, 37.620075>,  <37.859737, 33.559906, 38.132786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457752, 33.577774, 37.620075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506699, 33.974281, 37.639702>,  <37.536068, 34.212185, 37.651478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506699, 33.974281, 37.639702>,  <37.457752, 33.577774, 37.620075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506699, 33.974281, 37.639702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295723, 0.010775, -0.955213,
		-0.947404, 0.131394, -0.291824,
		0.122365, 0.991272, 0.049064,
		37.543407, 34.271664, 37.654423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365101, 33.834518, 36.895893>,  <37.457752, 33.577774, 37.620075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365101, 33.834518, 36.895893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553493, 34.144478, 37.064518>,  <37.666527, 34.330452, 37.165691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553493, 34.144478, 37.064518>,  <37.365101, 33.834518, 36.895893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553493, 34.144478, 37.064518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388094, 0.247138, -0.887866,
		-0.792188, 0.581772, -0.184336,
		0.470979, 0.774896, 0.421562,
		37.694786, 34.376945, 37.190987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293751, 34.380199, 36.431114>,  <37.365101, 33.834518, 36.895893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293751, 34.380199, 36.431114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596867, 34.492794, 36.666580>,  <37.778736, 34.560352, 36.807858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596867, 34.492794, 36.666580>,  <37.293751, 34.380199, 36.431114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596867, 34.492794, 36.666580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502140, 0.324521, -0.801587,
		-0.416672, 0.903022, 0.104571,
		0.757786, 0.281490, 0.588662,
		37.824203, 34.577240, 36.843178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470524, 35.042194, 36.338657>,  <37.293751, 34.380199, 36.431114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470524, 35.042194, 36.338657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823669, 34.953564, 36.504288>,  <38.035557, 34.900383, 36.603664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823669, 34.953564, 36.504288>,  <37.470524, 35.042194, 36.338657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823669, 34.953564, 36.504288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467210, 0.503830, -0.726547,
		-0.047636, 0.834900, 0.548336,
		0.882862, -0.221578, 0.414074,
		38.088528, 34.887089, 36.628510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813801, 35.676025, 36.397877>,  <37.470524, 35.042194, 36.338657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813801, 35.676025, 36.397877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101921, 35.398621, 36.392094>,  <38.274796, 35.232178, 36.388626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101921, 35.398621, 36.392094>,  <37.813801, 35.676025, 36.397877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101921, 35.398621, 36.392094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576547, 0.610149, -0.543426,
		0.385689, 0.383098, 0.839333,
		0.720303, -0.693509, -0.014454,
		38.318012, 35.190567, 36.387756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407257, 36.036812, 36.628502>,  <37.813801, 35.676025, 36.397877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407257, 36.036812, 36.628502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541805, 35.707958, 36.444786>,  <38.622536, 35.510647, 36.334557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541805, 35.707958, 36.444786>,  <38.407257, 36.036812, 36.628502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541805, 35.707958, 36.444786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759513, 0.525178, -0.383834,
		0.556772, -0.219725, 0.801078,
		0.336371, -0.822137, -0.459288,
		38.642715, 35.461319, 36.306999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109325, 35.895855, 36.935688>,  <38.407257, 36.036812, 36.628502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109325, 35.895855, 36.935688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097950, 35.699345, 36.587471>,  <39.091125, 35.581440, 36.378540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097950, 35.699345, 36.587471>,  <39.109325, 35.895855, 36.935688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097950, 35.699345, 36.587471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621163, 0.673642, -0.400452,
		0.783165, -0.552137, 0.286003,
		-0.028441, -0.491275, -0.870540,
		39.089417, 35.551964, 36.326309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864693, 35.630722, 36.846596>,  <39.109325, 35.895855, 36.935688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864693, 35.630722, 36.846596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687557, 35.623081, 36.488037>,  <39.581276, 35.618496, 36.272900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687557, 35.623081, 36.488037>,  <39.864693, 35.630722, 36.846596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687557, 35.623081, 36.488037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727137, 0.577275, -0.371519,
		0.524564, -0.816327, -0.241751,
		-0.442838, -0.019099, -0.896398,
		39.554707, 35.617352, 36.219116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406994, 35.482651, 36.434921>,  <39.864693, 35.630722, 36.846596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406994, 35.482651, 36.434921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129967, 35.659683, 36.207073>,  <39.963749, 35.765903, 36.070366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129967, 35.659683, 36.207073>,  <40.406994, 35.482651, 36.434921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129967, 35.659683, 36.207073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679164, 0.666164, -0.308160,
		0.243073, -0.600287, -0.761952,
		-0.692569, 0.442585, -0.569620,
		39.922195, 35.792458, 36.036186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726715, 35.502377, 35.791485>,  <40.406994, 35.482651, 36.434921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726715, 35.502377, 35.791485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437984, 35.778683, 35.808514>,  <40.264744, 35.944466, 35.818733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437984, 35.778683, 35.808514>,  <40.726715, 35.502377, 35.791485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437984, 35.778683, 35.808514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632481, 0.683399, -0.364600,
		-0.280948, -0.236251, -0.930190,
		-0.721829, 0.690761, 0.042575,
		40.221436, 35.985912, 35.821285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664356, 35.799988, 35.131920>,  <40.726715, 35.502377, 35.791485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664356, 35.799988, 35.131920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552517, 36.064533, 35.410324>,  <40.485413, 36.223259, 35.577366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552517, 36.064533, 35.410324>,  <40.664356, 35.799988, 35.131920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552517, 36.064533, 35.410324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704566, 0.633793, -0.319207,
		-0.652237, 0.401136, -0.643178,
		-0.279596, 0.661360, 0.696010,
		40.468639, 36.262939, 35.619125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533005, 36.525513, 34.820522>,  <40.664356, 35.799988, 35.131920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533005, 36.525513, 34.820522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677387, 36.543125, 35.193138>,  <40.764015, 36.553692, 35.416710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677387, 36.543125, 35.193138>,  <40.533005, 36.525513, 34.820522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677387, 36.543125, 35.193138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658856, 0.694899, -0.288140,
		-0.660015, 0.717758, 0.221819,
		0.360957, 0.044030, 0.931543,
		40.785675, 36.556335, 35.472599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409966, 37.220741, 35.076206>,  <40.533005, 36.525513, 34.820522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409966, 37.220741, 35.076206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729740, 37.022346, 35.211796>,  <40.921604, 36.903309, 35.293148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729740, 37.022346, 35.211796>,  <40.409966, 37.220741, 35.076206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729740, 37.022346, 35.211796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587244, 0.526195, -0.615031,
		0.126678, 0.690739, 0.711922,
		0.799435, -0.495983, 0.338975,
		40.969570, 36.873550, 35.313488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739662, 37.561260, 35.540512>,  <40.409966, 37.220741, 35.076206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739662, 37.561260, 35.540512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946575, 37.334343, 35.284199>,  <41.070721, 37.198193, 35.130409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946575, 37.334343, 35.284199>,  <40.739662, 37.561260, 35.540512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946575, 37.334343, 35.284199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439282, 0.818580, -0.370077,
		0.734475, -0.090054, 0.672634,
		0.517278, -0.567289, -0.640786,
		41.101757, 37.164158, 35.091965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363548, 37.747105, 35.675537>,  <40.739662, 37.561260, 35.540512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363548, 37.747105, 35.675537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350330, 37.589745, 35.308029>,  <41.342400, 37.495327, 35.087524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350330, 37.589745, 35.308029>,  <41.363548, 37.747105, 35.675537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350330, 37.589745, 35.308029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518281, 0.779271, -0.352311,
		0.854572, -0.487826, 0.178138,
		-0.033049, -0.393400, -0.918773,
		41.340416, 37.471725, 35.032398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113430, 37.614510, 35.300167>,  <41.363548, 37.747105, 35.675537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113430, 37.614510, 35.300167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802448, 37.689594, 35.060059>,  <41.615860, 37.734646, 34.915993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802448, 37.689594, 35.060059>,  <42.113430, 37.614510, 35.300167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802448, 37.689594, 35.060059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494683, 0.771902, -0.399319,
		0.388396, -0.607397, -0.692977,
		-0.777456, 0.187710, -0.600273,
		41.569210, 37.745907, 34.879978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334026, 37.745132, 34.660534>,  <42.113430, 37.614510, 35.300167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334026, 37.745132, 34.660534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970154, 37.911251, 34.659920>,  <41.751831, 38.010921, 34.659550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970154, 37.911251, 34.659920>,  <42.334026, 37.745132, 34.660534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.970154, 37.911251, 34.659920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380467, 0.831899, -0.403967,
		-0.166487, -0.368068, -0.914772,
		-0.909685, 0.415296, -0.001538,
		41.697247, 38.035839, 34.659458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447834, 37.920067, 33.950188>,  <42.334026, 37.745132, 34.660534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447834, 37.920067, 33.950188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647331, 37.583527, 34.033508>,  <42.767029, 37.381603, 34.083500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647331, 37.583527, 34.033508>,  <42.447834, 37.920067, 33.950188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647331, 37.583527, 34.033508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046733, -0.213870, -0.975744,
		0.865490, 0.496378, -0.067347,
		0.498742, -0.841349, 0.208300,
		42.796955, 37.331123, 34.095997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102406, 37.888699, 33.572487>,  <42.447834, 37.920067, 33.950188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102406, 37.888699, 33.572487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979515, 37.515026, 33.645058>,  <42.905781, 37.290821, 33.688599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979515, 37.515026, 33.645058>,  <43.102406, 37.888699, 33.572487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979515, 37.515026, 33.645058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109799, -0.154577, -0.981861,
		0.945282, -0.321570, -0.055083,
		-0.307222, -0.934183, 0.181427,
		42.887348, 37.234772, 33.699486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299610, 37.591793, 33.008968>,  <43.102406, 37.888699, 33.572487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299610, 37.591793, 33.008968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089584, 37.287018, 33.160625>,  <42.963570, 37.104153, 33.251621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089584, 37.287018, 33.160625>,  <43.299610, 37.591793, 33.008968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089584, 37.287018, 33.160625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026183, -0.430826, -0.902055,
		0.850659, -0.483566, 0.206262,
		-0.525066, -0.761940, 0.379147,
		42.932064, 37.058437, 33.274368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.676830, 36.980434, 32.768173>,  <43.299610, 37.591793, 33.008968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.676830, 36.980434, 32.768173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295040, 36.899071, 32.855450>,  <43.065968, 36.850254, 32.907814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295040, 36.899071, 32.855450>,  <43.676830, 36.980434, 32.768173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295040, 36.899071, 32.855450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116844, -0.418061, -0.900873,
		0.274459, -0.885354, 0.375262,
		-0.954474, -0.203406, 0.218189,
		43.008698, 36.838051, 32.920906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508682, 36.270767, 32.512482>,  <43.676830, 36.980434, 32.768173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508682, 36.270767, 32.512482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.153633, 36.451504, 32.548199>,  <42.940605, 36.559944, 32.569630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.153633, 36.451504, 32.548199>,  <43.508682, 36.270767, 32.512482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.153633, 36.451504, 32.548199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169236, -0.139647, -0.975632,
		-0.428361, -0.881101, 0.200421,
		-0.887618, 0.451841, 0.089294,
		42.887348, 36.587055, 32.574986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109287, 35.829670, 32.153698>,  <43.508682, 36.270767, 32.512482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109287, 35.829670, 32.153698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891441, 36.163586, 32.185993>,  <42.760735, 36.363934, 32.205372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891441, 36.163586, 32.185993>,  <43.109287, 35.829670, 32.153698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891441, 36.163586, 32.185993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269741, -0.083192, -0.959333,
		-0.794124, -0.544247, 0.270485,
		-0.544616, 0.834790, 0.080741,
		42.728058, 36.414024, 32.210217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398472, 35.633923, 31.959185>,  <43.109287, 35.829670, 32.153698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398472, 35.633923, 31.959185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451664, 36.027992, 31.915836>,  <42.483578, 36.264435, 31.889828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451664, 36.027992, 31.915836>,  <42.398472, 35.633923, 31.959185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451664, 36.027992, 31.915836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574995, -0.012375, -0.818063,
		-0.807278, 0.171098, 0.564826,
		0.132979, 0.985176, -0.108371,
		42.491558, 36.323544, 31.883326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718723, 35.769901, 31.863876>,  <42.398472, 35.633923, 31.959185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718723, 35.769901, 31.863876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937111, 36.063152, 31.701674>,  <42.068142, 36.239105, 31.604351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937111, 36.063152, 31.701674>,  <41.718723, 35.769901, 31.863876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937111, 36.063152, 31.701674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655750, 0.072689, -0.751471,
		-0.521452, 0.676191, 0.520437,
		0.545968, 0.733132, -0.405508,
		42.100903, 36.283092, 31.580021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235470, 36.231113, 31.653721>,  <41.718723, 35.769901, 31.863876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235470, 36.231113, 31.653721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583996, 36.306305, 31.472403>,  <41.793110, 36.351421, 31.363611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583996, 36.306305, 31.472403>,  <41.235470, 36.231113, 31.653721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583996, 36.306305, 31.472403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468546, 0.044096, -0.882338,
		-0.145874, 0.981182, 0.126499,
		0.871312, 0.187981, -0.453297,
		41.845390, 36.362698, 31.336414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166912, 36.934044, 31.312571>,  <41.235470, 36.231113, 31.653721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166912, 36.934044, 31.312571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452045, 36.714455, 31.137983>,  <41.623123, 36.582703, 31.033232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452045, 36.714455, 31.137983>,  <41.166912, 36.934044, 31.312571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452045, 36.714455, 31.137983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403750, 0.187654, -0.895417,
		0.573464, 0.814503, -0.087882,
		0.712829, -0.548972, -0.436468,
		41.665894, 36.549763, 31.007042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161804, 37.197495, 30.690527>,  <41.166912, 36.934044, 31.312571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161804, 37.197495, 30.690527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381283, 36.869671, 30.624475>,  <41.512970, 36.672977, 30.584845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381283, 36.869671, 30.624475>,  <41.161804, 37.197495, 30.690527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381283, 36.869671, 30.624475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338698, -0.037333, -0.940154,
		0.764343, 0.571784, -0.298066,
		0.548692, -0.819555, -0.165127,
		41.545891, 36.623806, 30.574938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335255, 37.249527, 29.983204>,  <41.161804, 37.197495, 30.690527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335255, 37.249527, 29.983204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362629, 36.865826, 30.092863>,  <41.379055, 36.635605, 30.158659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362629, 36.865826, 30.092863>,  <41.335255, 37.249527, 29.983204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362629, 36.865826, 30.092863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405749, -0.277801, -0.870744,
		0.911419, -0.051643, -0.408226,
		0.068438, -0.959250, 0.274148,
		41.383160, 36.578053, 30.175108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575058, 36.785007, 29.430008>,  <41.335255, 37.249527, 29.983204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575058, 36.785007, 29.430008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390987, 36.518196, 29.664377>,  <41.280544, 36.358109, 29.804998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390987, 36.518196, 29.664377>,  <41.575058, 36.785007, 29.430008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390987, 36.518196, 29.664377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371309, -0.454871, -0.809458,
		0.806452, -0.590055, -0.038352,
		-0.460180, -0.667029, 0.585924,
		41.252934, 36.318089, 29.840155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681614, 36.134628, 29.132574>,  <41.575058, 36.785007, 29.430008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681614, 36.134628, 29.132574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367966, 36.039268, 29.361771>,  <41.179775, 35.982052, 29.499289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367966, 36.039268, 29.361771>,  <41.681614, 36.134628, 29.132574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367966, 36.039268, 29.361771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455374, -0.406274, -0.792197,
		0.421649, -0.882105, 0.210009,
		-0.784122, -0.238396, 0.572992,
		41.132729, 35.967751, 29.533669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477333, 35.534149, 28.868469>,  <41.681614, 36.134628, 29.132574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477333, 35.534149, 28.868469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150459, 35.620899, 29.082077>,  <40.954334, 35.672947, 29.210241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150459, 35.620899, 29.082077>,  <41.477333, 35.534149, 28.868469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150459, 35.620899, 29.082077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564904, -0.485287, -0.667368,
		0.114419, -0.847032, 0.519080,
		-0.817185, 0.216870, 0.534018,
		40.905304, 35.685959, 29.242283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141914, 34.904476, 29.039406>,  <41.477333, 35.534149, 28.868469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141914, 34.904476, 29.039406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835857, 35.155914, 29.095160>,  <40.652225, 35.306778, 29.128613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835857, 35.155914, 29.095160>,  <41.141914, 34.904476, 29.039406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835857, 35.155914, 29.095160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613222, -0.645453, -0.455357,
		-0.196268, -0.433886, 0.879330,
		-0.765139, 0.628596, 0.139386,
		40.606316, 35.344494, 29.136976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692032, 34.480316, 29.441147>,  <41.141914, 34.904476, 29.039406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692032, 34.480316, 29.441147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495571, 34.789131, 29.279787>,  <40.377697, 34.974419, 29.182972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495571, 34.789131, 29.279787>,  <40.692032, 34.480316, 29.441147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495571, 34.789131, 29.279787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789145, -0.590441, -0.169204,
		-0.368816, 0.235236, 0.899244,
		-0.491148, 0.772038, -0.403399,
		40.348228, 35.020744, 29.158768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032692, 34.510197, 29.735792>,  <40.692032, 34.480316, 29.441147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032692, 34.510197, 29.735792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995190, 34.706429, 29.389256>,  <39.972687, 34.824165, 29.181334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995190, 34.706429, 29.389256>,  <40.032692, 34.510197, 29.735792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995190, 34.706429, 29.389256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756298, -0.601002, -0.258478,
		-0.647475, 0.630978, 0.427368,
		-0.093755, 0.490575, -0.866341,
		39.967064, 34.853600, 29.129353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339478, 34.493927, 29.580301>,  <40.032692, 34.510197, 29.735792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339478, 34.493927, 29.580301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454285, 34.589073, 29.209133>,  <39.523170, 34.646160, 28.986431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454285, 34.589073, 29.209133>,  <39.339478, 34.493927, 29.580301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454285, 34.589073, 29.209133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703950, -0.604592, -0.372724,
		-0.649672, 0.760190, -0.006087,
		0.287021, 0.237863, -0.927922,
		39.540390, 34.660431, 28.930756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762348, 34.780502, 29.218393>,  <39.339478, 34.493927, 29.580301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762348, 34.780502, 29.218393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016151, 34.663464, 28.932238>,  <39.168434, 34.593243, 28.760544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016151, 34.663464, 28.932238>,  <38.762348, 34.780502, 29.218393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016151, 34.663464, 28.932238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683133, -0.645270, -0.341987,
		-0.361557, 0.705702, -0.609312,
		0.634512, -0.292593, -0.715391,
		39.206505, 34.575687, 28.717621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390583, 34.787010, 28.621866>,  <38.762348, 34.780502, 29.218393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390583, 34.787010, 28.621866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689072, 34.545780, 28.509113>,  <38.868164, 34.401043, 28.441462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689072, 34.545780, 28.509113>,  <38.390583, 34.787010, 28.621866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689072, 34.545780, 28.509113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654535, -0.587461, -0.475892,
		0.121404, 0.539621, -0.833108,
		0.746221, -0.603074, -0.281880,
		38.912937, 34.364857, 28.424549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390820, 34.604141, 27.904327>,  <38.390583, 34.787010, 28.621866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390820, 34.604141, 27.904327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552242, 34.330086, 28.146893>,  <38.649094, 34.165653, 28.292431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552242, 34.330086, 28.146893>,  <38.390820, 34.604141, 27.904327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552242, 34.330086, 28.146893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713304, -0.650665, -0.260446,
		0.573012, -0.327452, -0.751287,
		0.403553, -0.685135, 0.606412,
		38.673309, 34.124546, 28.328815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439014, 33.894970, 27.522173>,  <38.390820, 34.604141, 27.904327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439014, 33.894970, 27.522173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445545, 33.808197, 27.912594>,  <38.449463, 33.756134, 28.146847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445545, 33.808197, 27.912594>,  <38.439014, 33.894970, 27.522173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445545, 33.808197, 27.912594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623625, -0.765249, -0.159647,
		0.781554, -0.606083, -0.147775,
		0.016325, -0.216928, 0.976051,
		38.450443, 33.743118, 28.205410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743263, 33.229076, 27.602081>,  <38.439014, 33.894970, 27.522173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743263, 33.229076, 27.602081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506367, 33.306419, 27.914968>,  <38.364227, 33.352825, 28.102701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506367, 33.306419, 27.914968>,  <38.743263, 33.229076, 27.602081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506367, 33.306419, 27.914968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579381, -0.776846, -0.246633,
		0.559972, -0.599268, 0.572110,
		-0.592241, 0.193362, 0.782216,
		38.328693, 33.364429, 28.149633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536320, 32.527649, 27.954319>,  <38.743263, 33.229076, 27.602081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536320, 32.527649, 27.954319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271248, 32.818466, 28.026167>,  <38.112206, 32.992958, 28.069277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271248, 32.818466, 28.026167>,  <38.536320, 32.527649, 27.954319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271248, 32.818466, 28.026167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738218, -0.593791, -0.320073,
		-0.126049, -0.344706, 0.930209,
		-0.662681, 0.727042, 0.179621,
		38.072445, 33.036579, 28.080053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662598, 32.152046, 27.220026>,  <38.536320, 32.527649, 27.954319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662598, 32.152046, 27.220026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559093, 32.295422, 26.861237>,  <38.496990, 32.381447, 26.645962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559093, 32.295422, 26.861237>,  <38.662598, 32.152046, 27.220026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559093, 32.295422, 26.861237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598853, 0.669076, 0.440128,
		0.757904, 0.651044, 0.041522,
		-0.258761, 0.358441, -0.896974,
		38.481464, 32.402954, 26.592144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327599, 32.167591, 27.316719>,  <38.662598, 32.152046, 27.220026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327599, 32.167591, 27.316719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526318, 31.875051, 27.503616>,  <39.645550, 31.699528, 27.615755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526318, 31.875051, 27.503616>,  <39.327599, 32.167591, 27.316719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526318, 31.875051, 27.503616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788172, 0.605573, 0.109844,
		-0.363284, 0.313697, 0.877279,
		0.496799, -0.731352, 0.467243,
		39.675358, 31.655645, 27.643789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593548, 32.299744, 28.047676>,  <39.327599, 32.167591, 27.316719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593548, 32.299744, 28.047676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812706, 32.049194, 27.825878>,  <39.944202, 31.898865, 27.692799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812706, 32.049194, 27.825878>,  <39.593548, 32.299744, 28.047676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812706, 32.049194, 27.825878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832950, 0.469872, 0.292258,
		0.077480, -0.621994, 0.779179,
		0.547897, -0.626373, -0.554496,
		39.977074, 31.861282, 27.659529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047951, 31.919682, 28.465574>,  <39.593548, 32.299744, 28.047676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047951, 31.919682, 28.465574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190262, 32.011814, 28.103277>,  <40.275650, 32.067093, 27.885899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190262, 32.011814, 28.103277>,  <40.047951, 31.919682, 28.465574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190262, 32.011814, 28.103277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813943, 0.399887, 0.421410,
		0.459258, -0.887152, -0.045204,
		0.355779, 0.230329, -0.905743,
		40.296997, 32.080914, 27.831554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742268, 31.630623, 28.303984>,  <40.047951, 31.919682, 28.465574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742268, 31.630623, 28.303984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712418, 31.981890, 28.114985>,  <40.694508, 32.192650, 28.001585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712418, 31.981890, 28.114985>,  <40.742268, 31.630623, 28.303984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712418, 31.981890, 28.114985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835098, 0.313998, 0.451681,
		0.545015, -0.360876, -0.756788,
		-0.074629, 0.878165, -0.472500,
		40.690029, 32.245338, 27.973234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388153, 31.856909, 27.829252>,  <40.742268, 31.630623, 28.303984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388153, 31.856909, 27.829252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158169, 32.128273, 28.012196>,  <41.020176, 32.291092, 28.121962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158169, 32.128273, 28.012196>,  <41.388153, 31.856909, 27.829252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158169, 32.128273, 28.012196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702647, 0.123039, 0.700819,
		0.419169, 0.724308, -0.547425,
		-0.574964, 0.678409, 0.457359,
		40.985680, 32.331795, 28.149403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877228, 32.300896, 28.054108>,  <41.388153, 31.856909, 27.829252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877228, 32.300896, 28.054108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542030, 32.338753, 28.269072>,  <41.340912, 32.361465, 28.398050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542030, 32.338753, 28.269072>,  <41.877228, 32.300896, 28.054108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542030, 32.338753, 28.269072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543227, 0.237924, 0.805169,
		-0.051660, 0.966662, -0.250791,
		-0.837995, 0.094641, 0.537408,
		41.290630, 32.367146, 28.430294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888340, 33.018196, 28.318501>,  <41.877228, 32.300896, 28.054108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888340, 33.018196, 28.318501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676861, 32.764973, 28.544676>,  <41.549973, 32.613041, 28.680382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676861, 32.764973, 28.544676>,  <41.888340, 33.018196, 28.318501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676861, 32.764973, 28.544676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423553, 0.380532, 0.822070,
		-0.735582, 0.674120, 0.066945,
		-0.528698, -0.633054, 0.565438,
		41.518250, 32.575058, 28.714308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585217, 33.393318, 28.874855>,  <41.888340, 33.018196, 28.318501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585217, 33.393318, 28.874855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552666, 33.018311, 29.010166>,  <41.533134, 32.793304, 29.091352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552666, 33.018311, 29.010166>,  <41.585217, 33.393318, 28.874855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552666, 33.018311, 29.010166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277962, 0.304591, 0.911022,
		-0.957139, 0.168169, 0.235807,
		-0.081381, -0.937520, 0.338280,
		41.528252, 32.737053, 29.111650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126831, 33.434338, 29.519381>,  <41.585217, 33.393318, 28.874855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126831, 33.434338, 29.519381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326698, 33.089012, 29.547728>,  <41.446617, 32.881817, 29.564735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326698, 33.089012, 29.547728>,  <41.126831, 33.434338, 29.519381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326698, 33.089012, 29.547728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487805, 0.348047, 0.800568,
		-0.715807, -0.365448, 0.595036,
		0.499667, -0.863314, 0.070867,
		41.476597, 32.830017, 29.568987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043091, 33.201248, 30.152716>,  <41.126831, 33.434338, 29.519381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043091, 33.201248, 30.152716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369850, 33.009251, 30.024784>,  <41.565907, 32.894051, 29.948025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369850, 33.009251, 30.024784>,  <41.043091, 33.201248, 30.152716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369850, 33.009251, 30.024784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393936, 0.059272, 0.917225,
		-0.421305, -0.875267, 0.237505,
		0.816895, -0.479994, -0.319828,
		41.614918, 32.865253, 29.928835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240055, 32.693008, 30.598471>,  <41.043091, 33.201248, 30.152716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240055, 32.693008, 30.598471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588478, 32.780457, 30.422533>,  <41.797531, 32.832928, 30.316971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588478, 32.780457, 30.422533>,  <41.240055, 32.693008, 30.598471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588478, 32.780457, 30.422533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432397, 0.083484, 0.897810,
		0.233004, -0.972231, -0.021814,
		0.871058, 0.218625, -0.439842,
		41.849796, 32.846043, 30.290581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551292, 32.396061, 31.189533>,  <41.240055, 32.693008, 30.598471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551292, 32.396061, 31.189533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839462, 32.557743, 30.964106>,  <42.012363, 32.654751, 30.828850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839462, 32.557743, 30.964106>,  <41.551292, 32.396061, 31.189533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839462, 32.557743, 30.964106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513652, 0.235028, 0.825181,
		0.465997, -0.883957, -0.038301,
		0.720423, 0.404205, -0.563568,
		42.055588, 32.679005, 30.795034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202175, 32.214737, 31.584902>,  <41.551292, 32.396061, 31.189533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202175, 32.214737, 31.584902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289021, 32.510845, 31.330387>,  <42.341129, 32.688511, 31.177679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289021, 32.510845, 31.330387>,  <42.202175, 32.214737, 31.584902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289021, 32.510845, 31.330387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573286, 0.430879, 0.696913,
		0.790066, -0.516085, -0.330836,
		0.217116, 0.740270, -0.636287,
		42.354156, 32.732925, 31.139502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982944, 32.298252, 31.566936>,  <42.202175, 32.214737, 31.584902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982944, 32.298252, 31.566936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816948, 32.639549, 31.440594>,  <42.717350, 32.844326, 31.364788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816948, 32.639549, 31.440594>,  <42.982944, 32.298252, 31.566936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816948, 32.639549, 31.440594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525738, 0.508222, 0.682137,
		0.742551, 0.117022, -0.659488,
		-0.414991, 0.853239, -0.315857,
		42.692451, 32.895519, 31.345837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.542675, 32.718582, 31.489233>,  <42.982944, 32.298252, 31.566936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.542675, 32.718582, 31.489233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.209648, 32.928959, 31.558773>,  <43.009834, 33.055183, 31.600496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.209648, 32.928959, 31.558773>,  <43.542675, 32.718582, 31.489233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209648, 32.928959, 31.558773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507493, 0.598447, 0.619928,
		0.222005, 0.604358, -0.765157,
		-0.832565, 0.525939, 0.173850,
		42.959877, 33.086742, 31.610928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782448, 33.409184, 31.542543>,  <43.542675, 32.718582, 31.489233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782448, 33.409184, 31.542543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434395, 33.410355, 31.739666>,  <43.225563, 33.411057, 31.857939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434395, 33.410355, 31.739666>,  <43.782448, 33.409184, 31.542543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434395, 33.410355, 31.739666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336330, 0.734423, 0.589495,
		-0.360204, 0.678686, -0.640030,
		-0.870135, 0.002923, 0.492805,
		43.173355, 33.411232, 31.887508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689800, 34.132969, 31.668989>,  <43.782448, 33.409184, 31.542543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689800, 34.132969, 31.668989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441299, 33.960678, 31.930836>,  <43.292198, 33.857304, 32.087944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441299, 33.960678, 31.930836>,  <43.689800, 34.132969, 31.668989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441299, 33.960678, 31.930836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222758, 0.703847, 0.674521,
		-0.751281, 0.564869, -0.341319,
		-0.621253, -0.430724, 0.654616,
		43.254925, 33.831459, 32.127220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330944, 34.678455, 31.848215>,  <43.689800, 34.132969, 31.668989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330944, 34.678455, 31.848215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276573, 34.409454, 32.139217>,  <43.243950, 34.248055, 32.313820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276573, 34.409454, 32.139217>,  <43.330944, 34.678455, 31.848215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276573, 34.409454, 32.139217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199456, 0.700712, 0.684997,
		-0.970433, 0.238217, 0.038887,
		-0.135929, -0.672500, 0.727508,
		43.235794, 34.207703, 32.357471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904922, 35.028389, 32.445759>,  <43.330944, 34.678455, 31.848215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904922, 35.028389, 32.445759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080994, 34.713497, 32.618507>,  <43.186634, 34.524563, 32.722157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080994, 34.713497, 32.618507>,  <42.904922, 35.028389, 32.445759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080994, 34.713497, 32.618507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283645, 0.578250, 0.764965,
		-0.851934, -0.214221, 0.477826,
		0.440175, -0.787233, 0.431868,
		43.213047, 34.477325, 32.748070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797417, 35.138947, 33.152203>,  <42.904922, 35.028389, 32.445759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797417, 35.138947, 33.152203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109581, 34.891533, 33.115620>,  <43.296879, 34.743084, 33.093670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109581, 34.891533, 33.115620>,  <42.797417, 35.138947, 33.152203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109581, 34.891533, 33.115620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423531, 0.415338, 0.805056,
		-0.459973, -0.667012, 0.586106,
		0.780414, -0.618538, -0.091456,
		43.343704, 34.705971, 33.088184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948772, 35.006687, 33.831390>,  <42.797417, 35.138947, 33.152203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948772, 35.006687, 33.831390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.281509, 34.933292, 33.621868>,  <43.481152, 34.889256, 33.496155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.281509, 34.933292, 33.621868>,  <42.948772, 35.006687, 33.831390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281509, 34.933292, 33.621868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542686, 0.466732, 0.698322,
		0.116341, -0.865155, 0.487824,
		0.831839, -0.183492, -0.523808,
		43.531059, 34.878246, 33.464725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429649, 34.802002, 34.278736>,  <42.948772, 35.006687, 33.831390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429649, 34.802002, 34.278736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.663696, 34.888474, 33.966095>,  <43.804123, 34.940357, 33.778511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.663696, 34.888474, 33.966095>,  <43.429649, 34.802002, 34.278736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663696, 34.888474, 33.966095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627662, 0.489571, 0.605277,
		0.513497, -0.844742, 0.150772,
		0.585117, 0.216174, -0.781606,
		43.839230, 34.953327, 33.731613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160389, 34.677971, 34.472183>,  <43.429649, 34.802002, 34.278736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160389, 34.677971, 34.472183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.187187, 34.930664, 34.163269>,  <44.203266, 35.082279, 33.977921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.187187, 34.930664, 34.163269>,  <44.160389, 34.677971, 34.472183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187187, 34.930664, 34.163269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644845, 0.563234, 0.516665,
		0.761371, -0.532621, -0.369632,
		0.066997, 0.631729, -0.772288,
		44.207287, 35.120182, 33.931583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930153, 34.855282, 34.370125>,  <44.160389, 34.677971, 34.472183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.930153, 34.855282, 34.370125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727638, 35.129734, 34.161163>,  <44.606129, 35.294403, 34.035786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727638, 35.129734, 34.161163>,  <44.930153, 34.855282, 34.370125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.727638, 35.129734, 34.161163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568630, 0.721040, 0.395932,
		0.648334, -0.096601, -0.755203,
		-0.506284, 0.686127, -0.522404,
		44.575752, 35.335571, 34.004440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.410847, 35.278400, 34.047920>,  <44.930153, 34.855282, 34.370125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.410847, 35.278400, 34.047920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.068325, 35.473457, 34.115967>,  <44.862812, 35.590492, 34.156796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.068325, 35.473457, 34.115967>,  <45.410847, 35.278400, 34.047920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.068325, 35.473457, 34.115967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505050, 0.721773, 0.473253,
		0.107990, 0.491170, -0.864344,
		-0.856308, 0.487643, 0.170121,
		44.811432, 35.619751, 34.167004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.027534, 35.660492, 34.357334>,  <45.410847, 35.278400, 34.047920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.027534, 35.660492, 34.357334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.355598, 35.521633, 34.175419>,  <46.552437, 35.438316, 34.066269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.355598, 35.521633, 34.175419>,  <46.027534, 35.660492, 34.357334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.355598, 35.521633, 34.175419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222598, -0.538648, 0.812594,
		-0.527061, -0.767689, -0.364501,
		0.820157, -0.347149, -0.454786,
		46.601646, 35.417488, 34.038982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.124962, 34.957645, 34.632500>,  <46.027534, 35.660492, 34.357334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.124962, 34.957645, 34.632500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.461773, 35.090694, 34.462627>,  <46.663860, 35.170525, 34.360703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.461773, 35.090694, 34.462627>,  <46.124962, 34.957645, 34.632500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.461773, 35.090694, 34.462627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524839, -0.323265, 0.787429,
		0.124629, -0.885926, -0.446770,
		0.842028, 0.332618, -0.424680,
		46.714382, 35.190479, 34.335224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.638229, 34.386833, 34.657288>,  <46.124962, 34.957645, 34.632500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.638229, 34.386833, 34.657288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.813240, 34.746357, 34.646629>,  <46.918247, 34.962070, 34.640232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.813240, 34.746357, 34.646629>,  <46.638229, 34.386833, 34.657288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.813240, 34.746357, 34.646629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670124, -0.306157, 0.676167,
		0.599587, -0.313699, -0.736266,
		0.437526, 0.898811, -0.026649,
		46.944496, 35.015999, 34.638634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.355434, 34.268978, 34.589645>,  <46.638229, 34.386833, 34.657288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.355434, 34.268978, 34.589645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.325401, 34.633400, 34.751801>,  <47.307381, 34.852055, 34.849094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.325401, 34.633400, 34.751801>,  <47.355434, 34.268978, 34.589645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.325401, 34.633400, 34.751801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833006, -0.166165, 0.527722,
		0.548146, 0.377311, -0.746440,
		-0.075083, 0.911057, 0.405385,
		47.302876, 34.906715, 34.873417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.001225, 34.711613, 34.541775>,  <47.355434, 34.268978, 34.589645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.001225, 34.711613, 34.541775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.769016, 34.781891, 34.859798>,  <47.629692, 34.824059, 35.050613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.769016, 34.781891, 34.859798>,  <48.001225, 34.711613, 34.541775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.769016, 34.781891, 34.859798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755294, -0.248573, 0.606418,
		0.304178, 0.952545, 0.011597,
		-0.580523, 0.175700, 0.795061,
		47.594860, 34.834602, 35.098316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.630917, 37.199020, 45.412251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.379932, 36.933075, 45.250141>,  <35.229343, 36.773506, 45.152874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.379932, 36.933075, 45.250141>,  <35.630917, 37.199020, 45.412251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379932, 36.933075, 45.250141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026589, 0.538474, -0.842222,
		0.778194, -0.517686, -0.355549,
		-0.627461, -0.664866, -0.405273,
		35.191692, 36.733616, 45.128559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949574, 37.099342, 44.710873>,  <35.630917, 37.199020, 45.412251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949574, 37.099342, 44.710873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.592388, 36.923962, 44.670147>,  <35.378075, 36.818733, 44.645710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.592388, 36.923962, 44.670147>,  <35.949574, 37.099342, 44.710873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592388, 36.923962, 44.670147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035690, 0.294452, -0.955000,
		0.448707, -0.849149, -0.278584,
		-0.892966, -0.438458, -0.101817,
		35.324497, 36.792423, 44.639603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004402, 36.664429, 44.072052>,  <35.949574, 37.099342, 44.710873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004402, 36.664429, 44.072052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.616821, 36.730812, 44.145363>,  <35.384274, 36.770641, 44.189350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.616821, 36.730812, 44.145363>,  <36.004402, 36.664429, 44.072052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616821, 36.730812, 44.145363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150777, 0.190853, -0.969970,
		-0.195949, -0.967489, -0.159905,
		-0.968953, 0.165954, 0.183273,
		35.326134, 36.780598, 44.200344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568035, 36.201641, 43.679504>,  <36.004402, 36.664429, 44.072052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568035, 36.201641, 43.679504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.339569, 36.520618, 43.757320>,  <35.202488, 36.712006, 43.804008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.339569, 36.520618, 43.757320>,  <35.568035, 36.201641, 43.679504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339569, 36.520618, 43.757320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233587, 0.069294, -0.969864,
		-0.786895, -0.599398, 0.146694,
		-0.571169, 0.797446, 0.194538,
		35.168217, 36.759853, 43.815681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994724, 36.081440, 43.225021>,  <35.568035, 36.201641, 43.679504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994724, 36.081440, 43.225021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.979019, 36.469795, 43.319534>,  <34.969597, 36.702808, 43.376244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.979019, 36.469795, 43.319534>,  <34.994724, 36.081440, 43.225021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979019, 36.469795, 43.319534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263161, 0.218069, -0.939783,
		-0.963952, -0.099083, 0.246938,
		-0.039267, 0.970891, 0.236283,
		34.967239, 36.761063, 43.390419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359707, 36.440193, 42.870975>,  <34.994724, 36.081440, 43.225021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359707, 36.440193, 42.870975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.627499, 36.725491, 42.954006>,  <34.788174, 36.896667, 43.003826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.627499, 36.725491, 42.954006>,  <34.359707, 36.440193, 42.870975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627499, 36.725491, 42.954006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008433, 0.272123, -0.962226,
		-0.742786, 0.645937, 0.176165,
		0.669476, 0.713242, 0.207576,
		34.828342, 36.939465, 43.016277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082344, 36.988033, 42.536232>,  <34.359707, 36.440193, 42.870975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082344, 36.988033, 42.536232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.471363, 37.059319, 42.596088>,  <34.704773, 37.102089, 42.632004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.471363, 37.059319, 42.596088>,  <34.082344, 36.988033, 42.536232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471363, 37.059319, 42.596088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073826, 0.373548, -0.924668,
		-0.220687, 0.910331, 0.350136,
		0.972547, 0.178213, 0.149643,
		34.763126, 37.112782, 42.640980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187416, 37.717430, 42.192337>,  <34.082344, 36.988033, 42.536232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187416, 37.717430, 42.192337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.561981, 37.587971, 42.246582>,  <34.786720, 37.510296, 42.279129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.561981, 37.587971, 42.246582>,  <34.187416, 37.717430, 42.192337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561981, 37.587971, 42.246582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244955, 0.326163, -0.913025,
		0.251263, 0.888185, 0.384701,
		0.936410, -0.323644, 0.135613,
		34.842903, 37.490879, 42.287266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568722, 38.238243, 41.928402>,  <34.187416, 37.717430, 42.192337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568722, 38.238243, 41.928402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.818142, 37.926208, 41.907806>,  <34.967793, 37.738987, 41.895447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.818142, 37.926208, 41.907806>,  <34.568722, 38.238243, 41.928402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818142, 37.926208, 41.907806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204814, 0.226566, -0.952218,
		0.754479, 0.583208, 0.301048,
		0.623549, -0.780087, -0.051491,
		35.005207, 37.692181, 41.892361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132092, 38.561989, 41.623775>,  <34.568722, 38.238243, 41.928402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132092, 38.561989, 41.623775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.169918, 38.169735, 41.555172>,  <35.192616, 37.934383, 41.514011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.169918, 38.169735, 41.555172>,  <35.132092, 38.561989, 41.623775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169918, 38.169735, 41.555172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286172, 0.191787, -0.938788,
		0.953500, 0.039700, 0.298767,
		0.094569, -0.980633, -0.171507,
		35.198288, 37.875546, 41.503719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867374, 38.467510, 41.303585>,  <35.132092, 38.561989, 41.623775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867374, 38.467510, 41.303585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.630890, 38.153461, 41.229759>,  <35.488998, 37.965034, 41.185463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.630890, 38.153461, 41.229759>,  <35.867374, 38.467510, 41.303585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630890, 38.153461, 41.229759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275870, 0.018175, -0.961023,
		0.757870, -0.619080, 0.205845,
		-0.591209, -0.785117, -0.184560,
		35.453526, 37.917927, 41.174393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300198, 37.936409, 41.091965>,  <35.867374, 38.467510, 41.303585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300198, 37.936409, 41.091965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.929775, 37.885384, 40.949894>,  <35.707523, 37.854771, 40.864651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.929775, 37.885384, 40.949894>,  <36.300198, 37.936409, 41.091965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929775, 37.885384, 40.949894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362398, -0.037975, -0.931250,
		0.105305, -0.991103, 0.081395,
		-0.926055, -0.127562, -0.355175,
		35.651958, 37.847115, 40.843342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419514, 37.451664, 40.616600>,  <36.300198, 37.936409, 41.091965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419514, 37.451664, 40.616600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.068039, 37.607502, 40.506237>,  <35.857155, 37.701004, 40.440018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.068039, 37.607502, 40.506237>,  <36.419514, 37.451664, 40.616600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068039, 37.607502, 40.506237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195425, -0.233766, -0.952451,
		-0.435573, -0.890823, 0.129269,
		-0.878684, 0.389599, -0.275912,
		35.804432, 37.724380, 40.423462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969429, 36.860481, 40.271141>,  <36.419514, 37.451664, 40.616600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969429, 36.860481, 40.271141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.819828, 37.213203, 40.156216>,  <35.730068, 37.424835, 40.087261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.819828, 37.213203, 40.156216>,  <35.969429, 36.860481, 40.271141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819828, 37.213203, 40.156216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029752, -0.321048, -0.946595,
		-0.926952, -0.345477, 0.146307,
		-0.373998, 0.881801, -0.287318,
		35.707630, 37.477745, 40.070019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610813, 36.733124, 39.674652>,  <35.969429, 36.860481, 40.271141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610813, 36.733124, 39.674652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.629711, 37.131096, 39.639130>,  <35.641048, 37.369877, 39.617817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.629711, 37.131096, 39.639130>,  <35.610813, 36.733124, 39.674652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629711, 37.131096, 39.639130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206659, -0.077249, -0.975358,
		-0.977272, 0.064433, 0.201961,
		0.047244, 0.994928, -0.088809,
		35.643883, 37.429573, 39.612488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123375, 36.893864, 39.151924>,  <35.610813, 36.733124, 39.674652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123375, 36.893864, 39.151924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.356998, 37.217510, 39.177860>,  <35.497173, 37.411697, 39.193420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.356998, 37.217510, 39.177860>,  <35.123375, 36.893864, 39.151924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356998, 37.217510, 39.177860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025925, 0.061244, -0.997786,
		-0.811295, 0.584449, 0.014794,
		0.584061, 0.809116, 0.064839,
		35.532215, 37.460243, 39.197311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807678, 37.351852, 38.639778>,  <35.123375, 36.893864, 39.151924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807678, 37.351852, 38.639778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.175671, 37.491894, 38.710281>,  <35.396465, 37.575920, 38.752583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.175671, 37.491894, 38.710281>,  <34.807678, 37.351852, 38.639778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175671, 37.491894, 38.710281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168375, 0.053083, -0.984293,
		-0.353964, 0.935204, -0.010114,
		0.919978, 0.350107, 0.176254,
		35.451664, 37.596928, 38.763157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902225, 37.913574, 38.111576>,  <34.807678, 37.351852, 38.639778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902225, 37.913574, 38.111576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.260277, 37.785439, 38.235596>,  <35.475109, 37.708557, 38.310005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.260277, 37.785439, 38.235596>,  <34.902225, 37.913574, 38.111576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260277, 37.785439, 38.235596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332621, 0.016840, -0.942910,
		0.296827, 0.947154, 0.121625,
		0.895129, -0.320337, 0.310045,
		35.528816, 37.689339, 38.328609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340626, 38.388771, 37.881313>,  <34.902225, 37.913574, 38.111576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340626, 38.388771, 37.881313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.566681, 38.063263, 37.935570>,  <35.702316, 37.867958, 37.968124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.566681, 38.063263, 37.935570>,  <35.340626, 38.388771, 37.881313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566681, 38.063263, 37.935570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253719, 0.014986, -0.967162,
		0.785011, 0.580998, 0.214937,
		0.565141, -0.813767, 0.135646,
		35.736221, 37.819134, 37.976265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009922, 38.473835, 37.559986>,  <35.340626, 38.388771, 37.881313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009922, 38.473835, 37.559986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.988926, 38.075592, 37.590988>,  <35.976326, 37.836647, 37.609589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.988926, 38.075592, 37.590988>,  <36.009922, 38.473835, 37.559986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988926, 38.075592, 37.590988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427723, -0.092549, -0.899159,
		0.902384, -0.014049, 0.430703,
		-0.052493, -0.995609, 0.077506,
		35.973179, 37.776909, 37.614239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679005, 38.224361, 37.295689>,  <36.009922, 38.473835, 37.559986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679005, 38.224361, 37.295689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.420464, 37.919365, 37.284168>,  <36.265339, 37.736366, 37.277256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.420464, 37.919365, 37.284168>,  <36.679005, 38.224361, 37.295689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420464, 37.919365, 37.284168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303856, -0.222580, -0.926353,
		0.699928, -0.607503, 0.375553,
		-0.646353, -0.762495, -0.028803,
		36.226559, 37.690617, 37.275528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089115, 37.570217, 37.168812>,  <36.679005, 38.224361, 37.295689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089115, 37.570217, 37.168812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.713795, 37.492443, 37.054420>,  <36.488602, 37.445778, 36.985786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.713795, 37.492443, 37.054420>,  <37.089115, 37.570217, 37.168812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713795, 37.492443, 37.054420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345680, -0.504059, -0.791473,
		0.009743, -0.841497, 0.540174,
		-0.938302, -0.194439, -0.285978,
		36.432304, 37.434113, 36.968628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795708, 37.645042, 36.734894>,  <37.089115, 37.570217, 37.168812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795708, 37.645042, 36.734894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.162674, 37.584732, 36.882195>,  <38.382854, 37.548546, 36.970573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.162674, 37.584732, 36.882195>,  <37.795708, 37.645042, 36.734894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162674, 37.584732, 36.882195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396930, -0.281441, 0.873634,
		-0.028079, -0.947659, -0.318046,
		0.917419, -0.150773, 0.368252,
		38.437901, 37.539501, 36.992668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735779, 37.115337, 37.147133>,  <37.795708, 37.645042, 36.734894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735779, 37.115337, 37.147133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.084183, 37.268936, 37.269703>,  <38.293224, 37.361095, 37.343246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.084183, 37.268936, 37.269703>,  <37.735779, 37.115337, 37.147133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084183, 37.268936, 37.269703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264233, -0.159656, 0.951153,
		0.414161, -0.909427, -0.037597,
		0.871006, 0.383996, 0.306424,
		38.345486, 37.384136, 37.361629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058140, 36.646908, 37.623611>,  <37.735779, 37.115337, 37.147133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058140, 36.646908, 37.623611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.240471, 36.994522, 37.700539>,  <38.349869, 37.203091, 37.746696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.240471, 36.994522, 37.700539>,  <38.058140, 36.646908, 37.623611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240471, 36.994522, 37.700539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119745, -0.154234, 0.980751,
		0.881974, -0.470087, 0.033758,
		0.455832, 0.869040, 0.192320,
		38.377220, 37.255234, 37.758236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695225, 36.550034, 38.031349>,  <38.058140, 36.646908, 37.623611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695225, 36.550034, 38.031349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.591824, 36.929283, 38.105370>,  <38.529781, 37.156834, 38.149780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.591824, 36.929283, 38.105370>,  <38.695225, 36.550034, 38.031349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591824, 36.929283, 38.105370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091451, -0.166678, 0.981761,
		0.961671, 0.270714, -0.043620,
		-0.258507, 0.948121, 0.185046,
		38.514271, 37.213718, 38.160885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996929, 36.692356, 38.701813>,  <38.695225, 36.550034, 38.031349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996929, 36.692356, 38.701813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.764675, 37.013496, 38.647697>,  <38.625324, 37.206181, 38.615227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.764675, 37.013496, 38.647697>,  <38.996929, 36.692356, 38.701813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764675, 37.013496, 38.647697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143438, 0.062701, 0.987671,
		0.801432, 0.592878, 0.078753,
		-0.580630, 0.802848, -0.135292,
		38.590485, 37.254353, 38.607109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178650, 37.087173, 39.169552>,  <38.996929, 36.692356, 38.701813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178650, 37.087173, 39.169552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.851349, 37.299782, 39.081959>,  <38.654968, 37.427345, 39.029404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.851349, 37.299782, 39.081959>,  <39.178650, 37.087173, 39.169552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851349, 37.299782, 39.081959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170702, 0.139093, 0.975456,
		0.548934, 0.835547, -0.023081,
		-0.818250, 0.531521, -0.218983,
		38.605873, 37.459236, 39.016262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167828, 37.753677, 39.591011>,  <39.178650, 37.087173, 39.169552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167828, 37.753677, 39.591011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.802551, 37.616661, 39.502701>,  <38.583385, 37.534451, 39.449715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.802551, 37.616661, 39.502701>,  <39.167828, 37.753677, 39.591011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802551, 37.616661, 39.502701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225019, -0.027864, 0.973956,
		-0.339767, 0.939091, -0.051632,
		-0.913195, -0.342536, -0.220780,
		38.528591, 37.513901, 39.436466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750122, 38.189445, 40.017155>,  <39.167828, 37.753677, 39.591011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750122, 38.189445, 40.017155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.563103, 37.851048, 39.914639>,  <38.450890, 37.648010, 39.853127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.563103, 37.851048, 39.914639>,  <38.750122, 38.189445, 40.017155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563103, 37.851048, 39.914639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207799, -0.176622, 0.962094,
		-0.859194, 0.503088, -0.093217,
		-0.467553, -0.845995, -0.256294,
		38.422836, 37.597248, 39.837749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061901, 38.188980, 40.410122>,  <38.750122, 38.189445, 40.017155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061901, 38.188980, 40.410122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.125477, 37.807892, 40.306538>,  <38.163624, 37.579239, 40.244385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.125477, 37.807892, 40.306538>,  <38.061901, 38.188980, 40.410122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125477, 37.807892, 40.306538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357548, -0.300039, 0.884385,
		-0.920271, -0.047970, -0.388331,
		0.158938, -0.952720, -0.258965,
		38.173157, 37.522076, 40.228848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514507, 38.011093, 40.729572>,  <38.061901, 38.188980, 40.410122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514507, 38.011093, 40.729572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.765911, 37.710823, 40.648132>,  <37.916756, 37.530659, 40.599270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.765911, 37.710823, 40.648132>,  <37.514507, 38.011093, 40.729572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765911, 37.710823, 40.648132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171826, -0.389300, 0.904943,
		-0.758582, -0.533785, -0.373667,
		0.628514, -0.750679, -0.203598,
		37.954464, 37.485619, 40.587051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217056, 37.393024, 41.039619>,  <37.514507, 38.011093, 40.729572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217056, 37.393024, 41.039619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.601936, 37.295094, 40.991917>,  <37.832867, 37.236336, 40.963295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.601936, 37.295094, 40.991917>,  <37.217056, 37.393024, 41.039619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601936, 37.295094, 40.991917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056829, -0.247749, 0.967156,
		-0.266331, -0.937379, -0.224472,
		0.962205, -0.244827, -0.119254,
		37.890598, 37.221645, 40.956139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342304, 36.725121, 41.278664>,  <37.217056, 37.393024, 41.039619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342304, 36.725121, 41.278664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.681026, 36.934967, 41.313770>,  <37.884258, 37.060875, 41.334835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.681026, 36.934967, 41.313770>,  <37.342304, 36.725121, 41.278664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681026, 36.934967, 41.313770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022874, -0.128933, 0.991389,
		0.531411, -0.841521, -0.097181,
		0.846805, 0.524613, 0.087765,
		37.935066, 37.092350, 41.340099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771149, 36.304710, 41.648796>,  <37.342304, 36.725121, 41.278664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771149, 36.304710, 41.648796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.878960, 36.687325, 41.693340>,  <37.943645, 36.916893, 41.720066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.878960, 36.687325, 41.693340>,  <37.771149, 36.304710, 41.648796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878960, 36.687325, 41.693340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044396, -0.127855, 0.990799,
		0.961969, -0.262103, -0.076927,
		0.269527, 0.956533, 0.111356,
		37.959816, 36.974285, 41.726746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292084, 36.284847, 42.088146>,  <37.771149, 36.304710, 41.648796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292084, 36.284847, 42.088146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.164139, 36.658936, 42.148869>,  <38.087372, 36.883389, 42.185303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.164139, 36.658936, 42.148869>,  <38.292084, 36.284847, 42.088146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164139, 36.658936, 42.148869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060341, -0.180006, 0.981813,
		0.945540, 0.304886, 0.114010,
		-0.319863, 0.935223, 0.151806,
		38.068180, 36.939503, 42.194412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782612, 36.652939, 42.486679>,  <38.292084, 36.284847, 42.088146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782612, 36.652939, 42.486679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.437614, 36.847954, 42.540966>,  <38.230618, 36.964962, 42.573536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.437614, 36.847954, 42.540966>,  <38.782612, 36.652939, 42.486679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437614, 36.847954, 42.540966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025708, -0.225618, 0.973877,
		0.505422, 0.843447, 0.182059,
		-0.862489, 0.487538, 0.135716,
		38.178867, 36.994217, 42.581680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899158, 36.993252, 43.074898>,  <38.782612, 36.652939, 42.486679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899158, 36.993252, 43.074898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501011, 36.995079, 43.036499>,  <38.262123, 36.996178, 43.013462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501011, 36.995079, 43.036499>,  <38.899158, 36.993252, 43.074898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501011, 36.995079, 43.036499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093183, -0.290179, 0.952425,
		-0.023501, 0.956962, 0.289262,
		-0.995372, 0.004572, -0.095992,
		38.202400, 36.996452, 43.007702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638878, 37.325947, 43.677452>,  <38.899158, 36.993252, 43.074898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638878, 37.325947, 43.677452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.323936, 37.108040, 43.562004>,  <38.134972, 36.977295, 43.492737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.323936, 37.108040, 43.562004>,  <38.638878, 37.325947, 43.677452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323936, 37.108040, 43.562004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151044, -0.283432, 0.947023,
		-0.597708, 0.789239, 0.140879,
		-0.787357, -0.544764, -0.288620,
		38.087730, 36.944611, 43.475418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043800, 37.504490, 44.186642>,  <38.638878, 37.325947, 43.677452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043800, 37.504490, 44.186642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.957069, 37.157833, 44.006901>,  <37.905029, 36.949841, 43.899055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.957069, 37.157833, 44.006901>,  <38.043800, 37.504490, 44.186642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957069, 37.157833, 44.006901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407219, -0.338045, 0.848468,
		-0.887219, 0.366955, -0.279616,
		-0.216827, -0.866642, -0.449352,
		37.892021, 36.897839, 43.872097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.287804, 37.370121, 44.172817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.421692, 36.995022, 44.135723>,  <37.502026, 36.769962, 44.113468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.421692, 36.995022, 44.135723>,  <37.287804, 37.370121, 44.172817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421692, 36.995022, 44.135723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314701, -0.204001, 0.927010,
		-0.888216, -0.281103, -0.363392,
		0.334717, -0.937744, -0.092734,
		37.522106, 36.713699, 44.107903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818401, 36.967304, 44.449261>,  <37.287804, 37.370121, 44.172817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818401, 36.967304, 44.449261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.127747, 36.713757, 44.444836>,  <37.313354, 36.561630, 44.442181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.127747, 36.713757, 44.444836>,  <36.818401, 36.967304, 44.449261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127747, 36.713757, 44.444836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191309, -0.249974, 0.949165,
		-0.604407, -0.731934, -0.314585,
		0.773364, -0.633865, -0.011061,
		37.359756, 36.523598, 44.441517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608658, 36.367229, 44.806995>,  <36.818401, 36.967304, 44.449261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608658, 36.367229, 44.806995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.004547, 36.311272, 44.795120>,  <37.242081, 36.277699, 44.787994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.004547, 36.311272, 44.795120>,  <36.608658, 36.367229, 44.806995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004547, 36.311272, 44.795120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010955, -0.281176, 0.959594,
		-0.142590, -0.949405, -0.279819,
		0.989721, -0.139894, -0.029692,
		37.301464, 36.269302, 44.786213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731159, 35.679806, 45.215103>,  <36.608658, 36.367229, 44.806995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731159, 35.679806, 45.215103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.065697, 35.899082, 45.213215>,  <37.266418, 36.030647, 45.212082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.065697, 35.899082, 45.213215>,  <36.731159, 35.679806, 45.215103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065697, 35.899082, 45.213215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095270, -0.136857, 0.985999,
		0.539866, -0.825083, -0.166685,
		0.836343, 0.548187, -0.004721,
		37.316601, 36.063538, 45.211800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298710, 35.259254, 45.442440>,  <36.731159, 35.679806, 45.215103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298710, 35.259254, 45.442440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.410114, 35.639481, 45.497383>,  <37.476955, 35.867615, 45.530350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.410114, 35.639481, 45.497383>,  <37.298710, 35.259254, 45.442440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410114, 35.639481, 45.497383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047818, -0.156559, 0.986510,
		0.959242, -0.268184, -0.089057,
		0.278509, 0.950561, 0.137354,
		37.493668, 35.924648, 45.538589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905666, 35.205406, 45.974503>,  <37.298710, 35.259254, 45.442440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905666, 35.205406, 45.974503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.793243, 35.588524, 45.998623>,  <37.725788, 35.818394, 46.013096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.793243, 35.588524, 45.998623>,  <37.905666, 35.205406, 45.974503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793243, 35.588524, 45.998623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075270, -0.040643, 0.996335,
		0.956733, 0.284570, -0.060670,
		-0.281061, 0.957793, 0.060304,
		37.708923, 35.875862, 46.016712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376816, 35.530674, 46.513336>,  <37.905666, 35.205406, 45.974503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376816, 35.530674, 46.513336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.039452, 35.743889, 46.486427>,  <37.837032, 35.871819, 46.470280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.039452, 35.743889, 46.486427>,  <38.376816, 35.530674, 46.513336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039452, 35.743889, 46.486427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021233, 0.158189, 0.987181,
		0.536845, 0.831173, -0.144736,
		-0.843413, 0.533037, -0.067275,
		37.786427, 35.903801, 46.466244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556599, 36.039665, 46.901867>,  <38.376816, 35.530674, 46.513336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556599, 36.039665, 46.901867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.158459, 36.070465, 46.878712>,  <37.919575, 36.088943, 46.864819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.158459, 36.070465, 46.878712>,  <38.556599, 36.039665, 46.901867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158459, 36.070465, 46.878712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068757, -0.146918, 0.986756,
		0.067473, 0.986147, 0.151529,
		-0.995349, 0.076998, -0.057891,
		37.859856, 36.093563, 46.861343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377125, 36.531979, 47.355312>,  <38.556599, 36.039665, 46.901867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377125, 36.531979, 47.355312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.034859, 36.331627, 47.303223>,  <37.829498, 36.211418, 47.271969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.034859, 36.331627, 47.303223>,  <38.377125, 36.531979, 47.355312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034859, 36.331627, 47.303223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082671, -0.116111, 0.989790,
		-0.510881, 0.857696, 0.057945,
		-0.855667, -0.500875, -0.130226,
		37.778160, 36.181366, 47.264156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001194, 36.714748, 47.893288>,  <38.377125, 36.531979, 47.355312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001194, 36.714748, 47.893288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.807880, 36.386951, 47.770084>,  <37.691891, 36.190273, 47.696163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.807880, 36.386951, 47.770084>,  <38.001194, 36.714748, 47.893288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807880, 36.386951, 47.770084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131195, -0.280059, 0.950976,
		-0.865576, 0.500003, 0.027836,
		-0.483286, -0.819490, -0.308010,
		37.662895, 36.141106, 47.677681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464809, 36.547115, 48.423996>,  <38.001194, 36.714748, 47.893288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464809, 36.547115, 48.423996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.540298, 36.207680, 48.226299>,  <37.585590, 36.004017, 48.107681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.540298, 36.207680, 48.226299>,  <37.464809, 36.547115, 48.423996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540298, 36.207680, 48.226299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000441, -0.503217, 0.864160,
		-0.982030, -0.163305, -0.094594,
		0.188723, -0.848590, -0.494246,
		37.596916, 35.953102, 48.078026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870865, 36.149334, 48.635254>,  <37.464809, 36.547115, 48.423996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870865, 36.149334, 48.635254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.168575, 35.912777, 48.511120>,  <37.347202, 35.770844, 48.436642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.168575, 35.912777, 48.511120>,  <36.870865, 36.149334, 48.635254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168575, 35.912777, 48.511120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122557, -0.577703, 0.806994,
		-0.656532, -0.562592, -0.502450,
		0.744275, -0.591396, -0.310331,
		37.391857, 35.735359, 48.418022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625343, 35.483025, 48.849777>,  <36.870865, 36.149334, 48.635254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625343, 35.483025, 48.849777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.007515, 35.401936, 48.763939>,  <37.236820, 35.353283, 48.712437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.007515, 35.401936, 48.763939>,  <36.625343, 35.483025, 48.849777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007515, 35.401936, 48.763939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027991, -0.661446, 0.749470,
		-0.293876, -0.722076, -0.626294,
		0.955434, -0.202720, -0.214594,
		37.294144, 35.341118, 48.699562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710369, 34.739841, 48.910534>,  <36.625343, 35.483025, 48.849777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710369, 34.739841, 48.910534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.078514, 34.891289, 48.949688>,  <37.299400, 34.982159, 48.973179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.078514, 34.891289, 48.949688>,  <36.710369, 34.739841, 48.910534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078514, 34.891289, 48.949688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206984, -0.683986, 0.699515,
		0.331804, -0.623545, -0.707883,
		0.920361, 0.378623, 0.097885,
		37.354622, 35.004875, 48.979053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236656, 34.333027, 48.644154>,  <36.710369, 34.739841, 48.910534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236656, 34.333027, 48.644154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.395237, 34.566334, 48.927738>,  <37.490387, 34.706318, 49.097889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.395237, 34.566334, 48.927738>,  <37.236656, 34.333027, 48.644154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395237, 34.566334, 48.927738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152944, -0.803413, 0.575444,
		0.905226, -0.119705, -0.407721,
		0.396452, 0.583265, 0.708962,
		37.514172, 34.741314, 49.140427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823269, 33.938168, 48.985458>,  <37.236656, 34.333027, 48.644154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823269, 33.938168, 48.985458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.779484, 34.242382, 49.241459>,  <37.753212, 34.424911, 49.395058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.779484, 34.242382, 49.241459>,  <37.823269, 33.938168, 48.985458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779484, 34.242382, 49.241459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328266, -0.580086, 0.745480,
		0.938221, 0.291693, -0.186161,
		-0.109462, 0.760536, 0.640002,
		37.746647, 34.470543, 49.433460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450912, 34.031361, 49.435989>,  <37.823269, 33.938168, 48.985458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450912, 34.031361, 49.435989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.159561, 34.190220, 49.659325>,  <37.984753, 34.285534, 49.793327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.159561, 34.190220, 49.659325>,  <38.450912, 34.031361, 49.435989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159561, 34.190220, 49.659325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363512, -0.466765, 0.806219,
		0.580801, 0.790193, 0.195613,
		-0.728374, 0.397145, 0.558343,
		37.941048, 34.309364, 49.826828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787643, 34.153549, 50.036327>,  <38.450912, 34.031361, 49.435989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787643, 34.153549, 50.036327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.405895, 34.137745, 50.154732>,  <38.176846, 34.128262, 50.225773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.405895, 34.137745, 50.154732>,  <38.787643, 34.153549, 50.036327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405895, 34.137745, 50.154732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277954, -0.479960, 0.832094,
		0.109199, 0.876400, 0.469039,
		-0.954367, -0.039507, 0.296010,
		38.119583, 34.125893, 50.243534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739388, 34.236046, 50.737289>,  <38.787643, 34.153549, 50.036327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739388, 34.236046, 50.737289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.376453, 34.077122, 50.682320>,  <38.158691, 33.981766, 50.649338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.376453, 34.077122, 50.682320>,  <38.739388, 34.236046, 50.737289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376453, 34.077122, 50.682320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106667, -0.533751, 0.838888,
		-0.406651, 0.746493, 0.526671,
		-0.907335, -0.397313, -0.137425,
		38.104252, 33.957928, 50.641090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412292, 34.197784, 51.412937>,  <38.739388, 34.236046, 50.737289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412292, 34.197784, 51.412937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.222958, 33.916584, 51.200623>,  <38.109356, 33.747864, 51.073235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.222958, 33.916584, 51.200623>,  <38.412292, 34.197784, 51.412937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222958, 33.916584, 51.200623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037643, -0.618158, 0.785153,
		-0.880078, 0.351660, 0.319058,
		-0.473335, -0.703006, -0.530790,
		38.080956, 33.705681, 51.041386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103199, 33.693546, 51.860992>,  <38.412292, 34.197784, 51.412937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103199, 33.693546, 51.860992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.054943, 33.473434, 51.530506>,  <38.025990, 33.341366, 51.332214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.054943, 33.473434, 51.530506>,  <38.103199, 33.693546, 51.860992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054943, 33.473434, 51.530506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060125, -0.826717, 0.559395,
		-0.990874, 0.117160, 0.066648,
		-0.120638, -0.550283, -0.826217,
		38.018753, 33.308350, 51.282642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566711, 33.207546, 51.994968>,  <38.103199, 33.693546, 51.860992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566711, 33.207546, 51.994968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.779766, 33.067471, 51.686768>,  <37.907597, 32.983425, 51.501846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.779766, 33.067471, 51.686768>,  <37.566711, 33.207546, 51.994968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779766, 33.067471, 51.686768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013582, -0.913804, 0.405928,
		-0.846238, -0.205745, -0.491478,
		0.532632, -0.350186, -0.770501,
		37.939556, 32.962414, 51.455616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300903, 32.616901, 51.589237>,  <37.566711, 33.207546, 51.994968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300903, 32.616901, 51.589237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.700764, 32.611214, 51.580265>,  <37.940678, 32.607800, 51.574883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.700764, 32.611214, 51.580265>,  <37.300903, 32.616901, 51.589237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700764, 32.611214, 51.580265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003743, -0.911591, 0.411081,
		-0.026292, -0.410852, -0.911323,
		0.999647, -0.014220, -0.022430,
		38.000656, 32.606949, 51.573536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936977, 32.049580, 51.808617>,  <37.300903, 32.616901, 51.589237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936977, 32.049580, 51.808617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.808273, 31.734221, 51.598892>,  <36.731052, 31.545006, 51.473057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.808273, 31.734221, 51.598892>,  <36.936977, 32.049580, 51.808617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808273, 31.734221, 51.598892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123482, 0.583975, -0.802325,
		0.938736, -0.193410, -0.285249,
		-0.321756, -0.788395, -0.524316,
		36.711746, 31.497702, 51.441597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268326, 31.994162, 51.148033>,  <36.936977, 32.049580, 51.808617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268326, 31.994162, 51.148033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.931469, 31.783270, 51.102734>,  <36.729355, 31.656734, 51.075554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.931469, 31.783270, 51.102734>,  <37.268326, 31.994162, 51.148033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931469, 31.783270, 51.102734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207976, 0.511313, -0.833850,
		0.497521, -0.678676, -0.540251,
		-0.842152, -0.527217, -0.113241,
		36.678825, 31.625101, 51.068760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263268, 31.731693, 50.509575>,  <37.268326, 31.994162, 51.148033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263268, 31.731693, 50.509575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.886478, 31.762590, 50.640251>,  <36.660404, 31.781130, 50.718658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.886478, 31.762590, 50.640251>,  <37.263268, 31.731693, 50.509575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886478, 31.762590, 50.640251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253284, 0.475161, -0.842656,
		-0.220321, -0.876502, -0.428022,
		-0.941969, 0.077244, 0.326691,
		36.603889, 31.785763, 50.738258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902924, 31.648453, 49.901150>,  <37.263268, 31.731693, 50.509575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902924, 31.648453, 49.901150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.668308, 31.856777, 50.149258>,  <36.527538, 31.981771, 50.298122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.668308, 31.856777, 50.149258>,  <36.902924, 31.648453, 49.901150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668308, 31.856777, 50.149258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304189, 0.568115, -0.764666,
		-0.750629, -0.637183, -0.174795,
		-0.586536, 0.520810, 0.620268,
		36.492348, 32.013020, 50.335339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300888, 31.584152, 49.610485>,  <36.902924, 31.648453, 49.901150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300888, 31.584152, 49.610485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.249939, 31.904902, 49.843987>,  <36.219368, 32.097351, 49.984089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.249939, 31.904902, 49.843987>,  <36.300888, 31.584152, 49.610485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249939, 31.904902, 49.843987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311170, 0.526531, -0.791163,
		-0.941780, -0.282423, 0.182452,
		-0.127376, 0.801875, 0.583757,
		36.211727, 32.145462, 50.019115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909576, 31.872980, 49.224396>,  <36.300888, 31.584152, 49.610485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909576, 31.872980, 49.224396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.958633, 32.151680, 49.507095>,  <35.988068, 32.318901, 49.676716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.958633, 32.151680, 49.507095>,  <35.909576, 31.872980, 49.224396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958633, 32.151680, 49.507095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558420, 0.637153, -0.531229,
		-0.820442, -0.329511, 0.467223,
		0.122647, 0.696749, 0.706752,
		35.995426, 32.360706, 49.719120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279556, 32.182076, 49.369247>,  <35.909576, 31.872980, 49.224396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279556, 32.182076, 49.369247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.533672, 32.465134, 49.492954>,  <35.686142, 32.634968, 49.567177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.533672, 32.465134, 49.492954>,  <35.279556, 32.182076, 49.369247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533672, 32.465134, 49.492954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383199, 0.636535, -0.669314,
		-0.670492, 0.306701, 0.675555,
		0.635294, 0.707642, 0.309264,
		35.724262, 32.677425, 49.585735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865242, 32.826542, 49.468140>,  <35.279556, 32.182076, 49.369247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865242, 32.826542, 49.468140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.255470, 32.880970, 49.399155>,  <35.489609, 32.913628, 49.357765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.255470, 32.880970, 49.399155>,  <34.865242, 32.826542, 49.468140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255470, 32.880970, 49.399155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217421, 0.710302, -0.669476,
		0.031400, 0.690619, 0.722537,
		0.975573, 0.136073, -0.172459,
		35.548141, 32.921791, 49.347416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005402, 33.514145, 49.414387>,  <34.865242, 32.826542, 49.468140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005402, 33.514145, 49.414387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.309158, 33.354885, 49.208553>,  <35.491413, 33.259327, 49.085052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.309158, 33.354885, 49.208553>,  <35.005402, 33.514145, 49.414387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309158, 33.354885, 49.208553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113528, 0.697680, -0.707357,
		0.640651, 0.595581, 0.484612,
		0.759393, -0.398152, -0.514585,
		35.536976, 33.235439, 49.054176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235245, 34.132607, 49.125195>,  <35.005402, 33.514145, 49.414387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235245, 34.132607, 49.125195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.426800, 33.825073, 48.955692>,  <35.541733, 33.640553, 48.853992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.426800, 33.825073, 48.955692>,  <35.235245, 34.132607, 49.125195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426800, 33.825073, 48.955692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212671, 0.569928, -0.793696,
		0.851725, 0.289974, 0.436441,
		0.478891, -0.768829, -0.423752,
		35.570465, 33.594425, 48.828568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790985, 34.422916, 48.732349>,  <35.235245, 34.132607, 49.125195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790985, 34.422916, 48.732349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.681496, 34.072075, 48.574482>,  <35.615803, 33.861568, 48.479763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.681496, 34.072075, 48.574482>,  <35.790985, 34.422916, 48.732349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681496, 34.072075, 48.574482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216705, 0.456031, -0.863177,
		0.937077, -0.150747, -0.314900,
		-0.273725, -0.877104, -0.394669,
		35.599377, 33.808945, 48.456081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213554, 34.340694, 48.207703>,  <35.790985, 34.422916, 48.732349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213554, 34.340694, 48.207703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.904453, 34.102467, 48.119926>,  <35.718994, 33.959530, 48.067261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.904453, 34.102467, 48.119926>,  <36.213554, 34.340694, 48.207703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904453, 34.102467, 48.119926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173662, 0.530941, -0.829424,
		0.610489, -0.602829, -0.513713,
		-0.772752, -0.595566, -0.219445,
		35.672626, 33.923798, 48.054092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415798, 34.041981, 47.640408>,  <36.213554, 34.340694, 48.207703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415798, 34.041981, 47.640408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.017998, 34.001766, 47.628632>,  <35.779320, 33.977638, 47.621567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.017998, 34.001766, 47.628632>,  <36.415798, 34.041981, 47.640408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017998, 34.001766, 47.628632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043156, 0.649247, -0.759352,
		0.095451, -0.753904, -0.650014,
		-0.994498, -0.100533, -0.029435,
		35.719646, 33.971607, 47.619801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211853, 33.857933, 46.938721>,  <36.415798, 34.041981, 47.640408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211853, 33.857933, 46.938721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.877216, 34.014366, 47.092171>,  <35.676434, 34.108227, 47.184242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.877216, 34.014366, 47.092171>,  <36.211853, 33.857933, 46.938721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877216, 34.014366, 47.092171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119880, 0.552607, -0.824775,
		-0.534553, -0.735988, -0.415422,
		-0.836589, 0.391085, 0.383628,
		35.626240, 34.131691, 47.207260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838501, 33.913254, 46.380024>,  <36.211853, 33.857933, 46.938721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838501, 33.913254, 46.380024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.646610, 34.148430, 46.640541>,  <35.531475, 34.289536, 46.796852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.646610, 34.148430, 46.640541>,  <35.838501, 33.913254, 46.380024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646610, 34.148430, 46.640541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137638, 0.682671, -0.717647,
		-0.866553, -0.433920, -0.246575,
		-0.479731, 0.587941, 0.651294,
		35.502689, 34.324814, 46.835930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289040, 34.242001, 45.940239>,  <35.838501, 33.913254, 46.380024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289040, 34.242001, 45.940239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.324036, 34.485897, 46.255341>,  <35.345032, 34.632236, 46.444401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.324036, 34.485897, 46.255341>,  <35.289040, 34.242001, 45.940239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324036, 34.485897, 46.255341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236751, 0.780858, -0.578109,
		-0.967623, -0.135924, 0.212673,
		0.087488, 0.609742, 0.787756,
		35.350281, 34.668819, 46.491669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661381, 34.661339, 45.945305>,  <35.289040, 34.242001, 45.940239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661381, 34.661339, 45.945305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.917656, 34.861691, 46.178074>,  <35.071423, 34.981903, 46.317738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.917656, 34.861691, 46.178074>,  <34.661381, 34.661339, 45.945305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917656, 34.861691, 46.178074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182456, 0.835523, -0.518277,
		-0.745808, 0.225878, 0.626698,
		0.640688, 0.500880, 0.581927,
		35.109863, 35.011955, 46.352654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285408, 35.202766, 46.224293>,  <34.661381, 34.661339, 45.945305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285408, 35.202766, 46.224293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.676376, 35.285221, 46.205750>,  <34.910957, 35.334694, 46.194626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.676376, 35.285221, 46.205750>,  <34.285408, 35.202766, 46.224293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676376, 35.285221, 46.205750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204140, 0.864768, -0.458807,
		-0.054491, 0.457912, 0.887326,
		0.977424, 0.206140, -0.046356,
		34.969604, 35.347061, 46.191841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243599, 35.873611, 46.352852>,  <34.285408, 35.202766, 46.224293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243599, 35.873611, 46.352852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.611031, 35.819603, 46.204269>,  <34.831490, 35.787197, 46.115120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.611031, 35.819603, 46.204269>,  <34.243599, 35.873611, 46.352852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611031, 35.819603, 46.204269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009812, 0.947342, -0.320072,
		0.395116, 0.290366, 0.871534,
		0.918579, -0.135017, -0.371461,
		34.886604, 35.779099, 46.092831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508743, 36.580795, 46.300705>,  <34.243599, 35.873611, 46.352852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508743, 36.580795, 46.300705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761250, 36.374233, 46.069244>,  <34.912754, 36.250298, 45.930370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761250, 36.374233, 46.069244>,  <34.508743, 36.580795, 46.300705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761250, 36.374233, 46.069244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029595, 0.729513, -0.683327,
		0.775003, 0.448485, 0.445232,
		0.631265, -0.516403, -0.578647,
		34.950630, 36.219311, 45.895649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148781, 36.897160, 46.113846>,  <34.508743, 36.580795, 46.300705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148781, 36.897160, 46.113846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.095493, 36.644520, 45.808338>,  <35.063522, 36.492935, 45.625034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.095493, 36.644520, 45.808338>,  <35.148781, 36.897160, 46.113846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095493, 36.644520, 45.808338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084189, 0.775061, -0.626253,
		0.987505, -0.019126, -0.156423,
		-0.133215, -0.631597, -0.763767,
		35.055527, 36.455040, 45.579208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.861183, 33.473015, 28.151932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.579773, 33.747620, 28.225422>,  <39.410927, 33.912380, 28.269516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.579773, 33.747620, 28.225422>,  <39.861183, 33.473015, 28.151932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579773, 33.747620, 28.225422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691909, 0.720678, -0.043410,
		-0.162207, 0.096580, -0.982019,
		-0.703527, 0.686509, 0.183724,
		39.368713, 33.953571, 28.280539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024437, 34.052769, 27.802345>,  <39.861183, 33.473015, 28.151932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024437, 34.052769, 27.802345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.774487, 34.195267, 28.080227>,  <39.624516, 34.280766, 28.246956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.774487, 34.195267, 28.080227>,  <40.024437, 34.052769, 27.802345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774487, 34.195267, 28.080227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580828, 0.806728, 0.108761,
		-0.521694, 0.471467, -0.711024,
		-0.624880, 0.356243, 0.694706,
		39.587021, 34.302139, 28.288639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023254, 34.808628, 27.751045>,  <40.024437, 34.052769, 27.802345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023254, 34.808628, 27.751045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.891884, 34.756882, 28.125298>,  <39.813061, 34.725834, 28.349848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.891884, 34.756882, 28.125298>,  <40.023254, 34.808628, 27.751045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891884, 34.756882, 28.125298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378933, 0.889319, 0.255973,
		-0.865186, 0.438608, -0.243054,
		-0.328424, -0.129363, 0.935630,
		39.793358, 34.718071, 28.405987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821278, 35.508781, 27.961390>,  <40.023254, 34.808628, 27.751045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821278, 35.508781, 27.961390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.883003, 35.296379, 28.294670>,  <39.920036, 35.168938, 28.494638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.883003, 35.296379, 28.294670>,  <39.821278, 35.508781, 27.961390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883003, 35.296379, 28.294670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366168, 0.813986, 0.450940,
		-0.917665, 0.235507, 0.320043,
		0.154312, -0.531002, 0.833202,
		39.929298, 35.137077, 28.544630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767082, 36.061409, 28.445610>,  <39.821278, 35.508781, 27.961390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767082, 36.061409, 28.445610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.886501, 35.755798, 28.674393>,  <39.958153, 35.572433, 28.811663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.886501, 35.755798, 28.674393>,  <39.767082, 36.061409, 28.445610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886501, 35.755798, 28.674393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479780, 0.638202, 0.602088,
		-0.825035, 0.094663, 0.557097,
		0.298545, -0.764027, 0.571956,
		39.976067, 35.526588, 28.845980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601189, 36.140499, 29.227167>,  <39.767082, 36.061409, 28.445610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601189, 36.140499, 29.227167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.917282, 35.896393, 29.204870>,  <40.106937, 35.749928, 29.191492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.917282, 35.896393, 29.204870>,  <39.601189, 36.140499, 29.227167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917282, 35.896393, 29.204870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486994, 0.570170, 0.661622,
		-0.371984, -0.549981, 0.747763,
		0.790231, -0.610268, -0.055743,
		40.154350, 35.713314, 29.188147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905964, 36.168774, 29.910814>,  <39.601189, 36.140499, 29.227167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905964, 36.168774, 29.910814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.194809, 35.998352, 29.692814>,  <40.368118, 35.896099, 29.562014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.194809, 35.998352, 29.692814>,  <39.905964, 36.168774, 29.910814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194809, 35.998352, 29.692814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679742, 0.290719, 0.673375,
		-0.128455, -0.856713, 0.499542,
		0.722115, -0.426058, -0.544999,
		40.411442, 35.870533, 29.529314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194633, 35.736233, 30.331156>,  <39.905964, 36.168774, 29.910814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194633, 35.736233, 30.331156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.487053, 35.816719, 30.070364>,  <40.662506, 35.865013, 29.913889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.487053, 35.816719, 30.070364>,  <40.194633, 35.736233, 30.331156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487053, 35.816719, 30.070364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600743, 0.263269, 0.754849,
		0.323535, -0.943504, 0.071583,
		0.731050, 0.201217, -0.651981,
		40.706367, 35.877087, 29.874769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773037, 35.355026, 30.533756>,  <40.194633, 35.736233, 30.331156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773037, 35.355026, 30.533756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.918701, 35.662960, 30.324095>,  <41.006100, 35.847721, 30.198298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.918701, 35.662960, 30.324095>,  <40.773037, 35.355026, 30.533756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918701, 35.662960, 30.324095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593231, 0.242121, 0.767759,
		0.717959, -0.590532, -0.368521,
		0.364160, 0.769837, -0.524155,
		41.027950, 35.893909, 30.166849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471371, 35.316322, 30.505365>,  <40.773037, 35.355026, 30.533756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471371, 35.316322, 30.505365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.425472, 35.701298, 30.406944>,  <41.397934, 35.932281, 30.347891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.425472, 35.701298, 30.406944>,  <41.471371, 35.316322, 30.505365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425472, 35.701298, 30.406944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675157, 0.257247, 0.691366,
		0.728695, -0.086794, -0.679316,
		-0.114745, 0.962440, -0.246054,
		41.391048, 35.990028, 30.333128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207233, 35.543205, 30.346302>,  <41.471371, 35.316322, 30.505365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207233, 35.543205, 30.346302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.008720, 35.881165, 30.426151>,  <41.889614, 36.083942, 30.474060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.008720, 35.881165, 30.426151>,  <42.207233, 35.543205, 30.346302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008720, 35.881165, 30.426151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662014, 0.219543, 0.716615,
		0.561643, 0.487794, -0.668291,
		-0.496280, 0.844901, 0.199622,
		41.859837, 36.134636, 30.486038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724442, 36.121922, 30.320608>,  <42.207233, 35.543205, 30.346302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724442, 36.121922, 30.320608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.417160, 36.264050, 30.533627>,  <42.232792, 36.349327, 30.661438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.417160, 36.264050, 30.533627>,  <42.724442, 36.121922, 30.320608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417160, 36.264050, 30.533627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637535, 0.348729, 0.686977,
		0.058382, 0.867258, -0.494425,
		-0.768206, 0.355320, 0.532548,
		42.186699, 36.370647, 30.693392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951355, 36.718182, 30.648300>,  <42.724442, 36.121922, 30.320608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951355, 36.718182, 30.648300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.621189, 36.632507, 30.857225>,  <42.423088, 36.581100, 30.982580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.621189, 36.632507, 30.857225>,  <42.951355, 36.718182, 30.648300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621189, 36.632507, 30.857225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495547, 0.168274, 0.852125,
		-0.270409, 0.962188, -0.032755,
		-0.825416, -0.214190, 0.522313,
		42.373566, 36.568249, 31.013920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964947, 37.159958, 31.161095>,  <42.951355, 36.718182, 30.648300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964947, 37.159958, 31.161095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.658028, 36.946651, 31.303579>,  <42.473877, 36.818668, 31.389071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.658028, 36.946651, 31.303579>,  <42.964947, 37.159958, 31.161095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658028, 36.946651, 31.303579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244974, 0.269600, 0.931291,
		-0.592662, 0.801836, -0.076226,
		-0.767294, -0.533268, 0.356211,
		42.427841, 36.786671, 31.410442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505444, 37.550293, 31.653154>,  <42.964947, 37.159958, 31.161095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505444, 37.550293, 31.653154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.446671, 37.164944, 31.742880>,  <42.411407, 36.933735, 31.796715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.446671, 37.164944, 31.742880>,  <42.505444, 37.550293, 31.653154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446671, 37.164944, 31.742880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101649, 0.210869, 0.972215,
		-0.983909, 0.165653, 0.066942,
		-0.146934, -0.963376, 0.224315,
		42.402592, 36.875931, 31.810175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996887, 37.514660, 32.219910>,  <42.505444, 37.550293, 31.653154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996887, 37.514660, 32.219910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.218800, 37.181992, 32.229202>,  <42.351948, 36.982391, 32.234776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.218800, 37.181992, 32.229202>,  <41.996887, 37.514660, 32.219910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218800, 37.181992, 32.229202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091931, 0.089023, 0.991778,
		-0.826905, -0.548080, 0.125844,
		0.554777, -0.831675, 0.023228,
		42.385231, 36.932487, 32.236172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678970, 37.081577, 32.714973>,  <41.996887, 37.514660, 32.219910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678970, 37.081577, 32.714973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.046124, 36.929230, 32.670391>,  <42.266415, 36.837822, 32.643642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.046124, 36.929230, 32.670391>,  <41.678970, 37.081577, 32.714973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046124, 36.929230, 32.670391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136234, 0.038624, 0.989923,
		-0.372724, -0.923823, 0.087339,
		0.917887, -0.380867, -0.111460,
		42.321491, 36.814968, 32.636951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752380, 36.584717, 33.273956>,  <41.678970, 37.081577, 32.714973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752380, 36.584717, 33.273956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.121239, 36.675465, 33.148621>,  <42.342552, 36.729916, 33.073421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.121239, 36.675465, 33.148621>,  <41.752380, 36.584717, 33.273956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121239, 36.675465, 33.148621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319804, 0.008645, 0.947444,
		0.217660, -0.973886, -0.064583,
		0.922144, 0.226874, -0.313335,
		42.397881, 36.743526, 33.054619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084610, 36.148552, 33.596882>,  <41.752380, 36.584717, 33.273956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084610, 36.148552, 33.596882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.347858, 36.435894, 33.506691>,  <42.505810, 36.608299, 33.452576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.347858, 36.435894, 33.506691>,  <42.084610, 36.148552, 33.596882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347858, 36.435894, 33.506691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398929, -0.078722, 0.913597,
		0.638537, -0.691208, -0.338381,
		0.658124, 0.718355, -0.225476,
		42.545296, 36.651402, 33.439049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701000, 36.006351, 34.012486>,  <42.084610, 36.148552, 33.596882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701000, 36.006351, 34.012486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.747192, 36.392082, 33.917206>,  <42.774910, 36.623520, 33.860039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.747192, 36.392082, 33.917206>,  <42.701000, 36.006351, 34.012486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747192, 36.392082, 33.917206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317172, 0.191447, 0.928843,
		0.941311, -0.182814, -0.283748,
		0.115483, 0.964327, -0.238195,
		42.781837, 36.681381, 33.845749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.341003, 36.139961, 34.433945>,  <42.701000, 36.006351, 34.012486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.341003, 36.139961, 34.433945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.200729, 36.496967, 34.320496>,  <43.116566, 36.711170, 34.252426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.200729, 36.496967, 34.320496>,  <43.341003, 36.139961, 34.433945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.200729, 36.496967, 34.320496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071839, 0.327601, 0.942081,
		0.933733, 0.310001, -0.179002,
		-0.350688, 0.892512, -0.283621,
		43.095524, 36.764721, 34.235409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.751591, 36.629860, 34.773148>,  <43.341003, 36.139961, 34.433945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.751591, 36.629860, 34.773148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.386082, 36.759224, 34.674824>,  <43.166775, 36.836842, 34.615829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.386082, 36.759224, 34.674824>,  <43.751591, 36.629860, 34.773148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.386082, 36.759224, 34.674824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158902, 0.272323, 0.948994,
		0.373855, 0.906226, -0.197451,
		-0.913774, 0.323411, -0.245811,
		43.111950, 36.856247, 34.601082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066906, 36.543964, 34.057903>,  <43.751591, 36.629860, 34.773148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066906, 36.543964, 34.057903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.340157, 36.264656, 33.972340>,  <44.504108, 36.097073, 33.921001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.340157, 36.264656, 33.972340>,  <44.066906, 36.543964, 34.057903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.340157, 36.264656, 33.972340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710860, -0.568654, -0.413898,
		0.167370, 0.434807, -0.884833,
		0.683129, -0.698267, -0.213912,
		44.545094, 36.055176, 33.908165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069603, 36.350937, 33.381935>,  <44.066906, 36.543964, 34.057903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069603, 36.350937, 33.381935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.214092, 36.017788, 33.549664>,  <44.300785, 35.817898, 33.650303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.214092, 36.017788, 33.549664>,  <44.069603, 36.350937, 33.381935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.214092, 36.017788, 33.549664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670084, -0.544574, -0.504406,
		0.648462, -0.098779, -0.754811,
		0.361226, -0.832875, 0.419326,
		44.322460, 35.767925, 33.675461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.213238, 35.857899, 32.815254>,  <44.069603, 36.350937, 33.381935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.213238, 35.857899, 32.815254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.225094, 35.638725, 33.149651>,  <44.232208, 35.507221, 33.350288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.225094, 35.638725, 33.149651>,  <44.213238, 35.857899, 32.815254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.225094, 35.638725, 33.149651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466897, -0.747103, -0.473121,
		0.883814, -0.376299, -0.277977,
		0.029642, -0.547938, 0.835993,
		44.233986, 35.474342, 33.400448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.535801, 35.177807, 32.663120>,  <44.213238, 35.857899, 32.815254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.535801, 35.177807, 32.663120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.312683, 35.131496, 32.991867>,  <44.178814, 35.103710, 33.189114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.312683, 35.131496, 32.991867>,  <44.535801, 35.177807, 32.663120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.312683, 35.131496, 32.991867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482066, -0.760881, -0.434364,
		0.675632, -0.638478, 0.368601,
		-0.557794, -0.115780, 0.821864,
		44.145344, 35.096764, 33.238426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.561188, 34.501095, 32.793194>,  <44.535801, 35.177807, 32.663120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.561188, 34.501095, 32.793194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.246220, 34.635689, 32.999786>,  <44.057240, 34.716446, 33.123741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.246220, 34.635689, 32.999786>,  <44.561188, 34.501095, 32.793194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246220, 34.635689, 32.999786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555388, -0.750770, -0.357616,
		0.267424, -0.568439, 0.778050,
		-0.787419, 0.336484, 0.516478,
		44.009995, 34.736633, 33.154732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.302628, 33.879608, 33.134270>,  <44.561188, 34.501095, 32.793194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.302628, 33.879608, 33.134270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.004517, 34.145771, 33.117363>,  <43.825649, 34.305470, 33.107220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.004517, 34.145771, 33.117363>,  <44.302628, 33.879608, 33.134270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004517, 34.145771, 33.117363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579156, -0.677471, -0.453445,
		-0.330359, -0.313467, 0.890282,
		-0.745280, 0.665411, -0.042262,
		43.780933, 34.345394, 33.104683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.794800, 33.379307, 33.084190>,  <44.302628, 33.879608, 33.134270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.794800, 33.379307, 33.084190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.641373, 33.741634, 33.012222>,  <43.549316, 33.959030, 32.969044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.641373, 33.741634, 33.012222>,  <43.794800, 33.379307, 33.084190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641373, 33.741634, 33.012222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711238, -0.414013, -0.568097,
		-0.589080, -0.089940, 0.803054,
		-0.383570, 0.905816, -0.179919,
		43.526302, 34.013378, 32.958248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.054867, 33.479610, 33.366951>,  <43.794800, 33.379307, 33.084190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.054867, 33.479610, 33.366951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.150425, 33.679073, 33.033657>,  <43.207760, 33.798752, 32.833683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.150425, 33.679073, 33.033657>,  <43.054867, 33.479610, 33.366951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150425, 33.679073, 33.033657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706043, -0.499902, -0.501599,
		-0.666657, 0.708127, 0.232646,
		0.238896, 0.498652, -0.833231,
		43.222095, 33.828671, 32.783688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499180, 33.233299, 32.994858>,  <43.054867, 33.479610, 33.366951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499180, 33.233299, 32.994858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.713192, 33.436085, 32.724529>,  <42.841599, 33.557755, 32.562332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.713192, 33.436085, 32.724529>,  <42.499180, 33.233299, 32.994858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713192, 33.436085, 32.724529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352341, -0.593160, -0.723890,
		-0.767855, 0.625422, -0.138734,
		0.535028, 0.506961, -0.675823,
		42.873699, 33.588173, 32.521782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061413, 33.503628, 32.471775>,  <42.499180, 33.233299, 32.994858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061413, 33.503628, 32.471775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.404308, 33.498508, 32.265869>,  <42.610046, 33.495438, 32.142326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.404308, 33.498508, 32.265869>,  <42.061413, 33.503628, 32.471775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404308, 33.498508, 32.265869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466336, -0.443220, -0.765563,
		-0.218356, 0.896321, -0.385913,
		0.857235, -0.012800, -0.514767,
		42.661480, 33.494667, 32.111439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863129, 33.694603, 31.841070>,  <42.061413, 33.503628, 32.471775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863129, 33.694603, 31.841070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.216095, 33.526073, 31.757324>,  <42.427876, 33.424957, 31.707077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.216095, 33.526073, 31.757324>,  <41.863129, 33.694603, 31.841070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.216095, 33.526073, 31.757324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329447, -0.235657, -0.914292,
		0.335876, 0.875758, -0.346751,
		0.882413, -0.421325, -0.209364,
		42.480820, 33.399677, 31.694515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053448, 33.960995, 31.121855>,  <41.863129, 33.694603, 31.841070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053448, 33.960995, 31.121855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.274029, 33.632793, 31.182095>,  <42.406376, 33.435875, 31.218239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.274029, 33.632793, 31.182095>,  <42.053448, 33.960995, 31.121855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.274029, 33.632793, 31.182095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108714, -0.249677, -0.962207,
		0.827093, 0.514238, -0.226884,
		0.551451, -0.820501, 0.150601,
		42.439465, 33.386642, 31.227274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476906, 33.887596, 30.474075>,  <42.053448, 33.960995, 31.121855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476906, 33.887596, 30.474075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.450520, 33.533756, 30.658739>,  <42.434689, 33.321453, 30.769537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.450520, 33.533756, 30.658739>,  <42.476906, 33.887596, 30.474075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450520, 33.533756, 30.658739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183965, -0.443954, -0.876962,
		0.980716, -0.142782, -0.133448,
		-0.065970, -0.884601, 0.461660,
		42.430729, 33.268375, 30.797237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885757, 33.415001, 30.104153>,  <42.476906, 33.887596, 30.474075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885757, 33.415001, 30.104153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.620506, 33.194881, 30.307104>,  <42.461357, 33.062809, 30.428875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.620506, 33.194881, 30.307104>,  <42.885757, 33.415001, 30.104153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620506, 33.194881, 30.307104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341776, -0.380454, -0.859328,
		0.665923, -0.743252, 0.064209,
		-0.663126, -0.550301, 0.507378,
		42.421570, 33.029793, 30.459318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015594, 32.809475, 29.732582>,  <42.885757, 33.415001, 30.104153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015594, 32.809475, 29.732582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.657520, 32.793568, 29.910151>,  <42.442677, 32.784023, 30.016693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.657520, 32.793568, 29.910151>,  <43.015594, 32.809475, 29.732582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657520, 32.793568, 29.910151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384935, -0.433073, -0.815030,
		0.224667, -0.900481, 0.372369,
		-0.895182, -0.039773, 0.443924,
		42.388966, 32.781635, 30.043327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682575, 32.227600, 29.515305>,  <43.015594, 32.809475, 29.732582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682575, 32.227600, 29.515305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.356564, 32.423954, 29.638430>,  <42.160957, 32.541767, 29.712305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.356564, 32.423954, 29.638430>,  <42.682575, 32.227600, 29.515305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356564, 32.423954, 29.638430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542995, -0.461731, -0.701399,
		-0.202181, -0.738805, 0.642876,
		-0.815033, 0.490888, 0.307814,
		42.112053, 32.571220, 29.730774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145119, 31.704849, 29.586672>,  <42.682575, 32.227600, 29.515305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145119, 31.704849, 29.586672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.949207, 32.052063, 29.554102>,  <41.831661, 32.260391, 29.534559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.949207, 32.052063, 29.554102>,  <42.145119, 31.704849, 29.586672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949207, 32.052063, 29.554102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644758, -0.423492, -0.636349,
		-0.586856, -0.259173, 0.767092,
		-0.489782, 0.868035, -0.081425,
		41.802273, 32.312473, 29.529675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402569, 31.570154, 29.619463>,  <42.145119, 31.704849, 29.586672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402569, 31.570154, 29.619463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.405724, 31.941267, 29.470247>,  <41.407616, 32.163933, 29.380718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.405724, 31.941267, 29.470247>,  <41.402569, 31.570154, 29.619463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405724, 31.941267, 29.470247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711483, -0.256932, -0.654047,
		-0.702659, 0.270568, 0.658076,
		0.007884, 0.927782, -0.373040,
		41.408089, 32.219601, 29.358335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687550, 31.824173, 29.488525>,  <41.402569, 31.570154, 29.619463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687550, 31.824173, 29.488525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.915398, 32.053112, 29.252573>,  <41.052105, 32.190475, 29.111002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.915398, 32.053112, 29.252573>,  <40.687550, 31.824173, 29.488525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915398, 32.053112, 29.252573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594550, -0.208602, -0.776528,
		-0.567493, 0.793035, 0.221466,
		0.569616, 0.572347, -0.589879,
		41.086281, 32.224815, 29.075609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249153, 32.397392, 29.227478>,  <40.687550, 31.824173, 29.488525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249153, 32.397392, 29.227478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.558918, 32.382446, 28.974848>,  <40.744778, 32.373478, 28.823269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.558918, 32.382446, 28.974848>,  <40.249153, 32.397392, 29.227478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558918, 32.382446, 28.974848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626488, -0.184623, -0.757250,
		-0.088308, 0.982099, -0.166383,
		0.774413, -0.037365, -0.631577,
		40.791241, 32.371235, 28.785376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.094948, 37.628529, 41.168941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760826, 37.423172, 41.247627>,  <38.560352, 37.299957, 41.294838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760826, 37.423172, 41.247627>,  <39.094948, 37.628529, 41.168941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760826, 37.423172, 41.247627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149966, -0.131470, -0.979911,
		0.528942, -0.848023, 0.032825,
		-0.835303, -0.513394, 0.196714,
		38.510235, 37.269154, 41.306641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164150, 37.034809, 40.861256>,  <39.094948, 37.628529, 41.168941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164150, 37.034809, 40.861256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770729, 37.095112, 40.901035>,  <38.534676, 37.131294, 40.924904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770729, 37.095112, 40.901035>,  <39.164150, 37.034809, 40.861256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770729, 37.095112, 40.901035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125189, -0.172195, -0.977076,
		-0.130177, -0.973458, 0.188237,
		-0.983555, 0.150758, 0.099450,
		38.475662, 37.140339, 40.930870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750523, 36.467777, 40.653484>,  <39.164150, 37.034809, 40.861256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750523, 36.467777, 40.653484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540905, 36.806351, 40.615696>,  <38.415134, 37.009495, 40.593025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540905, 36.806351, 40.615696>,  <38.750523, 36.467777, 40.653484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540905, 36.806351, 40.615696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166752, -0.210740, -0.963215,
		-0.835205, -0.489018, 0.251583,
		-0.524048, 0.846434, -0.094467,
		38.383690, 37.060280, 40.587357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444378, 36.278446, 40.001663>,  <38.750523, 36.467777, 40.653484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444378, 36.278446, 40.001663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372677, 36.666965, 40.064201>,  <38.329655, 36.900078, 40.101723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372677, 36.666965, 40.064201>,  <38.444378, 36.278446, 40.001663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372677, 36.666965, 40.064201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166668, 0.126637, -0.977847,
		-0.969582, -0.201339, 0.139185,
		-0.179253, 0.971301, 0.156342,
		38.318901, 36.958355, 40.111103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777096, 36.490292, 39.502388>,  <38.444378, 36.278446, 40.001663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777096, 36.490292, 39.502388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967545, 36.823143, 39.616135>,  <38.081814, 37.022854, 39.684383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967545, 36.823143, 39.616135>,  <37.777096, 36.490292, 39.502388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967545, 36.823143, 39.616135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061277, 0.353979, -0.933244,
		-0.877240, 0.426915, 0.219529,
		0.476125, 0.832131, 0.284364,
		38.110382, 37.072781, 39.701443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361942, 37.068680, 39.199902>,  <37.777096, 36.490292, 39.502388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361942, 37.068680, 39.199902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725712, 37.219345, 39.270401>,  <37.943974, 37.309746, 39.312702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725712, 37.219345, 39.270401>,  <37.361942, 37.068680, 39.199902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725712, 37.219345, 39.270401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023251, 0.377096, -0.925882,
		-0.415211, 0.846121, 0.334184,
		0.909428, 0.376666, 0.176248,
		37.998539, 37.332344, 39.323277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364346, 37.736721, 38.779575>,  <37.361942, 37.068680, 39.199902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364346, 37.736721, 38.779575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751114, 37.668877, 38.855778>,  <37.983177, 37.628170, 38.901501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751114, 37.668877, 38.855778>,  <37.364346, 37.736721, 38.779575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751114, 37.668877, 38.855778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215477, 0.143494, -0.965908,
		0.136494, 0.975008, 0.175296,
		0.966922, -0.169613, 0.190505,
		38.041191, 37.617992, 38.912930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793106, 38.305126, 38.551552>,  <37.364346, 37.736721, 38.779575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793106, 38.305126, 38.551552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039482, 37.990170, 38.561596>,  <38.187309, 37.801197, 38.567623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039482, 37.990170, 38.561596>,  <37.793106, 38.305126, 38.551552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039482, 37.990170, 38.561596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302040, 0.206595, -0.930640,
		0.727589, 0.580806, 0.365074,
		0.615944, -0.787390, 0.025110,
		38.224266, 37.753952, 38.569130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466595, 38.481838, 38.343452>,  <37.793106, 38.305126, 38.551552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466595, 38.481838, 38.343452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470520, 38.085789, 38.287521>,  <38.472878, 37.848160, 38.253963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470520, 38.085789, 38.287521>,  <38.466595, 38.481838, 38.343452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470520, 38.085789, 38.287521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381245, 0.132979, -0.914860,
		0.924422, -0.044328, 0.378787,
		0.009817, -0.990127, -0.139828,
		38.473465, 37.788750, 38.245571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060043, 38.251648, 38.190739>,  <38.466595, 38.481838, 38.343452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060043, 38.251648, 38.190739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813091, 37.985813, 38.022369>,  <38.664921, 37.826313, 37.921349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813091, 37.985813, 38.022369>,  <39.060043, 38.251648, 38.190739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813091, 37.985813, 38.022369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387201, 0.209051, -0.897983,
		0.684779, -0.717375, 0.128265,
		-0.617376, -0.664584, -0.420922,
		38.627880, 37.786438, 37.896091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435883, 37.926392, 37.611576>,  <39.060043, 38.251648, 38.190739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435883, 37.926392, 37.611576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060184, 37.805233, 37.546997>,  <38.834766, 37.732536, 37.508247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060184, 37.805233, 37.546997>,  <39.435883, 37.926392, 37.611576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060184, 37.805233, 37.546997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128643, 0.125435, -0.983726,
		0.318221, -0.944732, -0.078849,
		-0.939248, -0.302899, -0.161449,
		38.778412, 37.714363, 37.498562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698559, 37.423454, 37.273220>,  <39.435883, 37.926392, 37.611576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698559, 37.423454, 37.273220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309364, 37.448795, 37.184414>,  <39.075848, 37.464001, 37.131130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309364, 37.448795, 37.184414>,  <39.698559, 37.423454, 37.273220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309364, 37.448795, 37.184414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222390, -0.001236, -0.974957,
		-0.062044, -0.997990, -0.012887,
		-0.972982, 0.063356, -0.222019,
		39.017471, 37.467800, 37.117809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524364, 36.906525, 36.812786>,  <39.698559, 37.423454, 37.273220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524364, 36.906525, 36.812786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282009, 37.218475, 36.749935>,  <39.136597, 37.405647, 36.712227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282009, 37.218475, 36.749935>,  <39.524364, 36.906525, 36.812786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282009, 37.218475, 36.749935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147082, -0.084288, -0.985527,
		-0.781833, -0.620231, -0.063637,
		-0.605891, 0.779877, -0.157124,
		39.100243, 37.452438, 36.702797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990021, 36.695641, 36.351639>,  <39.524364, 36.906525, 36.812786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990021, 36.695641, 36.351639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076424, 37.083599, 36.306660>,  <39.128265, 37.316372, 36.279671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076424, 37.083599, 36.306660>,  <38.990021, 36.695641, 36.351639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076424, 37.083599, 36.306660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064660, -0.129125, -0.989518,
		-0.974248, 0.206474, -0.090606,
		0.216009, 0.969894, -0.112449,
		39.141228, 37.374569, 36.272926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360722, 36.941616, 35.740204>,  <38.990021, 36.695641, 36.351639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360722, 36.941616, 35.740204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623173, 36.639793, 35.744835>,  <39.780643, 36.458698, 35.747612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623173, 36.639793, 35.744835>,  <39.360722, 36.941616, 35.740204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623173, 36.639793, 35.744835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753774, -0.654554, 0.058177,
		-0.036321, -0.046897, -0.998239,
		0.656130, -0.754559, 0.011575,
		39.820011, 36.413425, 35.748306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052528, 36.408195, 35.279778>,  <39.360722, 36.941616, 35.740204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052528, 36.408195, 35.279778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316689, 36.217010, 35.511440>,  <39.475185, 36.102299, 35.650436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316689, 36.217010, 35.511440>,  <39.052528, 36.408195, 35.279778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316689, 36.217010, 35.511440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677092, -0.712510, 0.184054,
		0.324683, -0.513691, -0.794168,
		0.660400, -0.477966, 0.579156,
		39.514809, 36.073620, 35.685188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827095, 35.620148, 35.113197>,  <39.052528, 36.408195, 35.279778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827095, 35.620148, 35.113197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082432, 35.630524, 35.420925>,  <39.235634, 35.636749, 35.605560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082432, 35.630524, 35.420925>,  <38.827095, 35.620148, 35.113197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082432, 35.630524, 35.420925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457890, -0.790581, 0.406594,
		0.618756, -0.611808, -0.492779,
		0.638339, 0.025944, 0.769318,
		39.273933, 35.638306, 35.651722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044029, 34.882965, 35.182339>,  <38.827095, 35.620148, 35.113197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044029, 34.882965, 35.182339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050884, 35.100792, 35.517754>,  <39.054996, 35.231487, 35.719002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050884, 35.100792, 35.517754>,  <39.044029, 34.882965, 35.182339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050884, 35.100792, 35.517754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623044, -0.650113, 0.434936,
		0.781999, -0.529903, 0.328148,
		0.017141, 0.544570, 0.838540,
		39.056026, 35.264164, 35.769314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263123, 34.418621, 35.786926>,  <39.044029, 34.882965, 35.182339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263123, 34.418621, 35.786926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032238, 34.722233, 35.907387>,  <38.893707, 34.904400, 35.979664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032238, 34.722233, 35.907387>,  <39.263123, 34.418621, 35.786926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032238, 34.722233, 35.907387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561717, -0.636745, 0.528233,
		0.592704, 0.135740, 0.793899,
		-0.577214, 0.759032, 0.301154,
		38.859074, 34.949944, 35.997734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251713, 34.387260, 36.536751>,  <39.263123, 34.418621, 35.786926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251713, 34.387260, 36.536751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929203, 34.604553, 36.443096>,  <38.735699, 34.734928, 36.386902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929203, 34.604553, 36.443096>,  <39.251713, 34.387260, 36.536751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929203, 34.604553, 36.443096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543958, -0.525328, 0.654324,
		0.232448, 0.654927, 0.719053,
		-0.806274, 0.543231, -0.234141,
		38.687321, 34.767521, 36.372852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083328, 34.433773, 37.221256>,  <39.251713, 34.387260, 36.536751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083328, 34.433773, 37.221256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784592, 34.618549, 37.029907>,  <38.605350, 34.729416, 36.915100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784592, 34.618549, 37.029907>,  <39.083328, 34.433773, 37.221256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784592, 34.618549, 37.029907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551349, -0.027931, 0.833807,
		0.371806, 0.886472, 0.275549,
		-0.746843, 0.461938, -0.478371,
		38.560539, 34.757130, 36.886395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846096, 35.073944, 37.557026>,  <39.083328, 34.433773, 37.221256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846096, 35.073944, 37.557026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539078, 34.925201, 37.348179>,  <38.354866, 34.835957, 37.222870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539078, 34.925201, 37.348179>,  <38.846096, 35.073944, 37.557026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539078, 34.925201, 37.348179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576889, 0.045658, 0.815546,
		-0.279427, 0.927167, -0.249564,
		-0.767541, -0.371856, -0.522114,
		38.308815, 34.813644, 37.191544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289658, 35.445648, 37.719254>,  <38.846096, 35.073944, 37.557026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289658, 35.445648, 37.719254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128712, 35.103027, 37.589993>,  <38.032143, 34.897457, 37.512436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128712, 35.103027, 37.589993>,  <38.289658, 35.445648, 37.719254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128712, 35.103027, 37.589993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670739, 0.035583, 0.740839,
		-0.623066, 0.514838, -0.588838,
		-0.402365, -0.856549, -0.323151,
		38.008003, 34.846062, 37.493046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531700, 35.553921, 37.843758>,  <38.289658, 35.445648, 37.719254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531700, 35.553921, 37.843758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561520, 35.160851, 37.775883>,  <37.579411, 34.925007, 37.735157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561520, 35.160851, 37.775883>,  <37.531700, 35.553921, 37.843758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561520, 35.160851, 37.775883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714859, -0.171298, 0.677963,
		-0.695284, 0.070759, -0.715244,
		0.074548, -0.982675, -0.169683,
		37.583885, 34.866047, 37.724979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787552, 35.237118, 37.843819>,  <37.531700, 35.553921, 37.843758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787552, 35.237118, 37.843819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045860, 34.949337, 37.946091>,  <37.200844, 34.776669, 38.007454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045860, 34.949337, 37.946091>,  <36.787552, 35.237118, 37.843819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045860, 34.949337, 37.946091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555546, -0.213010, 0.803738,
		-0.523789, -0.661070, -0.537244,
		0.645766, -0.719453, 0.255683,
		37.239590, 34.733501, 38.022797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318268, 34.774803, 38.197662>,  <36.787552, 35.237118, 37.843819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318268, 34.774803, 38.197662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682297, 34.644772, 38.300488>,  <36.900715, 34.566753, 38.362183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682297, 34.644772, 38.300488>,  <36.318268, 34.774803, 38.197662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682297, 34.644772, 38.300488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400329, -0.529073, 0.748210,
		-0.107223, -0.783839, -0.611637,
		0.910077, -0.325081, 0.257064,
		36.955318, 34.547249, 38.377605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179005, 34.016911, 38.493744>,  <36.318268, 34.774803, 38.197662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179005, 34.016911, 38.493744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545921, 34.111271, 38.622078>,  <36.766071, 34.167885, 38.699078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545921, 34.111271, 38.622078>,  <36.179005, 34.016911, 38.493744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545921, 34.111271, 38.622078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163631, -0.511223, 0.843727,
		0.363050, -0.826440, -0.430339,
		0.917289, 0.235899, 0.320831,
		36.821110, 34.182041, 38.718327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516319, 33.403404, 38.472321>,  <36.179005, 34.016911, 38.493744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516319, 33.403404, 38.472321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707966, 33.653656, 38.718586>,  <36.822952, 33.803806, 38.866344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707966, 33.653656, 38.718586>,  <36.516319, 33.403404, 38.472321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707966, 33.653656, 38.718586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427607, -0.446182, 0.786176,
		0.766552, -0.639929, 0.053751,
		0.479114, 0.625629, 0.615660,
		36.851700, 33.841343, 38.903286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905331, 32.855450, 38.103916>,  <36.516319, 33.403404, 38.472321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905331, 32.855450, 38.103916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707851, 32.520966, 38.008408>,  <36.589363, 32.320274, 37.951103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707851, 32.520966, 38.008408>,  <36.905331, 32.855450, 38.103916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707851, 32.520966, 38.008408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298474, 0.420825, -0.856632,
		0.816808, -0.351649, -0.457348,
		-0.493698, -0.836211, -0.238775,
		36.559742, 32.270103, 37.936775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097916, 32.711246, 37.426090>,  <36.905331, 32.855450, 38.103916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097916, 32.711246, 37.426090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745674, 32.539619, 37.506523>,  <36.534328, 32.436646, 37.554783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745674, 32.539619, 37.506523>,  <37.097916, 32.711246, 37.426090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745674, 32.539619, 37.506523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373408, 0.367126, -0.851930,
		0.291711, -0.825302, -0.483510,
		-0.880608, -0.429064, 0.201080,
		36.481491, 32.410900, 37.566845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899235, 32.260548, 36.822327>,  <37.097916, 32.711246, 37.426090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899235, 32.260548, 36.822327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571281, 32.370647, 37.023140>,  <36.374512, 32.436707, 37.143627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571281, 32.370647, 37.023140>,  <36.899235, 32.260548, 36.822327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571281, 32.370647, 37.023140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391106, 0.371124, -0.842202,
		-0.418131, -0.886851, -0.196625,
		-0.819880, 0.275250, 0.502031,
		36.325317, 32.453224, 37.173748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435719, 32.503090, 36.319824>,  <36.899235, 32.260548, 36.822327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435719, 32.503090, 36.319824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203175, 32.591892, 36.632935>,  <36.063648, 32.645172, 36.820801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203175, 32.591892, 36.632935>,  <36.435719, 32.503090, 36.319824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203175, 32.591892, 36.632935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692455, 0.370164, -0.619261,
		-0.427233, -0.902050, -0.061472,
		-0.581358, 0.222002, 0.782776,
		36.028767, 32.658493, 36.867767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798893, 32.228748, 36.155270>,  <36.435719, 32.503090, 36.319824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798893, 32.228748, 36.155270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754139, 32.537083, 36.406120>,  <35.727287, 32.722084, 36.556633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754139, 32.537083, 36.406120>,  <35.798893, 32.228748, 36.155270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754139, 32.537083, 36.406120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698187, 0.388099, -0.601593,
		-0.707119, -0.505162, 0.494767,
		-0.111883, 0.770837, 0.627130,
		35.720573, 32.768333, 36.594261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020081, 32.257469, 36.215553>,  <35.798893, 32.228748, 36.155270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020081, 32.257469, 36.215553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141068, 32.612938, 36.353409>,  <35.213661, 32.826221, 36.436123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141068, 32.612938, 36.353409>,  <35.020081, 32.257469, 36.215553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141068, 32.612938, 36.353409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709050, 0.451418, -0.541729,
		-0.636995, -0.080508, 0.766653,
		0.302467, 0.888674, 0.344635,
		35.231808, 32.879539, 36.456799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403866, 32.550049, 36.453274>,  <35.020081, 32.257469, 36.215553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403866, 32.550049, 36.453274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664593, 32.842854, 36.373985>,  <34.821030, 33.018536, 36.326412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664593, 32.842854, 36.373985>,  <34.403866, 32.550049, 36.453274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664593, 32.842854, 36.373985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690820, 0.465268, -0.553438,
		-0.312898, 0.497675, 0.808959,
		0.651815, 0.732014, -0.198222,
		34.860138, 33.062458, 36.314518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970173, 33.136147, 36.438213>,  <34.403866, 32.550049, 36.453274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970173, 33.136147, 36.438213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310196, 33.251606, 36.261993>,  <34.514210, 33.320881, 36.156261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310196, 33.251606, 36.261993>,  <33.970173, 33.136147, 36.438213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310196, 33.251606, 36.261993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525969, 0.508961, -0.681407,
		0.027532, 0.810950, 0.584468,
		0.850058, 0.288652, -0.440547,
		34.565212, 33.338203, 36.129829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018303, 33.887520, 36.414528>,  <33.970173, 33.136147, 36.438213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018303, 33.887520, 36.414528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201008, 33.728207, 36.096352>,  <34.310631, 33.632618, 35.905445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201008, 33.728207, 36.096352>,  <34.018303, 33.887520, 36.414528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201008, 33.728207, 36.096352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748026, 0.312000, -0.585758,
		0.481479, 0.862568, -0.155419,
		0.456766, -0.398288, -0.795445,
		34.338039, 33.608719, 35.857719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685448, 34.346699, 36.011589>,  <34.018303, 33.887520, 36.414528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685448, 34.346699, 36.011589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896038, 34.094795, 35.783123>,  <34.022392, 33.943653, 35.646042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896038, 34.094795, 35.783123>,  <33.685448, 34.346699, 36.011589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896038, 34.094795, 35.783123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524237, 0.288431, -0.801239,
		0.669325, 0.721261, -0.178288,
		0.526479, -0.629754, -0.571165,
		34.053982, 33.905869, 35.611774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685131, 34.618435, 35.411327>,  <33.685448, 34.346699, 36.011589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685131, 34.618435, 35.411327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783836, 34.251194, 35.287270>,  <33.843060, 34.030849, 35.212833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783836, 34.251194, 35.287270>,  <33.685131, 34.618435, 35.411327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783836, 34.251194, 35.287270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648981, 0.081116, -0.756467,
		0.719674, 0.387948, -0.575817,
		0.246762, -0.918105, -0.310148,
		33.857864, 33.975761, 35.194225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771648, 34.675701, 34.737110>,  <33.685131, 34.618435, 35.411327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771648, 34.675701, 34.737110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714500, 34.281910, 34.777889>,  <33.680210, 34.045635, 34.802357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714500, 34.281910, 34.777889>,  <33.771648, 34.675701, 34.737110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714500, 34.281910, 34.777889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432135, -0.030623, -0.901289,
		0.890419, -0.172827, -0.421051,
		-0.142873, -0.984476, 0.101952,
		33.671638, 33.986568, 34.808475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.632874, 30.578232, 41.082207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.242939, 30.489115, 41.085190>,  <37.008980, 30.435644, 41.086979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.242939, 30.489115, 41.085190>,  <37.632874, 30.578232, 41.082207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242939, 30.489115, 41.085190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022195, 0.063736, -0.997720,
		0.221810, -0.972780, -0.067077,
		-0.974838, -0.222793, 0.007454,
		36.950489, 30.422277, 41.087425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495728, 30.248627, 40.410503>,  <37.632874, 30.578232, 41.082207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495728, 30.248627, 40.410503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.126827, 30.335245, 40.538609>,  <36.905487, 30.387217, 40.615471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.126827, 30.335245, 40.538609>,  <37.495728, 30.248627, 40.410503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126827, 30.335245, 40.538609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282010, 0.189815, -0.940447,
		-0.264442, -0.957642, -0.113988,
		-0.922248, 0.216548, 0.320260,
		36.850151, 30.400209, 40.634686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002327, 29.905012, 39.876812>,  <37.495728, 30.248627, 40.410503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002327, 29.905012, 39.876812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.807018, 30.190615, 40.077526>,  <36.689835, 30.361977, 40.197956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.807018, 30.190615, 40.077526>,  <37.002327, 29.905012, 39.876812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807018, 30.190615, 40.077526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458428, 0.279412, -0.843666,
		-0.742587, -0.641970, 0.190890,
		-0.488272, 0.714005, 0.501785,
		36.660538, 30.404816, 40.228062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389366, 29.973223, 39.409859>,  <37.002327, 29.905012, 39.876812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389366, 29.973223, 39.409859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.451538, 30.308414, 39.619099>,  <36.488842, 30.509529, 39.744640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.451538, 30.308414, 39.619099>,  <36.389366, 29.973223, 39.409859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451538, 30.308414, 39.619099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287971, 0.544969, -0.787453,
		-0.944942, -0.028245, 0.326017,
		0.155428, 0.837981, 0.523097,
		36.498165, 30.559809, 39.776028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926975, 30.389030, 39.148804>,  <36.389366, 29.973223, 39.409859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926975, 30.389030, 39.148804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.187798, 30.646933, 39.308361>,  <36.344292, 30.801674, 39.404095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.187798, 30.646933, 39.308361>,  <35.926975, 30.389030, 39.148804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187798, 30.646933, 39.308361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240342, 0.674774, -0.697793,
		-0.719071, 0.359126, 0.594950,
		0.652052, 0.644754, 0.398898,
		36.383411, 30.840359, 39.428032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568016, 30.966904, 39.174313>,  <35.926975, 30.389030, 39.148804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568016, 30.966904, 39.174313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.956535, 31.061993, 39.177662>,  <36.189648, 31.119045, 39.179672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.956535, 31.061993, 39.177662>,  <35.568016, 30.966904, 39.174313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956535, 31.061993, 39.177662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169825, 0.717671, -0.675357,
		-0.166559, 0.654550, 0.737443,
		0.971297, 0.237723, 0.008375,
		36.247925, 31.133310, 39.180176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628922, 31.795889, 39.343803>,  <35.568016, 30.966904, 39.174313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628922, 31.795889, 39.343803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.967625, 31.672325, 39.170563>,  <36.170845, 31.598186, 39.066616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.967625, 31.672325, 39.170563>,  <35.628922, 31.795889, 39.343803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967625, 31.672325, 39.170563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066995, 0.745735, -0.662866,
		0.527747, 0.590301, 0.610760,
		0.846756, -0.308908, -0.433106,
		36.221653, 31.579653, 39.040630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825390, 32.339981, 39.108784>,  <35.628922, 31.795889, 39.343803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825390, 32.339981, 39.108784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.081314, 32.093941, 38.924484>,  <36.234871, 31.946316, 38.813904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.081314, 32.093941, 38.924484>,  <35.825390, 32.339981, 39.108784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081314, 32.093941, 38.924484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094791, 0.658100, -0.746940,
		0.762661, 0.434228, 0.479368,
		0.639815, -0.615102, -0.460746,
		36.273258, 31.909410, 38.786259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474022, 32.740490, 38.773094>,  <35.825390, 32.339981, 39.108784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474022, 32.740490, 38.773094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.431648, 32.406456, 38.557167>,  <36.406223, 32.206036, 38.427608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.431648, 32.406456, 38.557167>,  <36.474022, 32.740490, 38.773094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431648, 32.406456, 38.557167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027069, 0.540252, -0.841068,
		0.994005, -0.103709, -0.034626,
		-0.105933, -0.835088, -0.539820,
		36.399868, 32.155930, 38.395222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966846, 32.969360, 39.193466>,  <36.474022, 32.740490, 38.773094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966846, 32.969360, 39.193466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.937717, 33.356201, 39.290958>,  <36.920238, 33.588306, 39.349453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.937717, 33.356201, 39.290958>,  <36.966846, 32.969360, 39.193466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937717, 33.356201, 39.290958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116207, -0.250938, 0.961003,
		0.990552, 0.041659, 0.130658,
		-0.072821, 0.967106, 0.243726,
		36.915871, 33.646332, 39.364075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524773, 33.117947, 39.673809>,  <36.966846, 32.969360, 39.193466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524773, 33.117947, 39.673809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.241634, 33.396584, 39.720642>,  <37.071751, 33.563766, 39.748741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.241634, 33.396584, 39.720642>,  <37.524773, 33.117947, 39.673809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241634, 33.396584, 39.720642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048577, -0.117349, 0.991902,
		0.704694, 0.707802, 0.049226,
		-0.707847, 0.696596, 0.117078,
		37.029282, 33.605564, 39.755764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727074, 33.441677, 40.295166>,  <37.524773, 33.117947, 39.673809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727074, 33.441677, 40.295166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.348476, 33.565434, 40.258438>,  <37.121319, 33.639687, 40.236401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.348476, 33.565434, 40.258438>,  <37.727074, 33.441677, 40.295166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348476, 33.565434, 40.258438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111188, -0.045518, 0.992756,
		0.302975, 0.949843, 0.077483,
		-0.946490, 0.309396, -0.091820,
		37.064529, 33.658253, 40.230892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649529, 34.035820, 40.642250>,  <37.727074, 33.441677, 40.295166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649529, 34.035820, 40.642250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.275394, 33.894451, 40.648495>,  <37.050915, 33.809631, 40.652241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.275394, 33.894451, 40.648495>,  <37.649529, 34.035820, 40.642250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275394, 33.894451, 40.648495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048958, -0.085620, 0.995124,
		-0.350361, 0.931538, 0.097386,
		-0.935334, -0.353420, 0.015608,
		36.994793, 33.788425, 40.653175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247662, 34.428135, 41.061993>,  <37.649529, 34.035820, 40.642250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247662, 34.428135, 41.061993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.056324, 34.077297, 41.044579>,  <36.941521, 33.866795, 41.034130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.056324, 34.077297, 41.044579>,  <37.247662, 34.428135, 41.061993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056324, 34.077297, 41.044579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078819, -0.092255, 0.992611,
		-0.874628, 0.471379, 0.113261,
		-0.478344, -0.877092, -0.043536,
		36.912819, 33.814171, 41.031517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865341, 34.491795, 41.658772>,  <37.247662, 34.428135, 41.061993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865341, 34.491795, 41.658772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.806236, 34.110310, 41.554005>,  <36.770775, 33.881420, 41.491146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.806236, 34.110310, 41.554005>,  <36.865341, 34.491795, 41.658772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806236, 34.110310, 41.554005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103648, -0.248431, 0.963088,
		-0.983577, 0.169455, -0.062142,
		-0.147762, -0.953712, -0.261915,
		36.761906, 33.824196, 41.475430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243370, 34.271496, 41.973488>,  <36.865341, 34.491795, 41.658772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243370, 34.271496, 41.973488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.482662, 33.960133, 41.897381>,  <36.626236, 33.773315, 41.851715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.482662, 33.960133, 41.897381>,  <36.243370, 34.271496, 41.973488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482662, 33.960133, 41.897381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090366, -0.170394, 0.981224,
		-0.796215, -0.604189, -0.031592,
		0.598227, -0.778410, -0.190268,
		36.662132, 33.726608, 41.840302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074680, 33.702633, 42.455448>,  <36.243370, 34.271496, 41.973488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074680, 33.702633, 42.455448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.450069, 33.628609, 42.338818>,  <36.675304, 33.584194, 42.268837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.450069, 33.628609, 42.338818>,  <36.074680, 33.702633, 42.455448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450069, 33.628609, 42.338818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253766, -0.203141, 0.945693,
		-0.234243, -0.961502, -0.143681,
		0.938474, -0.185061, -0.291581,
		36.731613, 33.573090, 42.251343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293533, 33.078686, 42.821438>,  <36.074680, 33.702633, 42.455448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293533, 33.078686, 42.821438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.656654, 33.214447, 42.722881>,  <36.874527, 33.295902, 42.663746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.656654, 33.214447, 42.722881>,  <36.293533, 33.078686, 42.821438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656654, 33.214447, 42.722881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342584, -0.261171, 0.902456,
		0.241943, -0.903658, -0.353364,
		0.907799, 0.339399, -0.246391,
		36.928993, 33.316265, 42.648964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795784, 32.517403, 42.937294>,  <36.293533, 33.078686, 42.821438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795784, 32.517403, 42.937294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.008698, 32.856014, 42.933922>,  <37.136444, 33.059181, 42.931896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.008698, 32.856014, 42.933922>,  <36.795784, 32.517403, 42.937294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008698, 32.856014, 42.933922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385435, -0.233460, 0.892713,
		0.753736, -0.478424, -0.450547,
		0.532280, 0.846527, -0.008434,
		37.168381, 33.109974, 42.931393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303471, 32.345379, 43.336349>,  <36.795784, 32.517403, 42.937294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303471, 32.345379, 43.336349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.356342, 32.740410, 43.302353>,  <37.388065, 32.977428, 43.281956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.356342, 32.740410, 43.302353>,  <37.303471, 32.345379, 43.336349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356342, 32.740410, 43.302353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439793, 0.018411, 0.897910,
		0.888319, -0.156065, -0.431895,
		0.132181, 0.987575, -0.084991,
		37.395996, 33.036682, 43.276855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949814, 32.517998, 43.454941>,  <37.303471, 32.345379, 43.336349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949814, 32.517998, 43.454941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.773773, 32.862286, 43.557289>,  <37.668148, 33.068859, 43.618698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.773773, 32.862286, 43.557289>,  <37.949814, 32.517998, 43.454941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773773, 32.862286, 43.557289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416953, -0.056483, 0.907171,
		0.795274, 0.505934, -0.334022,
		-0.440102, 0.860721, 0.255870,
		37.641743, 33.120502, 43.634048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422920, 32.992100, 43.792137>,  <37.949814, 32.517998, 43.454941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422920, 32.992100, 43.792137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.058311, 33.111816, 43.904953>,  <37.839546, 33.183647, 43.972641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.058311, 33.111816, 43.904953>,  <38.422920, 32.992100, 43.792137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058311, 33.111816, 43.904953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289279, -0.020808, 0.957019,
		0.292298, 0.953934, -0.067612,
		-0.911526, 0.299294, 0.282035,
		37.784855, 33.201603, 43.989563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565052, 33.358349, 44.306950>,  <38.422920, 32.992100, 43.792137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565052, 33.358349, 44.306950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.174839, 33.281925, 44.350475>,  <37.940712, 33.236073, 44.376591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.174839, 33.281925, 44.350475>,  <38.565052, 33.358349, 44.306950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174839, 33.281925, 44.350475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114495, -0.018917, 0.993244,
		-0.187707, 0.981397, 0.040329,
		-0.975529, -0.191056, 0.108814,
		37.882179, 33.224609, 44.383121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.995720, 32.911884, 45.315140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.395653, 32.905125, 45.312145>,  <33.635612, 32.901070, 45.310349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.395653, 32.905125, 45.312145>,  <32.995720, 32.911884, 45.315140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395653, 32.905125, 45.312145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003668, 0.578214, -0.815877,
		0.018119, 0.815710, 0.578177,
		0.999829, -0.016904, -0.007485,
		33.695602, 32.900055, 45.309898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146751, 33.616322, 45.095833>,  <32.995720, 32.911884, 45.315140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146751, 33.616322, 45.095833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.493752, 33.424923, 45.041451>,  <33.701954, 33.310085, 45.008823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.493752, 33.424923, 45.041451>,  <33.146751, 33.616322, 45.095833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493752, 33.424923, 45.041451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222033, 0.617046, -0.754954,
		0.445129, 0.624739, 0.641531,
		0.867503, -0.478493, -0.135953,
		33.754002, 33.281376, 45.000664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661739, 34.129181, 44.948887>,  <33.146751, 33.616322, 45.095833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661739, 34.129181, 44.948887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.793221, 33.781963, 44.800053>,  <33.872108, 33.573631, 44.710751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.793221, 33.781963, 44.800053>,  <33.661739, 34.129181, 44.948887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793221, 33.781963, 44.800053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298930, 0.469346, -0.830876,
		0.895878, 0.161881, 0.413760,
		0.328700, -0.868049, -0.372086,
		33.891830, 33.521549, 44.688427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265388, 34.292709, 44.644440>,  <33.661739, 34.129181, 44.948887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265388, 34.292709, 44.644440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.198887, 33.928513, 44.492989>,  <34.158985, 33.709995, 44.402119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.198887, 33.928513, 44.492989>,  <34.265388, 34.292709, 44.644440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198887, 33.928513, 44.492989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229463, 0.337709, -0.912852,
		0.959014, -0.238642, 0.152781,
		-0.166249, -0.910496, -0.378627,
		34.149014, 33.655365, 44.379402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913418, 34.050446, 44.313164>,  <34.265388, 34.292709, 44.644440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913418, 34.050446, 44.313164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.580597, 33.878742, 44.172642>,  <34.380905, 33.775719, 44.088329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.580597, 33.878742, 44.172642>,  <34.913418, 34.050446, 44.313164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580597, 33.878742, 44.172642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197258, 0.362956, -0.910688,
		0.518433, -0.827042, -0.217324,
		-0.832056, -0.429261, -0.351309,
		34.330978, 33.749966, 44.067249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110428, 33.756695, 43.712280>,  <34.913418, 34.050446, 44.313164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110428, 33.756695, 43.712280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.714767, 33.721172, 43.665462>,  <34.477371, 33.699860, 43.637371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.714767, 33.721172, 43.665462>,  <35.110428, 33.756695, 43.712280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714767, 33.721172, 43.665462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096459, 0.208375, -0.973281,
		0.110820, -0.974009, -0.197548,
		-0.989148, -0.088803, -0.117043,
		34.418022, 33.694530, 43.630348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947556, 33.409134, 43.044479>,  <35.110428, 33.756695, 43.712280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947556, 33.409134, 43.044479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.640320, 33.647423, 43.138420>,  <34.455978, 33.790398, 43.194786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.640320, 33.647423, 43.138420>,  <34.947556, 33.409134, 43.044479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640320, 33.647423, 43.138420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033708, 0.403869, -0.914195,
		-0.639459, -0.694264, -0.330287,
		-0.768086, 0.595724, 0.234856,
		34.409893, 33.826141, 43.208878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586720, 33.458801, 42.350849>,  <34.947556, 33.409134, 43.044479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586720, 33.458801, 42.350849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.465218, 33.758316, 42.586494>,  <34.392315, 33.938023, 42.727882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.465218, 33.758316, 42.586494>,  <34.586720, 33.458801, 42.350849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465218, 33.758316, 42.586494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119377, 0.583546, -0.803258,
		-0.945241, -0.314322, -0.087869,
		-0.303757, 0.748783, 0.589114,
		34.374092, 33.982952, 42.763229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992947, 33.698406, 42.016350>,  <34.586720, 33.458801, 42.350849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992947, 33.698406, 42.016350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.082382, 34.000874, 42.262348>,  <34.136044, 34.182354, 42.409946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.082382, 34.000874, 42.262348>,  <33.992947, 33.698406, 42.016350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082382, 34.000874, 42.262348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055183, 0.639777, -0.766577,
		-0.973119, 0.137464, 0.184777,
		0.223593, 0.756167, 0.614994,
		34.149460, 34.227722, 42.446846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493568, 34.182339, 41.982098>,  <33.992947, 33.698406, 42.016350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493568, 34.182339, 41.982098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.819443, 34.378025, 42.106640>,  <34.014969, 34.495438, 42.181366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.819443, 34.378025, 42.106640>,  <33.493568, 34.182339, 41.982098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819443, 34.378025, 42.106640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088936, 0.635978, -0.766565,
		-0.573037, 0.596822, 0.561634,
		0.814690, 0.489220, 0.311360,
		34.063850, 34.524792, 42.200047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243668, 34.897179, 41.917515>,  <33.493568, 34.182339, 41.982098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243668, 34.897179, 41.917515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.643162, 34.887695, 41.935226>,  <33.882858, 34.882004, 41.945854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.643162, 34.887695, 41.935226>,  <33.243668, 34.897179, 41.917515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643162, 34.887695, 41.935226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049312, 0.630283, -0.774798,
		-0.009538, 0.776004, 0.630657,
		0.998738, -0.023709, 0.044278,
		33.942783, 34.880581, 41.948509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433300, 35.527218, 41.927906>,  <33.243668, 34.897179, 41.917515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433300, 35.527218, 41.927906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.773991, 35.354656, 41.808945>,  <33.978405, 35.251118, 41.737568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.773991, 35.354656, 41.808945>,  <33.433300, 35.527218, 41.927906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773991, 35.354656, 41.808945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068792, 0.654735, -0.752722,
		0.519452, 0.620654, 0.587332,
		0.851726, -0.431407, -0.297407,
		34.029507, 35.225235, 41.719723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904995, 36.167351, 41.798409>,  <33.433300, 35.527218, 41.927906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904995, 36.167351, 41.798409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.044693, 35.846802, 41.604156>,  <34.128510, 35.654472, 41.487606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.044693, 35.846802, 41.604156>,  <33.904995, 36.167351, 41.798409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044693, 35.846802, 41.604156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145533, 0.465586, -0.872955,
		0.925662, 0.375547, 0.045976,
		0.349241, -0.801370, -0.485630,
		34.149464, 35.606392, 41.458469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494606, 36.356548, 41.368092>,  <33.904995, 36.167351, 41.798409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494606, 36.356548, 41.368092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.369804, 36.013554, 41.204445>,  <34.294926, 35.807758, 41.106255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.369804, 36.013554, 41.204445>,  <34.494606, 36.356548, 41.368092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369804, 36.013554, 41.204445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096300, 0.456941, -0.884269,
		0.945189, -0.236493, -0.225141,
		-0.312000, -0.857483, -0.409121,
		34.276203, 35.756310, 41.081707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190147, 36.625809, 41.492306>,  <34.494606, 36.356548, 41.368092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190147, 36.625809, 41.492306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.212688, 37.025082, 41.483685>,  <35.226215, 37.264645, 41.478512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.212688, 37.025082, 41.483685>,  <35.190147, 36.625809, 41.492306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212688, 37.025082, 41.483685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003936, 0.021814, 0.999754,
		0.998403, -0.056257, 0.005158,
		0.056356, 0.998178, -0.021558,
		35.229595, 37.324535, 41.477219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866257, 36.771824, 41.760826>,  <35.190147, 36.625809, 41.492306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866257, 36.771824, 41.760826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.567879, 37.030693, 41.823734>,  <35.388851, 37.186016, 41.861481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.567879, 37.030693, 41.823734>,  <35.866257, 36.771824, 41.760826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567879, 37.030693, 41.823734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130062, -0.090039, 0.987409,
		0.653183, 0.757009, -0.017008,
		-0.745946, 0.647171, 0.157270,
		35.344093, 37.224846, 41.870914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032951, 37.012486, 42.374691>,  <35.866257, 36.771824, 41.760826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032951, 37.012486, 42.374691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.652210, 37.128925, 42.336243>,  <35.423767, 37.198788, 42.313175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.652210, 37.128925, 42.336243>,  <36.032951, 37.012486, 42.374691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652210, 37.128925, 42.336243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076227, 0.078948, 0.993960,
		0.296928, 0.953430, -0.052958,
		-0.951852, 0.291098, -0.096119,
		35.366653, 37.216255, 42.307407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020504, 37.518070, 42.813118>,  <36.032951, 37.012486, 42.374691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020504, 37.518070, 42.813118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.640755, 37.404533, 42.759266>,  <35.412907, 37.336411, 42.726955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.640755, 37.404533, 42.759266>,  <36.020504, 37.518070, 42.813118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640755, 37.404533, 42.759266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106897, -0.111112, 0.988042,
		-0.295404, 0.952413, 0.075145,
		-0.949373, -0.283839, -0.134633,
		35.355942, 37.319382, 42.718876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510319, 37.992695, 43.142746>,  <36.020504, 37.518070, 42.813118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510319, 37.992695, 43.142746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.309669, 37.648487, 43.107235>,  <35.189281, 37.441963, 43.085930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.309669, 37.648487, 43.107235>,  <35.510319, 37.992695, 43.142746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309669, 37.648487, 43.107235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209625, 0.021351, 0.977549,
		-0.839304, 0.508970, -0.191097,
		-0.501623, -0.860519, -0.088773,
		35.159184, 37.390331, 43.080605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939564, 38.038525, 43.642235>,  <35.510319, 37.992695, 43.142746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939564, 38.038525, 43.642235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.938797, 37.643967, 43.576473>,  <34.938339, 37.407234, 43.537018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.938797, 37.643967, 43.576473>,  <34.939564, 38.038525, 43.642235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938797, 37.643967, 43.576473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207343, -0.160436, 0.965023,
		-0.978266, 0.035935, -0.204214,
		-0.001915, -0.986391, -0.164400,
		34.938221, 37.348049, 43.527153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426571, 37.745697, 44.129711>,  <34.939564, 38.038525, 43.642235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426571, 37.745697, 44.129711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.648918, 37.433125, 44.016308>,  <34.782326, 37.245583, 43.948265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.648918, 37.433125, 44.016308>,  <34.426571, 37.745697, 44.129711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648918, 37.433125, 44.016308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115376, -0.410285, 0.904630,
		-0.823225, -0.470144, -0.318222,
		0.555868, -0.781428, -0.283513,
		34.815678, 37.198696, 43.931255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118416, 37.231209, 44.413795>,  <34.426571, 37.745697, 44.129711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118416, 37.231209, 44.413795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.480785, 37.076881, 44.343994>,  <34.698208, 36.984283, 44.302113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.480785, 37.076881, 44.343994>,  <34.118416, 37.231209, 44.413795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480785, 37.076881, 44.343994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037740, -0.484023, 0.874241,
		-0.421763, -0.785407, -0.453047,
		0.905920, -0.385820, -0.174501,
		34.752560, 36.961136, 44.291645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058247, 36.491501, 44.550167>,  <34.118416, 37.231209, 44.413795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058247, 36.491501, 44.550167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.445770, 36.587013, 44.576683>,  <34.678284, 36.644321, 44.592594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.445770, 36.587013, 44.576683>,  <34.058247, 36.491501, 44.550167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445770, 36.587013, 44.576683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103862, -0.634127, 0.766221,
		0.224999, -0.735436, -0.639148,
		0.968807, 0.238782, 0.066294,
		34.736412, 36.658649, 44.596573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304329, 35.895683, 44.676346>,  <34.058247, 36.491501, 44.550167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304329, 35.895683, 44.676346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.569271, 36.165192, 44.807384>,  <34.728237, 36.326897, 44.886009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.569271, 36.165192, 44.807384>,  <34.304329, 35.895683, 44.676346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569271, 36.165192, 44.807384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329055, -0.654466, 0.680733,
		0.673059, -0.343089, -0.655196,
		0.662356, 0.673769, 0.327599,
		34.767979, 36.367321, 44.905663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951721, 35.681564, 44.557373>,  <34.304329, 35.895683, 44.676346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951721, 35.681564, 44.557373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.988060, 35.915119, 44.880070>,  <35.009865, 36.055252, 45.073689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.988060, 35.915119, 44.880070>,  <34.951721, 35.681564, 44.557373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988060, 35.915119, 44.880070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367364, -0.772605, 0.517808,
		0.925629, 0.249323, -0.284689,
		0.090850, 0.583883, 0.806738,
		35.015316, 36.090282, 45.122089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550571, 35.494278, 44.976192>,  <34.951721, 35.681564, 44.557373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550571, 35.494278, 44.976192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.404930, 35.716778, 45.274994>,  <35.317547, 35.850277, 45.454277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.404930, 35.716778, 45.274994>,  <35.550571, 35.494278, 44.976192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404930, 35.716778, 45.274994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381591, -0.642555, 0.664463,
		0.849599, 0.526983, 0.021697,
		-0.364102, 0.556247, 0.747006,
		35.295700, 35.883652, 45.499096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111843, 35.594383, 45.551868>,  <35.550571, 35.494278, 44.976192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111843, 35.594383, 45.551868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.747707, 35.652462, 45.706894>,  <35.529228, 35.687309, 45.799908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.747707, 35.652462, 45.706894>,  <36.111843, 35.594383, 45.551868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747707, 35.652462, 45.706894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206440, -0.652322, 0.729287,
		0.358705, 0.743905, 0.563858,
		-0.910337, 0.145196, 0.387563,
		35.474606, 35.696022, 45.823162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205219, 35.690010, 46.308651>,  <36.111843, 35.594383, 45.551868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205219, 35.690010, 46.308651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.820511, 35.584408, 46.279507>,  <35.589687, 35.521046, 46.262020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.820511, 35.584408, 46.279507>,  <36.205219, 35.690010, 46.308651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820511, 35.584408, 46.279507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117679, -0.638592, 0.760495,
		-0.247299, 0.722844, 0.645243,
		-0.961766, -0.264002, -0.072859,
		35.531982, 35.505207, 46.257648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508373, 36.162254, 46.784500>,  <36.205219, 35.690010, 46.308651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508373, 36.162254, 46.784500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.906071, 36.133781, 46.816547>,  <37.144688, 36.116699, 46.835777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.906071, 36.133781, 46.816547>,  <36.508373, 36.162254, 46.784500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906071, 36.133781, 46.816547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098433, 0.310792, -0.945367,
		0.042389, 0.947809, 0.316008,
		0.994240, -0.071179, 0.080122,
		37.204342, 36.112427, 46.840584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725506, 36.622669, 46.286968>,  <36.508373, 36.162254, 46.784500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725506, 36.622669, 46.286968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.065834, 36.426147, 46.361515>,  <37.270031, 36.308235, 46.406242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.065834, 36.426147, 46.361515>,  <36.725506, 36.622669, 46.286968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065834, 36.426147, 46.361515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350212, 0.265777, -0.898173,
		0.391741, 0.829449, 0.398187,
		0.850818, -0.491301, 0.186367,
		37.321079, 36.278759, 46.417427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376114, 37.098709, 46.153442>,  <36.725506, 36.622669, 46.286968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376114, 37.098709, 46.153442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.472683, 36.712753, 46.112057>,  <37.530624, 36.481178, 46.087227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.472683, 36.712753, 46.112057>,  <37.376114, 37.098709, 46.153442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472683, 36.712753, 46.112057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293607, 0.174246, -0.939911,
		0.924937, 0.196542, 0.325366,
		0.241426, -0.964888, -0.103461,
		37.545109, 36.423286, 46.081020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880241, 37.125084, 45.720093>,  <37.376114, 37.098709, 46.153442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880241, 37.125084, 45.720093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.786633, 36.738518, 45.677635>,  <37.730465, 36.506577, 45.652161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.786633, 36.738518, 45.677635>,  <37.880241, 37.125084, 45.720093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786633, 36.738518, 45.677635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000727, 0.109346, -0.994004,
		0.972230, -0.232546, -0.026292,
		-0.234026, -0.966419, -0.106141,
		37.716423, 36.448593, 45.645794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386597, 36.803711, 45.233002>,  <37.880241, 37.125084, 45.720093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386597, 36.803711, 45.233002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.053406, 36.582386, 45.232433>,  <37.853493, 36.449593, 45.232090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.053406, 36.582386, 45.232433>,  <38.386597, 36.803711, 45.233002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053406, 36.582386, 45.232433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072684, -0.106868, -0.991613,
		0.548518, -0.826091, 0.129235,
		-0.832974, -0.553311, -0.001425,
		37.803513, 36.416393, 45.232006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614765, 36.172256, 44.983662>,  <38.386597, 36.803711, 45.233002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614765, 36.172256, 44.983662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.219666, 36.194729, 44.925430>,  <37.982605, 36.208214, 44.890491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.219666, 36.194729, 44.925430>,  <38.614765, 36.172256, 44.983662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219666, 36.194729, 44.925430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135598, -0.152638, -0.978936,
		-0.077220, -0.986684, 0.143150,
		-0.987750, 0.056183, -0.145579,
		37.923340, 36.211582, 44.881756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393375, 35.738049, 44.441975>,  <38.614765, 36.172256, 44.983662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393375, 35.738049, 44.441975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.067158, 35.969200, 44.429676>,  <37.871429, 36.107891, 44.422298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.067158, 35.969200, 44.429676>,  <38.393375, 35.738049, 44.441975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067158, 35.969200, 44.429676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095017, 0.081312, -0.992149,
		-0.570845, -0.812060, -0.121222,
		-0.815542, 0.577881, -0.030743,
		37.822495, 36.142563, 44.420452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993904, 35.584721, 43.813114>,  <38.393375, 35.738049, 44.441975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993904, 35.584721, 43.813114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.862007, 35.946796, 43.920372>,  <37.782867, 36.164040, 43.984726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.862007, 35.946796, 43.920372>,  <37.993904, 35.584721, 43.813114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862007, 35.946796, 43.920372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187691, 0.341220, -0.921054,
		-0.925224, -0.253386, -0.282412,
		-0.329747, 0.905188, 0.268146,
		37.763084, 36.218353, 44.000816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452145, 35.768192, 43.396610>,  <37.993904, 35.584721, 43.813114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452145, 35.768192, 43.396610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.601692, 36.116764, 43.523624>,  <37.691422, 36.325909, 43.599834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.601692, 36.116764, 43.523624>,  <37.452145, 35.768192, 43.396610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601692, 36.116764, 43.523624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036704, 0.328199, -0.943895,
		-0.926754, 0.364550, 0.090719,
		0.373871, 0.871429, 0.317540,
		37.713852, 36.378193, 43.618885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128273, 36.219421, 42.932735>,  <37.452145, 35.768192, 43.396610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128273, 36.219421, 42.932735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.368454, 36.465462, 43.137131>,  <37.512562, 36.613087, 43.259769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.368454, 36.465462, 43.137131>,  <37.128273, 36.219421, 42.932735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368454, 36.465462, 43.137131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124343, 0.559420, -0.819505,
		-0.789934, 0.555612, 0.259422,
		0.600453, 0.615097, 0.510991,
		37.548592, 36.649990, 43.290428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897572, 36.948086, 42.970993>,  <37.128273, 36.219421, 42.932735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897572, 36.948086, 42.970993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.297413, 36.939732, 42.978550>,  <37.537319, 36.934719, 42.983086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.297413, 36.939732, 42.978550>,  <36.897572, 36.948086, 42.970993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297413, 36.939732, 42.978550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026606, 0.480214, -0.876748,
		0.009235, 0.876903, 0.480579,
		0.999603, -0.020883, 0.018896,
		37.597294, 36.933468, 42.984219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082329, 37.658810, 42.701668>,  <36.897572, 36.948086, 42.970993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082329, 37.658810, 42.701668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.416836, 37.442863, 42.663296>,  <37.617538, 37.313297, 42.640270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.416836, 37.442863, 42.663296>,  <37.082329, 37.658810, 42.701668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416836, 37.442863, 42.663296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171109, 0.423161, -0.889751,
		0.520941, 0.727654, 0.446251,
		0.836267, -0.539865, -0.095934,
		37.667717, 37.280903, 42.634514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597435, 38.112434, 42.341087>,  <37.082329, 37.658810, 42.701668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597435, 38.112434, 42.341087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.731838, 37.739773, 42.285786>,  <37.812481, 37.516174, 42.252605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.731838, 37.739773, 42.285786>,  <37.597435, 38.112434, 42.341087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731838, 37.739773, 42.285786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199537, 0.213871, -0.956266,
		0.920481, 0.293724, 0.257762,
		0.336006, -0.931657, -0.138256,
		37.832642, 37.460274, 42.244308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112606, 38.282410, 42.017349>,  <37.597435, 38.112434, 42.341087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112606, 38.282410, 42.017349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.023563, 37.901539, 41.933628>,  <37.970139, 37.673016, 41.883396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.023563, 37.901539, 41.933628>,  <38.112606, 38.282410, 42.017349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023563, 37.901539, 41.933628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180880, 0.170628, -0.968591,
		0.957982, -0.253474, 0.134246,
		-0.222607, -0.952175, -0.209307,
		37.956779, 37.615887, 41.870834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.076395, 42.101658, 31.222401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.697592, 42.120914, 31.095366>,  <26.470310, 42.132469, 31.019144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.697592, 42.120914, 31.095366>,  <27.076395, 42.101658, 31.222401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.697592, 42.120914, 31.095366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303719, -0.456039, 0.836531,
		-0.104560, 0.888657, 0.446493,
		-0.947007, 0.048141, -0.317586,
		26.413490, 42.135357, 31.000090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.591530, 42.248238, 31.767841>,  <27.076395, 42.101658, 31.222401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.591530, 42.248238, 31.767841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.375692, 42.033432, 31.508471>,  <26.246189, 41.904549, 31.352848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.375692, 42.033432, 31.508471>,  <26.591530, 42.248238, 31.767841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.375692, 42.033432, 31.508471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352132, -0.555621, 0.753185,
		-0.764748, 0.634747, 0.110711,
		-0.539596, -0.537012, -0.648425,
		26.213814, 41.872330, 31.313944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.001524, 42.109612, 32.170811>,  <26.591530, 42.248238, 31.767841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.001524, 42.109612, 32.170811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.992977, 41.840248, 31.875225>,  <25.987848, 41.678631, 31.697874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.992977, 41.840248, 31.875225>,  <26.001524, 42.109612, 32.170811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.992977, 41.840248, 31.875225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289869, -0.703209, 0.649209,
		-0.956828, 0.228073, -0.180175,
		-0.021367, -0.673409, -0.738961,
		25.986567, 41.638226, 31.653536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.385687, 41.905998, 32.259846>,  <26.001524, 42.109612, 32.170811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.385687, 41.905998, 32.259846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.580458, 41.635937, 32.038193>,  <25.697319, 41.473900, 31.905201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.580458, 41.635937, 32.038193>,  <25.385687, 41.905998, 32.259846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.580458, 41.635937, 32.038193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301974, -0.725430, 0.618516,
		-0.819582, -0.133837, -0.557111,
		0.486926, -0.675158, -0.554135,
		25.726536, 41.433388, 31.871952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.919447, 41.266117, 32.465164>,  <25.385687, 41.905998, 32.259846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.919447, 41.266117, 32.465164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.241266, 41.143909, 32.261456>,  <25.434357, 41.070583, 32.139229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.241266, 41.143909, 32.261456>,  <24.919447, 41.266117, 32.465164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.241266, 41.143909, 32.261456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139918, -0.930898, 0.337420,
		-0.577171, -0.200214, -0.791699,
		0.804547, -0.305521, -0.509274,
		25.482630, 41.052254, 32.108673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.739393, 40.745827, 32.013184>,  <24.919447, 41.266117, 32.465164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.739393, 40.745827, 32.013184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.130278, 40.694584, 32.080891>,  <25.364807, 40.663837, 32.121513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.130278, 40.694584, 32.080891>,  <24.739393, 40.745827, 32.013184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130278, 40.694584, 32.080891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178658, -0.926966, 0.329871,
		0.114644, -0.352593, -0.928728,
		0.977209, -0.128106, 0.169265,
		25.423441, 40.656151, 32.131668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.919436, 40.076584, 31.755201>,  <24.739393, 40.745827, 32.013184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.919436, 40.076584, 31.755201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.205126, 40.172794, 32.018116>,  <25.376541, 40.230518, 32.175865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.205126, 40.172794, 32.018116>,  <24.919436, 40.076584, 31.755201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.205126, 40.172794, 32.018116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125778, -0.879703, 0.458588,
		0.688520, -0.410208, -0.598055,
		0.714227, 0.240525, 0.657288,
		25.419394, 40.244953, 32.215302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.327024, 39.457272, 31.741238>,  <24.919436, 40.076584, 31.755201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.327024, 39.457272, 31.741238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.427731, 39.635952, 32.084648>,  <25.488155, 39.743160, 32.290695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.427731, 39.635952, 32.084648>,  <25.327024, 39.457272, 31.741238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.427731, 39.635952, 32.084648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211896, -0.840135, 0.499272,
		0.944306, -0.307619, -0.116863,
		0.251766, 0.446703, 0.858528,
		25.503260, 39.769962, 32.342205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.993858, 39.205711, 32.030624>,  <25.327024, 39.457272, 31.741238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.993858, 39.205711, 32.030624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.786240, 39.358269, 32.336601>,  <25.661669, 39.449802, 32.520187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.786240, 39.358269, 32.336601>,  <25.993858, 39.205711, 32.030624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786240, 39.358269, 32.336601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243891, -0.791639, 0.560200,
		0.819212, 0.477331, 0.317878,
		-0.519046, 0.381395, 0.764937,
		25.630526, 39.472687, 32.566082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494370, 39.283695, 32.576340>,  <25.993858, 39.205711, 32.030624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494370, 39.283695, 32.576340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.118576, 39.242004, 32.706882>,  <25.893101, 39.216991, 32.785210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.118576, 39.242004, 32.706882>,  <26.494370, 39.283695, 32.576340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.118576, 39.242004, 32.706882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261387, -0.833872, 0.486142,
		0.221470, 0.542028, 0.810652,
		-0.939483, -0.104228, 0.326356,
		25.836731, 39.210735, 32.804790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604328, 39.063873, 33.268238>,  <26.494370, 39.283695, 32.576340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604328, 39.063873, 33.268238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.216650, 38.965355, 33.268051>,  <25.984043, 38.906242, 33.267941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.216650, 38.965355, 33.268051>,  <26.604328, 39.063873, 33.268238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.216650, 38.965355, 33.268051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188589, -0.743334, 0.641785,
		-0.158416, 0.621926, 0.766885,
		-0.969195, -0.246295, -0.000467,
		25.925892, 38.891468, 33.267910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359720, 38.879288, 33.920578>,  <26.604328, 39.063873, 33.268238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359720, 38.879288, 33.920578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.083229, 38.710445, 33.685963>,  <25.917334, 38.609138, 33.545193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.083229, 38.710445, 33.685963>,  <26.359720, 38.879288, 33.920578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.083229, 38.710445, 33.685963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083451, -0.852863, 0.515424,
		-0.717802, 0.307328, 0.624748,
		-0.691228, -0.422108, -0.586540,
		25.875860, 38.583813, 33.510002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.866173, 38.503204, 34.371311>,  <26.359720, 38.879288, 33.920578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.866173, 38.503204, 34.371311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.856178, 38.362640, 33.996956>,  <25.850182, 38.278301, 33.772343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.856178, 38.362640, 33.996956>,  <25.866173, 38.503204, 34.371311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.856178, 38.362640, 33.996956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171495, -0.923809, 0.342295,
		-0.984868, -0.151948, 0.083346,
		-0.024985, -0.351409, -0.935889,
		25.848682, 38.257217, 33.716190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.561333, 37.826260, 34.470932>,  <25.866173, 38.503204, 34.371311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.561333, 37.826260, 34.470932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.705412, 37.802784, 34.098522>,  <25.791859, 37.788696, 33.875076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.705412, 37.802784, 34.098522>,  <25.561333, 37.826260, 34.470932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.705412, 37.802784, 34.098522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124880, -0.986003, 0.110471,
		-0.924480, -0.156058, -0.347826,
		0.360197, -0.058691, -0.931028,
		25.813471, 37.785175, 33.819214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.289778, 37.222530, 34.239365>,  <25.561333, 37.826260, 34.470932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.289778, 37.222530, 34.239365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.617085, 37.308235, 34.025997>,  <25.813469, 37.359657, 33.897976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.617085, 37.308235, 34.025997>,  <25.289778, 37.222530, 34.239365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.617085, 37.308235, 34.025997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334785, -0.931953, 0.139222,
		-0.467289, -0.292500, -0.834317,
		0.818266, 0.214260, -0.533416,
		25.862564, 37.372513, 33.865971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.431021, 36.659748, 33.871780>,  <25.289778, 37.222530, 34.239365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.431021, 36.659748, 33.871780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.796585, 36.818810, 33.839195>,  <26.015924, 36.914246, 33.819645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.796585, 36.818810, 33.839195>,  <25.431021, 36.659748, 33.871780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.796585, 36.818810, 33.839195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402675, -0.913474, 0.058465,
		-0.051168, -0.086236, -0.994960,
		0.913912, 0.397654, -0.081466,
		26.070759, 36.938107, 33.814754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793392, 36.341526, 33.334351>,  <25.431021, 36.659748, 33.871780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793392, 36.341526, 33.334351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.113289, 36.482780, 33.528549>,  <26.305227, 36.567535, 33.645069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.113289, 36.482780, 33.528549>,  <25.793392, 36.341526, 33.334351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113289, 36.482780, 33.528549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441808, -0.893740, -0.077685,
		0.406473, 0.276624, -0.870781,
		0.799741, 0.353141, 0.485496,
		26.353210, 36.588722, 33.674198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.405943, 36.162624, 32.842445>,  <25.793392, 36.341526, 33.334351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.405943, 36.162624, 32.842445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.517933, 36.235546, 33.219460>,  <26.585127, 36.279301, 33.445667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.517933, 36.235546, 33.219460>,  <26.405943, 36.162624, 32.842445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.517933, 36.235546, 33.219460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410088, -0.910429, 0.054278,
		0.868010, 0.371327, -0.329659,
		0.279977, 0.182304, 0.942538,
		26.601927, 36.290237, 33.502220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119965, 35.881886, 32.906479>,  <26.405943, 36.162624, 32.842445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119965, 35.881886, 32.906479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.982752, 35.898605, 33.281837>,  <26.900425, 35.908638, 33.507053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.982752, 35.898605, 33.281837>,  <27.119965, 35.881886, 32.906479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.982752, 35.898605, 33.281837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461005, -0.862926, 0.206960,
		0.818416, 0.503598, 0.276739,
		-0.343030, 0.041801, 0.938394,
		26.879843, 35.911144, 33.563354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.691092, 35.860790, 33.284092>,  <27.119965, 35.881886, 32.906479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.691092, 35.860790, 33.284092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.393776, 35.749001, 33.527210>,  <27.215385, 35.681927, 33.673080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.393776, 35.749001, 33.527210>,  <27.691092, 35.860790, 33.284092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393776, 35.749001, 33.527210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489098, -0.846887, 0.208721,
		0.456402, 0.452412, 0.766172,
		-0.743290, -0.279473, 0.607795,
		27.170790, 35.665157, 33.709549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468687, 35.572975, 33.194122>,  <27.691092, 35.860790, 33.284092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468687, 35.572975, 33.194122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.853506, 35.682129, 33.194420>,  <29.084396, 35.747620, 33.194599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.853506, 35.682129, 33.194420>,  <28.468687, 35.572975, 33.194122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853506, 35.682129, 33.194420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249029, 0.879057, -0.406502,
		-0.111585, 0.390887, 0.913650,
		0.962047, 0.272885, 0.000748,
		29.142120, 35.763996, 33.194645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413752, 36.173084, 33.443977>,  <28.468687, 35.572975, 33.194122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413752, 36.173084, 33.443977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.783710, 36.216541, 33.298229>,  <29.005686, 36.242615, 33.210781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.783710, 36.216541, 33.298229>,  <28.413752, 36.173084, 33.443977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783710, 36.216541, 33.298229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280464, 0.841985, -0.460870,
		0.256728, 0.528449, 0.809217,
		0.924895, 0.108638, -0.364372,
		29.061178, 36.249134, 33.188919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620564, 36.840061, 33.614243>,  <28.413752, 36.173084, 33.443977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620564, 36.840061, 33.614243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.866173, 36.733223, 33.317154>,  <29.013538, 36.669121, 33.138901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.866173, 36.733223, 33.317154>,  <28.620564, 36.840061, 33.614243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866173, 36.733223, 33.317154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239288, 0.833721, -0.497646,
		0.752142, 0.483290, 0.448011,
		0.614023, -0.267097, -0.742722,
		29.050379, 36.653095, 33.094337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912254, 37.578880, 33.378658>,  <28.620564, 36.840061, 33.614243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912254, 37.578880, 33.378658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.954056, 37.310265, 33.085232>,  <28.979137, 37.149097, 32.909176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.954056, 37.310265, 33.085232>,  <28.912254, 37.578880, 33.378658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954056, 37.310265, 33.085232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168319, 0.715022, -0.678537,
		0.980177, 0.194382, -0.038310,
		0.104503, -0.671535, -0.733567,
		28.985407, 37.108803, 32.865162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247307, 38.018116, 32.789200>,  <28.912254, 37.578880, 33.378658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247307, 38.018116, 32.789200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.060879, 37.703217, 32.627701>,  <28.949022, 37.514275, 32.530800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.060879, 37.703217, 32.627701>,  <29.247307, 38.018116, 32.789200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060879, 37.703217, 32.627701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329964, 0.578087, -0.746284,
		0.820916, -0.214597, -0.529193,
		-0.466070, -0.787251, -0.403752,
		28.921059, 37.467041, 32.506577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472559, 37.935337, 32.075718>,  <29.247307, 38.018116, 32.789200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472559, 37.935337, 32.075718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.128588, 37.731377, 32.084923>,  <28.922205, 37.609001, 32.090446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.128588, 37.731377, 32.084923>,  <29.472559, 37.935337, 32.075718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128588, 37.731377, 32.084923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277157, 0.428613, -0.859928,
		0.428613, -0.745853, -0.509897,
		0.859928, 0.509897, -0.023009,
		28.870609, 37.578407, 32.091827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545855, 37.731686, 31.411861>,  <29.472559, 37.935337, 32.075718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545855, 37.731686, 31.411861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.170452, 37.686783, 31.542461>,  <28.945210, 37.659843, 31.620821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.170452, 37.686783, 31.542461>,  <29.545855, 37.731686, 31.411861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170452, 37.686783, 31.542461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339745, 0.468584, -0.815477,
		-0.061453, -0.876258, -0.477907,
		-0.938508, -0.112253, 0.326500,
		28.888899, 37.653107, 31.640411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108257, 37.355572, 30.861818>,  <29.545855, 37.731686, 31.411861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108257, 37.355572, 30.861818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.852280, 37.557842, 31.093252>,  <28.698692, 37.679203, 31.232113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.852280, 37.557842, 31.093252>,  <29.108257, 37.355572, 30.861818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.852280, 37.557842, 31.093252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464341, 0.345452, -0.815506,
		-0.612257, -0.790540, 0.013736,
		-0.639945, 0.505678, 0.578586,
		28.660295, 37.709545, 31.266829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417421, 37.331985, 30.499249>,  <29.108257, 37.355572, 30.861818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417421, 37.331985, 30.499249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.402956, 37.633556, 30.761635>,  <28.394278, 37.814499, 30.919065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.402956, 37.633556, 30.761635>,  <28.417421, 37.331985, 30.499249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402956, 37.633556, 30.761635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568383, 0.524371, -0.634015,
		-0.821969, -0.395765, 0.409557,
		-0.036161, 0.753926, 0.655964,
		28.392107, 37.859734, 30.958424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720274, 37.600540, 30.519386>,  <28.417421, 37.331985, 30.499249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720274, 37.600540, 30.519386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.915871, 37.917686, 30.664852>,  <28.033228, 38.107975, 30.752132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.915871, 37.917686, 30.664852>,  <27.720274, 37.600540, 30.519386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915871, 37.917686, 30.664852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677069, 0.607851, -0.414843,
		-0.549968, -0.043371, 0.834059,
		0.488991, 0.792866, 0.363664,
		28.062569, 38.155548, 30.773951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234747, 38.116714, 30.769852>,  <27.720274, 37.600540, 30.519386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234747, 38.116714, 30.769852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.582668, 38.308548, 30.723486>,  <27.791422, 38.423649, 30.695665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.582668, 38.308548, 30.723486>,  <27.234747, 38.116714, 30.769852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582668, 38.308548, 30.723486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486147, 0.792912, -0.367358,
		-0.084269, 0.375882, 0.922828,
		0.869805, 0.479587, -0.115916,
		27.843609, 38.452423, 30.688711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128508, 38.761242, 31.049480>,  <27.234747, 38.116714, 30.769852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128508, 38.761242, 31.049480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.453745, 38.815590, 30.823057>,  <27.648888, 38.848198, 30.687204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.453745, 38.815590, 30.823057>,  <27.128508, 38.761242, 31.049480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453745, 38.815590, 30.823057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323807, 0.913630, -0.245826,
		0.483765, 0.383172, 0.786861,
		0.813093, 0.135869, -0.566056,
		27.697672, 38.856350, 30.653240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441128, 39.445698, 31.224344>,  <27.128508, 38.761242, 31.049480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441128, 39.445698, 31.224344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.598223, 39.326805, 30.876226>,  <27.692480, 39.255470, 30.667356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.598223, 39.326805, 30.876226>,  <27.441128, 39.445698, 31.224344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598223, 39.326805, 30.876226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267000, 0.868716, -0.417185,
		0.880038, 0.396213, 0.261817,
		0.392738, -0.297233, -0.870292,
		27.716043, 39.237637, 30.615139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697025, 40.152168, 30.928835>,  <27.441128, 39.445698, 31.224344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697025, 40.152168, 30.928835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.698605, 39.893150, 30.624029>,  <27.699553, 39.737740, 30.441145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.698605, 39.893150, 30.624029>,  <27.697025, 40.152168, 30.928835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698605, 39.893150, 30.624029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346239, 0.714001, -0.608540,
		0.938138, 0.266241, -0.221389,
		0.003946, -0.647548, -0.762015,
		27.699789, 39.698887, 30.395426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180664, 40.499657, 30.446230>,  <27.697025, 40.152168, 30.928835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180664, 40.499657, 30.446230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.928225, 40.240231, 30.276016>,  <27.776760, 40.084576, 30.173887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.928225, 40.240231, 30.276016>,  <28.180664, 40.499657, 30.446230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928225, 40.240231, 30.276016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411601, 0.744969, -0.524982,
		0.657492, -0.156167, -0.737100,
		-0.631101, -0.648562, -0.425533,
		27.738894, 40.045662, 30.148355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218115, 40.635441, 29.792728>,  <28.180664, 40.499657, 30.446230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218115, 40.635441, 29.792728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.860136, 40.459980, 29.825363>,  <27.645350, 40.354706, 29.844944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.860136, 40.459980, 29.825363>,  <28.218115, 40.635441, 29.792728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860136, 40.459980, 29.825363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382454, 0.660031, -0.646597,
		0.229781, -0.609873, -0.758456,
		-0.894947, -0.438650, 0.081587,
		27.591652, 40.328384, 29.849838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986492, 40.690845, 29.091890>,  <28.218115, 40.635441, 29.792728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986492, 40.690845, 29.091890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.665987, 40.662830, 29.329571>,  <27.473684, 40.646023, 29.472179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.665987, 40.662830, 29.329571>,  <27.986492, 40.690845, 29.091890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665987, 40.662830, 29.329571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470738, 0.686791, -0.553826,
		-0.369304, -0.723472, -0.583269,
		-0.801262, -0.070037, 0.594201,
		27.425608, 40.641819, 29.507832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482300, 40.747280, 28.668190>,  <27.986492, 40.690845, 29.091890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482300, 40.747280, 28.668190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.299873, 40.818096, 29.017054>,  <27.190418, 40.860588, 29.226372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.299873, 40.818096, 29.017054>,  <27.482300, 40.747280, 28.668190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299873, 40.818096, 29.017054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496189, 0.762966, -0.414342,
		-0.738784, -0.621723, -0.260115,
		-0.456065, 0.177043, 0.872159,
		27.163054, 40.871208, 29.278702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767332, 40.862041, 28.526911>,  <27.482300, 40.747280, 28.668190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767332, 40.862041, 28.526911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.824522, 41.020164, 28.889853>,  <26.858835, 41.115040, 29.107616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.824522, 41.020164, 28.889853>,  <26.767332, 40.862041, 28.526911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824522, 41.020164, 28.889853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440187, 0.846505, -0.299439,
		-0.886450, -0.356593, 0.295039,
		0.142974, 0.395310, 0.907352,
		26.867414, 41.138756, 29.162058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.129818, 41.180252, 28.699158>,  <26.767332, 40.862041, 28.526911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.129818, 41.180252, 28.699158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.368805, 41.389088, 28.942617>,  <26.512197, 41.514389, 29.088694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.368805, 41.389088, 28.942617>,  <26.129818, 41.180252, 28.699158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368805, 41.389088, 28.942617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568281, 0.811182, -0.137985,
		-0.565766, -0.263442, 0.781349,
		0.597466, 0.522093, 0.608649,
		26.548044, 41.545715, 29.125212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.762714, 41.692108, 28.950796>,  <26.129818, 41.180252, 28.699158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.762714, 41.692108, 28.950796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.106520, 41.846371, 29.084963>,  <26.312803, 41.938927, 29.165462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.106520, 41.846371, 29.084963>,  <25.762714, 41.692108, 28.950796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.106520, 41.846371, 29.084963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405247, 0.914121, -0.012584,
		-0.311463, -0.125110, 0.941986,
		0.859515, 0.385656, 0.335415,
		26.364374, 41.962067, 29.185587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.815638, 42.107979, 29.610107>,  <25.762714, 41.692108, 28.950796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.815638, 42.107979, 29.610107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.061888, 42.201630, 29.309126>,  <26.209639, 42.257820, 29.128536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.061888, 42.201630, 29.309126>,  <25.815638, 42.107979, 29.610107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.061888, 42.201630, 29.309126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449040, 0.888885, -0.090814,
		0.647585, 0.393790, 0.652353,
		0.615628, 0.234123, -0.752456,
		26.246576, 42.271866, 29.083389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.204292, 34.006378, 44.888287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.972492, 33.680920, 44.869694>,  <37.833412, 33.485645, 44.858540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.972492, 33.680920, 44.869694>,  <38.204292, 34.006378, 44.888287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972492, 33.680920, 44.869694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096238, -0.124956, 0.987484,
		-0.809271, 0.567773, 0.150716,
		-0.579499, -0.813646, -0.046482,
		37.798641, 33.436825, 44.855751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770916, 34.146763, 45.491104>,  <38.204292, 34.006378, 44.888287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770916, 34.146763, 45.491104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.729588, 33.757061, 45.410950>,  <37.704792, 33.523239, 45.362858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.729588, 33.757061, 45.410950>,  <37.770916, 34.146763, 45.491104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729588, 33.757061, 45.410950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157823, -0.214970, 0.963784,
		-0.982047, 0.067955, 0.175970,
		-0.103322, -0.974254, -0.200386,
		37.698589, 33.464787, 45.350834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360199, 33.929050, 45.984100>,  <37.770916, 34.146763, 45.491104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360199, 33.929050, 45.984100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.542133, 33.606537, 45.832821>,  <37.651295, 33.413029, 45.742054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.542133, 33.606537, 45.832821>,  <37.360199, 33.929050, 45.984100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542133, 33.606537, 45.832821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364856, -0.218694, 0.905015,
		-0.812406, -0.549624, 0.194705,
		0.454837, -0.806279, -0.378202,
		37.678585, 33.364655, 45.719360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408218, 33.508266, 46.596756>,  <37.360199, 33.929050, 45.984100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408218, 33.508266, 46.596756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.650269, 33.305840, 46.350922>,  <37.795498, 33.184383, 46.203423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.650269, 33.305840, 46.350922>,  <37.408218, 33.508266, 46.596756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650269, 33.305840, 46.350922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456638, -0.411735, 0.788642,
		-0.652156, -0.757869, -0.018059,
		0.605123, -0.506072, -0.614587,
		37.831806, 33.154018, 46.166546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281933, 32.789227, 46.621216>,  <37.408218, 33.508266, 46.596756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281933, 32.789227, 46.621216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.661163, 32.861969, 46.516846>,  <37.888702, 32.905613, 46.454224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.661163, 32.861969, 46.516846>,  <37.281933, 32.789227, 46.621216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661163, 32.861969, 46.516846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316830, -0.468468, 0.824716,
		0.027742, -0.864562, -0.501760,
		0.948076, 0.181852, -0.260923,
		37.945587, 32.916523, 46.438568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571037, 32.191586, 46.816959>,  <37.281933, 32.789227, 46.621216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571037, 32.191586, 46.816959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.869671, 32.450409, 46.755085>,  <38.048851, 32.605705, 46.717960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.869671, 32.450409, 46.755085>,  <37.571037, 32.191586, 46.816959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869671, 32.450409, 46.755085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497425, -0.388511, 0.775646,
		0.441795, -0.656026, -0.611920,
		0.746582, 0.647061, -0.154681,
		38.093647, 32.644527, 46.708679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111656, 31.803877, 46.915157>,  <37.571037, 32.191586, 46.816959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111656, 31.803877, 46.915157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.247921, 32.178612, 46.946873>,  <38.329681, 32.403454, 46.965900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.247921, 32.178612, 46.946873>,  <38.111656, 31.803877, 46.915157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247921, 32.178612, 46.946873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715384, -0.313006, 0.624702,
		0.610061, -0.156091, -0.776828,
		0.340662, 0.936837, 0.079288,
		38.350121, 32.459663, 46.970657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916012, 31.739063, 46.815826>,  <38.111656, 31.803877, 46.915157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916012, 31.739063, 46.815826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.805965, 32.061890, 47.024807>,  <38.739937, 32.255585, 47.150196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.805965, 32.061890, 47.024807>,  <38.916012, 31.739063, 46.815826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805965, 32.061890, 47.024807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761239, -0.149058, 0.631107,
		0.587221, 0.571340, -0.573361,
		-0.275112, 0.807064, 0.522456,
		38.723431, 32.304008, 47.181545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525284, 32.017822, 46.967659>,  <38.916012, 31.739063, 46.815826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525284, 32.017822, 46.967659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.263092, 32.143772, 47.242237>,  <39.105778, 32.219341, 47.406982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.263092, 32.143772, 47.242237>,  <39.525284, 32.017822, 46.967659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263092, 32.143772, 47.242237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725391, 0.009592, 0.688270,
		0.210134, 0.949085, -0.234694,
		-0.655478, 0.314874, 0.686442,
		39.066448, 32.238235, 47.448170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786625, 32.529182, 47.319729>,  <39.525284, 32.017822, 46.967659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786625, 32.529182, 47.319729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.509605, 32.393681, 47.574482>,  <39.343395, 32.312378, 47.727333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.509605, 32.393681, 47.574482>,  <39.786625, 32.529182, 47.319729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509605, 32.393681, 47.574482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665706, 0.039959, 0.745143,
		-0.277869, 0.940026, 0.197836,
		-0.692549, -0.338753, 0.636885,
		39.301842, 32.292053, 47.765549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870293, 32.887054, 48.036209>,  <39.786625, 32.529182, 47.319729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870293, 32.887054, 48.036209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.637760, 32.574829, 48.128094>,  <39.498241, 32.387493, 48.183224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.637760, 32.574829, 48.128094>,  <39.870293, 32.887054, 48.036209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637760, 32.574829, 48.128094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520036, -0.139299, 0.842709,
		-0.625793, 0.609352, 0.486902,
		-0.581331, -0.780568, 0.229713,
		39.463360, 32.340660, 48.197006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693947, 32.875271, 48.743614>,  <39.870293, 32.887054, 48.036209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693947, 32.875271, 48.743614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.642086, 32.490837, 48.646042>,  <39.610970, 32.260178, 48.587498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.642086, 32.490837, 48.646042>,  <39.693947, 32.875271, 48.743614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642086, 32.490837, 48.646042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468572, -0.276190, 0.839142,
		-0.873860, -0.005502, 0.486147,
		-0.129652, -0.961087, -0.243930,
		39.603191, 32.202511, 48.572865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408024, 33.072651, 49.442478>,  <39.693947, 32.875271, 48.743614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408024, 33.072651, 49.442478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.110580, 32.840893, 49.309006>,  <38.932114, 32.701839, 49.228920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.110580, 32.840893, 49.309006>,  <39.408024, 33.072651, 49.442478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110580, 32.840893, 49.309006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055981, -0.443364, 0.894592,
		-0.666265, 0.683908, 0.297256,
		-0.743611, -0.579394, -0.333684,
		38.887497, 32.667076, 49.208900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761417, 33.044846, 49.817070>,  <39.408024, 33.072651, 49.442478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761417, 33.044846, 49.817070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.807850, 32.682064, 49.655106>,  <38.835709, 32.464394, 49.557926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.807850, 32.682064, 49.655106>,  <38.761417, 33.044846, 49.817070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807850, 32.682064, 49.655106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070718, -0.414180, 0.907444,
		-0.990719, -0.076704, -0.112218,
		0.116083, -0.906957, -0.404912,
		38.842674, 32.409977, 49.533630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745296, 32.660416, 50.437313>,  <38.761417, 33.044846, 49.817070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745296, 32.660416, 50.437313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.499134, 32.696125, 50.750568>,  <38.351437, 32.717552, 50.938522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.499134, 32.696125, 50.750568>,  <38.745296, 32.660416, 50.437313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499134, 32.696125, 50.750568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406519, 0.815274, -0.412395,
		-0.675287, -0.572151, -0.465436,
		-0.615410, 0.089276, 0.783135,
		38.314510, 32.722908, 50.985508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008942, 32.526920, 50.251011>,  <38.745296, 32.660416, 50.437313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008942, 32.526920, 50.251011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.054672, 32.779510, 50.557781>,  <38.082111, 32.931065, 50.741844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.054672, 32.779510, 50.557781>,  <38.008942, 32.526920, 50.251011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054672, 32.779510, 50.557781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416996, 0.731187, -0.539889,
		-0.901690, -0.258081, 0.346916,
		0.114325, 0.631475, 0.766922,
		38.088970, 32.968952, 50.787857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457249, 32.938354, 50.237827>,  <38.008942, 32.526920, 50.251011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457249, 32.938354, 50.237827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.638313, 33.188519, 50.492062>,  <37.746952, 33.338615, 50.644600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.638313, 33.188519, 50.492062>,  <37.457249, 32.938354, 50.237827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638313, 33.188519, 50.492062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360280, 0.780296, -0.511211,
		-0.815658, 0.002417, 0.578530,
		0.452660, 0.625406, 0.635583,
		37.774113, 33.376141, 50.682735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963470, 33.461918, 50.498505>,  <37.457249, 32.938354, 50.237827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963470, 33.461918, 50.498505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.314735, 33.645203, 50.553452>,  <37.525494, 33.755173, 50.586418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.314735, 33.645203, 50.553452>,  <36.963470, 33.461918, 50.498505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314735, 33.645203, 50.553452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292040, 0.740979, -0.604701,
		-0.378862, 0.490912, 0.784518,
		0.878166, 0.458209, 0.137363,
		37.578186, 33.782665, 50.594662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904385, 34.136456, 50.588844>,  <36.963470, 33.461918, 50.498505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904385, 34.136456, 50.588844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.278763, 34.130947, 50.448090>,  <37.503387, 34.127644, 50.363636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.278763, 34.130947, 50.448090>,  <36.904385, 34.136456, 50.588844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278763, 34.130947, 50.448090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223034, 0.750107, -0.622571,
		0.272523, 0.661173, 0.698986,
		0.935942, -0.013767, -0.351886,
		37.559544, 34.126816, 50.342525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051746, 34.819744, 50.529526>,  <36.904385, 34.136456, 50.588844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051746, 34.819744, 50.529526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.328636, 34.636761, 50.306259>,  <37.494770, 34.526970, 50.172298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.328636, 34.636761, 50.306259>,  <37.051746, 34.819744, 50.529526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328636, 34.636761, 50.306259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070654, 0.726758, -0.683250,
		0.718213, 0.512401, 0.470761,
		0.692227, -0.457458, -0.558170,
		37.536304, 34.499523, 50.138809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478607, 35.313343, 50.352638>,  <37.051746, 34.819744, 50.529526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478607, 35.313343, 50.352638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.577518, 35.070435, 50.050625>,  <37.636864, 34.924690, 49.869415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.577518, 35.070435, 50.050625>,  <37.478607, 35.313343, 50.352638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577518, 35.070435, 50.050625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072376, 0.788635, -0.610587,
		0.966238, 0.096337, 0.238961,
		0.247276, -0.607268, -0.755037,
		37.651703, 34.888256, 49.824112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001320, 35.657230, 49.978451>,  <37.478607, 35.313343, 50.352638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001320, 35.657230, 49.978451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.869270, 35.372837, 49.730091>,  <37.790039, 35.202202, 49.581074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.869270, 35.372837, 49.730091>,  <38.001320, 35.657230, 49.978451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869270, 35.372837, 49.730091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139307, 0.613879, -0.777011,
		0.933602, -0.343005, -0.103610,
		-0.330123, -0.710985, -0.620901,
		37.770233, 35.159542, 49.543819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468555, 35.646580, 49.278610>,  <38.001320, 35.657230, 49.978451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468555, 35.646580, 49.278610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.140297, 35.438213, 49.184650>,  <37.943340, 35.313194, 49.128273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.140297, 35.438213, 49.184650>,  <38.468555, 35.646580, 49.278610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140297, 35.438213, 49.184650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022146, 0.381769, -0.923992,
		0.571002, -0.763476, -0.301763,
		-0.820650, -0.520919, -0.234899,
		37.894100, 35.281937, 49.114182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583332, 35.245377, 48.617542>,  <38.468555, 35.646580, 49.278610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583332, 35.245377, 48.617542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.183964, 35.241982, 48.639748>,  <37.944344, 35.239944, 48.653072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.183964, 35.241982, 48.639748>,  <38.583332, 35.245377, 48.617542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183964, 35.241982, 48.639748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056150, 0.132590, -0.989579,
		0.001037, -0.991135, -0.132857,
		-0.998422, -0.008486, 0.055515,
		37.884438, 35.239433, 48.656403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336231, 34.916916, 48.056282>,  <38.583332, 35.245377, 48.617542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336231, 34.916916, 48.056282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.052151, 35.170364, 48.179008>,  <37.881702, 35.322433, 48.252644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.052151, 35.170364, 48.179008>,  <38.336231, 34.916916, 48.056282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052151, 35.170364, 48.179008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167953, 0.270740, -0.947888,
		-0.683669, -0.724724, -0.085862,
		-0.710203, 0.633621, 0.306816,
		37.839088, 35.360451, 48.271053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787735, 34.831276, 47.467682>,  <38.336231, 34.916916, 48.056282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787735, 34.831276, 47.467682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.703617, 35.170776, 47.661755>,  <37.653145, 35.374477, 47.778198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.703617, 35.170776, 47.661755>,  <37.787735, 34.831276, 47.467682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703617, 35.170776, 47.661755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462996, 0.350632, -0.814059,
		-0.861051, -0.395831, 0.319231,
		-0.210297, 0.848749, 0.485180,
		37.640530, 35.425400, 47.807308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067715, 34.950508, 47.535786>,  <37.787735, 34.831276, 47.467682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067715, 34.950508, 47.535786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.251060, 35.305973, 47.541260>,  <37.361069, 35.519253, 47.544544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.251060, 35.305973, 47.541260>,  <37.067715, 34.950508, 47.535786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251060, 35.305973, 47.541260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574312, 0.307903, -0.758526,
		-0.678284, 0.339822, 0.651499,
		0.458363, 0.888660, 0.013682,
		37.388569, 35.572571, 47.545364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713997, 35.384666, 47.118343>,  <37.067715, 34.950508, 47.535786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713997, 35.384666, 47.118343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.017342, 35.634823, 47.191841>,  <37.199348, 35.784916, 47.235939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.017342, 35.634823, 47.191841>,  <36.713997, 35.384666, 47.118343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017342, 35.634823, 47.191841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092463, 0.382257, -0.919418,
		-0.645237, 0.680266, 0.347716,
		0.758366, 0.625394, 0.183747,
		37.244850, 35.822441, 47.246964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026325, 35.650833, 47.034492>,  <36.713997, 35.384666, 47.118343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026325, 35.650833, 47.034492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.744762, 35.464005, 46.820446>,  <35.575825, 35.351906, 46.692017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.744762, 35.464005, 46.820446>,  <36.026325, 35.650833, 47.034492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744762, 35.464005, 46.820446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118566, -0.665543, 0.736881,
		-0.700322, 0.582146, 0.413104,
		-0.703911, -0.467074, -0.535118,
		35.533588, 35.323883, 46.659912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461288, 35.478497, 47.475071>,  <36.026325, 35.650833, 47.034492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461288, 35.478497, 47.475071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.436089, 35.216122, 47.174198>,  <35.420967, 35.058697, 46.993675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.436089, 35.216122, 47.174198>,  <35.461288, 35.478497, 47.475071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436089, 35.216122, 47.174198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070397, -0.748879, 0.658957,
		-0.995528, 0.094465, 0.001002,
		-0.062999, -0.655939, -0.752180,
		35.417191, 35.019341, 46.948544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834595, 35.120178, 47.629963>,  <35.461288, 35.478497, 47.475071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834595, 35.120178, 47.629963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.045307, 34.879505, 47.389805>,  <35.171734, 34.735100, 47.245708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.045307, 34.879505, 47.389805>,  <34.834595, 35.120178, 47.629963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045307, 34.879505, 47.389805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251312, -0.785019, 0.566204,
		-0.812000, -0.147379, -0.564744,
		0.526782, -0.601685, -0.600397,
		35.203342, 34.699001, 47.209686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467823, 34.546005, 47.696362>,  <34.834595, 35.120178, 47.629963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467823, 34.546005, 47.696362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831501, 34.433380, 47.573669>,  <35.049709, 34.365807, 47.500053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831501, 34.433380, 47.573669>,  <34.467823, 34.546005, 47.696362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831501, 34.433380, 47.573669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072666, -0.832679, 0.548967,
		-0.409971, -0.476832, -0.777531,
		0.909200, -0.281560, -0.306725,
		35.104259, 34.348911, 47.481651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425331, 33.830032, 47.665623>,  <34.467823, 34.546005, 47.696362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425331, 33.830032, 47.665623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.821903, 33.881073, 47.654354>,  <35.059845, 33.911697, 47.647591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.821903, 33.881073, 47.654354>,  <34.425331, 33.830032, 47.665623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821903, 33.881073, 47.654354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113985, -0.739042, 0.663947,
		0.063896, -0.661465, -0.747249,
		0.991426, 0.127599, -0.028175,
		35.119331, 33.919353, 47.645901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746670, 33.112289, 47.641609>,  <34.425331, 33.830032, 47.665623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746670, 33.112289, 47.641609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.017193, 33.363567, 47.795483>,  <35.179508, 33.514336, 47.887806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.017193, 33.363567, 47.795483>,  <34.746670, 33.112289, 47.641609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017193, 33.363567, 47.795483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249696, -0.686814, 0.682597,
		0.693009, -0.365591, -0.621354,
		0.676306, 0.628196, 0.384682,
		35.220085, 33.552025, 47.910889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250645, 32.722458, 47.892700>,  <34.746670, 33.112289, 47.641609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250645, 32.722458, 47.892700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.350582, 33.060013, 48.082623>,  <35.410545, 33.262547, 48.196575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.350582, 33.060013, 48.082623>,  <35.250645, 32.722458, 47.892700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350582, 33.060013, 48.082623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250188, -0.529966, 0.810273,
		0.935405, -0.083654, -0.343540,
		0.249847, 0.843883, 0.474804,
		35.425537, 33.313179, 48.225063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602413, 32.244076, 47.459049>,  <35.250645, 32.722458, 47.892700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602413, 32.244076, 47.459049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.406128, 31.899229, 47.408531>,  <35.288357, 31.692320, 47.378220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.406128, 31.899229, 47.408531>,  <35.602413, 32.244076, 47.459049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406128, 31.899229, 47.408531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558383, 0.422419, -0.713983,
		0.668887, -0.279841, -0.688679,
		-0.490713, -0.862120, -0.126292,
		35.258915, 31.640593, 47.370644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597809, 32.077759, 46.708832>,  <35.602413, 32.244076, 47.459049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597809, 32.077759, 46.708832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.292500, 31.877592, 46.872295>,  <35.109314, 31.757492, 46.970371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.292500, 31.877592, 46.872295>,  <35.597809, 32.077759, 46.708832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292500, 31.877592, 46.872295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586426, 0.271147, -0.763272,
		0.271147, -0.822231, -0.500415,
		0.763272, 0.500415, -0.408657,
		35.063519, 31.727467, 46.994892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340153, 31.677986, 46.231930>,  <35.597809, 32.077759, 46.708832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340153, 31.677986, 46.231930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.005272, 31.687408, 46.450481>,  <34.804344, 31.693062, 46.581612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.005272, 31.687408, 46.450481>,  <35.340153, 31.677986, 46.231930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005272, 31.687408, 46.450481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488883, 0.415541, -0.767020,
		-0.245110, -0.909270, -0.336377,
		-0.837206, 0.023555, 0.546380,
		34.754108, 31.694475, 46.614395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851971, 31.441389, 45.801819>,  <35.340153, 31.677986, 46.231930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851971, 31.441389, 45.801819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.657185, 31.654228, 46.078873>,  <34.540314, 31.781931, 46.245106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.657185, 31.654228, 46.078873>,  <34.851971, 31.441389, 45.801819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657185, 31.654228, 46.078873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583327, 0.392098, -0.711329,
		-0.650077, -0.750421, 0.119450,
		-0.486961, 0.532097, 0.692634,
		34.511097, 31.813858, 46.286663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169991, 31.329660, 45.627281>,  <34.851971, 31.441389, 45.801819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169991, 31.329660, 45.627281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.191090, 31.680004, 45.819153>,  <34.203751, 31.890209, 45.934277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.191090, 31.680004, 45.819153>,  <34.169991, 31.329660, 45.627281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191090, 31.680004, 45.819153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513295, 0.435814, -0.739320,
		-0.856589, -0.207215, 0.472564,
		0.052752, 0.875858, 0.479676,
		34.206917, 31.942762, 45.963055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643150, 31.761585, 45.392330>,  <34.169991, 31.329660, 45.627281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643150, 31.761585, 45.392330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.853939, 32.041531, 45.585197>,  <33.980412, 32.209499, 45.700920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.853939, 32.041531, 45.585197>,  <33.643150, 31.761585, 45.392330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853939, 32.041531, 45.585197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406033, 0.705729, -0.580589,
		-0.746615, 0.110179, 0.656069,
		0.526976, 0.699862, 0.482171,
		34.012032, 32.251488, 45.729851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146381, 32.203434, 45.398228>,  <33.643150, 31.761585, 45.392330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146381, 32.203434, 45.398228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.478752, 32.389805, 45.519859>,  <33.678177, 32.501629, 45.592838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.478752, 32.389805, 45.519859>,  <33.146381, 32.203434, 45.398228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478752, 32.389805, 45.519859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211078, 0.769674, -0.602535,
		-0.514783, 0.436479, 0.737892,
		0.830930, 0.465927, 0.304084,
		33.728031, 32.529583, 45.611084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.357777, 30.726149, 47.463913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.623569, 30.815084, 47.749298>,  <37.783047, 30.868446, 47.920528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.623569, 30.815084, 47.749298>,  <37.357777, 30.726149, 47.463913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623569, 30.815084, 47.749298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541699, -0.514383, 0.664810,
		0.514808, -0.828236, -0.221356,
		0.664481, 0.222341, 0.713463,
		37.822914, 30.881786, 47.963337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282421, 30.054058, 47.551483>,  <37.357777, 30.726149, 47.463913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282421, 30.054058, 47.551483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.611855, 30.199257, 47.377155>,  <37.809517, 30.286377, 47.272560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.611855, 30.199257, 47.377155>,  <37.282421, 30.054058, 47.551483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611855, 30.199257, 47.377155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545752, 0.297904, -0.783204,
		-0.154470, 0.882885, 0.443457,
		0.823586, 0.362999, -0.435818,
		37.858929, 30.308157, 47.246410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125282, 30.237982, 46.922150>,  <37.282421, 30.054058, 47.551483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125282, 30.237982, 46.922150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.490540, 30.400940, 46.916599>,  <37.709694, 30.498714, 46.913269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.490540, 30.400940, 46.916599>,  <37.125282, 30.237982, 46.922150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490540, 30.400940, 46.916599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123052, 0.243040, -0.962180,
		-0.388614, 0.880319, 0.272061,
		0.913147, 0.407394, -0.013876,
		37.764484, 30.523159, 46.912437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090641, 30.970455, 46.632587>,  <37.125282, 30.237982, 46.922150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090641, 30.970455, 46.632587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.439129, 30.789360, 46.556686>,  <37.648220, 30.680704, 46.511147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.439129, 30.789360, 46.556686>,  <37.090641, 30.970455, 46.632587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439129, 30.789360, 46.556686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090330, 0.232096, -0.968489,
		0.482511, 0.860907, 0.161311,
		0.871219, -0.452736, -0.189755,
		37.700493, 30.653540, 46.499760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474892, 31.371338, 46.110191>,  <37.090641, 30.970455, 46.632587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474892, 31.371338, 46.110191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.631744, 31.004574, 46.080524>,  <37.725857, 30.784515, 46.062725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.631744, 31.004574, 46.080524>,  <37.474892, 31.371338, 46.110191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631744, 31.004574, 46.080524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127086, 0.025859, -0.991555,
		0.911087, 0.398250, -0.106387,
		0.392135, -0.916913, -0.074171,
		37.749386, 30.729500, 46.058273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897369, 31.375797, 45.491390>,  <37.474892, 31.371338, 46.110191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897369, 31.375797, 45.491390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.797516, 30.992424, 45.546654>,  <37.737606, 30.762400, 45.579811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.797516, 30.992424, 45.546654>,  <37.897369, 31.375797, 45.491390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797516, 30.992424, 45.546654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166318, -0.098119, -0.981178,
		0.953951, -0.267912, -0.134911,
		-0.249632, -0.958434, 0.138159,
		37.722626, 30.704893, 45.588100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177639, 31.087202, 44.933929>,  <37.897369, 31.375797, 45.491390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177639, 31.087202, 44.933929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.927326, 30.799276, 45.054100>,  <37.777138, 30.626520, 45.126202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.927326, 30.799276, 45.054100>,  <38.177639, 31.087202, 44.933929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927326, 30.799276, 45.054100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244770, -0.184481, -0.951869,
		0.740594, -0.669202, -0.060744,
		-0.625786, -0.719817, 0.300426,
		37.739590, 30.583332, 45.144226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293751, 30.454367, 44.574429>,  <38.177639, 31.087202, 44.933929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293751, 30.454367, 44.574429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.921520, 30.406649, 44.712872>,  <37.698181, 30.378017, 44.795937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.921520, 30.406649, 44.712872>,  <38.293751, 30.454367, 44.574429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921520, 30.406649, 44.712872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315557, -0.217921, -0.923544,
		0.185598, -0.968648, 0.165149,
		-0.930579, -0.119294, 0.346109,
		37.642345, 30.370861, 44.816704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962387, 29.796432, 44.306995>,  <38.293751, 30.454367, 44.574429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962387, 29.796432, 44.306995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.635139, 30.016325, 44.374496>,  <37.438789, 30.148260, 44.414997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.635139, 30.016325, 44.374496>,  <37.962387, 29.796432, 44.306995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635139, 30.016325, 44.374496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310194, -0.174785, -0.934468,
		-0.484212, -0.816851, 0.313518,
		-0.818119, 0.549732, 0.168749,
		37.389706, 30.181244, 44.425121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427608, 29.413921, 44.042023>,  <37.962387, 29.796432, 44.306995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427608, 29.413921, 44.042023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.256824, 29.774487, 44.070744>,  <37.154354, 29.990826, 44.087975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.256824, 29.774487, 44.070744>,  <37.427608, 29.413921, 44.042023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256824, 29.774487, 44.070744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340689, -0.086806, -0.936160,
		-0.837635, -0.424168, 0.344165,
		-0.426964, 0.901414, 0.071798,
		37.128735, 30.044910, 44.092281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764210, 29.287268, 43.783333>,  <37.427608, 29.413921, 44.042023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764210, 29.287268, 43.783333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.858517, 29.675924, 43.776070>,  <36.915100, 29.909119, 43.771713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.858517, 29.675924, 43.776070>,  <36.764210, 29.287268, 43.783333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858517, 29.675924, 43.776070> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249091, 0.042358, -0.967553,
		-0.939345, 0.232638, 0.252014,
		0.235765, 0.971641, -0.018159,
		36.929245, 29.967417, 43.770622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213131, 29.591692, 43.539455>,  <36.764210, 29.287268, 43.783333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213131, 29.591692, 43.539455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.500721, 29.862442, 43.476311>,  <36.673275, 30.024891, 43.438423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.500721, 29.862442, 43.476311>,  <36.213131, 29.591692, 43.539455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500721, 29.862442, 43.476311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380648, 0.193434, -0.904262,
		-0.581536, 0.710229, 0.396725,
		0.718973, 0.676874, -0.157858,
		36.716412, 30.065504, 43.428955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647552, 30.054098, 43.760723>,  <36.213131, 29.591692, 43.539455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647552, 30.054098, 43.760723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.311920, 30.146233, 43.957855>,  <35.110538, 30.201513, 44.076134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.311920, 30.146233, 43.957855>,  <35.647552, 30.054098, 43.760723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311920, 30.146233, 43.957855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354028, -0.456633, 0.816180,
		0.413038, 0.859320, 0.301609,
		-0.839085, 0.230335, 0.492831,
		35.060196, 30.215334, 44.105705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841667, 30.135689, 44.377869>,  <35.647552, 30.054098, 43.760723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841667, 30.135689, 44.377869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.454548, 30.103264, 44.473190>,  <35.222275, 30.083809, 44.530384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.454548, 30.103264, 44.473190>,  <35.841667, 30.135689, 44.377869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454548, 30.103264, 44.473190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245097, -0.519124, 0.818802,
		0.057336, 0.850846, 0.522277,
		-0.967802, -0.081061, 0.238304,
		35.164207, 30.078945, 44.544682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762959, 30.118927, 45.127155>,  <35.841667, 30.135689, 44.377869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762959, 30.118927, 45.127155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.395714, 29.983843, 45.044193>,  <35.175365, 29.902792, 44.994415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.395714, 29.983843, 45.044193>,  <35.762959, 30.118927, 45.127155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395714, 29.983843, 45.044193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031458, -0.583785, 0.811299,
		-0.395063, 0.738341, 0.546606,
		-0.918115, -0.337709, -0.207405,
		35.120277, 29.882530, 44.981972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298935, 30.272030, 45.795101>,  <35.762959, 30.118927, 45.127155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298935, 30.272030, 45.795101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.193848, 29.969732, 45.555161>,  <35.130795, 29.788353, 45.411194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.193848, 29.969732, 45.555161>,  <35.298935, 30.272030, 45.795101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193848, 29.969732, 45.555161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022034, -0.616832, 0.786786,
		-0.964620, 0.219923, 0.145403,
		-0.262722, -0.755746, -0.599855,
		35.115032, 29.743008, 45.375206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844707, 29.975130, 46.151031>,  <35.298935, 30.272030, 45.795101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844707, 29.975130, 46.151031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.924088, 29.700045, 45.871700>,  <34.971718, 29.534994, 45.704102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.924088, 29.700045, 45.871700>,  <34.844707, 29.975130, 46.151031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924088, 29.700045, 45.871700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034715, -0.707125, 0.706236,
		-0.979495, -0.164398, -0.116459,
		0.198455, -0.687712, -0.698333,
		34.983624, 29.493731, 45.662201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355797, 29.489597, 46.348965>,  <34.844707, 29.975130, 46.151031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355797, 29.489597, 46.348965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.620361, 29.280561, 46.133770>,  <34.779102, 29.155140, 46.004654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.620361, 29.280561, 46.133770>,  <34.355797, 29.489597, 46.348965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620361, 29.280561, 46.133770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089810, -0.656953, 0.748564,
		-0.744624, -0.543428, -0.387585,
		0.661415, -0.522590, -0.537987,
		34.818787, 29.123785, 45.972374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178978, 28.772274, 46.468243>,  <34.355797, 29.489597, 46.348965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178978, 28.772274, 46.468243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.559433, 28.788729, 46.345837>,  <34.787704, 28.798601, 46.272392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.559433, 28.788729, 46.345837>,  <34.178978, 28.772274, 46.468243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559433, 28.788729, 46.345837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261393, -0.634809, 0.727111,
		-0.164352, -0.771573, -0.614543,
		0.951137, 0.041135, -0.306016,
		34.844772, 28.801069, 46.254032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407684, 28.074831, 46.405872>,  <34.178978, 28.772274, 46.468243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407684, 28.074831, 46.405872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.735336, 28.301125, 46.443745>,  <34.931927, 28.436901, 46.466469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.735336, 28.301125, 46.443745>,  <34.407684, 28.074831, 46.405872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735336, 28.301125, 46.443745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319398, -0.586965, 0.743947,
		0.476450, -0.579152, -0.661497,
		0.819134, 0.565734, 0.094680,
		34.981075, 28.470844, 46.472149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852615, 27.626558, 46.479359>,  <34.407684, 28.074831, 46.405872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852615, 27.626558, 46.479359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.004337, 27.959078, 46.641872>,  <35.095371, 28.158590, 46.739380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.004337, 27.959078, 46.641872>,  <34.852615, 27.626558, 46.479359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004337, 27.959078, 46.641872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283130, -0.522316, 0.804378,
		0.880888, -0.190074, -0.433484,
		0.379306, 0.831299, 0.406286,
		35.118130, 28.208467, 46.763760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416885, 27.382923, 46.793617>,  <34.852615, 27.626558, 46.479359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416885, 27.382923, 46.793617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.316685, 27.726233, 46.972778>,  <35.256565, 27.932219, 47.080276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.316685, 27.726233, 46.972778>,  <35.416885, 27.382923, 46.793617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316685, 27.726233, 46.972778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053579, -0.449657, 0.891593,
		0.966632, 0.247344, 0.066654,
		-0.250502, 0.858271, 0.447906,
		35.241535, 27.983713, 47.107151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895535, 27.320118, 47.311775>,  <35.416885, 27.382923, 46.793617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895535, 27.320118, 47.311775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.649021, 27.617205, 47.416519>,  <35.501114, 27.795456, 47.479366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.649021, 27.617205, 47.416519>,  <35.895535, 27.320118, 47.311775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649021, 27.617205, 47.416519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123544, -0.237218, 0.963569,
		0.777777, 0.626179, 0.054435,
		-0.616280, 0.742716, 0.261863,
		35.464138, 27.840019, 47.495079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219875, 27.593683, 47.891701>,  <35.895535, 27.320118, 47.311775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219875, 27.593683, 47.891701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.837803, 27.705093, 47.931797>,  <35.608559, 27.771940, 47.955856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.837803, 27.705093, 47.931797>,  <36.219875, 27.593683, 47.891701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837803, 27.705093, 47.931797> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003651, -0.327531, 0.944833,
		0.295993, 0.902855, 0.311836,
		-0.955183, 0.278525, 0.100243,
		35.551247, 27.788651, 47.961868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231995, 27.793116, 48.616608>,  <36.219875, 27.593683, 47.891701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231995, 27.793116, 48.616608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.858616, 27.702692, 48.505196>,  <35.634590, 27.648438, 48.438347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.858616, 27.702692, 48.505196>,  <36.231995, 27.793116, 48.616608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858616, 27.702692, 48.505196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200505, -0.315048, 0.927654,
		-0.297457, 0.921759, 0.248754,
		-0.933444, -0.226061, -0.278531,
		35.578583, 27.634874, 48.421635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236729, 28.454983, 48.243393>,  <36.231995, 27.793116, 48.616608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236729, 28.454983, 48.243393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.557781, 28.595875, 48.050846>,  <36.750412, 28.680410, 47.935318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.557781, 28.595875, 48.050846>,  <36.236729, 28.454983, 48.243393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557781, 28.595875, 48.050846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406665, -0.267227, -0.873621,
		-0.436350, 0.896952, -0.071245,
		0.802635, 0.352232, -0.481363,
		36.798573, 28.701544, 47.906437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522015, 29.174335, 48.468876>,  <36.236729, 28.454983, 48.243393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522015, 29.174335, 48.468876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.314800, 29.372610, 48.747711>,  <36.190472, 29.491575, 48.915012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.314800, 29.372610, 48.747711>,  <36.522015, 29.174335, 48.468876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314800, 29.372610, 48.747711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359694, 0.613164, -0.703314,
		-0.776055, -0.615079, -0.139344,
		-0.518034, 0.495689, 0.697089,
		36.159389, 29.521317, 48.956837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783310, 29.325117, 48.294392>,  <36.522015, 29.174335, 48.468876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783310, 29.325117, 48.294392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.911091, 29.607004, 48.547794>,  <35.987759, 29.776136, 48.699837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.911091, 29.607004, 48.547794>,  <35.783310, 29.325117, 48.294392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911091, 29.607004, 48.547794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434083, 0.703092, -0.563235,
		-0.842333, -0.095069, 0.530507,
		0.319449, 0.704715, 0.633505,
		36.006924, 29.818419, 48.737846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215652, 29.685778, 48.436005>,  <35.783310, 29.325117, 48.294392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215652, 29.685778, 48.436005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.518230, 29.925367, 48.541088>,  <35.699780, 30.069120, 48.604137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.518230, 29.925367, 48.541088>,  <35.215652, 29.685778, 48.436005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518230, 29.925367, 48.541088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362393, 0.718202, -0.594018,
		-0.544480, 0.354140, 0.760347,
		0.756448, 0.598974, 0.262709,
		35.745163, 30.105061, 48.619900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904594, 30.211266, 48.594841>,  <35.215652, 29.685778, 48.436005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904594, 30.211266, 48.594841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.269863, 30.345812, 48.502777>,  <35.489025, 30.426540, 48.447540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.269863, 30.345812, 48.502777>,  <34.904594, 30.211266, 48.594841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269863, 30.345812, 48.502777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397836, 0.612950, -0.682656,
		-0.088550, 0.714947, 0.693549,
		0.913173, 0.336368, -0.230155,
		35.543816, 30.446722, 48.433731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908882, 30.976587, 48.736935>,  <34.904594, 30.211266, 48.594841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908882, 30.976587, 48.736935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.194805, 30.894863, 48.469410>,  <35.366360, 30.845829, 48.308895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.194805, 30.894863, 48.469410>,  <34.908882, 30.976587, 48.736935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194805, 30.894863, 48.469410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358123, 0.714510, -0.601019,
		0.600668, 0.669129, 0.437566,
		0.714805, -0.204310, -0.668814,
		35.409248, 30.833570, 48.268764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308144, 31.626904, 48.628883>,  <34.908882, 30.976587, 48.736935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308144, 31.626904, 48.628883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.379063, 31.399080, 48.307842>,  <35.421616, 31.262386, 48.115219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.379063, 31.399080, 48.307842>,  <35.308144, 31.626904, 48.628883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379063, 31.399080, 48.307842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126634, 0.795540, -0.592520,
		0.975976, 0.206689, 0.068922,
		0.177297, -0.569558, -0.802602,
		35.432251, 31.228212, 48.067062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487053, 32.029266, 48.156265>,  <35.308144, 31.626904, 48.628883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487053, 32.029266, 48.156265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.455250, 31.711090, 47.915951>,  <35.436169, 31.520184, 47.771763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.455250, 31.711090, 47.915951>,  <35.487053, 32.029266, 48.156265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455250, 31.711090, 47.915951> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269375, 0.597421, -0.755332,
		0.959747, 0.101781, -0.261774,
		-0.079511, -0.795443, -0.600790,
		35.431396, 31.472458, 47.735714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017284, 32.642715, 48.103031>,  <35.487053, 32.029266, 48.156265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017284, 32.642715, 48.103031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.886913, 32.953278, 48.318794>,  <35.808689, 33.139614, 48.448254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.886913, 32.953278, 48.318794>,  <36.017284, 32.642715, 48.103031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886913, 32.953278, 48.318794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310104, -0.451198, 0.836813,
		0.893087, 0.440017, -0.093706,
		-0.325932, 0.776405, 0.539410,
		35.789135, 33.186199, 48.480618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574814, 32.726116, 48.513397>,  <36.017284, 32.642715, 48.103031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574814, 32.726116, 48.513397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.257824, 32.898235, 48.686291>,  <36.067631, 33.001507, 48.790028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.257824, 32.898235, 48.686291>,  <36.574814, 32.726116, 48.513397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257824, 32.898235, 48.686291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258128, -0.405463, 0.876909,
		0.552584, 0.806503, 0.210249,
		-0.792478, 0.430295, 0.432233,
		36.020081, 33.027325, 48.815960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845428, 33.034813, 49.130844>,  <36.574814, 32.726116, 48.513397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845428, 33.034813, 49.130844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.455364, 32.978741, 49.199448>,  <36.221325, 32.945095, 49.240612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.455364, 32.978741, 49.199448>,  <36.845428, 33.034813, 49.130844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455364, 32.978741, 49.199448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202247, -0.247617, 0.947513,
		-0.090356, 0.958663, 0.269818,
		-0.975157, -0.140184, 0.171513,
		36.162819, 32.936687, 49.250900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634186, 33.405407, 49.702755>,  <36.845428, 33.034813, 49.130844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634186, 33.405407, 49.702755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.408432, 33.080177, 49.645638>,  <36.272980, 32.885040, 49.611366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.408432, 33.080177, 49.645638>,  <36.634186, 33.405407, 49.702755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408432, 33.080177, 49.645638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095549, -0.236149, 0.967008,
		-0.819965, 0.532119, 0.210967,
		-0.564383, -0.813070, -0.142790,
		36.239117, 32.836258, 49.602802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260761, 33.488716, 50.205925>,  <36.634186, 33.405407, 49.702755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260761, 33.488716, 50.205925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.166943, 33.115856, 50.095585>,  <36.110653, 32.892139, 50.029381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.166943, 33.115856, 50.095585>,  <36.260761, 33.488716, 50.205925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166943, 33.115856, 50.095585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033784, -0.275777, 0.960628,
		-0.971519, 0.234627, 0.033190,
		-0.234542, -0.932147, -0.275849,
		36.096581, 32.836212, 50.012829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964455, 33.134377, 50.831215>,  <36.260761, 33.488716, 50.205925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964455, 33.134377, 50.831215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.055943, 32.840168, 50.576126>,  <36.110836, 32.663643, 50.423073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.055943, 32.840168, 50.576126>,  <35.964455, 33.134377, 50.831215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055943, 32.840168, 50.576126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357630, -0.545794, 0.757766,
		-0.905420, -0.401387, 0.138210,
		0.228723, -0.735525, -0.637721,
		36.124561, 32.619511, 50.384811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683086, 32.630787, 51.112637>,  <35.964455, 33.134377, 50.831215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683086, 32.630787, 51.112637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.945274, 32.444252, 50.875019>,  <36.102589, 32.332333, 50.732449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.945274, 32.444252, 50.875019>,  <35.683086, 32.630787, 51.112637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945274, 32.444252, 50.875019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188810, -0.660416, 0.726774,
		-0.731236, -0.588542, -0.344836,
		0.655473, -0.466335, -0.594043,
		36.141914, 32.304352, 50.696808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498756, 31.938196, 51.353622>,  <35.683086, 32.630787, 51.112637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498756, 31.938196, 51.353622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.826614, 31.883127, 51.131187>,  <36.023327, 31.850086, 50.997726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.826614, 31.883127, 51.131187>,  <35.498756, 31.938196, 51.353622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826614, 31.883127, 51.131187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371114, -0.611875, 0.698487,
		-0.436418, -0.778881, -0.450427,
		0.819643, -0.137672, -0.556086,
		36.072506, 31.841825, 50.964363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453186, 31.183048, 51.071117>,  <35.498756, 31.938196, 51.353622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453186, 31.183048, 51.071117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.828362, 31.317282, 51.106117>,  <36.053467, 31.397821, 51.127117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.828362, 31.317282, 51.106117>,  <35.453186, 31.183048, 51.071117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828362, 31.317282, 51.106117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210803, -0.752015, 0.624529,
		0.275381, -0.567325, -0.776085,
		0.937938, 0.335584, 0.087497,
		36.109741, 31.417957, 51.132366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.181438, 37.036072, 36.856033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549438, 37.189255, 36.889378>,  <35.770237, 37.281162, 36.909386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549438, 37.189255, 36.889378>,  <35.181438, 37.036072, 36.856033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549438, 37.189255, 36.889378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139817, 0.121989, 0.982634,
		0.366134, -0.915677, 0.165773,
		0.919998, 0.382954, 0.083363,
		35.825439, 37.304142, 36.914387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419582, 36.722439, 37.359882>,  <35.181438, 37.036072, 36.856033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419582, 36.722439, 37.359882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704391, 37.002239, 37.335472>,  <35.875278, 37.170120, 37.320824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704391, 37.002239, 37.335472>,  <35.419582, 36.722439, 37.359882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704391, 37.002239, 37.335472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008954, 0.095957, 0.995345,
		0.702101, -0.708161, 0.074587,
		0.712022, 0.699500, -0.061030,
		35.917999, 37.212090, 37.317162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940685, 36.491318, 37.743866>,  <35.419582, 36.722439, 37.359882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940685, 36.491318, 37.743866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951332, 36.890373, 37.718555>,  <35.957718, 37.129807, 37.703369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951332, 36.890373, 37.718555>,  <35.940685, 36.491318, 37.743866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951332, 36.890373, 37.718555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075608, 0.061111, 0.995263,
		0.996782, -0.031272, -0.073803,
		0.026613, 0.997641, -0.063278,
		35.959316, 37.189667, 37.699574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346603, 36.700485, 38.297279>,  <35.940685, 36.491318, 37.743866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346603, 36.700485, 38.297279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164665, 37.040627, 38.191448>,  <36.055500, 37.244713, 38.127949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164665, 37.040627, 38.191448>,  <36.346603, 36.700485, 38.297279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164665, 37.040627, 38.191448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043287, 0.317852, 0.947152,
		0.889516, 0.419359, -0.181384,
		-0.454850, 0.850358, -0.264582,
		36.028210, 37.295734, 38.112072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679592, 37.244373, 38.702526>,  <36.346603, 36.700485, 38.297279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679592, 37.244373, 38.702526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329113, 37.392246, 38.578842>,  <36.118824, 37.480968, 38.504631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329113, 37.392246, 38.578842>,  <36.679592, 37.244373, 38.702526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329113, 37.392246, 38.578842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242218, 0.216892, 0.945668,
		0.416660, 0.903490, -0.100498,
		-0.876199, 0.369680, -0.309212,
		36.066254, 37.503151, 38.486080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707508, 37.933754, 38.972576>,  <36.679592, 37.244373, 38.702526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707508, 37.933754, 38.972576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324116, 37.830853, 38.923378>,  <36.094078, 37.769112, 38.893860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324116, 37.830853, 38.923378>,  <36.707508, 37.933754, 38.972576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324116, 37.830853, 38.923378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205842, 0.325754, 0.922775,
		-0.197322, 0.909783, -0.365184,
		-0.958485, -0.257254, -0.122993,
		36.036572, 37.753677, 38.886478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292610, 38.515812, 39.227123>,  <36.707508, 37.933754, 38.972576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292610, 38.515812, 39.227123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044712, 38.201893, 39.228104>,  <35.895973, 38.013542, 39.228691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044712, 38.201893, 39.228104>,  <36.292610, 38.515812, 39.227123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044712, 38.201893, 39.228104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290047, 0.231948, 0.928479,
		-0.729238, 0.574709, -0.371378,
		-0.619746, -0.784799, 0.002453,
		35.858788, 37.966454, 39.228840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637775, 38.707047, 39.583172>,  <36.292610, 38.515812, 39.227123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637775, 38.707047, 39.583172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638927, 38.307049, 39.583652>,  <35.639618, 38.067051, 39.583942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638927, 38.307049, 39.583652>,  <35.637775, 38.707047, 39.583172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638927, 38.307049, 39.583652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184378, 0.000652, 0.982855,
		-0.982851, -0.003053, -0.184375,
		0.002880, -0.999995, 0.001204,
		35.639793, 38.007050, 39.584015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949394, 38.472378, 39.779099>,  <35.637775, 38.707047, 39.583172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949394, 38.472378, 39.779099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210285, 38.180016, 39.859474>,  <35.366821, 38.004597, 39.907700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210285, 38.180016, 39.859474>,  <34.949394, 38.472378, 39.779099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210285, 38.180016, 39.859474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318640, -0.023831, 0.947577,
		-0.687799, -0.682064, -0.248438,
		0.652228, -0.730905, 0.200942,
		35.405952, 37.960743, 39.919758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616730, 37.907784, 39.973049>,  <34.949394, 38.472378, 39.779099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616730, 37.907784, 39.973049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982132, 37.844093, 40.122803>,  <35.201374, 37.805882, 40.212654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982132, 37.844093, 40.122803>,  <34.616730, 37.907784, 39.973049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982132, 37.844093, 40.122803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406781, -0.342866, 0.846742,
		-0.006459, -0.925792, -0.377978,
		0.913503, -0.159223, 0.374380,
		35.256184, 37.796326, 40.235115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514431, 37.359352, 40.455784>,  <34.616730, 37.907784, 39.973049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514431, 37.359352, 40.455784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872856, 37.506760, 40.554794>,  <35.087910, 37.595203, 40.614201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872856, 37.506760, 40.554794>,  <34.514431, 37.359352, 40.455784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872856, 37.506760, 40.554794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118636, -0.338510, 0.933454,
		0.427780, -0.865799, -0.259607,
		0.896064, 0.368514, 0.247523,
		35.141674, 37.617313, 40.629051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763985, 36.873871, 40.889679>,  <34.514431, 37.359352, 40.455784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763985, 36.873871, 40.889679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993031, 37.186256, 40.989449>,  <35.130459, 37.373688, 41.049313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993031, 37.186256, 40.989449>,  <34.763985, 36.873871, 40.889679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993031, 37.186256, 40.989449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212380, -0.152554, 0.965206,
		0.791841, -0.605660, 0.078507,
		0.572610, 0.780963, 0.249429,
		35.164814, 37.420544, 41.064278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859028, 36.213135, 40.572803>,  <34.763985, 36.873871, 40.889679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859028, 36.213135, 40.572803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543056, 35.968124, 40.584305>,  <34.353474, 35.821117, 40.591206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543056, 35.968124, 40.584305>,  <34.859028, 36.213135, 40.572803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543056, 35.968124, 40.584305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375477, 0.446082, -0.812421,
		0.484804, -0.652548, -0.582362,
		-0.789925, -0.612528, 0.028754,
		34.306080, 35.784367, 40.592934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780163, 36.170708, 39.894779>,  <34.859028, 36.213135, 40.572803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780163, 36.170708, 39.894779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448418, 35.980637, 40.012325>,  <34.249371, 35.866592, 40.082851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448418, 35.980637, 40.012325>,  <34.780163, 36.170708, 39.894779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448418, 35.980637, 40.012325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398968, 0.135503, -0.906898,
		0.391121, -0.869392, -0.301964,
		-0.829366, -0.475181, 0.293861,
		34.199608, 35.838081, 40.100483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631493, 35.703083, 39.378101>,  <34.780163, 36.170708, 39.894779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631493, 35.703083, 39.378101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303162, 35.793781, 39.587799>,  <34.106163, 35.848198, 39.713615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303162, 35.793781, 39.587799>,  <34.631493, 35.703083, 39.378101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303162, 35.793781, 39.587799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484854, 0.208561, -0.849364,
		-0.301925, -0.951362, -0.061254,
		-0.820828, 0.226744, 0.524242,
		34.056911, 35.861805, 39.745071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072296, 35.403259, 38.973259>,  <34.631493, 35.703083, 39.378101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072296, 35.403259, 38.973259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879063, 35.683487, 39.183338>,  <33.763123, 35.851624, 39.309383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879063, 35.683487, 39.183338>,  <34.072296, 35.403259, 38.973259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879063, 35.683487, 39.183338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565974, 0.207813, -0.797801,
		-0.668060, -0.682650, 0.296116,
		-0.483083, 0.700573, 0.525194,
		33.734138, 35.893658, 39.340897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282482, 35.200218, 38.923466>,  <34.072296, 35.403259, 38.973259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282482, 35.200218, 38.923466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378284, 35.585129, 38.975109>,  <33.435764, 35.816074, 39.006096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378284, 35.585129, 38.975109>,  <33.282482, 35.200218, 38.923466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378284, 35.585129, 38.975109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548896, 0.243888, -0.799520,
		-0.800845, 0.120620, 0.586599,
		0.239503, 0.962273, 0.129109,
		33.450134, 35.873810, 39.013844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701893, 35.541676, 38.631985>,  <33.282482, 35.200218, 38.923466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701893, 35.541676, 38.631985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925339, 35.866470, 38.699669>,  <33.059406, 36.061348, 38.740280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925339, 35.866470, 38.699669>,  <32.701893, 35.541676, 38.631985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925339, 35.866470, 38.699669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412816, 0.449124, -0.792383,
		-0.719399, 0.372783, 0.586087,
		0.558613, 0.811985, 0.169209,
		33.092922, 36.110065, 38.750431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231041, 36.147125, 38.613918>,  <32.701893, 35.541676, 38.631985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231041, 36.147125, 38.613918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599300, 36.267250, 38.514145>,  <32.820255, 36.339325, 38.454281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599300, 36.267250, 38.514145>,  <32.231041, 36.147125, 38.613918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599300, 36.267250, 38.514145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374343, 0.497796, -0.782347,
		-0.110777, 0.813642, 0.570714,
		0.920649, 0.300309, -0.249438,
		32.875496, 36.357342, 38.439312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254654, 36.921352, 38.312435>,  <32.231041, 36.147125, 38.613918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254654, 36.921352, 38.312435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593582, 36.753239, 38.182564>,  <32.796940, 36.652370, 38.104641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593582, 36.753239, 38.182564>,  <32.254654, 36.921352, 38.312435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593582, 36.753239, 38.182564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266425, 0.192477, -0.944442,
		0.459426, 0.886744, 0.051115,
		0.847317, -0.420283, -0.324679,
		32.847778, 36.627155, 38.085159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551369, 37.298164, 37.707176>,  <32.254654, 36.921352, 38.312435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551369, 37.298164, 37.707176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707573, 36.932308, 37.665337>,  <32.801296, 36.712795, 37.640232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707573, 36.932308, 37.665337>,  <32.551369, 37.298164, 37.707176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707573, 36.932308, 37.665337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157773, 0.045445, -0.986429,
		0.906977, 0.401716, -0.126558,
		0.390513, -0.914636, -0.104597,
		32.824726, 36.657917, 37.633957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635529, 37.241116, 37.056511>,  <32.551369, 37.298164, 37.707176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635529, 37.241116, 37.056511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702972, 36.860168, 37.158157>,  <32.743439, 36.631599, 37.219143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702972, 36.860168, 37.158157>,  <32.635529, 37.241116, 37.056511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702972, 36.860168, 37.158157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164885, -0.281423, -0.945312,
		0.971794, 0.117492, -0.204482,
		0.168613, -0.952364, 0.254113,
		32.753555, 36.574459, 37.234390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890415, 36.914055, 36.430145>,  <32.635529, 37.241116, 37.056511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890415, 36.914055, 36.430145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763157, 36.607117, 36.652847>,  <32.686802, 36.422955, 36.786469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763157, 36.607117, 36.652847>,  <32.890415, 36.914055, 36.430145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763157, 36.607117, 36.652847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427676, -0.407949, -0.806641,
		0.846096, -0.494736, -0.198388,
		-0.318142, -0.767342, 0.556751,
		32.667713, 36.376915, 36.819874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149681, 36.256176, 36.095791>,  <32.890415, 36.914055, 36.430145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149681, 36.256176, 36.095791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822647, 36.158859, 36.304546>,  <32.626427, 36.100468, 36.429798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822647, 36.158859, 36.304546>,  <33.149681, 36.256176, 36.095791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822647, 36.158859, 36.304546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404360, -0.402671, -0.821187,
		0.409937, -0.882420, 0.230840,
		-0.817585, -0.243293, 0.521885,
		32.577374, 36.085873, 36.461113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939880, 35.555252, 35.814606>,  <33.149681, 36.256176, 36.095791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939880, 35.555252, 35.814606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624416, 35.733891, 35.983635>,  <32.435139, 35.841072, 36.085052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624416, 35.733891, 35.983635>,  <32.939880, 35.555252, 35.814606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624416, 35.733891, 35.983635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562774, -0.247589, -0.788660,
		-0.247589, -0.859797, 0.446597,
		0.788660, -0.446597, -0.422571,
		32.387817, 35.867870, 36.110405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446117, 35.132431, 35.713123>,  <32.939880, 35.555252, 35.814606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446117, 35.132431, 35.713123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232471, 35.456467, 35.809845>,  <32.104282, 35.650890, 35.867878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232471, 35.456467, 35.809845>,  <32.446117, 35.132431, 35.713123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232471, 35.456467, 35.809845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667646, -0.228728, -0.708472,
		-0.518620, -0.539847, 0.663022,
		-0.534119, 0.810092, 0.241804,
		32.072235, 35.699493, 35.882385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902637, 34.939129, 35.232784>,  <32.446117, 35.132431, 35.713123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902637, 34.939129, 35.232784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700304, 35.251850, 35.378616>,  <31.578903, 35.439484, 35.466114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700304, 35.251850, 35.378616>,  <31.902637, 34.939129, 35.232784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700304, 35.251850, 35.378616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741328, -0.177868, -0.647144,
		-0.441093, -0.597617, 0.669545,
		-0.505835, 0.781803, 0.364574,
		31.548553, 35.486389, 35.487988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240772, 34.751186, 35.439034>,  <31.902637, 34.939129, 35.232784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240772, 34.751186, 35.439034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222534, 35.134232, 35.325260>,  <31.211592, 35.364059, 35.256996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222534, 35.134232, 35.325260>,  <31.240772, 34.751186, 35.439034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222534, 35.134232, 35.325260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695097, -0.234913, -0.679452,
		-0.717468, 0.166729, 0.676344,
		-0.045597, 0.957610, -0.284436,
		31.208855, 35.421516, 35.239929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694048, 34.307316, 35.265633>,  <31.240772, 34.751186, 35.439034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694048, 34.307316, 35.265633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397429, 34.307671, 35.533993>,  <30.219458, 34.307884, 35.695007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397429, 34.307671, 35.533993>,  <30.694048, 34.307316, 35.265633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397429, 34.307671, 35.533993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379981, -0.824699, -0.418910,
		0.552920, -0.565571, 0.611890,
		-0.741548, 0.000883, 0.670899,
		30.174965, 34.307934, 35.735264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924913, 33.866936, 35.833347>,  <30.694048, 34.307316, 35.265633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924913, 33.866936, 35.833347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300261, 33.825165, 35.701550>,  <31.525469, 33.800102, 35.622471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300261, 33.825165, 35.701550>,  <30.924913, 33.866936, 35.833347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300261, 33.825165, 35.701550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255634, -0.431927, 0.864922,
		-0.232636, -0.895842, -0.378611,
		0.938367, -0.104426, -0.329490,
		31.581770, 33.793839, 35.602703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141033, 33.162373, 35.919418>,  <30.924913, 33.866936, 35.833347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141033, 33.162373, 35.919418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489561, 33.356644, 35.891373>,  <31.698677, 33.473206, 35.874546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489561, 33.356644, 35.891373>,  <31.141033, 33.162373, 35.919418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489561, 33.356644, 35.891373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306921, -0.427904, 0.850116,
		0.382885, -0.762241, -0.521907,
		0.871320, 0.485681, -0.070110,
		31.750957, 33.502346, 35.870338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784060, 32.617897, 35.909397>,  <31.141033, 33.162373, 35.919418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784060, 32.617897, 35.909397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926704, 32.972885, 36.026169>,  <32.012291, 33.185879, 36.096230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926704, 32.972885, 36.026169>,  <31.784060, 32.617897, 35.909397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926704, 32.972885, 36.026169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525406, -0.448887, 0.722806,
		0.772512, -0.104383, -0.626362,
		0.356614, 0.887471, 0.291927,
		32.033688, 33.239128, 36.113747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461754, 32.489819, 36.170677>,  <31.784060, 32.617897, 35.909397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461754, 32.489819, 36.170677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386414, 32.855061, 36.315319>,  <32.341209, 33.074207, 36.402103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386414, 32.855061, 36.315319>,  <32.461754, 32.489819, 36.170677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386414, 32.855061, 36.315319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564417, -0.200677, 0.800726,
		0.803716, 0.354912, -0.477576,
		-0.188349, 0.913108, 0.361605,
		32.329910, 33.128994, 36.423801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013187, 32.775932, 36.489628>,  <32.461754, 32.489819, 36.170677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013187, 32.775932, 36.489628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730999, 32.994156, 36.670593>,  <32.561687, 33.125092, 36.779175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730999, 32.994156, 36.670593>,  <33.013187, 32.775932, 36.489628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730999, 32.994156, 36.670593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547799, 0.014695, 0.836481,
		0.449701, 0.837944, -0.309223,
		-0.705468, 0.545559, 0.452416,
		32.519360, 33.157822, 36.806316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375305, 33.217842, 36.957523>,  <33.013187, 32.775932, 36.489628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375305, 33.217842, 36.957523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007671, 33.234528, 37.114262>,  <32.787090, 33.244537, 37.208305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007671, 33.234528, 37.114262>,  <33.375305, 33.217842, 36.957523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007671, 33.234528, 37.114262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392874, 0.173968, 0.902987,
		-0.030505, 0.983868, -0.176278,
		-0.919086, 0.041710, 0.391843,
		32.731945, 33.247040, 37.231815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452785, 33.699474, 37.495319>,  <33.375305, 33.217842, 36.957523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452785, 33.699474, 37.495319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117310, 33.507740, 37.598736>,  <32.916023, 33.392700, 37.660786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117310, 33.507740, 37.598736>,  <33.452785, 33.699474, 37.495319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117310, 33.507740, 37.598736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310871, -0.031557, 0.949928,
		-0.447171, 0.877066, 0.175477,
		-0.838688, -0.479331, 0.258543,
		32.865704, 33.363941, 37.676300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149441, 34.088192, 38.102406>,  <33.452785, 33.699474, 37.495319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149441, 34.088192, 38.102406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031910, 33.705887, 38.097057>,  <32.961391, 33.476501, 38.093849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031910, 33.705887, 38.097057>,  <33.149441, 34.088192, 38.102406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031910, 33.705887, 38.097057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224748, -0.082678, 0.970903,
		-0.929061, 0.282272, 0.239099,
		-0.293827, -0.955765, -0.013372,
		32.943760, 33.419159, 38.093044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912216, 34.035000, 38.703320>,  <33.149441, 34.088192, 38.102406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912216, 34.035000, 38.703320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928028, 33.645885, 38.612000>,  <32.937515, 33.412418, 38.557205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928028, 33.645885, 38.612000>,  <32.912216, 34.035000, 38.703320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928028, 33.645885, 38.612000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116490, -0.222438, 0.967963,
		-0.992405, -0.064863, 0.104526,
		0.039534, -0.972787, -0.228305,
		32.939888, 33.354050, 38.543507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531334, 33.654240, 39.282589>,  <32.912216, 34.035000, 38.703320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531334, 33.654240, 39.282589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767677, 33.387295, 39.101254>,  <32.909485, 33.227127, 38.992455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767677, 33.387295, 39.101254>,  <32.531334, 33.654240, 39.282589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767677, 33.387295, 39.101254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233134, -0.396701, 0.887850,
		-0.772355, -0.630284, -0.078811,
		0.590861, -0.667361, -0.453334,
		32.944935, 33.187088, 38.965252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368305, 32.945503, 39.522804>,  <32.531334, 33.654240, 39.282589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368305, 32.945503, 39.522804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742439, 32.987717, 39.387745>,  <32.966919, 33.013042, 39.306709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742439, 32.987717, 39.387745>,  <32.368305, 32.945503, 39.522804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742439, 32.987717, 39.387745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349684, -0.420233, 0.837333,
		-0.053526, -0.901259, -0.429962,
		0.935338, 0.105531, -0.337649,
		33.023041, 33.019375, 39.286449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659798, 32.281708, 39.690674>,  <32.368305, 32.945503, 39.522804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659798, 32.281708, 39.690674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964603, 32.530918, 39.620045>,  <33.147488, 32.680443, 39.577667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964603, 32.530918, 39.620045>,  <32.659798, 32.281708, 39.690674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964603, 32.530918, 39.620045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481220, -0.362360, 0.798200,
		0.433317, -0.693207, -0.575935,
		0.762013, 0.623025, -0.176569,
		33.193207, 32.717827, 39.567074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303593, 31.814085, 39.700184>,  <32.659798, 32.281708, 39.690674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303593, 31.814085, 39.700184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379669, 32.191055, 39.810211>,  <33.425316, 32.417236, 39.876228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379669, 32.191055, 39.810211>,  <33.303593, 31.814085, 39.700184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379669, 32.191055, 39.810211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534845, -0.334419, 0.775954,
		0.823266, -0.000462, -0.567655,
		0.190193, 0.942424, 0.275069,
		33.436726, 32.473782, 39.892731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976788, 31.845057, 39.898579>,  <33.303593, 31.814085, 39.700184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976788, 31.845057, 39.898579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835205, 32.170612, 40.082882>,  <33.750256, 32.365944, 40.193466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835205, 32.170612, 40.082882>,  <33.976788, 31.845057, 39.898579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835205, 32.170612, 40.082882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479248, -0.265224, 0.836647,
		0.803142, 0.516954, -0.296177,
		-0.353955, 0.813889, 0.460762,
		33.729019, 32.414780, 40.221111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444820, 31.855843, 40.442635>,  <33.976788, 31.845057, 39.898579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444820, 31.855843, 40.442635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159180, 32.119591, 40.536694>,  <33.987797, 32.277840, 40.593128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159180, 32.119591, 40.536694>,  <34.444820, 31.855843, 40.442635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159180, 32.119591, 40.536694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114330, -0.221543, 0.968425,
		0.690644, 0.718437, 0.082819,
		-0.714100, 0.659369, 0.235146,
		33.944950, 32.317402, 40.607239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709888, 32.237114, 40.966278>,  <34.444820, 31.855843, 40.442635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709888, 32.237114, 40.966278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310677, 32.248596, 40.988625>,  <34.071152, 32.255486, 41.002033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310677, 32.248596, 40.988625>,  <34.709888, 32.237114, 40.966278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310677, 32.248596, 40.988625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051201, -0.143279, 0.988357,
		0.036376, 0.989266, 0.141527,
		-0.998026, 0.028706, 0.055864,
		34.011269, 32.257210, 41.005383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641823, 32.429272, 41.709782>,  <34.709888, 32.237114, 40.966278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641823, 32.429272, 41.709782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278549, 32.295513, 41.609077>,  <34.060585, 32.215260, 41.548656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278549, 32.295513, 41.609077>,  <34.641823, 32.429272, 41.709782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278549, 32.295513, 41.609077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058999, -0.493195, 0.867916,
		-0.414395, 0.803080, 0.428182,
		-0.908183, -0.334397, -0.251758,
		34.006096, 32.195194, 41.533550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184551, 32.587948, 42.297531>,  <34.641823, 32.429272, 41.709782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184551, 32.587948, 42.297531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021622, 32.302315, 42.069786>,  <33.923862, 32.130936, 41.933140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021622, 32.302315, 42.069786>,  <34.184551, 32.587948, 42.297531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021622, 32.302315, 42.069786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077440, -0.594171, 0.800602,
		-0.909994, 0.370197, 0.186722,
		-0.407326, -0.714083, -0.569360,
		33.899426, 32.088089, 41.898979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412304, 32.500168, 42.595840>,  <34.184551, 32.587948, 42.297531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412304, 32.500168, 42.595840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553516, 32.183262, 42.396770>,  <33.638245, 31.993116, 42.277328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553516, 32.183262, 42.396770>,  <33.412304, 32.500168, 42.595840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553516, 32.183262, 42.396770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022820, -0.524476, 0.851120,
		-0.935335, -0.311826, -0.167075,
		0.353028, -0.792269, -0.497676,
		33.659424, 31.945581, 42.247467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631168, 32.190884, 43.168556>,  <33.412304, 32.500168, 42.595840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631168, 32.190884, 43.168556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714809, 31.920738, 42.885670>,  <33.764996, 31.758650, 42.715939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714809, 31.920738, 42.885670>,  <33.631168, 32.190884, 43.168556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714809, 31.920738, 42.885670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276765, -0.652763, 0.705197,
		-0.937911, -0.343191, 0.050424,
		0.209102, -0.675368, -0.707216,
		33.777538, 31.718128, 42.673504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249199, 31.510904, 43.234879>,  <33.631168, 32.190884, 43.168556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249199, 31.510904, 43.234879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570107, 31.414757, 43.016308>,  <33.762653, 31.357067, 42.885166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570107, 31.414757, 43.016308>,  <33.249199, 31.510904, 43.234879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570107, 31.414757, 43.016308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328556, -0.586439, 0.740365,
		-0.498404, -0.773507, -0.391511,
		0.802275, -0.240368, -0.546424,
		33.810787, 31.342646, 42.852379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380707, 30.758169, 43.262276>,  <33.249199, 31.510904, 43.234879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380707, 30.758169, 43.262276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735104, 30.898689, 43.141212>,  <33.947742, 30.983002, 43.068573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735104, 30.898689, 43.141212>,  <33.380707, 30.758169, 43.262276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735104, 30.898689, 43.141212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462072, -0.614308, 0.639621,
		0.038771, -0.706551, -0.706599,
		0.885994, 0.351299, -0.302660,
		34.000900, 31.004078, 43.050415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787407, 30.252314, 43.069756>,  <33.380707, 30.758169, 43.262276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787407, 30.252314, 43.069756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053200, 30.527325, 43.186905>,  <34.212677, 30.692331, 43.257195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053200, 30.527325, 43.186905>,  <33.787407, 30.252314, 43.069756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053200, 30.527325, 43.186905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443136, -0.678070, 0.586388,
		0.601743, -0.259863, -0.755233,
		0.664482, 0.687526, 0.292869,
		34.252544, 30.733582, 43.274765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401188, 29.924438, 43.076385>,  <33.787407, 30.252314, 43.069756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401188, 29.924438, 43.076385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468658, 30.233952, 43.320618>,  <34.509140, 30.419659, 43.467159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468658, 30.233952, 43.320618>,  <34.401188, 29.924438, 43.076385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468658, 30.233952, 43.320618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533167, -0.592637, 0.603750,
		0.829025, 0.223704, -0.512518,
		0.168676, 0.773781, 0.610582,
		34.519260, 30.466085, 43.503792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120998, 29.974457, 43.261211>,  <34.401188, 29.924438, 43.076385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120998, 29.974457, 43.261211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948647, 30.191525, 43.549614>,  <34.845234, 30.321766, 43.722656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948647, 30.191525, 43.549614>,  <35.120998, 29.974457, 43.261211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948647, 30.191525, 43.549614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582638, -0.442834, 0.681492,
		0.689111, 0.713728, -0.125371,
		-0.430882, 0.542669, 0.721007,
		34.819382, 30.354326, 43.765915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856205, 29.926800, 42.994507>,  <35.120998, 29.974457, 43.261211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856205, 29.926800, 42.994507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232880, 30.054846, 43.035984>,  <36.458885, 30.131674, 43.060871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232880, 30.054846, 43.035984>,  <35.856205, 29.926800, 42.994507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232880, 30.054846, 43.035984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003067, 0.299986, -0.953939,
		-0.336477, 0.898629, 0.281511,
		0.941687, 0.320115, 0.103694,
		36.515385, 30.150881, 43.067093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866405, 30.555437, 42.760189>,  <35.856205, 29.926800, 42.994507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866405, 30.555437, 42.760189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248501, 30.443727, 42.721153>,  <36.477757, 30.376701, 42.697731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248501, 30.443727, 42.721153>,  <35.866405, 30.555437, 42.760189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248501, 30.443727, 42.721153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011163, 0.295624, -0.955239,
		0.295624, 0.913571, 0.279274,
		0.955239, -0.279274, -0.097591,
		36.535072, 30.359945, 42.691875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256317, 31.147751, 42.450653>,  <35.866405, 30.555437, 42.760189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256317, 31.147751, 42.450653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443661, 30.804201, 42.367733>,  <36.556068, 30.598072, 42.317982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443661, 30.804201, 42.367733>,  <36.256317, 31.147751, 42.450653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443661, 30.804201, 42.367733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062804, 0.266399, -0.961815,
		0.881302, 0.437458, 0.178712,
		0.468362, -0.858873, -0.207304,
		36.584167, 30.546539, 42.305542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634495, 31.278538, 41.890980>,  <36.256317, 31.147751, 42.450653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634495, 31.278538, 41.890980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653965, 30.879013, 41.890602>,  <36.665649, 30.639297, 41.890377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653965, 30.879013, 41.890602>,  <36.634495, 31.278538, 41.890980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653965, 30.879013, 41.890602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166428, 0.009040, -0.986012,
		0.984851, 0.047840, 0.166671,
		0.048677, -0.998814, -0.000941,
		36.668568, 30.579369, 41.890320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251175, 31.091022, 41.675922>,  <36.634495, 31.278538, 41.890980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251175, 31.091022, 41.675922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981998, 30.806845, 41.593540>,  <36.820492, 30.636339, 41.544109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981998, 30.806845, 41.593540>,  <37.251175, 31.091022, 41.675922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981998, 30.806845, 41.593540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153281, 0.138459, -0.978435,
		0.723639, -0.690000, 0.015723,
		-0.672942, -0.710443, -0.205958,
		36.780117, 30.593712, 41.531754>
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
