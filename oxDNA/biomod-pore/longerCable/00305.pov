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
	<24.591871, 34.578873, 35.215740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.387894, 34.922318, 35.194771>,  <24.265507, 35.128384, 35.182190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.387894, 34.922318, 35.194771>,  <24.591871, 34.578873, 35.215740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.387894, 34.922318, 35.194771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838119, 0.509649, 0.194461,
		0.193685, 0.055226, -0.979508,
		-0.509945, 0.858608, -0.052426,
		24.234911, 35.179901, 35.179043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.361118, 34.343269, 35.412357>,  <24.591871, 34.578873, 35.215740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.361118, 34.343269, 35.412357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712561, 34.160347, 35.357334>,  <25.923426, 34.050594, 35.324322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712561, 34.160347, 35.357334>,  <25.361118, 34.343269, 35.412357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712561, 34.160347, 35.357334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360938, 0.824530, -0.435746,
		0.312689, 0.333200, 0.889496,
		0.878606, -0.457306, -0.137557,
		25.976143, 34.023155, 35.316067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019915, 34.786171, 35.787952>,  <25.361118, 34.343269, 35.412357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019915, 34.786171, 35.787952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058784, 34.585136, 35.444332>,  <26.082106, 34.464516, 35.238159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058784, 34.585136, 35.444332>,  <26.019915, 34.786171, 35.787952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058784, 34.585136, 35.444332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225601, 0.851791, -0.472816,
		0.969361, -0.147858, 0.196155,
		0.097174, -0.502582, -0.859051,
		26.087936, 34.434361, 35.186615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710217, 34.873463, 35.479259>,  <26.019915, 34.786171, 35.787952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710217, 34.873463, 35.479259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466129, 34.784664, 35.175064>,  <26.319677, 34.731384, 34.992546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466129, 34.784664, 35.175064>,  <26.710217, 34.873463, 35.479259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.466129, 34.784664, 35.175064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162794, 0.904312, -0.394610,
		0.775326, -0.364603, -0.515689,
		-0.610219, -0.222001, -0.760492,
		26.283064, 34.718063, 34.946915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057701, 35.030624, 34.702232>,  <26.710217, 34.873463, 35.479259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057701, 35.030624, 34.702232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658270, 35.040619, 34.683399>,  <26.418612, 35.046616, 34.672100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658270, 35.040619, 34.683399>,  <27.057701, 35.030624, 34.702232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658270, 35.040619, 34.683399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041145, 0.922826, -0.383013,
		0.033879, -0.384406, -0.922542,
		-0.998579, 0.024982, -0.047081,
		26.358696, 35.048115, 34.669273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956268, 35.239567, 33.977562>,  <27.057701, 35.030624, 34.702232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956268, 35.239567, 33.977562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598499, 35.329113, 34.132427>,  <26.383839, 35.382839, 34.225346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598499, 35.329113, 34.132427>,  <26.956268, 35.239567, 33.977562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.598499, 35.329113, 34.132427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037621, 0.900294, -0.433653,
		-0.445638, -0.373304, -0.813665,
		-0.894423, 0.223863, 0.387161,
		26.330172, 35.396271, 34.248577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.445553, 35.296848, 33.451508>,  <26.956268, 35.239567, 33.977562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.445553, 35.296848, 33.451508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383778, 35.547142, 33.757347>,  <26.346712, 35.697319, 33.940849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383778, 35.547142, 33.757347>,  <26.445553, 35.296848, 33.451508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383778, 35.547142, 33.757347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070956, 0.764860, -0.640276,
		-0.985452, -0.153134, -0.073723,
		-0.154436, 0.625730, 0.764599,
		26.337446, 35.734859, 33.986725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.750622, 35.719212, 33.321869>,  <26.445553, 35.296848, 33.451508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.750622, 35.719212, 33.321869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.037125, 35.892799, 33.540462>,  <26.209026, 35.996952, 33.671619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.037125, 35.892799, 33.540462>,  <25.750622, 35.719212, 33.321869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.037125, 35.892799, 33.540462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084985, 0.723036, -0.685563,
		-0.692643, 0.537482, 0.480998,
		0.716257, 0.433973, 0.546483,
		26.252001, 36.022991, 33.704407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.624424, 36.479389, 33.592030>,  <25.750622, 35.719212, 33.321869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.624424, 36.479389, 33.592030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016277, 36.413597, 33.545956>,  <26.251389, 36.374123, 33.518311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016277, 36.413597, 33.545956>,  <25.624424, 36.479389, 33.592030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016277, 36.413597, 33.545956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036817, 0.711023, -0.702204,
		0.197402, 0.683660, 0.702596,
		0.979631, -0.164484, -0.115187,
		26.310167, 36.364250, 33.511398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.841497, 37.035488, 33.467548>,  <25.624424, 36.479389, 33.592030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.841497, 37.035488, 33.467548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174213, 36.845982, 33.351845>,  <26.373842, 36.732277, 33.282421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174213, 36.845982, 33.351845>,  <25.841497, 37.035488, 33.467548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174213, 36.845982, 33.351845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208069, 0.749214, -0.628797,
		0.514620, 0.462841, 0.721765,
		0.831790, -0.473768, -0.289258,
		26.423750, 36.703850, 33.265068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410456, 37.537632, 33.585686>,  <25.841497, 37.035488, 33.467548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410456, 37.537632, 33.585686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515100, 37.247761, 33.330688>,  <26.577887, 37.073837, 33.177692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515100, 37.247761, 33.330688>,  <26.410456, 37.537632, 33.585686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515100, 37.247761, 33.330688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212235, 0.687520, -0.694458,
		0.941550, 0.046380, 0.333666,
		0.261611, -0.724683, -0.637491,
		26.593584, 37.030357, 33.139442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970514, 37.810211, 33.306362>,  <26.410456, 37.537632, 33.585686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970514, 37.810211, 33.306362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855232, 37.516651, 33.060329>,  <26.786062, 37.340515, 32.912708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855232, 37.516651, 33.060329>,  <26.970514, 37.810211, 33.306362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.855232, 37.516651, 33.060329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305060, 0.538504, -0.785463,
		0.907676, -0.414013, 0.068683,
		-0.288206, -0.733898, -0.615086,
		26.768770, 37.296482, 32.875805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615490, 37.663071, 32.817123>,  <26.970514, 37.810211, 33.306362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615490, 37.663071, 32.817123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.242058, 37.595066, 32.690937>,  <27.017998, 37.554264, 32.615227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.242058, 37.595066, 32.690937>,  <27.615490, 37.663071, 32.817123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.242058, 37.595066, 32.690937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217644, 0.430368, -0.876022,
		0.284698, -0.886499, -0.364783,
		-0.933584, -0.170009, -0.315466,
		26.961983, 37.544064, 32.596298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596968, 37.405220, 32.183594>,  <27.615490, 37.663071, 32.817123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596968, 37.405220, 32.183594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221266, 37.540398, 32.159611>,  <26.995844, 37.621502, 32.145222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221266, 37.540398, 32.159611>,  <27.596968, 37.405220, 32.183594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221266, 37.540398, 32.159611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146850, 0.237787, -0.960152,
		-0.310218, -0.910633, -0.272970,
		-0.939255, 0.337942, -0.059961,
		26.939489, 37.641781, 32.141621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233906, 37.018311, 31.740379>,  <27.596968, 37.405220, 32.183594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233906, 37.018311, 31.740379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.055206, 37.375294, 31.765467>,  <26.947987, 37.589485, 31.780519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.055206, 37.375294, 31.765467>,  <27.233906, 37.018311, 31.740379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.055206, 37.375294, 31.765467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139010, 0.138497, -0.980558,
		-0.883795, -0.429343, -0.185934,
		-0.446747, 0.892459, 0.062721,
		26.921183, 37.643032, 31.784283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646654, 36.498444, 31.978548>,  <27.233906, 37.018311, 31.740379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646654, 36.498444, 31.978548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767891, 36.755249, 32.260242>,  <26.840633, 36.909332, 32.429260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767891, 36.755249, 32.260242>,  <26.646654, 36.498444, 31.978548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767891, 36.755249, 32.260242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109864, -0.757613, 0.643391,
		0.946607, -0.117638, -0.300162,
		0.303093, 0.642016, 0.704238,
		26.858818, 36.947853, 32.471512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220407, 36.227585, 32.276478>,  <26.646654, 36.498444, 31.978548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220407, 36.227585, 32.276478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046389, 36.473774, 32.539364>,  <26.941977, 36.621487, 32.697094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046389, 36.473774, 32.539364>,  <27.220407, 36.227585, 32.276478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046389, 36.473774, 32.539364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111181, -0.687602, 0.717525,
		0.893517, 0.385227, 0.230710,
		-0.435046, 0.615470, 0.657215,
		26.915874, 36.658417, 32.736526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503151, 36.080723, 32.883736>,  <27.220407, 36.227585, 32.276478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503151, 36.080723, 32.883736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.177687, 36.273594, 33.013634>,  <26.982409, 36.389317, 33.091572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.177687, 36.273594, 33.013634>,  <27.503151, 36.080723, 32.883736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.177687, 36.273594, 33.013634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055582, -0.620578, 0.782172,
		0.578678, 0.618372, 0.531740,
		-0.813660, 0.482181, 0.324745,
		26.933588, 36.418247, 33.111057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560553, 36.265362, 33.604481>,  <27.503151, 36.080723, 32.883736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560553, 36.265362, 33.604481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166452, 36.284706, 33.538822>,  <26.929993, 36.296310, 33.499428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166452, 36.284706, 33.538822>,  <27.560553, 36.265362, 33.604481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166452, 36.284706, 33.538822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163225, -0.553666, 0.816585,
		-0.051395, 0.831333, 0.553393,
		-0.985249, 0.048359, -0.164150,
		26.870878, 36.299213, 33.489578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324068, 36.603981, 34.208458>,  <27.560553, 36.265362, 33.604481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324068, 36.603981, 34.208458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047857, 36.374725, 34.031963>,  <26.882130, 36.237171, 33.926067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047857, 36.374725, 34.031963>,  <27.324068, 36.603981, 34.208458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047857, 36.374725, 34.031963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177123, -0.457461, 0.871411,
		-0.701283, 0.679887, 0.214375,
		-0.690529, -0.573135, -0.441233,
		26.840698, 36.202785, 33.899593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686728, 36.771591, 34.509415>,  <27.324068, 36.603981, 34.208458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686728, 36.771591, 34.509415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665190, 36.406227, 34.348030>,  <26.652267, 36.187008, 34.251198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665190, 36.406227, 34.348030>,  <26.686728, 36.771591, 34.509415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665190, 36.406227, 34.348030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180244, -0.388524, 0.903638,
		-0.982147, 0.121377, -0.143717,
		-0.053843, -0.913410, -0.403465,
		26.649036, 36.132206, 34.226990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065575, 36.502785, 34.798615>,  <26.686728, 36.771591, 34.509415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065575, 36.502785, 34.798615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919619, 36.338585, 34.464348>,  <25.832045, 36.240067, 34.263786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919619, 36.338585, 34.464348>,  <26.065575, 36.502785, 34.798615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919619, 36.338585, 34.464348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039051, -0.903515, 0.426775,
		-0.930232, 0.123092, 0.345713,
		-0.364890, -0.410500, -0.835671,
		25.810152, 36.215435, 34.213646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.554649, 36.127438, 35.072025>,  <26.065575, 36.502785, 34.798615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.554649, 36.127438, 35.072025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666967, 35.961754, 34.725712>,  <25.734358, 35.862343, 34.517925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666967, 35.961754, 34.725712>,  <25.554649, 36.127438, 35.072025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.666967, 35.961754, 34.725712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021830, -0.899087, 0.437225,
		-0.959519, -0.141671, -0.243419,
		0.280797, -0.414212, -0.865784,
		25.751207, 35.837490, 34.465977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.184538, 35.490051, 35.031826>,  <25.554649, 36.127438, 35.072025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.184538, 35.490051, 35.031826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469435, 35.448048, 34.754211>,  <25.640373, 35.422844, 34.587643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469435, 35.448048, 34.754211>,  <25.184538, 35.490051, 35.031826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.469435, 35.448048, 34.754211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095644, -0.965005, 0.244166,
		-0.695389, -0.240285, -0.677271,
		0.712240, -0.105013, -0.694036,
		25.683107, 35.416542, 34.546001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.054502, 35.034081, 34.467571>,  <25.184538, 35.490051, 35.031826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.054502, 35.034081, 34.467571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449156, 35.034863, 34.532749>,  <25.685947, 35.035332, 34.571854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449156, 35.034863, 34.532749>,  <25.054502, 35.034081, 34.467571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.449156, 35.034863, 34.532749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011729, -0.996483, 0.082971,
		0.162529, -0.083773, -0.983141,
		0.986634, 0.001954, 0.162940,
		25.745146, 35.035450, 34.581631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.337791, 34.555157, 34.080925>,  <25.054502, 35.034081, 34.467571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.337791, 34.555157, 34.080925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639877, 34.598362, 34.339531>,  <25.821129, 34.624287, 34.494694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639877, 34.598362, 34.339531>,  <25.337791, 34.555157, 34.080925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.639877, 34.598362, 34.339531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067377, -0.993897, 0.087347,
		0.652004, -0.022406, -0.757885,
		0.755216, 0.108014, 0.646515,
		25.866442, 34.630768, 34.533485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.867779, 34.045082, 33.959126>,  <25.337791, 34.555157, 34.080925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.867779, 34.045082, 33.959126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907408, 34.145477, 34.344288>,  <25.931185, 34.205715, 34.575386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907408, 34.145477, 34.344288>,  <25.867779, 34.045082, 33.959126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.907408, 34.145477, 34.344288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019313, -0.967000, 0.254041,
		0.994893, -0.043765, -0.090956,
		0.099073, 0.250987, 0.962907,
		25.937130, 34.220772, 34.633160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.517521, 33.900688, 34.252487>,  <25.867779, 34.045082, 33.959126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.517521, 33.900688, 34.252487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257137, 33.863312, 34.553825>,  <26.100908, 33.840885, 34.734627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257137, 33.863312, 34.553825>,  <26.517521, 33.900688, 34.252487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257137, 33.863312, 34.553825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248405, -0.963979, 0.095079,
		0.717320, 0.249027, 0.650720,
		-0.650958, -0.093440, 0.753341,
		26.061850, 33.835281, 34.779827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643963, 34.570881, 33.944469>,  <26.517521, 33.900688, 34.252487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.643963, 34.570881, 33.944469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.021444, 34.636749, 34.059227>,  <27.247932, 34.676270, 34.128082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.021444, 34.636749, 34.059227>,  <26.643963, 34.570881, 33.944469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.021444, 34.636749, 34.059227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092601, -0.964122, 0.248785,
		0.317572, -0.208212, -0.925092,
		0.943702, 0.164671, 0.286898,
		27.304554, 34.686150, 34.145298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082418, 34.020828, 33.656738>,  <26.643963, 34.570881, 33.944469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082418, 34.020828, 33.656738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229719, 34.184097, 33.990871>,  <27.318100, 34.282059, 34.191353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229719, 34.184097, 33.990871>,  <27.082418, 34.020828, 33.656738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229719, 34.184097, 33.990871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213024, -0.911617, 0.351533,
		0.904991, 0.048494, -0.422657,
		0.368254, 0.408170, 0.835336,
		27.340195, 34.306549, 34.241470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503738, 33.529919, 33.966743>,  <27.082418, 34.020828, 33.656738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503738, 33.529919, 33.966743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534161, 33.775795, 34.280781>,  <27.552414, 33.923321, 34.469204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534161, 33.775795, 34.280781>,  <27.503738, 33.529919, 33.966743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534161, 33.775795, 34.280781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413028, -0.736067, 0.536296,
		0.907537, 0.283477, -0.309865,
		0.076054, 0.614692, 0.785092,
		27.556976, 33.960201, 34.516308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258381, 33.709026, 34.093304>,  <27.503738, 33.529919, 33.966743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258381, 33.709026, 34.093304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010433, 33.749107, 34.404617>,  <27.861666, 33.773155, 34.591404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010433, 33.749107, 34.404617>,  <28.258381, 33.709026, 34.093304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010433, 33.749107, 34.404617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473145, -0.743515, 0.472566,
		0.626017, 0.661169, 0.413470,
		-0.619868, 0.100203, 0.778282,
		27.824472, 33.779167, 34.638103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701468, 33.814812, 34.700661>,  <28.258381, 33.709026, 34.093304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701468, 33.814812, 34.700661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348263, 33.673203, 34.823917>,  <28.136339, 33.588238, 34.897873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348263, 33.673203, 34.823917>,  <28.701468, 33.814812, 34.700661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348263, 33.673203, 34.823917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469345, -0.667953, 0.577541,
		0.001358, 0.654602, 0.755973,
		-0.883014, -0.354027, 0.308141,
		28.083359, 33.566994, 34.916359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823799, 33.766651, 35.347771>,  <28.701468, 33.814812, 34.700661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.823799, 33.766651, 35.347771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502699, 33.533718, 35.296425>,  <28.310038, 33.393959, 35.265617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502699, 33.533718, 35.296425>,  <28.823799, 33.766651, 35.347771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502699, 33.533718, 35.296425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393611, -0.679156, 0.619529,
		-0.447951, 0.446804, 0.774407,
		-0.802752, -0.582334, -0.128362,
		28.261873, 33.359016, 35.257915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707199, 33.306000, 36.002430>,  <28.823799, 33.766651, 35.347771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707199, 33.306000, 36.002430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311676, 33.259243, 35.965343>,  <28.074362, 33.231190, 35.943092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311676, 33.259243, 35.965343>,  <28.707199, 33.306000, 36.002430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311676, 33.259243, 35.965343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124253, -0.989174, -0.078082,
		-0.082587, -0.088728, 0.992626,
		-0.988808, -0.116888, -0.092717,
		28.015034, 33.224178, 35.937527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239475, 33.058945, 36.540844>,  <28.707199, 33.306000, 36.002430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239475, 33.058945, 36.540844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105679, 32.936611, 36.184288>,  <28.025400, 32.863209, 35.970356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105679, 32.936611, 36.184288>,  <28.239475, 33.058945, 36.540844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105679, 32.936611, 36.184288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202697, -0.947085, 0.248885,
		-0.920341, -0.097432, 0.378787,
		-0.334494, -0.305838, -0.891390,
		28.005331, 32.844860, 35.916870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777002, 32.524727, 36.597874>,  <28.239475, 33.058945, 36.540844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777002, 32.524727, 36.597874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906286, 32.462223, 36.224537>,  <27.983856, 32.424721, 36.000534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906286, 32.462223, 36.224537>,  <27.777002, 32.524727, 36.597874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906286, 32.462223, 36.224537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263800, -0.932301, 0.247436,
		-0.908814, -0.326188, -0.260110,
		0.323212, -0.156256, -0.933337,
		28.003250, 32.415348, 35.944534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359432, 31.982365, 36.252003>,  <27.777002, 32.524727, 36.597874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359432, 31.982365, 36.252003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700941, 32.007381, 36.045254>,  <27.905846, 32.022392, 35.921204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700941, 32.007381, 36.045254>,  <27.359432, 31.982365, 36.252003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700941, 32.007381, 36.045254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219201, -0.943664, 0.247890,
		-0.472253, -0.324942, -0.819384,
		0.853773, 0.062543, -0.516876,
		27.957073, 32.026146, 35.890190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.337934, 31.332064, 35.845901>,  <27.359432, 31.982365, 36.252003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.337934, 31.332064, 35.845901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704718, 31.488703, 35.876461>,  <27.924788, 31.582687, 35.894794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704718, 31.488703, 35.876461>,  <27.337934, 31.332064, 35.845901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.704718, 31.488703, 35.876461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367265, -0.903263, 0.221882,
		0.155895, -0.175399, -0.972076,
		0.916959, 0.391600, 0.076396,
		27.979805, 31.606182, 35.899380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813934, 30.808924, 35.572929>,  <27.337934, 31.332064, 35.845901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813934, 30.808924, 35.572929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018787, 31.056887, 35.810730>,  <28.141699, 31.205666, 35.953411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018787, 31.056887, 35.810730>,  <27.813934, 30.808924, 35.572929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018787, 31.056887, 35.810730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428662, -0.784271, 0.448518,
		0.744290, 0.025139, -0.667383,
		0.512134, 0.619909, 0.594501,
		28.172428, 31.242859, 35.989079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539791, 30.717340, 35.401577>,  <27.813934, 30.808924, 35.572929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539791, 30.717340, 35.401577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437462, 30.816772, 35.775265>,  <28.376064, 30.876431, 35.999477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437462, 30.816772, 35.775265>,  <28.539791, 30.717340, 35.401577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437462, 30.816772, 35.775265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423649, -0.839811, 0.339469,
		0.868951, 0.482624, 0.109534,
		-0.255824, 0.248578, 0.934218,
		28.360714, 30.891346, 36.055531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985556, 31.347496, 35.265633>,  <28.539791, 30.717340, 35.401577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985556, 31.347496, 35.265633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748804, 31.554878, 35.018768>,  <28.606752, 31.679308, 34.870651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748804, 31.554878, 35.018768>,  <28.985556, 31.347496, 35.265633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748804, 31.554878, 35.018768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102027, 0.711329, 0.695414,
		0.799543, 0.474569, -0.368125,
		-0.591880, 0.518455, -0.617157,
		28.571239, 31.710415, 34.833622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116730, 31.941769, 35.774384>,  <28.985556, 31.347496, 35.265633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116730, 31.941769, 35.774384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742678, 31.821209, 35.699886>,  <28.518246, 31.748873, 35.655186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742678, 31.821209, 35.699886>,  <29.116730, 31.941769, 35.774384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742678, 31.821209, 35.699886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251859, 0.935217, -0.248870,
		0.249191, -0.185818, -0.950461,
		-0.935131, -0.301398, -0.186248,
		28.462139, 31.730789, 35.644012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072962, 32.211952, 35.180622>,  <29.116730, 31.941769, 35.774384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072962, 32.211952, 35.180622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725521, 32.144199, 35.366886>,  <28.517057, 32.103550, 35.478645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725521, 32.144199, 35.366886>,  <29.072962, 32.211952, 35.180622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725521, 32.144199, 35.366886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334123, 0.894185, -0.297986,
		-0.365917, -0.414420, -0.833283,
		-0.868600, -0.169380, 0.465665,
		28.464941, 32.093384, 35.506584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482893, 32.288815, 34.753597>,  <29.072962, 32.211952, 35.180622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482893, 32.288815, 34.753597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.366383, 32.361221, 35.129341>,  <28.296476, 32.404667, 35.354786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.366383, 32.361221, 35.129341>,  <28.482893, 32.288815, 34.753597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366383, 32.361221, 35.129341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448127, 0.841716, -0.301158,
		-0.845186, -0.508672, -0.164054,
		-0.291277, 0.181018, 0.939356,
		28.278999, 32.415527, 35.411148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806873, 32.346889, 34.782360>,  <28.482893, 32.288815, 34.753597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.806873, 32.346889, 34.782360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925488, 32.554119, 35.103275>,  <27.996656, 32.678459, 35.295822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925488, 32.554119, 35.103275>,  <27.806873, 32.346889, 34.782360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925488, 32.554119, 35.103275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582377, 0.763895, -0.278031,
		-0.756903, -0.384786, 0.528239,
		0.296537, 0.518077, 0.802285,
		28.014448, 32.709541, 35.343960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231968, 32.575481, 35.174702>,  <27.806873, 32.346889, 34.782360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231968, 32.575481, 35.174702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535046, 32.833794, 35.212368>,  <27.716892, 32.988781, 35.234966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535046, 32.833794, 35.212368>,  <27.231968, 32.575481, 35.174702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535046, 32.833794, 35.212368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592790, 0.741382, -0.314567,
		-0.272952, 0.182527, 0.944553,
		0.757692, 0.645783, 0.094161,
		27.762354, 33.027527, 35.240616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870869, 33.136887, 35.248569>,  <27.231968, 32.575481, 35.174702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870869, 33.136887, 35.248569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.239431, 33.274139, 35.175606>,  <27.460569, 33.356491, 35.131828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.239431, 33.274139, 35.175606>,  <26.870869, 33.136887, 35.248569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239431, 33.274139, 35.175606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388412, 0.827793, -0.404840,
		0.012086, 0.443873, 0.896008,
		0.921407, 0.343128, -0.182410,
		27.515854, 33.377079, 35.120884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018044, 33.885818, 35.604710>,  <26.870869, 33.136887, 35.248569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.018044, 33.885818, 35.604710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.295734, 33.876572, 35.316956>,  <27.462349, 33.871025, 35.144302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.295734, 33.876572, 35.316956>,  <27.018044, 33.885818, 35.604710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.295734, 33.876572, 35.316956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125642, 0.980246, -0.152750,
		0.708703, 0.196428, 0.677611,
		0.694230, -0.023118, -0.719382,
		27.504004, 33.869637, 35.101139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394890, 34.574402, 35.617569>,  <27.018044, 33.885818, 35.604710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.394890, 34.574402, 35.617569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459888, 34.412563, 35.257591>,  <27.498888, 34.315460, 35.041607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459888, 34.412563, 35.257591>,  <27.394890, 34.574402, 35.617569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459888, 34.412563, 35.257591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259037, 0.862580, -0.434576,
		0.952100, 0.303735, 0.035360,
		0.162497, -0.404600, -0.899941,
		27.508638, 34.291183, 34.987610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873440, 34.979794, 35.293839>,  <27.394890, 34.574402, 35.617569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873440, 34.979794, 35.293839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721729, 34.784245, 34.979603>,  <27.630703, 34.666916, 34.791061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721729, 34.784245, 34.979603>,  <27.873440, 34.979794, 35.293839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721729, 34.784245, 34.979603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130491, 0.868803, -0.477654,
		0.916037, -0.078648, -0.393307,
		-0.379273, -0.488872, -0.785593,
		27.607946, 34.637585, 34.743923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488560, 35.540916, 35.371204>,  <27.873440, 34.979794, 35.293839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488560, 35.540916, 35.371204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771578, 35.651402, 35.631386>,  <28.941389, 35.717693, 35.787495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771578, 35.651402, 35.631386>,  <28.488560, 35.540916, 35.371204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771578, 35.651402, 35.631386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526732, -0.407483, 0.745997,
		0.471100, -0.870440, -0.142823,
		0.707544, 0.276209, 0.650454,
		28.983841, 35.734264, 35.826523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056471, 35.826138, 34.990337>,  <28.488560, 35.540916, 35.371204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056471, 35.826138, 34.990337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160273, 35.682396, 35.348896>,  <29.222553, 35.596149, 35.564030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160273, 35.682396, 35.348896>,  <29.056471, 35.826138, 34.990337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160273, 35.682396, 35.348896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329589, -0.905418, -0.267562,
		0.907761, -0.226008, -0.353399,
		0.259503, -0.359358, 0.896393,
		29.238123, 35.574589, 35.617813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085903, 35.297215, 34.483002>,  <29.056471, 35.826138, 34.990337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085903, 35.297215, 34.483002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186440, 35.285801, 34.869991>,  <29.246761, 35.278954, 35.102184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186440, 35.285801, 34.869991>,  <29.085903, 35.297215, 34.483002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186440, 35.285801, 34.869991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322818, -0.939861, -0.111583,
		0.912479, 0.340364, -0.227012,
		0.251339, -0.028533, 0.967478,
		29.261841, 35.277241, 35.160236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860628, 35.302132, 34.188885>,  <29.085903, 35.297215, 34.483002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860628, 35.302132, 34.188885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666445, 35.352192, 33.842781>,  <29.549934, 35.382229, 33.635120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666445, 35.352192, 33.842781>,  <29.860628, 35.302132, 34.188885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666445, 35.352192, 33.842781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411393, -0.905980, 0.099778,
		-0.771418, 0.404398, 0.491300,
		-0.485458, 0.125147, -0.865257,
		29.520807, 35.389736, 33.583202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104136, 35.901638, 34.558304>,  <29.860628, 35.302132, 34.188885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104136, 35.901638, 34.558304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259123, 35.542583, 34.474281>,  <30.352116, 35.327152, 34.423866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259123, 35.542583, 34.474281>,  <30.104136, 35.901638, 34.558304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259123, 35.542583, 34.474281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585864, 0.415691, -0.695676,
		0.711780, 0.146487, 0.686957,
		0.387469, -0.897632, -0.210059,
		30.375364, 35.273293, 34.411263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801466, 35.932011, 34.355942>,  <30.104136, 35.901638, 34.558304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801466, 35.932011, 34.355942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669651, 35.592274, 34.191006>,  <30.590563, 35.388432, 34.092045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669651, 35.592274, 34.191006>,  <30.801466, 35.932011, 34.355942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669651, 35.592274, 34.191006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574587, 0.166131, -0.801405,
		0.749170, -0.501015, 0.433276,
		-0.329535, -0.849344, -0.412337,
		30.570791, 35.337471, 34.067303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785276, 35.530346, 33.641556>,  <30.801466, 35.932011, 34.355942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785276, 35.530346, 33.641556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649525, 35.766682, 33.348782>,  <30.568073, 35.908482, 33.173115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649525, 35.766682, 33.348782>,  <30.785276, 35.530346, 33.641556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649525, 35.766682, 33.348782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889583, -0.454492, 0.045597,
		-0.305721, 0.666596, 0.679842,
		-0.339377, 0.590836, -0.731940,
		30.547712, 35.943932, 33.129200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521692, 35.539761, 33.872654>,  <30.785276, 35.530346, 33.641556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521692, 35.539761, 33.872654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836399, 35.686268, 33.673920>,  <32.025223, 35.774174, 33.554680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836399, 35.686268, 33.673920>,  <31.521692, 35.539761, 33.872654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836399, 35.686268, 33.673920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412302, 0.287160, 0.864607,
		0.459350, -0.885090, 0.074915,
		0.786768, 0.366270, -0.496832,
		32.072430, 35.796150, 33.524872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967892, 34.956116, 34.003139>,  <31.521692, 35.539761, 33.872654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967892, 34.956116, 34.003139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331211, 34.798977, 33.945633>,  <31.549202, 34.704693, 33.911129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331211, 34.798977, 33.945633>,  <30.967892, 34.956116, 34.003139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331211, 34.798977, 33.945633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382780, -0.641862, -0.664449,
		0.168752, 0.658547, -0.733375,
		0.908296, -0.392848, -0.143763,
		31.603701, 34.681122, 33.902504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999178, 34.858330, 33.240570>,  <30.967892, 34.956116, 34.003139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999178, 34.858330, 33.240570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230843, 34.610325, 33.452290>,  <31.369843, 34.461521, 33.579323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230843, 34.610325, 33.452290>,  <30.999178, 34.858330, 33.240570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230843, 34.610325, 33.452290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435969, -0.784195, -0.441553,
		0.688840, 0.024973, -0.724483,
		0.579163, -0.620012, 0.529298,
		31.404591, 34.424320, 33.611080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405420, 34.370361, 32.879379>,  <30.999178, 34.858330, 33.240570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405420, 34.370361, 32.879379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250565, 34.231071, 33.220875>,  <31.157652, 34.147499, 33.425770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250565, 34.231071, 33.220875>,  <31.405420, 34.370361, 32.879379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250565, 34.231071, 33.220875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435158, -0.747319, -0.502147,
		0.812873, -0.565910, 0.137782,
		-0.387138, -0.348224, 0.853736,
		31.134424, 34.126606, 33.476997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142971, 34.678894, 32.545750>,  <31.405420, 34.370361, 32.879379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142971, 34.678894, 32.545750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269062, 35.008350, 32.357174>,  <32.344715, 35.206024, 32.244030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269062, 35.008350, 32.357174>,  <32.142971, 34.678894, 32.545750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269062, 35.008350, 32.357174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288319, 0.556398, 0.779290,
		0.904160, -0.109728, 0.412862,
		0.315226, 0.823639, -0.471436,
		32.363628, 35.255444, 32.215744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679024, 35.064167, 32.908218>,  <32.142971, 34.678894, 32.545750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679024, 35.064167, 32.908218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463303, 35.323730, 32.693527>,  <32.333870, 35.479469, 32.564713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463303, 35.323730, 32.693527>,  <32.679024, 35.064167, 32.908218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463303, 35.323730, 32.693527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152248, 0.551720, 0.820016,
		0.828233, 0.523955, -0.198751,
		-0.539306, 0.648904, -0.536724,
		32.301510, 35.518402, 32.532509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962685, 35.751549, 32.918335>,  <32.679024, 35.064167, 32.908218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962685, 35.751549, 32.918335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565445, 35.765644, 32.873581>,  <32.327103, 35.774101, 32.846729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565445, 35.765644, 32.873581>,  <32.962685, 35.751549, 32.918335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565445, 35.765644, 32.873581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076461, 0.528888, 0.845240,
		0.088957, 0.847960, -0.522542,
		-0.993096, 0.035237, -0.111884,
		32.267517, 35.776215, 32.840015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578556, 35.974163, 32.642006>,  <32.962685, 35.751549, 32.918335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578556, 35.974163, 32.642006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746761, 35.820667, 32.970860>,  <33.847687, 35.728569, 33.168171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746761, 35.820667, 32.970860>,  <33.578556, 35.974163, 32.642006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746761, 35.820667, 32.970860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684887, -0.460053, -0.565049,
		0.595060, 0.800683, 0.069361,
		0.420515, -0.383743, 0.822137,
		33.872917, 35.705544, 33.217499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589920, 36.314194, 31.951401>,  <33.578556, 35.974163, 32.642006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589920, 36.314194, 31.951401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556477, 36.701271, 31.856260>,  <33.536411, 36.933517, 31.799175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556477, 36.701271, 31.856260>,  <33.589920, 36.314194, 31.951401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556477, 36.701271, 31.856260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375246, -0.251692, -0.892099,
		-0.923147, 0.014670, 0.384167,
		-0.083605, 0.967696, -0.237853,
		33.531395, 36.991581, 31.784904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974632, 36.377850, 31.566780>,  <33.589920, 36.314194, 31.951401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974632, 36.377850, 31.566780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204018, 36.686047, 31.455435>,  <33.341648, 36.870964, 31.388628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204018, 36.686047, 31.455435>,  <32.974632, 36.377850, 31.566780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204018, 36.686047, 31.455435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277762, -0.136796, -0.950860,
		-0.770709, 0.622599, 0.135566,
		0.573459, 0.770492, -0.278364,
		33.376057, 36.917194, 31.371925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551239, 36.846409, 31.024446>,  <32.974632, 36.377850, 31.566780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551239, 36.846409, 31.024446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945587, 36.887215, 30.971306>,  <33.182198, 36.911697, 30.939423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945587, 36.887215, 30.971306>,  <32.551239, 36.846409, 31.024446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945587, 36.887215, 30.971306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137043, 0.035223, -0.989939,
		-0.096310, 0.994159, 0.048706,
		0.985872, 0.102016, -0.132850,
		33.241348, 36.917820, 30.931452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528316, 37.394341, 30.596292>,  <32.551239, 36.846409, 31.024446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528316, 37.394341, 30.596292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865540, 37.183830, 30.551941>,  <33.067871, 37.057526, 30.525330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865540, 37.183830, 30.551941>,  <32.528316, 37.394341, 30.596292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865540, 37.183830, 30.551941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147444, -0.027891, -0.988677,
		0.517223, 0.849857, -0.101109,
		0.843054, -0.526275, -0.110880,
		33.118454, 37.025948, 30.518677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786617, 37.575947, 29.938858>,  <32.528316, 37.394341, 30.596292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786617, 37.575947, 29.938858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995853, 37.245960, 30.024460>,  <33.121395, 37.047966, 30.075821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995853, 37.245960, 30.024460>,  <32.786617, 37.575947, 29.938858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995853, 37.245960, 30.024460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097314, -0.307268, -0.946634,
		0.846700, 0.474354, -0.241011,
		0.523095, -0.824970, 0.214002,
		33.152782, 36.998470, 30.088661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336243, 37.611050, 29.401136>,  <32.786617, 37.575947, 29.938858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336243, 37.611050, 29.401136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313519, 37.243160, 29.556507>,  <33.299885, 37.022427, 29.649731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313519, 37.243160, 29.556507>,  <33.336243, 37.611050, 29.401136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313519, 37.243160, 29.556507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149499, -0.392506, -0.907518,
		0.987129, 0.006514, 0.159796,
		-0.056809, -0.919726, 0.388428,
		33.296474, 36.967243, 29.673035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985680, 37.190033, 29.188829>,  <33.336243, 37.611050, 29.401136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985680, 37.190033, 29.188829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714600, 36.920364, 29.306274>,  <33.551952, 36.758564, 29.376741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714600, 36.920364, 29.306274>,  <33.985680, 37.190033, 29.188829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714600, 36.920364, 29.306274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077292, -0.462389, -0.883302,
		0.731261, -0.575924, 0.365471,
		-0.677705, -0.674172, 0.293612,
		33.511288, 36.718113, 29.394358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272064, 36.511009, 29.070934>,  <33.985680, 37.190033, 29.188829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272064, 36.511009, 29.070934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876900, 36.453129, 29.093184>,  <33.639801, 36.418400, 29.106533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876900, 36.453129, 29.093184>,  <34.272064, 36.511009, 29.070934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876900, 36.453129, 29.093184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025558, -0.505916, -0.862204,
		0.152904, -0.850359, 0.503498,
		-0.987911, -0.144703, 0.055623,
		33.580528, 36.409718, 29.109871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231503, 35.771557, 29.041607>,  <34.272064, 36.511009, 29.070934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231503, 35.771557, 29.041607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875637, 35.930683, 28.951946>,  <33.662117, 36.026161, 28.898149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875637, 35.930683, 28.951946>,  <34.231503, 35.771557, 29.041607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875637, 35.930683, 28.951946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103090, -0.653207, -0.750129,
		-0.444833, -0.644252, 0.622144,
		-0.889660, 0.397819, -0.224153,
		33.608738, 36.050030, 28.884701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818447, 35.228271, 28.895868>,  <34.231503, 35.771557, 29.041607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818447, 35.228271, 28.895868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610195, 35.519932, 28.718201>,  <33.485245, 35.694927, 28.611601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610195, 35.519932, 28.718201>,  <33.818447, 35.228271, 28.895868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610195, 35.519932, 28.718201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063932, -0.552068, -0.831344,
		-0.851387, -0.404424, 0.334038,
		-0.520627, 0.729151, -0.444168,
		33.454006, 35.738678, 28.584949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080032, 34.982388, 28.662647>,  <33.818447, 35.228271, 28.895868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080032, 34.982388, 28.662647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211361, 35.284569, 28.435844>,  <33.290157, 35.465878, 28.299763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211361, 35.284569, 28.435844>,  <33.080032, 34.982388, 28.662647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211361, 35.284569, 28.435844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051922, -0.584944, -0.809410,
		-0.943138, 0.295187, -0.152824,
		0.328321, 0.755451, -0.567009,
		33.309856, 35.511204, 28.265741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629250, 34.834335, 28.076729>,  <33.080032, 34.982388, 28.662647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629250, 34.834335, 28.076729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878281, 35.113926, 27.935970>,  <33.027699, 35.281681, 27.851515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878281, 35.113926, 27.935970>,  <32.629250, 34.834335, 28.076729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878281, 35.113926, 27.935970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097819, -0.515660, -0.851191,
		-0.776420, 0.495510, -0.389412,
		0.622578, 0.698974, -0.351898,
		33.065056, 35.323620, 27.830400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386326, 34.978859, 27.349173>,  <32.629250, 34.834335, 28.076729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386326, 34.978859, 27.349173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763878, 35.110584, 27.359303>,  <32.990410, 35.189617, 27.365381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763878, 35.110584, 27.359303>,  <32.386326, 34.978859, 27.349173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763878, 35.110584, 27.359303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186556, -0.468298, -0.863652,
		-0.272549, 0.819910, -0.503452,
		0.943882, 0.329309, 0.025325,
		33.047043, 35.209377, 27.366899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545902, 35.274868, 26.693972>,  <32.386326, 34.978859, 27.349173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545902, 35.274868, 26.693972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905403, 35.191128, 26.848072>,  <33.121105, 35.140884, 26.940533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905403, 35.191128, 26.848072>,  <32.545902, 35.274868, 26.693972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905403, 35.191128, 26.848072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274278, -0.417063, -0.866504,
		0.342078, 0.884438, -0.317415,
		0.898751, -0.209352, 0.385250,
		33.175030, 35.128323, 26.963648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013088, 35.454273, 26.139790>,  <32.545902, 35.274868, 26.693972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013088, 35.454273, 26.139790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222229, 35.234428, 26.400421>,  <33.347713, 35.102524, 26.556801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222229, 35.234428, 26.400421>,  <33.013088, 35.454273, 26.139790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222229, 35.234428, 26.400421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451500, -0.469797, -0.758577,
		0.723030, 0.690812, 0.002513,
		0.522853, -0.549609, 0.651579,
		33.379086, 35.069546, 26.595894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704071, 35.650642, 25.901215>,  <33.013088, 35.454273, 26.139790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704071, 35.650642, 25.901215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745159, 35.307510, 26.102638>,  <33.769810, 35.101631, 26.223492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745159, 35.307510, 26.102638>,  <33.704071, 35.650642, 25.901215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745159, 35.307510, 26.102638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400947, -0.427585, -0.810193,
		0.910324, 0.285122, 0.300025,
		0.102717, -0.857833, 0.503559,
		33.775974, 35.050159, 26.253706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370720, 35.432617, 25.858526>,  <33.704071, 35.650642, 25.901215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370720, 35.432617, 25.858526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166710, 35.094250, 25.920885>,  <34.044304, 34.891232, 25.958300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166710, 35.094250, 25.920885>,  <34.370720, 35.432617, 25.858526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166710, 35.094250, 25.920885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366030, -0.377451, -0.850619,
		0.778396, -0.376771, 0.502138,
		-0.510021, -0.845917, 0.155897,
		34.013702, 34.840473, 25.967653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874409, 34.922604, 25.719971>,  <34.370720, 35.432617, 25.858526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874409, 34.922604, 25.719971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508755, 34.772678, 25.658154>,  <34.289364, 34.682724, 25.621063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508755, 34.772678, 25.658154>,  <34.874409, 34.922604, 25.719971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508755, 34.772678, 25.658154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323040, -0.443057, -0.836269,
		0.244970, -0.814382, 0.526090,
		-0.914131, -0.374809, -0.154542,
		34.234516, 34.660236, 25.611792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004219, 34.241261, 25.388739>,  <34.874409, 34.922604, 25.719971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004219, 34.241261, 25.388739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615250, 34.315449, 25.332170>,  <34.381870, 34.359962, 25.298229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615250, 34.315449, 25.332170>,  <35.004219, 34.241261, 25.388739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615250, 34.315449, 25.332170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050441, -0.424748, -0.903905,
		-0.227716, -0.886109, 0.403678,
		-0.972420, 0.185472, -0.141419,
		34.323524, 34.371090, 25.289745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621338, 33.646858, 25.108068>,  <35.004219, 34.241261, 25.388739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621338, 33.646858, 25.108068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380146, 33.950233, 25.009132>,  <34.235432, 34.132259, 24.949772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380146, 33.950233, 25.009132>,  <34.621338, 33.646858, 25.108068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380146, 33.950233, 25.009132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070756, -0.257976, -0.963557,
		-0.794609, -0.598510, 0.101891,
		-0.602984, 0.758442, -0.247339,
		34.199249, 34.177765, 24.934931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078312, 33.327122, 24.724491>,  <34.621338, 33.646858, 25.108068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078312, 33.327122, 24.724491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079105, 33.705025, 24.593390>,  <34.079582, 33.931767, 24.514729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079105, 33.705025, 24.593390>,  <34.078312, 33.327122, 24.724491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079105, 33.705025, 24.593390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144447, -0.324044, -0.934949,
		-0.989511, 0.049201, 0.135825,
		0.001987, 0.944762, -0.327752,
		34.079700, 33.988453, 24.495064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635536, 33.290154, 24.078648>,  <34.078312, 33.327122, 24.724491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635536, 33.290154, 24.078648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818314, 33.645878, 24.085890>,  <33.927979, 33.859314, 24.090235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818314, 33.645878, 24.085890>,  <33.635536, 33.290154, 24.078648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818314, 33.645878, 24.085890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169875, -0.067266, -0.983167,
		-0.873125, 0.452326, -0.181808,
		0.456941, 0.889313, 0.018107,
		33.955395, 33.912670, 24.091322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199570, 33.802982, 23.600574>,  <33.635536, 33.290154, 24.078648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199570, 33.802982, 23.600574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587521, 33.893383, 23.636911>,  <33.820293, 33.947624, 23.658714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587521, 33.893383, 23.636911>,  <33.199570, 33.802982, 23.600574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587521, 33.893383, 23.636911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156186, -0.290841, -0.943937,
		-0.186915, 0.929695, -0.317380,
		0.969881, 0.226006, 0.090843,
		33.878487, 33.961185, 23.664164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344082, 34.271950, 23.093401>,  <33.199570, 33.802982, 23.600574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344082, 34.271950, 23.093401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717190, 34.155651, 23.178633>,  <33.941055, 34.085873, 23.229771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717190, 34.155651, 23.178633>,  <33.344082, 34.271950, 23.093401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717190, 34.155651, 23.178633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144723, -0.239316, -0.960095,
		0.330142, 0.926386, -0.181149,
		0.932771, -0.290751, 0.213078,
		33.997021, 34.068424, 23.242556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876419, 34.409378, 22.475388>,  <33.344082, 34.271950, 23.093401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876419, 34.409378, 22.475388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092834, 34.144123, 22.682280>,  <34.222683, 33.984970, 22.806416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092834, 34.144123, 22.682280>,  <33.876419, 34.409378, 22.475388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092834, 34.144123, 22.682280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210472, -0.488682, -0.846694,
		0.814235, 0.566958, -0.124824,
		0.541039, -0.663136, 0.517231,
		34.255146, 33.945183, 22.837448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460995, 34.285721, 21.993822>,  <33.876419, 34.409378, 22.475388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460995, 34.285721, 21.993822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444286, 33.975151, 22.245352>,  <34.434261, 33.788811, 22.396271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444286, 33.975151, 22.245352>,  <34.460995, 34.285721, 21.993822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444286, 33.975151, 22.245352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227410, -0.620244, -0.750721,
		0.972903, 0.111640, 0.202477,
		-0.041775, -0.776424, 0.628825,
		34.431755, 33.742226, 22.434000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120625, 34.054493, 22.102823>,  <34.460995, 34.285721, 21.993822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120625, 34.054493, 22.102823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873390, 33.746391, 22.165653>,  <34.725048, 33.561531, 22.203350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873390, 33.746391, 22.165653>,  <35.120625, 34.054493, 22.102823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873390, 33.746391, 22.165653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330332, -0.435806, -0.837230,
		0.713334, -0.465598, 0.523807,
		-0.618090, -0.770255, 0.157073,
		34.687962, 33.515316, 22.212774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532818, 33.440025, 21.995949>,  <35.120625, 34.054493, 22.102823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532818, 33.440025, 21.995949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161907, 33.292778, 21.968685>,  <34.939362, 33.204430, 21.952328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161907, 33.292778, 21.968685>,  <35.532818, 33.440025, 21.995949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161907, 33.292778, 21.968685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239689, -0.443905, -0.863422,
		0.287583, -0.816969, 0.499857,
		-0.927278, -0.368115, -0.068159,
		34.883724, 33.182343, 21.948238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667542, 32.791302, 21.729452>,  <35.532818, 33.440025, 21.995949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667542, 32.791302, 21.729452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277962, 32.818699, 21.642981>,  <35.044212, 32.835136, 21.591097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277962, 32.818699, 21.642981>,  <35.667542, 32.791302, 21.729452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277962, 32.818699, 21.642981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197607, -0.211317, -0.957234,
		-0.111246, -0.975015, 0.192278,
		-0.973948, 0.068493, -0.216178,
		34.985779, 32.839249, 21.578127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510864, 32.197021, 21.376472>,  <35.667542, 32.791302, 21.729452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510864, 32.197021, 21.376472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277946, 32.507057, 21.278353>,  <35.138195, 32.693077, 21.219481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277946, 32.507057, 21.278353>,  <35.510864, 32.197021, 21.376472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277946, 32.507057, 21.278353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120949, -0.215779, -0.968923,
		-0.803928, -0.593871, 0.031902,
		-0.582299, 0.775085, -0.245299,
		35.103256, 32.739582, 21.204763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988102, 31.896498, 20.983015>,  <35.510864, 32.197021, 21.376472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988102, 31.896498, 20.983015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033077, 32.280586, 20.880774>,  <35.060062, 32.511040, 20.819429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033077, 32.280586, 20.880774>,  <34.988102, 31.896498, 20.983015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033077, 32.280586, 20.880774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329310, -0.278707, -0.902151,
		-0.937503, 0.017265, -0.347548,
		0.112440, 0.960221, -0.255603,
		35.066811, 32.568653, 20.804092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821251, 31.937601, 20.255630>,  <34.988102, 31.896498, 20.983015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821251, 31.937601, 20.255630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993271, 32.296600, 20.294729>,  <35.096481, 32.512001, 20.318188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993271, 32.296600, 20.294729>,  <34.821251, 31.937601, 20.255630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993271, 32.296600, 20.294729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597029, -0.201507, -0.776499,
		-0.677211, 0.392290, -0.622491,
		0.430049, 0.897499, 0.097746,
		35.122284, 32.565849, 20.324053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907104, 32.101067, 19.584332>,  <34.821251, 31.937601, 20.255630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907104, 32.101067, 19.584332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157970, 32.342945, 19.780699>,  <35.308491, 32.488071, 19.898520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157970, 32.342945, 19.780699>,  <34.907104, 32.101067, 19.584332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157970, 32.342945, 19.780699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641395, -0.043369, -0.765984,
		-0.441897, 0.795274, -0.415049,
		0.627167, 0.604697, 0.490920,
		35.346119, 32.524353, 19.927975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197037, 32.538002, 19.022686>,  <34.907104, 32.101067, 19.584332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197037, 32.538002, 19.022686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456188, 32.604263, 19.320091>,  <35.611679, 32.644020, 19.498533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456188, 32.604263, 19.320091>,  <35.197037, 32.538002, 19.022686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456188, 32.604263, 19.320091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760423, -0.083272, -0.644067,
		-0.044776, 0.982663, -0.179914,
		0.647883, 0.165649, 0.743511,
		35.650555, 32.653957, 19.543144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771111, 33.023716, 18.785044>,  <35.197037, 32.538002, 19.022686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771111, 33.023716, 18.785044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909420, 32.818874, 19.099545>,  <35.992405, 32.695969, 19.288244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909420, 32.818874, 19.099545>,  <35.771111, 33.023716, 18.785044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909420, 32.818874, 19.099545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784166, -0.302457, -0.541852,
		0.515294, 0.803906, 0.296997,
		0.345769, -0.512108, 0.786250,
		36.013149, 32.665241, 19.335419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440239, 33.229599, 18.698132>,  <35.771111, 33.023716, 18.785044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440239, 33.229599, 18.698132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465061, 32.908691, 18.935623>,  <36.479954, 32.716148, 19.078117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465061, 32.908691, 18.935623>,  <36.440239, 33.229599, 18.698132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465061, 32.908691, 18.935623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841284, -0.278029, -0.463617,
		0.537019, 0.528267, 0.657681,
		0.062059, -0.802268, 0.593730,
		36.483681, 32.668011, 19.113743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117012, 33.244179, 19.073620>,  <36.440239, 33.229599, 18.698132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117012, 33.244179, 19.073620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000702, 32.862484, 19.045660>,  <36.930916, 32.633469, 19.028885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000702, 32.862484, 19.045660>,  <37.117012, 33.244179, 19.073620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000702, 32.862484, 19.045660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867278, -0.232010, -0.440456,
		0.404082, -0.188692, 0.895049,
		-0.290771, -0.954236, -0.069897,
		36.913471, 32.576214, 19.024691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599453, 32.960274, 19.332541>,  <37.117012, 33.244179, 19.073620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599453, 32.960274, 19.332541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424683, 32.668510, 19.121992>,  <37.319820, 32.493454, 18.995663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424683, 32.668510, 19.121992>,  <37.599453, 32.960274, 19.332541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424683, 32.668510, 19.121992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860478, -0.168448, -0.480836,
		0.262058, -0.663019, 0.701236,
		-0.436925, -0.729405, -0.526370,
		37.293606, 32.449688, 18.964081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052650, 32.352413, 19.347973>,  <37.599453, 32.960274, 19.332541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052650, 32.352413, 19.347973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827946, 32.305439, 19.020403>,  <37.693123, 32.277256, 18.823860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827946, 32.305439, 19.020403>,  <38.052650, 32.352413, 19.347973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827946, 32.305439, 19.020403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826436, -0.124923, -0.548997,
		-0.037833, -0.985192, 0.167227,
		-0.561758, -0.117432, -0.818925,
		37.659420, 32.270210, 18.774725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285282, 31.810541, 19.160677>,  <38.052650, 32.352413, 19.347973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285282, 31.810541, 19.160677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083824, 31.967310, 18.852720>,  <37.962948, 32.061371, 18.667946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083824, 31.967310, 18.852720>,  <38.285282, 31.810541, 19.160677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083824, 31.967310, 18.852720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839323, 0.010891, -0.543524,
		-0.204634, -0.919934, -0.334434,
		-0.503649, 0.391922, -0.769893,
		37.932728, 32.084885, 18.621752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529076, 31.443548, 18.639330>,  <38.285282, 31.810541, 19.160677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529076, 31.443548, 18.639330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385746, 31.783279, 18.484283>,  <38.299747, 31.987118, 18.391254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385746, 31.783279, 18.484283>,  <38.529076, 31.443548, 18.639330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385746, 31.783279, 18.484283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900820, 0.205479, -0.382494,
		-0.245216, -0.486229, -0.838720,
		-0.358319, 0.849329, -0.387617,
		38.278252, 32.038078, 18.367998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789669, 31.504183, 17.962927>,  <38.529076, 31.443548, 18.639330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789669, 31.504183, 17.962927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687469, 31.875584, 18.070707>,  <38.626148, 32.098423, 18.135376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687469, 31.875584, 18.070707>,  <38.789669, 31.504183, 17.962927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687469, 31.875584, 18.070707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829445, 0.353707, -0.432334,
		-0.496729, 0.113032, -0.860514,
		-0.255502, 0.928502, 0.269450,
		38.610817, 32.154133, 18.151543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953289, 31.926201, 17.343935>,  <38.789669, 31.504183, 17.962927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953289, 31.926201, 17.343935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924610, 32.171230, 17.658798>,  <38.907402, 32.318249, 17.847715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924610, 32.171230, 17.658798>,  <38.953289, 31.926201, 17.343935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924610, 32.171230, 17.658798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889957, 0.395635, -0.226825,
		-0.450373, 0.684272, -0.573530,
		-0.071698, 0.612573, 0.787156,
		38.903099, 32.355003, 17.894945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053101, 32.535500, 17.039190>,  <38.953289, 31.926201, 17.343935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053101, 32.535500, 17.039190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130836, 32.577236, 17.429338>,  <39.177479, 32.602280, 17.663427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130836, 32.577236, 17.429338>,  <39.053101, 32.535500, 17.039190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130836, 32.577236, 17.429338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889502, 0.400444, -0.220071,
		-0.413543, 0.910361, -0.014991,
		0.194341, 0.104344, 0.975369,
		39.189140, 32.608540, 17.721949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485313, 33.031517, 17.273607>,  <39.053101, 32.535500, 17.039190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485313, 33.031517, 17.273607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878605, 33.029228, 17.200699>,  <40.114582, 33.027855, 17.156954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878605, 33.029228, 17.200699>,  <39.485313, 33.031517, 17.273607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878605, 33.029228, 17.200699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175891, -0.293589, -0.939611,
		-0.048138, 0.955915, -0.289672,
		0.983232, -0.005720, -0.182269,
		40.173576, 33.027512, 17.146019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544552, 33.450714, 16.695166>,  <39.485313, 33.031517, 17.273607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544552, 33.450714, 16.695166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856468, 33.201752, 16.722105>,  <40.043617, 33.052376, 16.738268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856468, 33.201752, 16.722105>,  <39.544552, 33.450714, 16.695166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856468, 33.201752, 16.722105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236771, -0.392796, -0.888623,
		0.579539, 0.676994, -0.453667,
		0.779791, -0.622407, 0.067348,
		40.090405, 33.015030, 16.742310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858604, 33.457153, 16.079990>,  <39.544552, 33.450714, 16.695166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858604, 33.457153, 16.079990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961525, 33.113216, 16.256384>,  <40.023277, 32.906853, 16.362219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961525, 33.113216, 16.256384>,  <39.858604, 33.457153, 16.079990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961525, 33.113216, 16.256384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215768, -0.495945, -0.841120,
		0.941935, 0.121269, -0.313133,
		0.257298, -0.859844, 0.440982,
		40.038715, 32.855263, 16.388678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445721, 33.074375, 15.696799>,  <39.858604, 33.457153, 16.079990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445721, 33.074375, 15.696799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233330, 32.806965, 15.905080>,  <40.105896, 32.646519, 16.030048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233330, 32.806965, 15.905080>,  <40.445721, 33.074375, 15.696799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233330, 32.806965, 15.905080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109837, -0.554998, -0.824569,
		0.840236, -0.495021, 0.221263,
		-0.530979, -0.668530, 0.520701,
		40.074036, 32.606407, 16.061291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568939, 32.460415, 15.483262>,  <40.445721, 33.074375, 15.696799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568939, 32.460415, 15.483262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201015, 32.346020, 15.590711>,  <39.980259, 32.277382, 15.655180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201015, 32.346020, 15.590711>,  <40.568939, 32.460415, 15.483262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201015, 32.346020, 15.590711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074680, -0.799724, -0.595705,
		0.385187, -0.527876, 0.756953,
		-0.919812, -0.285987, 0.268621,
		39.925072, 32.260223, 15.671297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656620, 31.662397, 15.745857>,  <40.568939, 32.460415, 15.483262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656620, 31.662397, 15.745857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295765, 31.791122, 15.630912>,  <40.079250, 31.868357, 15.561945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295765, 31.791122, 15.630912>,  <40.656620, 31.662397, 15.745857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295765, 31.791122, 15.630912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167916, -0.875435, -0.453230,
		-0.397423, -0.360625, 0.843804,
		-0.902141, 0.321812, -0.287364,
		40.025124, 31.887667, 15.544703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991905, 31.311369, 16.072189>,  <40.656620, 31.662397, 15.745857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991905, 31.311369, 16.072189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937778, 31.454340, 15.702555>,  <39.905304, 31.540123, 15.480774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937778, 31.454340, 15.702555>,  <39.991905, 31.311369, 16.072189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937778, 31.454340, 15.702555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395996, -0.874444, -0.280240,
		-0.908228, 0.328014, 0.259864,
		-0.135314, 0.357427, -0.924087,
		39.897182, 31.561567, 15.425328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985981, 31.631207, 16.714535>,  <39.991905, 31.311369, 16.072189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985981, 31.631207, 16.714535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134174, 31.927359, 16.490185>,  <40.223091, 32.105049, 16.355576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134174, 31.927359, 16.490185>,  <39.985981, 31.631207, 16.714535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134174, 31.927359, 16.490185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186453, 0.532271, 0.825786,
		0.909932, -0.410517, 0.059151,
		0.370484, 0.740381, -0.560873,
		40.245319, 32.149471, 16.321922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722782, 31.881004, 16.918842>,  <39.985981, 31.631207, 16.714535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722782, 31.881004, 16.918842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528984, 32.185181, 16.745871>,  <40.412704, 32.367687, 16.642088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528984, 32.185181, 16.745871>,  <40.722782, 31.881004, 16.918842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528984, 32.185181, 16.745871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362109, 0.624316, 0.692175,
		0.796333, 0.178765, -0.577838,
		-0.484490, 0.760443, -0.432431,
		40.383636, 32.413315, 16.616142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234936, 32.375214, 16.946234>,  <40.722782, 31.881004, 16.918842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234936, 32.375214, 16.946234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891125, 32.563484, 16.866568>,  <40.684837, 32.676449, 16.818768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891125, 32.563484, 16.866568>,  <41.234936, 32.375214, 16.946234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891125, 32.563484, 16.866568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226595, 0.700256, 0.676976,
		0.458107, 0.536751, -0.708545,
		-0.859531, 0.470680, -0.199167,
		40.633266, 32.704689, 16.806818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429596, 33.195786, 16.948595>,  <41.234936, 32.375214, 16.946234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429596, 33.195786, 16.948595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042412, 33.107971, 16.997353>,  <40.810101, 33.055283, 17.026608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042412, 33.107971, 16.997353>,  <41.429596, 33.195786, 16.948595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042412, 33.107971, 16.997353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033559, 0.594173, 0.803637,
		-0.248850, 0.773798, -0.582503,
		-0.967960, -0.219534, 0.121892,
		40.752022, 33.042110, 17.033920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960758, 33.823395, 16.858494>,  <41.429596, 33.195786, 16.948595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960758, 33.823395, 16.858494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794586, 33.567226, 17.116882>,  <40.694881, 33.413525, 17.271915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794586, 33.567226, 17.116882>,  <40.960758, 33.823395, 16.858494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794586, 33.567226, 17.116882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136521, 0.746005, 0.651797,
		-0.899321, 0.182589, -0.397346,
		-0.415433, -0.640420, 0.645970,
		40.669956, 33.375099, 17.310673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420135, 34.203304, 17.182037>,  <40.960758, 33.823395, 16.858494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420135, 34.203304, 17.182037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469418, 33.877724, 17.409122>,  <40.498989, 33.682377, 17.545374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469418, 33.877724, 17.409122>,  <40.420135, 34.203304, 17.182037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469418, 33.877724, 17.409122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226457, 0.533919, 0.814646,
		-0.966197, -0.228934, -0.118542,
		0.123208, -0.813953, 0.567715,
		40.506382, 33.633537, 17.579437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939240, 34.298153, 17.600286>,  <40.420135, 34.203304, 17.182037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939240, 34.298153, 17.600286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163658, 34.036968, 17.803799>,  <40.298309, 33.880257, 17.925907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163658, 34.036968, 17.803799>,  <39.939240, 34.298153, 17.600286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163658, 34.036968, 17.803799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096832, 0.558644, 0.823736,
		-0.822099, -0.511423, 0.250199,
		0.561049, -0.652966, 0.508783,
		40.331974, 33.841080, 17.956434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587280, 34.196442, 18.233597>,  <39.939240, 34.298153, 17.600286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587280, 34.196442, 18.233597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958801, 34.077877, 18.322565>,  <40.181713, 34.006741, 18.375946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958801, 34.077877, 18.322565>,  <39.587280, 34.196442, 18.233597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958801, 34.077877, 18.322565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047789, 0.499381, 0.865063,
		-0.367485, -0.814101, 0.449661,
		0.928801, -0.296409, 0.222420,
		40.237442, 33.988953, 18.389292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604599, 33.962826, 18.901207>,  <39.587280, 34.196442, 18.233597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604599, 33.962826, 18.901207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992477, 34.045738, 18.849483>,  <40.225204, 34.095486, 18.818449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992477, 34.045738, 18.849483>,  <39.604599, 33.962826, 18.901207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992477, 34.045738, 18.849483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005847, 0.548833, 0.835912,
		0.244234, -0.809827, 0.533414,
		0.969699, 0.207277, -0.129309,
		40.283386, 34.107922, 18.810690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991520, 33.840111, 19.550400>,  <39.604599, 33.962826, 18.901207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991520, 33.840111, 19.550400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222122, 34.094101, 19.344704>,  <40.360485, 34.246498, 19.221287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222122, 34.094101, 19.344704>,  <39.991520, 33.840111, 19.550400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222122, 34.094101, 19.344704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023517, 0.641985, 0.766356,
		0.816755, -0.429715, 0.385041,
		0.576505, 0.634980, -0.514239,
		40.395073, 34.284595, 19.190432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524490, 33.930408, 20.038218>,  <39.991520, 33.840111, 19.550400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524490, 33.930408, 20.038218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544083, 34.239136, 19.784637>,  <40.555836, 34.424374, 19.632490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544083, 34.239136, 19.784637>,  <40.524490, 33.930408, 20.038218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544083, 34.239136, 19.784637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088352, 0.628875, 0.772470,
		0.994884, -0.093844, -0.037392,
		0.048977, 0.771822, -0.633950,
		40.558777, 34.470684, 19.594452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044468, 34.309406, 20.358021>,  <40.524490, 33.930408, 20.038218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044468, 34.309406, 20.358021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845989, 34.562790, 20.120529>,  <40.726902, 34.714821, 19.978035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845989, 34.562790, 20.120529>,  <41.044468, 34.309406, 20.358021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845989, 34.562790, 20.120529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021481, 0.692603, 0.720999,
		0.867942, 0.345007, -0.357278,
		-0.496201, 0.633460, -0.593728,
		40.697128, 34.752827, 19.942411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243652, 34.935593, 20.582970>,  <41.044468, 34.309406, 20.358021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243652, 34.935593, 20.582970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895355, 35.008480, 20.400274>,  <40.686378, 35.052212, 20.290657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895355, 35.008480, 20.400274>,  <41.243652, 34.935593, 20.582970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895355, 35.008480, 20.400274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221541, 0.683847, 0.695179,
		0.439013, 0.706506, -0.555083,
		-0.870739, 0.182219, -0.456738,
		40.634132, 35.063145, 20.263252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214157, 35.589859, 20.650200>,  <41.243652, 34.935593, 20.582970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214157, 35.589859, 20.650200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846031, 35.492821, 20.527456>,  <40.625156, 35.434597, 20.453810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846031, 35.492821, 20.527456>,  <41.214157, 35.589859, 20.650200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846031, 35.492821, 20.527456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389389, 0.642963, 0.659527,
		0.037302, 0.726462, -0.686193,
		-0.920318, -0.242595, -0.306860,
		40.569935, 35.420044, 20.435398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860798, 36.242485, 20.515505>,  <41.214157, 35.589859, 20.650200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860798, 36.242485, 20.515505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604824, 35.954803, 20.623749>,  <40.451241, 35.782192, 20.688694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604824, 35.954803, 20.623749>,  <40.860798, 36.242485, 20.515505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604824, 35.954803, 20.623749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450155, 0.636267, 0.626518,
		-0.622776, 0.279112, -0.730922,
		-0.639930, -0.719209, 0.270607,
		40.412846, 35.739040, 20.704931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224049, 36.563713, 20.612322>,  <40.860798, 36.242485, 20.515505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224049, 36.563713, 20.612322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137260, 36.215702, 20.789396>,  <40.085190, 36.006893, 20.895641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137260, 36.215702, 20.789396>,  <40.224049, 36.563713, 20.612322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137260, 36.215702, 20.789396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583218, 0.479188, 0.655923,
		-0.782803, -0.115869, -0.611386,
		-0.216968, -0.870030, 0.442687,
		40.072170, 35.954693, 20.922203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520229, 36.585781, 20.669600>,  <40.224049, 36.563713, 20.612322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520229, 36.585781, 20.669600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621437, 36.315464, 20.946522>,  <39.682163, 36.153275, 21.112675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621437, 36.315464, 20.946522>,  <39.520229, 36.585781, 20.669600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621437, 36.315464, 20.946522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490897, 0.526950, 0.693790,
		-0.833668, -0.515392, -0.198417,
		0.253018, -0.675792, 0.692306,
		39.697342, 36.112728, 21.154213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900459, 36.359287, 21.011127>,  <39.520229, 36.585781, 20.669600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900459, 36.359287, 21.011127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155773, 36.245514, 21.297256>,  <39.308960, 36.177250, 21.468933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155773, 36.245514, 21.297256>,  <38.900459, 36.359287, 21.011127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155773, 36.245514, 21.297256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555994, 0.472339, 0.683935,
		-0.532412, -0.834261, 0.143341,
		0.638286, -0.284438, 0.715322,
		39.347260, 36.160183, 21.511852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556221, 35.940102, 21.543512>,  <38.900459, 36.359287, 21.011127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556221, 35.940102, 21.543512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875374, 36.097424, 21.726240>,  <39.066868, 36.191818, 21.835876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875374, 36.097424, 21.726240>,  <38.556221, 35.940102, 21.543512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875374, 36.097424, 21.726240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571891, 0.254308, 0.779915,
		0.190573, -0.883536, 0.427838,
		0.797886, 0.393307, 0.456822,
		39.114738, 36.215416, 21.863287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430740, 35.753410, 22.221809>,  <38.556221, 35.940102, 21.543512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430740, 35.753410, 22.221809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690178, 36.057705, 22.231703>,  <38.845840, 36.240280, 22.237638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690178, 36.057705, 22.231703>,  <38.430740, 35.753410, 22.221809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690178, 36.057705, 22.231703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522494, 0.421376, 0.741244,
		0.553468, -0.493687, 0.670780,
		0.648593, 0.760734, 0.024731,
		38.884754, 36.285923, 22.239122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562386, 35.748062, 23.018682>,  <38.430740, 35.753410, 22.221809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562386, 35.748062, 23.018682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701820, 36.085800, 22.855923>,  <38.785480, 36.288445, 22.758266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701820, 36.085800, 22.855923>,  <38.562386, 35.748062, 23.018682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701820, 36.085800, 22.855923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303288, 0.512385, 0.803417,
		0.886850, -0.156654, 0.434691,
		0.348587, 0.844347, -0.406897,
		38.806396, 36.339104, 22.733854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979317, 35.961441, 23.500078>,  <38.562386, 35.748062, 23.018682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979317, 35.961441, 23.500078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885681, 36.277351, 23.273291>,  <38.829498, 36.466896, 23.137218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885681, 36.277351, 23.273291>,  <38.979317, 35.961441, 23.500078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885681, 36.277351, 23.273291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276267, 0.505093, 0.817653,
		0.932136, 0.348042, 0.099951,
		-0.234093, 0.789777, -0.566968,
		38.815453, 36.514286, 23.103201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290424, 36.502552, 23.799295>,  <38.979317, 35.961441, 23.500078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290424, 36.502552, 23.799295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991776, 36.666458, 23.589670>,  <38.812584, 36.764801, 23.463894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991776, 36.666458, 23.589670>,  <39.290424, 36.502552, 23.799295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991776, 36.666458, 23.589670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338355, 0.444362, 0.829493,
		0.572771, 0.796641, -0.193126,
		-0.746626, 0.409764, -0.524065,
		38.767788, 36.789387, 23.432451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303722, 37.193672, 23.958904>,  <39.290424, 36.502552, 23.799295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303722, 37.193672, 23.958904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944649, 37.155075, 23.786926>,  <38.729206, 37.131916, 23.683741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944649, 37.155075, 23.786926>,  <39.303722, 37.193672, 23.958904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944649, 37.155075, 23.786926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385821, 0.643438, 0.661158,
		0.212847, 0.759393, -0.614832,
		-0.897685, -0.096489, -0.429943,
		38.675343, 37.126129, 23.657944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005985, 37.883991, 23.871485>,  <39.303722, 37.193672, 23.958904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005985, 37.883991, 23.871485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686989, 37.643192, 23.887550>,  <38.495590, 37.498714, 23.897190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686989, 37.643192, 23.887550>,  <39.005985, 37.883991, 23.871485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686989, 37.643192, 23.887550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395259, 0.571588, 0.719067,
		-0.455832, 0.557573, -0.693779,
		-0.797488, -0.601996, 0.040162,
		38.447742, 37.462593, 23.899599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380642, 38.225285, 23.946114>,  <39.005985, 37.883991, 23.871485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380642, 38.225285, 23.946114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224453, 37.875092, 24.059994>,  <38.130737, 37.664974, 24.128323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224453, 37.875092, 24.059994>,  <38.380642, 38.225285, 23.946114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224453, 37.875092, 24.059994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376322, 0.434025, 0.818538,
		-0.840185, 0.212479, -0.498940,
		-0.390475, -0.875486, 0.284700,
		38.107311, 37.612446, 24.145405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732601, 38.409550, 24.301594>,  <38.380642, 38.225285, 23.946114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732601, 38.409550, 24.301594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763714, 38.021580, 24.393843>,  <37.782383, 37.788795, 24.449192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763714, 38.021580, 24.393843>,  <37.732601, 38.409550, 24.301594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763714, 38.021580, 24.393843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562702, 0.148245, 0.813259,
		-0.822992, -0.193029, -0.534250,
		0.077783, -0.969929, 0.230622,
		37.787048, 37.730602, 24.463030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072220, 38.143440, 24.516472>,  <37.732601, 38.409550, 24.301594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072220, 38.143440, 24.516472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353447, 37.906464, 24.673809>,  <37.522182, 37.764278, 24.768211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353447, 37.906464, 24.673809>,  <37.072220, 38.143440, 24.516472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353447, 37.906464, 24.673809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510165, -0.034861, 0.859370,
		-0.495411, -0.804861, -0.326751,
		0.703064, -0.592438, 0.393341,
		37.564365, 37.728733, 24.791811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643948, 37.643570, 24.922436>,  <37.072220, 38.143440, 24.516472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643948, 37.643570, 24.922436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015408, 37.599571, 25.064150>,  <37.238281, 37.573170, 25.149178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015408, 37.599571, 25.064150>,  <36.643948, 37.643570, 24.922436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015408, 37.599571, 25.064150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365650, -0.110299, 0.924194,
		-0.062585, -0.987792, -0.142650,
		0.928646, -0.110000, 0.354283,
		37.294003, 37.566570, 25.170435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671001, 36.987438, 25.290400>,  <36.643948, 37.643570, 24.922436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671001, 36.987438, 25.290400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946468, 37.251202, 25.411005>,  <37.111748, 37.409462, 25.483368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946468, 37.251202, 25.411005>,  <36.671001, 36.987438, 25.290400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946468, 37.251202, 25.411005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422646, 0.027180, 0.905887,
		0.589158, -0.751290, 0.297416,
		0.688668, 0.659413, 0.301516,
		37.153069, 37.449024, 25.501459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837776, 36.738720, 25.973988>,  <36.671001, 36.987438, 25.290400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837776, 36.738720, 25.973988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968658, 37.115513, 25.944046>,  <37.047188, 37.341591, 25.926081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968658, 37.115513, 25.944046>,  <36.837776, 36.738720, 25.973988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968658, 37.115513, 25.944046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333512, 0.189235, 0.923558,
		0.884143, -0.277227, 0.376081,
		0.327203, 0.941985, -0.074852,
		37.066818, 37.398109, 25.921591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011440, 36.917568, 26.677546>,  <36.837776, 36.738720, 25.973988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011440, 36.917568, 26.677546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985909, 37.270370, 26.490786>,  <36.970589, 37.482052, 26.378731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985909, 37.270370, 26.490786>,  <37.011440, 36.917568, 26.677546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985909, 37.270370, 26.490786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257767, 0.437406, 0.861529,
		0.964097, 0.175340, 0.199433,
		-0.063827, 0.882004, -0.466899,
		36.966759, 37.534973, 26.350716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404255, 37.449482, 27.009914>,  <37.011440, 36.917568, 26.677546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404255, 37.449482, 27.009914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127590, 37.638218, 26.791203>,  <36.961590, 37.751461, 26.659975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127590, 37.638218, 26.791203>,  <37.404255, 37.449482, 27.009914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127590, 37.638218, 26.791203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468793, 0.282600, 0.836881,
		0.549395, 0.835167, 0.025733,
		-0.691663, 0.471842, -0.546779,
		36.920090, 37.779770, 26.627169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365288, 38.173168, 27.275784>,  <37.404255, 37.449482, 27.009914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365288, 38.173168, 27.275784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020805, 38.071922, 27.099487>,  <36.814114, 38.011173, 26.993710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020805, 38.071922, 27.099487>,  <37.365288, 38.173168, 27.275784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020805, 38.071922, 27.099487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504521, 0.320844, 0.801572,
		-0.061480, 0.912684, -0.404016,
		-0.861208, -0.253115, -0.440743,
		36.762444, 37.995987, 26.967264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939636, 38.704029, 27.402063>,  <37.365288, 38.173168, 27.275784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939636, 38.704029, 27.402063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676655, 38.420959, 27.298559>,  <36.518867, 38.251118, 27.236458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676655, 38.420959, 27.298559>,  <36.939636, 38.704029, 27.402063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676655, 38.420959, 27.298559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530071, 0.190314, 0.826321,
		-0.535518, 0.680427, -0.500238,
		-0.657454, -0.707671, -0.258758,
		36.479420, 38.208656, 27.220932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275562, 38.980553, 27.449476>,  <36.939636, 38.704029, 27.402063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275562, 38.980553, 27.449476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196548, 38.588860, 27.467709>,  <36.149139, 38.353844, 27.478649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196548, 38.588860, 27.467709>,  <36.275562, 38.980553, 27.449476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196548, 38.588860, 27.467709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580534, 0.154324, 0.799478,
		-0.789911, 0.131466, -0.598964,
		-0.197539, -0.979235, 0.045582,
		36.137287, 38.295090, 27.481382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583332, 38.963970, 27.723948>,  <36.275562, 38.980553, 27.449476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583332, 38.963970, 27.723948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727566, 38.595318, 27.781326>,  <35.814106, 38.374126, 27.815754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727566, 38.595318, 27.781326>,  <35.583332, 38.963970, 27.723948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727566, 38.595318, 27.781326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565211, -0.093568, 0.819623,
		-0.741967, -0.376621, -0.554655,
		0.360585, -0.921630, 0.143446,
		35.835743, 38.318829, 27.824360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036842, 38.662773, 27.985643>,  <35.583332, 38.963970, 27.723948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036842, 38.662773, 27.985643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346222, 38.429790, 28.085655>,  <35.531849, 38.290001, 28.145662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346222, 38.429790, 28.085655>,  <35.036842, 38.662773, 27.985643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346222, 38.429790, 28.085655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363704, -0.084755, 0.927651,
		-0.519127, -0.808430, -0.277397,
		0.773451, -0.582459, 0.250030,
		35.578259, 38.255054, 28.160664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689934, 38.290970, 28.520641>,  <35.036842, 38.662773, 27.985643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689934, 38.290970, 28.520641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083778, 38.232796, 28.559389>,  <35.320087, 38.197891, 28.582638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083778, 38.232796, 28.559389>,  <34.689934, 38.290970, 28.520641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083778, 38.232796, 28.559389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120270, -0.161863, 0.979457,
		-0.126772, -0.976037, -0.176864,
		0.984613, -0.145439, 0.096869,
		35.379162, 38.189163, 28.588449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757034, 37.784565, 29.064264>,  <34.689934, 38.290970, 28.520641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757034, 37.784565, 29.064264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116158, 37.959202, 29.041204>,  <35.331631, 38.063984, 29.027369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116158, 37.959202, 29.041204>,  <34.757034, 37.784565, 29.064264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116158, 37.959202, 29.041204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077038, -0.026821, 0.996667,
		0.433589, -0.899261, -0.057715,
		0.897812, 0.436590, -0.057647,
		35.385502, 38.090179, 29.023911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178848, 37.405293, 29.486141>,  <34.757034, 37.784565, 29.064264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178848, 37.405293, 29.486141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325390, 37.777306, 29.474613>,  <35.413315, 38.000511, 29.467697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325390, 37.777306, 29.474613>,  <35.178848, 37.405293, 29.486141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325390, 37.777306, 29.474613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150642, -0.028719, 0.988171,
		0.918202, -0.366358, -0.150623,
		0.366350, 0.930031, -0.028819,
		35.435295, 38.056316, 29.465967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795902, 37.372547, 29.981396>,  <35.178848, 37.405293, 29.486141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795902, 37.372547, 29.981396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688915, 37.756237, 29.944864>,  <35.624722, 37.986450, 29.922945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688915, 37.756237, 29.944864>,  <35.795902, 37.372547, 29.981396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688915, 37.756237, 29.944864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000191, 0.094729, 0.995503,
		0.963567, 0.266282, -0.025153,
		-0.267467, 0.959229, -0.091329,
		35.608677, 38.044006, 29.917465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239594, 37.903194, 30.283369>,  <35.795902, 37.372547, 29.981396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239594, 37.903194, 30.283369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863621, 38.038605, 30.300968>,  <35.638039, 38.119850, 30.311527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863621, 38.038605, 30.300968>,  <36.239594, 37.903194, 30.283369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863621, 38.038605, 30.300968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066238, 0.054414, 0.996319,
		0.334887, 0.939382, -0.073569,
		-0.939927, 0.338528, 0.044000,
		35.581642, 38.140163, 30.314169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824295, 38.371784, 30.082138>,  <36.239594, 37.903194, 30.283369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824295, 38.371784, 30.082138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950928, 38.079098, 30.323589>,  <37.026909, 37.903488, 30.468460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950928, 38.079098, 30.323589>,  <36.824295, 38.371784, 30.082138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950928, 38.079098, 30.323589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672445, -0.275702, -0.686881,
		0.669022, 0.623364, 0.404754,
		0.316586, -0.731714, 0.603629,
		37.045902, 37.859585, 30.504679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561218, 38.381859, 30.253252>,  <36.824295, 38.371784, 30.082138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561218, 38.381859, 30.253252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435085, 38.003197, 30.279808>,  <37.359406, 37.776001, 30.295742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435085, 38.003197, 30.279808>,  <37.561218, 38.381859, 30.253252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435085, 38.003197, 30.279808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815777, -0.306149, -0.490694,
		0.484844, -0.100572, 0.868799,
		-0.315332, -0.946656, 0.066390,
		37.340485, 37.719200, 30.299725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189713, 37.998966, 30.297701>,  <37.561218, 38.381859, 30.253252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189713, 37.998966, 30.297701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918564, 37.716053, 30.217449>,  <37.755875, 37.546307, 30.169298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918564, 37.716053, 30.217449>,  <38.189713, 37.998966, 30.297701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918564, 37.716053, 30.217449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694516, -0.526558, -0.490290,
		0.241130, -0.471691, 0.848154,
		-0.677867, -0.707280, -0.200628,
		37.715202, 37.503868, 30.157261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452675, 37.351093, 30.438988>,  <38.189713, 37.998966, 30.297701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452675, 37.351093, 30.438988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167725, 37.253624, 30.175734>,  <37.996754, 37.195145, 30.017782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167725, 37.253624, 30.175734>,  <38.452675, 37.351093, 30.438988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167725, 37.253624, 30.175734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655406, -0.566288, -0.499760,
		-0.250916, -0.787364, 0.563116,
		-0.712379, -0.243671, -0.658134,
		37.954010, 37.180523, 29.978294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632610, 36.715321, 30.258783>,  <38.452675, 37.351093, 30.438988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632610, 36.715321, 30.258783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372097, 36.806480, 29.969261>,  <38.215790, 36.861176, 29.795547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372097, 36.806480, 29.969261>,  <38.632610, 36.715321, 30.258783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372097, 36.806480, 29.969261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603587, -0.422506, -0.676144,
		-0.459905, -0.877240, 0.137613,
		-0.651283, 0.227901, -0.723804,
		38.176712, 36.874851, 29.752121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446594, 36.074917, 29.866734>,  <38.632610, 36.715321, 30.258783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446594, 36.074917, 29.866734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402473, 36.377571, 29.608946>,  <38.376003, 36.559162, 29.454273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402473, 36.377571, 29.608946>,  <38.446594, 36.074917, 29.866734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402473, 36.377571, 29.608946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609750, -0.460547, -0.645059,
		-0.784882, -0.464112, -0.410561,
		-0.110298, 0.756635, -0.644467,
		38.369385, 36.604561, 29.415606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459736, 35.759644, 29.267714>,  <38.446594, 36.074917, 29.866734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459736, 35.759644, 29.267714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502258, 36.144234, 29.166306>,  <38.527771, 36.374989, 29.105461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502258, 36.144234, 29.166306>,  <38.459736, 35.759644, 29.267714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502258, 36.144234, 29.166306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552102, -0.269123, -0.789149,
		-0.826972, -0.056079, -0.559439,
		0.106303, 0.961472, -0.253519,
		38.534149, 36.432674, 29.090250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044800, 35.851128, 28.707106>,  <38.459736, 35.759644, 29.267714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044800, 35.851128, 28.707106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347473, 36.111759, 28.728559>,  <38.529079, 36.268139, 28.741432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347473, 36.111759, 28.728559>,  <38.044800, 35.851128, 28.707106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347473, 36.111759, 28.728559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366528, -0.354858, -0.860078,
		-0.541372, 0.670467, -0.507336,
		0.756686, 0.651575, 0.053635,
		38.574478, 36.307232, 28.744650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135544, 35.980705, 28.065987>,  <38.044800, 35.851128, 28.707106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135544, 35.980705, 28.065987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490128, 36.125927, 28.180799>,  <38.702877, 36.213058, 28.249687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490128, 36.125927, 28.180799>,  <38.135544, 35.980705, 28.065987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490128, 36.125927, 28.180799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371578, -0.188569, -0.909050,
		-0.275909, 0.912487, -0.302061,
		0.886456, 0.363054, 0.287032,
		38.756065, 36.234844, 28.266909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361843, 36.451881, 27.559536>,  <38.135544, 35.980705, 28.065987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361843, 36.451881, 27.559536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694016, 36.373669, 27.768206>,  <38.893318, 36.326740, 27.893408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694016, 36.373669, 27.768206>,  <38.361843, 36.451881, 27.559536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694016, 36.373669, 27.768206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499259, -0.154339, -0.852596,
		0.247221, 0.968477, -0.030550,
		0.830435, -0.195528, 0.521677,
		38.943146, 36.315010, 27.924709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920605, 36.757553, 27.235090>,  <38.361843, 36.451881, 27.559536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920605, 36.757553, 27.235090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118446, 36.471531, 27.432701>,  <39.237152, 36.299919, 27.551268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118446, 36.471531, 27.432701>,  <38.920605, 36.757553, 27.235090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118446, 36.471531, 27.432701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412528, -0.307163, -0.857596,
		0.764977, 0.627969, 0.143058,
		0.494602, -0.715057, 0.494027,
		39.266827, 36.257015, 27.580910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595085, 36.887760, 27.035748>,  <38.920605, 36.757553, 27.235090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595085, 36.887760, 27.035748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584557, 36.520676, 27.194298>,  <39.578239, 36.300426, 27.289429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584557, 36.520676, 27.194298>,  <39.595085, 36.887760, 27.035748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584557, 36.520676, 27.194298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556527, -0.342838, -0.756795,
		0.830412, 0.200671, 0.519756,
		-0.026326, -0.917711, 0.396376,
		39.576660, 36.245361, 27.313211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332726, 36.634392, 26.981073>,  <39.595085, 36.887760, 27.035748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332726, 36.634392, 26.981073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066845, 36.339333, 27.028492>,  <39.907318, 36.162296, 27.056944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066845, 36.339333, 27.028492>,  <40.332726, 36.634392, 26.981073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066845, 36.339333, 27.028492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378616, -0.469374, -0.797708,
		0.644067, -0.485353, 0.591278,
		-0.664701, -0.737645, 0.118546,
		39.867435, 36.118038, 27.064056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669754, 36.031403, 26.891064>,  <40.332726, 36.634392, 26.981073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669754, 36.031403, 26.891064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292057, 35.922173, 26.817484>,  <40.065437, 35.856636, 26.773336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292057, 35.922173, 26.817484>,  <40.669754, 36.031403, 26.891064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292057, 35.922173, 26.817484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297261, -0.466804, -0.832905,
		0.141576, -0.841145, 0.521950,
		-0.944242, -0.273074, -0.183951,
		40.008785, 35.840252, 26.762299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616798, 35.241322, 26.730419>,  <40.669754, 36.031403, 26.891064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616798, 35.241322, 26.730419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291447, 35.412678, 26.572990>,  <40.096237, 35.515491, 26.478533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291447, 35.412678, 26.572990>,  <40.616798, 35.241322, 26.730419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291447, 35.412678, 26.572990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229559, -0.385286, -0.893788,
		-0.534532, -0.817333, 0.215040,
		-0.813375, 0.428394, -0.393574,
		40.047436, 35.541195, 26.454918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428108, 34.743927, 26.336168>,  <40.616798, 35.241322, 26.730419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428108, 34.743927, 26.336168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231834, 35.057640, 26.184309>,  <40.114071, 35.245869, 26.093193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231834, 35.057640, 26.184309>,  <40.428108, 34.743927, 26.336168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231834, 35.057640, 26.184309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099681, -0.382320, -0.918637,
		-0.865617, -0.488605, 0.109421,
		-0.490685, 0.784281, -0.379647,
		40.084629, 35.292923, 26.070415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025120, 34.494606, 25.764814>,  <40.428108, 34.743927, 26.336168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025120, 34.494606, 25.764814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024086, 34.885929, 25.681959>,  <40.023468, 35.120724, 25.632246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024086, 34.885929, 25.681959>,  <40.025120, 34.494606, 25.764814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024086, 34.885929, 25.681959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092189, -0.206022, -0.974195,
		-0.995738, -0.021610, -0.089658,
		-0.002581, 0.978309, -0.207136,
		40.023312, 35.179420, 25.619818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679806, 34.582058, 25.181576>,  <40.025120, 34.494606, 25.764814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679806, 34.582058, 25.181576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909519, 34.909260, 25.194565>,  <40.047348, 35.105583, 25.202358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909519, 34.909260, 25.194565>,  <39.679806, 34.582058, 25.181576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909519, 34.909260, 25.194565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083701, -0.019215, -0.996306,
		-0.814363, 0.574884, -0.079503,
		0.574288, 0.818009, 0.032471,
		40.081806, 35.154663, 25.204306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367958, 35.010761, 24.655117>,  <39.679806, 34.582058, 25.181576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367958, 35.010761, 24.655117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739292, 35.143681, 24.721786>,  <39.962093, 35.223431, 24.761787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739292, 35.143681, 24.721786>,  <39.367958, 35.010761, 24.655117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739292, 35.143681, 24.721786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210773, -0.101161, -0.972287,
		-0.306225, 0.937735, -0.163950,
		0.928333, 0.332294, 0.166672,
		40.017792, 35.243370, 24.771788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559158, 35.499733, 24.124998>,  <39.367958, 35.010761, 24.655117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559158, 35.499733, 24.124998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909668, 35.387539, 24.281704>,  <40.119972, 35.320221, 24.375727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909668, 35.387539, 24.281704>,  <39.559158, 35.499733, 24.124998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909668, 35.387539, 24.281704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368497, -0.133721, -0.919961,
		0.310423, 0.950498, -0.013818,
		0.876269, -0.280485, 0.391765,
		40.172550, 35.303394, 24.399233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049557, 35.859180, 23.727537>,  <39.559158, 35.499733, 24.124998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049557, 35.859180, 23.727537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257530, 35.556351, 23.885784>,  <40.382313, 35.374653, 23.980732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257530, 35.556351, 23.885784>,  <40.049557, 35.859180, 23.727537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257530, 35.556351, 23.885784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442740, -0.157237, -0.882756,
		0.730514, 0.634130, 0.253433,
		0.519932, -0.757071, 0.395619,
		40.413509, 35.329231, 24.004469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512459, 35.791103, 23.158922>,  <40.049557, 35.859180, 23.727537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512459, 35.791103, 23.158922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568195, 35.453007, 23.365284>,  <40.601635, 35.250149, 23.489101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568195, 35.453007, 23.365284>,  <40.512459, 35.791103, 23.158922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568195, 35.453007, 23.365284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414419, -0.423392, -0.805603,
		0.899356, 0.326051, 0.291289,
		0.139338, -0.845239, 0.515902,
		40.609997, 35.199436, 23.520054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140301, 35.569363, 22.966087>,  <40.512459, 35.791103, 23.158922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140301, 35.569363, 22.966087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976620, 35.236557, 23.115913>,  <40.878410, 35.036873, 23.205809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976620, 35.236557, 23.115913>,  <41.140301, 35.569363, 22.966087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976620, 35.236557, 23.115913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444169, -0.540227, -0.714751,
		0.797035, -0.126108, 0.590619,
		-0.409205, -0.832016, 0.374567,
		40.853859, 34.986954, 23.228283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658390, 35.136490, 23.214676>,  <41.140301, 35.569363, 22.966087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658390, 35.136490, 23.214676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342072, 34.917236, 23.105721>,  <41.152283, 34.785683, 23.040348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342072, 34.917236, 23.105721>,  <41.658390, 35.136490, 23.214676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342072, 34.917236, 23.105721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595647, -0.586713, -0.548609,
		0.140898, -0.596083, 0.790464,
		-0.790792, -0.548135, -0.272389,
		41.104836, 34.752796, 23.024004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874107, 34.525604, 23.083248>,  <41.658390, 35.136490, 23.214676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874107, 34.525604, 23.083248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510868, 34.501968, 22.917423>,  <41.292923, 34.487789, 22.817928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510868, 34.501968, 22.917423>,  <41.874107, 34.525604, 23.083248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510868, 34.501968, 22.917423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351194, -0.646655, -0.677127,
		-0.228069, -0.760491, 0.607979,
		-0.908101, -0.059087, -0.414562,
		41.238438, 34.484241, 22.793055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575180, 33.835991, 23.107180>,  <41.874107, 34.525604, 23.083248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575180, 33.835991, 23.107180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401283, 34.027016, 22.801779>,  <41.296944, 34.141632, 22.618538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401283, 34.027016, 22.801779>,  <41.575180, 33.835991, 23.107180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401283, 34.027016, 22.801779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409312, -0.650396, -0.639882,
		-0.802160, -0.590695, 0.087284,
		-0.434744, 0.477561, -0.763500,
		41.270859, 34.170284, 22.572729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438618, 33.303291, 22.654560>,  <41.575180, 33.835991, 23.107180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438618, 33.303291, 22.654560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379360, 33.635490, 22.439774>,  <41.343807, 33.834808, 22.310902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379360, 33.635490, 22.439774>,  <41.438618, 33.303291, 22.654560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379360, 33.635490, 22.439774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539635, -0.387124, -0.747616,
		-0.828764, -0.400517, -0.390816,
		-0.148139, 0.830495, -0.536967,
		41.334919, 33.884640, 22.278683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062420, 33.068390, 22.174908>,  <41.438618, 33.303291, 22.654560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062420, 33.068390, 22.174908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241062, 33.396351, 22.031630>,  <41.348248, 33.593128, 21.945663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241062, 33.396351, 22.031630>,  <41.062420, 33.068390, 22.174908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241062, 33.396351, 22.031630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538168, -0.565985, -0.624529,
		-0.714785, 0.086150, -0.694018,
		0.446607, 0.819902, -0.358194,
		41.375046, 33.642323, 21.924171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852570, 33.161823, 21.479849>,  <41.062420, 33.068390, 22.174908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852570, 33.161823, 21.479849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190449, 33.374744, 21.502247>,  <41.393177, 33.502499, 21.515686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190449, 33.374744, 21.502247>,  <40.852570, 33.161823, 21.479849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190449, 33.374744, 21.502247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382538, -0.527218, -0.758753,
		-0.374367, 0.662337, -0.648968,
		0.844698, 0.532307, 0.055996,
		41.443859, 33.534435, 21.519045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033676, 33.391117, 20.819473>,  <40.852570, 33.161823, 21.479849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033676, 33.391117, 20.819473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386387, 33.464794, 20.993162>,  <41.598011, 33.508999, 21.097376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386387, 33.464794, 20.993162>,  <41.033676, 33.391117, 20.819473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386387, 33.464794, 20.993162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471008, -0.294957, -0.831355,
		-0.025053, 0.937589, -0.346841,
		0.881773, 0.184193, 0.434222,
		41.650917, 33.520054, 21.123428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373920, 33.574669, 20.252518>,  <41.033676, 33.391117, 20.819473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373920, 33.574669, 20.252518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655586, 33.496822, 20.525658>,  <41.824585, 33.450115, 20.689541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655586, 33.496822, 20.525658>,  <41.373920, 33.574669, 20.252518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655586, 33.496822, 20.525658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602861, -0.344207, -0.719778,
		0.375123, 0.918502, -0.125049,
		0.704160, -0.194618, 0.682849,
		41.866833, 33.438438, 20.730513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041729, 33.835503, 19.995438>,  <41.373920, 33.574669, 20.252518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041729, 33.835503, 19.995438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120552, 33.538437, 20.251444>,  <42.167847, 33.360199, 20.405048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120552, 33.538437, 20.251444>,  <42.041729, 33.835503, 19.995438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120552, 33.538437, 20.251444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499937, -0.485440, -0.717225,
		0.843346, 0.461301, 0.275625,
		0.197057, -0.742664, 0.640015,
		42.179668, 33.315639, 20.443449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753094, 33.659088, 19.882860>,  <42.041729, 33.835503, 19.995438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753094, 33.659088, 19.882860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599754, 33.342598, 20.073441>,  <42.507751, 33.152702, 20.187788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599754, 33.342598, 20.073441>,  <42.753094, 33.659088, 19.882860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599754, 33.342598, 20.073441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505876, -0.611472, -0.608433,
		0.772746, 0.007786, 0.634667,
		-0.383344, -0.791228, 0.476452,
		42.484753, 33.105228, 20.216375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261425, 33.193188, 19.980936>,  <42.753094, 33.659088, 19.882860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261425, 33.193188, 19.980936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938709, 32.957996, 20.004171>,  <42.745079, 32.816879, 20.018112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938709, 32.957996, 20.004171>,  <43.261425, 33.193188, 19.980936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938709, 32.957996, 20.004171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482769, -0.712695, -0.508920,
		0.340634, -0.382547, 0.858852,
		-0.806785, -0.587982, 0.058086,
		42.696674, 32.781601, 20.021597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488251, 32.464443, 19.895742>,  <43.261425, 33.193188, 19.980936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.488251, 32.464443, 19.895742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098667, 32.439365, 19.808592>,  <42.864918, 32.424316, 19.756302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098667, 32.439365, 19.808592>,  <43.488251, 32.464443, 19.895742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098667, 32.439365, 19.808592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193975, -0.727923, -0.657649,
		-0.117363, -0.682787, 0.721130,
		-0.973961, -0.062698, -0.217875,
		42.806480, 32.420555, 19.743229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355167, 31.726261, 19.794605>,  <43.488251, 32.464443, 19.895742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355167, 31.726261, 19.794605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060986, 31.924850, 19.610161>,  <42.884476, 32.044003, 19.499495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060986, 31.924850, 19.610161>,  <43.355167, 31.726261, 19.794605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060986, 31.924850, 19.610161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136385, -0.558137, -0.818464,
		-0.663706, -0.664831, 0.342773,
		-0.735454, 0.496470, -0.461112,
		42.840351, 32.073792, 19.471827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267792, 31.058508, 19.858305>,  <43.355167, 31.726261, 19.794605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267792, 31.058508, 19.858305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156391, 31.268728, 19.536751>,  <43.089550, 31.394861, 19.343819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156391, 31.268728, 19.536751>,  <43.267792, 31.058508, 19.858305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156391, 31.268728, 19.536751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920477, -0.092857, -0.379605,
		-0.274149, -0.845679, -0.457898,
		-0.278504, 0.525552, -0.803884,
		43.072842, 31.426394, 19.295586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576908, 31.151199, 19.573076>,  <43.267792, 31.058508, 19.858305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576908, 31.151199, 19.573076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799583, 30.818914, 19.571781>,  <42.933189, 30.619543, 19.571003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799583, 30.818914, 19.571781>,  <42.576908, 31.151199, 19.573076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799583, 30.818914, 19.571781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108512, -0.076582, 0.991141,
		-0.823602, -0.551408, -0.132775,
		0.556691, -0.830713, -0.003239,
		42.966591, 30.569700, 19.570810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257462, 30.759100, 20.017683>,  <42.576908, 31.151199, 19.573076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257462, 30.759100, 20.017683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611206, 30.574780, 19.987812>,  <42.823452, 30.464188, 19.969889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611206, 30.574780, 19.987812>,  <42.257462, 30.759100, 20.017683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611206, 30.574780, 19.987812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003698, -0.166886, 0.985969,
		-0.466797, -0.871672, -0.149291,
		0.884357, -0.460800, -0.074678,
		42.876514, 30.436541, 19.965408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203476, 30.119537, 20.307104>,  <42.257462, 30.759100, 20.017683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203476, 30.119537, 20.307104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592583, 30.202631, 20.348242>,  <42.826046, 30.252487, 20.372925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592583, 30.202631, 20.348242>,  <42.203476, 30.119537, 20.307104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592583, 30.202631, 20.348242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113433, 0.039688, 0.992753,
		0.202150, -0.977379, 0.062171,
		0.972763, 0.207738, 0.102844,
		42.884411, 30.264952, 20.379095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451077, 29.726072, 20.822680>,  <42.203476, 30.119537, 20.307104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451077, 29.726072, 20.822680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744011, 29.997139, 20.795977>,  <42.919769, 30.159779, 20.779955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744011, 29.997139, 20.795977>,  <42.451077, 29.726072, 20.822680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744011, 29.997139, 20.795977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128043, 0.233333, 0.963930,
		0.668800, -0.697370, 0.257648,
		0.732333, 0.677666, -0.066759,
		42.963711, 30.200439, 20.775949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833580, 29.530817, 21.381672>,  <42.451077, 29.726072, 20.822680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833580, 29.530817, 21.381672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928135, 29.903641, 21.271841>,  <42.984867, 30.127335, 21.205942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928135, 29.903641, 21.271841>,  <42.833580, 29.530817, 21.381672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928135, 29.903641, 21.271841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035722, 0.290730, 0.956138,
		0.971003, -0.216208, 0.102018,
		0.236384, 0.932057, -0.274576,
		42.999050, 30.183258, 21.189468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.422745, 29.733582, 21.796658>,  <42.833580, 29.530817, 21.381672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.422745, 29.733582, 21.796658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282734, 30.097664, 21.708103>,  <43.198727, 30.316113, 21.654970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282734, 30.097664, 21.708103>,  <43.422745, 29.733582, 21.796658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282734, 30.097664, 21.708103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159906, 0.174809, 0.971531,
		0.922991, 0.375461, 0.084360,
		-0.350025, 0.910204, -0.221385,
		43.177727, 30.370726, 21.641687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505005, 30.076523, 22.409744>,  <43.422745, 29.733582, 21.796658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505005, 30.076523, 22.409744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213348, 30.278257, 22.224703>,  <43.038357, 30.399298, 22.113678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213348, 30.278257, 22.224703>,  <43.505005, 30.076523, 22.409744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213348, 30.278257, 22.224703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384665, 0.257055, 0.886541,
		0.566030, 0.824358, 0.006572,
		-0.729138, 0.504337, -0.462602,
		42.994606, 30.429558, 22.085922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539501, 30.777496, 22.712481>,  <43.505005, 30.076523, 22.409744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.539501, 30.777496, 22.712481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177650, 30.764688, 22.542484>,  <42.960541, 30.757004, 22.440487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177650, 30.764688, 22.542484>,  <43.539501, 30.777496, 22.712481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.177650, 30.764688, 22.542484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401185, 0.400542, 0.823782,
		0.143850, 0.915719, -0.375188,
		-0.904631, -0.032018, -0.424990,
		42.906261, 30.755083, 22.414988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244251, 31.418858, 22.829477>,  <43.539501, 30.777496, 22.712481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244251, 31.418858, 22.829477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936348, 31.171728, 22.765265>,  <42.751606, 31.023451, 22.726736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936348, 31.171728, 22.765265>,  <43.244251, 31.418858, 22.829477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936348, 31.171728, 22.765265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491518, 0.413196, 0.766602,
		-0.407294, 0.669000, -0.621732,
		-0.769754, -0.617825, -0.160534,
		42.705421, 30.986380, 22.717104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639606, 31.871029, 23.015965>,  <43.244251, 31.418858, 22.829477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639606, 31.871029, 23.015965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505970, 31.494028, 23.012632>,  <42.425789, 31.267828, 23.010633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505970, 31.494028, 23.012632>,  <42.639606, 31.871029, 23.015965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505970, 31.494028, 23.012632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521232, 0.177385, 0.834777,
		-0.785302, 0.283236, -0.550526,
		-0.334094, -0.942503, -0.008331,
		42.405743, 31.211277, 23.010134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888695, 31.851919, 22.989164>,  <42.639606, 31.871029, 23.015965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888695, 31.851919, 22.989164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008240, 31.507521, 23.153784>,  <42.079967, 31.300882, 23.252556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008240, 31.507521, 23.153784>,  <41.888695, 31.851919, 22.989164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008240, 31.507521, 23.153784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437291, 0.259756, 0.860990,
		-0.848210, -0.437279, -0.298875,
		0.298858, -0.860995, 0.411546,
		42.097897, 31.249222, 23.277248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346500, 31.761919, 23.338270>,  <41.888695, 31.851919, 22.989164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346500, 31.761919, 23.338270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610744, 31.519819, 23.515926>,  <41.769291, 31.374559, 23.622520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610744, 31.519819, 23.515926>,  <41.346500, 31.761919, 23.338270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610744, 31.519819, 23.515926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457021, 0.145121, 0.877537,
		-0.595584, -0.782695, -0.180743,
		0.660614, -0.605251, 0.444140,
		41.808929, 31.338243, 23.649168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969067, 31.346022, 23.806454>,  <41.346500, 31.761919, 23.338270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969067, 31.346022, 23.806454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351349, 31.371145, 23.921474>,  <41.580719, 31.386219, 23.990486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351349, 31.371145, 23.921474>,  <40.969067, 31.346022, 23.806454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351349, 31.371145, 23.921474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293857, 0.148095, 0.944307,
		0.016725, -0.986977, 0.159991,
		0.955703, 0.062808, 0.287553,
		41.638062, 31.389988, 24.007740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941189, 30.949986, 24.410801>,  <40.969067, 31.346022, 23.806454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941189, 30.949986, 24.410801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277630, 31.164509, 24.438877>,  <41.479492, 31.293222, 24.455723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277630, 31.164509, 24.438877>,  <40.941189, 30.949986, 24.410801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277630, 31.164509, 24.438877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168831, 0.137036, 0.976072,
		0.513858, -0.832823, 0.205806,
		0.841098, 0.536309, 0.070190,
		41.529961, 31.325401, 24.459934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129772, 30.785587, 25.035637>,  <40.941189, 30.949986, 24.410801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129772, 30.785587, 25.035637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330688, 31.121880, 24.954762>,  <41.451237, 31.323654, 24.906237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330688, 31.121880, 24.954762>,  <41.129772, 30.785587, 25.035637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330688, 31.121880, 24.954762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033787, 0.252729, 0.966947,
		0.864041, -0.478853, 0.155348,
		0.502286, 0.840731, -0.202189,
		41.481373, 31.374100, 24.894104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571533, 30.880331, 25.646385>,  <41.129772, 30.785587, 25.035637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571533, 30.880331, 25.646385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563457, 31.233133, 25.458063>,  <41.558613, 31.444815, 25.345070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563457, 31.233133, 25.458063>,  <41.571533, 30.880331, 25.646385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563457, 31.233133, 25.458063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320370, 0.440362, 0.838716,
		0.947077, 0.167768, 0.273676,
		-0.020193, 0.882006, -0.470805,
		41.557400, 31.497736, 25.316822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974289, 31.475780, 26.089832>,  <41.571533, 30.880331, 25.646385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974289, 31.475780, 26.089832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709843, 31.660810, 25.853544>,  <41.551174, 31.771828, 25.711771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709843, 31.660810, 25.853544>,  <41.974289, 31.475780, 26.089832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709843, 31.660810, 25.853544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206089, 0.645083, 0.735796,
		0.721423, 0.608188, -0.331144,
		-0.661117, 0.462575, -0.590719,
		41.511509, 31.799583, 25.676329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121010, 32.200241, 26.165943>,  <41.974289, 31.475780, 26.089832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121010, 32.200241, 26.165943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744293, 32.163063, 26.036709>,  <41.518261, 32.140755, 25.959167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744293, 32.163063, 26.036709>,  <42.121010, 32.200241, 26.165943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744293, 32.163063, 26.036709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323754, 0.509697, 0.797115,
		0.090587, 0.855319, -0.510121,
		-0.941795, -0.092945, -0.323085,
		41.461754, 32.135178, 25.939783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924511, 32.885857, 26.113834>,  <42.121010, 32.200241, 26.165943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924511, 32.885857, 26.113834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573322, 32.695492, 26.134516>,  <41.362610, 32.581272, 26.146925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573322, 32.695492, 26.134516>,  <41.924511, 32.885857, 26.113834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573322, 32.695492, 26.134516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286341, 0.608633, 0.739983,
		-0.383639, 0.634877, -0.670635,
		-0.877969, -0.475917, 0.051704,
		41.309933, 32.552715, 26.150026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496166, 33.485950, 26.283825>,  <41.924511, 32.885857, 26.113834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496166, 33.485950, 26.283825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273537, 33.158878, 26.342630>,  <41.139957, 32.962635, 26.377914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273537, 33.158878, 26.342630>,  <41.496166, 33.485950, 26.283825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273537, 33.158878, 26.342630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476531, 0.459159, 0.749728,
		-0.680543, 0.347226, -0.645209,
		-0.556578, -0.817685, 0.147014,
		41.106564, 32.913574, 26.386734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777012, 33.720562, 26.211168>,  <41.496166, 33.485950, 26.283825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777012, 33.720562, 26.211168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766125, 33.387474, 26.432381>,  <40.759594, 33.187622, 26.565107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766125, 33.387474, 26.432381>,  <40.777012, 33.720562, 26.211168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766125, 33.387474, 26.432381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581724, 0.463103, 0.668680,
		-0.812931, -0.303510, -0.497016,
		-0.027218, -0.832717, 0.553030,
		40.757957, 33.137657, 26.598289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110756, 33.621635, 26.509315>,  <40.777012, 33.720562, 26.211168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110756, 33.621635, 26.509315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322174, 33.370743, 26.738131>,  <40.449024, 33.220207, 26.875420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322174, 33.370743, 26.738131>,  <40.110756, 33.621635, 26.509315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322174, 33.370743, 26.738131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505300, 0.309023, 0.805715,
		-0.682140, -0.714906, -0.153607,
		0.528542, -0.627228, 0.572039,
		40.480736, 33.182575, 26.909742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624966, 33.308220, 26.978973>,  <40.110756, 33.621635, 26.509315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624966, 33.308220, 26.978973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961926, 33.280334, 27.192703>,  <40.164101, 33.263603, 27.320942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961926, 33.280334, 27.192703>,  <39.624966, 33.308220, 26.978973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961926, 33.280334, 27.192703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478859, 0.357858, 0.801643,
		-0.247100, -0.931170, 0.268075,
		0.842399, -0.069715, 0.534326,
		40.214645, 33.259418, 27.353001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442596, 32.978756, 27.596817>,  <39.624966, 33.308220, 26.978973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442596, 32.978756, 27.596817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792278, 33.162552, 27.659590>,  <40.002087, 33.272831, 27.697252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792278, 33.162552, 27.659590>,  <39.442596, 32.978756, 27.596817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792278, 33.162552, 27.659590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323138, 0.309332, 0.894368,
		0.362417, -0.832571, 0.418902,
		0.874206, 0.459498, 0.156928,
		40.054539, 33.300400, 27.706669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597935, 32.839306, 28.282749>,  <39.442596, 32.978756, 27.596817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597935, 32.839306, 28.282749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846745, 33.146755, 28.223013>,  <39.996029, 33.331226, 28.187172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846745, 33.146755, 28.223013>,  <39.597935, 32.839306, 28.282749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846745, 33.146755, 28.223013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266205, 0.386960, 0.882834,
		0.736358, -0.509388, 0.445310,
		0.622022, 0.768626, -0.149339,
		40.033352, 33.377342, 28.178211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048363, 32.875816, 28.832251>,  <39.597935, 32.839306, 28.282749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048363, 32.875816, 28.832251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021603, 33.234436, 28.657108>,  <40.005547, 33.449608, 28.552023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021603, 33.234436, 28.657108>,  <40.048363, 32.875816, 28.832251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021603, 33.234436, 28.657108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119535, 0.428477, 0.895611,
		0.990573, 0.112260, 0.078502,
		-0.066905, 0.896552, -0.437857,
		40.001530, 33.503403, 28.525751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588924, 33.249672, 28.998711>,  <40.048363, 32.875816, 28.832251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588924, 33.249672, 28.998711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302258, 33.512402, 28.904921>,  <40.130257, 33.670040, 28.848646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302258, 33.512402, 28.904921>,  <40.588924, 33.249672, 28.998711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302258, 33.512402, 28.904921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048629, 0.382446, 0.922697,
		0.695722, 0.649861, -0.306025,
		-0.716663, 0.656823, -0.234474,
		40.087257, 33.709450, 28.834578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764404, 33.843964, 29.477844>,  <40.588924, 33.249672, 28.998711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764404, 33.843964, 29.477844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402271, 33.924442, 29.328234>,  <40.184994, 33.972729, 29.238466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402271, 33.924442, 29.328234>,  <40.764404, 33.843964, 29.477844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402271, 33.924442, 29.328234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223305, 0.523615, 0.822169,
		0.361265, 0.827857, -0.429116,
		-0.905330, 0.201197, -0.374028,
		40.130672, 33.984802, 29.216024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760376, 34.639080, 29.513163>,  <40.764404, 33.843964, 29.477844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760376, 34.639080, 29.513163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393539, 34.479607, 29.513571>,  <40.173439, 34.383923, 29.513815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393539, 34.479607, 29.513571>,  <40.760376, 34.639080, 29.513163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393539, 34.479607, 29.513571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204164, 0.471839, 0.857721,
		-0.342438, 0.786398, -0.514115,
		-0.917090, -0.398680, 0.001021,
		40.118412, 34.360004, 29.513878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382992, 35.221256, 29.737080>,  <40.760376, 34.639080, 29.513163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382992, 35.221256, 29.737080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156178, 34.894569, 29.779879>,  <40.020088, 34.698559, 29.805559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156178, 34.894569, 29.779879>,  <40.382992, 35.221256, 29.737080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156178, 34.894569, 29.779879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361375, 0.363398, 0.858691,
		-0.740188, 0.448241, -0.501200,
		-0.567036, -0.816714, 0.107000,
		39.986069, 34.649555, 29.811979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823742, 35.419964, 30.135855>,  <40.382992, 35.221256, 29.737080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823742, 35.419964, 30.135855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795067, 35.024940, 30.191830>,  <39.777863, 34.787926, 30.225414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795067, 35.024940, 30.191830>,  <39.823742, 35.419964, 30.135855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795067, 35.024940, 30.191830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251005, 0.153646, 0.955714,
		-0.965328, 0.033387, -0.258897,
		-0.071687, -0.987562, 0.139938,
		39.773560, 34.728672, 30.233810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089607, 35.178837, 30.382463>,  <39.823742, 35.419964, 30.135855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089607, 35.178837, 30.382463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365837, 34.906750, 30.480780>,  <39.531574, 34.743496, 30.539770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365837, 34.906750, 30.480780>,  <39.089607, 35.178837, 30.382463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365837, 34.906750, 30.480780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375975, -0.047304, 0.925421,
		-0.617861, -0.731482, -0.288412,
		0.690572, -0.680218, 0.245792,
		39.573009, 34.702686, 30.554518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743702, 34.862614, 30.954340>,  <39.089607, 35.178837, 30.382463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743702, 34.862614, 30.954340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116493, 34.723976, 30.996836>,  <39.340168, 34.640793, 31.022333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116493, 34.723976, 30.996836>,  <38.743702, 34.862614, 30.954340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116493, 34.723976, 30.996836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166303, -0.148368, 0.974849,
		-0.322111, -0.926208, -0.195915,
		0.931981, -0.346591, 0.106241,
		39.396088, 34.619999, 31.028708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733479, 34.236923, 31.289530>,  <38.743702, 34.862614, 30.954340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733479, 34.236923, 31.289530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107971, 34.360596, 31.356321>,  <39.332664, 34.434799, 31.396397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107971, 34.360596, 31.356321>,  <38.733479, 34.236923, 31.289530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107971, 34.360596, 31.356321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177723, 0.006708, 0.984058,
		0.303132, -0.950979, 0.061229,
		0.936229, 0.309181, 0.166977,
		39.388840, 34.453350, 31.406414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073978, 33.721146, 31.737871>,  <38.733479, 34.236923, 31.289530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073978, 33.721146, 31.737871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272640, 34.067547, 31.761116>,  <39.391838, 34.275387, 31.775063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272640, 34.067547, 31.761116>,  <39.073978, 33.721146, 31.737871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272640, 34.067547, 31.761116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110396, -0.003381, 0.993882,
		0.860899, -0.500031, 0.093924,
		0.496655, 0.866000, 0.058112,
		39.421638, 34.327347, 31.778549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408260, 33.634468, 32.337738>,  <39.073978, 33.721146, 31.737871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408260, 33.634468, 32.337738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425343, 34.030140, 32.281605>,  <39.435593, 34.267544, 32.247925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425343, 34.030140, 32.281605>,  <39.408260, 33.634468, 32.337738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425343, 34.030140, 32.281605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073317, 0.143184, 0.986977,
		0.996394, -0.031860, 0.078638,
		0.042705, 0.989183, -0.140332,
		39.438152, 34.326897, 32.239506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840004, 33.900158, 32.883389>,  <39.408260, 33.634468, 32.337738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840004, 33.900158, 32.883389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643421, 34.227272, 32.763588>,  <39.525471, 34.423538, 32.691708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643421, 34.227272, 32.763588>,  <39.840004, 33.900158, 32.883389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643421, 34.227272, 32.763588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070792, 0.305246, 0.949638,
		0.868018, 0.487912, -0.092125,
		-0.491461, 0.817782, -0.299499,
		39.495983, 34.472607, 32.673737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085735, 34.398788, 33.318935>,  <39.840004, 33.900158, 32.883389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085735, 34.398788, 33.318935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737965, 34.536041, 33.176750>,  <39.529301, 34.618393, 33.091438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737965, 34.536041, 33.176750>,  <40.085735, 34.398788, 33.318935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737965, 34.536041, 33.176750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289280, 0.229684, 0.929280,
		0.400513, 0.910771, -0.100431,
		-0.869429, 0.343136, -0.355460,
		39.477135, 34.638981, 33.070114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919659, 35.080517, 33.716866>,  <40.085735, 34.398788, 33.318935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919659, 35.080517, 33.716866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566219, 35.004021, 33.545902>,  <39.354156, 34.958122, 33.443325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566219, 35.004021, 33.545902>,  <39.919659, 35.080517, 33.716866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566219, 35.004021, 33.545902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467950, 0.328553, 0.820412,
		-0.016468, 0.924922, -0.379800,
		-0.883601, -0.191239, -0.427407,
		39.301140, 34.946648, 33.417679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519817, 35.686111, 33.806473>,  <39.919659, 35.080517, 33.716866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519817, 35.686111, 33.806473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291080, 35.362625, 33.751366>,  <39.153839, 35.168533, 33.718304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291080, 35.362625, 33.751366>,  <39.519817, 35.686111, 33.806473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291080, 35.362625, 33.751366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590067, 0.288804, 0.753932,
		-0.569929, 0.512418, -0.642346,
		-0.571840, -0.808715, -0.137764,
		39.119530, 35.120010, 33.710037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835640, 35.878849, 33.719452>,  <39.519817, 35.686111, 33.806473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835640, 35.878849, 33.719452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781590, 35.496368, 33.823315>,  <38.749161, 35.266880, 33.885632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781590, 35.496368, 33.823315>,  <38.835640, 35.878849, 33.719452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781590, 35.496368, 33.823315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539221, 0.290823, 0.790356,
		-0.831253, -0.033215, -0.554901,
		-0.135126, -0.956200, 0.259658,
		38.741051, 35.209507, 33.901211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118980, 35.850651, 33.969913>,  <38.835640, 35.878849, 33.719452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118980, 35.850651, 33.969913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297367, 35.528709, 34.126541>,  <38.404400, 35.335545, 34.220516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297367, 35.528709, 34.126541>,  <38.118980, 35.850651, 33.969913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297367, 35.528709, 34.126541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493296, 0.144020, 0.857857,
		-0.746845, -0.575729, -0.332805,
		0.445962, -0.804857, 0.391565,
		38.431156, 35.287251, 34.244011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659233, 35.601528, 34.385944>,  <38.118980, 35.850651, 33.969913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659233, 35.601528, 34.385944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988621, 35.436405, 34.541630>,  <38.186253, 35.337334, 34.635040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988621, 35.436405, 34.541630>,  <37.659233, 35.601528, 34.385944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988621, 35.436405, 34.541630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341578, 0.187025, 0.921057,
		-0.453008, -0.891412, 0.013005,
		0.823474, -0.412804, 0.389210,
		38.235664, 35.312565, 34.658394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481544, 35.241047, 34.906261>,  <37.659233, 35.601528, 34.385944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481544, 35.241047, 34.906261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861881, 35.323650, 34.998562>,  <38.090084, 35.373211, 35.053944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861881, 35.323650, 34.998562>,  <37.481544, 35.241047, 34.906261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861881, 35.323650, 34.998562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287496, 0.311825, 0.905600,
		0.115059, -0.927427, 0.355867,
		0.950846, 0.206508, 0.230753,
		38.147137, 35.385601, 35.067787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560066, 34.997021, 35.646645>,  <37.481544, 35.241047, 34.906261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560066, 34.997021, 35.646645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847588, 35.266968, 35.579853>,  <38.020100, 35.428936, 35.539780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847588, 35.266968, 35.579853>,  <37.560066, 34.997021, 35.646645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847588, 35.266968, 35.579853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250977, 0.475875, 0.842943,
		0.648334, -0.564001, 0.511435,
		0.718800, 0.674867, -0.166975,
		38.063229, 35.469429, 35.529762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914555, 35.008686, 36.250450>,  <37.560066, 34.997021, 35.646645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914555, 35.008686, 36.250450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961365, 35.350945, 36.048790>,  <37.989452, 35.556301, 35.927792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961365, 35.350945, 36.048790>,  <37.914555, 35.008686, 36.250450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961365, 35.350945, 36.048790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182320, 0.517523, 0.836020,
		0.976250, -0.005920, 0.216566,
		0.117028, 0.855649, -0.504153,
		37.996471, 35.607639, 35.897545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255360, 35.277302, 36.879627>,  <37.914555, 35.008686, 36.250450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255360, 35.277302, 36.879627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173233, 35.597382, 36.654232>,  <38.123955, 35.789429, 36.518993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173233, 35.597382, 36.654232>,  <38.255360, 35.277302, 36.879627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173233, 35.597382, 36.654232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117077, 0.551541, 0.825891,
		0.971667, 0.235543, -0.019556,
		-0.205319, 0.800202, -0.563491,
		38.111637, 35.837440, 36.485184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610397, 35.880947, 37.223175>,  <38.255360, 35.277302, 36.879627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610397, 35.880947, 37.223175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352139, 36.072853, 36.985535>,  <38.197182, 36.187996, 36.842949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352139, 36.072853, 36.985535>,  <38.610397, 35.880947, 37.223175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352139, 36.072853, 36.985535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139881, 0.690530, 0.709648,
		0.750712, 0.541289, -0.378732,
		-0.645651, 0.479764, -0.594105,
		38.158443, 36.216782, 36.807304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776623, 36.631660, 37.144554>,  <38.610397, 35.880947, 37.223175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776623, 36.631660, 37.144554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388306, 36.569534, 37.071400>,  <38.155315, 36.532257, 37.027508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388306, 36.569534, 37.071400>,  <38.776623, 36.631660, 37.144554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388306, 36.569534, 37.071400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236354, 0.750271, 0.617438,
		0.041317, 0.642627, -0.765064,
		-0.970788, -0.155316, -0.182886,
		38.097069, 36.522938, 37.016533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368931, 37.212929, 37.283913>,  <38.776623, 36.631660, 37.144554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368931, 37.212929, 37.283913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022732, 37.016262, 37.245605>,  <37.815010, 36.898262, 37.222622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022732, 37.016262, 37.245605>,  <38.368931, 37.212929, 37.283913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022732, 37.016262, 37.245605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457257, 0.697452, 0.551794,
		-0.204506, 0.521369, -0.828464,
		-0.865502, -0.491666, -0.095767,
		37.763081, 36.868763, 37.216877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862034, 37.689476, 37.118011>,  <38.368931, 37.212929, 37.283913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862034, 37.689476, 37.118011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709846, 37.362835, 37.291634>,  <37.618534, 37.166851, 37.395805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709846, 37.362835, 37.291634>,  <37.862034, 37.689476, 37.118011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709846, 37.362835, 37.291634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426728, 0.571418, 0.700988,
		-0.820457, 0.081479, -0.565873,
		-0.380466, -0.816605, 0.434054,
		37.595707, 37.117855, 37.421848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238682, 37.917343, 37.272568>,  <37.862034, 37.689476, 37.118011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238682, 37.917343, 37.272568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293171, 37.600136, 37.510078>,  <37.325863, 37.409813, 37.652584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293171, 37.600136, 37.510078>,  <37.238682, 37.917343, 37.272568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293171, 37.600136, 37.510078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477265, 0.472692, 0.740797,
		-0.868137, -0.384299, -0.314089,
		0.136220, -0.793017, 0.593774,
		37.334038, 37.362232, 37.688210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746208, 38.011608, 37.784595>,  <37.238682, 37.917343, 37.272568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746208, 38.011608, 37.784595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960953, 37.718494, 37.951836>,  <37.089798, 37.542625, 38.052177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960953, 37.718494, 37.951836>,  <36.746208, 38.011608, 37.784595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960953, 37.718494, 37.951836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326771, 0.276280, 0.903820,
		-0.777820, -0.621846, -0.091131,
		0.536859, -0.732787, 0.418097,
		37.122009, 37.498657, 38.077263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277199, 37.815384, 38.224495>,  <36.746208, 38.011608, 37.784595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277199, 37.815384, 38.224495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633728, 37.679501, 38.344593>,  <36.847645, 37.597973, 38.416653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633728, 37.679501, 38.344593>,  <36.277199, 37.815384, 38.224495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633728, 37.679501, 38.344593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327354, -0.024029, 0.944596,
		-0.313672, -0.940224, -0.132622,
		0.891319, -0.339707, 0.300249,
		36.901123, 37.577587, 38.434669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221600, 37.097260, 38.576431>,  <36.277199, 37.815384, 38.224495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221600, 37.097260, 38.576431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509106, 37.328823, 38.730442>,  <36.681610, 37.467762, 38.822849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509106, 37.328823, 38.730442>,  <36.221600, 37.097260, 38.576431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509106, 37.328823, 38.730442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425665, -0.071456, 0.902055,
		0.549720, -0.812255, 0.195061,
		0.718761, 0.578909, 0.385029,
		36.724735, 37.502495, 38.845951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342808, 36.897484, 39.206226>,  <36.221600, 37.097260, 38.576431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342808, 36.897484, 39.206226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497089, 37.266228, 39.221275>,  <36.589657, 37.487473, 39.230305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497089, 37.266228, 39.221275>,  <36.342808, 36.897484, 39.206226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497089, 37.266228, 39.221275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301847, 0.087551, 0.949328,
		0.871851, -0.377512, 0.312028,
		0.385701, 0.921857, 0.037619,
		36.612801, 37.542786, 39.232563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837421, 37.091999, 39.774811>,  <36.342808, 36.897484, 39.206226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837421, 37.091999, 39.774811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684986, 37.454174, 39.700027>,  <36.593525, 37.671478, 39.655159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684986, 37.454174, 39.700027>,  <36.837421, 37.091999, 39.774811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684986, 37.454174, 39.700027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217116, 0.108919, 0.970050,
		0.898684, 0.410266, 0.155077,
		-0.381088, 0.905438, -0.186959,
		36.570660, 37.725807, 39.643940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019920, 37.409676, 40.311707>,  <36.837421, 37.091999, 39.774811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019920, 37.409676, 40.311707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762405, 37.666531, 40.145241>,  <36.607895, 37.820644, 40.045361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762405, 37.666531, 40.145241>,  <37.019920, 37.409676, 40.311707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762405, 37.666531, 40.145241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181604, 0.400104, 0.898297,
		0.743343, 0.653888, -0.140966,
		-0.643787, 0.642142, -0.416163,
		36.569271, 37.859173, 40.020393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266701, 38.050991, 40.597168>,  <37.019920, 37.409676, 40.311707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266701, 38.050991, 40.597168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888855, 38.122612, 40.487152>,  <36.662148, 38.165585, 40.421143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888855, 38.122612, 40.487152>,  <37.266701, 38.050991, 40.597168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888855, 38.122612, 40.487152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165454, 0.463953, 0.870272,
		0.283429, 0.867576, -0.408631,
		-0.944613, 0.179051, -0.275042,
		36.605473, 38.176327, 40.404640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970455, 38.750637, 40.763493>,  <37.266701, 38.050991, 40.597168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970455, 38.750637, 40.763493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640736, 38.524639, 40.749039>,  <36.442905, 38.389038, 40.740368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640736, 38.524639, 40.749039>,  <36.970455, 38.750637, 40.763493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640736, 38.524639, 40.749039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301917, 0.384695, 0.872271,
		-0.478931, 0.729922, -0.487687,
		-0.824300, -0.564999, -0.036133,
		36.393444, 38.355141, 40.738197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444569, 39.212391, 40.897522>,  <36.970455, 38.750637, 40.763493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444569, 39.212391, 40.897522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321175, 38.850857, 41.016125>,  <36.247139, 38.633938, 41.087288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321175, 38.850857, 41.016125>,  <36.444569, 39.212391, 40.897522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321175, 38.850857, 41.016125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239005, 0.375361, 0.895534,
		-0.920715, 0.205388, -0.331813,
		-0.308482, -0.903836, 0.296511,
		36.228630, 38.579704, 41.105080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889355, 39.378284, 41.603180>,  <36.444569, 39.212391, 40.897522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889355, 39.378284, 41.603180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746300, 39.679523, 41.824066>,  <36.660469, 39.860268, 41.956596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746300, 39.679523, 41.824066>,  <36.889355, 39.378284, 41.603180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746300, 39.679523, 41.824066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911863, 0.409207, 0.032491,
		-0.201502, 0.515166, -0.833067,
		-0.357636, 0.753096, 0.552217,
		36.639008, 39.905453, 41.989731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105656, 39.533928, 41.473335>,  <36.889355, 39.378284, 41.603180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105656, 39.533928, 41.473335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741791, 39.432728, 41.341572>,  <35.523472, 39.372009, 41.262512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741791, 39.432728, 41.341572>,  <36.105656, 39.533928, 41.473335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741791, 39.432728, 41.341572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404128, -0.722267, -0.561258,
		-0.095926, -0.643678, 0.759261,
		-0.909659, -0.252999, -0.329412,
		35.468895, 39.356827, 41.242748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944042, 38.732544, 41.555847>,  <36.105656, 39.533928, 41.473335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944042, 38.732544, 41.555847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724598, 38.903980, 41.268696>,  <35.592934, 39.006840, 41.096405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724598, 38.903980, 41.268696>,  <35.944042, 38.732544, 41.555847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724598, 38.903980, 41.268696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304175, -0.697469, -0.648857,
		-0.778788, -0.574326, 0.252269,
		-0.548605, 0.428588, -0.717875,
		35.560017, 39.032555, 41.053333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481518, 38.125374, 41.298161>,  <35.944042, 38.732544, 41.555847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481518, 38.125374, 41.298161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603882, 38.425781, 41.064102>,  <35.677299, 38.606026, 40.923668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603882, 38.425781, 41.064102>,  <35.481518, 38.125374, 41.298161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603882, 38.425781, 41.064102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467045, -0.653952, -0.595161,
		-0.829633, -0.091227, -0.550806,
		0.305906, 0.751016, -0.585147,
		35.695652, 38.651085, 40.888557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207008, 38.103004, 40.665154>,  <35.481518, 38.125374, 41.298161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207008, 38.103004, 40.665154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564129, 38.277615, 40.620705>,  <35.778400, 38.382381, 40.594036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564129, 38.277615, 40.620705>,  <35.207008, 38.103004, 40.665154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564129, 38.277615, 40.620705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114294, -0.458147, -0.881498,
		-0.435709, 0.774302, -0.458927,
		0.892801, 0.436529, -0.111121,
		35.831970, 38.408573, 40.587368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311611, 38.402721, 39.995090>,  <35.207008, 38.103004, 40.665154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311611, 38.402721, 39.995090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694958, 38.360794, 40.101330>,  <35.924965, 38.335636, 40.165073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694958, 38.360794, 40.101330>,  <35.311611, 38.402721, 39.995090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694958, 38.360794, 40.101330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235036, -0.238592, -0.942248,
		0.162135, 0.965446, -0.204023,
		0.958368, -0.104818, 0.265599,
		35.982468, 38.329350, 40.181011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644115, 38.505611, 39.396526>,  <35.311611, 38.402721, 39.995090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644115, 38.505611, 39.396526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948120, 38.351242, 39.605694>,  <36.130524, 38.258621, 39.731194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948120, 38.351242, 39.605694>,  <35.644115, 38.505611, 39.396526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948120, 38.351242, 39.605694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492799, -0.182365, -0.850818,
		0.423713, 0.904327, 0.051582,
		0.760011, -0.385922, 0.522922,
		36.176125, 38.235466, 39.762569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155117, 38.902817, 39.235275>,  <35.644115, 38.505611, 39.396526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155117, 38.902817, 39.235275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261566, 38.529152, 39.330364>,  <36.325436, 38.304951, 39.387417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261566, 38.529152, 39.330364>,  <36.155117, 38.902817, 39.235275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261566, 38.529152, 39.330364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420556, -0.109383, -0.900649,
		0.867359, 0.339658, 0.363760,
		0.266124, -0.934167, 0.237720,
		36.341404, 38.248901, 39.401680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857182, 38.737267, 39.055141>,  <36.155117, 38.902817, 39.235275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857182, 38.737267, 39.055141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651047, 38.394760, 39.069221>,  <36.527367, 38.189255, 39.077671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651047, 38.394760, 39.069221>,  <36.857182, 38.737267, 39.055141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651047, 38.394760, 39.069221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519028, -0.344531, -0.782246,
		0.681937, -0.384850, 0.621975,
		-0.515337, -0.856265, 0.035200,
		36.496445, 38.137882, 39.079781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509144, 38.431480, 39.236675>,  <36.857182, 38.737267, 39.055141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509144, 38.431480, 39.236675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401604, 38.047485, 39.268024>,  <37.337082, 37.817089, 39.286835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401604, 38.047485, 39.268024>,  <37.509144, 38.431480, 39.236675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401604, 38.047485, 39.268024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266086, -0.152229, -0.951853,
		0.925699, -0.235049, 0.296365,
		-0.268847, -0.959989, 0.078375,
		37.320950, 37.759487, 39.291538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911617, 37.904243, 38.936203>,  <37.509144, 38.431480, 39.236675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911617, 37.904243, 38.936203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584824, 37.674309, 38.954548>,  <37.388748, 37.536346, 38.965553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584824, 37.674309, 38.954548>,  <37.911617, 37.904243, 38.936203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584824, 37.674309, 38.954548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188827, -0.341814, -0.920602,
		0.544875, -0.743453, 0.387800,
		-0.816980, -0.574840, 0.045862,
		37.339729, 37.501858, 38.968307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060028, 37.194012, 38.799057>,  <37.911617, 37.904243, 38.936203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060028, 37.194012, 38.799057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683826, 37.266819, 38.684284>,  <37.458107, 37.310501, 38.615421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683826, 37.266819, 38.684284>,  <38.060028, 37.194012, 38.799057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683826, 37.266819, 38.684284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173023, -0.470223, -0.865421,
		-0.292443, -0.863574, 0.410752,
		-0.940500, 0.182017, -0.286931,
		37.401676, 37.321423, 38.598206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757652, 36.550068, 38.621365>,  <38.060028, 37.194012, 38.799057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757652, 36.550068, 38.621365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551765, 36.842754, 38.442631>,  <37.428234, 37.018364, 38.335392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551765, 36.842754, 38.442631>,  <37.757652, 36.550068, 38.621365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551765, 36.842754, 38.442631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013144, -0.514380, -0.857462,
		-0.857258, -0.447225, 0.255143,
		-0.514719, 0.731712, -0.446835,
		37.397350, 37.062267, 38.308578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053467, 36.318447, 38.406296>,  <37.757652, 36.550068, 38.621365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053467, 36.318447, 38.406296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189751, 36.615414, 38.175564>,  <37.271523, 36.793594, 38.037125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189751, 36.615414, 38.175564>,  <37.053467, 36.318447, 38.406296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189751, 36.615414, 38.175564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183862, -0.549075, -0.815298,
		-0.922014, 0.383839, -0.050574,
		0.340712, 0.742418, -0.576829,
		37.291965, 36.838139, 38.002514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947510, 36.014668, 37.702423>,  <37.053467, 36.318447, 38.406296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947510, 36.014668, 37.702423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134876, 36.355015, 37.607250>,  <37.247295, 36.559223, 37.550148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134876, 36.355015, 37.607250>,  <36.947510, 36.014668, 37.702423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134876, 36.355015, 37.607250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082141, -0.310075, -0.947157,
		-0.879683, 0.424117, -0.215134,
		0.468413, 0.850869, -0.237931,
		37.275402, 36.610275, 37.535870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776691, 36.042038, 37.084938>,  <36.947510, 36.014668, 37.702423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776691, 36.042038, 37.084938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074718, 36.308804, 37.088745>,  <37.253536, 36.468864, 37.091030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074718, 36.308804, 37.088745>,  <36.776691, 36.042038, 37.084938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074718, 36.308804, 37.088745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258120, -0.275150, -0.926103,
		-0.615014, 0.692470, -0.377152,
		0.745072, 0.666916, 0.009519,
		37.298241, 36.508877, 37.091602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939144, 36.405720, 36.524418>,  <36.776691, 36.042038, 37.084938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939144, 36.405720, 36.524418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302601, 36.441570, 36.687553>,  <37.520676, 36.463081, 36.785435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302601, 36.441570, 36.687553>,  <36.939144, 36.405720, 36.524418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302601, 36.441570, 36.687553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415575, -0.098673, -0.904191,
		-0.040795, 0.991076, -0.126905,
		0.908644, 0.089625, 0.407841,
		37.575195, 36.468456, 36.809906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339237, 36.806061, 36.024139>,  <36.939144, 36.405720, 36.524418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339237, 36.806061, 36.024139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600136, 36.612877, 36.257832>,  <37.756676, 36.496967, 36.398045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600136, 36.612877, 36.257832>,  <37.339237, 36.806061, 36.024139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600136, 36.612877, 36.257832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378561, -0.460193, -0.803065,
		0.656708, 0.744962, -0.117329,
		0.652247, -0.482963, 0.584226,
		37.795811, 36.467987, 36.433098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976650, 36.856113, 35.690079>,  <37.339237, 36.806061, 36.024139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976650, 36.856113, 35.690079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004814, 36.547138, 35.942551>,  <38.021713, 36.361755, 36.094032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004814, 36.547138, 35.942551>,  <37.976650, 36.856113, 35.690079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004814, 36.547138, 35.942551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469601, -0.532580, -0.704155,
		0.880067, 0.345983, 0.325236,
		0.070412, -0.772434, 0.631180,
		38.025936, 36.315407, 36.131905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717838, 36.742283, 36.024807>,  <37.976650, 36.856113, 35.690079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717838, 36.742283, 36.024807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518578, 36.400669, 35.964840>,  <38.399021, 36.195702, 35.928860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518578, 36.400669, 35.964840>,  <38.717838, 36.742283, 36.024807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518578, 36.400669, 35.964840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724135, -0.314655, -0.613694,
		0.476943, -0.414272, 0.775180,
		-0.498150, -0.854033, -0.149916,
		38.369133, 36.144459, 35.919865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038582, 36.310490, 35.623234>,  <38.717838, 36.742283, 36.024807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038582, 36.310490, 35.623234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728466, 36.061672, 35.579441>,  <38.542397, 35.912380, 35.553165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728466, 36.061672, 35.579441>,  <39.038582, 36.310490, 35.623234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728466, 36.061672, 35.579441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517740, -0.526626, -0.674248,
		0.361756, -0.579421, 0.730345,
		-0.775292, -0.622042, -0.109479,
		38.495880, 35.875061, 35.546597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359943, 35.594006, 35.474159>,  <39.038582, 36.310490, 35.623234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359943, 35.594006, 35.474159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000946, 35.579556, 35.298340>,  <38.785549, 35.570885, 35.192848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000946, 35.579556, 35.298340>,  <39.359943, 35.594006, 35.474159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000946, 35.579556, 35.298340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375010, -0.587014, -0.717483,
		-0.232103, -0.808770, 0.540388,
		-0.897494, -0.036121, -0.439545,
		38.731697, 35.568718, 35.166477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336243, 34.932934, 35.186211>,  <39.359943, 35.594006, 35.474159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336243, 34.932934, 35.186211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991219, 35.048496, 35.020065>,  <38.784206, 35.117836, 34.920380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991219, 35.048496, 35.020065>,  <39.336243, 34.932934, 35.186211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991219, 35.048496, 35.020065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238444, -0.491943, -0.837339,
		-0.446248, -0.821294, 0.355442,
		-0.862558, 0.288908, -0.415361,
		38.732452, 35.135170, 34.895458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026730, 34.335567, 34.941143>,  <39.336243, 34.932934, 35.186211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026730, 34.335567, 34.941143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864204, 34.630722, 34.725578>,  <38.766689, 34.807816, 34.596241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864204, 34.630722, 34.725578>,  <39.026730, 34.335567, 34.941143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864204, 34.630722, 34.725578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209976, -0.498603, -0.841015,
		-0.889279, -0.454876, 0.047652,
		-0.406317, 0.737890, -0.538910,
		38.742310, 34.852089, 34.563904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531837, 34.097832, 34.511120>,  <39.026730, 34.335567, 34.941143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531837, 34.097832, 34.511120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613007, 34.438377, 34.317623>,  <38.661709, 34.642704, 34.201527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613007, 34.438377, 34.317623>,  <38.531837, 34.097832, 34.511120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613007, 34.438377, 34.317623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210492, -0.520399, -0.827574,
		-0.956303, 0.066113, -0.284807,
		0.202926, 0.851360, -0.483743,
		38.673885, 34.693787, 34.172501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704437, 33.352478, 34.339703>,  <38.531837, 34.097832, 34.511120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704437, 33.352478, 34.339703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045334, 33.518692, 34.212570>,  <39.249870, 33.618420, 34.136292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045334, 33.518692, 34.212570>,  <38.704437, 33.352478, 34.339703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045334, 33.518692, 34.212570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434741, -0.900481, -0.011586,
		-0.291015, -0.128300, -0.948077,
		0.852239, 0.415540, -0.317831,
		39.301006, 33.643353, 34.117222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992424, 33.175262, 33.641537>,  <38.704437, 33.352478, 34.339703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992424, 33.175262, 33.641537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285393, 33.242367, 33.905483>,  <39.461174, 33.282631, 34.063850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285393, 33.242367, 33.905483>,  <38.992424, 33.175262, 33.641537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285393, 33.242367, 33.905483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367294, -0.913406, -0.175455,
		0.573288, 0.370870, -0.730614,
		0.732418, 0.167764, 0.659863,
		39.505119, 33.292694, 34.103443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598541, 32.715343, 33.467880>,  <38.992424, 33.175262, 33.641537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598541, 32.715343, 33.467880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642544, 32.853386, 33.840717>,  <39.668945, 32.936211, 34.064419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642544, 32.853386, 33.840717>,  <39.598541, 32.715343, 33.467880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642544, 32.853386, 33.840717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552582, -0.800735, 0.231251,
		0.826167, 0.489620, -0.278784,
		0.110007, 0.345103, 0.932096,
		39.675545, 32.956917, 34.120346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385506, 32.754173, 33.565926>,  <39.598541, 32.715343, 33.467880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385506, 32.754173, 33.565926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166954, 32.699554, 33.896458>,  <40.035824, 32.666782, 34.094776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166954, 32.699554, 33.896458>,  <40.385506, 32.754173, 33.565926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166954, 32.699554, 33.896458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605559, -0.745988, 0.277130,
		0.578589, 0.651810, 0.490283,
		-0.546382, -0.136551, 0.826330,
		40.003040, 32.658588, 34.144356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792477, 32.601349, 33.026402>,  <40.385506, 32.754173, 33.565926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792477, 32.601349, 33.026402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676826, 32.984261, 33.028248>,  <40.607437, 33.214008, 33.029354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676826, 32.984261, 33.028248>,  <40.792477, 32.601349, 33.026402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676826, 32.984261, 33.028248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719664, 0.220537, -0.658367,
		-0.631259, -0.187032, -0.752683,
		-0.289130, 0.957279, 0.004615,
		40.590088, 33.271442, 33.029633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599312, 33.020851, 32.314255>,  <40.792477, 32.601349, 33.026402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599312, 33.020851, 32.314255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792023, 33.218609, 32.603657>,  <40.907650, 33.337261, 32.777298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792023, 33.218609, 32.603657>,  <40.599312, 33.020851, 32.314255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792023, 33.218609, 32.603657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850662, -0.065637, -0.521600,
		-0.210386, 0.866757, -0.452183,
		0.481781, 0.494392, 0.723508,
		40.936558, 33.366928, 32.820709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200615, 33.329193, 32.036774>,  <40.599312, 33.020851, 32.314255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200615, 33.329193, 32.036774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304188, 33.346161, 32.422760>,  <41.366333, 33.356342, 32.654350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304188, 33.346161, 32.422760>,  <41.200615, 33.329193, 32.036774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304188, 33.346161, 32.422760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965109, 0.028948, -0.260245,
		-0.038974, 0.998680, -0.033447,
		0.258933, 0.042423, 0.964963,
		41.381866, 33.358887, 32.712250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597179, 33.862499, 32.150955>,  <41.200615, 33.329193, 32.036774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597179, 33.862499, 32.150955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691189, 33.546085, 32.376884>,  <41.747593, 33.356236, 32.512440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691189, 33.546085, 32.376884>,  <41.597179, 33.862499, 32.150955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691189, 33.546085, 32.376884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932149, 0.018760, -0.361589,
		0.275435, 0.611478, 0.741775,
		0.235020, -0.791039, 0.564821,
		41.761696, 33.308773, 32.546329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039524, 33.886364, 32.684448>,  <41.597179, 33.862499, 32.150955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039524, 33.886364, 32.684448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076714, 33.520611, 32.526836>,  <42.099030, 33.301159, 32.432270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076714, 33.520611, 32.526836>,  <42.039524, 33.886364, 32.684448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076714, 33.520611, 32.526836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814259, 0.297581, -0.498425,
		0.573007, -0.274502, 0.772212,
		0.092977, -0.914382, -0.394031,
		42.104607, 33.246296, 32.408627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674484, 33.418293, 32.888031>,  <42.039524, 33.886364, 32.684448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674484, 33.418293, 32.888031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550858, 33.369221, 32.510792>,  <42.476681, 33.339775, 32.284451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550858, 33.369221, 32.510792>,  <42.674484, 33.418293, 32.888031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550858, 33.369221, 32.510792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851226, 0.406561, -0.331847,
		0.424138, -0.905349, -0.021221,
		-0.309065, -0.122685, -0.943094,
		42.458138, 33.332417, 32.227863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203953, 33.059784, 32.512398>,  <42.674484, 33.418293, 32.888031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203953, 33.059784, 32.512398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974819, 33.267994, 32.259125>,  <42.837341, 33.392921, 32.107162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974819, 33.267994, 32.259125>,  <43.203953, 33.059784, 32.512398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974819, 33.267994, 32.259125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812192, 0.256308, -0.524071,
		-0.110501, -0.814470, -0.569586,
		-0.572829, 0.520524, -0.633183,
		42.802971, 33.424152, 32.069168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716820, 33.633053, 32.414177>,  <43.203953, 33.059784, 32.512398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716820, 33.633053, 32.414177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070534, 33.779678, 32.529888>,  <44.282761, 33.867653, 32.599316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070534, 33.779678, 32.529888>,  <43.716820, 33.633053, 32.414177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.070534, 33.779678, 32.529888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404198, 0.290672, 0.867256,
		0.233814, -0.883825, 0.405198,
		0.884282, 0.366557, 0.289277,
		44.335819, 33.889648, 32.616673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013184, 33.332256, 33.157696>,  <43.716820, 33.633053, 32.414177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013184, 33.332256, 33.157696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151226, 33.698170, 33.073711>,  <44.234051, 33.917717, 33.023323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151226, 33.698170, 33.073711>,  <44.013184, 33.332256, 33.157696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.151226, 33.698170, 33.073711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361197, 0.335917, 0.869883,
		0.866279, -0.224364, 0.446342,
		0.345104, 0.914779, -0.209958,
		44.254757, 33.972603, 33.010723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500965, 33.654366, 33.673847>,  <44.013184, 33.332256, 33.157696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500965, 33.654366, 33.673847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233124, 33.907845, 33.518894>,  <44.072418, 34.059933, 33.425922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233124, 33.907845, 33.518894>,  <44.500965, 33.654366, 33.673847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233124, 33.907845, 33.518894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285391, 0.262011, 0.921901,
		0.685703, 0.727861, 0.005408,
		-0.669600, 0.633694, -0.387387,
		44.032246, 34.097954, 33.402679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.038631, 33.640003, 34.118507>,  <44.500965, 33.654366, 33.673847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.038631, 33.640003, 34.118507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.395100, 33.811371, 34.058804>,  <45.608978, 33.914192, 34.022984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.395100, 33.811371, 34.058804>,  <45.038631, 33.640003, 34.118507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.395100, 33.811371, 34.058804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445906, 0.766539, -0.462154,
		-0.083583, 0.478412, 0.874149,
		0.891169, 0.428416, -0.149257,
		45.662449, 33.939896, 34.014027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.101116, 34.420952, 34.208298>,  <45.038631, 33.640003, 34.118507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.101116, 34.420952, 34.208298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.359867, 34.279785, 33.937893>,  <45.515118, 34.195084, 33.775650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.359867, 34.279785, 33.937893>,  <45.101116, 34.420952, 34.208298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.359867, 34.279785, 33.937893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196134, 0.779651, -0.594706,
		0.736940, 0.517291, 0.435120,
		0.646878, -0.352921, -0.676014,
		45.553932, 34.173908, 33.735088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.687061, 34.865364, 33.970795>,  <45.101116, 34.420952, 34.208298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.687061, 34.865364, 33.970795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.833328, 34.501766, 33.890785>,  <45.921089, 34.283607, 33.842777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.833328, 34.501766, 33.890785>,  <45.687061, 34.865364, 33.970795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.833328, 34.501766, 33.890785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815505, 0.209325, 0.539568,
		-0.448595, -0.360427, 0.817835,
		0.365668, -0.908997, -0.200028,
		45.943027, 34.229069, 33.830776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.933701, 34.577133, 34.567348>,  <45.687061, 34.865364, 33.970795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.933701, 34.577133, 34.567348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.109360, 34.377987, 34.268208>,  <46.214756, 34.258499, 34.088722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.109360, 34.377987, 34.268208>,  <45.933701, 34.577133, 34.567348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.109360, 34.377987, 34.268208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873131, 0.040429, 0.485806,
		-0.211631, -0.866312, 0.452455,
		0.439152, -0.497864, -0.747848,
		46.241104, 34.228626, 34.043854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.636848, 34.913006, 34.466068>,  <45.933701, 34.577133, 34.567348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.636848, 34.913006, 34.466068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.954304, 34.674480, 34.417839>,  <47.144779, 34.531364, 34.388901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.954304, 34.674480, 34.417839>,  <46.636848, 34.913006, 34.466068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.954304, 34.674480, 34.417839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589878, 0.705726, 0.392422,
		-0.148916, -0.382566, 0.911848,
		0.793642, -0.596317, -0.120574,
		47.192398, 34.495586, 34.381668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.125393, 34.982552, 35.040245>,  <46.636848, 34.913006, 34.466068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.125393, 34.982552, 35.040245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.359367, 34.828938, 34.754486>,  <47.499752, 34.736771, 34.583031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.359367, 34.828938, 34.754486>,  <47.125393, 34.982552, 35.040245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.359367, 34.828938, 34.754486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678984, 0.713645, 0.172311,
		0.443653, -0.585856, 0.678192,
		0.584939, -0.384035, -0.714398,
		47.534847, 34.713726, 34.540165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.769665, 35.084831, 35.299023>,  <47.125393, 34.982552, 35.040245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.769665, 35.084831, 35.299023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.855000, 35.042183, 34.910564>,  <47.906200, 35.016594, 34.677490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.855000, 35.042183, 34.910564>,  <47.769665, 35.084831, 35.299023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.855000, 35.042183, 34.910564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627692, 0.776681, 0.052614,
		0.748659, -0.620804, 0.232619,
		0.213334, -0.106623, -0.971144,
		47.918999, 35.010197, 34.619221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.244068, 31.059851, 24.501528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.913486, 31.174082, 24.307446>,  <35.715137, 31.242620, 24.190996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.913486, 31.174082, 24.307446>,  <36.244068, 31.059851, 24.501528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913486, 31.174082, 24.307446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422783, 0.254316, 0.869815,
		0.371795, 0.923996, -0.089443,
		-0.826452, 0.285578, -0.485204,
		35.665550, 31.259756, 24.161884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029301, 31.621889, 24.824162>,  <36.244068, 31.059851, 24.501528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029301, 31.621889, 24.824162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.697998, 31.560011, 24.608734>,  <35.499218, 31.522884, 24.479477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.697998, 31.560011, 24.608734>,  <36.029301, 31.621889, 24.824162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697998, 31.560011, 24.608734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556901, 0.333690, 0.760600,
		0.062053, 0.929903, -0.362532,
		-0.828258, -0.154697, -0.538571,
		35.449520, 31.513601, 24.447163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640392, 32.317772, 24.838543>,  <36.029301, 31.621889, 24.824162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640392, 32.317772, 24.838543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.403194, 32.000271, 24.784412>,  <35.260876, 31.809771, 24.751934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.403194, 32.000271, 24.784412>,  <35.640392, 32.317772, 24.838543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403194, 32.000271, 24.784412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483163, 0.216319, 0.848386,
		-0.644134, 0.568475, -0.511788,
		-0.592996, -0.793752, -0.135328,
		35.225296, 31.762146, 24.743814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016476, 32.667717, 24.998920>,  <35.640392, 32.317772, 24.838543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016476, 32.667717, 24.998920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.928467, 32.278294, 25.023514>,  <34.875664, 32.044640, 25.038271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.928467, 32.278294, 25.023514>,  <35.016476, 32.667717, 24.998920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928467, 32.278294, 25.023514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500710, 0.166801, 0.849392,
		-0.837187, 0.156096, -0.524169,
		-0.220018, -0.973556, 0.061485,
		34.862461, 31.986227, 25.041960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398705, 32.667973, 25.116007>,  <35.016476, 32.667717, 24.998920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398705, 32.667973, 25.116007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.517883, 32.306152, 25.238005>,  <34.589390, 32.089062, 25.311203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.517883, 32.306152, 25.238005>,  <34.398705, 32.667973, 25.116007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517883, 32.306152, 25.238005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401293, 0.171214, 0.899805,
		-0.866135, -0.390489, -0.311975,
		0.297950, -0.904546, 0.304995,
		34.607269, 32.034790, 25.329502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850910, 32.289070, 25.374557>,  <34.398705, 32.667973, 25.116007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850910, 32.289070, 25.374557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.176647, 32.137730, 25.550602>,  <34.372089, 32.046925, 25.656229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.176647, 32.137730, 25.550602>,  <33.850910, 32.289070, 25.374557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176647, 32.137730, 25.550602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406494, 0.169438, 0.897805,
		-0.414261, -0.910021, -0.015819,
		0.814340, -0.378356, 0.440110,
		34.420948, 32.024223, 25.682634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532829, 31.954668, 25.956842>,  <33.850910, 32.289070, 25.374557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532829, 31.954668, 25.956842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.921169, 31.977684, 26.049913>,  <34.154175, 31.991493, 26.105757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.921169, 31.977684, 26.049913>,  <33.532829, 31.954668, 25.956842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921169, 31.977684, 26.049913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239646, 0.251059, 0.937837,
		-0.004453, -0.966260, 0.257530,
		0.970850, 0.057540, 0.232679,
		34.212425, 31.994946, 26.119717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618370, 31.533173, 26.697149>,  <33.532829, 31.954668, 25.956842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618370, 31.533173, 26.697149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.930412, 31.779108, 26.650824>,  <34.117638, 31.926668, 26.623028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.930412, 31.779108, 26.650824>,  <33.618370, 31.533173, 26.697149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930412, 31.779108, 26.650824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141735, 0.353970, 0.924454,
		0.609385, -0.704755, 0.363278,
		0.780104, 0.614838, -0.115816,
		34.164444, 31.963560, 26.616079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985603, 31.469011, 27.325886>,  <33.618370, 31.533173, 26.697149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985603, 31.469011, 27.325886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.139950, 31.804504, 27.172195>,  <34.232559, 32.005798, 27.079981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.139950, 31.804504, 27.172195>,  <33.985603, 31.469011, 27.325886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139950, 31.804504, 27.172195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223448, 0.319114, 0.920998,
		0.895084, -0.441241, -0.064277,
		0.385871, 0.838733, -0.384228,
		34.255711, 32.056126, 27.056927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692295, 31.582075, 27.592649>,  <33.985603, 31.469011, 27.325886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692295, 31.582075, 27.592649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.563385, 31.942616, 27.476923>,  <34.486038, 32.158939, 27.407488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.563385, 31.942616, 27.476923>,  <34.692295, 31.582075, 27.592649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563385, 31.942616, 27.476923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123753, 0.343114, 0.931106,
		0.938522, 0.264267, -0.222122,
		-0.322274, 0.901352, -0.289316,
		34.466702, 32.213020, 27.390129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281128, 32.050526, 27.661800>,  <34.692295, 31.582075, 27.592649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281128, 32.050526, 27.661800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.969246, 32.300980, 27.663015>,  <34.782116, 32.451252, 27.663744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.969246, 32.300980, 27.663015>,  <35.281128, 32.050526, 27.661800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969246, 32.300980, 27.663015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356760, 0.440259, 0.823951,
		0.514570, 0.643523, -0.566654,
		-0.779705, 0.626139, 0.003039,
		34.735332, 32.488823, 27.663927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549492, 32.716545, 27.845795>,  <35.281128, 32.050526, 27.661800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549492, 32.716545, 27.845795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.163147, 32.786137, 27.922565>,  <34.931339, 32.827892, 27.968628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.163147, 32.786137, 27.922565>,  <35.549492, 32.716545, 27.845795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163147, 32.786137, 27.922565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258218, 0.705646, 0.659839,
		-0.020636, 0.686875, -0.726483,
		-0.965866, 0.173975, 0.191925,
		34.873386, 32.838329, 27.980143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529640, 33.414303, 28.055338>,  <35.549492, 32.716545, 27.845795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529640, 33.414303, 28.055338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.192883, 33.238987, 28.181271>,  <34.990829, 33.133797, 28.256830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.192883, 33.238987, 28.181271>,  <35.529640, 33.414303, 28.055338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192883, 33.238987, 28.181271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120769, 0.415585, 0.901501,
		-0.525958, 0.796988, -0.296946,
		-0.841892, -0.438290, 0.314832,
		34.940315, 33.107498, 28.275721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098774, 33.964592, 28.294069>,  <35.529640, 33.414303, 28.055338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098774, 33.964592, 28.294069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.948395, 33.629612, 28.452734>,  <34.858170, 33.428623, 28.547934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.948395, 33.629612, 28.452734>,  <35.098774, 33.964592, 28.294069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948395, 33.629612, 28.452734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027085, 0.437813, 0.898658,
		-0.926246, 0.327102, -0.187276,
		-0.375945, -0.837451, 0.396663,
		34.835613, 33.378376, 28.571733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601456, 34.222313, 28.800325>,  <35.098774, 33.964592, 28.294069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601456, 34.222313, 28.800325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.712669, 33.856823, 28.918852>,  <34.779396, 33.637527, 28.989967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.712669, 33.856823, 28.918852>,  <34.601456, 34.222313, 28.800325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712669, 33.856823, 28.918852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020072, 0.302887, 0.952815,
		-0.960362, -0.270862, 0.065873,
		0.278033, -0.913725, 0.296318,
		34.796078, 33.582706, 29.007748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301285, 34.140121, 29.477533>,  <34.601456, 34.222313, 28.800325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301285, 34.140121, 29.477533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.536285, 33.816814, 29.493263>,  <34.677284, 33.622829, 29.502701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.536285, 33.816814, 29.493263>,  <34.301285, 34.140121, 29.477533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536285, 33.816814, 29.493263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032292, 0.071971, 0.996884,
		-0.808582, -0.584396, 0.068384,
		0.587497, -0.808271, 0.039323,
		34.712536, 33.574333, 29.505060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977421, 33.741776, 29.974237>,  <34.301285, 34.140121, 29.477533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977421, 33.741776, 29.974237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.358044, 33.625072, 29.935413>,  <34.586418, 33.555050, 29.912119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.358044, 33.625072, 29.935413>,  <33.977421, 33.741776, 29.974237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358044, 33.625072, 29.935413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109999, 0.028236, 0.993530,
		-0.287128, -0.956076, 0.058961,
		0.951555, -0.291756, -0.097060,
		34.643509, 33.537544, 29.906296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123222, 33.094723, 30.459143>,  <33.977421, 33.741776, 29.974237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123222, 33.094723, 30.459143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.475330, 33.262325, 30.370100>,  <34.686596, 33.362885, 30.316675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.475330, 33.262325, 30.370100>,  <34.123222, 33.094723, 30.459143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475330, 33.262325, 30.370100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214687, 0.066646, 0.974406,
		0.423116, -0.905535, -0.031288,
		0.880274, 0.419004, -0.222606,
		34.739414, 33.388027, 30.303318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458405, 32.859314, 30.996109>,  <34.123222, 33.094723, 30.459143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458405, 32.859314, 30.996109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.707157, 33.136314, 30.849846>,  <34.856411, 33.302513, 30.762089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.707157, 33.136314, 30.849846>,  <34.458405, 32.859314, 30.996109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707157, 33.136314, 30.849846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219368, 0.294187, 0.930232,
		0.751756, -0.658710, 0.031038,
		0.621884, 0.692499, -0.365657,
		34.893723, 33.344063, 30.740149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135693, 32.805130, 31.270452>,  <34.458405, 32.859314, 30.996109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135693, 32.805130, 31.270452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.071304, 33.182613, 31.154865>,  <35.032669, 33.409103, 31.085512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.071304, 33.182613, 31.154865>,  <35.135693, 32.805130, 31.270452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071304, 33.182613, 31.154865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142320, 0.311923, 0.939388,
		0.976643, 0.110091, -0.184520,
		-0.160975, 0.943708, -0.288969,
		35.023010, 33.465725, 31.068174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623936, 33.116291, 31.690443>,  <35.135693, 32.805130, 31.270452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623936, 33.116291, 31.690443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.381214, 33.406387, 31.560328>,  <35.235580, 33.580444, 31.482258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.381214, 33.406387, 31.560328>,  <35.623936, 33.116291, 31.690443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381214, 33.406387, 31.560328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104343, 0.478388, 0.871928,
		0.787970, 0.495151, -0.365963,
		-0.606808, 0.725238, -0.325290,
		35.199173, 33.623959, 31.462740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040718, 33.819973, 31.769567>,  <35.623936, 33.116291, 31.690443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040718, 33.819973, 31.769567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.656567, 33.930523, 31.755190>,  <35.426075, 33.996853, 31.746563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.656567, 33.930523, 31.755190>,  <36.040718, 33.819973, 31.769567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656567, 33.930523, 31.755190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114118, 0.507625, 0.853987,
		0.254264, 0.816049, -0.519051,
		-0.960379, 0.276371, -0.035945,
		35.368454, 34.013435, 31.744406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283569, 33.846119, 32.524757>,  <36.040718, 33.819973, 31.769567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283569, 33.846119, 32.524757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.591175, 33.667141, 32.707367>,  <36.775738, 33.559753, 32.816933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.591175, 33.667141, 32.707367>,  <36.283569, 33.846119, 32.524757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591175, 33.667141, 32.707367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383072, -0.249160, -0.889480,
		0.511740, 0.858903, -0.020204,
		0.769011, -0.447443, 0.456527,
		36.821877, 33.532909, 32.844326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889839, 34.072819, 32.248520>,  <36.283569, 33.846119, 32.524757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889839, 34.072819, 32.248520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.004772, 33.731667, 32.422890>,  <37.073730, 33.526974, 32.527512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.004772, 33.731667, 32.422890>,  <36.889839, 34.072819, 32.248520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004772, 33.731667, 32.422890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558551, -0.220529, -0.799617,
		0.778116, 0.473239, 0.413015,
		0.287328, -0.852884, 0.435925,
		37.090969, 33.475800, 32.553669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672459, 33.990082, 32.316948>,  <36.889839, 34.072819, 32.248520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672459, 33.990082, 32.316948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.510361, 33.624413, 32.319908>,  <37.413101, 33.405010, 32.321682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.510361, 33.624413, 32.319908>,  <37.672459, 33.990082, 32.316948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510361, 33.624413, 32.319908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588528, -0.267063, -0.763095,
		0.699579, -0.304889, 0.646245,
		-0.405247, -0.914178, 0.007396,
		37.388786, 33.350159, 32.322128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170990, 33.630623, 32.153473>,  <37.672459, 33.990082, 32.316948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170990, 33.630623, 32.153473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.891140, 33.359634, 32.062645>,  <37.723232, 33.197041, 32.008148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.891140, 33.359634, 32.062645>,  <38.170990, 33.630623, 32.153473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891140, 33.359634, 32.062645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556082, -0.316714, -0.768417,
		0.448667, -0.663869, 0.598311,
		-0.699621, -0.677473, -0.227066,
		37.681255, 33.156391, 31.994526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439220, 32.962631, 31.914032>,  <38.170990, 33.630623, 32.153473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439220, 32.962631, 31.914032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077290, 32.942307, 31.744940>,  <37.860130, 32.930111, 31.643484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077290, 32.942307, 31.744940>,  <38.439220, 32.962631, 31.914032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077290, 32.942307, 31.744940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424632, -0.180371, -0.887217,
		-0.031165, -0.982285, 0.184782,
		-0.904830, -0.050815, -0.422731,
		37.805840, 32.927063, 31.618120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411209, 32.369213, 31.549591>,  <38.439220, 32.962631, 31.914032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411209, 32.369213, 31.549591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.096397, 32.557068, 31.389578>,  <37.907513, 32.669781, 31.293570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.096397, 32.557068, 31.389578>,  <38.411209, 32.369213, 31.549591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096397, 32.557068, 31.389578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160131, -0.470696, -0.867642,
		-0.595774, -0.746915, 0.295246,
		-0.787027, 0.469641, -0.400033,
		37.860291, 32.697960, 31.269567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226669, 31.849028, 31.017153>,  <38.411209, 32.369213, 31.549591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226669, 31.849028, 31.017153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.992714, 32.165314, 30.944853>,  <37.852341, 32.355087, 30.901472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.992714, 32.165314, 30.944853>,  <38.226669, 31.849028, 31.017153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992714, 32.165314, 30.944853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046329, -0.255047, -0.965818,
		-0.809788, -0.556523, 0.185808,
		-0.584890, 0.790716, -0.180751,
		37.817245, 32.402527, 30.890627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549873, 31.551353, 30.640375>,  <38.226669, 31.849028, 31.017153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549873, 31.551353, 30.640375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.629303, 31.932350, 30.548002>,  <37.676960, 32.160950, 30.492579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.629303, 31.932350, 30.548002>,  <37.549873, 31.551353, 30.640375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629303, 31.932350, 30.548002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171091, -0.198320, -0.965089,
		-0.965037, 0.231151, 0.123582,
		0.198573, 0.952491, -0.230934,
		37.688873, 32.218098, 30.478722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049969, 31.739031, 30.033670>,  <37.549873, 31.551353, 30.640375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049969, 31.739031, 30.033670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.326180, 32.027885, 30.050146>,  <37.491905, 32.201199, 30.060032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.326180, 32.027885, 30.050146>,  <37.049969, 31.739031, 30.033670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326180, 32.027885, 30.050146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003719, 0.053397, -0.998567,
		-0.723298, 0.689689, 0.034186,
		0.690526, 0.722134, 0.041187,
		37.533337, 32.244526, 30.062502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777645, 32.284657, 29.634964>,  <37.049969, 31.739031, 30.033670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777645, 32.284657, 29.634964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.176735, 32.311245, 29.630293>,  <37.416187, 32.327198, 29.627491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.176735, 32.311245, 29.630293>,  <36.777645, 32.284657, 29.634964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176735, 32.311245, 29.630293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012859, 0.017395, -0.999766,
		-0.066253, 0.997637, 0.018211,
		0.997720, 0.066471, -0.011676,
		37.476051, 32.331188, 29.626789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897102, 32.835308, 29.204449>,  <36.777645, 32.284657, 29.634964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897102, 32.835308, 29.204449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.223598, 32.604527, 29.216263>,  <37.419495, 32.466057, 29.223351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.223598, 32.604527, 29.216263>,  <36.897102, 32.835308, 29.204449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223598, 32.604527, 29.216263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020633, -0.021977, -0.999546,
		0.577344, 0.816478, -0.006034,
		0.816240, -0.576957, 0.029534,
		37.468472, 32.431438, 29.225122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208851, 33.127220, 28.605686>,  <36.897102, 32.835308, 29.204449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208851, 33.127220, 28.605686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.399647, 32.790817, 28.707813>,  <37.514126, 32.588978, 28.769091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.399647, 32.790817, 28.707813>,  <37.208851, 33.127220, 28.605686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399647, 32.790817, 28.707813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162422, -0.201145, -0.966002,
		0.863769, 0.502246, 0.040652,
		0.476993, -0.841005, 0.255319,
		37.542744, 32.538517, 28.784409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966011, 33.091583, 28.256449>,  <37.208851, 33.127220, 28.605686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966011, 33.091583, 28.256449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.842884, 32.721634, 28.345760>,  <37.769009, 32.499664, 28.399347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.842884, 32.721634, 28.345760>,  <37.966011, 33.091583, 28.256449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842884, 32.721634, 28.345760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189559, -0.289583, -0.938195,
		0.932370, -0.246470, 0.264457,
		-0.307819, -0.924875, 0.223278,
		37.750538, 32.444172, 28.412745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364239, 32.687595, 28.013311>,  <37.966011, 33.091583, 28.256449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364239, 32.687595, 28.013311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.081890, 32.405888, 28.043642>,  <37.912479, 32.236862, 28.061840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.081890, 32.405888, 28.043642>,  <38.364239, 32.687595, 28.013311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081890, 32.405888, 28.043642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256165, -0.353614, -0.899631,
		0.660394, -0.615602, 0.430016,
		-0.705875, -0.704266, 0.075828,
		37.870129, 32.194607, 28.066391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624802, 32.179081, 27.679632>,  <38.364239, 32.687595, 28.013311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624802, 32.179081, 27.679632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.251698, 32.035152, 27.688421>,  <38.027836, 31.948795, 27.693695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.251698, 32.035152, 27.688421>,  <38.624802, 32.179081, 27.679632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251698, 32.035152, 27.688421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103906, -0.326724, -0.939391,
		0.345190, -0.873946, 0.342143,
		-0.932763, -0.359819, 0.021974,
		37.971870, 31.927206, 27.695013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662090, 31.366600, 27.580933>,  <38.624802, 32.179081, 27.679632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662090, 31.366600, 27.580933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.321461, 31.523077, 27.441339>,  <38.117085, 31.616964, 27.357584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.321461, 31.523077, 27.441339>,  <38.662090, 31.366600, 27.580933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321461, 31.523077, 27.441339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243900, -0.293620, -0.924283,
		-0.464045, -0.872212, 0.154627,
		-0.851573, 0.391196, -0.348985,
		38.065990, 31.640436, 27.336643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368870, 30.918726, 27.145914>,  <38.662090, 31.366600, 27.580933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368870, 30.918726, 27.145914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.155334, 31.237684, 27.033361>,  <38.027214, 31.429060, 26.965830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.155334, 31.237684, 27.033361>,  <38.368870, 30.918726, 27.145914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155334, 31.237684, 27.033361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121358, -0.257072, -0.958742,
		-0.836833, -0.545961, 0.040465,
		-0.533838, 0.797396, -0.281383,
		37.995182, 31.476904, 26.948946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846527, 30.594353, 26.735420>,  <38.368870, 30.918726, 27.145914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846527, 30.594353, 26.735420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.829906, 30.982233, 26.639130>,  <37.819935, 31.214962, 26.581354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.829906, 30.982233, 26.639130>,  <37.846527, 30.594353, 26.735420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829906, 30.982233, 26.639130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028042, -0.241973, -0.969878,
		-0.998743, -0.033550, 0.037246,
		-0.041552, 0.969703, -0.240728,
		37.817440, 31.273144, 26.566912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.175289, 30.756868, 26.209351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.451649, 31.043432, 26.170534>,  <37.617466, 31.215370, 26.147245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.451649, 31.043432, 26.170534>,  <37.175289, 30.756868, 26.209351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451649, 31.043432, 26.170534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098580, -0.226331, -0.969049,
		-0.716198, 0.659950, -0.226996,
		0.690900, 0.716408, -0.097040,
		37.658920, 31.258354, 26.141422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994301, 31.047308, 25.584646>,  <37.175289, 30.756868, 26.209351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994301, 31.047308, 25.584646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.372467, 31.163458, 25.643795>,  <37.599369, 31.233149, 25.679285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.372467, 31.163458, 25.643795>,  <36.994301, 31.047308, 25.584646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372467, 31.163458, 25.643795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246319, -0.339735, -0.907693,
		-0.213333, 0.894574, -0.392716,
		0.945419, 0.290374, 0.147874,
		37.656094, 31.250570, 25.688158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170048, 31.491507, 25.062553>,  <36.994301, 31.047308, 25.584646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170048, 31.491507, 25.062553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.524696, 31.356285, 25.188801>,  <37.737488, 31.275152, 25.264549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.524696, 31.356285, 25.188801>,  <37.170048, 31.491507, 25.062553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524696, 31.356285, 25.188801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222404, -0.286696, -0.931848,
		0.405500, 0.896396, -0.179008,
		0.886626, -0.338053, 0.315618,
		37.790684, 31.254869, 25.283485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614376, 31.728380, 24.626747>,  <37.170048, 31.491507, 25.062553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614376, 31.728380, 24.626747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.839378, 31.436176, 24.781639>,  <37.974380, 31.260855, 24.874575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.839378, 31.436176, 24.781639>,  <37.614376, 31.728380, 24.626747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839378, 31.436176, 24.781639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370717, -0.195792, -0.907874,
		0.739027, 0.654234, 0.160678,
		0.562502, -0.730509, 0.387231,
		38.008129, 31.217024, 24.897808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171463, 31.747189, 24.238577>,  <37.614376, 31.728380, 24.626747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171463, 31.747189, 24.238577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.201057, 31.387474, 24.410999>,  <38.218815, 31.171646, 24.514454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.201057, 31.387474, 24.410999>,  <38.171463, 31.747189, 24.238577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201057, 31.387474, 24.410999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494442, -0.342295, -0.798975,
		0.866055, 0.272250, 0.419318,
		0.073990, -0.899285, 0.431058,
		38.223255, 31.117689, 24.540318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869110, 31.479836, 24.120859>,  <38.171463, 31.747189, 24.238577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869110, 31.479836, 24.120859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.652512, 31.147524, 24.172384>,  <38.522552, 30.948137, 24.203299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.652512, 31.147524, 24.172384>,  <38.869110, 31.479836, 24.120859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652512, 31.147524, 24.172384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463868, -0.423031, -0.778377,
		0.701151, -0.361733, 0.614440,
		-0.541492, -0.830779, 0.128812,
		38.490063, 30.898291, 24.211027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315166, 30.823923, 23.974306>,  <38.869110, 31.479836, 24.120859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315166, 30.823923, 23.974306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.934929, 30.703081, 23.945717>,  <38.706787, 30.630577, 23.928562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.934929, 30.703081, 23.945717>,  <39.315166, 30.823923, 23.974306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934929, 30.703081, 23.945717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161880, -0.285912, -0.944484,
		0.264896, -0.909389, 0.320690,
		-0.950592, -0.302103, -0.071475,
		38.649750, 30.612450, 23.924274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372658, 30.160582, 23.786615>,  <39.315166, 30.823923, 23.974306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372658, 30.160582, 23.786615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.998920, 30.240295, 23.668438>,  <38.774677, 30.288124, 23.597532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.998920, 30.240295, 23.668438>,  <39.372658, 30.160582, 23.786615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998920, 30.240295, 23.668438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140473, -0.555954, -0.819257,
		-0.327517, -0.806970, 0.491459,
		-0.934345, 0.199284, -0.295442,
		38.718616, 30.300081, 23.579805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129845, 29.598070, 23.543343>,  <39.372658, 30.160582, 23.786615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129845, 29.598070, 23.543343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.890995, 29.868494, 23.370649>,  <38.747684, 30.030748, 23.267035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.890995, 29.868494, 23.370649>,  <39.129845, 29.598070, 23.543343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890995, 29.868494, 23.370649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077103, -0.487352, -0.869795,
		-0.798438, -0.552659, 0.238882,
		-0.597120, 0.676059, -0.431732,
		38.711861, 30.071312, 23.241129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838753, 29.236500, 23.061432>,  <39.129845, 29.598070, 23.543343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838753, 29.236500, 23.061432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.824600, 29.614031, 22.930017>,  <38.816109, 29.840549, 22.851168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.824600, 29.614031, 22.930017>,  <38.838753, 29.236500, 23.061432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824600, 29.614031, 22.930017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244213, -0.310611, -0.918630,
		-0.969076, -0.112737, -0.219505,
		-0.035383, 0.943828, -0.328537,
		38.813984, 29.897179, 22.831457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557831, 29.180525, 22.397779>,  <38.838753, 29.236500, 23.061432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557831, 29.180525, 22.397779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.749077, 29.530970, 22.422537>,  <38.863823, 29.741238, 22.437391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.749077, 29.530970, 22.422537>,  <38.557831, 29.180525, 22.397779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749077, 29.530970, 22.422537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266230, -0.077412, -0.960796,
		-0.836975, 0.475850, -0.270260,
		0.478116, 0.876113, 0.061894,
		38.892513, 29.793804, 22.441105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265430, 29.574791, 21.862059>,  <38.557831, 29.180525, 22.397779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265430, 29.574791, 21.862059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.643570, 29.693089, 21.916977>,  <38.870453, 29.764067, 21.949928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.643570, 29.693089, 21.916977>,  <38.265430, 29.574791, 21.862059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643570, 29.693089, 21.916977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122582, 0.067819, -0.990139,
		-0.302138, 0.952857, 0.027859,
		0.945350, 0.295744, 0.137294,
		38.927174, 29.781811, 21.958164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402691, 29.760603, 21.207991>,  <38.265430, 29.574791, 21.862059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402691, 29.760603, 21.207991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.761013, 29.828093, 21.372458>,  <38.976006, 29.868587, 21.471138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.761013, 29.828093, 21.372458>,  <38.402691, 29.760603, 21.207991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761013, 29.828093, 21.372458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412725, 0.027383, -0.910444,
		-0.164874, 0.985283, -0.045107,
		0.895810, 0.168725, 0.411165,
		39.029755, 29.878710, 21.495808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749794, 30.243906, 20.775219>,  <38.402691, 29.760603, 21.207991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749794, 30.243906, 20.775219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.019043, 30.024906, 20.974077>,  <39.180592, 29.893507, 21.093391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.019043, 30.024906, 20.974077>,  <38.749794, 30.243906, 20.775219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019043, 30.024906, 20.974077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461548, -0.214238, -0.860858,
		0.577826, 0.808917, 0.108488,
		0.673120, -0.547498, 0.497146,
		39.220978, 29.860657, 21.123220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465443, 30.572004, 20.715393>,  <38.749794, 30.243906, 20.775219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465443, 30.572004, 20.715393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.518127, 30.190287, 20.822702>,  <39.549740, 29.961256, 20.887087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.518127, 30.190287, 20.822702>,  <39.465443, 30.572004, 20.715393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518127, 30.190287, 20.822702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538990, -0.158184, -0.827326,
		0.831950, 0.253567, 0.493520,
		0.131716, -0.954296, 0.268272,
		39.557644, 29.903997, 20.903183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174305, 30.470877, 20.715467>,  <39.465443, 30.572004, 20.715393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174305, 30.470877, 20.715467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.024467, 30.100163, 20.704538>,  <39.934566, 29.877733, 20.697981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.024467, 30.100163, 20.704538>,  <40.174305, 30.470877, 20.715467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024467, 30.100163, 20.704538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660158, -0.245901, -0.709735,
		0.651053, -0.283901, 0.703939,
		-0.374594, -0.926786, -0.027325,
		39.912090, 29.822126, 20.696341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735001, 30.025351, 20.818016>,  <40.174305, 30.470877, 20.715467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735001, 30.025351, 20.818016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.456142, 29.807608, 20.631399>,  <40.288826, 29.676962, 20.519428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.456142, 29.807608, 20.631399>,  <40.735001, 30.025351, 20.818016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456142, 29.807608, 20.631399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683475, -0.308175, -0.661733,
		0.216442, -0.780195, 0.586898,
		-0.697147, -0.544357, -0.466542,
		40.246998, 29.644300, 20.491436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027237, 29.350288, 20.574890>,  <40.735001, 30.025351, 20.818016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027237, 29.350288, 20.574890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.695930, 29.349463, 20.350760>,  <40.497147, 29.348967, 20.216280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.695930, 29.349463, 20.350760>,  <41.027237, 29.350288, 20.574890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695930, 29.349463, 20.350760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455206, -0.585596, -0.670720,
		-0.326742, -0.810600, 0.485970,
		-0.828268, -0.002063, -0.560329,
		40.447449, 29.348843, 20.182661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915791, 28.651623, 20.402498>,  <41.027237, 29.350288, 20.574890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915791, 28.651623, 20.402498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.686565, 28.851921, 20.143007>,  <40.549030, 28.972099, 19.987312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.686565, 28.851921, 20.143007>,  <40.915791, 28.651623, 20.402498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686565, 28.851921, 20.143007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457186, -0.461626, -0.760186,
		-0.680130, -0.732226, 0.035609,
		-0.573066, 0.500745, -0.648730,
		40.514645, 29.002144, 19.948389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840565, 28.143162, 19.933428>,  <40.915791, 28.651623, 20.402498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840565, 28.143162, 19.933428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.768623, 28.482573, 19.734367>,  <40.725456, 28.686218, 19.614931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.768623, 28.482573, 19.734367>,  <40.840565, 28.143162, 19.933428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768623, 28.482573, 19.734367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556075, -0.329611, -0.762980,
		-0.811439, -0.413957, -0.412561,
		-0.179856, 0.848526, -0.497650,
		40.714668, 28.737131, 19.585072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777287, 27.935888, 19.223312>,  <40.840565, 28.143162, 19.933428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777287, 27.935888, 19.223312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.850609, 28.323675, 19.158155>,  <40.894604, 28.556347, 19.119062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.850609, 28.323675, 19.158155>,  <40.777287, 27.935888, 19.223312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850609, 28.323675, 19.158155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506272, -0.235134, -0.829699,
		-0.842666, 0.069625, -0.533916,
		0.183309, 0.969466, -0.162891,
		40.905602, 28.614515, 19.109287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500278, 28.085108, 18.467430>,  <40.777287, 27.935888, 19.223312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500278, 28.085108, 18.467430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.770554, 28.344019, 18.608553>,  <40.932720, 28.499367, 18.693226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.770554, 28.344019, 18.608553>,  <40.500278, 28.085108, 18.467430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770554, 28.344019, 18.608553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569140, -0.153865, -0.807716,
		-0.468533, 0.746563, -0.472357,
		0.675690, 0.647279, 0.352808,
		40.973259, 28.538202, 18.714396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602810, 28.632544, 17.935167>,  <40.500278, 28.085108, 18.467430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602810, 28.632544, 17.935167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.917107, 28.583496, 18.177677>,  <41.105686, 28.554068, 18.323183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.917107, 28.583496, 18.177677>,  <40.602810, 28.632544, 17.935167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917107, 28.583496, 18.177677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550899, -0.306979, -0.776063,
		0.281275, 0.943784, -0.173656,
		0.785745, -0.122621, 0.606275,
		41.152828, 28.546709, 18.359560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981491, 29.055332, 18.067995>,  <40.602810, 28.632544, 17.935167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981491, 29.055332, 18.067995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.042835, 28.683592, 17.933659>,  <40.079643, 28.460548, 17.853058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.042835, 28.683592, 17.933659>,  <39.981491, 29.055332, 18.067995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042835, 28.683592, 17.933659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688888, -0.143109, 0.710601,
		-0.708458, -0.340336, 0.618271,
		0.153362, -0.929350, -0.335840,
		40.088844, 28.404787, 17.832907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346004, 28.786041, 17.635756>,  <39.981491, 29.055332, 18.067995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346004, 28.786041, 17.635756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.044857, 28.683270, 17.393377>,  <38.864166, 28.621607, 17.247950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.044857, 28.683270, 17.393377>,  <39.346004, 28.786041, 17.635756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044857, 28.683270, 17.393377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619449, 0.587723, 0.520447,
		0.222410, 0.767182, -0.601636,
		-0.752873, -0.256930, -0.605945,
		38.818996, 28.606190, 17.211594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964935, 29.553596, 17.462132>,  <39.346004, 28.786041, 17.635756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964935, 29.553596, 17.462132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.706039, 29.259472, 17.381737>,  <38.550701, 29.082998, 17.333500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.706039, 29.259472, 17.381737>,  <38.964935, 29.553596, 17.462132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706039, 29.259472, 17.381737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698418, 0.466387, 0.542859,
		-0.305431, 0.491735, -0.815419,
		-0.647244, -0.735309, -0.200988,
		38.511868, 29.038879, 17.321440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446293, 29.890465, 17.251545>,  <38.964935, 29.553596, 17.462132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446293, 29.890465, 17.251545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.313007, 29.528866, 17.358696>,  <38.233036, 29.311907, 17.422987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.313007, 29.528866, 17.358696>,  <38.446293, 29.890465, 17.251545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313007, 29.528866, 17.358696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634296, 0.425139, 0.645698,
		-0.697595, 0.045239, -0.715063,
		-0.333212, -0.903997, 0.267879,
		38.213043, 29.257668, 17.439060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692978, 29.916689, 17.307131>,  <38.446293, 29.890465, 17.251545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692978, 29.916689, 17.307131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.799244, 29.612324, 17.543921>,  <37.863003, 29.429705, 17.685993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.799244, 29.612324, 17.543921>,  <37.692978, 29.916689, 17.307131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799244, 29.612324, 17.543921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480974, 0.427550, 0.765418,
		-0.835515, -0.488068, -0.252395,
		0.265665, -0.760914, 0.591973,
		37.878944, 29.384050, 17.721512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080868, 29.789835, 17.751854>,  <37.692978, 29.916689, 17.307131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080868, 29.789835, 17.751854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.409321, 29.640932, 17.924908>,  <37.606392, 29.551590, 18.028740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.409321, 29.640932, 17.924908>,  <37.080868, 29.789835, 17.751854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409321, 29.640932, 17.924908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327413, 0.313655, 0.891303,
		-0.467492, -0.873524, 0.135669,
		0.821128, -0.372257, 0.432634,
		37.655659, 29.529255, 18.054697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715416, 29.552631, 18.466951>,  <37.080868, 29.789835, 17.751854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715416, 29.552631, 18.466951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.110863, 29.551029, 18.527124>,  <37.348129, 29.550068, 18.563229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.110863, 29.551029, 18.527124>,  <36.715416, 29.552631, 18.466951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110863, 29.551029, 18.527124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132331, 0.452846, 0.881714,
		-0.071653, -0.891580, 0.447159,
		0.988613, -0.004004, 0.150432,
		37.407448, 29.549828, 18.572254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802765, 29.234972, 19.046028>,  <36.715416, 29.552631, 18.466951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802765, 29.234972, 19.046028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.128616, 29.461382, 18.995443>,  <37.324127, 29.597227, 18.965092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.128616, 29.461382, 18.995443>,  <36.802765, 29.234972, 19.046028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128616, 29.461382, 18.995443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107397, 0.361493, 0.926169,
		0.569950, -0.740904, 0.355273,
		0.814631, 0.566025, -0.126462,
		37.373005, 29.631189, 18.957504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004940, 29.196316, 19.719221>,  <36.802765, 29.234972, 19.046028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004940, 29.196316, 19.719221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.243725, 29.477482, 19.564537>,  <37.386997, 29.646181, 19.471727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.243725, 29.477482, 19.564537>,  <37.004940, 29.196316, 19.719221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243725, 29.477482, 19.564537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166781, 0.362758, 0.916837,
		0.784743, -0.611812, 0.099319,
		0.596961, 0.702917, -0.386711,
		37.422813, 29.688356, 19.448524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539860, 29.357862, 20.190697>,  <37.004940, 29.196316, 19.719221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539860, 29.357862, 20.190697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.507576, 29.698452, 19.983438>,  <37.488205, 29.902805, 19.859083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.507576, 29.698452, 19.983438>,  <37.539860, 29.357862, 20.190697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507576, 29.698452, 19.983438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133300, 0.505953, 0.852199,
		0.987784, 0.137853, 0.072665,
		-0.080713, 0.851474, -0.518148,
		37.483360, 29.953894, 19.827993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857883, 29.883833, 20.517700>,  <37.539860, 29.357862, 20.190697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857883, 29.883833, 20.517700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.610977, 30.120813, 20.310629>,  <37.462833, 30.263000, 20.186386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.610977, 30.120813, 20.310629>,  <37.857883, 29.883833, 20.517700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610977, 30.120813, 20.310629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292404, 0.438106, 0.850037,
		0.730401, 0.676068, -0.097192,
		-0.617263, 0.592449, -0.517678,
		37.425797, 30.298548, 20.155325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974651, 30.479673, 20.776854>,  <37.857883, 29.883833, 20.517700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974651, 30.479673, 20.776854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.614220, 30.537653, 20.613365>,  <37.397961, 30.572441, 20.515272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.614220, 30.537653, 20.613365>,  <37.974651, 30.479673, 20.776854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614220, 30.537653, 20.613365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350819, 0.310393, 0.883506,
		0.254927, 0.939492, -0.228836,
		-0.901076, 0.144949, -0.408720,
		37.343895, 30.581139, 20.490749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810738, 31.136112, 20.812305>,  <37.974651, 30.479673, 20.776854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810738, 31.136112, 20.812305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.456707, 30.953764, 20.774740>,  <37.244289, 30.844355, 20.752201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.456707, 30.953764, 20.774740>,  <37.810738, 31.136112, 20.812305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456707, 30.953764, 20.774740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219386, 0.230653, 0.947982,
		-0.410495, 0.859641, -0.304157,
		-0.885079, -0.455869, -0.093911,
		37.191185, 30.817003, 20.746567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360355, 31.643309, 21.035551>,  <37.810738, 31.136112, 20.812305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360355, 31.643309, 21.035551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.124725, 31.320269, 21.046696>,  <36.983349, 31.126444, 21.053383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.124725, 31.320269, 21.046696>,  <37.360355, 31.643309, 21.035551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124725, 31.320269, 21.046696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318100, 0.263446, 0.910719,
		-0.742837, 0.527615, -0.412086,
		-0.589072, -0.807600, 0.027864,
		36.948006, 31.077988, 21.055056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748428, 31.851812, 21.294109>,  <37.360355, 31.643309, 21.035551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748428, 31.851812, 21.294109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.753483, 31.458784, 21.368290>,  <36.756516, 31.222967, 21.412798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.753483, 31.458784, 21.368290>,  <36.748428, 31.851812, 21.294109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753483, 31.458784, 21.368290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446934, 0.160361, 0.880076,
		-0.894477, -0.094005, -0.437119,
		0.012635, -0.982572, 0.185453,
		36.757275, 31.164013, 21.423925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128689, 31.817919, 21.608528>,  <36.748428, 31.851812, 21.294109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128689, 31.817919, 21.608528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.295876, 31.466290, 21.700211>,  <36.396187, 31.255312, 21.755220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.295876, 31.466290, 21.700211>,  <36.128689, 31.817919, 21.608528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295876, 31.466290, 21.700211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363631, 0.069323, 0.928960,
		-0.832514, -0.471618, -0.290684,
		0.417963, -0.879074, 0.229208,
		36.421265, 31.202568, 21.768972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601658, 31.474356, 21.959898>,  <36.128689, 31.817919, 21.608528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601658, 31.474356, 21.959898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.948032, 31.313248, 22.078514>,  <36.155857, 31.216583, 22.149683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.948032, 31.313248, 22.078514>,  <35.601658, 31.474356, 21.959898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948032, 31.313248, 22.078514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351437, -0.068112, 0.933730,
		-0.355883, -0.912762, -0.200530,
		0.865933, -0.402772, 0.296539,
		36.207813, 31.192415, 22.167477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430416, 30.819908, 22.349514>,  <35.601658, 31.474356, 21.959898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430416, 30.819908, 22.349514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.793709, 30.949604, 22.455330>,  <36.011684, 31.027422, 22.518820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.793709, 30.949604, 22.455330>,  <35.430416, 30.819908, 22.349514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793709, 30.949604, 22.455330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285168, 0.016910, 0.958328,
		0.306256, -0.945823, 0.107821,
		0.908233, 0.324241, 0.264540,
		36.066177, 31.046877, 22.534691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644203, 30.367250, 22.858215>,  <35.430416, 30.819908, 22.349514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644203, 30.367250, 22.858215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830364, 30.716146, 22.918350>,  <35.942062, 30.925484, 22.954432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830364, 30.716146, 22.918350>,  <35.644203, 30.367250, 22.858215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830364, 30.716146, 22.918350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245963, -0.035711, 0.968621,
		0.850237, -0.487776, 0.197918,
		0.465402, 0.872238, 0.150338,
		35.969986, 30.977818, 22.963451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980225, 30.174932, 23.467297>,  <35.644203, 30.367250, 22.858215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980225, 30.174932, 23.467297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.961315, 30.572979, 23.432636>,  <35.949970, 30.811808, 23.411840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.961315, 30.572979, 23.432636>,  <35.980225, 30.174932, 23.467297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961315, 30.572979, 23.432636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387171, 0.061710, 0.919941,
		0.920795, 0.077041, 0.382363,
		-0.047278, 0.995117, -0.086650,
		35.947132, 30.871513, 23.406641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058708, 30.435764, 24.152531>,  <35.980225, 30.174932, 23.467297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058708, 30.435764, 24.152531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.912746, 30.752413, 23.956497>,  <35.825169, 30.942402, 23.838877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.912746, 30.752413, 23.956497>,  <36.058708, 30.435764, 24.152531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912746, 30.752413, 23.956497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453848, 0.308369, 0.836021,
		0.812939, 0.527488, 0.246752,
		-0.364900, 0.791622, -0.490084,
		35.803276, 30.989899, 23.809471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.117661, 31.391556, 29.050922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.974274, 31.756062, 28.969830>,  <37.888241, 31.974764, 28.921173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.974274, 31.756062, 28.969830>,  <38.117661, 31.391556, 29.050922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974274, 31.756062, 28.969830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126281, 0.262501, 0.956633,
		0.924961, 0.317321, -0.209174,
		-0.358468, 0.911263, -0.202732,
		37.866734, 32.029442, 28.909010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573956, 31.813932, 29.342279>,  <38.117661, 31.391556, 29.050922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573956, 31.813932, 29.342279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.249340, 32.042217, 29.292166>,  <38.054569, 32.179188, 29.262096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.249340, 32.042217, 29.292166>,  <38.573956, 31.813932, 29.342279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249340, 32.042217, 29.292166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087273, 0.330410, 0.939794,
		0.577746, 0.751744, -0.317948,
		-0.811538, 0.570710, -0.125286,
		38.005878, 32.213428, 29.254580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795376, 32.457039, 29.586048>,  <38.573956, 31.813932, 29.342279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795376, 32.457039, 29.586048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.396267, 32.434055, 29.599621>,  <38.156803, 32.420265, 29.607763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.396267, 32.434055, 29.599621>,  <38.795376, 32.457039, 29.586048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396267, 32.434055, 29.599621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019396, 0.236777, 0.971370,
		-0.063852, 0.969863, -0.235134,
		-0.997771, -0.057463, 0.033930,
		38.096935, 32.416817, 29.609800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464428, 33.090218, 29.873911>,  <38.795376, 32.457039, 29.586048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464428, 33.090218, 29.873911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.187012, 32.810116, 29.941601>,  <38.020561, 32.642056, 29.982214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.187012, 32.810116, 29.941601>,  <38.464428, 33.090218, 29.873911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187012, 32.810116, 29.941601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002374, 0.237120, 0.971477,
		-0.720412, 0.673359, -0.166115,
		-0.693543, -0.700258, 0.169225,
		37.978951, 32.600037, 29.992369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895809, 33.444046, 30.164160>,  <38.464428, 33.090218, 29.873911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895809, 33.444046, 30.164160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.808880, 33.066608, 30.264078>,  <37.756721, 32.840145, 30.324030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.808880, 33.066608, 30.264078>,  <37.895809, 33.444046, 30.164160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808880, 33.066608, 30.264078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284430, 0.306026, 0.908541,
		-0.933739, 0.126399, -0.334894,
		-0.217326, -0.943595, 0.249797,
		37.743683, 32.783531, 30.339018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158543, 33.464520, 30.424124>,  <37.895809, 33.444046, 30.164160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158543, 33.464520, 30.424124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.344330, 33.140278, 30.566776>,  <37.455803, 32.945732, 30.652367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.344330, 33.140278, 30.566776>,  <37.158543, 33.464520, 30.424124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344330, 33.140278, 30.566776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294364, 0.238490, 0.925458,
		-0.835234, -0.534827, -0.127842,
		0.464471, -0.810606, 0.356629,
		37.483669, 32.897095, 30.673765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709213, 33.205662, 30.951481>,  <37.158543, 33.464520, 30.424124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709213, 33.205662, 30.951481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.065281, 33.040462, 31.028460>,  <37.278923, 32.941345, 31.074646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.065281, 33.040462, 31.028460>,  <36.709213, 33.205662, 30.951481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065281, 33.040462, 31.028460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187407, 0.053116, 0.980845,
		-0.415305, -0.909184, -0.030116,
		0.890169, -0.412994, 0.192446,
		37.332333, 32.916565, 31.086193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635036, 32.547920, 31.256187>,  <36.709213, 33.205662, 30.951481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635036, 32.547920, 31.256187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.987495, 32.697315, 31.372185>,  <37.198971, 32.786953, 31.441784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.987495, 32.697315, 31.372185>,  <36.635036, 32.547920, 31.256187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987495, 32.697315, 31.372185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350159, 0.103249, 0.930983,
		0.317765, -0.921873, 0.221756,
		0.881143, 0.373484, 0.289993,
		37.251839, 32.809361, 31.459183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674507, 32.335526, 31.947489>,  <36.635036, 32.547920, 31.256187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674507, 32.335526, 31.947489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.985001, 32.587669, 31.951590>,  <37.171299, 32.738956, 31.954050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.985001, 32.587669, 31.951590>,  <36.674507, 32.335526, 31.947489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985001, 32.587669, 31.951590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082518, 0.085465, 0.992918,
		0.625017, -0.771586, 0.118357,
		0.776237, 0.630358, 0.010253,
		37.217873, 32.776775, 31.954666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956791, 32.147099, 32.506840>,  <36.674507, 32.335526, 31.947489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956791, 32.147099, 32.506840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.061569, 32.525940, 32.432674>,  <37.124435, 32.753246, 32.388176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.061569, 32.525940, 32.432674>,  <36.956791, 32.147099, 32.506840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061569, 32.525940, 32.432674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049497, 0.205057, 0.977498,
		0.963813, -0.246871, 0.100592,
		0.261943, 0.947104, -0.185418,
		37.140152, 32.810070, 32.377048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282314, 32.361492, 33.098236>,  <36.956791, 32.147099, 32.506840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282314, 32.361492, 33.098236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.232727, 32.713852, 32.915520>,  <37.202976, 32.925266, 32.805889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.232727, 32.713852, 32.915520>,  <37.282314, 32.361492, 33.098236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232727, 32.713852, 32.915520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127277, 0.442420, 0.887730,
		0.984090, 0.168187, 0.057273,
		-0.123966, 0.880896, -0.456787,
		37.195538, 32.978119, 32.778484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728603, 32.757553, 33.356606>,  <37.282314, 32.361492, 33.098236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728603, 32.757553, 33.356606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.440903, 32.991936, 33.207302>,  <37.268280, 33.132565, 33.117722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.440903, 32.991936, 33.207302>,  <37.728603, 32.757553, 33.356606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440903, 32.991936, 33.207302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265625, 0.264502, 0.927083,
		0.641961, 0.765956, -0.034599,
		-0.719256, 0.585961, -0.373257,
		37.225124, 33.167725, 33.095325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802673, 33.605217, 33.375477>,  <37.728603, 32.757553, 33.356606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802673, 33.605217, 33.375477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.437492, 33.449474, 33.424347>,  <37.218384, 33.356030, 33.453667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.437492, 33.449474, 33.424347>,  <37.802673, 33.605217, 33.375477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437492, 33.449474, 33.424347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057314, 0.174075, 0.983063,
		-0.404024, 0.904490, -0.136606,
		-0.912951, -0.389352, 0.122170,
		37.163609, 33.332668, 33.460999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771347, 33.825977, 34.033279>,  <37.802673, 33.605217, 33.375477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771347, 33.825977, 34.033279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.426815, 33.631065, 33.975769>,  <37.220097, 33.514118, 33.941261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.426815, 33.631065, 33.975769>,  <37.771347, 33.825977, 34.033279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426815, 33.631065, 33.975769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060411, -0.182759, 0.981300,
		-0.504449, 0.853905, 0.127978,
		-0.861326, -0.487284, -0.143778,
		37.168419, 33.484879, 33.932636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302513, 34.072609, 33.553932>,  <37.771347, 33.825977, 34.033279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302513, 34.072609, 33.553932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.558048, 34.376064, 33.605087>,  <38.711369, 34.558136, 33.635780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.558048, 34.376064, 33.605087>,  <38.302513, 34.072609, 33.553932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558048, 34.376064, 33.605087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353909, -0.142192, -0.924408,
		-0.683104, 0.635810, -0.359326,
		0.638841, 0.758635, 0.127887,
		38.749699, 34.603657, 33.643452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160652, 34.538548, 32.961044>,  <38.302513, 34.072609, 33.553932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160652, 34.538548, 32.961044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.524231, 34.635044, 33.097057>,  <38.742378, 34.692944, 33.178665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.524231, 34.635044, 33.097057>,  <38.160652, 34.538548, 32.961044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524231, 34.635044, 33.097057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348224, 0.009206, -0.937366,
		-0.229262, 0.970422, -0.075638,
		0.908944, 0.241241, 0.340035,
		38.796913, 34.707417, 33.199066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362671, 35.138779, 32.550838>,  <38.160652, 34.538548, 32.961044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362671, 35.138779, 32.550838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.685684, 34.975708, 32.721340>,  <38.879490, 34.877865, 32.823643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.685684, 34.975708, 32.721340>,  <38.362671, 35.138779, 32.550838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685684, 34.975708, 32.721340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417838, -0.114671, -0.901256,
		0.416303, 0.905896, 0.077745,
		0.807529, -0.407680, 0.426256,
		38.927944, 34.853405, 32.849216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899204, 35.548107, 32.242950>,  <38.362671, 35.138779, 32.550838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899204, 35.548107, 32.242950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.042671, 35.190956, 32.351860>,  <39.128754, 34.976665, 32.417206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.042671, 35.190956, 32.351860>,  <38.899204, 35.548107, 32.242950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042671, 35.190956, 32.351860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474290, -0.076906, -0.877003,
		0.803993, 0.443691, 0.395897,
		0.358672, -0.892874, 0.272270,
		39.150272, 34.923096, 32.433540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557728, 35.600056, 32.024574>,  <38.899204, 35.548107, 32.242950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557728, 35.600056, 32.024574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.517151, 35.205101, 32.073193>,  <39.492805, 34.968128, 32.102364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.517151, 35.205101, 32.073193>,  <39.557728, 35.600056, 32.024574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517151, 35.205101, 32.073193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447275, -0.154396, -0.880969,
		0.888626, -0.035000, 0.457296,
		-0.101438, -0.987389, 0.121546,
		39.486721, 34.908886, 32.109657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213547, 35.354523, 31.749037>,  <39.557728, 35.600056, 32.024574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213547, 35.354523, 31.749037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.952583, 35.051929, 31.767380>,  <39.796005, 34.870373, 31.778385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.952583, 35.051929, 31.767380>,  <40.213547, 35.354523, 31.749037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952583, 35.051929, 31.767380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244794, -0.267608, -0.931913,
		0.717247, -0.596759, 0.359771,
		-0.652405, -0.756482, 0.045858,
		39.756863, 34.824986, 31.781137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621586, 34.748531, 31.423264>,  <40.213547, 35.354523, 31.749037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621586, 34.748531, 31.423264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.231823, 34.659771, 31.437590>,  <39.997963, 34.606514, 31.446186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.231823, 34.659771, 31.437590>,  <40.621586, 34.748531, 31.423264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231823, 34.659771, 31.437590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021330, -0.249909, -0.968034,
		0.223755, -0.942500, 0.248247,
		-0.974412, -0.221898, 0.035815,
		39.939499, 34.593201, 31.448334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586742, 34.053802, 31.148531>,  <40.621586, 34.748531, 31.423264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586742, 34.053802, 31.148531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.226803, 34.221252, 31.099485>,  <40.010841, 34.321720, 31.070059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.226803, 34.221252, 31.099485>,  <40.586742, 34.053802, 31.148531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226803, 34.221252, 31.099485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042425, -0.363748, -0.930531,
		-0.434143, -0.832131, 0.345077,
		-0.899844, 0.418623, -0.122615,
		39.956848, 34.346840, 31.062700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273300, 33.577602, 30.828711>,  <40.586742, 34.053802, 31.148531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273300, 33.577602, 30.828711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.076828, 33.918144, 30.755014>,  <39.958946, 34.122467, 30.710796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.076828, 33.918144, 30.755014>,  <40.273300, 33.577602, 30.828711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076828, 33.918144, 30.755014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182319, -0.307309, -0.933981,
		-0.851766, -0.425159, 0.306161,
		-0.491177, 0.851352, -0.184241,
		39.929474, 34.173550, 30.699741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703865, 33.463619, 30.476233>,  <40.273300, 33.577602, 30.828711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703865, 33.463619, 30.476233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.732384, 33.855316, 30.400328>,  <39.749493, 34.090332, 30.354784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.732384, 33.855316, 30.400328>,  <39.703865, 33.463619, 30.476233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732384, 33.855316, 30.400328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141823, -0.178363, -0.973691,
		-0.987321, 0.096331, 0.126162,
		0.071294, 0.979238, -0.189763,
		39.753773, 34.149086, 30.343399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246456, 33.566067, 29.992188>,  <39.703865, 33.463619, 30.476233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246456, 33.566067, 29.992188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.474583, 33.889179, 29.932545>,  <39.611458, 34.083046, 29.896759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.474583, 33.889179, 29.932545>,  <39.246456, 33.566067, 29.992188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474583, 33.889179, 29.932545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081768, -0.124792, -0.988808,
		-0.817346, 0.576124, -0.005120,
		0.570315, 0.807779, -0.149107,
		39.645676, 34.131512, 29.887814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947205, 33.812145, 29.432135>,  <39.246456, 33.566067, 29.992188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947205, 33.812145, 29.432135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.306129, 33.986622, 29.459167>,  <39.521484, 34.091309, 29.475388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.306129, 33.986622, 29.459167>,  <38.947205, 33.812145, 29.432135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306129, 33.986622, 29.459167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086159, -0.022921, -0.996018,
		-0.432902, 0.899563, -0.058149,
		0.897314, 0.436188, 0.067583,
		39.575325, 34.117477, 29.479443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947033, 34.302593, 28.854137>,  <38.947205, 33.812145, 29.432135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947033, 34.302593, 28.854137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.317429, 34.192566, 28.957582>,  <39.539665, 34.126549, 29.019650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.317429, 34.192566, 28.957582>,  <38.947033, 34.302593, 28.854137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317429, 34.192566, 28.957582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253265, -0.055434, -0.965807,
		0.279995, 0.959826, 0.018333,
		0.925991, -0.275064, 0.258612,
		39.595226, 34.110046, 29.035166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351917, 34.649082, 28.351465>,  <38.947033, 34.302593, 28.854137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351917, 34.649082, 28.351465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.579441, 34.364964, 28.517323>,  <39.715958, 34.194492, 28.616837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.579441, 34.364964, 28.517323>,  <39.351917, 34.649082, 28.351465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579441, 34.364964, 28.517323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306610, -0.284675, -0.908268,
		0.763179, 0.643768, 0.055858,
		0.568813, -0.710297, 0.414644,
		39.750084, 34.151875, 28.641716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765862, 35.376400, 28.321354>,  <39.351917, 34.649082, 28.351465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765862, 35.376400, 28.321354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.645821, 35.682251, 28.093218>,  <39.573795, 35.865761, 27.956337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.645821, 35.682251, 28.093218>,  <39.765862, 35.376400, 28.321354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645821, 35.682251, 28.093218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248329, 0.514661, 0.820644,
		0.921018, 0.387905, 0.035430,
		-0.300098, 0.764626, -0.570340,
		39.555790, 35.911640, 27.922115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983494, 36.024811, 28.606285>,  <39.765862, 35.376400, 28.321354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983494, 36.024811, 28.606285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.681850, 36.141357, 28.370852>,  <39.500866, 36.211285, 28.229591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.681850, 36.141357, 28.370852>,  <39.983494, 36.024811, 28.606285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681850, 36.141357, 28.370852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459431, 0.406376, 0.789798,
		0.469307, 0.866005, -0.172588,
		-0.754104, 0.291366, -0.588585,
		39.455620, 36.228767, 28.194277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831821, 36.728874, 28.758278>,  <39.983494, 36.024811, 28.606285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831821, 36.728874, 28.758278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.492508, 36.568958, 28.619375>,  <39.288921, 36.473007, 28.536034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.492508, 36.568958, 28.619375>,  <39.831821, 36.728874, 28.758278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492508, 36.568958, 28.619375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527731, 0.583991, 0.616810,
		-0.043800, 0.706487, -0.706370,
		-0.848282, -0.399789, -0.347257,
		39.238022, 36.449020, 28.515198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332783, 37.379787, 28.611828>,  <39.831821, 36.728874, 28.758278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332783, 37.379787, 28.611828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.117325, 37.045010, 28.650581>,  <38.988052, 36.844143, 28.673834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.117325, 37.045010, 28.650581>,  <39.332783, 37.379787, 28.611828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117325, 37.045010, 28.650581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678320, 0.498986, 0.539346,
		-0.499748, 0.224795, -0.836492,
		-0.538640, -0.836947, 0.096884,
		38.955734, 36.793926, 28.679647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733379, 37.665810, 28.784199>,  <39.332783, 37.379787, 28.611828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733379, 37.665810, 28.784199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.655563, 37.277275, 28.838829>,  <38.608875, 37.044155, 28.871607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.655563, 37.277275, 28.838829>,  <38.733379, 37.665810, 28.784199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655563, 37.277275, 28.838829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682042, 0.234017, 0.692859,
		-0.704963, 0.041638, -0.708020,
		-0.194538, -0.971340, 0.136575,
		38.597202, 36.985874, 28.879801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103199, 37.551373, 28.584112>,  <38.733379, 37.665810, 28.784199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103199, 37.551373, 28.584112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.199299, 37.262875, 28.843987>,  <38.256958, 37.089775, 28.999910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.199299, 37.262875, 28.843987>,  <38.103199, 37.551373, 28.584112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199299, 37.262875, 28.843987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857959, 0.155308, 0.489680,
		-0.454079, -0.675046, -0.581485,
		0.240247, -0.721243, 0.649684,
		38.271374, 37.046501, 29.038891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511829, 37.174927, 28.715406>,  <38.103199, 37.551373, 28.584112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511829, 37.174927, 28.715406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.722164, 37.127357, 29.052299>,  <37.848366, 37.098816, 29.254435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.722164, 37.127357, 29.052299>,  <37.511829, 37.174927, 28.715406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722164, 37.127357, 29.052299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843435, 0.055229, 0.534385,
		-0.110068, -0.991366, -0.071265,
		0.525835, -0.118926, 0.842231,
		37.879913, 37.091679, 29.304970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025223, 36.844212, 29.146355>,  <37.511829, 37.174927, 28.715406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025223, 36.844212, 29.146355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.299774, 36.961590, 29.412521>,  <37.464504, 37.032017, 29.572222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.299774, 36.961590, 29.412521>,  <37.025223, 36.844212, 29.146355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299774, 36.961590, 29.412521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708368, 0.062633, 0.703059,
		0.164636, -0.953920, 0.250860,
		0.686375, 0.293450, 0.665415,
		37.505688, 37.049625, 29.612146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893997, 36.540779, 29.776457>,  <37.025223, 36.844212, 29.146355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893997, 36.540779, 29.776457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.130898, 36.833469, 29.911407>,  <37.273037, 37.009083, 29.992378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.130898, 36.833469, 29.911407>,  <36.893997, 36.540779, 29.776457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130898, 36.833469, 29.911407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664988, 0.207430, 0.717470,
		0.455009, -0.649271, 0.609438,
		0.592248, 0.731724, 0.337375,
		37.308571, 37.052986, 30.012621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929878, 36.549488, 30.554890>,  <36.893997, 36.540779, 29.776457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929878, 36.549488, 30.554890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.063877, 36.917629, 30.474157>,  <37.144276, 37.138512, 30.425718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.063877, 36.917629, 30.474157>,  <36.929878, 36.549488, 30.554890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063877, 36.917629, 30.474157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572762, 0.368997, 0.731973,
		0.748146, -0.129606, 0.650753,
		0.334994, 0.920350, -0.201830,
		37.164375, 37.193733, 30.413609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412762, 36.804684, 31.134571>,  <36.929878, 36.549488, 30.554890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412762, 36.804684, 31.134571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.271427, 37.131695, 30.952669>,  <37.186626, 37.327900, 30.843527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.271427, 37.131695, 30.952669>,  <37.412762, 36.804684, 31.134571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271427, 37.131695, 30.952669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519793, 0.232598, 0.822018,
		0.777795, 0.526832, 0.342757,
		-0.353341, 0.817525, -0.454757,
		37.165424, 37.376953, 30.816242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547909, 37.341206, 31.646503>,  <37.412762, 36.804684, 31.134571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547909, 37.341206, 31.646503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.251560, 37.458797, 31.404945>,  <37.073753, 37.529354, 31.260010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.251560, 37.458797, 31.404945>,  <37.547909, 37.341206, 31.646503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251560, 37.458797, 31.404945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570354, 0.199454, 0.796815,
		0.354696, 0.934770, 0.019902,
		-0.740869, 0.293979, -0.603895,
		37.029301, 37.546989, 31.223778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.361904, 34.909798, 24.942015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022411, 35.048050, 24.781923>,  <40.818714, 35.131001, 24.685867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022411, 35.048050, 24.781923>,  <41.361904, 34.909798, 24.942015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022411, 35.048050, 24.781923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219982, 0.457485, 0.861577,
		0.480889, 0.819295, -0.312251,
		-0.848736, 0.345633, -0.400230,
		40.767792, 35.151741, 24.661854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233215, 35.683262, 25.095987>,  <41.361904, 34.909798, 24.942015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233215, 35.683262, 25.095987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871159, 35.551773, 24.988165>,  <40.653923, 35.472881, 24.923471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871159, 35.551773, 24.988165>,  <41.233215, 35.683262, 25.095987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871159, 35.551773, 24.988165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372076, 0.305901, 0.876347,
		-0.205614, 0.893514, -0.399193,
		-0.905142, -0.328720, -0.269558,
		40.599617, 35.453156, 24.907297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717922, 36.240177, 25.157701>,  <41.233215, 35.683262, 25.095987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717922, 36.240177, 25.157701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528538, 35.891056, 25.205120>,  <40.414909, 35.681583, 25.233572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528538, 35.891056, 25.205120>,  <40.717922, 36.240177, 25.157701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528538, 35.891056, 25.205120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302867, 0.287698, 0.908571,
		-0.827109, 0.394267, -0.400556,
		-0.473459, -0.872802, 0.118547,
		40.386501, 35.629215, 25.240685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126392, 36.486130, 25.377361>,  <40.717922, 36.240177, 25.157701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126392, 36.486130, 25.377361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112762, 36.095798, 25.463703>,  <40.104584, 35.861599, 25.515509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112762, 36.095798, 25.463703>,  <40.126392, 36.486130, 25.377361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112762, 36.095798, 25.463703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442234, 0.208407, 0.872351,
		-0.896252, -0.065736, -0.438646,
		-0.034072, -0.975831, 0.215856,
		40.102539, 35.803051, 25.528460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417511, 36.345905, 25.543821>,  <40.126392, 36.486130, 25.377361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417511, 36.345905, 25.543821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596153, 36.027630, 25.707487>,  <39.703339, 35.836662, 25.805687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596153, 36.027630, 25.707487>,  <39.417511, 36.345905, 25.543821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596153, 36.027630, 25.707487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410869, 0.223853, 0.883785,
		-0.794813, -0.562819, -0.226951,
		0.446608, -0.795692, 0.409166,
		39.730137, 35.788921, 25.830236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944019, 36.004196, 26.020105>,  <39.417511, 36.345905, 25.543821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944019, 36.004196, 26.020105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300056, 35.872238, 26.145897>,  <39.513680, 35.793064, 26.221371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300056, 35.872238, 26.145897>,  <38.944019, 36.004196, 26.020105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300056, 35.872238, 26.145897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278909, 0.151449, 0.948300,
		-0.360471, -0.931788, 0.042792,
		0.890096, -0.329900, 0.314477,
		39.567085, 35.773270, 26.240240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777550, 35.563271, 26.512148>,  <38.944019, 36.004196, 26.020105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777550, 35.563271, 26.512148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158424, 35.656902, 26.590689>,  <39.386948, 35.713081, 26.637814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158424, 35.656902, 26.590689>,  <38.777550, 35.563271, 26.512148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158424, 35.656902, 26.590689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215534, 0.059133, 0.974704,
		0.216552, -0.970416, 0.106758,
		0.952182, 0.234084, 0.196352,
		39.444080, 35.727127, 26.649595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024769, 35.126263, 27.126766>,  <38.777550, 35.563271, 26.512148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024769, 35.126263, 27.126766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266895, 35.443432, 27.098843>,  <39.412170, 35.633732, 27.082088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266895, 35.443432, 27.098843>,  <39.024769, 35.126263, 27.126766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266895, 35.443432, 27.098843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241258, 0.266335, 0.933199,
		0.758545, -0.548036, 0.352514,
		0.605314, 0.792920, -0.069809,
		39.448490, 35.681309, 27.077900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495819, 35.085766, 27.641127>,  <39.024769, 35.126263, 27.126766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495819, 35.085766, 27.641127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459343, 35.474850, 27.555786>,  <39.437458, 35.708302, 27.504581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459343, 35.474850, 27.555786>,  <39.495819, 35.085766, 27.641127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459343, 35.474850, 27.555786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086024, 0.205750, 0.974816,
		0.992111, 0.107247, 0.064914,
		-0.091191, 0.972710, -0.213352,
		39.431984, 35.766663, 27.491781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014263, 34.759151, 27.994486>,  <39.495819, 35.085766, 27.641127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014263, 34.759151, 27.994486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037312, 34.394184, 28.156561>,  <40.051140, 34.175205, 28.253805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037312, 34.394184, 28.156561>,  <40.014263, 34.759151, 27.994486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037312, 34.394184, 28.156561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452719, -0.337853, -0.825167,
		0.889790, 0.230981, 0.393602,
		0.057619, -0.912416, 0.405187,
		40.054596, 34.120461, 28.278116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719688, 34.547554, 27.966490>,  <40.014263, 34.759151, 27.994486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719688, 34.547554, 27.966490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509094, 34.209457, 28.003115>,  <40.382740, 34.006599, 28.025089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509094, 34.209457, 28.003115>,  <40.719688, 34.547554, 27.966490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509094, 34.209457, 28.003115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610336, -0.450729, -0.651409,
		0.591868, -0.287071, 0.753182,
		-0.526481, -0.845242, 0.091563,
		40.351151, 33.955883, 28.030584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162510, 34.034760, 27.831615>,  <40.719688, 34.547554, 27.966490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162510, 34.034760, 27.831615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817608, 33.833668, 27.807030>,  <40.610668, 33.713013, 27.792278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817608, 33.833668, 27.807030>,  <41.162510, 34.034760, 27.831615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817608, 33.833668, 27.807030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364376, -0.531464, -0.764707,
		0.351773, -0.681770, 0.641440,
		-0.862256, -0.502728, -0.061466,
		40.558929, 33.682850, 27.788589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418556, 33.224426, 27.841862>,  <41.162510, 34.034760, 27.831615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418556, 33.224426, 27.841862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042164, 33.231415, 27.706656>,  <40.816330, 33.235607, 27.625532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042164, 33.231415, 27.706656>,  <41.418556, 33.224426, 27.841862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042164, 33.231415, 27.706656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261400, -0.596881, -0.758553,
		-0.215011, -0.802139, 0.557084,
		-0.940978, 0.017476, -0.338015,
		40.759869, 33.236656, 27.605251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234222, 32.489002, 27.705029>,  <41.418556, 33.224426, 27.841862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234222, 32.489002, 27.705029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001343, 32.718018, 27.474119>,  <40.861614, 32.855427, 27.335573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001343, 32.718018, 27.474119>,  <41.234222, 32.489002, 27.705029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001343, 32.718018, 27.474119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193855, -0.591785, -0.782440,
		-0.789602, -0.567439, 0.233543,
		-0.582194, 0.572542, -0.577275,
		40.826683, 32.889778, 27.300938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791630, 32.080166, 27.351814>,  <41.234222, 32.489002, 27.705029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791630, 32.080166, 27.351814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783703, 32.401085, 27.113178>,  <40.778946, 32.593636, 26.969997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783703, 32.401085, 27.113178>,  <40.791630, 32.080166, 27.351814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783703, 32.401085, 27.113178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116577, -0.590782, -0.798364,
		-0.992984, -0.085373, -0.081821,
		-0.019820, 0.802301, -0.596590,
		40.777756, 32.641777, 26.934202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489437, 31.854670, 26.801258>,  <40.791630, 32.080166, 27.351814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489437, 31.854670, 26.801258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640209, 32.191105, 26.646084>,  <40.730675, 32.392967, 26.552979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640209, 32.191105, 26.646084>,  <40.489437, 31.854670, 26.801258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640209, 32.191105, 26.646084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130789, -0.462963, -0.876675,
		-0.916960, 0.279710, -0.284511,
		0.376933, 0.841087, -0.387935,
		40.753288, 32.443432, 26.529703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264515, 31.837927, 26.137381>,  <40.489437, 31.854670, 26.801258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264515, 31.837927, 26.137381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586452, 32.075321, 26.138281>,  <40.779613, 32.217758, 26.138821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586452, 32.075321, 26.138281>,  <40.264515, 31.837927, 26.137381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586452, 32.075321, 26.138281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332843, -0.448232, -0.829641,
		-0.491373, 0.668477, -0.558293,
		0.804841, 0.593487, 0.002249,
		40.827904, 32.253368, 26.138956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290569, 32.216045, 25.446957>,  <40.264515, 31.837927, 26.137381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290569, 32.216045, 25.446957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655437, 32.175392, 25.605761>,  <40.874359, 32.151001, 25.701042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655437, 32.175392, 25.605761>,  <40.290569, 32.216045, 25.446957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655437, 32.175392, 25.605761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331657, -0.385981, -0.860827,
		0.240724, 0.916892, -0.318374,
		0.912171, -0.101631, 0.397008,
		40.929089, 32.144901, 25.724863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671436, 32.460155, 24.928986>,  <40.290569, 32.216045, 25.446957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671436, 32.460155, 24.928986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922440, 32.259052, 25.166798>,  <41.073040, 32.138390, 25.309484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922440, 32.259052, 25.166798>,  <40.671436, 32.460155, 24.928986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922440, 32.259052, 25.166798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450720, -0.388080, -0.803894,
		0.634890, 0.772417, -0.016921,
		0.627508, -0.502758, 0.594532,
		41.110691, 32.108223, 25.345158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386452, 32.651966, 24.684055>,  <40.671436, 32.460155, 24.928986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386452, 32.651966, 24.684055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411163, 32.302654, 24.877367>,  <41.425991, 32.093067, 24.993355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411163, 32.302654, 24.877367>,  <41.386452, 32.651966, 24.684055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411163, 32.302654, 24.877367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466821, -0.402698, -0.787345,
		0.882191, 0.274247, 0.382788,
		0.061779, -0.873283, 0.483281,
		41.429695, 32.040668, 25.022350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072456, 32.519825, 24.760502>,  <41.386452, 32.651966, 24.684055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072456, 32.519825, 24.760502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905048, 32.156673, 24.770193>,  <41.804604, 31.938782, 24.776007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905048, 32.156673, 24.770193>,  <42.072456, 32.519825, 24.760502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905048, 32.156673, 24.770193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466613, -0.237834, -0.851884,
		0.779174, -0.345228, 0.523170,
		-0.418522, -0.907884, 0.024226,
		41.779491, 31.884308, 24.777460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570129, 32.148247, 24.594179>,  <42.072456, 32.519825, 24.760502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570129, 32.148247, 24.594179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261806, 31.895954, 24.558338>,  <42.076813, 31.744579, 24.536835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261806, 31.895954, 24.558338>,  <42.570129, 32.148247, 24.594179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261806, 31.895954, 24.558338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459057, -0.452391, -0.764597,
		0.441720, -0.630492, 0.638250,
		-0.770811, -0.630731, -0.089602,
		42.030563, 31.706736, 24.531458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848049, 31.433762, 24.354969>,  <42.570129, 32.148247, 24.594179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848049, 31.433762, 24.354969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458382, 31.420595, 24.265604>,  <42.224583, 31.412695, 24.211985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458382, 31.420595, 24.265604>,  <42.848049, 31.433762, 24.354969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458382, 31.420595, 24.265604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212289, -0.470815, -0.856310,
		-0.077000, -0.881618, 0.465641,
		-0.974169, -0.032915, -0.223411,
		42.166130, 31.410721, 24.198582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.864429, 33.102768, 21.153189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.223801, 33.025837, 21.311094>,  <34.439423, 32.979679, 21.405838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.223801, 33.025837, 21.311094>,  <33.864429, 33.102768, 21.153189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223801, 33.025837, 21.311094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377132, 0.122575, 0.918012,
		-0.224950, -0.973645, 0.037590,
		0.898426, -0.192330, 0.394766,
		34.493328, 32.968140, 21.429523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750614, 32.647926, 21.801390>,  <33.864429, 33.102768, 21.153189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750614, 32.647926, 21.801390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.108711, 32.820744, 21.844984>,  <34.323570, 32.924435, 21.871141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.108711, 32.820744, 21.844984>,  <33.750614, 32.647926, 21.801390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108711, 32.820744, 21.844984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220888, 0.217898, 0.950647,
		0.386969, -0.875135, 0.290505,
		0.895245, 0.432040, 0.108988,
		34.377285, 32.950356, 21.877680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062912, 32.407566, 22.440311>,  <33.750614, 32.647926, 21.801390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062912, 32.407566, 22.440311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.231106, 32.760983, 22.357798>,  <34.332020, 32.973034, 22.308290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.231106, 32.760983, 22.357798>,  <34.062912, 32.407566, 22.440311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231106, 32.760983, 22.357798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240965, 0.327943, 0.913449,
		0.874718, -0.334382, 0.350796,
		0.420482, 0.883540, -0.206283,
		34.357250, 33.026043, 22.295914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287010, 32.633327, 23.071924>,  <34.062912, 32.407566, 22.440311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287010, 32.633327, 23.071924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.371334, 32.977867, 22.887041>,  <34.421928, 33.184589, 22.776112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.371334, 32.977867, 22.887041>,  <34.287010, 32.633327, 23.071924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371334, 32.977867, 22.887041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036546, 0.479446, 0.876810,
		0.976843, -0.167949, 0.132551,
		0.210811, 0.861350, -0.462206,
		34.434578, 33.236271, 22.748379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887043, 33.006989, 23.424347>,  <34.287010, 32.633327, 23.071924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887043, 33.006989, 23.424347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.674107, 33.295696, 23.247410>,  <34.546345, 33.468922, 23.141247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.674107, 33.295696, 23.247410>,  <34.887043, 33.006989, 23.424347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674107, 33.295696, 23.247410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079767, 0.562978, 0.822613,
		0.842766, 0.402623, -0.357267,
		-0.532337, 0.721769, -0.442343,
		34.514404, 33.512226, 23.114706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148792, 33.632496, 23.690220>,  <34.887043, 33.006989, 23.424347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148792, 33.632496, 23.690220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.801613, 33.775677, 23.552504>,  <34.593304, 33.861584, 23.469873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.801613, 33.775677, 23.552504>,  <35.148792, 33.632496, 23.690220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801613, 33.775677, 23.552504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067534, 0.601718, 0.795848,
		0.492041, 0.714007, -0.498087,
		-0.867949, 0.357952, -0.344289,
		34.541229, 33.883064, 23.449217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076012, 34.483231, 23.703562>,  <35.148792, 33.632496, 23.690220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076012, 34.483231, 23.703562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.715961, 34.309559, 23.717806>,  <34.499931, 34.205357, 23.726353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.715961, 34.309559, 23.717806>,  <35.076012, 34.483231, 23.703562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715961, 34.309559, 23.717806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204358, 0.493019, 0.845677,
		-0.384733, 0.753935, -0.532506,
		-0.900121, -0.434181, 0.035608,
		34.445927, 34.179306, 23.728489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602554, 35.000206, 24.007675>,  <35.076012, 34.483231, 23.703562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602554, 35.000206, 24.007675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.396645, 34.657524, 24.020744>,  <34.273098, 34.451916, 24.028585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.396645, 34.657524, 24.020744>,  <34.602554, 35.000206, 24.007675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396645, 34.657524, 24.020744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498059, 0.329858, 0.801954,
		-0.697815, 0.396551, -0.596491,
		-0.514773, -0.856704, 0.032674,
		34.242214, 34.400513, 24.030546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019100, 35.266396, 24.321430>,  <34.602554, 35.000206, 24.007675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019100, 35.266396, 24.321430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.992039, 34.869049, 24.358616>,  <33.975800, 34.630642, 24.380928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.992039, 34.869049, 24.358616>,  <34.019100, 35.266396, 24.321430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992039, 34.869049, 24.358616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227346, 0.106078, 0.968019,
		-0.971461, 0.044358, -0.233015,
		-0.067657, -0.993368, 0.092966,
		33.971741, 34.571037, 24.386505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366516, 35.056755, 24.608007>,  <34.019100, 35.266396, 24.321430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366516, 35.056755, 24.608007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.633732, 34.773273, 24.698750>,  <33.794064, 34.603188, 24.753195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.633732, 34.773273, 24.698750>,  <33.366516, 35.056755, 24.608007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633732, 34.773273, 24.698750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254031, 0.069345, 0.964707,
		-0.699419, -0.702094, -0.133706,
		0.668043, -0.708699, 0.226855,
		33.834145, 34.560665, 24.766806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064339, 34.527641, 25.111235>,  <33.366516, 35.056755, 24.608007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064339, 34.527641, 25.111235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.461990, 34.521637, 25.154079>,  <33.700581, 34.518036, 25.179787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.461990, 34.521637, 25.154079>,  <33.064339, 34.527641, 25.111235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461990, 34.521637, 25.154079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105629, 0.078225, 0.991324,
		-0.023261, -0.996823, 0.076180,
		0.994133, -0.015012, 0.107113,
		33.760231, 34.517136, 25.186213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075275, 34.050865, 25.615690>,  <33.064339, 34.527641, 25.111235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075275, 34.050865, 25.615690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.437328, 34.220840, 25.620802>,  <33.654560, 34.322826, 25.623869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.437328, 34.220840, 25.620802>,  <33.075275, 34.050865, 25.615690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437328, 34.220840, 25.620802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017326, 0.006834, 0.999827,
		0.424778, -0.905196, 0.013548,
		0.905131, 0.424939, 0.012781,
		33.708866, 34.348324, 25.624636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399185, 33.745937, 26.119564>,  <33.075275, 34.050865, 25.615690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399185, 33.745937, 26.119564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.562504, 34.107395, 26.067839>,  <33.660496, 34.324268, 26.036804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.562504, 34.107395, 26.067839>,  <33.399185, 33.745937, 26.119564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562504, 34.107395, 26.067839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087986, 0.179958, 0.979731,
		0.908597, -0.388647, 0.152985,
		0.408301, 0.903642, -0.129314,
		33.684994, 34.378487, 26.029045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725220, 33.843525, 26.730116>,  <33.399185, 33.745937, 26.119564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725220, 33.843525, 26.730116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.730946, 34.216930, 26.586809>,  <33.734379, 34.440971, 26.500826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.730946, 34.216930, 26.586809>,  <33.725220, 33.843525, 26.730116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730946, 34.216930, 26.586809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024012, 0.358519, 0.933213,
		0.999609, -0.004752, 0.027546,
		0.014311, 0.933510, -0.358265,
		33.735237, 34.496983, 26.479330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226967, 33.339680, 26.844196>,  <33.725220, 33.843525, 26.730116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226967, 33.339680, 26.844196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.313316, 32.993465, 27.024973>,  <34.365128, 32.785736, 27.133438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.313316, 32.993465, 27.024973>,  <34.226967, 33.339680, 26.844196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313316, 32.993465, 27.024973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037900, -0.469933, -0.881888,
		0.975685, 0.173250, -0.134251,
		0.215876, -0.865533, 0.451941,
		34.378078, 32.733807, 27.160555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873749, 33.101662, 26.587709>,  <34.226967, 33.339680, 26.844196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873749, 33.101662, 26.587709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.639423, 32.802315, 26.712141>,  <34.498829, 32.622707, 26.786800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.639423, 32.802315, 26.712141>,  <34.873749, 33.101662, 26.587709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639423, 32.802315, 26.712141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161029, -0.483669, -0.860310,
		0.794285, -0.453891, 0.403850,
		-0.585817, -0.748363, 0.311081,
		34.463676, 32.577805, 26.805466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329525, 32.582363, 26.546803>,  <34.873749, 33.101662, 26.587709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329525, 32.582363, 26.546803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.965366, 32.417160, 26.536959>,  <34.746872, 32.318039, 26.531054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.965366, 32.417160, 26.536959>,  <35.329525, 32.582363, 26.546803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965366, 32.417160, 26.536959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265263, -0.537017, -0.800780,
		0.317510, -0.735555, 0.598454,
		-0.910397, -0.413004, -0.024607,
		34.692245, 32.293259, 26.529577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480190, 31.804081, 26.474094>,  <35.329525, 32.582363, 26.546803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480190, 31.804081, 26.474094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.109646, 31.892250, 26.351934>,  <34.887318, 31.945150, 26.278639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.109646, 31.892250, 26.351934>,  <35.480190, 31.804081, 26.474094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109646, 31.892250, 26.351934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097792, -0.642285, -0.760202,
		-0.363716, -0.734087, 0.573434,
		-0.926362, 0.220421, -0.305397,
		34.831738, 31.958376, 26.260315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220795, 31.183491, 26.264685>,  <35.480190, 31.804081, 26.474094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220795, 31.183491, 26.264685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.979988, 31.452173, 26.091997>,  <34.835503, 31.613382, 25.988384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.979988, 31.452173, 26.091997>,  <35.220795, 31.183491, 26.264685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979988, 31.452173, 26.091997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176163, -0.415622, -0.892315,
		-0.778806, -0.613244, 0.131882,
		-0.602019, 0.671708, -0.431720,
		34.799381, 31.653685, 25.962481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858185, 30.779568, 25.692270>,  <35.220795, 31.183491, 26.264685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858185, 30.779568, 25.692270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.791542, 31.163929, 25.603807>,  <34.751556, 31.394545, 25.550730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.791542, 31.163929, 25.603807>,  <34.858185, 30.779568, 25.692270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791542, 31.163929, 25.603807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149423, -0.197096, -0.968930,
		-0.974636, -0.194476, -0.110743,
		-0.166607, 0.960902, -0.221156,
		34.741558, 31.452200, 25.537460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592567, 30.704971, 25.122458>,  <34.858185, 30.779568, 25.692270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592567, 30.704971, 25.122458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.672138, 31.095613, 25.089785>,  <34.719883, 31.329998, 25.070181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.672138, 31.095613, 25.089785>,  <34.592567, 30.704971, 25.122458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672138, 31.095613, 25.089785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155250, -0.113699, -0.981310,
		-0.967638, 0.182532, -0.174236,
		0.198931, 0.976604, -0.081681,
		34.731819, 31.388594, 25.065281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319332, 30.875937, 24.490793>,  <34.592567, 30.704971, 25.122458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319332, 30.875937, 24.490793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.616459, 31.123423, 24.593102>,  <34.794735, 31.271914, 24.654486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.616459, 31.123423, 24.593102>,  <34.319332, 30.875937, 24.490793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616459, 31.123423, 24.593102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458053, -0.191042, -0.868153,
		-0.488276, 0.762033, -0.425313,
		0.742815, 0.618715, 0.255770,
		34.839302, 31.309036, 24.669832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326206, 31.270113, 23.918903>,  <34.319332, 30.875937, 24.490793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326206, 31.270113, 23.918903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.683514, 31.345922, 24.081953>,  <34.897896, 31.391409, 24.179783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.683514, 31.345922, 24.081953>,  <34.326206, 31.270113, 23.918903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683514, 31.345922, 24.081953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429492, -0.092101, -0.898362,
		-0.132718, 0.977547, -0.163669,
		0.893265, 0.189523, 0.407626,
		34.951492, 31.402779, 24.204241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723286, 31.672647, 23.395977>,  <34.326206, 31.270113, 23.918903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723286, 31.672647, 23.395977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.023064, 31.574820, 23.642073>,  <35.202930, 31.516123, 23.789730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.023064, 31.574820, 23.642073>,  <34.723286, 31.672647, 23.395977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023064, 31.574820, 23.642073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623268, -0.052814, -0.780223,
		0.223313, 0.968192, 0.112853,
		0.749445, -0.244571, 0.615238,
		35.247898, 31.501448, 23.826643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278858, 32.086563, 23.232758>,  <34.723286, 31.672647, 23.395977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278858, 32.086563, 23.232758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.439560, 31.762877, 23.404226>,  <35.535980, 31.568663, 23.507107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.439560, 31.762877, 23.404226>,  <35.278858, 32.086563, 23.232758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439560, 31.762877, 23.404226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700843, -0.029595, -0.712701,
		0.589419, 0.586759, 0.555247,
		0.401751, -0.809221, 0.428670,
		35.560085, 31.520111, 23.532827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999023, 32.160419, 23.151787>,  <35.278858, 32.086563, 23.232758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999023, 32.160419, 23.151787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.974182, 31.771381, 23.241404>,  <35.959278, 31.537958, 23.295174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.974182, 31.771381, 23.241404>,  <35.999023, 32.160419, 23.151787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974182, 31.771381, 23.241404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588974, -0.216939, -0.778491,
		0.805762, 0.083604, 0.586308,
		-0.062108, -0.972599, 0.224042,
		35.955551, 31.479601, 23.308617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718830, 32.018623, 23.143154>,  <35.999023, 32.160419, 23.151787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718830, 32.018623, 23.143154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.484848, 31.700132, 23.081381>,  <36.344460, 31.509039, 23.044317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.484848, 31.700132, 23.081381>,  <36.718830, 32.018623, 23.143154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484848, 31.700132, 23.081381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552551, -0.251838, -0.794522,
		0.593727, -0.550092, 0.587270,
		-0.584957, -0.796226, -0.154431,
		36.309361, 31.461264, 23.035051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166199, 31.355858, 23.089157>,  <36.718830, 32.018623, 23.143154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166199, 31.355858, 23.089157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.822506, 31.272766, 22.902149>,  <36.616291, 31.222910, 22.789944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.822506, 31.272766, 22.902149>,  <37.166199, 31.355858, 23.089157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822506, 31.272766, 22.902149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510709, -0.402003, -0.759980,
		-0.030074, -0.891763, 0.451502,
		-0.859228, -0.207731, -0.467521,
		36.564739, 31.210447, 22.761892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520107, 30.685034, 23.290035>,  <37.166199, 31.355858, 23.089157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520107, 30.685034, 23.290035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.883801, 30.531857, 23.355328>,  <38.102016, 30.439951, 23.394503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.883801, 30.531857, 23.355328>,  <37.520107, 30.685034, 23.290035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883801, 30.531857, 23.355328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067179, 0.252001, 0.965392,
		-0.410823, -0.888736, 0.203403,
		0.909237, -0.382941, 0.163232,
		38.156570, 30.416975, 23.404297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456852, 30.136761, 23.845917>,  <37.520107, 30.685034, 23.290035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456852, 30.136761, 23.845917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.821060, 30.301861, 23.855635>,  <38.039585, 30.400921, 23.861465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.821060, 30.301861, 23.855635>,  <37.456852, 30.136761, 23.845917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821060, 30.301861, 23.855635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144951, 0.263629, 0.953671,
		0.387226, -0.871857, 0.299869,
		0.910519, 0.412752, 0.024293,
		38.094215, 30.425686, 23.862923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798203, 29.835976, 24.454857>,  <37.456852, 30.136761, 23.845917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798203, 29.835976, 24.454857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.996540, 30.170599, 24.361645>,  <38.115543, 30.371374, 24.305717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.996540, 30.170599, 24.361645>,  <37.798203, 29.835976, 24.454857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996540, 30.170599, 24.361645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137381, 0.340525, 0.930145,
		0.857474, -0.429196, 0.283776,
		0.495847, 0.836560, -0.233028,
		38.145294, 30.421568, 24.291737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360416, 29.842745, 24.976667>,  <37.798203, 29.835976, 24.454857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360416, 29.842745, 24.976667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.309372, 30.221588, 24.858889>,  <38.278748, 30.448895, 24.788221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.309372, 30.221588, 24.858889>,  <38.360416, 29.842745, 24.976667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309372, 30.221588, 24.858889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032827, 0.300743, 0.953140,
		0.991281, 0.111961, -0.069468,
		-0.127607, 0.947110, -0.294446,
		38.271091, 30.505722, 24.770555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639305, 30.286606, 25.526836>,  <38.360416, 29.842745, 24.976667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639305, 30.286606, 25.526836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.456127, 30.574266, 25.317797>,  <38.346222, 30.746862, 25.192373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.456127, 30.574266, 25.317797>,  <38.639305, 30.286606, 25.526836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456127, 30.574266, 25.317797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158339, 0.512480, 0.843975,
		0.874767, 0.469240, -0.120817,
		-0.457943, 0.719151, -0.522600,
		38.318745, 30.790012, 25.161016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974960, 30.937418, 25.641056>,  <38.639305, 30.286606, 25.526836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974960, 30.937418, 25.641056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.609184, 31.052338, 25.527033>,  <38.389717, 31.121288, 25.458618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.609184, 31.052338, 25.527033>,  <38.974960, 30.937418, 25.641056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609184, 31.052338, 25.527033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109046, 0.503388, 0.857152,
		0.389752, 0.814899, -0.428990,
		-0.914441, 0.287297, -0.285058,
		38.334850, 31.138527, 25.441515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857765, 31.713572, 25.859705>,  <38.974960, 30.937418, 25.641056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857765, 31.713572, 25.859705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.485672, 31.581408, 25.795830>,  <38.262417, 31.502110, 25.757504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.485672, 31.581408, 25.795830>,  <38.857765, 31.713572, 25.859705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485672, 31.581408, 25.795830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325311, 0.541060, 0.775517,
		-0.169838, 0.773358, -0.610797,
		-0.930230, -0.330411, -0.159689,
		38.206604, 31.482285, 25.747923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450226, 32.354782, 26.088766>,  <38.857765, 31.713572, 25.859705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450226, 32.354782, 26.088766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.228340, 32.022224, 26.075628>,  <38.095211, 31.822689, 26.067745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.228340, 32.022224, 26.075628>,  <38.450226, 32.354782, 26.088766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228340, 32.022224, 26.075628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560840, 0.344456, 0.752867,
		-0.614616, 0.436045, -0.657353,
		-0.554713, -0.831393, -0.032843,
		38.061928, 31.772806, 26.065775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622837, 32.543877, 26.158400>,  <38.450226, 32.354782, 26.088766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622837, 32.543877, 26.158400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.706078, 32.174809, 26.288244>,  <37.756023, 31.953367, 26.366150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.706078, 32.174809, 26.288244>,  <37.622837, 32.543877, 26.158400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706078, 32.174809, 26.288244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394662, 0.224450, 0.890991,
		-0.894949, -0.313531, -0.317434,
		0.208106, -0.922670, 0.324610,
		37.768509, 31.898008, 26.385628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058052, 32.303650, 26.521654>,  <37.622837, 32.543877, 26.158400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058052, 32.303650, 26.521654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.365128, 32.082012, 26.650419>,  <37.549374, 31.949028, 26.727678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.365128, 32.082012, 26.650419>,  <37.058052, 32.303650, 26.521654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365128, 32.082012, 26.650419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181924, 0.293232, 0.938573,
		-0.614457, -0.779096, 0.124307,
		0.767689, -0.554098, 0.321914,
		37.595436, 31.915783, 26.746994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829525, 32.094795, 27.117088>,  <37.058052, 32.303650, 26.521654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829525, 32.094795, 27.117088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.211311, 31.984179, 27.161854>,  <37.440384, 31.917809, 27.188713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.211311, 31.984179, 27.161854>,  <36.829525, 32.094795, 27.117088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211311, 31.984179, 27.161854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099831, 0.057430, 0.993346,
		-0.281129, -0.959284, 0.027208,
		0.954463, -0.276542, 0.111912,
		37.497650, 31.901217, 27.195427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723831, 31.622656, 27.621140>,  <36.829525, 32.094795, 27.117088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723831, 31.622656, 27.621140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.108704, 31.731045, 27.632301>,  <37.339626, 31.796078, 27.638998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.108704, 31.731045, 27.632301>,  <36.723831, 31.622656, 27.621140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108704, 31.731045, 27.632301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026982, -0.007134, 0.999610,
		0.271065, -0.962561, 0.000447,
		0.962182, 0.270972, 0.027906,
		37.397358, 31.812336, 27.640673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955029, 31.237238, 28.270027>,  <36.723831, 31.622656, 27.621140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955029, 31.237238, 28.270027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.230125, 31.517679, 28.194698>,  <37.395184, 31.685944, 28.149502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.230125, 31.517679, 28.194698>,  <36.955029, 31.237238, 28.270027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230125, 31.517679, 28.194698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230327, 0.035278, 0.972474,
		0.688447, -0.712187, -0.137221,
		0.687742, 0.701102, -0.188322,
		37.436447, 31.728010, 28.138201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509914, 31.168461, 28.755615>,  <36.955029, 31.237238, 28.270027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509914, 31.168461, 28.755615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.596119, 31.545198, 28.652475>,  <37.647842, 31.771240, 28.590591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.596119, 31.545198, 28.652475>,  <37.509914, 31.168461, 28.755615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596119, 31.545198, 28.652475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201889, 0.215376, 0.955434,
		0.955404, -0.257964, -0.143732,
		0.215511, 0.941843, -0.257851,
		37.660770, 31.827751, 28.575121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.840118, 30.748903, 24.158409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.512680, 30.915592, 24.000299>,  <42.316216, 31.015606, 23.905434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.512680, 30.915592, 24.000299>,  <42.840118, 30.748903, 24.158409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512680, 30.915592, 24.000299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264809, -0.336861, -0.903549,
		-0.509682, -0.844314, 0.165401,
		-0.818596, 0.416723, -0.395274,
		42.267101, 31.040609, 23.881718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527882, 30.172617, 23.795429>,  <42.840118, 30.748903, 24.158409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527882, 30.172617, 23.795429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.387108, 30.515669, 23.645435>,  <42.302643, 30.721500, 23.555439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.387108, 30.515669, 23.645435>,  <42.527882, 30.172617, 23.795429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387108, 30.515669, 23.645435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279923, -0.285847, -0.916480,
		-0.893187, -0.427510, -0.139470,
		-0.351937, 0.857628, -0.374985,
		42.281528, 30.772957, 23.532940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152229, 29.972792, 23.141844>,  <42.527882, 30.172617, 23.795429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152229, 29.972792, 23.141844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.215740, 30.365093, 23.096392>,  <42.253845, 30.600473, 23.069120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.215740, 30.365093, 23.096392>,  <42.152229, 29.972792, 23.141844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215740, 30.365093, 23.096392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145694, -0.137107, -0.979783,
		-0.976505, 0.139012, -0.164660,
		0.158778, 0.980754, -0.113632,
		42.263374, 30.659319, 23.062302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737679, 30.217077, 22.495703>,  <42.152229, 29.972792, 23.141844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737679, 30.217077, 22.495703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.043476, 30.470016, 22.545790>,  <42.226955, 30.621780, 22.575842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.043476, 30.470016, 22.545790>,  <41.737679, 30.217077, 22.495703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043476, 30.470016, 22.545790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213896, -0.065594, -0.974652,
		-0.608107, 0.771901, -0.185403,
		0.764496, 0.632350, 0.125218,
		42.272823, 30.659721, 22.583355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717464, 30.621342, 21.907436>,  <41.737679, 30.217077, 22.495703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717464, 30.621342, 21.907436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.086262, 30.647121, 22.060156>,  <42.307541, 30.662588, 22.151787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.086262, 30.647121, 22.060156>,  <41.717464, 30.621342, 21.907436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086262, 30.647121, 22.060156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386698, -0.103107, -0.916424,
		-0.019696, 0.992580, -0.119986,
		0.921996, 0.064448, 0.381798,
		42.362862, 30.666456, 22.174696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064396, 31.109217, 21.497957>,  <41.717464, 30.621342, 21.907436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064396, 31.109217, 21.497957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.364201, 30.904127, 21.665455>,  <42.544083, 30.781073, 21.765953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.364201, 30.904127, 21.665455>,  <42.064396, 31.109217, 21.497957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364201, 30.904127, 21.665455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485181, -0.004876, -0.874400,
		0.450367, 0.858540, 0.245109,
		0.749512, -0.512724, 0.418744,
		42.589054, 30.750311, 21.791079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673332, 31.415478, 21.205038>,  <42.064396, 31.109217, 21.497957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673332, 31.415478, 21.205038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.822842, 31.072083, 21.345490>,  <42.912548, 30.866045, 21.429760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.822842, 31.072083, 21.345490>,  <42.673332, 31.415478, 21.205038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.822842, 31.072083, 21.345490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502891, -0.130521, -0.854438,
		0.779356, 0.495942, 0.382943,
		0.373770, -0.858490, 0.351127,
		42.934971, 30.814535, 21.450827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424671, 31.400324, 21.105558>,  <42.673332, 31.415478, 21.205038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424671, 31.400324, 21.105558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.255211, 31.038042, 21.099598>,  <43.153534, 30.820673, 21.096022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.255211, 31.038042, 21.099598>,  <43.424671, 31.400324, 21.105558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255211, 31.038042, 21.099598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545385, -0.241902, -0.802521,
		0.723241, -0.348115, 0.596438,
		-0.423649, -0.905704, -0.014903,
		43.128117, 30.766331, 21.095127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.901539, 31.063272, 20.675030>,  <43.424671, 31.400324, 21.105558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.901539, 31.063272, 20.675030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.603668, 30.798609, 20.710045>,  <43.424946, 30.639811, 20.731054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.603668, 30.798609, 20.710045>,  <43.901539, 31.063272, 20.675030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.603668, 30.798609, 20.710045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236079, -0.383809, -0.892725,
		0.624276, -0.644127, 0.442018,
		-0.744678, -0.661658, 0.087538,
		43.380264, 30.600111, 20.736307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162766, 30.545853, 20.376356>,  <43.901539, 31.063272, 20.675030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.162766, 30.545853, 20.376356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.770027, 30.470852, 20.364847>,  <43.534386, 30.425852, 20.357943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.770027, 30.470852, 20.364847>,  <44.162766, 30.545853, 20.376356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770027, 30.470852, 20.364847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092025, -0.338167, -0.936576,
		0.165882, -0.922218, 0.349282,
		-0.981842, -0.187504, -0.028772,
		43.475475, 30.414600, 20.356216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.094620, 29.965576, 19.945969>,  <44.162766, 30.545853, 20.376356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.094620, 29.965576, 19.945969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.720169, 30.105967, 19.954781>,  <43.495499, 30.190201, 19.960068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.720169, 30.105967, 19.954781>,  <44.094620, 29.965576, 19.945969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.720169, 30.105967, 19.954781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083107, -0.159921, -0.983625,
		-0.341705, -0.922627, 0.178875,
		-0.936126, 0.350975, 0.022031,
		43.439331, 30.211258, 19.961390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696178, 29.439573, 19.519014>,  <44.094620, 29.965576, 19.945969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696178, 29.439573, 19.519014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.522144, 29.799135, 19.539705>,  <43.417725, 30.014872, 19.552120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.522144, 29.799135, 19.539705>,  <43.696178, 29.439573, 19.519014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522144, 29.799135, 19.539705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320258, -0.100804, -0.941952,
		-0.841510, -0.426392, 0.331739,
		-0.435081, 0.898904, 0.051727,
		43.391621, 30.068806, 19.555223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027431, 29.381437, 19.280645>,  <43.696178, 29.439573, 19.519014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027431, 29.381437, 19.280645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.154270, 29.757011, 19.227211>,  <43.230373, 29.982357, 19.195150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.154270, 29.757011, 19.227211>,  <43.027431, 29.381437, 19.280645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154270, 29.757011, 19.227211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371205, -0.006739, -0.928527,
		-0.872729, 0.344022, 0.346401,
		0.317099, 0.938937, -0.133584,
		43.249401, 30.038692, 19.187136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480949, 29.787920, 19.045990>,  <43.027431, 29.381437, 19.280645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480949, 29.787920, 19.045990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.824364, 29.949858, 18.920124>,  <43.030411, 30.047020, 18.844604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.824364, 29.949858, 18.920124>,  <42.480949, 29.787920, 19.045990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824364, 29.949858, 18.920124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294358, -0.113340, -0.948951,
		-0.419844, 0.907333, 0.021863,
		0.858536, 0.404847, -0.314666,
		43.081924, 30.071312, 18.825724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821945, 29.397745, 19.151806>,  <42.480949, 29.787920, 19.045990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821945, 29.397745, 19.151806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.557968, 29.131786, 19.011871>,  <41.399582, 28.972212, 18.927910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.557968, 29.131786, 19.011871>,  <41.821945, 29.397745, 19.151806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557968, 29.131786, 19.011871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701601, 0.378826, 0.603528,
		-0.268756, 0.643741, -0.716497,
		-0.659944, -0.664897, -0.349838,
		41.359985, 28.932318, 18.906919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278423, 29.855598, 18.963760>,  <41.821945, 29.397745, 19.151806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278423, 29.855598, 18.963760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.159042, 29.479057, 19.026728>,  <41.087414, 29.253132, 19.064508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.159042, 29.479057, 19.026728>,  <41.278423, 29.855598, 18.963760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159042, 29.479057, 19.026728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736280, 0.332033, 0.589615,
		-0.607305, 0.060065, -0.792195,
		-0.298450, -0.941353, 0.157420,
		41.069508, 29.196651, 19.073954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582230, 29.835012, 18.836988>,  <41.278423, 29.855598, 18.963760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582230, 29.835012, 18.836988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.630489, 29.508411, 19.062824>,  <40.659447, 29.312450, 19.198326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.630489, 29.508411, 19.062824>,  <40.582230, 29.835012, 18.836988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630489, 29.508411, 19.062824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719509, 0.319913, 0.616411,
		-0.683923, -0.480599, -0.548885,
		0.120651, -0.816505, 0.564591,
		40.666683, 29.263460, 19.232203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869122, 29.632372, 19.013987>,  <40.582230, 29.835012, 18.836988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869122, 29.632372, 19.013987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.095985, 29.454573, 19.291330>,  <40.232105, 29.347893, 19.457737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.095985, 29.454573, 19.291330>,  <39.869122, 29.632372, 19.013987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095985, 29.454573, 19.291330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690649, 0.201960, 0.694418,
		-0.448699, -0.872716, -0.192449,
		0.567163, -0.444499, 0.693359,
		40.266136, 29.321222, 19.499338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378105, 29.424448, 19.462481>,  <39.869122, 29.632372, 19.013987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378105, 29.424448, 19.462481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.709324, 29.390100, 19.684097>,  <39.908054, 29.369492, 19.817066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.709324, 29.390100, 19.684097>,  <39.378105, 29.424448, 19.462481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709324, 29.390100, 19.684097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527236, 0.216815, 0.821592,
		-0.190675, -0.972429, 0.134259,
		0.828049, -0.085871, 0.554041,
		39.957737, 29.364340, 19.850309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270737, 28.861589, 20.015532>,  <39.378105, 29.424448, 19.462481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270737, 28.861589, 20.015532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.558727, 29.105715, 20.147682>,  <39.731522, 29.252190, 20.226973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.558727, 29.105715, 20.147682>,  <39.270737, 28.861589, 20.015532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558727, 29.105715, 20.147682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506895, 0.137307, 0.851002,
		0.474017, -0.780167, 0.408224,
		0.719976, 0.610317, 0.330377,
		39.774719, 29.288809, 20.246796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437344, 28.591848, 20.745857>,  <39.270737, 28.861589, 20.015532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437344, 28.591848, 20.745857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.591381, 28.960281, 20.722851>,  <39.683804, 29.181341, 20.709047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.591381, 28.960281, 20.722851>,  <39.437344, 28.591848, 20.745857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591381, 28.960281, 20.722851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248988, 0.163707, 0.954571,
		0.888655, -0.353279, 0.292381,
		0.385095, 0.921083, -0.057516,
		39.706909, 29.236607, 20.705595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876633, 28.713419, 21.389771>,  <39.437344, 28.591848, 20.745857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876633, 28.713419, 21.389771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.761589, 29.062830, 21.232683>,  <39.692562, 29.272476, 21.138432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.761589, 29.062830, 21.232683>,  <39.876633, 28.713419, 21.389771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761589, 29.062830, 21.232683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451770, 0.237825, 0.859850,
		0.844503, 0.424718, 0.326234,
		-0.287608, 0.873529, -0.392719,
		39.675308, 29.324888, 21.114868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105042, 29.181698, 21.841267>,  <39.876633, 28.713419, 21.389771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105042, 29.181698, 21.841267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.838688, 29.394270, 21.631817>,  <39.678875, 29.521812, 21.506147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.838688, 29.394270, 21.631817>,  <40.105042, 29.181698, 21.841267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838688, 29.394270, 21.631817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351323, 0.395802, 0.848477,
		0.658156, 0.748948, -0.076855,
		-0.665885, 0.531430, -0.523622,
		39.638924, 29.553699, 21.474730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146976, 29.817570, 22.187267>,  <40.105042, 29.181698, 21.841267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146976, 29.817570, 22.187267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.805168, 29.838333, 21.980541>,  <39.600082, 29.850792, 21.856506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.805168, 29.838333, 21.980541>,  <40.146976, 29.817570, 22.187267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805168, 29.838333, 21.980541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400535, 0.567641, 0.719275,
		0.330702, 0.821638, -0.464270,
		-0.854522, 0.051909, -0.516815,
		39.548813, 29.853907, 21.825497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931141, 30.467030, 22.258207>,  <40.146976, 29.817570, 22.187267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931141, 30.467030, 22.258207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.599079, 30.270247, 22.153271>,  <39.399841, 30.152176, 22.090309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.599079, 30.270247, 22.153271>,  <39.931141, 30.467030, 22.258207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599079, 30.270247, 22.153271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485558, 0.406698, 0.773841,
		-0.274004, 0.769788, -0.576496,
		-0.830154, -0.491958, -0.262340,
		39.350033, 30.122660, 22.074568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473038, 30.973684, 22.478933>,  <39.931141, 30.467030, 22.258207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473038, 30.973684, 22.478933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.265930, 30.632565, 22.451662>,  <39.141666, 30.427893, 22.435299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.265930, 30.632565, 22.451662>,  <39.473038, 30.973684, 22.478933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265930, 30.632565, 22.451662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491269, 0.231133, 0.839781,
		-0.700408, 0.468305, -0.538627,
		-0.517768, -0.852800, -0.068176,
		39.110600, 30.376724, 22.431210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832111, 31.129517, 22.427017>,  <39.473038, 30.973684, 22.478933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832111, 31.129517, 22.427017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.788517, 30.751158, 22.549265>,  <38.762360, 30.524143, 22.622614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.788517, 30.751158, 22.549265>,  <38.832111, 31.129517, 22.427017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788517, 30.751158, 22.549265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488601, 0.318720, 0.812211,
		-0.865674, -0.060805, -0.496902,
		-0.108986, -0.945897, 0.305617,
		38.755821, 30.467388, 22.640949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034920, 31.020990, 22.545597>,  <38.832111, 31.129517, 22.427017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034920, 31.020990, 22.545597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.233349, 30.755905, 22.769999>,  <38.352406, 30.596853, 22.904640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.233349, 30.755905, 22.769999>,  <38.034920, 31.020990, 22.545597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233349, 30.755905, 22.769999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618045, 0.184308, 0.764233,
		-0.609865, -0.725838, -0.318158,
		0.496070, -0.662714, 0.561003,
		38.382172, 30.557091, 22.938299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368774, 30.746988, 22.595705>,  <38.034920, 31.020990, 22.545597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368774, 30.746988, 22.595705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.010216, 30.872427, 22.470406>,  <36.795078, 30.947691, 22.395226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.010216, 30.872427, 22.470406>,  <37.368774, 30.746988, 22.595705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010216, 30.872427, 22.470406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170049, -0.409332, -0.896399,
		-0.409332, -0.856799, 0.313598,
		0.896399, -0.313598, 0.313251,
		36.741295, 30.966507, 22.376431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035946, 30.176600, 22.342516>,  <37.368774, 30.746988, 22.595705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035946, 30.176600, 22.342516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.858784, 30.476242, 22.145466>,  <36.752487, 30.656027, 22.027235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.858784, 30.476242, 22.145466>,  <37.035946, 30.176600, 22.342516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858784, 30.476242, 22.145466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228870, -0.436787, -0.869963,
		-0.866866, -0.498056, 0.022006,
		-0.442903, 0.749104, -0.492625,
		36.725914, 30.700974, 21.997679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675114, 29.895491, 21.740196>,  <37.035946, 30.176600, 22.342516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675114, 29.895491, 21.740196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.687859, 30.281576, 21.636393>,  <36.695503, 30.513227, 21.574110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.687859, 30.281576, 21.636393>,  <36.675114, 29.895491, 21.740196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687859, 30.281576, 21.636393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068790, -0.261142, -0.962846,
		-0.997122, 0.012825, -0.074717,
		0.031860, 0.965215, -0.259508,
		36.697418, 30.571140, 21.558540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327572, 29.964249, 21.190403>,  <36.675114, 29.895491, 21.740196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327572, 29.964249, 21.190403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.521027, 30.312243, 21.151987>,  <36.637100, 30.521038, 21.128937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.521027, 30.312243, 21.151987>,  <36.327572, 29.964249, 21.190403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521027, 30.312243, 21.151987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110919, -0.169761, -0.979223,
		-0.868212, 0.462937, -0.178600,
		0.483638, 0.869983, -0.096040,
		36.666119, 30.573238, 21.123175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967880, 30.347349, 20.641867>,  <36.327572, 29.964249, 21.190403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967880, 30.347349, 20.641867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.339020, 30.495407, 20.660162>,  <36.561703, 30.584242, 20.671139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.339020, 30.495407, 20.660162>,  <35.967880, 30.347349, 20.641867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339020, 30.495407, 20.660162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136227, -0.222179, -0.965442,
		-0.347192, 0.902014, -0.256572,
		0.927847, 0.370146, 0.045739,
		36.617374, 30.606451, 20.673883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123951, 30.619280, 20.009668>,  <35.967880, 30.347349, 20.641867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123951, 30.619280, 20.009668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.492237, 30.608713, 20.165403>,  <36.713211, 30.602373, 20.258844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.492237, 30.608713, 20.165403>,  <36.123951, 30.619280, 20.009668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492237, 30.608713, 20.165403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380966, -0.155261, -0.911460,
		0.084526, 0.987520, -0.132888,
		0.920717, -0.026416, 0.389335,
		36.768452, 30.600788, 20.282204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555264, 30.945633, 19.465837>,  <36.123951, 30.619280, 20.009668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555264, 30.945633, 19.465837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.824932, 30.748112, 19.685530>,  <36.986732, 30.629599, 19.817345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.824932, 30.748112, 19.685530>,  <36.555264, 30.945633, 19.465837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824932, 30.748112, 19.685530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417203, -0.359016, -0.834895,
		0.609457, 0.792000, -0.036021,
		0.674169, -0.493805, 0.549229,
		37.027184, 30.599970, 19.850298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566399, 31.580795, 19.831333>,  <36.555264, 30.945633, 19.465837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566399, 31.580795, 19.831333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.533340, 31.913483, 19.611729>,  <36.513508, 32.113094, 19.479967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.533340, 31.913483, 19.611729>,  <36.566399, 31.580795, 19.831333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533340, 31.913483, 19.611729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631301, 0.382573, 0.674609,
		0.771122, 0.402342, 0.493449,
		-0.082643, 0.831720, -0.549010,
		36.508549, 32.162998, 19.447025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702065, 32.111244, 20.279957>,  <36.566399, 31.580795, 19.831333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702065, 32.111244, 20.279957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.475166, 32.275845, 19.994606>,  <36.339027, 32.374603, 19.823397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.475166, 32.275845, 19.994606>,  <36.702065, 32.111244, 20.279957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475166, 32.275845, 19.994606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651938, 0.304906, 0.694269,
		0.503205, 0.858894, 0.095318,
		-0.567241, 0.411501, -0.713376,
		36.304993, 32.399296, 19.780594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481716, 32.821922, 20.451475>,  <36.702065, 32.111244, 20.279957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481716, 32.821922, 20.451475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.220634, 32.757946, 20.155260>,  <36.063984, 32.719563, 19.977531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.220634, 32.757946, 20.155260>,  <36.481716, 32.821922, 20.451475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220634, 32.757946, 20.155260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730983, 0.389816, 0.560097,
		0.199092, 0.906898, -0.371347,
		-0.652707, -0.159938, -0.740536,
		36.024822, 32.709965, 19.933100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153427, 33.406162, 20.327911>,  <36.481716, 32.821922, 20.451475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153427, 33.406162, 20.327911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.880856, 33.135193, 20.217100>,  <35.717312, 32.972610, 20.150614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.880856, 33.135193, 20.217100>,  <36.153427, 33.406162, 20.327911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880856, 33.135193, 20.217100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666222, 0.417448, 0.617969,
		-0.302984, 0.605665, -0.735779,
		-0.681432, -0.677427, -0.277027,
		35.676426, 32.931965, 20.133991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576824, 33.808563, 20.212933>,  <36.153427, 33.406162, 20.327911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576824, 33.808563, 20.212933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.436253, 33.436611, 20.256424>,  <35.351910, 33.213440, 20.282518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.436253, 33.436611, 20.256424>,  <35.576824, 33.808563, 20.212933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436253, 33.436611, 20.256424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605404, 0.314301, 0.731233,
		-0.714133, 0.191149, -0.673407,
		-0.351427, -0.929880, 0.108730,
		35.330826, 33.157646, 20.289043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005569, 33.868847, 20.598774>,  <35.576824, 33.808563, 20.212933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005569, 33.868847, 20.598774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.009903, 33.469662, 20.623945>,  <35.012505, 33.230152, 20.639048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.009903, 33.469662, 20.623945>,  <35.005569, 33.868847, 20.598774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009903, 33.469662, 20.623945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482181, 0.049918, 0.874648,
		-0.876005, -0.039818, -0.480656,
		0.010833, -0.997959, 0.062928,
		35.013153, 33.170273, 20.642824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256535, 33.646843, 20.855736>,  <35.005569, 33.868847, 20.598774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256535, 33.646843, 20.855736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.530144, 33.374390, 20.960180>,  <34.694309, 33.210918, 21.022846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.530144, 33.374390, 20.960180>,  <34.256535, 33.646843, 20.855736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530144, 33.374390, 20.960180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274290, 0.091520, 0.957282,
		-0.675930, -0.726421, -0.124225,
		0.684021, -0.681129, 0.261111,
		34.735352, 33.170052, 21.038513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.711048, 32.848866, 18.454826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.678898, 32.512020, 18.668139>,  <42.659607, 32.309914, 18.796125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.678898, 32.512020, 18.668139>,  <42.711048, 32.848866, 18.454826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678898, 32.512020, 18.668139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322375, 0.528220, 0.785531,
		-0.943194, -0.108782, -0.313929,
		-0.080372, -0.842111, 0.533282,
		42.654785, 32.259388, 18.828123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958954, 32.786934, 18.869287>,  <42.711048, 32.848866, 18.454826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958954, 32.786934, 18.869287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.215714, 32.554222, 19.069084>,  <42.369770, 32.414593, 19.188963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.215714, 32.554222, 19.069084>,  <41.958954, 32.786934, 18.869287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215714, 32.554222, 19.069084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395916, 0.306391, 0.865665,
		-0.656670, -0.753427, -0.033665,
		0.641900, -0.581784, 0.499491,
		42.408283, 32.379688, 19.218931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551865, 32.473820, 19.477501>,  <41.958954, 32.786934, 18.869287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551865, 32.473820, 19.477501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.942154, 32.455341, 19.563139>,  <42.176327, 32.444252, 19.614521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.942154, 32.455341, 19.563139>,  <41.551865, 32.473820, 19.477501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942154, 32.455341, 19.563139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191598, 0.293575, 0.936538,
		-0.106122, -0.954819, 0.277595,
		0.975720, -0.046200, 0.214096,
		42.234871, 32.441483, 19.627367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616840, 32.064529, 20.112247>,  <41.551865, 32.473820, 19.477501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616840, 32.064529, 20.112247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.950306, 32.283504, 20.083101>,  <42.150387, 32.414890, 20.065615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.950306, 32.283504, 20.083101>,  <41.616840, 32.064529, 20.112247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950306, 32.283504, 20.083101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167023, 0.375678, 0.911575,
		0.526407, -0.747779, 0.404625,
		0.833666, 0.547442, -0.072864,
		42.200405, 32.447739, 20.061243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896328, 32.022156, 20.709946>,  <41.616840, 32.064529, 20.112247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896328, 32.022156, 20.709946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.105335, 32.339676, 20.585461>,  <42.230740, 32.530190, 20.510771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.105335, 32.339676, 20.585461>,  <41.896328, 32.022156, 20.709946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105335, 32.339676, 20.585461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186713, 0.462672, 0.866645,
		0.831934, -0.394730, 0.389967,
		0.522518, 0.793803, -0.311211,
		42.262089, 32.577816, 20.492098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442101, 32.278038, 21.195976>,  <41.896328, 32.022156, 20.709946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442101, 32.278038, 21.195976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.367496, 32.606747, 20.980604>,  <42.322735, 32.803970, 20.851381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.367496, 32.606747, 20.980604>,  <42.442101, 32.278038, 21.195976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367496, 32.606747, 20.980604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104525, 0.528336, 0.842577,
		0.976877, 0.213429, -0.012645,
		-0.186511, 0.821772, -0.538428,
		42.311543, 32.853279, 20.819077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725788, 32.955032, 21.572908>,  <42.442101, 32.278038, 21.195976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725788, 32.955032, 21.572908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.445335, 33.084213, 21.318626>,  <42.277065, 33.161720, 21.166058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.445335, 33.084213, 21.318626>,  <42.725788, 32.955032, 21.572908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445335, 33.084213, 21.318626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411605, 0.544693, 0.730678,
		0.582236, 0.773960, -0.248972,
		-0.701129, 0.322949, -0.635706,
		42.234997, 33.181099, 21.127914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796574, 33.668903, 21.679874>,  <42.725788, 32.955032, 21.572908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796574, 33.668903, 21.679874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.442894, 33.627567, 21.497658>,  <42.230686, 33.602768, 21.388327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.442894, 33.627567, 21.497658>,  <42.796574, 33.668903, 21.679874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442894, 33.627567, 21.497658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418906, 0.606907, 0.675412,
		0.206678, 0.788026, -0.579913,
		-0.884195, -0.103336, -0.455544,
		42.177635, 33.596565, 21.360994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495117, 34.302872, 21.664339>,  <42.796574, 33.668903, 21.679874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495117, 34.302872, 21.664339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.171326, 34.076069, 21.603354>,  <41.977051, 33.939987, 21.566763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.171326, 34.076069, 21.603354>,  <42.495117, 34.302872, 21.664339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171326, 34.076069, 21.603354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572168, 0.703490, 0.421575,
		-0.131780, 0.428491, -0.893885,
		-0.809480, -0.567007, -0.152462,
		41.928482, 33.905968, 21.557615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888359, 34.756664, 21.462000>,  <42.495117, 34.302872, 21.664339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888359, 34.756664, 21.462000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.721050, 34.424717, 21.609711>,  <41.620663, 34.225548, 21.698338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.721050, 34.424717, 21.609711>,  <41.888359, 34.756664, 21.462000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721050, 34.424717, 21.609711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648620, 0.557495, 0.518162,
		-0.635876, -0.022786, -0.771454,
		-0.418275, -0.829868, 0.369277,
		41.595570, 34.175758, 21.720493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166294, 34.884197, 21.442966>,  <41.888359, 34.756664, 21.462000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166294, 34.884197, 21.442966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.211548, 34.576473, 21.694477>,  <41.238701, 34.391838, 21.845383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.211548, 34.576473, 21.694477>,  <41.166294, 34.884197, 21.442966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211548, 34.576473, 21.694477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662538, 0.413189, 0.624754,
		-0.740434, -0.487272, -0.462950,
		0.113139, -0.769311, 0.628776,
		41.245491, 34.345680, 21.883110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511509, 34.801613, 21.697378>,  <41.166294, 34.884197, 21.442966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511509, 34.801613, 21.697378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.748550, 34.601906, 21.950218>,  <40.890778, 34.482082, 22.101923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.748550, 34.601906, 21.950218>,  <40.511509, 34.801613, 21.697378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748550, 34.601906, 21.950218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544174, 0.330430, 0.771161,
		-0.593879, -0.800969, -0.075872,
		0.592605, -0.499264, 0.632102,
		40.926331, 34.452126, 22.139849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908970, 34.857071, 21.490448>,  <40.511509, 34.801613, 21.697378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908970, 34.857071, 21.490448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.936943, 35.210007, 21.304291>,  <39.953728, 35.421768, 21.192596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.936943, 35.210007, 21.304291>,  <39.908970, 34.857071, 21.490448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936943, 35.210007, 21.304291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343967, -0.459251, -0.819009,
		-0.936374, -0.102805, -0.335611,
		0.069932, 0.882337, -0.465393,
		39.957924, 35.474709, 21.164673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428631, 34.878563, 20.931522>,  <39.908970, 34.857071, 21.490448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428631, 34.878563, 20.931522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.726490, 35.133480, 20.852163>,  <39.905205, 35.286430, 20.804548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.726490, 35.133480, 20.852163>,  <39.428631, 34.878563, 20.931522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726490, 35.133480, 20.852163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193978, -0.491041, -0.849265,
		-0.638649, 0.593919, -0.489273,
		0.744648, 0.637290, -0.198395,
		39.949883, 35.324669, 20.792645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314819, 35.156338, 20.275753>,  <39.428631, 34.878563, 20.931522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314819, 35.156338, 20.275753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.704582, 35.229004, 20.328712>,  <39.938438, 35.272602, 20.360487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.704582, 35.229004, 20.328712>,  <39.314819, 35.156338, 20.275753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704582, 35.229004, 20.328712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199478, -0.427261, -0.881849,
		-0.103632, 0.885690, -0.452564,
		0.974407, 0.181665, 0.132397,
		39.996902, 35.283504, 20.368431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550247, 35.242313, 19.570055>,  <39.314819, 35.156338, 20.275753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550247, 35.242313, 19.570055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.880238, 35.191162, 19.790258>,  <40.078232, 35.160473, 19.922380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.880238, 35.191162, 19.790258>,  <39.550247, 35.242313, 19.570055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880238, 35.191162, 19.790258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438718, -0.469157, -0.766433,
		0.356280, 0.873808, -0.330944,
		0.824979, -0.127874, 0.550506,
		40.127731, 35.152802, 19.955410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108585, 35.656467, 19.250967>,  <39.550247, 35.242313, 19.570055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108585, 35.656467, 19.250967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.271679, 35.357994, 19.461475>,  <40.369534, 35.178909, 19.587780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.271679, 35.357994, 19.461475>,  <40.108585, 35.656467, 19.250967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271679, 35.357994, 19.461475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306737, -0.430931, -0.848652,
		0.860037, 0.507453, 0.053177,
		0.407735, -0.746184, 0.526271,
		40.394001, 35.134140, 19.619356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661839, 35.467793, 18.807655>,  <40.108585, 35.656467, 19.250967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661839, 35.467793, 18.807655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.649227, 35.160881, 19.063869>,  <40.641663, 34.976734, 19.217598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.649227, 35.160881, 19.063869>,  <40.661839, 35.467793, 18.807655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649227, 35.160881, 19.063869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225995, -0.629728, -0.743215,
		0.973618, 0.121327, 0.193255,
		-0.031526, -0.767282, 0.640534,
		40.639771, 34.930695, 19.256029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323647, 34.982903, 18.680058>,  <40.661839, 35.467793, 18.807655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323647, 34.982903, 18.680058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.030998, 34.761925, 18.839825>,  <40.855408, 34.629337, 18.935684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.030998, 34.761925, 18.839825>,  <41.323647, 34.982903, 18.680058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030998, 34.761925, 18.839825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185159, -0.724916, -0.663486,
		0.656083, -0.411465, 0.632655,
		-0.731623, -0.552443, 0.399418,
		40.811512, 34.596191, 18.959650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543430, 34.302414, 18.835722>,  <41.323647, 34.982903, 18.680058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.543430, 34.302414, 18.835722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.149647, 34.236580, 18.811253>,  <40.913376, 34.197079, 18.796572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.149647, 34.236580, 18.811253>,  <41.543430, 34.302414, 18.835722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149647, 34.236580, 18.811253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163789, -0.735211, -0.657752,
		0.063283, -0.657552, 0.750746,
		-0.984463, -0.164588, -0.061174,
		40.854309, 34.187202, 18.792900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466225, 33.583778, 18.658535>,  <41.543430, 34.302414, 18.835722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466225, 33.583778, 18.658535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.099636, 33.724331, 18.581991>,  <40.879684, 33.808662, 18.536064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.099636, 33.724331, 18.581991>,  <41.466225, 33.583778, 18.658535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099636, 33.724331, 18.581991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113378, -0.686737, -0.718010,
		-0.383708, -0.636337, 0.669211,
		-0.916468, 0.351380, -0.191360,
		40.824696, 33.829746, 18.524584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155231, 33.032059, 18.495323>,  <41.466225, 33.583778, 18.658535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155231, 33.032059, 18.495323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.913982, 33.293068, 18.311823>,  <40.769234, 33.449673, 18.201723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.913982, 33.293068, 18.311823>,  <41.155231, 33.032059, 18.495323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913982, 33.293068, 18.311823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221312, -0.689444, -0.689702,
		-0.766330, -0.314449, 0.560232,
		-0.603124, 0.652525, -0.458750,
		40.733044, 33.488827, 18.174198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637032, 32.612328, 18.368828>,  <41.155231, 33.032059, 18.495323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637032, 32.612328, 18.368828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.583591, 32.915195, 18.113062>,  <40.551529, 33.096916, 17.959602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.583591, 32.915195, 18.113062>,  <40.637032, 32.612328, 18.368828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583591, 32.915195, 18.113062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163493, -0.653196, -0.739327,
		-0.977457, 0.005768, 0.211057,
		-0.133598, 0.757167, -0.639414,
		40.543510, 33.142345, 17.921238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003761, 32.441792, 17.959196>,  <40.637032, 32.612328, 18.368828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003761, 32.441792, 17.959196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.235809, 32.708111, 17.771505>,  <40.375038, 32.867901, 17.658890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.235809, 32.708111, 17.771505>,  <40.003761, 32.441792, 17.959196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235809, 32.708111, 17.771505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039852, -0.552182, -0.832771,
		-0.813556, 0.501806, -0.293798,
		0.580119, 0.665797, -0.469229,
		40.409843, 32.907848, 17.630737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897377, 32.258728, 18.705618>,  <40.003761, 32.441792, 17.959196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897377, 32.258728, 18.705618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.805283, 32.546906, 18.443947>,  <39.750027, 32.719814, 18.286943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.805283, 32.546906, 18.443947>,  <39.897377, 32.258728, 18.705618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805283, 32.546906, 18.443947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953808, -0.033756, 0.298515,
		0.192982, 0.692688, 0.694939,
		-0.230236, 0.720446, -0.654177,
		39.736210, 32.763039, 18.247694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416115, 32.841835, 18.964796>,  <39.897377, 32.258728, 18.705618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416115, 32.841835, 18.964796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.337570, 32.796658, 18.575193>,  <39.290443, 32.769550, 18.341433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.337570, 32.796658, 18.575193>,  <39.416115, 32.841835, 18.964796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337570, 32.796658, 18.575193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963845, -0.160249, 0.212892,
		-0.180129, 0.980593, -0.077398,
		-0.196357, -0.112948, -0.974006,
		39.278664, 32.762772, 18.282991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777706, 33.209217, 18.848562>,  <39.416115, 32.841835, 18.964796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777706, 33.209217, 18.848562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.821404, 32.936840, 18.558905>,  <38.847622, 32.773415, 18.385111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.821404, 32.936840, 18.558905>,  <38.777706, 33.209217, 18.848562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821404, 32.936840, 18.558905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985002, -0.172040, 0.013182,
		-0.133557, 0.711842, -0.689524,
		0.109242, -0.680943, -0.724143,
		38.854176, 32.732555, 18.341661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265312, 33.328758, 18.391159>,  <38.777706, 33.209217, 18.848562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265312, 33.328758, 18.391159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.357876, 32.951797, 18.294561>,  <38.413414, 32.725620, 18.236603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.357876, 32.951797, 18.294561>,  <38.265312, 33.328758, 18.391159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357876, 32.951797, 18.294561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956589, -0.265625, 0.119920,
		-0.177160, 0.203260, -0.962964,
		0.231413, -0.942406, -0.241494,
		38.427299, 32.669075, 18.222113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850327, 33.106056, 17.844069>,  <38.265312, 33.328758, 18.391159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850327, 33.106056, 17.844069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.969597, 32.775230, 18.034670>,  <38.041161, 32.576736, 18.149031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.969597, 32.775230, 18.034670>,  <37.850327, 33.106056, 17.844069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969597, 32.775230, 18.034670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951846, -0.294919, 0.083742,
		0.071269, -0.478526, -0.875176,
		0.298179, -0.827064, 0.476502,
		38.059052, 32.527111, 18.177620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318020, 32.609131, 17.606243>,  <37.850327, 33.106056, 17.844069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318020, 32.609131, 17.606243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.512680, 32.454807, 17.919756>,  <37.629478, 32.362213, 18.107864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.512680, 32.454807, 17.919756>,  <37.318020, 32.609131, 17.606243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512680, 32.454807, 17.919756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872633, -0.256763, 0.415432,
		0.040968, -0.886128, -0.461627,
		0.486655, -0.385811, 0.783784,
		37.658676, 32.339066, 18.154892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903263, 31.995338, 17.735355>,  <37.318020, 32.609131, 17.606243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903263, 31.995338, 17.735355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.119843, 32.099113, 18.055237>,  <37.249790, 32.161377, 18.247166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.119843, 32.099113, 18.055237>,  <36.903263, 31.995338, 17.735355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119843, 32.099113, 18.055237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790157, -0.167911, 0.589456,
		0.287205, -0.951051, 0.114081,
		0.541447, 0.259436, 0.799704,
		37.282276, 32.176945, 18.295149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729969, 31.517498, 18.206079>,  <36.903263, 31.995338, 17.735355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729969, 31.517498, 18.206079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.901989, 31.801353, 18.429317>,  <37.005199, 31.971666, 18.563261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.901989, 31.801353, 18.429317>,  <36.729969, 31.517498, 18.206079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901989, 31.801353, 18.429317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726390, -0.095112, 0.680669,
		0.536112, -0.698115, 0.474573,
		0.430048, 0.709640, 0.558095,
		37.031002, 32.014244, 18.596746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594254, 31.304314, 18.845278>,  <36.729969, 31.517498, 18.206079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594254, 31.304314, 18.845278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.679935, 31.688820, 18.914656>,  <36.731346, 31.919523, 18.956282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.679935, 31.688820, 18.914656>,  <36.594254, 31.304314, 18.845278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679935, 31.688820, 18.914656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691065, 0.023652, 0.722405,
		0.690321, -0.274605, 0.669364,
		0.214208, 0.961266, 0.173443,
		36.744198, 31.977200, 18.966688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371357, 31.156849, 19.236057>,  <36.594254, 31.304314, 18.845278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371357, 31.156849, 19.236057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.397350, 30.793535, 19.401369>,  <37.412949, 30.575548, 19.500555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.397350, 30.793535, 19.401369>,  <37.371357, 31.156849, 19.236057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397350, 30.793535, 19.401369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452854, -0.342207, -0.823297,
		0.889213, 0.240658, 0.389081,
		0.064987, -0.908283, 0.413278,
		37.416847, 30.521049, 19.525352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861027, 30.757446, 18.877085>,  <37.371357, 31.156849, 19.236057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861027, 30.757446, 18.877085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.765484, 30.421047, 19.071266>,  <37.708157, 30.219208, 19.187775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.765484, 30.421047, 19.071266>,  <37.861027, 30.757446, 18.877085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765484, 30.421047, 19.071266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460635, -0.538230, -0.705779,
		0.854846, 0.055035, 0.515955,
		-0.238860, -0.840999, 0.485454,
		37.693825, 30.168747, 19.216902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422108, 30.344692, 18.763494>,  <37.861027, 30.757446, 18.877085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422108, 30.344692, 18.763494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.112255, 30.103275, 18.839056>,  <37.926342, 29.958426, 18.884392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.112255, 30.103275, 18.839056>,  <38.422108, 30.344692, 18.763494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112255, 30.103275, 18.839056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179725, -0.496477, -0.849241,
		0.606337, -0.623898, 0.493058,
		-0.774632, -0.603541, 0.188902,
		37.879864, 29.922213, 18.895727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651722, 29.713865, 18.779285>,  <38.422108, 30.344692, 18.763494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651722, 29.713865, 18.779285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.264462, 29.644777, 18.706781>,  <38.032104, 29.603325, 18.663279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.264462, 29.644777, 18.706781>,  <38.651722, 29.713865, 18.779285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264462, 29.644777, 18.706781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249686, -0.612337, -0.750134,
		0.018573, -0.771499, 0.635960,
		-0.968149, -0.172723, -0.181259,
		37.974018, 29.592960, 18.652403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535316, 28.906986, 18.741962>,  <38.651722, 29.713865, 18.779285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535316, 28.906986, 18.741962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.263466, 29.102869, 18.523495>,  <38.100357, 29.220398, 18.392414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.263466, 29.102869, 18.523495>,  <38.535316, 28.906986, 18.741962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263466, 29.102869, 18.523495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084841, -0.687075, -0.721617,
		-0.728641, -0.536764, 0.425403,
		-0.679621, 0.489708, -0.546170,
		38.059578, 29.249781, 18.359644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155716, 28.371325, 18.469818>,  <38.535316, 28.906986, 18.741962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155716, 28.371325, 18.469818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.066082, 28.683361, 18.236153>,  <38.012302, 28.870583, 18.095953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.066082, 28.683361, 18.236153>,  <38.155716, 28.371325, 18.469818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066082, 28.683361, 18.236153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291627, -0.518267, -0.803960,
		-0.929914, -0.350511, -0.111360,
		-0.224083, 0.780090, -0.584163,
		37.998856, 28.917389, 18.060904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937248, 28.075584, 17.986546>,  <38.155716, 28.371325, 18.469818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937248, 28.075584, 17.986546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.007523, 28.432411, 17.820005>,  <38.049686, 28.646507, 17.720081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.007523, 28.432411, 17.820005>,  <37.937248, 28.075584, 17.986546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007523, 28.432411, 17.820005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532291, -0.441857, -0.722100,
		-0.828130, -0.094755, -0.552469,
		0.175690, 0.892067, -0.416352,
		38.060230, 28.700031, 17.695099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589523, 28.108141, 17.284508>,  <37.937248, 28.075584, 17.986546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589523, 28.108141, 17.284508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.885185, 28.377113, 17.299921>,  <38.062584, 28.538496, 17.309170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.885185, 28.377113, 17.299921>,  <37.589523, 28.108141, 17.284508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885185, 28.377113, 17.299921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455935, -0.457428, -0.763468,
		-0.495752, 0.581891, -0.644696,
		0.739157, 0.672430, 0.038533,
		38.106934, 28.578842, 17.311481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709354, 28.303360, 16.666153>,  <37.589523, 28.108141, 17.284508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709354, 28.303360, 16.666153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.062988, 28.382589, 16.835459>,  <38.275169, 28.430128, 16.937042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.062988, 28.382589, 16.835459>,  <37.709354, 28.303360, 16.666153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062988, 28.382589, 16.835459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452146, -0.591477, -0.667622,
		0.118112, 0.781615, -0.612477,
		0.884089, 0.198075, 0.423265,
		38.328217, 28.442011, 16.962439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.121284, 34.382561, 31.598671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.505394, 34.282791, 31.648724>,  <34.735859, 34.222931, 31.678755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.505394, 34.282791, 31.648724>,  <34.121284, 34.382561, 31.598671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505394, 34.282791, 31.648724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027456, -0.361790, -0.931855,
		0.277695, 0.898274, -0.340571,
		0.960277, -0.249421, 0.125130,
		34.793476, 34.207966, 31.686262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357540, 34.581146, 31.001051>,  <34.121284, 34.382561, 31.598671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357540, 34.581146, 31.001051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.656879, 34.353447, 31.137245>,  <34.836483, 34.216827, 31.218962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.656879, 34.353447, 31.137245>,  <34.357540, 34.581146, 31.001051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656879, 34.353447, 31.137245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225286, -0.264670, -0.937654,
		0.623876, 0.778398, -0.069821,
		0.748348, -0.569250, 0.340484,
		34.881386, 34.182671, 31.239391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979897, 34.596474, 30.461977>,  <34.357540, 34.581146, 31.001051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979897, 34.596474, 30.461977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.017700, 34.264290, 30.681576>,  <35.040382, 34.064980, 30.813335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.017700, 34.264290, 30.681576>,  <34.979897, 34.596474, 30.461977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017700, 34.264290, 30.681576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270711, -0.509247, -0.816935,
		0.958010, 0.225826, 0.176688,
		0.094507, -0.830464, 0.548997,
		35.046051, 34.015152, 30.846275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631119, 34.369873, 30.240263>,  <34.979897, 34.596474, 30.461977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631119, 34.369873, 30.240263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.414280, 34.072773, 30.397467>,  <35.284176, 33.894512, 30.491789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.414280, 34.072773, 30.397467>,  <35.631119, 34.369873, 30.240263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414280, 34.072773, 30.397467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162153, -0.551364, -0.818355,
		0.824524, -0.379898, 0.419331,
		-0.542095, -0.742749, 0.393011,
		35.251652, 33.849949, 30.515369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971813, 33.787609, 30.154184>,  <35.631119, 34.369873, 30.240263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971813, 33.787609, 30.154184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.585453, 33.686214, 30.175283>,  <35.353638, 33.625378, 30.187943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.585453, 33.686214, 30.175283>,  <35.971813, 33.787609, 30.154184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585453, 33.686214, 30.175283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040934, -0.350668, -0.935605,
		0.255656, -0.901542, 0.349086,
		-0.965901, -0.253482, 0.052747,
		35.295681, 33.610168, 30.191107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908730, 33.252972, 29.835421>,  <35.971813, 33.787609, 30.154184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908730, 33.252972, 29.835421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.517204, 33.332687, 29.854242>,  <35.282291, 33.380516, 29.865536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.517204, 33.332687, 29.854242>,  <35.908730, 33.252972, 29.835421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517204, 33.332687, 29.854242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125648, -0.403094, -0.906492,
		-0.161682, -0.893197, 0.419593,
		-0.978811, 0.199285, 0.047056,
		35.223560, 33.392471, 29.868359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642918, 32.627686, 29.550573>,  <35.908730, 33.252972, 29.835421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642918, 32.627686, 29.550573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.361797, 32.911213, 29.526428>,  <35.193127, 33.081329, 29.511940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.361797, 32.911213, 29.526428>,  <35.642918, 32.627686, 29.550573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361797, 32.911213, 29.526428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318752, -0.389629, -0.864052,
		-0.635977, -0.588017, 0.499769,
		-0.702802, 0.708820, -0.060364,
		35.150955, 33.123859, 29.508320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988186, 32.272446, 29.282957>,  <35.642918, 32.627686, 29.550573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988186, 32.272446, 29.282957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.958458, 32.664425, 29.209015>,  <34.940620, 32.899612, 29.164650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.958458, 32.664425, 29.209015>,  <34.988186, 32.272446, 29.282957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958458, 32.664425, 29.209015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283767, -0.198484, -0.938126,
		-0.956009, -0.017264, 0.292829,
		-0.074317, 0.979952, -0.184853,
		34.936161, 32.958412, 29.153559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318974, 32.285969, 28.952032>,  <34.988186, 32.272446, 29.282957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318974, 32.285969, 28.952032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.519459, 32.615379, 28.845751>,  <34.639748, 32.813026, 28.781982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.519459, 32.615379, 28.845751>,  <34.318974, 32.285969, 28.952032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519459, 32.615379, 28.845751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230426, -0.168949, -0.958311,
		-0.834081, 0.541541, 0.105082,
		0.501211, 0.823523, -0.265703,
		34.669823, 32.862434, 28.766041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838741, 32.568722, 28.619747>,  <34.318974, 32.285969, 28.952032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838741, 32.568722, 28.619747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.181114, 32.733402, 28.494602>,  <34.386539, 32.832211, 28.419516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.181114, 32.733402, 28.494602>,  <33.838741, 32.568722, 28.619747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181114, 32.733402, 28.494602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306385, -0.083603, -0.948229,
		-0.416543, 0.907476, 0.054581,
		0.855933, 0.411701, -0.312861,
		34.437893, 32.856911, 28.400743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592957, 33.068455, 28.153841>,  <33.838741, 32.568722, 28.619747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592957, 33.068455, 28.153841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.983906, 33.000633, 28.103268>,  <34.218475, 32.959942, 28.072924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.983906, 33.000633, 28.103268>,  <33.592957, 33.068455, 28.153841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983906, 33.000633, 28.103268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167278, -0.253863, -0.952666,
		0.129431, 0.952263, -0.276482,
		0.977377, -0.169554, -0.126435,
		34.277119, 32.949768, 28.065338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812195, 33.422405, 27.581766>,  <33.592957, 33.068455, 28.153841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812195, 33.422405, 27.581766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.084625, 33.131943, 27.619358>,  <34.248085, 32.957664, 27.641912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.084625, 33.131943, 27.619358>,  <33.812195, 33.422405, 27.581766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084625, 33.131943, 27.619358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116864, -0.234511, -0.965063,
		0.722823, 0.646303, -0.244582,
		0.681080, -0.726153, 0.093980,
		34.288948, 32.914097, 27.647552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935509, 34.141674, 27.370062>,  <33.812195, 33.422405, 27.581766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935509, 34.141674, 27.370062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.794971, 34.428112, 27.128809>,  <33.710651, 34.599976, 26.984056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.794971, 34.428112, 27.128809>,  <33.935509, 34.141674, 27.370062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794971, 34.428112, 27.128809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294667, 0.526887, 0.797221,
		0.888669, 0.457819, 0.025893,
		-0.351340, 0.716095, -0.603132,
		33.689571, 34.642941, 26.947870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150486, 34.798992, 27.638254>,  <33.935509, 34.141674, 27.370062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150486, 34.798992, 27.638254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.842888, 34.873966, 27.393789>,  <33.658329, 34.918953, 27.247110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.842888, 34.873966, 27.393789>,  <34.150486, 34.798992, 27.638254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842888, 34.873966, 27.393789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211950, 0.827212, 0.520382,
		0.603100, 0.529706, -0.596392,
		-0.768992, 0.187437, -0.611162,
		33.612190, 34.930199, 27.210440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316841, 35.548985, 27.412390>,  <34.150486, 34.798992, 27.638254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316841, 35.548985, 27.412390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.926277, 35.465569, 27.389982>,  <33.691940, 35.415520, 27.376537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.926277, 35.465569, 27.389982>,  <34.316841, 35.548985, 27.412390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926277, 35.465569, 27.389982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187841, 0.692343, 0.696690,
		-0.106505, 0.690776, -0.715181,
		-0.976408, -0.208541, -0.056018,
		33.633354, 35.403008, 27.373177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961002, 36.156185, 27.383575>,  <34.316841, 35.548985, 27.412390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961002, 36.156185, 27.383575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.697361, 35.895428, 27.533573>,  <33.539177, 35.738972, 27.623571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.697361, 35.895428, 27.533573>,  <33.961002, 36.156185, 27.383575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697361, 35.895428, 27.533573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268148, 0.669560, 0.692666,
		-0.702627, 0.355982, -0.616111,
		-0.659100, -0.651894, 0.374995,
		33.499630, 35.699860, 27.646072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409218, 36.616722, 27.557987>,  <33.961002, 36.156185, 27.383575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409218, 36.616722, 27.557987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.389126, 36.276794, 27.767859>,  <33.377071, 36.072838, 27.893782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.389126, 36.276794, 27.767859>,  <33.409218, 36.616722, 27.557987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389126, 36.276794, 27.767859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135732, 0.526275, 0.839411,
		-0.989471, -0.029050, -0.141784,
		-0.050233, -0.849818, 0.524678,
		33.374058, 36.021851, 27.925262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771473, 36.595417, 27.907087>,  <33.409218, 36.616722, 27.557987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771473, 36.595417, 27.907087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.004307, 36.350487, 28.121092>,  <33.144009, 36.203529, 28.249495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.004307, 36.350487, 28.121092>,  <32.771473, 36.595417, 27.907087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004307, 36.350487, 28.121092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202905, 0.527774, 0.824793,
		-0.787405, -0.588657, 0.182966,
		0.582085, -0.612321, 0.535013,
		33.178932, 36.166790, 28.281595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445492, 36.556564, 28.611839>,  <32.771473, 36.595417, 27.907087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445492, 36.556564, 28.611839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.782917, 36.366070, 28.711111>,  <32.985374, 36.251774, 28.770674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.782917, 36.366070, 28.711111>,  <32.445492, 36.556564, 28.611839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782917, 36.366070, 28.711111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124854, 0.275548, 0.953145,
		-0.522310, -0.835027, 0.172983,
		0.843566, -0.476239, 0.248178,
		33.035988, 36.223198, 28.785564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284096, 36.261837, 29.163620>,  <32.445492, 36.556564, 28.611839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284096, 36.261837, 29.163620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.680077, 36.317345, 29.152704>,  <32.917664, 36.350651, 29.146154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.680077, 36.317345, 29.152704>,  <32.284096, 36.261837, 29.163620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680077, 36.317345, 29.152704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031829, 0.406608, 0.913048,
		0.137801, -0.903002, 0.406937,
		0.989948, 0.138771, -0.027289,
		32.977062, 36.358974, 29.144518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698910, 35.883003, 29.709295>,  <32.284096, 36.261837, 29.163620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698910, 35.883003, 29.709295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.910507, 36.205574, 29.603579>,  <33.037464, 36.399117, 29.540148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.910507, 36.205574, 29.603579>,  <32.698910, 35.883003, 29.709295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910507, 36.205574, 29.603579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146388, 0.220056, 0.964441,
		0.835907, -0.548868, -0.001643,
		0.528989, 0.806424, -0.264294,
		33.069202, 36.447502, 29.524290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145805, 35.751060, 30.149824>,  <32.698910, 35.883003, 29.709295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145805, 35.751060, 30.149824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.197468, 36.124367, 30.015762>,  <33.228466, 36.348351, 29.935326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.197468, 36.124367, 30.015762>,  <33.145805, 35.751060, 30.149824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197468, 36.124367, 30.015762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162522, 0.313493, 0.935579,
		0.978216, -0.175304, -0.111188,
		0.129154, 0.933269, -0.335154,
		33.236214, 36.404346, 29.915216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800903, 35.964077, 30.431131>,  <33.145805, 35.751060, 30.149824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800903, 35.964077, 30.431131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.588619, 36.282898, 30.315847>,  <33.461250, 36.474190, 30.246677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.588619, 36.282898, 30.315847>,  <33.800903, 35.964077, 30.431131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588619, 36.282898, 30.315847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169556, 0.433017, 0.885295,
		0.830423, 0.420964, -0.364949,
		-0.530706, 0.797048, -0.288211,
		33.429409, 36.522011, 30.229383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292210, 36.517300, 30.616804>,  <33.800903, 35.964077, 30.431131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292210, 36.517300, 30.616804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.929035, 36.677971, 30.568941>,  <33.711132, 36.774372, 30.540224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.929035, 36.677971, 30.568941>,  <34.292210, 36.517300, 30.616804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929035, 36.677971, 30.568941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122082, 0.526576, 0.841317,
		0.400944, 0.749250, -0.527132,
		-0.907932, 0.401674, -0.119657,
		33.656654, 36.798473, 30.533045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468956, 37.161263, 30.735468>,  <34.292210, 36.517300, 30.616804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468956, 37.161263, 30.735468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.077980, 37.100327, 30.793995>,  <33.843395, 37.063766, 30.829111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.077980, 37.100327, 30.793995>,  <34.468956, 37.161263, 30.735468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077980, 37.100327, 30.793995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078923, 0.379147, 0.921965,
		-0.195924, 0.912711, -0.358569,
		-0.977438, -0.152336, 0.146318,
		33.784748, 37.054626, 30.837891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033382, 37.809029, 30.745470>,  <34.468956, 37.161263, 30.735468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033382, 37.809029, 30.745470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.866604, 37.521877, 30.968470>,  <33.766537, 37.349586, 31.102270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.866604, 37.521877, 30.968470>,  <34.033382, 37.809029, 30.745470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866604, 37.521877, 30.968470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021675, 0.605330, 0.795679,
		-0.908671, 0.343843, -0.236833,
		-0.416951, -0.717877, 0.557498,
		33.741520, 37.306515, 31.135719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541641, 38.268661, 30.244431>,  <34.033382, 37.809029, 30.745470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541641, 38.268661, 30.244431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.795605, 38.520081, 30.424124>,  <34.947983, 38.670933, 30.531940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.795605, 38.520081, 30.424124>,  <34.541641, 38.268661, 30.244431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795605, 38.520081, 30.424124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652282, -0.124503, -0.747681,
		-0.414025, 0.767739, -0.489041,
		0.634911, 0.628551, 0.449235,
		34.986076, 38.708645, 30.558893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661160, 38.892384, 29.834238>,  <34.541641, 38.268661, 30.244431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661160, 38.892384, 29.834238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.974838, 38.761330, 30.045025>,  <35.163044, 38.682697, 30.171497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.974838, 38.761330, 30.045025>,  <34.661160, 38.892384, 29.834238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974838, 38.761330, 30.045025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571141, 0.049134, -0.819380,
		0.242567, 0.943525, 0.225658,
		0.784193, -0.327637, 0.526968,
		35.210094, 38.663040, 30.203115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312256, 39.251877, 29.703754>,  <34.661160, 38.892384, 29.834238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312256, 39.251877, 29.703754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.412926, 38.871555, 29.776020>,  <35.473328, 38.643364, 29.819380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.412926, 38.871555, 29.776020>,  <35.312256, 39.251877, 29.703754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412926, 38.871555, 29.776020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343856, -0.086649, -0.935016,
		0.904667, 0.297444, 0.305131,
		0.251676, -0.950799, 0.180666,
		35.488430, 38.586315, 29.830219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980049, 39.227573, 29.411507>,  <35.312256, 39.251877, 29.703754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980049, 39.227573, 29.411507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825073, 38.859112, 29.426281>,  <35.732086, 38.638035, 29.435146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825073, 38.859112, 29.426281>,  <35.980049, 39.227573, 29.411507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825073, 38.859112, 29.426281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350939, -0.184420, -0.918058,
		0.852485, -0.342731, 0.394721,
		-0.387442, -0.921154, 0.036938,
		35.708839, 38.582767, 29.437363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466030, 38.792973, 29.064537>,  <35.980049, 39.227573, 29.411507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466030, 38.792973, 29.064537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.123882, 38.585911, 29.072235>,  <35.918594, 38.461674, 29.076855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.123882, 38.585911, 29.072235>,  <36.466030, 38.792973, 29.064537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123882, 38.585911, 29.072235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157115, -0.294660, -0.942597,
		0.493609, -0.803250, 0.333376,
		-0.855374, -0.517653, 0.019245,
		35.867271, 38.430614, 29.078009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665485, 38.129326, 28.852369>,  <36.466030, 38.792973, 29.064537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665485, 38.129326, 28.852369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.279140, 38.173450, 28.758615>,  <36.047333, 38.199924, 28.702362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.279140, 38.173450, 28.758615>,  <36.665485, 38.129326, 28.852369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279140, 38.173450, 28.758615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193126, -0.296400, -0.935334,
		-0.172644, -0.948673, 0.264980,
		-0.965866, 0.110306, -0.234386,
		35.989380, 38.206543, 28.688299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584846, 37.479973, 28.496155>,  <36.665485, 38.129326, 28.852369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584846, 37.479973, 28.496155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.277206, 37.716770, 28.399801>,  <36.092621, 37.858849, 28.341990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.277206, 37.716770, 28.399801>,  <36.584846, 37.479973, 28.496155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277206, 37.716770, 28.399801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063605, -0.304127, -0.950506,
		-0.635955, -0.746356, 0.196250,
		-0.769100, 0.591996, -0.240883,
		36.046474, 37.894367, 28.327536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242878, 37.084251, 28.104679>,  <36.584846, 37.479973, 28.496155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242878, 37.084251, 28.104679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.115921, 37.456829, 28.033497>,  <36.039749, 37.680378, 27.990788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.115921, 37.456829, 28.033497>,  <36.242878, 37.084251, 28.104679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115921, 37.456829, 28.033497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156875, -0.133501, -0.978554,
		-0.935230, -0.338498, -0.103749,
		-0.317388, 0.931449, -0.177956,
		36.020706, 37.736263, 27.980110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004826, 37.004494, 27.397718>,  <36.242878, 37.084251, 28.104679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004826, 37.004494, 27.397718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.998711, 37.403099, 27.430508>,  <35.995041, 37.642262, 27.450182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.998711, 37.403099, 27.430508>,  <36.004826, 37.004494, 27.397718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998711, 37.403099, 27.430508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144921, 0.083325, -0.985929,
		-0.989325, -0.003194, -0.145690,
		-0.015289, 0.996517, 0.081973,
		35.994125, 37.702053, 27.455099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706779, 37.241505, 26.825920>,  <36.004826, 37.004494, 27.397718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706779, 37.241505, 26.825920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939251, 37.548431, 26.934326>,  <36.078735, 37.732590, 26.999369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939251, 37.548431, 26.934326>,  <35.706779, 37.241505, 26.825920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939251, 37.548431, 26.934326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291556, 0.114587, -0.949666,
		-0.759751, 0.630945, -0.157120,
		0.581183, 0.767319, 0.271013,
		36.113605, 37.778625, 27.015631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590118, 37.902203, 26.341541>,  <35.706779, 37.241505, 26.825920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590118, 37.902203, 26.341541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.947697, 37.923962, 26.519484>,  <36.162243, 37.937016, 26.626249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.947697, 37.923962, 26.519484>,  <35.590118, 37.902203, 26.341541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947697, 37.923962, 26.519484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422105, 0.231364, -0.876526,
		-0.150605, 0.971345, 0.183866,
		0.893949, 0.054399, 0.444855,
		36.215881, 37.940281, 26.652941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999977, 38.236935, 25.828329>,  <35.590118, 37.902203, 26.341541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999977, 38.236935, 25.828329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.280575, 38.116997, 26.086941>,  <36.448933, 38.045033, 26.242107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.280575, 38.116997, 26.086941>,  <35.999977, 38.236935, 25.828329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280575, 38.116997, 26.086941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643004, -0.124923, -0.755606,
		0.307332, 0.945773, 0.105170,
		0.701493, -0.299847, 0.646528,
		36.491024, 38.027042, 26.280899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653622, 38.588848, 25.651964>,  <35.999977, 38.236935, 25.828329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653622, 38.588848, 25.651964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.756859, 38.265774, 25.864016>,  <36.818802, 38.071930, 25.991247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.756859, 38.265774, 25.864016>,  <36.653622, 38.588848, 25.651964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756859, 38.265774, 25.864016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756783, -0.172075, -0.630610,
		0.600554, 0.563951, 0.566827,
		0.258097, -0.807681, 0.530129,
		36.834290, 38.023468, 26.023054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385059, 38.649143, 25.872478>,  <36.653622, 38.588848, 25.651964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385059, 38.649143, 25.872478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.318310, 38.255215, 25.891579>,  <37.278259, 38.018856, 25.903038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.318310, 38.255215, 25.891579>,  <37.385059, 38.649143, 25.872478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318310, 38.255215, 25.891579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730798, -0.156051, -0.664517,
		0.661881, -0.075997, 0.745746,
		-0.166876, -0.984821, 0.047749,
		37.268246, 37.959770, 25.905903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103058, 38.247169, 25.914473>,  <37.385059, 38.649143, 25.872478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103058, 38.247169, 25.914473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.819901, 37.994465, 25.788132>,  <37.650005, 37.842842, 25.712328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.819901, 37.994465, 25.788132>,  <38.103058, 38.247169, 25.914473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819901, 37.994465, 25.788132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620603, -0.342814, -0.705216,
		0.337253, -0.695235, 0.634751,
		-0.707892, -0.631765, -0.315850,
		37.607533, 37.804935, 25.693377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453079, 37.558899, 25.748615>,  <38.103058, 38.247169, 25.914473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453079, 37.558899, 25.748615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.102959, 37.567307, 25.555367>,  <37.892887, 37.572350, 25.439417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.102959, 37.567307, 25.555367>,  <38.453079, 37.558899, 25.748615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102959, 37.567307, 25.555367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427071, -0.435053, -0.792678,
		-0.226844, -0.900159, 0.371827,
		-0.875301, 0.021018, -0.483121,
		37.840370, 37.573612, 25.410431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433380, 36.980736, 25.348228>,  <38.453079, 37.558899, 25.748615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433380, 36.980736, 25.348228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.151306, 37.208992, 25.179907>,  <37.982063, 37.345947, 25.078913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.151306, 37.208992, 25.179907>,  <38.433380, 36.980736, 25.348228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151306, 37.208992, 25.179907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304022, -0.292807, -0.906551,
		-0.640534, -0.767220, 0.032995,
		-0.705186, 0.570646, -0.420805,
		37.939751, 37.380184, 25.053665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245018, 36.555195, 24.835794>,  <38.433380, 36.980736, 25.348228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245018, 36.555195, 24.835794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.109039, 36.916481, 24.731001>,  <38.027451, 37.133251, 24.668125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.109039, 36.916481, 24.731001>,  <38.245018, 36.555195, 24.835794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109039, 36.916481, 24.731001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006077, -0.276457, -0.961007,
		-0.940424, -0.328286, 0.088492,
		-0.339950, 0.903216, -0.261982,
		38.007053, 37.187447, 24.652407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705288, 36.382549, 24.476482>,  <38.245018, 36.555195, 24.835794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705288, 36.382549, 24.476482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.836212, 36.743755, 24.365171>,  <37.914764, 36.960480, 24.298384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.836212, 36.743755, 24.365171>,  <37.705288, 36.382549, 24.476482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836212, 36.743755, 24.365171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023783, -0.302280, -0.952922,
		-0.944618, 0.305282, -0.120415,
		0.327309, 0.903011, -0.278278,
		37.934406, 37.014660, 24.281689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418797, 36.635071, 23.755577>,  <37.705288, 36.382549, 24.476482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418797, 36.635071, 23.755577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.733177, 36.877232, 23.805809>,  <37.921806, 37.022530, 23.835949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.733177, 36.877232, 23.805809>,  <37.418797, 36.635071, 23.755577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733177, 36.877232, 23.805809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311296, -0.211973, -0.926371,
		-0.534209, 0.767172, -0.355059,
		0.785949, 0.605404, 0.125580,
		37.968964, 37.058853, 23.843483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507832, 36.898613, 23.169434>,  <37.418797, 36.635071, 23.755577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507832, 36.898613, 23.169434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.871124, 36.983608, 23.313635>,  <38.089100, 37.034607, 23.400156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.871124, 36.983608, 23.313635>,  <37.507832, 36.898613, 23.169434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871124, 36.983608, 23.313635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413344, -0.321185, -0.852049,
		-0.065262, 0.922870, -0.379542,
		0.908233, 0.212488, 0.360502,
		38.143593, 37.047356, 23.421785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872673, 37.156967, 22.626043>,  <37.507832, 36.898613, 23.169434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872673, 37.156967, 22.626043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.161674, 37.082901, 22.892488>,  <38.335075, 37.038460, 23.052357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.161674, 37.082901, 22.892488>,  <37.872673, 37.156967, 22.626043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161674, 37.082901, 22.892488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627530, -0.228739, -0.744234,
		0.290174, 0.955715, -0.049066,
		0.722499, -0.185167, 0.666114,
		38.378426, 37.027351, 23.092323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348465, 37.423382, 22.334103>,  <37.872673, 37.156967, 22.626043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348465, 37.423382, 22.334103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.508045, 37.154556, 22.583635>,  <38.603794, 36.993259, 22.733355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.508045, 37.154556, 22.583635>,  <38.348465, 37.423382, 22.334103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508045, 37.154556, 22.583635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665657, -0.255639, -0.701106,
		0.630664, 0.694967, 0.345375,
		0.398954, -0.672063, 0.623832,
		38.627731, 36.952938, 22.770784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002541, 37.463409, 22.229702>,  <38.348465, 37.423382, 22.334103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002541, 37.463409, 22.229702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.967621, 37.106792, 22.407478>,  <38.946671, 36.892822, 22.514145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.967621, 37.106792, 22.407478>,  <39.002541, 37.463409, 22.229702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967621, 37.106792, 22.407478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698996, -0.372699, -0.610328,
		0.709777, 0.257380, 0.655722,
		-0.087301, -0.891544, 0.444441,
		38.941429, 36.839329, 22.540810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645702, 37.301811, 22.445192>,  <39.002541, 37.463409, 22.229702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645702, 37.301811, 22.445192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.424358, 36.973148, 22.390535>,  <39.291550, 36.775951, 22.357742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.424358, 36.973148, 22.390535>,  <39.645702, 37.301811, 22.445192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424358, 36.973148, 22.390535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729038, -0.398434, -0.556556,
		0.402855, -0.407593, 0.819497,
		-0.553364, -0.821656, -0.136640,
		39.258350, 36.726650, 22.349543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093945, 36.683372, 22.491734>,  <39.645702, 37.301811, 22.445192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093945, 36.683372, 22.491734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.784031, 36.532383, 22.288866>,  <39.598083, 36.441788, 22.167145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.784031, 36.532383, 22.288866>,  <40.093945, 36.683372, 22.491734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784031, 36.532383, 22.288866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632112, -0.447238, -0.632782,
		0.012035, -0.810857, 0.585121,
		-0.774783, -0.377478, -0.507170,
		39.551598, 36.419140, 22.136715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190098, 35.928574, 22.414175>,  <40.093945, 36.683372, 22.491734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190098, 35.928574, 22.414175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.922207, 35.985710, 22.122677>,  <39.761475, 36.019993, 21.947779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.922207, 35.985710, 22.122677>,  <40.190098, 35.928574, 22.414175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922207, 35.985710, 22.122677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510579, -0.624011, -0.591540,
		-0.539239, -0.768249, 0.344985,
		-0.669725, 0.142840, -0.728743,
		39.721291, 36.028564, 21.904055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150234, 35.296555, 22.103199>,  <40.190098, 35.928574, 22.414175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150234, 35.296555, 22.103199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.004566, 35.541374, 21.822405>,  <39.917168, 35.688267, 21.653929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.004566, 35.541374, 21.822405>,  <40.150234, 35.296555, 22.103199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004566, 35.541374, 21.822405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352593, -0.607031, -0.712174,
		-0.862010, -0.506864, 0.005257,
		-0.364167, 0.612047, -0.701984,
		39.895317, 35.724987, 21.611811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048542, 34.475952, 22.253023>,  <40.150234, 35.296555, 22.103199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048542, 34.475952, 22.253023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.420746, 34.480923, 22.399443>,  <40.644070, 34.483906, 22.487295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.420746, 34.480923, 22.399443>,  <40.048542, 34.475952, 22.253023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420746, 34.480923, 22.399443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353473, 0.292245, 0.888622,
		-0.095935, -0.956263, 0.276329,
		0.930512, 0.012425, 0.366050,
		40.699898, 34.484650, 22.509258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108265, 34.037830, 22.750256>,  <40.048542, 34.475952, 22.253023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108265, 34.037830, 22.750256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.431629, 34.263935, 22.815926>,  <40.625648, 34.399597, 22.855328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.431629, 34.263935, 22.815926>,  <40.108265, 34.037830, 22.750256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431629, 34.263935, 22.815926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288808, 0.137876, 0.947407,
		0.512895, -0.813309, 0.274712,
		0.808411, 0.565260, 0.164175,
		40.674152, 34.433514, 22.865177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076584, 34.122166, 23.569719>,  <40.108265, 34.037830, 22.750256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076584, 34.122166, 23.569719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.375061, 34.371078, 23.475090>,  <40.554146, 34.520428, 23.418312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.375061, 34.371078, 23.475090>,  <40.076584, 34.122166, 23.569719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375061, 34.371078, 23.475090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138739, 0.492911, 0.858947,
		0.651119, -0.608114, 0.454139,
		0.746187, 0.622283, -0.236575,
		40.598919, 34.557762, 23.404118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541405, 34.070065, 24.169851>,  <40.076584, 34.122166, 23.569719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541405, 34.070065, 24.169851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.598167, 34.411942, 23.970104>,  <40.632225, 34.617065, 23.850256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.598167, 34.411942, 23.970104>,  <40.541405, 34.070065, 24.169851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598167, 34.411942, 23.970104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111797, 0.515082, 0.849819,
		0.983547, -0.064766, 0.168644,
		0.141905, 0.854690, -0.499367,
		40.640739, 34.668350, 23.820293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007809, 34.371704, 24.647190>,  <40.541405, 34.070065, 24.169851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007809, 34.371704, 24.647190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.830849, 34.666302, 24.442499>,  <40.724674, 34.843060, 24.319685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.830849, 34.666302, 24.442499>,  <41.007809, 34.371704, 24.647190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830849, 34.666302, 24.442499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133084, 0.510370, 0.849594,
		0.886888, 0.443964, -0.127773,
		-0.442401, 0.736490, -0.511726,
		40.698128, 34.887249, 24.288980>
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
