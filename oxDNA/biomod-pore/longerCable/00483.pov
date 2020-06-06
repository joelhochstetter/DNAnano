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
	<24.164423, 34.731438, 34.897011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358862, 35.080482, 34.915997>,  <24.475525, 35.289909, 34.927387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358862, 35.080482, 34.915997>,  <24.164423, 34.731438, 34.897011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.358862, 35.080482, 34.915997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129972, -0.018475, -0.991346,
		-0.864187, 0.488058, -0.122395,
		0.486095, 0.872616, 0.047468,
		24.504690, 35.342266, 34.930237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.336370, 34.851097, 34.199306>,  <24.164423, 34.731438, 34.897011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.336370, 34.851097, 34.199306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.450087, 35.206772, 34.342709>,  <24.518316, 35.420177, 34.428749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.450087, 35.206772, 34.342709>,  <24.336370, 34.851097, 34.199306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.450087, 35.206772, 34.342709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133004, 0.333744, -0.933233,
		-0.949467, 0.312994, -0.023384,
		0.284292, 0.889185, 0.358509,
		24.535374, 35.473526, 34.450260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.957819, 35.351360, 33.844883>,  <24.336370, 34.851097, 34.199306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.957819, 35.351360, 33.844883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.239967, 35.590534, 33.997162>,  <24.409256, 35.734039, 34.088528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.239967, 35.590534, 33.997162>,  <23.957819, 35.351360, 33.844883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.239967, 35.590534, 33.997162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144246, 0.404754, -0.902977,
		-0.694007, 0.691847, 0.199252,
		0.705370, 0.597931, 0.380698,
		24.451578, 35.769913, 34.111370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.898985, 36.011478, 33.505852>,  <23.957819, 35.351360, 33.844883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.898985, 36.011478, 33.505852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.279734, 35.994656, 33.627289>,  <24.508183, 35.984562, 33.700153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.279734, 35.994656, 33.627289>,  <23.898985, 36.011478, 33.505852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.279734, 35.994656, 33.627289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292958, 0.415981, -0.860892,
		-0.090082, 0.908400, 0.408282,
		0.951872, -0.042058, 0.303596,
		24.565296, 35.982037, 33.718369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.332809, 36.710167, 33.415653>,  <23.898985, 36.011478, 33.505852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.332809, 36.710167, 33.415653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.564787, 36.384834, 33.397114>,  <24.703974, 36.189632, 33.385990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.564787, 36.384834, 33.397114>,  <24.332809, 36.710167, 33.415653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.564787, 36.384834, 33.397114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370784, 0.314189, -0.873959,
		0.725384, 0.489664, 0.483784,
		0.579946, -0.813335, -0.046348,
		24.738771, 36.140835, 33.383209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.968777, 36.913475, 33.215347>,  <24.332809, 36.710167, 33.415653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.968777, 36.913475, 33.215347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.932299, 36.529354, 33.109890>,  <24.910412, 36.298882, 33.046616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.932299, 36.529354, 33.109890>,  <24.968777, 36.913475, 33.215347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.932299, 36.529354, 33.109890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461366, 0.193878, -0.865767,
		0.882511, -0.200592, 0.425368,
		-0.091197, -0.960299, -0.263645,
		24.904940, 36.241264, 33.030796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.627731, 36.626030, 33.164566>,  <24.968777, 36.913475, 33.215347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.627731, 36.626030, 33.164566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388018, 36.428661, 32.912407>,  <25.244190, 36.310242, 32.761112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388018, 36.428661, 32.912407>,  <25.627731, 36.626030, 33.164566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.388018, 36.428661, 32.912407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680717, 0.100325, -0.725644,
		0.421291, -0.863986, 0.275755,
		-0.599282, -0.493419, -0.630396,
		25.208233, 36.280636, 32.723289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938242, 35.987911, 32.791470>,  <25.627731, 36.626030, 33.164566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938242, 35.987911, 32.791470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649267, 36.140923, 32.561077>,  <25.475882, 36.232731, 32.422844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649267, 36.140923, 32.561077>,  <25.938242, 35.987911, 32.791470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649267, 36.140923, 32.561077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672652, 0.195982, -0.713533,
		-0.160069, -0.902917, -0.398897,
		-0.722438, 0.382533, -0.575979,
		25.432535, 36.255684, 32.388283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.948448, 35.648655, 32.098923>,  <25.938242, 35.987911, 32.791470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.948448, 35.648655, 32.098923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.736147, 35.980732, 32.030708>,  <25.608767, 36.179977, 31.989779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.736147, 35.980732, 32.030708>,  <25.948448, 35.648655, 32.098923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.736147, 35.980732, 32.030708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606158, 0.231200, -0.760999,
		-0.592347, -0.507274, -0.625938,
		-0.530752, 0.830192, -0.170537,
		25.576921, 36.229790, 31.979548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.631140, 35.623741, 31.408661>,  <25.948448, 35.648655, 32.098923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.631140, 35.623741, 31.408661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691931, 35.997890, 31.536400>,  <25.728405, 36.222378, 31.613043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691931, 35.997890, 31.536400>,  <25.631140, 35.623741, 31.408661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691931, 35.997890, 31.536400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656319, 0.146079, -0.740207,
		-0.739019, 0.322088, -0.591701,
		0.151977, 0.935372, 0.319348,
		25.737524, 36.278503, 31.632204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.583780, 36.060833, 30.822142>,  <25.631140, 35.623741, 31.408661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.583780, 36.060833, 30.822142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779524, 36.296028, 31.079762>,  <25.896969, 36.437145, 31.234333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779524, 36.296028, 31.079762>,  <25.583780, 36.060833, 30.822142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779524, 36.296028, 31.079762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673467, 0.214396, -0.707444,
		-0.554051, 0.779938, -0.291074,
		0.489357, 0.587988, 0.644049,
		25.926331, 36.472424, 31.272976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.866926, 36.643475, 30.487198>,  <25.583780, 36.060833, 30.822142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.866926, 36.643475, 30.487198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110163, 36.620800, 30.803934>,  <26.256105, 36.607197, 30.993975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110163, 36.620800, 30.803934>,  <25.866926, 36.643475, 30.487198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110163, 36.620800, 30.803934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760453, 0.327921, -0.560517,
		-0.227889, 0.943003, 0.242511,
		0.608094, -0.056683, 0.791839,
		26.292591, 36.603794, 31.041487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.473696, 36.929890, 30.105896>,  <25.866926, 36.643475, 30.487198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.473696, 36.929890, 30.105896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792345, 37.080894, 30.294735>,  <26.983534, 37.171497, 30.408037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792345, 37.080894, 30.294735>,  <26.473696, 36.929890, 30.105896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.792345, 37.080894, 30.294735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457301, -0.134363, 0.879103,
		0.395306, -0.916204, 0.065601,
		0.796623, 0.377514, 0.472095,
		27.031332, 37.194149, 30.436363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971212, 36.462444, 30.463093>,  <26.473696, 36.929890, 30.105896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971212, 36.462444, 30.463093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986446, 36.817638, 30.646412>,  <26.995586, 37.030754, 30.756403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986446, 36.817638, 30.646412>,  <26.971212, 36.462444, 30.463093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986446, 36.817638, 30.646412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587860, -0.350965, 0.728865,
		0.808066, -0.297174, 0.508642,
		0.038084, 0.887981, 0.458300,
		26.997871, 37.084034, 30.783901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073240, 36.353722, 31.230635>,  <26.971212, 36.462444, 30.463093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073240, 36.353722, 31.230635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.856012, 36.679825, 31.150209>,  <26.725676, 36.875488, 31.101954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.856012, 36.679825, 31.150209>,  <27.073240, 36.353722, 31.230635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.856012, 36.679825, 31.150209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682172, -0.288740, 0.671768,
		0.489609, 0.501977, 0.712953,
		-0.543070, 0.815260, -0.201065,
		26.693092, 36.924404, 31.089890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887665, 36.802643, 31.893404>,  <27.073240, 36.353722, 31.230635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887665, 36.802643, 31.893404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.619331, 36.840847, 31.599232>,  <26.458332, 36.863770, 31.422728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.619331, 36.840847, 31.599232>,  <26.887665, 36.802643, 31.893404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.619331, 36.840847, 31.599232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732315, -0.241806, 0.636588,
		-0.117034, 0.965613, 0.232152,
		-0.670833, 0.095506, -0.735433,
		26.418081, 36.869499, 31.378601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411165, 37.388763, 32.009773>,  <26.887665, 36.802643, 31.893404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.411165, 37.388763, 32.009773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.260099, 37.089497, 31.791557>,  <26.169460, 36.909935, 31.660627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.260099, 37.089497, 31.791557>,  <26.411165, 37.388763, 32.009773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.260099, 37.089497, 31.791557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769433, -0.074187, 0.634404,
		-0.515112, 0.659350, -0.547646,
		-0.377667, -0.748167, -0.545541,
		26.146799, 36.865047, 31.627895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.717022, 37.588783, 31.840736>,  <26.411165, 37.388763, 32.009773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.717022, 37.588783, 31.840736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.731293, 37.190514, 31.806427>,  <25.739855, 36.951553, 31.785841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.731293, 37.190514, 31.806427>,  <25.717022, 37.588783, 31.840736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.731293, 37.190514, 31.806427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843573, -0.076023, 0.531606,
		-0.535828, 0.053389, -0.842637,
		0.035678, -0.995675, -0.085773,
		25.741997, 36.891811, 31.780695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.035936, 37.372993, 31.815521>,  <25.717022, 37.588783, 31.840736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.035936, 37.372993, 31.815521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201797, 37.016926, 31.891056>,  <25.301315, 36.803284, 31.936377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201797, 37.016926, 31.891056>,  <25.035936, 37.372993, 31.815521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.201797, 37.016926, 31.891056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802612, -0.259981, 0.536865,
		-0.428808, -0.374175, -0.822263,
		0.414654, -0.890170, 0.188835,
		25.326193, 36.749874, 31.947706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.579563, 36.755676, 31.569908>,  <25.035936, 37.372993, 31.815521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.579563, 36.755676, 31.569908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.812824, 36.611164, 31.860950>,  <24.952780, 36.524456, 32.035576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.812824, 36.611164, 31.860950>,  <24.579563, 36.755676, 31.569908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.812824, 36.611164, 31.860950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809089, -0.338643, 0.480308,
		0.072872, -0.868790, -0.489789,
		0.583151, -0.361282, 0.727606,
		24.987770, 36.502781, 32.079231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.479570, 36.054367, 31.707695>,  <24.579563, 36.755676, 31.569908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.479570, 36.054367, 31.707695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.815369, 36.035320, 31.924206>,  <25.016848, 36.023891, 32.054111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.815369, 36.035320, 31.924206>,  <24.479570, 36.054367, 31.707695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.815369, 36.035320, 31.924206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514130, -0.391976, 0.762906,
		0.175841, -0.918742, -0.353543,
		0.839494, -0.047617, 0.541279,
		25.067217, 36.021034, 32.086590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.451181, 35.415901, 32.083000>,  <24.479570, 36.054367, 31.707695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.451181, 35.415901, 32.083000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.710564, 35.647114, 32.281147>,  <24.866194, 35.785843, 32.400036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.710564, 35.647114, 32.281147>,  <24.451181, 35.415901, 32.083000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.710564, 35.647114, 32.281147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292832, -0.411246, 0.863207,
		0.702678, -0.704809, -0.097408,
		0.648455, 0.578032, 0.495364,
		24.905100, 35.820522, 32.429756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.783760, 35.044769, 32.624447>,  <24.451181, 35.415901, 32.083000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.783760, 35.044769, 32.624447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.828852, 35.421108, 32.752258>,  <24.855906, 35.646912, 32.828945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.828852, 35.421108, 32.752258>,  <24.783760, 35.044769, 32.624447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.828852, 35.421108, 32.752258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349167, -0.263564, 0.899231,
		0.930255, -0.212938, 0.298801,
		0.112728, 0.940846, 0.319533,
		24.862671, 35.703362, 32.848118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.215248, 34.988804, 33.142044>,  <24.783760, 35.044769, 32.624447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.215248, 34.988804, 33.142044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995319, 35.317131, 33.203953>,  <24.863361, 35.514126, 33.241096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995319, 35.317131, 33.203953>,  <25.215248, 34.988804, 33.142044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.995319, 35.317131, 33.203953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193254, -0.305267, 0.932451,
		0.812619, 0.482773, 0.326469,
		-0.549822, 0.820818, 0.154768,
		24.830374, 35.563377, 33.250381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.018867, 35.134617, 33.236145>,  <25.215248, 34.988804, 33.142044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.018867, 35.134617, 33.236145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964409, 34.972214, 33.597614>,  <25.931734, 34.874771, 33.814495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964409, 34.972214, 33.597614>,  <26.018867, 35.134617, 33.236145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.964409, 34.972214, 33.597614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268826, -0.893079, -0.360753,
		0.953518, 0.193814, 0.230737,
		-0.136148, -0.406012, 0.903669,
		25.923565, 34.850410, 33.868713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.557285, 35.459419, 33.685684>,  <26.018867, 35.134617, 33.236145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.557285, 35.459419, 33.685684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416374, 35.832211, 33.651478>,  <25.331827, 36.055885, 33.630955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416374, 35.832211, 33.651478>,  <25.557285, 35.459419, 33.685684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.416374, 35.832211, 33.651478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357265, -0.049465, 0.932692,
		0.865021, 0.359117, 0.350390,
		-0.352278, 0.931981, -0.085511,
		25.310692, 36.111805, 33.625824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790960, 35.976521, 34.172832>,  <25.557285, 35.459419, 33.685684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790960, 35.976521, 34.172832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410137, 36.024780, 34.060383>,  <25.181644, 36.053738, 33.992912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410137, 36.024780, 34.060383>,  <25.790960, 35.976521, 34.172832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.410137, 36.024780, 34.060383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303630, -0.260349, 0.916530,
		0.037390, 0.957947, 0.284500,
		-0.952056, 0.120652, -0.281127,
		25.124521, 36.060974, 33.976044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.449413, 36.448215, 34.596352>,  <25.790960, 35.976521, 34.172832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.449413, 36.448215, 34.596352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134665, 36.249722, 34.449612>,  <24.945814, 36.130627, 34.361568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134665, 36.249722, 34.449612>,  <25.449413, 36.448215, 34.596352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.134665, 36.249722, 34.449612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273407, -0.252609, 0.928136,
		-0.553244, 0.830626, 0.063097,
		-0.786873, -0.496235, -0.366854,
		24.898603, 36.100849, 34.339554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.907562, 36.629505, 35.032234>,  <25.449413, 36.448215, 34.596352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.907562, 36.629505, 35.032234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.803642, 36.288136, 34.851494>,  <24.741291, 36.083313, 34.743050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.803642, 36.288136, 34.851494>,  <24.907562, 36.629505, 35.032234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.803642, 36.288136, 34.851494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296239, -0.374917, 0.878453,
		-0.919101, 0.362076, -0.155415,
		-0.259800, -0.853427, -0.451848,
		24.725702, 36.032108, 34.715939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.139503, 36.992855, 35.714474>,  <24.907562, 36.629505, 35.032234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.139503, 36.992855, 35.714474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.767889, 37.000175, 35.862286>,  <24.544920, 37.004570, 35.950974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.767889, 37.000175, 35.862286>,  <25.139503, 36.992855, 35.714474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.767889, 37.000175, 35.862286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119854, 0.930030, -0.347390,
		-0.350034, -0.367028, -0.861839,
		-0.929038, 0.018303, 0.369532,
		24.489178, 37.005665, 35.973145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.728642, 37.070824, 36.146114>,  <25.139503, 36.992855, 35.714474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.728642, 37.070824, 36.146114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091318, 37.200947, 36.253510>,  <26.308924, 37.279018, 36.317947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091318, 37.200947, 36.253510>,  <25.728642, 37.070824, 36.146114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091318, 37.200947, 36.253510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299432, 0.944736, -0.133470,
		-0.297065, 0.040623, 0.953993,
		0.906693, 0.325305, 0.268485,
		26.363327, 37.298538, 36.334053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.661093, 37.670502, 36.606812>,  <25.728642, 37.070824, 36.146114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.661093, 37.670502, 36.606812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033321, 37.714241, 36.467049>,  <26.256659, 37.740482, 36.383190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033321, 37.714241, 36.467049>,  <25.661093, 37.670502, 36.606812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033321, 37.714241, 36.467049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172817, 0.972535, -0.155914,
		0.322759, 0.205472, 0.923909,
		0.930570, 0.109345, -0.349404,
		26.312492, 37.747044, 36.362228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.988007, 38.235107, 36.937096>,  <25.661093, 37.670502, 36.606812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.988007, 38.235107, 36.937096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200050, 38.185219, 36.601612>,  <26.327276, 38.155285, 36.400322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200050, 38.185219, 36.601612>,  <25.988007, 38.235107, 36.937096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200050, 38.185219, 36.601612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047360, 0.983225, -0.176143,
		0.846606, 0.133096, 0.515308,
		0.530108, -0.124719, -0.838708,
		26.359083, 38.147804, 36.349998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434727, 38.759018, 36.993023>,  <25.988007, 38.235107, 36.937096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434727, 38.759018, 36.993023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405708, 38.668030, 36.604591>,  <26.388298, 38.613438, 36.371532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405708, 38.668030, 36.604591>,  <26.434727, 38.759018, 36.993023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405708, 38.668030, 36.604591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070888, 0.972358, -0.222475,
		0.994843, 0.052698, -0.086664,
		-0.072544, -0.227471, -0.971079,
		26.383945, 38.599789, 36.313267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968777, 39.084606, 36.672264>,  <26.434727, 38.759018, 36.993023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968777, 39.084606, 36.672264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737148, 39.014164, 36.353851>,  <26.598171, 38.971897, 36.162804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737148, 39.014164, 36.353851>,  <26.968777, 39.084606, 36.672264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.737148, 39.014164, 36.353851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106828, 0.951582, -0.288234,
		0.808249, -0.251946, -0.532219,
		-0.579070, -0.176109, -0.796030,
		26.563427, 38.961330, 36.115044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264797, 39.520439, 36.014328>,  <26.968777, 39.084606, 36.672264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264797, 39.520439, 36.014328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875898, 39.438000, 35.970043>,  <26.642559, 39.388535, 35.943470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875898, 39.438000, 35.970043>,  <27.264797, 39.520439, 36.014328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.875898, 39.438000, 35.970043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139317, 0.890205, -0.433735,
		0.187953, -0.406273, -0.894213,
		-0.972247, -0.206101, -0.110716,
		26.584225, 39.376171, 35.936829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168898, 39.475597, 35.231754>,  <27.264797, 39.520439, 36.014328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168898, 39.475597, 35.231754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802059, 39.360668, 35.342304>,  <26.581957, 39.291710, 35.408634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802059, 39.360668, 35.342304>,  <27.168898, 39.475597, 35.231754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802059, 39.360668, 35.342304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319315, 0.944457, -0.077715,
		-0.238691, -0.159522, -0.957904,
		-0.917096, -0.287323, 0.276371,
		26.526930, 39.274471, 35.425217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737572, 39.906208, 34.845676>,  <27.168898, 39.475597, 35.231754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737572, 39.906208, 34.845676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501862, 39.779915, 35.143150>,  <26.360435, 39.704140, 35.321636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501862, 39.779915, 35.143150>,  <26.737572, 39.906208, 34.845676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.501862, 39.779915, 35.143150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258555, 0.945768, 0.196652,
		-0.765443, -0.076402, -0.638952,
		-0.589276, -0.315731, 0.743686,
		26.325079, 39.685196, 35.366257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.021563, 40.291813, 34.731281>,  <26.737572, 39.906208, 34.845676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.021563, 40.291813, 34.731281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117186, 40.176338, 35.102119>,  <26.174559, 40.107052, 35.324623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117186, 40.176338, 35.102119>,  <26.021563, 40.291813, 34.731281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.117186, 40.176338, 35.102119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245793, 0.905694, 0.345405,
		-0.939381, -0.310446, 0.145554,
		0.239057, -0.288691, 0.927097,
		26.188904, 40.089729, 35.380249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.099272, 41.021923, 34.963905>,  <26.021563, 40.291813, 34.731281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.099272, 41.021923, 34.963905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754156, 41.009766, 35.165764>,  <25.547087, 41.002472, 35.286880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754156, 41.009766, 35.165764>,  <26.099272, 41.021923, 34.963905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754156, 41.009766, 35.165764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280576, -0.859149, 0.427949,
		0.420557, 0.510822, 0.749795,
		-0.862791, -0.030397, 0.504645,
		25.495319, 41.000645, 35.317158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.245489, 40.800426, 35.559383>,  <26.099272, 41.021923, 34.963905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.245489, 40.800426, 35.559383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.855883, 40.711868, 35.540310>,  <25.622118, 40.658733, 35.528866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.855883, 40.711868, 35.540310>,  <26.245489, 40.800426, 35.559383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.855883, 40.711868, 35.540310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173954, -0.866185, 0.468470,
		-0.145019, 0.448004, 0.882192,
		-0.974017, -0.221398, -0.047681,
		25.563677, 40.645451, 35.526005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963608, 40.590885, 36.269627>,  <26.245489, 40.800426, 35.559383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963608, 40.590885, 36.269627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788527, 40.439346, 35.943462>,  <25.683477, 40.348423, 35.747765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788527, 40.439346, 35.943462>,  <25.963608, 40.590885, 36.269627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.788527, 40.439346, 35.943462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307280, -0.915320, 0.260325,
		-0.844983, -0.136614, 0.517049,
		-0.437701, -0.378849, -0.815408,
		25.657217, 40.325691, 35.698841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.616726, 39.926418, 36.466358>,  <25.963608, 40.590885, 36.269627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.616726, 39.926418, 36.466358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718327, 39.921661, 36.079506>,  <25.779287, 39.918808, 35.847393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718327, 39.921661, 36.079506>,  <25.616726, 39.926418, 36.466358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.718327, 39.921661, 36.079506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499644, -0.854557, 0.141734,
		-0.828153, -0.519222, -0.211118,
		0.254004, -0.011894, -0.967130,
		25.794527, 39.918095, 35.789368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.437340, 39.360424, 36.236279>,  <25.616726, 39.926418, 36.466358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.437340, 39.360424, 36.236279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704292, 39.450848, 35.952450>,  <25.864464, 39.505104, 35.782150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704292, 39.450848, 35.952450>,  <25.437340, 39.360424, 36.236279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.704292, 39.450848, 35.952450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333431, -0.942681, 0.013276,
		-0.665900, -0.245454, -0.704506,
		0.667383, 0.226064, -0.709574,
		25.904507, 39.518665, 35.739578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355976, 38.824730, 35.608810>,  <25.437340, 39.360424, 36.236279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.355976, 38.824730, 35.608810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.728130, 38.966061, 35.569744>,  <25.951424, 39.050861, 35.546303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.728130, 38.966061, 35.569744>,  <25.355976, 38.824730, 35.608810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.728130, 38.966061, 35.569744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353155, -0.935359, -0.019636,
		-0.098294, -0.016224, -0.995025,
		0.930387, 0.353328, -0.097670,
		26.007246, 39.072060, 35.540443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.695841, 38.336025, 35.250992>,  <25.355976, 38.824730, 35.608810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.695841, 38.336025, 35.250992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979555, 38.545105, 35.440178>,  <26.149784, 38.670555, 35.553688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979555, 38.545105, 35.440178>,  <25.695841, 38.336025, 35.250992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.979555, 38.545105, 35.440178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453515, -0.852022, 0.261501,
		0.539662, 0.029017, -0.841381,
		0.709287, 0.522702, 0.472964,
		26.192341, 38.701916, 35.582066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284933, 38.141468, 34.989201>,  <25.695841, 38.336025, 35.250992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284933, 38.141468, 34.989201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338650, 38.264160, 35.366112>,  <26.370880, 38.337776, 35.592258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338650, 38.264160, 35.366112>,  <26.284933, 38.141468, 34.989201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338650, 38.264160, 35.366112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363809, -0.899747, 0.241035,
		0.921742, 0.310440, -0.232418,
		0.134291, 0.306728, 0.942276,
		26.378937, 38.356178, 35.648796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852654, 37.811069, 35.209911>,  <26.284933, 38.141468, 34.989201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852654, 37.811069, 35.209911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706200, 37.916618, 35.566856>,  <26.618326, 37.979950, 35.781025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706200, 37.916618, 35.566856>,  <26.852654, 37.811069, 35.209911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.706200, 37.916618, 35.566856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382161, -0.831717, 0.402741,
		0.848468, 0.488485, 0.203678,
		-0.366135, 0.263875, 0.892365,
		26.596359, 37.995781, 35.834564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.372919, 37.791012, 35.658737>,  <26.852654, 37.811069, 35.209911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.372919, 37.791012, 35.658737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.042604, 37.773701, 35.883663>,  <26.844416, 37.763313, 36.018620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.042604, 37.773701, 35.883663>,  <27.372919, 37.791012, 35.658737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042604, 37.773701, 35.883663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295371, -0.882562, 0.365841,
		0.480447, 0.468200, 0.741593,
		-0.825789, -0.043278, 0.562317,
		26.794868, 37.760715, 36.052357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566938, 37.752209, 36.434704>,  <27.372919, 37.791012, 35.658737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566938, 37.752209, 36.434704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211523, 37.592827, 36.343719>,  <26.998274, 37.497200, 36.289127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211523, 37.592827, 36.343719>,  <27.566938, 37.752209, 36.434704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211523, 37.592827, 36.343719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325792, -0.897020, 0.298688,
		-0.323051, 0.191290, 0.926848,
		-0.888537, -0.398451, -0.227462,
		26.944962, 37.473293, 36.275482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.333422, 37.348797, 37.121037>,  <27.566938, 37.752209, 36.434704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.333422, 37.348797, 37.121037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190275, 37.221802, 36.769779>,  <27.104387, 37.145603, 36.559025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190275, 37.221802, 36.769779>,  <27.333422, 37.348797, 37.121037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190275, 37.221802, 36.769779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398666, -0.902354, 0.163778,
		-0.844391, -0.291474, 0.449496,
		-0.357867, -0.317491, -0.878140,
		27.082914, 37.126553, 36.506336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853643, 36.712730, 37.153030>,  <27.333422, 37.348797, 37.121037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853643, 36.712730, 37.153030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.071135, 36.743984, 36.818783>,  <27.201630, 36.762737, 36.618237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.071135, 36.743984, 36.818783>,  <26.853643, 36.712730, 37.153030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071135, 36.743984, 36.818783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371825, -0.915035, 0.156385,
		-0.752400, -0.395734, -0.526581,
		0.543728, 0.078132, -0.835617,
		27.234253, 36.767426, 36.568096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766766, 36.111286, 36.599854>,  <26.853643, 36.712730, 37.153030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766766, 36.111286, 36.599854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.128529, 36.258907, 36.514210>,  <27.345587, 36.347481, 36.462822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.128529, 36.258907, 36.514210>,  <26.766766, 36.111286, 36.599854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.128529, 36.258907, 36.514210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357749, -0.929391, -0.090814,
		-0.232509, 0.005535, -0.972579,
		0.904409, 0.369054, -0.214111,
		27.399851, 36.369625, 36.449978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894312, 35.808182, 36.042698>,  <26.766766, 36.111286, 36.599854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.894312, 35.808182, 36.042698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245367, 35.927162, 36.193043>,  <27.455999, 35.998550, 36.283249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245367, 35.927162, 36.193043>,  <26.894312, 35.808182, 36.042698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245367, 35.927162, 36.193043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260559, -0.954236, 0.146772,
		0.402324, -0.030877, -0.914976,
		0.877636, 0.297456, 0.375867,
		27.508657, 36.016399, 36.305801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358782, 35.442474, 35.640511>,  <26.894312, 35.808182, 36.042698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358782, 35.442474, 35.640511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462919, 35.513039, 36.020214>,  <27.525402, 35.555378, 36.248035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462919, 35.513039, 36.020214>,  <27.358782, 35.442474, 35.640511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462919, 35.513039, 36.020214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116015, -0.981759, 0.150628,
		0.958520, 0.070914, -0.276062,
		0.260345, 0.176408, 0.949263,
		27.541023, 35.565960, 36.304993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944677, 35.042000, 35.213844>,  <27.358782, 35.442474, 35.640511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944677, 35.042000, 35.213844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181986, 34.999489, 35.533028>,  <28.324371, 34.973984, 35.724537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181986, 34.999489, 35.533028>,  <27.944677, 35.042000, 35.213844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181986, 34.999489, 35.533028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484527, -0.744443, -0.459389,
		0.642853, 0.659174, -0.390166,
		0.593274, -0.106274, 0.797955,
		28.359968, 34.967606, 35.772415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645411, 34.966465, 34.992699>,  <27.944677, 35.042000, 35.213844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645411, 34.966465, 34.992699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578775, 34.753544, 35.324699>,  <28.538794, 34.625790, 35.523899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578775, 34.753544, 35.324699>,  <28.645411, 34.966465, 34.992699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578775, 34.753544, 35.324699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570439, -0.738627, -0.359208,
		0.804268, 0.413625, 0.426693,
		-0.166589, -0.532301, 0.830002,
		28.528799, 34.593853, 35.573700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504221, 34.997704, 34.323822>,  <28.645411, 34.966465, 34.992699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504221, 34.997704, 34.323822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439474, 34.631119, 34.470184>,  <28.400625, 34.411167, 34.558002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439474, 34.631119, 34.470184>,  <28.504221, 34.997704, 34.323822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439474, 34.631119, 34.470184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912566, -0.002087, -0.408924,
		0.375529, -0.400105, -0.835999,
		-0.161868, -0.916467, 0.365906,
		28.390913, 34.356178, 34.579956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669416, 34.528904, 33.749634>,  <28.504221, 34.997704, 34.323822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669416, 34.528904, 33.749634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665863, 34.217304, 34.000420>,  <28.663731, 34.030346, 34.150890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665863, 34.217304, 34.000420>,  <28.669416, 34.528904, 33.749634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665863, 34.217304, 34.000420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929198, 0.225235, 0.293019,
		-0.369475, 0.585174, 0.721845,
		-0.008882, -0.779000, 0.626961,
		28.663198, 33.983604, 34.188507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259558, 35.076588, 33.454823>,  <28.669416, 34.528904, 33.749634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259558, 35.076588, 33.454823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432810, 35.151718, 33.102203>,  <29.536760, 35.196796, 32.890633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432810, 35.151718, 33.102203>,  <29.259558, 35.076588, 33.454823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432810, 35.151718, 33.102203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803902, 0.361792, 0.472068,
		0.407603, -0.913141, 0.005708,
		0.433130, 0.187828, -0.881544,
		29.562748, 35.208065, 32.837742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926287, 34.744789, 33.520191>,  <29.259558, 35.076588, 33.454823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926287, 34.744789, 33.520191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889927, 35.081787, 33.307800>,  <29.868111, 35.283985, 33.180367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889927, 35.081787, 33.307800>,  <29.926287, 34.744789, 33.520191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889927, 35.081787, 33.307800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414482, 0.516815, 0.749071,
		0.905506, -0.151988, -0.396179,
		-0.090901, 0.842498, -0.530975,
		29.862656, 35.334538, 33.148506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156254, 35.414185, 33.534496>,  <29.926287, 34.744789, 33.520191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156254, 35.414185, 33.534496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504995, 35.558216, 33.667290>,  <30.714241, 35.644634, 33.746967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504995, 35.558216, 33.667290>,  <30.156254, 35.414185, 33.534496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504995, 35.558216, 33.667290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264395, 0.224551, -0.937908,
		-0.412268, 0.905494, 0.100573,
		0.871855, 0.360078, 0.331983,
		30.766552, 35.666241, 33.766884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209133, 36.053886, 33.259861>,  <30.156254, 35.414185, 33.534496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209133, 36.053886, 33.259861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557030, 35.867111, 33.323761>,  <30.765768, 35.755047, 33.362103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557030, 35.867111, 33.323761>,  <30.209133, 36.053886, 33.259861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557030, 35.867111, 33.323761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194888, 0.027571, -0.980438,
		0.453400, 0.883860, 0.114981,
		0.869740, -0.466939, 0.159753,
		30.817951, 35.727028, 33.371685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754593, 36.558987, 33.064220>,  <30.209133, 36.053886, 33.259861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754593, 36.558987, 33.064220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879097, 36.179375, 33.044350>,  <30.953798, 35.951607, 33.032429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879097, 36.179375, 33.044350>,  <30.754593, 36.558987, 33.064220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879097, 36.179375, 33.044350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315815, 0.152601, -0.936469,
		0.896314, 0.275795, 0.347215,
		0.311259, -0.949026, -0.049678,
		30.972475, 35.894669, 33.029446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495207, 36.522587, 32.920353>,  <30.754593, 36.558987, 33.064220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495207, 36.522587, 32.920353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283918, 36.220142, 32.765804>,  <31.157146, 36.038677, 32.673077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283918, 36.220142, 32.765804>,  <31.495207, 36.522587, 32.920353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283918, 36.220142, 32.765804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323268, 0.241690, -0.914923,
		0.785164, -0.608181, 0.116761,
		-0.528219, -0.756110, -0.386371,
		31.125452, 35.993309, 32.649895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966824, 36.368004, 32.426296>,  <31.495207, 36.522587, 32.920353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966824, 36.368004, 32.426296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626705, 36.176476, 32.338909>,  <31.422634, 36.061558, 32.286476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626705, 36.176476, 32.338909>,  <31.966824, 36.368004, 32.426296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626705, 36.176476, 32.338909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081641, 0.290072, -0.953516,
		0.519934, -0.828606, -0.207556,
		-0.850296, -0.478821, -0.218467,
		31.371616, 36.032829, 32.273369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926865, 35.905033, 31.883614>,  <31.966824, 36.368004, 32.426296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926865, 35.905033, 31.883614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573721, 36.092701, 31.891977>,  <31.361835, 36.205303, 31.896996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573721, 36.092701, 31.891977>,  <31.926865, 35.905033, 31.883614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573721, 36.092701, 31.891977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067001, 0.169901, -0.983181,
		-0.464832, -0.866610, -0.181434,
		-0.882860, 0.469171, 0.020911,
		31.308863, 36.233452, 31.898251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367502, 35.655651, 31.395958>,  <31.926865, 35.905033, 31.883614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367502, 35.655651, 31.395958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361423, 36.050446, 31.459993>,  <31.357777, 36.287323, 31.498415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361423, 36.050446, 31.459993>,  <31.367502, 35.655651, 31.395958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361423, 36.050446, 31.459993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178320, 0.160216, -0.970841,
		-0.983855, 0.013795, -0.178434,
		-0.015195, 0.986986, 0.160090,
		31.356865, 36.346542, 31.508020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897758, 36.014343, 30.810930>,  <31.367502, 35.655651, 31.395958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897758, 36.014343, 30.810930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184187, 36.242252, 30.972227>,  <31.356043, 36.378998, 31.069004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184187, 36.242252, 30.972227>,  <30.897758, 36.014343, 30.810930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184187, 36.242252, 30.972227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371475, 0.178029, -0.911215,
		-0.590974, 0.802287, -0.084176,
		0.716070, 0.569774, 0.403240,
		31.399008, 36.413185, 31.093199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930763, 36.718723, 30.400305>,  <30.897758, 36.014343, 30.810930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930763, 36.718723, 30.400305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278679, 36.653122, 30.586451>,  <31.487429, 36.613762, 30.698139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278679, 36.653122, 30.586451>,  <30.930763, 36.718723, 30.400305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278679, 36.653122, 30.586451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492529, 0.231955, -0.838816,
		0.029623, 0.958801, 0.282528,
		0.869792, -0.164002, 0.465367,
		31.539616, 36.603920, 30.726061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295166, 37.294518, 30.321236>,  <30.930763, 36.718723, 30.400305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295166, 37.294518, 30.321236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584229, 37.031475, 30.406393>,  <31.757668, 36.873650, 30.457487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584229, 37.031475, 30.406393>,  <31.295166, 37.294518, 30.321236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584229, 37.031475, 30.406393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484912, 0.262843, -0.834131,
		0.492570, 0.706025, 0.508825,
		0.722659, -0.657603, 0.212891,
		31.801025, 36.834194, 30.470261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964615, 37.669762, 30.302866>,  <31.295166, 37.294518, 30.321236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964615, 37.669762, 30.302866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101265, 37.293907, 30.295101>,  <32.183254, 37.068394, 30.290442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101265, 37.293907, 30.295101>,  <31.964615, 37.669762, 30.302866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101265, 37.293907, 30.295101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655262, 0.252943, -0.711795,
		0.673738, 0.230447, 0.702119,
		0.341627, -0.939635, -0.019414,
		32.203754, 37.012016, 30.289276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738968, 37.645054, 30.507723>,  <31.964615, 37.669762, 30.302866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738968, 37.645054, 30.507723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630215, 37.334911, 30.279720>,  <32.564964, 37.148827, 30.142920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630215, 37.334911, 30.279720>,  <32.738968, 37.645054, 30.507723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630215, 37.334911, 30.279720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653313, 0.286189, -0.700912,
		0.706585, -0.562958, 0.428739,
		-0.271883, -0.775354, -0.570005,
		32.548649, 37.102306, 30.108719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270000, 37.507317, 30.118824>,  <32.738968, 37.645054, 30.507723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270000, 37.507317, 30.118824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001236, 37.285587, 29.922350>,  <32.839977, 37.152550, 29.804464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001236, 37.285587, 29.922350>,  <33.270000, 37.507317, 30.118824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001236, 37.285587, 29.922350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422899, 0.257308, -0.868878,
		0.608025, -0.791530, 0.061535,
		-0.671909, -0.554322, -0.491187,
		32.799664, 37.119289, 29.774994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657043, 37.086857, 29.626802>,  <33.270000, 37.507317, 30.118824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657043, 37.086857, 29.626802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280048, 37.110157, 29.495148>,  <33.053852, 37.124138, 29.416155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280048, 37.110157, 29.495148>,  <33.657043, 37.086857, 29.626802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280048, 37.110157, 29.495148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331702, 0.284373, -0.899503,
		0.041201, -0.956942, -0.287339,
		-0.942484, 0.058250, -0.329136,
		32.997303, 37.127632, 29.396406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653435, 36.647488, 28.990677>,  <33.657043, 37.086857, 29.626802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653435, 36.647488, 28.990677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348186, 36.905701, 28.978470>,  <33.165035, 37.060627, 28.971146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348186, 36.905701, 28.978470>,  <33.653435, 36.647488, 28.990677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348186, 36.905701, 28.978470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213406, 0.207142, -0.954751,
		-0.610002, -0.735105, -0.295835,
		-0.763122, 0.645533, -0.030519,
		33.119251, 37.099361, 28.969315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382671, 36.535583, 28.313564>,  <33.653435, 36.647488, 28.990677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382671, 36.535583, 28.313564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206486, 36.879215, 28.417856>,  <33.100773, 37.085392, 28.480431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206486, 36.879215, 28.417856>,  <33.382671, 36.535583, 28.313564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206486, 36.879215, 28.417856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161046, 0.361315, -0.918431,
		-0.883207, -0.362548, -0.297498,
		-0.440466, 0.859075, 0.260728,
		33.074345, 37.136936, 28.496075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962788, 36.818829, 27.817621>,  <33.382671, 36.535583, 28.313564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962788, 36.818829, 27.817621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030273, 37.158936, 28.017054>,  <33.070766, 37.362999, 28.136713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030273, 37.158936, 28.017054>,  <32.962788, 36.818829, 27.817621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030273, 37.158936, 28.017054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237632, 0.455826, -0.857761,
		-0.956590, 0.263200, -0.125144,
		0.168718, 0.850264, 0.498583,
		33.080891, 37.414013, 28.166628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432762, 37.343693, 27.569813>,  <32.962788, 36.818829, 27.817621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432762, 37.343693, 27.569813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719055, 37.562672, 27.743258>,  <32.890831, 37.694057, 27.847324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719055, 37.562672, 27.743258>,  <32.432762, 37.343693, 27.569813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719055, 37.562672, 27.743258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050755, 0.578476, -0.814119,
		-0.696523, 0.604703, 0.386251,
		0.715737, 0.547448, 0.433614,
		32.933777, 37.726906, 27.873343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189926, 38.036755, 27.547789>,  <32.432762, 37.343693, 27.569813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189926, 38.036755, 27.547789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588768, 38.046375, 27.576651>,  <32.828072, 38.052147, 27.593967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588768, 38.046375, 27.576651>,  <32.189926, 38.036755, 27.547789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588768, 38.046375, 27.576651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045588, 0.570413, -0.820092,
		-0.060884, 0.821006, 0.567665,
		0.997103, 0.024052, 0.072157,
		32.887897, 38.053593, 27.598297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353065, 38.748680, 27.421331>,  <32.189926, 38.036755, 27.547789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353065, 38.748680, 27.421331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698807, 38.551819, 27.379997>,  <32.906250, 38.433701, 27.355198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698807, 38.551819, 27.379997>,  <32.353065, 38.748680, 27.421331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698807, 38.551819, 27.379997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126306, 0.411358, -0.902680,
		0.486763, 0.767184, 0.417721,
		0.864354, -0.492152, -0.103334,
		32.958115, 38.404175, 27.348997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926430, 39.269329, 27.154869>,  <32.353065, 38.748680, 27.421331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926430, 39.269329, 27.154869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042934, 38.896057, 27.070644>,  <33.112839, 38.672092, 27.020109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042934, 38.896057, 27.070644>,  <32.926430, 39.269329, 27.154869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042934, 38.896057, 27.070644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036365, 0.209148, -0.977207,
		0.955951, 0.292283, 0.026982,
		0.291265, -0.933181, -0.210564,
		33.130314, 38.616104, 27.007475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178486, 39.403419, 26.469740>,  <32.926430, 39.269329, 27.154869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178486, 39.403419, 26.469740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142426, 39.005852, 26.495028>,  <33.120789, 38.767311, 26.510201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142426, 39.005852, 26.495028>,  <33.178486, 39.403419, 26.469740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142426, 39.005852, 26.495028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273781, -0.036299, -0.961107,
		0.957558, -0.103955, -0.268843,
		-0.090153, -0.993919, 0.063220,
		33.115379, 38.707676, 26.513994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377674, 39.174255, 25.809748>,  <33.178486, 39.403419, 26.469740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377674, 39.174255, 25.809748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162754, 38.874416, 25.964367>,  <33.033802, 38.694515, 26.057138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162754, 38.874416, 25.964367>,  <33.377674, 39.174255, 25.809748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162754, 38.874416, 25.964367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467133, -0.117107, -0.876398,
		0.702211, -0.651455, -0.287239,
		-0.537296, -0.749594, 0.386550,
		33.001564, 38.649540, 26.080332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422615, 38.649532, 25.314280>,  <33.377674, 39.174255, 25.809748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422615, 38.649532, 25.314280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109753, 38.525139, 25.530252>,  <32.922035, 38.450504, 25.659836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109753, 38.525139, 25.530252>,  <33.422615, 38.649532, 25.314280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109753, 38.525139, 25.530252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557252, -0.038554, -0.829448,
		0.278759, -0.949634, -0.143140,
		-0.782153, -0.310982, 0.539933,
		32.875107, 38.431843, 25.692232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211803, 38.274319, 24.879538>,  <33.422615, 38.649532, 25.314280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211803, 38.274319, 24.879538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910450, 38.347294, 25.132244>,  <32.729637, 38.391079, 25.283869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910450, 38.347294, 25.132244>,  <33.211803, 38.274319, 24.879538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910450, 38.347294, 25.132244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652165, -0.084232, -0.753383,
		-0.084232, -0.979602, 0.182440,
		0.753383, -0.182440, -0.631767,
		32.684437, 38.402027, 25.321774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697971, 37.652157, 24.842516>,  <33.211803, 38.274319, 24.879538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697971, 37.652157, 24.842516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483688, 37.962852, 24.974995>,  <32.355118, 38.149269, 25.054482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483688, 37.962852, 24.974995>,  <32.697971, 37.652157, 24.842516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483688, 37.962852, 24.974995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681240, -0.165803, -0.713037,
		-0.498932, -0.607602, 0.617969,
		-0.535704, 0.776742, 0.331198,
		32.322975, 38.195873, 25.074354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013870, 37.401470, 24.780874>,  <32.697971, 37.652157, 24.842516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013870, 37.401470, 24.780874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973824, 37.798477, 24.808823>,  <31.949795, 38.036682, 24.825592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973824, 37.798477, 24.808823>,  <32.013870, 37.401470, 24.780874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973824, 37.798477, 24.808823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517434, 0.008044, -0.855685,
		-0.849846, -0.121825, 0.512758,
		-0.100119, 0.992519, 0.069873,
		31.943789, 38.096233, 24.829784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346865, 37.485146, 24.600895>,  <32.013870, 37.401470, 24.780874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346865, 37.485146, 24.600895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435238, 37.874565, 24.577600>,  <31.488262, 38.108215, 24.563623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435238, 37.874565, 24.577600>,  <31.346865, 37.485146, 24.600895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435238, 37.874565, 24.577600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728969, 0.125172, -0.673005,
		-0.647913, 0.191143, 0.737342,
		0.220935, 0.973548, -0.058237,
		31.501518, 38.166630, 24.560129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790588, 37.835484, 24.557365>,  <31.346865, 37.485146, 24.600895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790588, 37.835484, 24.557365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060987, 38.076019, 24.386995>,  <31.223227, 38.220341, 24.284773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060987, 38.076019, 24.386995>,  <30.790588, 37.835484, 24.557365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060987, 38.076019, 24.386995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591520, 0.098111, -0.800299,
		-0.439466, 0.792945, 0.422029,
		0.675998, 0.601343, -0.425927,
		31.263786, 38.256424, 24.259218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383287, 38.318981, 24.300310>,  <30.790588, 37.835484, 24.557365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383287, 38.318981, 24.300310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719938, 38.360443, 24.088303>,  <30.921928, 38.385323, 23.961098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719938, 38.360443, 24.088303>,  <30.383287, 38.318981, 24.300310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719938, 38.360443, 24.088303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516563, -0.131823, -0.846041,
		-0.157569, 0.985838, -0.057399,
		0.841626, 0.103659, -0.530019,
		30.972425, 38.391541, 23.929296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234543, 38.759388, 23.755789>,  <30.383287, 38.318981, 24.300310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234543, 38.759388, 23.755789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567745, 38.583385, 23.621630>,  <30.767666, 38.477783, 23.541134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567745, 38.583385, 23.621630>,  <30.234543, 38.759388, 23.755789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567745, 38.583385, 23.621630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424185, -0.118723, -0.897760,
		0.355204, 0.890110, -0.285542,
		0.833005, -0.440011, -0.335400,
		30.817646, 38.451382, 23.521009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387056, 39.065765, 23.129141>,  <30.234543, 38.759388, 23.755789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387056, 39.065765, 23.129141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568727, 38.709705, 23.114395>,  <30.677731, 38.496071, 23.105549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568727, 38.709705, 23.114395>,  <30.387056, 39.065765, 23.129141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568727, 38.709705, 23.114395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534729, -0.239271, -0.810441,
		0.712592, 0.387796, -0.584659,
		0.454178, -0.890148, -0.036863,
		30.704981, 38.442661, 23.103336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512365, 38.905102, 22.455292>,  <30.387056, 39.065765, 23.129141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512365, 38.905102, 22.455292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551018, 38.529343, 22.586859>,  <30.574209, 38.303886, 22.665798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551018, 38.529343, 22.586859>,  <30.512365, 38.905102, 22.455292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551018, 38.529343, 22.586859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519966, -0.329431, -0.788106,
		0.848704, -0.094869, -0.520290,
		0.096633, -0.939401, 0.328918,
		30.580008, 38.247520, 22.685534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753521, 38.607368, 21.863092>,  <30.512365, 38.905102, 22.455292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753521, 38.607368, 21.863092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615833, 38.301903, 22.081568>,  <30.533220, 38.118622, 22.212652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615833, 38.301903, 22.081568>,  <30.753521, 38.607368, 21.863092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615833, 38.301903, 22.081568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480848, -0.356264, -0.801162,
		0.806410, -0.538411, -0.244575,
		-0.344221, -0.763668, 0.546189,
		30.512568, 38.072803, 22.245424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971111, 38.063095, 21.566156>,  <30.753521, 38.607368, 21.863092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971111, 38.063095, 21.566156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641060, 37.932251, 21.750399>,  <30.443029, 37.853745, 21.860943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641060, 37.932251, 21.750399>,  <30.971111, 38.063095, 21.566156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641060, 37.932251, 21.750399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313586, -0.412980, -0.855051,
		0.469919, -0.849967, 0.238184,
		-0.825130, -0.327114, 0.460605,
		30.393520, 37.834118, 21.888580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845158, 37.360840, 21.387690>,  <30.971111, 38.063095, 21.566156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845158, 37.360840, 21.387690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493979, 37.494648, 21.524689>,  <30.283272, 37.574932, 21.606888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493979, 37.494648, 21.524689>,  <30.845158, 37.360840, 21.387690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493979, 37.494648, 21.524689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438811, -0.276176, -0.855086,
		-0.191453, -0.901013, 0.389259,
		-0.877947, 0.334520, 0.342499,
		30.230595, 37.595005, 21.627438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399242, 36.803604, 21.300463>,  <30.845158, 37.360840, 21.387690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399242, 36.803604, 21.300463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141748, 37.108276, 21.329971>,  <29.987251, 37.291080, 21.347677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141748, 37.108276, 21.329971>,  <30.399242, 36.803604, 21.300463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141748, 37.108276, 21.329971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560727, -0.403893, -0.722811,
		-0.520757, -0.506666, 0.687097,
		-0.643737, 0.761682, 0.073771,
		29.948627, 37.336781, 21.352102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729454, 36.541142, 21.270700>,  <30.399242, 36.803604, 21.300463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729454, 36.541142, 21.270700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691093, 36.930943, 21.189556>,  <29.668077, 37.164822, 21.140869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691093, 36.930943, 21.189556>,  <29.729454, 36.541142, 21.270700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691093, 36.930943, 21.189556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556908, -0.221450, -0.800508,
		-0.825019, 0.036205, 0.563944,
		-0.095903, 0.974500, -0.202863,
		29.662323, 37.223293, 21.128696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070024, 36.522034, 20.954370>,  <29.729454, 36.541142, 21.270700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070024, 36.522034, 20.954370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147533, 36.904984, 20.868683>,  <29.194038, 37.134754, 20.817270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147533, 36.904984, 20.868683>,  <29.070024, 36.522034, 20.954370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147533, 36.904984, 20.868683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474164, -0.099763, -0.874766,
		-0.858849, 0.271079, 0.434620,
		0.193772, 0.957373, -0.214218,
		29.205666, 37.192196, 20.804417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401108, 36.745113, 20.688429>,  <29.070024, 36.522034, 20.954370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401108, 36.745113, 20.688429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687561, 36.987251, 20.549456>,  <28.859432, 37.132534, 20.466072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687561, 36.987251, 20.549456>,  <28.401108, 36.745113, 20.688429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687561, 36.987251, 20.549456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491475, 0.083909, -0.866840,
		-0.495585, 0.791527, 0.357603,
		0.716134, 0.605346, -0.347432,
		28.902401, 37.168854, 20.445227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009304, 37.202248, 20.320053>,  <28.401108, 36.745113, 20.688429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009304, 37.202248, 20.320053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385414, 37.252876, 20.193647>,  <28.611080, 37.283253, 20.117804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385414, 37.252876, 20.193647>,  <28.009304, 37.202248, 20.320053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385414, 37.252876, 20.193647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335092, 0.180557, -0.924723,
		-0.059985, 0.975387, 0.212186,
		0.940274, 0.126571, -0.316014,
		28.667496, 37.290848, 20.098843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149107, 37.898949, 20.112078>,  <28.009304, 37.202248, 20.320053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149107, 37.898949, 20.112078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410725, 37.667938, 19.916656>,  <28.567696, 37.529331, 19.799404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410725, 37.667938, 19.916656>,  <28.149107, 37.898949, 20.112078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410725, 37.667938, 19.916656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282721, 0.412412, -0.866017,
		0.701636, 0.704538, 0.106456,
		0.654046, -0.577531, -0.488551,
		28.606939, 37.494678, 19.770092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370077, 38.260994, 19.543104>,  <28.149107, 37.898949, 20.112078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370077, 38.260994, 19.543104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.530437, 37.913471, 19.426865>,  <28.626654, 37.704956, 19.357121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.530437, 37.913471, 19.426865>,  <28.370077, 38.260994, 19.543104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.530437, 37.913471, 19.426865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105761, 0.271192, -0.956697,
		0.909996, 0.414274, 0.016835,
		0.400900, -0.868811, -0.290597,
		28.650707, 37.652828, 19.339685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817486, 38.415211, 18.989986>,  <28.370077, 38.260994, 19.543104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817486, 38.415211, 18.989986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687414, 38.038654, 18.954121>,  <28.609371, 37.812721, 18.932600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687414, 38.038654, 18.954121>,  <28.817486, 38.415211, 18.989986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687414, 38.038654, 18.954121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206379, 0.163182, -0.964769,
		0.922857, -0.295219, -0.247347,
		-0.325181, -0.941391, -0.089666,
		28.589859, 37.756237, 18.927221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991781, 38.265816, 18.321066>,  <28.817486, 38.415211, 18.989986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991781, 38.265816, 18.321066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709015, 38.004406, 18.429266>,  <28.539354, 37.847561, 18.494186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709015, 38.004406, 18.429266>,  <28.991781, 38.265816, 18.321066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709015, 38.004406, 18.429266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435744, 0.101157, -0.894368,
		0.557133, -0.750111, -0.356281,
		-0.706916, -0.653529, 0.270499,
		28.496941, 37.808346, 18.510416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885443, 37.854614, 17.708141>,  <28.991781, 38.265816, 18.321066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885443, 37.854614, 17.708141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559208, 37.784241, 17.928638>,  <28.363468, 37.742016, 18.060936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559208, 37.784241, 17.928638>,  <28.885443, 37.854614, 17.708141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559208, 37.784241, 17.928638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560335, 0.002432, -0.828263,
		0.144382, -0.984398, -0.100567,
		-0.815585, -0.175937, 0.551241,
		28.314531, 37.731461, 18.094011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590954, 37.295151, 17.285152>,  <28.885443, 37.854614, 17.708141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590954, 37.295151, 17.285152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303207, 37.418846, 17.533951>,  <28.130560, 37.493065, 17.683229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303207, 37.418846, 17.533951>,  <28.590954, 37.295151, 17.285152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303207, 37.418846, 17.533951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641995, 0.045930, -0.765332,
		-0.265242, -0.949873, 0.165492,
		-0.719367, 0.309243, 0.621997,
		28.087397, 37.511620, 17.720551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999609, 36.889423, 17.077448>,  <28.590954, 37.295151, 17.285152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999609, 36.889423, 17.077448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840563, 37.192947, 17.283787>,  <27.745134, 37.375061, 17.407591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840563, 37.192947, 17.283787>,  <27.999609, 36.889423, 17.077448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840563, 37.192947, 17.283787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748090, 0.057429, -0.661107,
		-0.531283, -0.648769, 0.544827,
		-0.397617, 0.758815, 0.515849,
		27.721277, 37.420593, 17.438541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173628, 36.759262, 17.118416>,  <27.999609, 36.889423, 17.077448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173628, 36.759262, 17.118416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248117, 37.147453, 17.179731>,  <27.292810, 37.380367, 17.216520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248117, 37.147453, 17.179731>,  <27.173628, 36.759262, 17.118416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248117, 37.147453, 17.179731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741946, 0.241182, -0.625577,
		-0.644078, 0.002766, 0.764955,
		0.186224, 0.970476, 0.153288,
		27.303984, 37.438595, 17.225718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644753, 37.254784, 17.573645>,  <27.173628, 36.759262, 17.118416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644753, 37.254784, 17.573645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821581, 37.461315, 17.280256>,  <26.927677, 37.585232, 17.104223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821581, 37.461315, 17.280256>,  <26.644753, 37.254784, 17.573645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.821581, 37.461315, 17.280256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880996, 0.096245, -0.463232,
		-0.168586, 0.850967, 0.497428,
		0.442070, 0.516326, -0.733472,
		26.954203, 37.616215, 17.060215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412281, 38.039196, 17.494507>,  <26.644753, 37.254784, 17.573645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412281, 38.039196, 17.494507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536699, 37.858810, 17.159870>,  <26.611351, 37.750580, 16.959089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536699, 37.858810, 17.159870>,  <26.412281, 38.039196, 17.494507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536699, 37.858810, 17.159870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928528, 0.043541, -0.368701,
		0.202695, 0.891482, -0.405186,
		0.311048, -0.450960, -0.836591,
		26.630014, 37.723522, 16.908894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236141, 38.494812, 16.991356>,  <26.412281, 38.039196, 17.494507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236141, 38.494812, 16.991356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270502, 38.108910, 16.891869>,  <26.291119, 37.877369, 16.832176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270502, 38.108910, 16.891869>,  <26.236141, 38.494812, 16.991356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270502, 38.108910, 16.891869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963185, -0.016585, -0.268326,
		0.254745, 0.262610, -0.930667,
		0.085900, -0.964759, -0.248717,
		26.296272, 37.819481, 16.817253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.096161, 38.427284, 16.266426>,  <26.236141, 38.494812, 16.991356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.096161, 38.427284, 16.266426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.026711, 38.093403, 16.475471>,  <25.985041, 37.893074, 16.600899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.026711, 38.093403, 16.475471>,  <26.096161, 38.427284, 16.266426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.026711, 38.093403, 16.475471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983353, 0.118068, -0.138121,
		0.053587, -0.537894, -0.841308,
		-0.173626, -0.834704, 0.522612,
		25.974623, 37.842991, 16.632256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891861, 38.846664, 15.568548>,  <26.096161, 38.427284, 16.266426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891861, 38.846664, 15.568548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081043, 39.189564, 15.487123>,  <26.194553, 39.395302, 15.438269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081043, 39.189564, 15.487123>,  <25.891861, 38.846664, 15.568548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081043, 39.189564, 15.487123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385695, 0.006288, 0.922605,
		0.792181, -0.514865, -0.327663,
		0.472956, 0.857248, -0.203562,
		26.222931, 39.446739, 15.426055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522093, 38.862804, 15.875429>,  <25.891861, 38.846664, 15.568548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522093, 38.862804, 15.875429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.401867, 39.241562, 15.829743>,  <26.329731, 39.468819, 15.802332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.401867, 39.241562, 15.829743>,  <26.522093, 38.862804, 15.875429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.401867, 39.241562, 15.829743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209156, 0.182275, 0.960744,
		0.930545, 0.264878, -0.252835,
		-0.300565, 0.946898, -0.114215,
		26.311697, 39.525631, 15.795479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082247, 39.289211, 16.142061>,  <26.522093, 38.862804, 15.875429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082247, 39.289211, 16.142061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742573, 39.500164, 16.153019>,  <26.538769, 39.626736, 16.159594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742573, 39.500164, 16.153019>,  <27.082247, 39.289211, 16.142061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742573, 39.500164, 16.153019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103833, 0.115878, 0.987821,
		0.517786, 0.841689, -0.153161,
		-0.849186, 0.527383, 0.027395,
		26.487818, 39.658379, 16.161238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197834, 39.943466, 16.576843>,  <27.082247, 39.289211, 16.142061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197834, 39.943466, 16.576843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.841761, 39.761497, 16.586767>,  <26.628117, 39.652317, 16.592722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.841761, 39.761497, 16.586767>,  <27.197834, 39.943466, 16.576843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.841761, 39.761497, 16.586767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026333, 0.105735, 0.994046,
		-0.454837, 0.884232, -0.106103,
		-0.890186, -0.454922, 0.024808,
		26.574705, 39.625019, 16.594210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545452, 40.344875, 16.773279>,  <27.197834, 39.943466, 16.576843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545452, 40.344875, 16.773279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.528667, 39.972561, 16.918537>,  <26.518597, 39.749172, 17.005692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.528667, 39.972561, 16.918537>,  <26.545452, 40.344875, 16.773279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.528667, 39.972561, 16.918537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036532, 0.361793, 0.931543,
		-0.998451, 0.052355, 0.018823,
		-0.041961, -0.930788, 0.363145,
		26.516079, 39.693325, 17.027481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989407, 40.349323, 17.089584>,  <26.545452, 40.344875, 16.773279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989407, 40.349323, 17.089584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253742, 40.083149, 17.228432>,  <26.412344, 39.923447, 17.311739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253742, 40.083149, 17.228432>,  <25.989407, 40.349323, 17.089584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253742, 40.083149, 17.228432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113297, 0.368750, 0.922598,
		-0.741925, -0.649018, 0.168294,
		0.660841, -0.665431, 0.347117,
		26.451994, 39.883518, 17.332567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.697090, 40.101688, 17.658848>,  <25.989407, 40.349323, 17.089584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.697090, 40.101688, 17.658848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076458, 39.980698, 17.696817>,  <26.304079, 39.908104, 17.719599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076458, 39.980698, 17.696817>,  <25.697090, 40.101688, 17.658848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.076458, 39.980698, 17.696817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009155, 0.273169, 0.961922,
		-0.316893, -0.913173, 0.256309,
		0.948417, -0.302480, 0.094925,
		26.360983, 39.889954, 17.725294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706543, 39.664871, 18.303938>,  <25.697090, 40.101688, 17.658848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706543, 39.664871, 18.303938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090925, 39.759232, 18.246094>,  <26.321556, 39.815845, 18.211388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090925, 39.759232, 18.246094>,  <25.706543, 39.664871, 18.303938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.090925, 39.759232, 18.246094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066328, 0.311000, 0.948093,
		0.268623, -0.920669, 0.283212,
		0.960958, 0.235895, -0.144608,
		26.379213, 39.830002, 18.202711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.001278, 39.482738, 18.889225>,  <25.706543, 39.664871, 18.303938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.001278, 39.482738, 18.889225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294157, 39.692825, 18.715773>,  <26.469885, 39.818878, 18.611702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294157, 39.692825, 18.715773>,  <26.001278, 39.482738, 18.889225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294157, 39.692825, 18.715773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216095, 0.424630, 0.879200,
		0.645905, -0.737451, 0.197415,
		0.732195, 0.525220, -0.433630,
		26.513815, 39.850391, 18.585684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.563768, 39.486088, 19.283144>,  <26.001278, 39.482738, 18.889225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.563768, 39.486088, 19.283144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669128, 39.794147, 19.050770>,  <26.732344, 39.978985, 18.911345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669128, 39.794147, 19.050770>,  <26.563768, 39.486088, 19.283144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669128, 39.794147, 19.050770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476866, 0.419533, 0.772393,
		0.838582, -0.480475, -0.256756,
		0.263398, 0.770154, -0.580935,
		26.748148, 40.025192, 18.876490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238958, 39.640644, 19.411102>,  <26.563768, 39.486088, 19.283144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238958, 39.640644, 19.411102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067657, 39.974838, 19.273369>,  <26.964876, 40.175354, 19.190729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067657, 39.974838, 19.273369>,  <27.238958, 39.640644, 19.411102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067657, 39.974838, 19.273369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445252, 0.526670, 0.724133,
		0.786352, 0.156796, -0.597549,
		-0.428252, 0.835484, -0.344334,
		26.939182, 40.225483, 19.170069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780457, 40.146210, 19.405062>,  <27.238958, 39.640644, 19.411102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780457, 40.146210, 19.405062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461008, 40.381130, 19.352489>,  <27.269339, 40.522083, 19.320946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461008, 40.381130, 19.352489>,  <27.780457, 40.146210, 19.405062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461008, 40.381130, 19.352489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370253, 0.651629, 0.662036,
		0.474462, 0.480054, -0.737857,
		-0.798623, 0.587305, -0.131431,
		27.221420, 40.557323, 19.313061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010592, 40.814304, 19.153154>,  <27.780457, 40.146210, 19.405062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.010592, 40.814304, 19.153154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657503, 40.862576, 19.334808>,  <27.445650, 40.891537, 19.443802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657503, 40.862576, 19.334808>,  <28.010592, 40.814304, 19.153154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657503, 40.862576, 19.334808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424688, 0.618506, 0.661129,
		-0.201104, 0.776459, -0.597218,
		-0.882721, 0.120675, 0.454137,
		27.392687, 40.898777, 19.471050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901463, 41.546516, 19.213156>,  <28.010592, 40.814304, 19.153154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901463, 41.546516, 19.213156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665882, 41.390396, 19.496225>,  <27.524534, 41.296726, 19.666067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665882, 41.390396, 19.496225>,  <27.901463, 41.546516, 19.213156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665882, 41.390396, 19.496225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386560, 0.632942, 0.670788,
		-0.709724, 0.668620, -0.221899,
		-0.588951, -0.390297, 0.707676,
		27.489197, 41.273308, 19.708529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785847, 42.040249, 19.662630>,  <27.901463, 41.546516, 19.213156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785847, 42.040249, 19.662630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661558, 41.738529, 19.893969>,  <27.586985, 41.557495, 20.032772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661558, 41.738529, 19.893969>,  <27.785847, 42.040249, 19.662630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661558, 41.738529, 19.893969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432714, 0.429497, 0.792648,
		-0.846293, 0.496550, 0.192943,
		-0.310721, -0.754301, 0.578344,
		27.568342, 41.512238, 20.067472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.416050, 42.282623, 20.299492>,  <27.785847, 42.040249, 19.662630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.416050, 42.282623, 20.299492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552839, 41.921944, 20.405323>,  <27.634912, 41.705536, 20.468822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552839, 41.921944, 20.405323>,  <27.416050, 42.282623, 20.299492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552839, 41.921944, 20.405323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283939, 0.367542, 0.885602,
		-0.895786, -0.227728, 0.381716,
		0.341973, -0.901695, 0.264578,
		27.655432, 41.651436, 20.484697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280622, 42.327618, 21.002964>,  <27.416050, 42.282623, 20.299492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280622, 42.327618, 21.002964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505802, 41.998657, 20.970131>,  <27.640911, 41.801281, 20.950430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505802, 41.998657, 20.970131>,  <27.280622, 42.327618, 21.002964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505802, 41.998657, 20.970131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334858, 0.136156, 0.932380,
		-0.755617, -0.552370, 0.352038,
		0.562951, -0.822404, -0.082084,
		27.674686, 41.751934, 20.945505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.086649, 41.942928, 21.593418>,  <27.280622, 42.327618, 21.002964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.086649, 41.942928, 21.593418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443996, 41.822212, 21.460264>,  <27.658405, 41.749783, 21.380371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443996, 41.822212, 21.460264>,  <27.086649, 41.942928, 21.593418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443996, 41.822212, 21.460264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310675, -0.120344, 0.942867,
		-0.324614, -0.945747, -0.013752,
		0.893368, -0.301795, -0.332885,
		27.712008, 41.731674, 21.360399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286705, 41.338318, 21.940287>,  <27.086649, 41.942928, 21.593418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286705, 41.338318, 21.940287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649900, 41.429672, 21.799774>,  <27.867817, 41.484486, 21.715466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649900, 41.429672, 21.799774>,  <27.286705, 41.338318, 21.940287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649900, 41.429672, 21.799774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401592, -0.235230, 0.885094,
		0.119510, -0.944726, -0.305304,
		0.907987, 0.228385, -0.351282,
		27.922297, 41.498188, 21.694389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727825, 40.827465, 22.030487>,  <27.286705, 41.338318, 21.940287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727825, 40.827465, 22.030487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.978672, 41.138908, 22.021620>,  <28.129179, 41.325775, 22.016300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.978672, 41.138908, 22.021620>,  <27.727825, 40.827465, 22.030487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978672, 41.138908, 22.021620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492396, -0.374218, 0.785816,
		0.603550, -0.503713, -0.618063,
		0.627116, 0.778611, -0.022167,
		28.166807, 41.372490, 22.014969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432928, 40.502098, 22.094545>,  <27.727825, 40.827465, 22.030487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.432928, 40.502098, 22.094545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491217, 40.885639, 22.192009>,  <28.526190, 41.115765, 22.250486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491217, 40.885639, 22.192009>,  <28.432928, 40.502098, 22.094545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491217, 40.885639, 22.192009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644574, -0.278855, 0.711874,
		0.750527, 0.053322, -0.658685,
		0.145719, 0.958852, 0.243658,
		28.534933, 41.173294, 22.265106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183601, 40.592522, 22.172279>,  <28.432928, 40.502098, 22.094545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183601, 40.592522, 22.172279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026670, 40.891319, 22.386971>,  <28.932512, 41.070599, 22.515785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026670, 40.891319, 22.386971>,  <29.183601, 40.592522, 22.172279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026670, 40.891319, 22.386971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687170, -0.149867, 0.710871,
		0.611456, 0.647717, -0.454516,
		-0.392326, 0.746996, 0.536728,
		28.908972, 41.115417, 22.547989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757059, 40.780251, 22.544682>,  <29.183601, 40.592522, 22.172279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757059, 40.780251, 22.544682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460239, 40.976501, 22.727394>,  <29.282148, 41.094254, 22.837021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460239, 40.976501, 22.727394>,  <29.757059, 40.780251, 22.544682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460239, 40.976501, 22.727394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406438, -0.212583, 0.888604,
		0.533079, 0.845039, -0.041663,
		-0.742048, 0.490630, 0.456779,
		29.237625, 41.123692, 22.864428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036268, 41.333641, 22.975637>,  <29.757059, 40.780251, 22.544682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036268, 41.333641, 22.975637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682711, 41.247845, 23.141880>,  <29.470577, 41.196365, 23.241625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682711, 41.247845, 23.141880>,  <30.036268, 41.333641, 22.975637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682711, 41.247845, 23.141880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463735, -0.286631, 0.838327,
		-0.060688, 0.933722, 0.352818,
		-0.883893, -0.214491, 0.415605,
		29.417543, 41.183498, 23.266562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161930, 41.510719, 23.689947>,  <30.036268, 41.333641, 22.975637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161930, 41.510719, 23.689947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817694, 41.308289, 23.712824>,  <29.611153, 41.186829, 23.726551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817694, 41.308289, 23.712824>,  <30.161930, 41.510719, 23.689947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817694, 41.308289, 23.712824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299452, -0.411963, 0.860590,
		-0.411963, 0.757742, 0.506077,
		-0.860590, -0.506077, 0.057194,
		29.559517, 41.156464, 23.729982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993252, 41.647091, 24.384121>,  <30.161930, 41.510719, 23.689947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993252, 41.647091, 24.384121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792419, 41.329491, 24.247023>,  <29.671921, 41.138931, 24.164764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792419, 41.329491, 24.247023>,  <29.993252, 41.647091, 24.384121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792419, 41.329491, 24.247023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142274, -0.466754, 0.872868,
		-0.853038, 0.389486, 0.347314,
		-0.502081, -0.794003, -0.342745,
		29.641796, 41.091290, 24.144199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377457, 41.528126, 24.782249>,  <29.993252, 41.647091, 24.384121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377457, 41.528126, 24.782249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457201, 41.171032, 24.620617>,  <29.505047, 40.956776, 24.523638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457201, 41.171032, 24.620617>,  <29.377457, 41.528126, 24.782249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457201, 41.171032, 24.620617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248234, -0.352903, 0.902131,
		-0.947964, -0.280157, 0.151252,
		0.199361, -0.892733, -0.404084,
		29.517010, 40.903214, 24.499392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959728, 41.039417, 25.136862>,  <29.377457, 41.528126, 24.782249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959728, 41.039417, 25.136862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271051, 40.842548, 24.980907>,  <29.457846, 40.724426, 24.887335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271051, 40.842548, 24.980907>,  <28.959728, 41.039417, 25.136862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271051, 40.842548, 24.980907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223479, -0.363145, 0.904534,
		-0.586769, -0.791135, -0.172648,
		0.778305, -0.492169, -0.389885,
		29.504543, 40.694897, 24.863941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901846, 40.420525, 25.403744>,  <28.959728, 41.039417, 25.136862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901846, 40.420525, 25.403744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287340, 40.432377, 25.297661>,  <29.518637, 40.439487, 25.234011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287340, 40.432377, 25.297661>,  <28.901846, 40.420525, 25.403744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287340, 40.432377, 25.297661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258658, -0.348172, 0.901039,
		-0.065637, -0.936962, -0.343211,
		0.963736, 0.029632, -0.265206,
		29.576462, 40.441265, 25.218100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145805, 39.731712, 25.423977>,  <28.901846, 40.420525, 25.403744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145805, 39.731712, 25.423977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446480, 39.987469, 25.488649>,  <29.626884, 40.140923, 25.527452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446480, 39.987469, 25.488649>,  <29.145805, 39.731712, 25.423977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446480, 39.987469, 25.488649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227844, -0.481817, 0.846132,
		0.618912, -0.599190, -0.507858,
		0.751688, 0.639394, 0.161680,
		29.671986, 40.179287, 25.537153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717953, 39.271584, 25.636732>,  <29.145805, 39.731712, 25.423977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717953, 39.271584, 25.636732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822481, 39.646301, 25.729792>,  <29.885199, 39.871132, 25.785627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822481, 39.646301, 25.729792>,  <29.717953, 39.271584, 25.636732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822481, 39.646301, 25.729792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392672, -0.323352, 0.860960,
		0.881771, -0.133632, -0.452352,
		0.261320, 0.936796, 0.232649,
		29.900877, 39.927341, 25.799585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399761, 39.247688, 25.994530>,  <29.717953, 39.271584, 25.636732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399761, 39.247688, 25.994530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.258474, 39.607395, 26.097725>,  <30.173702, 39.823219, 26.159641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.258474, 39.607395, 26.097725>,  <30.399761, 39.247688, 25.994530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258474, 39.607395, 26.097725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479495, -0.062771, 0.875296,
		0.803319, 0.432874, -0.409022,
		-0.353219, 0.899266, 0.257986,
		30.152508, 39.877174, 26.175121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029680, 39.538395, 26.291153>,  <30.399761, 39.247688, 25.994530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029680, 39.538395, 26.291153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690786, 39.718781, 26.403452>,  <30.487450, 39.827011, 26.470831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690786, 39.718781, 26.403452>,  <31.029680, 39.538395, 26.291153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690786, 39.718781, 26.403452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315900, 0.002816, 0.948788,
		0.427082, 0.892536, -0.144847,
		-0.847236, 0.450967, 0.280750,
		30.436615, 39.854073, 26.487677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186613, 40.040390, 26.782207>,  <31.029680, 39.538395, 26.291153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186613, 40.040390, 26.782207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796011, 39.998562, 26.857578>,  <30.561649, 39.973465, 26.902802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796011, 39.998562, 26.857578>,  <31.186613, 40.040390, 26.782207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796011, 39.998562, 26.857578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191066, -0.015713, 0.981451,
		-0.099673, 0.994393, 0.035324,
		-0.976504, -0.104573, 0.188429,
		30.503059, 39.967190, 26.914106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164993, 40.371990, 27.305956>,  <31.186613, 40.040390, 26.782207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164993, 40.371990, 27.305956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813993, 40.180695, 27.320263>,  <30.603394, 40.065918, 27.328848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813993, 40.180695, 27.320263>,  <31.164993, 40.371990, 27.305956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813993, 40.180695, 27.320263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065286, -0.045231, 0.996841,
		-0.475113, 0.877062, 0.070913,
		-0.877499, -0.478242, 0.035770,
		30.550743, 40.037224, 27.330994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684216, 40.665985, 27.919844>,  <31.164993, 40.371990, 27.305956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684216, 40.665985, 27.919844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529669, 40.299709, 27.875601>,  <30.436941, 40.079945, 27.849054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529669, 40.299709, 27.875601>,  <30.684216, 40.665985, 27.919844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529669, 40.299709, 27.875601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179944, -0.192452, 0.964667,
		-0.904621, 0.352813, 0.239129,
		-0.386368, -0.915688, -0.110610,
		30.413759, 40.025002, 27.842419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400331, 40.590916, 28.534660>,  <30.684216, 40.665985, 27.919844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400331, 40.590916, 28.534660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449453, 40.231915, 28.365234>,  <30.478928, 40.016514, 28.263578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449453, 40.231915, 28.365234>,  <30.400331, 40.590916, 28.534660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449453, 40.231915, 28.365234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373161, -0.353718, 0.857691,
		-0.919603, -0.263388, 0.291475,
		0.122806, -0.897502, -0.423566,
		30.486296, 39.962666, 28.238165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985062, 40.067509, 28.957376>,  <30.400331, 40.590916, 28.534660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985062, 40.067509, 28.957376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.258894, 39.862000, 28.750540>,  <30.423193, 39.738693, 28.626438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.258894, 39.862000, 28.750540>,  <29.985062, 40.067509, 28.957376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258894, 39.862000, 28.750540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349625, -0.391024, 0.851388,
		-0.639617, -0.763633, -0.088059,
		0.684582, -0.513775, -0.517091,
		30.464268, 39.707867, 28.595413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966869, 39.369915, 29.234196>,  <29.985062, 40.067509, 28.957376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966869, 39.369915, 29.234196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324436, 39.424438, 29.063395>,  <30.538977, 39.457153, 28.960915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324436, 39.424438, 29.063395>,  <29.966869, 39.369915, 29.234196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324436, 39.424438, 29.063395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444902, -0.385670, 0.808283,
		-0.054507, -0.912513, -0.405401,
		0.893919, 0.136306, -0.427001,
		30.592611, 39.465332, 28.935295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229082, 38.759491, 29.410831>,  <29.966869, 39.369915, 29.234196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229082, 38.759491, 29.410831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545746, 38.973354, 29.292566>,  <30.735744, 39.101673, 29.221607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545746, 38.973354, 29.292566>,  <30.229082, 38.759491, 29.410831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545746, 38.973354, 29.292566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532304, -0.366062, 0.763315,
		0.299885, -0.761666, -0.574398,
		0.791657, 0.534661, -0.295662,
		30.783243, 39.133751, 29.203867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904713, 38.261818, 29.290192>,  <30.229082, 38.759491, 29.410831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904713, 38.261818, 29.290192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025278, 38.639069, 29.346291>,  <31.097618, 38.865417, 29.379950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025278, 38.639069, 29.346291>,  <30.904713, 38.261818, 29.290192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025278, 38.639069, 29.346291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587498, -0.299547, 0.751743,
		0.750996, -0.144194, -0.644371,
		0.301416, 0.943122, 0.140245,
		31.115704, 38.922005, 29.388365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530390, 38.204376, 29.572807>,  <30.904713, 38.261818, 29.290192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530390, 38.204376, 29.572807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425821, 38.581741, 29.654421>,  <31.363081, 38.808159, 29.703390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425821, 38.581741, 29.654421>,  <31.530390, 38.204376, 29.572807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425821, 38.581741, 29.654421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585784, -0.012938, 0.810364,
		0.767148, 0.331367, -0.549254,
		-0.261422, 0.943413, 0.204035,
		31.347395, 38.864765, 29.715631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168671, 38.580845, 29.800018>,  <31.530390, 38.204376, 29.572807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168671, 38.580845, 29.800018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853075, 38.790913, 29.927582>,  <31.663719, 38.916954, 30.004120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853075, 38.790913, 29.927582>,  <32.168671, 38.580845, 29.800018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853075, 38.790913, 29.927582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462813, 0.166601, 0.870660,
		0.404109, 0.834533, -0.374499,
		-0.788987, 0.525165, 0.318908,
		31.616379, 38.948463, 30.023254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421524, 39.184307, 30.032251>,  <32.168671, 38.580845, 29.800018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421524, 39.184307, 30.032251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078167, 39.108902, 30.223093>,  <31.872152, 39.063660, 30.337597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078167, 39.108902, 30.223093>,  <32.421524, 39.184307, 30.032251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078167, 39.108902, 30.223093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495677, -0.065172, 0.866058,
		-0.132172, 0.979905, 0.149386,
		-0.858391, -0.188515, 0.477103,
		31.820650, 39.052349, 30.366224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548443, 39.564892, 30.628784>,  <32.421524, 39.184307, 30.032251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548443, 39.564892, 30.628784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236740, 39.333000, 30.724014>,  <32.049717, 39.193867, 30.781153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236740, 39.333000, 30.724014>,  <32.548443, 39.564892, 30.628784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236740, 39.333000, 30.724014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358638, -0.100976, 0.927999,
		-0.513944, 0.808532, 0.286597,
		-0.779256, -0.579724, 0.238074,
		32.002964, 39.159084, 30.795437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917816, 40.281326, 30.511127>,  <32.548443, 39.564892, 30.628784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917816, 40.281326, 30.511127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137829, 40.614120, 30.540169>,  <33.269836, 40.813797, 30.557594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137829, 40.614120, 30.540169>,  <32.917816, 40.281326, 30.511127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137829, 40.614120, 30.540169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597653, 0.452849, -0.661618,
		-0.583334, 0.320517, 0.746318,
		0.550029, 0.831983, 0.072605,
		33.302837, 40.863716, 30.561951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392841, 40.776131, 30.499573>,  <32.917816, 40.281326, 30.511127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392841, 40.776131, 30.499573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739296, 40.956081, 30.412468>,  <32.947166, 41.064053, 30.360205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739296, 40.956081, 30.412468>,  <32.392841, 40.776131, 30.499573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739296, 40.956081, 30.412468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465454, 0.567266, -0.679384,
		-0.182110, 0.689796, 0.700726,
		0.866134, 0.449878, -0.217763,
		32.999138, 41.091045, 30.347139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207012, 41.420841, 30.352999>,  <32.392841, 40.776131, 30.499573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207012, 41.420841, 30.352999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570465, 41.367542, 30.194689>,  <32.788536, 41.335564, 30.099703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570465, 41.367542, 30.194689>,  <32.207012, 41.420841, 30.352999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570465, 41.367542, 30.194689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249261, 0.587333, -0.770005,
		0.335054, 0.798301, 0.500454,
		0.908629, -0.133250, -0.395774,
		32.843056, 41.327568, 30.075956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394207, 42.143658, 30.057365>,  <32.207012, 41.420841, 30.352999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394207, 42.143658, 30.057365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623512, 41.868134, 29.879866>,  <32.761097, 41.702820, 29.773365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623512, 41.868134, 29.879866>,  <32.394207, 42.143658, 30.057365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623512, 41.868134, 29.879866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156846, 0.439310, -0.884537,
		0.804220, 0.576672, 0.143803,
		0.573262, -0.688808, -0.443751,
		32.795490, 41.661491, 29.746740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865803, 42.530281, 29.601078>,  <32.394207, 42.143658, 30.057365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865803, 42.530281, 29.601078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861332, 42.158737, 29.452974>,  <32.858650, 41.935810, 29.364111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861332, 42.158737, 29.452974>,  <32.865803, 42.530281, 29.601078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861332, 42.158737, 29.452974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170480, 0.366633, -0.914613,
		0.985298, 0.052896, -0.162452,
		-0.011181, -0.928861, -0.370260,
		32.857979, 41.880077, 29.341896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995045, 42.694031, 28.985956>,  <32.865803, 42.530281, 29.601078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995045, 42.694031, 28.985956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879646, 42.314491, 28.934641>,  <32.810410, 42.086769, 28.903852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879646, 42.314491, 28.934641>,  <32.995045, 42.694031, 28.985956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879646, 42.314491, 28.934641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242107, 0.201921, -0.949006,
		0.926367, -0.242723, -0.287976,
		-0.288494, -0.948849, -0.128288,
		32.793098, 42.029839, 28.896154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353428, 42.521687, 28.394669>,  <32.995045, 42.694031, 28.985956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353428, 42.521687, 28.394669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034203, 42.285614, 28.443291>,  <32.842667, 42.143970, 28.472464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034203, 42.285614, 28.443291>,  <33.353428, 42.521687, 28.394669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034203, 42.285614, 28.443291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205832, 0.077413, -0.975521,
		0.566323, -0.803552, -0.183259,
		-0.798068, -0.590180, 0.121555,
		32.794781, 42.108559, 28.479757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378185, 42.030556, 27.830032>,  <33.353428, 42.521687, 28.394669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378185, 42.030556, 27.830032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007885, 42.033886, 27.981249>,  <32.785706, 42.035885, 28.071980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007885, 42.033886, 27.981249>,  <33.378185, 42.030556, 27.830032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007885, 42.033886, 27.981249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375110, -0.146384, -0.915349,
		0.047716, -0.989193, 0.138639,
		-0.925751, 0.008328, 0.378041,
		32.730160, 42.036385, 28.094662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104511, 41.584518, 27.390524>,  <33.378185, 42.030556, 27.830032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104511, 41.584518, 27.390524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808208, 41.796539, 27.555605>,  <32.630428, 41.923752, 27.654654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808208, 41.796539, 27.555605>,  <33.104511, 41.584518, 27.390524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808208, 41.796539, 27.555605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469727, 0.030503, -0.882284,
		-0.480244, -0.847417, 0.226384,
		-0.740758, 0.530050, 0.412704,
		32.585979, 41.955555, 27.679417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482777, 41.373352, 27.071793>,  <33.104511, 41.584518, 27.390524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482777, 41.373352, 27.071793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396263, 41.729298, 27.232473>,  <32.344353, 41.942863, 27.328882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396263, 41.729298, 27.232473>,  <32.482777, 41.373352, 27.071793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396263, 41.729298, 27.232473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537193, 0.235094, -0.810034,
		-0.815257, -0.390991, 0.427181,
		-0.216288, 0.889864, 0.401700,
		32.331375, 41.996258, 27.352983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756866, 41.421436, 26.899548>,  <32.482777, 41.373352, 27.071793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756866, 41.421436, 26.899548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897264, 41.790169, 26.965311>,  <31.981503, 42.011410, 27.004768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897264, 41.790169, 26.965311>,  <31.756866, 41.421436, 26.899548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897264, 41.790169, 26.965311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571926, 0.350073, -0.741855,
		-0.741421, 0.166358, 0.650093,
		0.350994, 0.921831, 0.164407,
		32.002563, 42.066719, 27.014633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119726, 41.866760, 26.851059>,  <31.756866, 41.421436, 26.899548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119726, 41.866760, 26.851059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429876, 42.109062, 26.779676>,  <31.615967, 42.254444, 26.736847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429876, 42.109062, 26.779676>,  <31.119726, 41.866760, 26.851059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429876, 42.109062, 26.779676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513083, 0.439560, -0.737247,
		-0.368151, 0.663208, 0.651629,
		0.775378, 0.605758, -0.178456,
		31.662489, 42.290791, 26.726139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886141, 42.598740, 26.755219>,  <31.119726, 41.866760, 26.851059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886141, 42.598740, 26.755219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245462, 42.607788, 26.579702>,  <31.461056, 42.613216, 26.474394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245462, 42.607788, 26.579702>,  <30.886141, 42.598740, 26.755219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245462, 42.607788, 26.579702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429065, 0.260221, -0.864979,
		0.094613, 0.965284, 0.243465,
		0.898305, 0.022625, -0.438789,
		31.514954, 42.614574, 26.448065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026239, 43.306839, 26.496643>,  <30.886141, 42.598740, 26.755219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026239, 43.306839, 26.496643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265041, 43.068993, 26.281229>,  <31.408323, 42.926285, 26.151981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265041, 43.068993, 26.281229>,  <31.026239, 43.306839, 26.496643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265041, 43.068993, 26.281229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364166, 0.397276, -0.842351,
		0.714820, 0.699004, 0.020638,
		0.597005, -0.594614, -0.538534,
		31.444143, 42.890610, 26.119669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281530, 43.816795, 25.949659>,  <31.026239, 43.306839, 26.496643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281530, 43.816795, 25.949659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381569, 43.458809, 25.801880>,  <31.441593, 43.244019, 25.713213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381569, 43.458809, 25.801880>,  <31.281530, 43.816795, 25.949659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381569, 43.458809, 25.801880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224932, 0.317429, -0.921219,
		0.941731, 0.313496, -0.121917,
		0.250099, -0.894963, -0.369448,
		31.456598, 43.190319, 25.691046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653002, 43.901184, 25.287687>,  <31.281530, 43.816795, 25.949659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653002, 43.901184, 25.287687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529125, 43.521492, 25.265564>,  <31.454800, 43.293678, 25.252291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529125, 43.521492, 25.265564>,  <31.653002, 43.901184, 25.287687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529125, 43.521492, 25.265564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271470, 0.144016, -0.951611,
		0.911260, -0.279692, -0.302287,
		-0.309692, -0.949227, -0.055309,
		31.436218, 43.236725, 25.248972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986355, 43.624710, 24.665121>,  <31.653002, 43.901184, 25.287687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986355, 43.624710, 24.665121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664484, 43.401913, 24.747347>,  <31.471361, 43.268234, 24.796682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664484, 43.401913, 24.747347>,  <31.986355, 43.624710, 24.665121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664484, 43.401913, 24.747347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222915, -0.037470, -0.974118,
		0.550276, -0.829674, -0.094010,
		-0.804677, -0.556989, 0.205566,
		31.423080, 43.234818, 24.809017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934093, 43.128551, 24.075409>,  <31.986355, 43.624710, 24.665121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934093, 43.128551, 24.075409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578899, 43.133312, 24.259295>,  <31.365782, 43.136169, 24.369627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578899, 43.133312, 24.259295>,  <31.934093, 43.128551, 24.075409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578899, 43.133312, 24.259295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456469, -0.144167, -0.877982,
		0.055828, -0.989482, 0.133451,
		-0.887986, 0.011900, 0.459716,
		31.312504, 43.136883, 24.397209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619205, 42.539104, 23.749626>,  <31.934093, 43.128551, 24.075409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619205, 42.539104, 23.749626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324316, 42.754433, 23.912947>,  <31.147383, 42.883629, 24.010939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324316, 42.754433, 23.912947>,  <31.619205, 42.539104, 23.749626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324316, 42.754433, 23.912947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323245, 0.249644, -0.912792,
		-0.593306, -0.804914, -0.010034,
		-0.737225, 0.538322, 0.408300,
		31.103149, 42.915928, 24.035437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002932, 42.283054, 23.490423>,  <31.619205, 42.539104, 23.749626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002932, 42.283054, 23.490423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891434, 42.650692, 23.601824>,  <30.824535, 42.871277, 23.668665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891434, 42.650692, 23.601824>,  <31.002932, 42.283054, 23.490423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891434, 42.650692, 23.601824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411543, 0.147704, -0.899342,
		-0.867718, -0.365301, 0.337077,
		-0.278743, 0.919097, 0.278502,
		30.807812, 42.926422, 23.685375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307262, 42.413170, 23.454166>,  <31.002932, 42.283054, 23.490423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307262, 42.413170, 23.454166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428728, 42.792210, 23.414497>,  <30.501608, 43.019634, 23.390696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428728, 42.792210, 23.414497>,  <30.307262, 42.413170, 23.454166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428728, 42.792210, 23.414497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365100, 0.019587, -0.930762,
		-0.880050, 0.318850, 0.351918,
		0.303667, 0.947603, -0.099175,
		30.519829, 43.076492, 23.384745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696081, 42.770561, 23.056046>,  <30.307262, 42.413170, 23.454166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696081, 42.770561, 23.056046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049742, 42.944584, 22.987925>,  <30.261938, 43.049000, 22.947052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049742, 42.944584, 22.987925>,  <29.696081, 42.770561, 23.056046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049742, 42.944584, 22.987925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165226, -0.049790, -0.984998,
		-0.437012, 0.899024, 0.027862,
		0.884150, 0.435060, -0.170301,
		30.314987, 43.075100, 22.936834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590271, 43.289764, 22.517513>,  <29.696081, 42.770561, 23.056046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590271, 43.289764, 22.517513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981905, 43.208511, 22.522022>,  <30.216887, 43.159760, 22.524729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981905, 43.208511, 22.522022>,  <29.590271, 43.289764, 22.517513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981905, 43.208511, 22.522022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037102, -0.232767, -0.971825,
		0.200032, 0.951082, -0.235436,
		0.979087, -0.203131, 0.011274,
		30.275631, 43.147572, 22.525404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936712, 43.654316, 21.873018>,  <29.590271, 43.289764, 22.517513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936712, 43.654316, 21.873018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148556, 43.336048, 21.990612>,  <30.275661, 43.145088, 22.061169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.148556, 43.336048, 21.990612>,  <29.936712, 43.654316, 21.873018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148556, 43.336048, 21.990612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034096, -0.366269, -0.929884,
		0.847556, 0.482453, -0.221109,
		0.529610, -0.795667, 0.293983,
		30.307438, 43.097347, 22.078808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449905, 43.664154, 21.426094>,  <29.936712, 43.654316, 21.873018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449905, 43.664154, 21.426094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452278, 43.289211, 21.565422>,  <30.453701, 43.064247, 21.649019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452278, 43.289211, 21.565422>,  <30.449905, 43.664154, 21.426094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452278, 43.289211, 21.565422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047285, -0.348198, -0.936228,
		0.998864, -0.010919, -0.046388,
		0.005930, -0.937357, 0.348318,
		30.454058, 43.008003, 21.669918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867273, 43.266144, 20.914858>,  <30.449905, 43.664154, 21.426094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867273, 43.266144, 20.914858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645649, 42.997429, 21.111517>,  <30.512674, 42.836201, 21.229513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645649, 42.997429, 21.111517>,  <30.867273, 43.266144, 20.914858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645649, 42.997429, 21.111517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179364, -0.480382, -0.858523,
		0.812923, -0.563860, 0.145667,
		-0.554062, -0.671786, 0.491650,
		30.479431, 42.795895, 21.259012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169085, 42.515930, 20.855787>,  <30.867273, 43.266144, 20.914858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169085, 42.515930, 20.855787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772108, 42.527779, 20.903425>,  <30.533922, 42.534889, 20.932009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772108, 42.527779, 20.903425>,  <31.169085, 42.515930, 20.855787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772108, 42.527779, 20.903425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116749, -0.527070, -0.841764,
		0.037836, -0.849305, 0.526545,
		-0.992440, 0.029625, 0.119097,
		30.474377, 42.536667, 20.939154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960155, 41.996681, 20.509821>,  <31.169085, 42.515930, 20.855787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960155, 41.996681, 20.509821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607399, 42.182720, 20.540672>,  <30.395744, 42.294346, 20.559183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607399, 42.182720, 20.540672>,  <30.960155, 41.996681, 20.509821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607399, 42.182720, 20.540672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306485, -0.441264, -0.843417,
		-0.358239, -0.767442, 0.531693,
		-0.881891, 0.465101, 0.077131,
		30.342833, 42.322250, 20.563812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377079, 41.457798, 20.627842>,  <30.960155, 41.996681, 20.509821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377079, 41.457798, 20.627842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229223, 41.784031, 20.449764>,  <30.140511, 41.979771, 20.342918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229223, 41.784031, 20.449764>,  <30.377079, 41.457798, 20.627842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229223, 41.784031, 20.449764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407597, -0.572893, -0.711097,
		-0.835004, -0.081390, 0.544191,
		-0.369640, 0.815579, -0.445193,
		30.118332, 42.028706, 20.316206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848412, 41.204056, 20.284861>,  <30.377079, 41.457798, 20.627842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848412, 41.204056, 20.284861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882591, 41.557640, 20.100986>,  <29.903099, 41.769791, 19.990662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882591, 41.557640, 20.100986>,  <29.848412, 41.204056, 20.284861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882591, 41.557640, 20.100986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322226, -0.412061, -0.852277,
		-0.942799, 0.220947, 0.249626,
		0.085447, 0.883962, -0.459685,
		29.908226, 41.822830, 19.963081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.186722, 41.270466, 19.912466>,  <29.848412, 41.204056, 20.284861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.186722, 41.270466, 19.912466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477623, 41.497234, 19.757698>,  <29.652163, 41.633297, 19.664837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477623, 41.497234, 19.757698>,  <29.186722, 41.270466, 19.912466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477623, 41.497234, 19.757698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214514, -0.347744, -0.912720,
		-0.651989, 0.746776, -0.131285,
		0.727251, 0.566921, -0.386919,
		29.695799, 41.667309, 19.641623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958624, 41.284424, 19.256512>,  <29.186722, 41.270466, 19.912466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958624, 41.284424, 19.256512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330481, 41.426125, 19.215960>,  <29.553595, 41.511143, 19.191628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330481, 41.426125, 19.215960>,  <28.958624, 41.284424, 19.256512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330481, 41.426125, 19.215960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042024, -0.375280, -0.925958,
		-0.366066, 0.856547, -0.363762,
		0.929639, 0.354249, -0.101382,
		29.609373, 41.532398, 19.185545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006826, 41.679115, 18.612349>,  <28.958624, 41.284424, 19.256512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006826, 41.679115, 18.612349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381767, 41.572941, 18.702606>,  <29.606731, 41.509235, 18.756760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381767, 41.572941, 18.702606>,  <29.006826, 41.679115, 18.612349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381767, 41.572941, 18.702606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107712, -0.395149, -0.912280,
		0.331311, 0.879433, -0.341804,
		0.937353, -0.265432, 0.225643,
		29.662973, 41.493313, 18.770300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509045, 42.045094, 18.175890>,  <29.006826, 41.679115, 18.612349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509045, 42.045094, 18.175890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671875, 41.700218, 18.296499>,  <29.769573, 41.493294, 18.368866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671875, 41.700218, 18.296499>,  <29.509045, 42.045094, 18.175890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671875, 41.700218, 18.296499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053807, -0.306906, -0.950218,
		0.911809, 0.403033, -0.078542,
		0.407075, -0.862191, 0.301526,
		29.793997, 41.441563, 18.386957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680914, 41.847336, 17.625420>,  <29.509045, 42.045094, 18.175890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680914, 41.847336, 17.625420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747742, 41.512054, 17.833075>,  <29.787838, 41.310886, 17.957668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747742, 41.512054, 17.833075>,  <29.680914, 41.847336, 17.625420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747742, 41.512054, 17.833075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070398, -0.515054, -0.854262,
		0.983429, 0.179266, -0.027041,
		0.167068, -0.838203, 0.519139,
		29.797863, 41.260593, 17.988815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220304, 41.596661, 17.273687>,  <29.680914, 41.847336, 17.625420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220304, 41.596661, 17.273687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086845, 41.280102, 17.478577>,  <30.006771, 41.090168, 17.601511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086845, 41.280102, 17.478577>,  <30.220304, 41.596661, 17.273687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086845, 41.280102, 17.478577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058548, -0.559707, -0.826620,
		0.940879, -0.245808, 0.233078,
		-0.333646, -0.791395, 0.512225,
		29.986752, 41.042683, 17.632244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592348, 41.032066, 17.083738>,  <30.220304, 41.596661, 17.273687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592348, 41.032066, 17.083738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269594, 40.853794, 17.238813>,  <30.075941, 40.746830, 17.331858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269594, 40.853794, 17.238813>,  <30.592348, 41.032066, 17.083738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269594, 40.853794, 17.238813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036548, -0.617386, -0.785811,
		0.589575, -0.648229, 0.481871,
		-0.806886, -0.445683, 0.387687,
		30.027529, 40.720089, 17.355120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765512, 40.355740, 16.958824>,  <30.592348, 41.032066, 17.083738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765512, 40.355740, 16.958824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370779, 40.388832, 17.014418>,  <30.133940, 40.408688, 17.047773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370779, 40.388832, 17.014418>,  <30.765512, 40.355740, 16.958824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370779, 40.388832, 17.014418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161561, -0.463583, -0.871200,
		-0.007644, -0.882183, 0.470845,
		-0.986833, 0.082729, 0.138983,
		30.074730, 40.413651, 17.056112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431353, 39.998005, 16.979237>,  <30.765512, 40.355740, 16.958824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431353, 39.998005, 16.979237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703884, 40.087395, 16.700424>,  <31.867403, 40.141029, 16.533136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703884, 40.087395, 16.700424>,  <31.431353, 39.998005, 16.979237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703884, 40.087395, 16.700424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553760, 0.465375, 0.690490,
		0.478691, -0.856437, 0.193318,
		0.681326, 0.223479, -0.697031,
		31.908283, 40.154438, 16.491316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035332, 39.731022, 17.171915>,  <31.431353, 39.998005, 16.979237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035332, 39.731022, 17.171915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142071, 40.015018, 16.911240>,  <32.206112, 40.185417, 16.754833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142071, 40.015018, 16.911240>,  <32.035332, 39.731022, 17.171915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142071, 40.015018, 16.911240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459982, 0.500388, 0.733504,
		0.846883, -0.495497, -0.193059,
		0.266844, 0.709996, -0.651690,
		32.222126, 40.228016, 16.715733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792477, 39.831165, 17.166325>,  <32.035332, 39.731022, 17.171915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792477, 39.831165, 17.166325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652096, 40.181885, 17.034834>,  <32.567867, 40.392315, 16.955938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652096, 40.181885, 17.034834>,  <32.792477, 39.831165, 17.166325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652096, 40.181885, 17.034834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580992, 0.479207, 0.657882,
		0.734357, 0.039897, -0.677590,
		-0.350954, 0.876795, -0.328729,
		32.546810, 40.444923, 16.936214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385609, 40.331608, 17.069387>,  <32.792477, 39.831165, 17.166325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385609, 40.331608, 17.069387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066910, 40.571827, 17.096327>,  <32.875690, 40.715958, 17.112492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066910, 40.571827, 17.096327>,  <33.385609, 40.331608, 17.069387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066910, 40.571827, 17.096327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492308, 0.580402, 0.648664,
		0.350462, 0.549980, -0.758088,
		-0.796749, 0.600545, 0.067351,
		32.827885, 40.751991, 17.116531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689648, 40.955242, 17.074501>,  <33.385609, 40.331608, 17.069387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689648, 40.955242, 17.074501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320042, 41.006767, 17.218502>,  <33.098278, 41.037682, 17.304903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320042, 41.006767, 17.218502>,  <33.689648, 40.955242, 17.074501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320042, 41.006767, 17.218502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377604, 0.455337, 0.806277,
		-0.060067, 0.880952, -0.469378,
		-0.924017, 0.128808, 0.360002,
		33.042835, 41.045410, 17.326502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696110, 41.621586, 17.284889>,  <33.689648, 40.955242, 17.074501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696110, 41.621586, 17.284889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386738, 41.451965, 17.473351>,  <33.201115, 41.350193, 17.586428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386738, 41.451965, 17.473351>,  <33.696110, 41.621586, 17.284889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386738, 41.451965, 17.473351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158758, 0.590005, 0.791638,
		-0.613678, 0.687077, -0.389006,
		-0.773431, -0.424052, 0.471152,
		33.154709, 41.324749, 17.614697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241646, 42.163399, 17.658155>,  <33.696110, 41.621586, 17.284889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241646, 42.163399, 17.658155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171844, 41.806293, 17.824295>,  <33.129963, 41.592030, 17.923979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171844, 41.806293, 17.824295>,  <33.241646, 42.163399, 17.658155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171844, 41.806293, 17.824295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024481, 0.425625, 0.904568,
		-0.984351, 0.147686, -0.096131,
		-0.174508, -0.892766, 0.415349,
		33.119492, 41.538464, 17.948900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871368, 42.426815, 18.241945>,  <33.241646, 42.163399, 17.658155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871368, 42.426815, 18.241945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976051, 42.051598, 18.332790>,  <33.038860, 41.826466, 18.387297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976051, 42.051598, 18.332790>,  <32.871368, 42.426815, 18.241945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976051, 42.051598, 18.332790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108786, 0.205143, 0.972668,
		-0.958996, -0.279263, -0.048358,
		0.261710, -0.938045, 0.227111,
		33.054565, 41.770184, 18.400923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339626, 42.251396, 18.807310>,  <32.871368, 42.426815, 18.241945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339626, 42.251396, 18.807310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639324, 41.987137, 18.825954>,  <32.819141, 41.828579, 18.837141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639324, 41.987137, 18.825954>,  <32.339626, 42.251396, 18.807310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639324, 41.987137, 18.825954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087483, 0.168486, 0.981814,
		-0.656490, -0.731541, 0.184033,
		0.749245, -0.660651, 0.046612,
		32.864098, 41.788940, 18.839937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179703, 41.798866, 19.336969>,  <32.339626, 42.251396, 18.807310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179703, 41.798866, 19.336969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578243, 41.790329, 19.303919>,  <32.817368, 41.785206, 19.284088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578243, 41.790329, 19.303919>,  <32.179703, 41.798866, 19.336969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578243, 41.790329, 19.303919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083135, 0.024055, 0.996248,
		-0.019281, -0.999483, 0.025743,
		0.996352, -0.021349, -0.082628,
		32.877148, 41.783924, 19.279131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318756, 41.316448, 19.738909>,  <32.179703, 41.798866, 19.336969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318756, 41.316448, 19.738909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672520, 41.502270, 19.720942>,  <32.884777, 41.613762, 19.710161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672520, 41.502270, 19.720942>,  <32.318756, 41.316448, 19.738909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672520, 41.502270, 19.720942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046612, 0.007841, 0.998882,
		0.464387, -0.885510, -0.014720,
		0.884405, 0.464554, -0.044917,
		32.937840, 41.641636, 19.707466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637810, 41.102848, 20.265326>,  <32.318756, 41.316448, 19.738909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637810, 41.102848, 20.265326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869213, 41.418655, 20.183365>,  <33.008057, 41.608139, 20.134188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869213, 41.418655, 20.183365>,  <32.637810, 41.102848, 20.265326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869213, 41.418655, 20.183365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219535, 0.091228, 0.971330,
		0.785575, -0.606909, -0.120551,
		0.578512, 0.789518, -0.204904,
		33.042767, 41.655510, 20.121893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272911, 40.885235, 20.631765>,  <32.637810, 41.102848, 20.265326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272911, 40.885235, 20.631765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277454, 41.280811, 20.572609>,  <33.280178, 41.518158, 20.537115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277454, 41.280811, 20.572609>,  <33.272911, 40.885235, 20.631765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277454, 41.280811, 20.572609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287225, 0.138443, 0.947805,
		0.957796, -0.053239, -0.282477,
		0.011353, 0.988938, -0.147892,
		33.280861, 41.577492, 20.528242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900284, 41.122154, 20.972086>,  <33.272911, 40.885235, 20.631765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900284, 41.122154, 20.972086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667252, 41.445518, 20.938475>,  <33.527431, 41.639538, 20.918308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667252, 41.445518, 20.938475>,  <33.900284, 41.122154, 20.972086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667252, 41.445518, 20.938475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180689, 0.229620, 0.956361,
		0.792431, 0.541979, -0.279844,
		-0.582585, 0.808414, -0.084028,
		33.492477, 41.688042, 20.913267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279549, 41.602280, 21.282110>,  <33.900284, 41.122154, 20.972086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279549, 41.602280, 21.282110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897831, 41.721642, 21.288755>,  <33.668800, 41.793259, 21.292742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897831, 41.721642, 21.288755>,  <34.279549, 41.602280, 21.282110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897831, 41.721642, 21.288755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091633, 0.239232, 0.966629,
		0.284469, 0.923973, -0.255641,
		-0.954296, 0.298401, 0.016612,
		33.611542, 41.811161, 21.293739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330833, 42.124771, 21.739500>,  <34.279549, 41.602280, 21.282110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330833, 42.124771, 21.739500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940601, 42.051796, 21.690571>,  <33.706463, 42.008011, 21.661213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940601, 42.051796, 21.690571>,  <34.330833, 42.124771, 21.739500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940601, 42.051796, 21.690571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188139, 0.406613, 0.894019,
		-0.113368, 0.895199, -0.431007,
		-0.975578, -0.182443, -0.122324,
		33.647926, 41.997063, 21.653873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040775, 42.764339, 21.755035>,  <34.330833, 42.124771, 21.739500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040775, 42.764339, 21.755035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760841, 42.500042, 21.863588>,  <33.592880, 42.341461, 21.928720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760841, 42.500042, 21.863588>,  <34.040775, 42.764339, 21.755035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760841, 42.500042, 21.863588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081324, 0.451154, 0.888733,
		-0.709663, 0.599894, -0.369466,
		-0.699831, -0.660748, 0.271382,
		33.550892, 42.301819, 21.945004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616695, 43.142841, 22.169628>,  <34.040775, 42.764339, 21.755035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616695, 43.142841, 22.169628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511742, 42.769585, 22.267937>,  <33.448769, 42.545631, 22.326921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511742, 42.769585, 22.267937>,  <33.616695, 43.142841, 22.169628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511742, 42.769585, 22.267937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176489, 0.296807, 0.938487,
		-0.948686, 0.202870, -0.242566,
		-0.262386, -0.933140, 0.245772,
		33.433025, 42.489643, 22.341669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063076, 43.222805, 22.515871>,  <33.616695, 43.142841, 22.169628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063076, 43.222805, 22.515871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214344, 42.872364, 22.635492>,  <33.305107, 42.662102, 22.707266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214344, 42.872364, 22.635492>,  <33.063076, 43.222805, 22.515871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214344, 42.872364, 22.635492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102188, 0.360576, 0.927115,
		-0.920078, -0.320050, 0.225887,
		0.378173, -0.876101, 0.299053,
		33.327797, 42.609535, 22.725208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824429, 43.284893, 23.190861>,  <33.063076, 43.222805, 22.515871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824429, 43.284893, 23.190861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076893, 42.975151, 23.208797>,  <33.228371, 42.789307, 23.219559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076893, 42.975151, 23.208797>,  <32.824429, 43.284893, 23.190861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076893, 42.975151, 23.208797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179213, 0.201830, 0.962885,
		-0.754664, -0.599700, 0.266162,
		0.631161, -0.774354, 0.044840,
		33.266243, 42.742844, 23.222250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593761, 42.787788, 23.773741>,  <32.824429, 43.284893, 23.190861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593761, 42.787788, 23.773741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984104, 42.767956, 23.688654>,  <33.218311, 42.756058, 23.637602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984104, 42.767956, 23.688654>,  <32.593761, 42.787788, 23.773741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984104, 42.767956, 23.688654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218382, 0.239108, 0.946117,
		0.003955, -0.969726, 0.244162,
		0.975855, -0.049579, -0.212716,
		33.276859, 42.753082, 23.624840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756500, 42.402927, 24.328430>,  <32.593761, 42.787788, 23.773741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756500, 42.402927, 24.328430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102962, 42.551735, 24.194942>,  <33.310841, 42.641018, 24.114849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102962, 42.551735, 24.194942>,  <32.756500, 42.402927, 24.328430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102962, 42.551735, 24.194942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232226, 0.291687, 0.927895,
		0.442538, -0.881203, 0.166255,
		0.866159, 0.372020, -0.333721,
		33.362812, 42.663342, 24.094826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249493, 42.127541, 24.852257>,  <32.756500, 42.402927, 24.328430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249493, 42.127541, 24.852257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411293, 42.441803, 24.665012>,  <33.508373, 42.630360, 24.552666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411293, 42.441803, 24.665012>,  <33.249493, 42.127541, 24.852257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411293, 42.441803, 24.665012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335935, 0.348427, 0.875069,
		0.850606, -0.511217, -0.122992,
		0.404497, 0.785656, -0.468110,
		33.532642, 42.677502, 24.524580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973591, 42.139896, 25.008038>,  <33.249493, 42.127541, 24.852257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973591, 42.139896, 25.008038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884808, 42.514111, 24.898127>,  <33.831535, 42.738640, 24.832180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884808, 42.514111, 24.898127>,  <33.973591, 42.139896, 25.008038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884808, 42.514111, 24.898127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405855, 0.344877, 0.846370,
		0.886575, 0.076342, -0.456242,
		-0.221961, 0.935538, -0.274775,
		33.818218, 42.794773, 24.815695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654312, 42.436707, 25.125044>,  <33.973591, 42.139896, 25.008038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654312, 42.436707, 25.125044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356869, 42.703621, 25.108238>,  <34.178402, 42.863770, 25.098154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356869, 42.703621, 25.108238>,  <34.654312, 42.436707, 25.125044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356869, 42.703621, 25.108238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341454, 0.433030, 0.834203,
		0.574849, 0.605977, -0.549855,
		-0.743612, 0.667291, -0.042014,
		34.133785, 42.903809, 25.095634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975262, 43.132538, 25.138449>,  <34.654312, 42.436707, 25.125044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975262, 43.132538, 25.138449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597500, 43.157291, 25.267618>,  <34.370842, 43.172142, 25.345119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597500, 43.157291, 25.267618>,  <34.975262, 43.132538, 25.138449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597500, 43.157291, 25.267618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290418, 0.617480, 0.731010,
		-0.154161, 0.784149, -0.601120,
		-0.944400, 0.061883, 0.322923,
		34.314178, 43.175858, 25.364494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920361, 43.825657, 25.522146>,  <34.975262, 43.132538, 25.138449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920361, 43.825657, 25.522146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621330, 43.605705, 25.671150>,  <34.441914, 43.473736, 25.760553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621330, 43.605705, 25.671150>,  <34.920361, 43.825657, 25.522146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621330, 43.605705, 25.671150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199479, 0.349080, 0.915615,
		-0.633512, 0.758801, -0.151275,
		-0.747577, -0.549877, 0.372511,
		34.397057, 43.440742, 25.782904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615578, 44.257618, 26.024910>,  <34.920361, 43.825657, 25.522146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615578, 44.257618, 26.024910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482784, 43.888077, 26.101101>,  <34.403107, 43.666351, 26.146816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482784, 43.888077, 26.101101>,  <34.615578, 44.257618, 26.024910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482784, 43.888077, 26.101101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044108, 0.186505, 0.981463,
		-0.942253, 0.334233, -0.021168,
		-0.331985, -0.923853, 0.190477,
		34.383190, 43.610920, 26.158243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137779, 44.362938, 26.468809>,  <34.615578, 44.257618, 26.024910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137779, 44.362938, 26.468809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238029, 43.981956, 26.538107>,  <34.298180, 43.753368, 26.579685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238029, 43.981956, 26.538107>,  <34.137779, 44.362938, 26.468809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238029, 43.981956, 26.538107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009907, 0.176425, 0.984264,
		-0.968032, -0.248402, 0.034781,
		0.250630, -0.952455, 0.173246,
		34.313217, 43.696220, 26.590080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862133, 44.261490, 27.209305>,  <34.137779, 44.362938, 26.468809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862133, 44.261490, 27.209305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109196, 43.957512, 27.128326>,  <34.257431, 43.775124, 27.079739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109196, 43.957512, 27.128326>,  <33.862133, 44.261490, 27.209305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109196, 43.957512, 27.128326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335583, 0.021866, 0.941757,
		-0.711259, -0.649617, 0.268531,
		0.617653, -0.759947, -0.202448,
		34.294491, 43.729527, 27.067593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811390, 43.742565, 27.719795>,  <33.862133, 44.261490, 27.209305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811390, 43.742565, 27.719795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172680, 43.707924, 27.551659>,  <34.389454, 43.687141, 27.450777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172680, 43.707924, 27.551659>,  <33.811390, 43.742565, 27.719795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172680, 43.707924, 27.551659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417916, -0.045363, 0.907353,
		-0.097648, -0.995210, -0.004780,
		0.903223, -0.086604, -0.420343,
		34.443645, 43.681942, 27.425556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147697, 43.366203, 28.205912>,  <33.811390, 43.742565, 27.719795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147697, 43.366203, 28.205912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451302, 43.493069, 27.978472>,  <34.633465, 43.569187, 27.842009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451302, 43.493069, 27.978472>,  <34.147697, 43.366203, 28.205912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451302, 43.493069, 27.978472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548824, 0.158164, 0.820839,
		0.350272, -0.935089, -0.054018,
		0.759013, 0.317163, -0.568600,
		34.679005, 43.588219, 27.807892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794819, 43.035534, 28.339624>,  <34.147697, 43.366203, 28.205912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794819, 43.035534, 28.339624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934269, 43.379921, 28.191467>,  <35.017937, 43.586555, 28.102573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934269, 43.379921, 28.191467>,  <34.794819, 43.035534, 28.339624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934269, 43.379921, 28.191467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520582, 0.150752, 0.840398,
		0.779396, -0.485801, -0.395651,
		0.348621, 0.860972, -0.370394,
		35.038857, 43.638214, 28.080349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474754, 43.122070, 28.551029>,  <34.794819, 43.035534, 28.339624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474754, 43.122070, 28.551029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426735, 43.490135, 28.401958>,  <35.397923, 43.710976, 28.312517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426735, 43.490135, 28.401958>,  <35.474754, 43.122070, 28.551029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426735, 43.490135, 28.401958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701949, 0.344131, 0.623572,
		0.702037, -0.186741, -0.687220,
		-0.120047, 0.920164, -0.372676,
		35.390720, 43.766186, 28.290155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129112, 43.368389, 28.411175>,  <35.474754, 43.122070, 28.551029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129112, 43.368389, 28.411175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927250, 43.710957, 28.454750>,  <35.806133, 43.916496, 28.480896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927250, 43.710957, 28.454750>,  <36.129112, 43.368389, 28.411175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927250, 43.710957, 28.454750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741907, 0.365687, 0.562002,
		0.441473, 0.364439, -0.819930,
		-0.504654, 0.856421, 0.108939,
		35.775852, 43.967884, 28.487432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640022, 44.033611, 28.338650>,  <36.129112, 43.368389, 28.411175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640022, 44.033611, 28.338650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326298, 44.142048, 28.561852>,  <36.138065, 44.207111, 28.695772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326298, 44.142048, 28.561852>,  <36.640022, 44.033611, 28.338650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326298, 44.142048, 28.561852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615412, 0.453502, 0.644674,
		-0.078289, 0.849025, -0.522520,
		-0.784308, 0.271094, 0.558004,
		36.091003, 44.223377, 28.729252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768459, 44.745609, 28.560493>,  <36.640022, 44.033611, 28.338650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768459, 44.745609, 28.560493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511864, 44.602474, 28.831919>,  <36.357906, 44.516594, 28.994774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511864, 44.602474, 28.831919>,  <36.768459, 44.745609, 28.560493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511864, 44.602474, 28.831919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670950, 0.167126, 0.722423,
		-0.371917, 0.918705, 0.132884,
		-0.641486, -0.357840, 0.678562,
		36.319416, 44.495121, 29.035488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976036, 45.145790, 29.217323>,  <36.768459, 44.745609, 28.560493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976036, 45.145790, 29.217323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729462, 44.853451, 29.334538>,  <36.581516, 44.678047, 29.404865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729462, 44.853451, 29.334538>,  <36.976036, 45.145790, 29.217323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729462, 44.853451, 29.334538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464753, -0.037294, 0.884655,
		-0.635617, 0.681524, 0.362652,
		-0.616438, -0.730845, 0.293036,
		36.544529, 44.634197, 29.422449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872150, 45.322598, 29.879787>,  <36.976036, 45.145790, 29.217323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872150, 45.322598, 29.879787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781727, 44.933235, 29.864969>,  <36.727474, 44.699615, 29.856079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781727, 44.933235, 29.864969>,  <36.872150, 45.322598, 29.879787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781727, 44.933235, 29.864969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338388, -0.114133, 0.934059,
		-0.913450, 0.198618, 0.355191,
		-0.226060, -0.973409, -0.037045,
		36.713909, 44.641212, 29.853855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400776, 45.243301, 30.460876>,  <36.872150, 45.322598, 29.879787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400776, 45.243301, 30.460876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565914, 44.891594, 30.365845>,  <36.664997, 44.680569, 30.308826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565914, 44.891594, 30.365845>,  <36.400776, 45.243301, 30.460876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565914, 44.891594, 30.365845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215001, -0.159392, 0.963519,
		-0.885059, -0.448868, 0.123239,
		0.412850, -0.879268, -0.237578,
		36.689770, 44.627815, 30.294571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016537, 44.553078, 30.729010>,  <36.400776, 45.243301, 30.460876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016537, 44.553078, 30.729010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415169, 44.520180, 30.732430>,  <36.654346, 44.500443, 30.734482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415169, 44.520180, 30.732430>,  <36.016537, 44.553078, 30.729010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415169, 44.520180, 30.732430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021471, -0.157560, 0.987276,
		-0.079846, -0.984079, -0.158786,
		0.996576, -0.082239, 0.008548,
		36.714142, 44.495506, 30.734993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279816, 43.882683, 31.025063>,  <36.016537, 44.553078, 30.729010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279816, 43.882683, 31.025063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472733, 44.232635, 31.042818>,  <36.588482, 44.442608, 31.053473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472733, 44.232635, 31.042818>,  <36.279816, 43.882683, 31.025063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472733, 44.232635, 31.042818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083485, -0.004539, 0.996499,
		0.872023, -0.484311, 0.070850,
		0.482293, 0.874884, 0.044391,
		36.617420, 44.495102, 31.056135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898163, 43.847927, 31.457827>,  <36.279816, 43.882683, 31.025063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898163, 43.847927, 31.457827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665768, 44.172390, 31.484610>,  <36.526333, 44.367069, 31.500679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665768, 44.172390, 31.484610>,  <36.898163, 43.847927, 31.457827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665768, 44.172390, 31.484610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068306, -0.130571, 0.989083,
		0.811044, 0.570068, 0.131266,
		-0.580984, 0.811156, 0.066959,
		36.491474, 44.415737, 31.504698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131104, 44.288113, 32.062035>,  <36.898163, 43.847927, 31.457827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131104, 44.288113, 32.062035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740231, 44.254360, 31.984064>,  <36.505707, 44.234108, 31.937283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740231, 44.254360, 31.984064>,  <37.131104, 44.288113, 32.062035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740231, 44.254360, 31.984064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128449, -0.496104, 0.858709,
		-0.169164, 0.864153, 0.473945,
		-0.977182, -0.084385, -0.194922,
		36.447075, 44.229046, 31.925587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653381, 44.487392, 32.623375>,  <37.131104, 44.288113, 32.062035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653381, 44.487392, 32.623375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480145, 44.202023, 32.403027>,  <36.376202, 44.030800, 32.270817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480145, 44.202023, 32.403027>,  <36.653381, 44.487392, 32.623375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480145, 44.202023, 32.403027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185701, -0.527421, 0.829061,
		-0.882014, 0.461355, 0.095936,
		-0.433090, -0.713428, -0.550866,
		36.350216, 43.987995, 32.237766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990601, 44.208645, 33.005482>,  <36.653381, 44.487392, 32.623375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990601, 44.208645, 33.005482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124710, 43.936134, 32.745190>,  <36.205173, 43.772629, 32.589012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124710, 43.936134, 32.745190>,  <35.990601, 44.208645, 33.005482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124710, 43.936134, 32.745190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139220, -0.718953, 0.680973,
		-0.931779, -0.137715, -0.335892,
		0.335270, -0.681279, -0.650732,
		36.225292, 43.731750, 32.549969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535851, 43.635120, 32.968437>,  <35.990601, 44.208645, 33.005482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535851, 43.635120, 32.968437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889801, 43.477570, 32.868961>,  <36.102173, 43.383038, 32.809277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889801, 43.477570, 32.868961>,  <35.535851, 43.635120, 32.968437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889801, 43.477570, 32.868961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046194, -0.605448, 0.794543,
		-0.463525, -0.691586, -0.553943,
		0.884879, -0.393880, -0.248693,
		36.155266, 43.359406, 32.794353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515274, 42.886440, 32.898911>,  <35.535851, 43.635120, 32.968437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515274, 42.886440, 32.898911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853386, 43.029087, 33.058075>,  <36.056252, 43.114674, 33.153572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853386, 43.029087, 33.058075>,  <35.515274, 42.886440, 32.898911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853386, 43.029087, 33.058075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009303, -0.754395, 0.656355,
		0.534247, -0.551100, -0.640991,
		0.845277, 0.356619, 0.397907,
		36.106968, 43.136074, 33.177448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126667, 42.327587, 32.854515>,  <35.515274, 42.886440, 32.898911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126667, 42.327587, 32.854515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138474, 42.603714, 33.143677>,  <36.145557, 42.769390, 33.317173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138474, 42.603714, 33.143677>,  <36.126667, 42.327587, 32.854515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138474, 42.603714, 33.143677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039197, -0.723464, 0.689248,
		0.998795, 0.007990, -0.048414,
		0.029519, 0.690315, 0.722906,
		36.147327, 42.810810, 33.360550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152721, 41.870548, 33.328495>,  <36.126667, 42.327587, 32.854515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152721, 41.870548, 33.328495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214550, 42.192566, 33.557587>,  <36.251648, 42.385777, 33.695042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214550, 42.192566, 33.557587>,  <36.152721, 41.870548, 33.328495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214550, 42.192566, 33.557587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182997, -0.592994, 0.784137,
		0.970886, -0.016399, -0.238981,
		0.154573, 0.805040, 0.572728,
		36.260921, 42.434078, 33.729404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817791, 41.954594, 33.731888>,  <36.152721, 41.870548, 33.328495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817791, 41.954594, 33.731888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508724, 42.109829, 33.932835>,  <36.323284, 42.202969, 34.053402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508724, 42.109829, 33.932835>,  <36.817791, 41.954594, 33.731888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508724, 42.109829, 33.932835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130498, -0.677360, 0.723985,
		0.621254, 0.624957, 0.472729,
		-0.772667, 0.388088, 0.502368,
		36.276924, 42.226254, 34.083546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894875, 42.237637, 34.468426>,  <36.817791, 41.954594, 33.731888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894875, 42.237637, 34.468426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567360, 42.035339, 34.359753>,  <36.370850, 41.913960, 34.294548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567360, 42.035339, 34.359753>,  <36.894875, 42.237637, 34.468426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567360, 42.035339, 34.359753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280408, -0.765252, 0.579449,
		-0.500956, 0.398264, 0.768394,
		-0.818789, -0.505741, -0.271681,
		36.321724, 41.883617, 34.278248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585835, 42.282417, 34.725471>,  <36.894875, 42.237637, 34.468426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585835, 42.282417, 34.725471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507553, 42.312836, 34.334389>,  <37.460587, 42.331085, 34.099739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507553, 42.312836, 34.334389>,  <37.585835, 42.282417, 34.725471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507553, 42.312836, 34.334389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540617, -0.823444, -0.172259,
		-0.818189, -0.562279, 0.120039,
		-0.195703, 0.076045, -0.977711,
		37.448841, 42.335648, 34.041077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158024, 41.996689, 34.369404>,  <37.585835, 42.282417, 34.725471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158024, 41.996689, 34.369404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425629, 41.810867, 34.137329>,  <38.586189, 41.699375, 33.998085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425629, 41.810867, 34.137329>,  <38.158024, 41.996689, 34.369404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425629, 41.810867, 34.137329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531531, 0.844662, -0.063410,
		0.519521, -0.265967, 0.812010,
		0.669009, -0.464552, -0.580189,
		38.626331, 41.671501, 33.963272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865761, 42.008366, 34.691940>,  <38.158024, 41.996689, 34.369404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865761, 42.008366, 34.691940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894138, 41.956505, 34.296333>,  <38.911163, 41.925388, 34.058968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894138, 41.956505, 34.296333>,  <38.865761, 42.008366, 34.691940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894138, 41.956505, 34.296333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546139, 0.834744, -0.070252,
		0.834686, -0.535157, 0.130025,
		0.070941, -0.129650, -0.989019,
		38.915421, 41.917610, 33.999626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496483, 41.923420, 34.632431>,  <38.865761, 42.008366, 34.691940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496483, 41.923420, 34.632431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310925, 42.089054, 34.319168>,  <39.199589, 42.188435, 34.131210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310925, 42.089054, 34.319168>,  <39.496483, 41.923420, 34.632431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310925, 42.089054, 34.319168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580046, 0.810160, 0.084778,
		0.669586, -0.414937, -0.616021,
		-0.463898, 0.414086, -0.783154,
		39.171757, 42.213280, 34.084221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140701, 42.258102, 34.299389>,  <39.496483, 41.923420, 34.632431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140701, 42.258102, 34.299389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826221, 42.358955, 34.073711>,  <39.637531, 42.419468, 33.938305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826221, 42.358955, 34.073711>,  <40.140701, 42.258102, 34.299389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826221, 42.358955, 34.073711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462951, 0.845068, -0.267463,
		0.409344, -0.471474, -0.781120,
		-0.786202, 0.252136, -0.564193,
		39.590363, 42.434597, 33.904453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524887, 42.450783, 33.783329>,  <40.140701, 42.258102, 34.299389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524887, 42.450783, 33.783329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164352, 42.618626, 33.740398>,  <39.948032, 42.719330, 33.714638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164352, 42.618626, 33.740398>,  <40.524887, 42.450783, 33.783329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164352, 42.618626, 33.740398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432955, 0.879598, -0.197120,
		0.011695, -0.224141, -0.974487,
		-0.901340, 0.419603, -0.107330,
		39.893951, 42.744507, 33.708199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490417, 42.508919, 32.995117>,  <40.524887, 42.450783, 33.783329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490417, 42.508919, 32.995117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246826, 42.767242, 33.179325>,  <40.100674, 42.922237, 33.289848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246826, 42.767242, 33.179325>,  <40.490417, 42.508919, 32.995117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246826, 42.767242, 33.179325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680067, 0.723930, -0.115906,
		-0.408238, 0.242601, -0.880049,
		-0.608975, 0.645810, 0.460520,
		40.064133, 42.960987, 33.317482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098721, 42.877380, 32.794758>,  <40.490417, 42.508919, 32.995117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098721, 42.877380, 32.794758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033051, 43.091381, 33.126255>,  <40.993649, 43.219780, 33.325153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033051, 43.091381, 33.126255>,  <41.098721, 42.877380, 32.794758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033051, 43.091381, 33.126255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869244, 0.475636, -0.134850,
		-0.466326, 0.698244, -0.543135,
		-0.164177, 0.535001, 0.828746,
		40.983799, 43.251881, 33.374878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400463, 43.539406, 32.707684>,  <41.098721, 42.877380, 32.794758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400463, 43.539406, 32.707684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348476, 43.536942, 33.104282>,  <41.317284, 43.535461, 33.342243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348476, 43.536942, 33.104282>,  <41.400463, 43.539406, 32.707684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348476, 43.536942, 33.104282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777781, 0.619566, 0.105802,
		-0.614951, 0.784920, -0.075729,
		-0.129966, -0.006163, 0.991499,
		41.309486, 43.535091, 33.401733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548775, 44.248039, 32.999062>,  <41.400463, 43.539406, 32.707684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548775, 44.248039, 32.999062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594303, 44.046532, 33.341583>,  <41.621620, 43.925629, 33.547096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594303, 44.046532, 33.341583>,  <41.548775, 44.248039, 32.999062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594303, 44.046532, 33.341583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668091, 0.676737, 0.309326,
		-0.735324, 0.536885, 0.413586,
		0.113816, -0.503768, 0.856308,
		41.628448, 43.895401, 33.598476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583805, 44.812420, 33.595650>,  <41.548775, 44.248039, 32.999062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583805, 44.812420, 33.595650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796371, 44.473709, 33.605225>,  <41.923912, 44.270485, 33.610970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796371, 44.473709, 33.605225>,  <41.583805, 44.812420, 33.595650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796371, 44.473709, 33.605225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840745, 0.530670, 0.107411,
		-0.103654, -0.036957, 0.993927,
		0.531417, -0.846772, 0.023935,
		41.955795, 44.219677, 33.612404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031704, 44.493309, 34.044411>,  <41.583805, 44.812420, 33.595650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031704, 44.493309, 34.044411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000103, 44.191944, 33.783295>,  <40.981140, 44.011127, 33.626625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000103, 44.191944, 33.783295>,  <41.031704, 44.493309, 34.044411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000103, 44.191944, 33.783295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343895, -0.594038, 0.727224,
		-0.935678, 0.281944, -0.212162,
		-0.079004, -0.753409, -0.652788,
		40.976402, 43.965919, 33.587460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691868, 44.015400, 34.503014>,  <41.031704, 44.493309, 34.044411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691868, 44.015400, 34.503014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763664, 43.817074, 34.163143>,  <40.806744, 43.698078, 33.959221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763664, 43.817074, 34.163143>,  <40.691868, 44.015400, 34.503014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763664, 43.817074, 34.163143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282319, -0.853336, 0.438306,
		-0.942379, 0.161208, -0.293145,
		0.179492, -0.495811, -0.849678,
		40.817513, 43.668331, 33.908241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938046, 43.759293, 34.408783>,  <40.691868, 44.015400, 34.503014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938046, 43.759293, 34.408783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015690, 43.661037, 34.028893>,  <40.062275, 43.602085, 33.800957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015690, 43.661037, 34.028893>,  <39.938046, 43.759293, 34.408783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015690, 43.661037, 34.028893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839908, -0.541812, -0.031529,
		-0.506829, 0.803803, -0.311488,
		0.194111, -0.245642, -0.949727,
		40.073925, 43.587345, 33.743973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288410, 43.706928, 34.039963>,  <39.938046, 43.759293, 34.408783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288410, 43.706928, 34.039963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534531, 43.485703, 33.815277>,  <39.682205, 43.352966, 33.680466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534531, 43.485703, 33.815277>,  <39.288410, 43.706928, 34.039963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534531, 43.485703, 33.815277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712667, -0.694829, -0.096528,
		-0.336908, 0.459708, -0.821682,
		0.615303, -0.553065, -0.561713,
		39.719120, 43.319782, 33.646763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884476, 43.466129, 33.531944>,  <39.288410, 43.706928, 34.039963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884476, 43.466129, 33.531944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198021, 43.219044, 33.557205>,  <39.386150, 43.070793, 33.572361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198021, 43.219044, 33.557205>,  <38.884476, 43.466129, 33.531944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198021, 43.219044, 33.557205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620922, -0.780354, 0.074186,
		0.003458, -0.097366, -0.995243,
		0.783865, -0.617711, 0.063155,
		39.433182, 43.033730, 33.576153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687744, 42.904671, 33.060772>,  <38.884476, 43.466129, 33.531944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687744, 42.904671, 33.060772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952312, 42.764008, 33.325756>,  <39.111053, 42.679607, 33.484749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952312, 42.764008, 33.325756>,  <38.687744, 42.904671, 33.060772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952312, 42.764008, 33.325756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457434, -0.889113, -0.015259,
		0.594370, -0.292940, -0.748940,
		0.661422, -0.351660, 0.662462,
		39.150738, 42.658508, 33.524494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103500, 42.348282, 32.718147>,  <38.687744, 42.904671, 33.060772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103500, 42.348282, 32.718147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094021, 42.307308, 33.115929>,  <39.088333, 42.282726, 33.354599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094021, 42.307308, 33.115929>,  <39.103500, 42.348282, 32.718147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094021, 42.307308, 33.115929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273243, -0.956197, -0.105000,
		0.961653, -0.274217, -0.005332,
		-0.023694, -0.102430, 0.994458,
		39.086914, 42.276581, 33.414265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870331, 41.705139, 32.689243>,  <39.103500, 42.348282, 32.718147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870331, 41.705139, 32.689243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930927, 41.774769, 33.078445>,  <38.967285, 41.816547, 33.311966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930927, 41.774769, 33.078445>,  <38.870331, 41.705139, 32.689243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930927, 41.774769, 33.078445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207151, -0.956921, 0.203448,
		0.966508, -0.232381, -0.108907,
		0.151493, 0.174074, 0.973010,
		38.976376, 41.826992, 33.370350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536156, 41.281544, 32.987251>,  <38.870331, 41.705139, 32.689243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536156, 41.281544, 32.987251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218586, 41.380043, 33.209618>,  <39.028042, 41.439140, 33.343037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218586, 41.380043, 33.209618>,  <39.536156, 41.281544, 32.987251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218586, 41.380043, 33.209618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124186, -0.960716, 0.248199,
		0.595193, 0.128015, 0.793320,
		-0.793929, 0.246245, 0.555914,
		38.980408, 41.453918, 33.376392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506985, 40.974209, 33.788216>,  <39.536156, 41.281544, 32.987251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506985, 40.974209, 33.788216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165722, 41.040222, 33.590267>,  <38.960964, 41.079830, 33.471500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165722, 41.040222, 33.590267>,  <39.506985, 40.974209, 33.788216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165722, 41.040222, 33.590267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313239, -0.920648, 0.233000,
		-0.417146, 0.353797, 0.837148,
		-0.853153, 0.165032, -0.494867,
		38.909775, 41.089733, 33.441807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594437, 40.521271, 33.172405>,  <39.506985, 40.974209, 33.788216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594437, 40.521271, 33.172405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774544, 40.171154, 33.101841>,  <39.882610, 39.961082, 33.059502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774544, 40.171154, 33.101841>,  <39.594437, 40.521271, 33.172405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774544, 40.171154, 33.101841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630877, -0.172054, -0.756566,
		0.631863, 0.451954, -0.629672,
		0.450271, -0.875291, -0.176413,
		39.909626, 39.908566, 33.048916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036861, 40.296825, 32.500420>,  <39.594437, 40.521271, 33.172405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036861, 40.296825, 32.500420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802330, 40.031425, 32.686317>,  <39.661610, 39.872185, 32.797855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802330, 40.031425, 32.686317>,  <40.036861, 40.296825, 32.500420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802330, 40.031425, 32.686317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550152, -0.094963, -0.829647,
		0.594603, -0.742127, -0.309346,
		-0.586327, -0.663497, 0.464748,
		39.626431, 39.832375, 32.825741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892639, 39.718105, 32.091320>,  <40.036861, 40.296825, 32.500420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892639, 39.718105, 32.091320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579823, 39.760052, 32.337055>,  <39.392132, 39.785221, 32.484497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579823, 39.760052, 32.337055>,  <39.892639, 39.718105, 32.091320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579823, 39.760052, 32.337055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616276, 0.016698, -0.787354,
		-0.092829, -0.994346, 0.051571,
		-0.782040, 0.104871, 0.614341,
		39.345211, 39.791512, 32.521358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393791, 39.173183, 31.850828>,  <39.892639, 39.718105, 32.091320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393791, 39.173183, 31.850828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185181, 39.464130, 32.029243>,  <39.060013, 39.638699, 32.136292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185181, 39.464130, 32.029243>,  <39.393791, 39.173183, 31.850828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185181, 39.464130, 32.029243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700989, -0.067233, -0.709996,
		-0.486437, -0.682951, 0.544938,
		-0.521531, 0.727363, 0.446036,
		39.028721, 39.682339, 32.163055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690365, 38.872906, 31.909079>,  <39.393791, 39.173183, 31.850828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690365, 38.872906, 31.909079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710052, 39.270798, 31.873117>,  <38.721867, 39.509533, 31.851540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710052, 39.270798, 31.873117>,  <38.690365, 38.872906, 31.909079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710052, 39.270798, 31.873117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703820, -0.029324, -0.709773,
		-0.708671, 0.098213, 0.698670,
		0.049221, 0.994733, -0.089905,
		38.724819, 39.569218, 31.846146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739483, 38.468342, 31.391541>,  <38.690365, 38.872906, 31.909079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739483, 38.468342, 31.391541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363895, 38.379852, 31.496916>,  <38.138542, 38.326759, 31.560141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363895, 38.379852, 31.496916>,  <38.739483, 38.468342, 31.391541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363895, 38.379852, 31.496916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234200, 0.149835, 0.960573,
		-0.251976, 0.963643, -0.088879,
		-0.938967, -0.221226, 0.263440,
		38.082207, 38.313484, 31.575949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502518, 37.804398, 31.655331>,  <38.739483, 38.468342, 31.391541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502518, 37.804398, 31.655331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402153, 37.956238, 32.011520>,  <38.341934, 38.047344, 32.225235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402153, 37.956238, 32.011520>,  <38.502518, 37.804398, 31.655331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402153, 37.956238, 32.011520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502451, -0.735204, 0.454993,
		0.827396, 0.561584, -0.006258,
		-0.250916, 0.379604, 0.890473,
		38.326878, 38.070118, 32.278664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073456, 37.599895, 31.953201>,  <38.502518, 37.804398, 31.655331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073456, 37.599895, 31.953201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830772, 37.667789, 32.263840>,  <38.685162, 37.708527, 32.450222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830772, 37.667789, 32.263840>,  <39.073456, 37.599895, 31.953201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830772, 37.667789, 32.263840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464097, -0.717526, 0.519394,
		0.645387, 0.675534, 0.356552,
		-0.606704, 0.169736, 0.776595,
		38.648762, 37.718712, 32.496819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947067, 36.940762, 31.552168>,  <39.073456, 37.599895, 31.953201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947067, 36.940762, 31.552168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028084, 36.651958, 31.816799>,  <39.076694, 36.478676, 31.975578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028084, 36.651958, 31.816799>,  <38.947067, 36.940762, 31.552168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028084, 36.651958, 31.816799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092924, 0.658360, 0.746945,
		-0.974855, -0.212763, 0.066252,
		0.202540, -0.722007, 0.661577,
		39.088844, 36.435356, 32.015274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427670, 37.120697, 32.039295>,  <38.947067, 36.940762, 31.552168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427670, 37.120697, 32.039295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755131, 36.928829, 32.165607>,  <38.951607, 36.813709, 32.241394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755131, 36.928829, 32.165607>,  <38.427670, 37.120697, 32.039295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755131, 36.928829, 32.165607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018191, 0.571254, 0.820572,
		-0.573999, -0.666020, 0.476385,
		0.818654, -0.479673, 0.315784,
		39.000729, 36.784927, 32.260342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336521, 37.066090, 32.757885>,  <38.427670, 37.120697, 32.039295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336521, 37.066090, 32.757885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722424, 37.026623, 32.660309>,  <38.953964, 37.002945, 32.601765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722424, 37.026623, 32.660309>,  <38.336521, 37.066090, 32.757885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722424, 37.026623, 32.660309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254319, 0.587598, 0.768147,
		0.067550, -0.803115, 0.591983,
		0.964759, -0.098665, -0.243939,
		39.011852, 36.997025, 32.587128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526516, 37.047001, 33.410904>,  <38.336521, 37.066090, 32.757885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526516, 37.047001, 33.410904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822464, 37.199493, 33.189182>,  <39.000034, 37.290989, 33.056149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822464, 37.199493, 33.189182>,  <38.526516, 37.047001, 33.410904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822464, 37.199493, 33.189182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257433, 0.600792, 0.756821,
		0.621559, -0.702639, 0.346356,
		0.739860, 0.381245, -0.554310,
		39.044426, 37.313862, 33.022892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961006, 37.336475, 33.902298>,  <38.526516, 37.047001, 33.410904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961006, 37.336475, 33.902298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122555, 37.479870, 33.565639>,  <39.219482, 37.565907, 33.363644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122555, 37.479870, 33.565639>,  <38.961006, 37.336475, 33.902298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122555, 37.479870, 33.565639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543070, 0.646419, 0.535927,
		0.736182, -0.673520, 0.066387,
		0.403871, 0.358487, -0.841651,
		39.243717, 37.587418, 33.313145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713253, 37.352753, 33.992661>,  <38.961006, 37.336475, 33.902298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713253, 37.352753, 33.992661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545677, 37.645866, 33.778175>,  <39.445133, 37.821735, 33.649483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545677, 37.645866, 33.778175>,  <39.713253, 37.352753, 33.992661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545677, 37.645866, 33.778175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520187, 0.677708, 0.519728,
		0.744242, -0.061197, -0.665100,
		-0.418938, 0.732780, -0.536213,
		39.419994, 37.865700, 33.617310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097370, 37.845627, 33.590019>,  <39.713253, 37.352753, 33.992661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097370, 37.845627, 33.590019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801651, 37.940639, 33.842056>,  <39.624218, 37.997646, 33.993279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801651, 37.940639, 33.842056>,  <40.097370, 37.845627, 33.590019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801651, 37.940639, 33.842056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540315, 0.767683, 0.344562,
		-0.401870, 0.595183, -0.695886,
		-0.739297, 0.237529, 0.630095,
		39.579861, 38.011898, 34.031086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814526, 38.051472, 33.403000>,  <40.097370, 37.845627, 33.590019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814526, 38.051472, 33.403000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865658, 38.027393, 33.007011>,  <40.896336, 38.012947, 32.769421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865658, 38.027393, 33.007011>,  <40.814526, 38.051472, 33.403000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865658, 38.027393, 33.007011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690151, -0.711455, 0.132375,
		-0.712286, -0.700149, -0.049401,
		0.127829, -0.060194, -0.989968,
		40.904007, 38.009335, 32.710022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987392, 37.420506, 33.405838>,  <40.814526, 38.051472, 33.403000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987392, 37.420506, 33.405838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124237, 37.548573, 33.052467>,  <41.206345, 37.625412, 32.840443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124237, 37.548573, 33.052467>,  <40.987392, 37.420506, 33.405838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124237, 37.548573, 33.052467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789389, -0.607928, 0.085372,
		-0.509728, -0.726577, -0.460720,
		0.342114, 0.320171, -0.883430,
		41.226871, 37.644623, 32.787437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203621, 36.747089, 33.018661>,  <40.987392, 37.420506, 33.405838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203621, 36.747089, 33.018661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376553, 37.094097, 32.920277>,  <41.480312, 37.302303, 32.861244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376553, 37.094097, 32.920277>,  <41.203621, 36.747089, 33.018661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376553, 37.094097, 32.920277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900866, -0.403697, 0.159590,
		0.039155, -0.290573, -0.956051,
		0.432328, 0.867523, -0.245961,
		41.506252, 37.354355, 32.846489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741348, 36.715279, 32.374161>,  <41.203621, 36.747089, 33.018661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741348, 36.715279, 32.374161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845261, 36.976646, 32.658569>,  <41.907608, 37.133469, 32.829216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845261, 36.976646, 32.658569>,  <41.741348, 36.715279, 32.374161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845261, 36.976646, 32.658569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854016, -0.499143, 0.146675,
		0.450743, 0.569121, -0.687701,
		0.259785, 0.653420, 0.711023,
		41.923195, 37.172672, 32.871876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471588, 36.774529, 32.423752>,  <41.741348, 36.715279, 32.374161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471588, 36.774529, 32.423752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325703, 36.863331, 32.785458>,  <42.238171, 36.916611, 33.002483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325703, 36.863331, 32.785458>,  <42.471588, 36.774529, 32.423752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325703, 36.863331, 32.785458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751326, -0.503481, 0.426634,
		0.549995, 0.834998, 0.016829,
		-0.364712, 0.222003, 0.904268,
		42.216290, 36.929932, 33.056740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176167, 36.907650, 32.260437>,  <42.471588, 36.774529, 32.423752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176167, 36.907650, 32.260437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.304539, 37.120472, 32.573849>,  <43.381561, 37.248165, 32.761898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.304539, 37.120472, 32.573849>,  <43.176167, 36.907650, 32.260437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304539, 37.120472, 32.573849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630843, -0.737151, 0.242169,
		0.706429, 0.416567, -0.572215,
		0.320929, 0.532053, 0.783533,
		43.400818, 37.280087, 32.808910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907436, 36.947994, 32.266819>,  <43.176167, 36.907650, 32.260437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.907436, 36.947994, 32.266819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791477, 36.968468, 32.649094>,  <43.721901, 36.980751, 32.878460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791477, 36.968468, 32.649094>,  <43.907436, 36.947994, 32.266819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791477, 36.968468, 32.649094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645969, -0.726341, 0.234848,
		0.706176, 0.685426, 0.177500,
		-0.289896, 0.051185, 0.955688,
		43.704510, 36.983822, 32.935799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510899, 36.731628, 32.586479>,  <43.907436, 36.947994, 32.266819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510899, 36.731628, 32.586479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.239407, 36.707584, 32.879246>,  <44.076511, 36.693157, 33.054905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.239407, 36.707584, 32.879246>,  <44.510899, 36.731628, 32.586479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.239407, 36.707584, 32.879246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637717, -0.542492, 0.546826,
		0.364194, 0.837908, 0.406538,
		-0.678734, -0.060105, 0.731921,
		44.035786, 36.689552, 33.098824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.683804, 37.071877, 33.192944>,  <44.510899, 36.731628, 32.586479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.683804, 37.071877, 33.192944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449226, 36.752903, 33.249775>,  <44.308479, 36.561520, 33.283875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449226, 36.752903, 33.249775>,  <44.683804, 37.071877, 33.192944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.449226, 36.752903, 33.249775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732621, -0.447389, 0.512943,
		-0.345470, 0.404905, 0.846583,
		-0.586445, -0.797430, 0.142083,
		44.273293, 36.513676, 33.292400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592484, 36.833477, 34.001442>,  <44.683804, 37.071877, 33.192944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592484, 36.833477, 34.001442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549637, 36.530651, 33.743645>,  <44.523930, 36.348953, 33.588966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549637, 36.530651, 33.743645>,  <44.592484, 36.833477, 34.001442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549637, 36.530651, 33.743645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518300, -0.595699, 0.613602,
		-0.848463, -0.268312, 0.456200,
		-0.107121, -0.757068, -0.644495,
		44.517502, 36.303532, 33.550297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347912, 36.145443, 34.332104>,  <44.592484, 36.833477, 34.001442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347912, 36.145443, 34.332104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.561527, 36.085690, 33.999241>,  <44.689697, 36.049839, 33.799522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.561527, 36.085690, 33.999241>,  <44.347912, 36.145443, 34.332104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.561527, 36.085690, 33.999241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637392, -0.575517, 0.512359,
		-0.555457, -0.804031, -0.212134,
		0.534039, -0.149381, -0.832158,
		44.721737, 36.040874, 33.749592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184162, 35.478798, 34.155907>,  <44.347912, 36.145443, 34.332104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184162, 35.478798, 34.155907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534721, 35.641907, 34.053413>,  <44.745056, 35.739773, 33.991917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534721, 35.641907, 34.053413>,  <44.184162, 35.478798, 34.155907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.534721, 35.641907, 34.053413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477337, -0.664943, 0.574456,
		0.063866, -0.625760, -0.777396,
		0.876396, 0.407768, -0.256232,
		44.797642, 35.764236, 33.976543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.669910, 34.911694, 33.947800>,  <44.184162, 35.478798, 34.155907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.669910, 34.911694, 33.947800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856380, 35.234646, 34.092472>,  <44.968262, 35.428417, 34.179276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856380, 35.234646, 34.092472>,  <44.669910, 34.911694, 33.947800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.856380, 35.234646, 34.092472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641351, -0.590017, 0.490458,
		0.609385, 0.003324, -0.792867,
		0.466175, 0.807384, 0.361680,
		44.996231, 35.476860, 34.200977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.327389, 34.726837, 33.968212>,  <44.669910, 34.911694, 33.947800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.327389, 34.726837, 33.968212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305656, 35.037010, 34.219849>,  <45.292618, 35.223114, 34.370831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305656, 35.037010, 34.219849>,  <45.327389, 34.726837, 33.968212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.305656, 35.037010, 34.219849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688860, -0.426981, 0.585797,
		0.722856, 0.465179, -0.510968,
		-0.054327, 0.775432, 0.629089,
		45.289360, 35.269638, 34.408577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.982330, 34.818642, 34.197102>,  <45.327389, 34.726837, 33.968212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.982330, 34.818642, 34.197102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754543, 34.940022, 34.502682>,  <45.617870, 35.012848, 34.686031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754543, 34.940022, 34.502682>,  <45.982330, 34.818642, 34.197102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.754543, 34.940022, 34.502682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709165, -0.288612, 0.643264,
		0.415682, 0.908088, -0.050837,
		-0.569468, 0.303445, 0.763955,
		45.583702, 35.031055, 34.731869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.410336, 34.966476, 34.756668>,  <45.982330, 34.818642, 34.197102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.410336, 34.966476, 34.756668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.071022, 34.974472, 34.968330>,  <45.867432, 34.979271, 35.095329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.071022, 34.974472, 34.968330>,  <46.410336, 34.966476, 34.756668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.071022, 34.974472, 34.968330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477551, -0.402914, 0.780773,
		0.228813, 0.915020, 0.332241,
		-0.848287, 0.019989, 0.529160,
		45.816536, 34.980469, 35.127079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.529762, 35.219463, 35.478878>,  <46.410336, 34.966476, 34.756668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.529762, 35.219463, 35.478878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.204372, 34.986828, 35.480190>,  <46.009140, 34.847244, 35.480976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.204372, 34.986828, 35.480190>,  <46.529762, 35.219463, 35.478878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.204372, 34.986828, 35.480190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350057, -0.485107, 0.801331,
		-0.464457, 0.653010, 0.598212,
		-0.813474, -0.581592, 0.003280,
		45.960331, 34.812351, 35.481174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.272511, 35.190506, 35.612904>,  <46.529762, 35.219463, 35.478878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.272511, 35.190506, 35.612904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.453075, 34.848839, 35.509655>,  <47.561417, 34.643841, 35.447704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.453075, 34.848839, 35.509655>,  <47.272511, 35.190506, 35.612904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.453075, 34.848839, 35.509655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294579, 0.130401, -0.946688,
		0.842287, 0.503387, -0.192754,
		0.451415, -0.854165, -0.258123,
		47.588501, 34.592590, 35.432217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.902046, 35.247948, 35.116554>,  <47.272511, 35.190506, 35.612904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.902046, 35.247948, 35.116554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.657848, 34.931183, 35.121853>,  <47.511330, 34.741123, 35.125031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.657848, 34.931183, 35.121853>,  <47.902046, 35.247948, 35.116554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.657848, 34.931183, 35.121853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304974, 0.219613, -0.926694,
		0.730949, -0.569782, -0.375584,
		-0.610496, -0.791909, 0.013243,
		47.474701, 34.693611, 35.125824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.290558, 37.414463, 22.354528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.962421, 37.246658, 22.509985>,  <33.765537, 37.145973, 22.603258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.962421, 37.246658, 22.509985>,  <34.290558, 37.414463, 22.354528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962421, 37.246658, 22.509985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447791, -0.048524, 0.892820,
		-0.355692, 0.906451, 0.227661,
		-0.820345, -0.419513, 0.388641,
		33.716316, 37.120804, 22.626577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224705, 37.774799, 22.936214>,  <34.290558, 37.414463, 22.354528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224705, 37.774799, 22.936214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.008022, 37.443558, 22.993893>,  <33.878014, 37.244812, 23.028500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.008022, 37.443558, 22.993893>,  <34.224705, 37.774799, 22.936214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008022, 37.443558, 22.993893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264460, -0.005071, 0.964383,
		-0.797883, 0.560545, 0.221749,
		-0.541705, -0.828108, 0.144195,
		33.845512, 37.195126, 23.037151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797619, 37.906719, 23.514507>,  <34.224705, 37.774799, 22.936214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797619, 37.906719, 23.514507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.835819, 37.508900, 23.497738>,  <33.858742, 37.270210, 23.487677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.835819, 37.508900, 23.497738>,  <33.797619, 37.906719, 23.514507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835819, 37.508900, 23.497738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131940, -0.029098, 0.990830,
		-0.986646, -0.100160, 0.128441,
		0.095504, -0.994546, -0.041925,
		33.864471, 37.210537, 23.485161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411579, 37.628994, 24.164673>,  <33.797619, 37.906719, 23.514507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411579, 37.628994, 24.164673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.669552, 37.351078, 24.037348>,  <33.824337, 37.184326, 23.960953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.669552, 37.351078, 24.037348>,  <33.411579, 37.628994, 24.164673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669552, 37.351078, 24.037348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303000, -0.149911, 0.941126,
		-0.701607, -0.703412, 0.113840,
		0.644933, -0.694794, -0.318312,
		33.863033, 37.142639, 23.941854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297459, 37.080536, 24.591545>,  <33.411579, 37.628994, 24.164673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297459, 37.080536, 24.591545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.664227, 37.032375, 24.439356>,  <33.884289, 37.003479, 24.348042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.664227, 37.032375, 24.439356>,  <33.297459, 37.080536, 24.591545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664227, 37.032375, 24.439356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331740, -0.299985, 0.894403,
		-0.221824, -0.946315, -0.235120,
		0.916920, -0.120402, -0.380475,
		33.939304, 36.996254, 24.325212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589767, 36.462257, 24.999638>,  <33.297459, 37.080536, 24.591545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589767, 36.462257, 24.999638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.918842, 36.620480, 24.836311>,  <34.116287, 36.715412, 24.738316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.918842, 36.620480, 24.836311>,  <33.589767, 36.462257, 24.999638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918842, 36.620480, 24.836311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323436, 0.264993, 0.908387,
		0.467519, -0.879382, 0.090069,
		0.822687, 0.395557, -0.408313,
		34.165649, 36.739147, 24.713818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155186, 36.359028, 25.529455>,  <33.589767, 36.462257, 24.999638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155186, 36.359028, 25.529455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.289993, 36.655849, 25.297670>,  <34.370876, 36.833942, 25.158600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.289993, 36.655849, 25.297670>,  <34.155186, 36.359028, 25.529455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289993, 36.655849, 25.297670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512967, 0.371369, 0.773918,
		0.789483, -0.558069, -0.255491,
		0.337018, 0.742054, -0.579461,
		34.391098, 36.878464, 25.123833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836178, 36.305225, 25.599100>,  <34.155186, 36.359028, 25.529455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836178, 36.305225, 25.599100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.775417, 36.680992, 25.476192>,  <34.738960, 36.906452, 25.402449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.775417, 36.680992, 25.476192>,  <34.836178, 36.305225, 25.599100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775417, 36.680992, 25.476192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506951, 0.340923, 0.791690,
		0.848484, -0.035508, -0.528028,
		-0.151906, 0.939420, -0.307269,
		34.729847, 36.962818, 25.384012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477993, 36.649403, 25.735893>,  <34.836178, 36.305225, 25.599100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477993, 36.649403, 25.735893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.252449, 36.973049, 25.669701>,  <35.117123, 37.167236, 25.629984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.252449, 36.973049, 25.669701>,  <35.477993, 36.649403, 25.735893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252449, 36.973049, 25.669701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547915, 0.516429, 0.658096,
		0.617939, 0.280405, -0.734523,
		-0.563863, 0.809119, -0.165483,
		35.083290, 37.215786, 25.620056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940720, 37.248074, 25.644178>,  <35.477993, 36.649403, 25.735893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940720, 37.248074, 25.644178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.576241, 37.380764, 25.741892>,  <35.357552, 37.460377, 25.800520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.576241, 37.380764, 25.741892>,  <35.940720, 37.248074, 25.644178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576241, 37.380764, 25.741892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410929, 0.689811, 0.596069,
		0.029220, 0.643521, -0.764871,
		-0.911199, 0.331725, 0.244285,
		35.302879, 37.480282, 25.815178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950993, 38.051186, 25.665358>,  <35.940720, 37.248074, 25.644178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950993, 38.051186, 25.665358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.673447, 37.889191, 25.903532>,  <35.506920, 37.791996, 26.046436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.673447, 37.889191, 25.903532>,  <35.950993, 38.051186, 25.665358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673447, 37.889191, 25.903532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376799, 0.500453, 0.779468,
		-0.613660, 0.765202, -0.194647,
		-0.693862, -0.404985, 0.595435,
		35.465286, 37.767696, 26.082163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750290, 38.631607, 25.989069>,  <35.950993, 38.051186, 25.665358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750290, 38.631607, 25.989069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.646347, 38.316772, 26.212843>,  <35.583981, 38.127872, 26.347107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.646347, 38.316772, 26.212843>,  <35.750290, 38.631607, 25.989069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646347, 38.316772, 26.212843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352616, 0.461988, 0.813775,
		-0.898964, 0.408732, 0.157488,
		-0.259858, -0.787087, 0.559436,
		35.568390, 38.080647, 26.380674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493244, 38.938957, 26.456717>,  <35.750290, 38.631607, 25.989069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493244, 38.938957, 26.456717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.545521, 38.589500, 26.644192>,  <35.576885, 38.379826, 26.756676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.545521, 38.589500, 26.644192>,  <35.493244, 38.938957, 26.456717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545521, 38.589500, 26.644192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251893, 0.486488, 0.836588,
		-0.958890, 0.008726, 0.283643,
		0.130688, -0.873644, 0.468687,
		35.584728, 38.327408, 26.784798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981804, 38.922939, 26.946268>,  <35.493244, 38.938957, 26.456717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981804, 38.922939, 26.946268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.275631, 38.669662, 27.043814>,  <35.451927, 38.517696, 27.102341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.275631, 38.669662, 27.043814>,  <34.981804, 38.922939, 26.946268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275631, 38.669662, 27.043814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137825, 0.491145, 0.860105,
		-0.664387, -0.598198, 0.448051,
		0.734571, -0.633195, 0.243864,
		35.496002, 38.479706, 27.116972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939388, 38.818180, 27.634914>,  <34.981804, 38.922939, 26.946268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939388, 38.818180, 27.634914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.320404, 38.711384, 27.576418>,  <35.549015, 38.647305, 27.541321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.320404, 38.711384, 27.576418>,  <34.939388, 38.818180, 27.634914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320404, 38.711384, 27.576418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258600, 0.456221, 0.851463,
		-0.160615, -0.848869, 0.503612,
		0.952538, -0.266992, -0.146242,
		35.606167, 38.631287, 27.532545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129166, 38.643368, 28.246464>,  <34.939388, 38.818180, 27.634914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129166, 38.643368, 28.246464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.489342, 38.675003, 28.075369>,  <35.705448, 38.693985, 27.972712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.489342, 38.675003, 28.075369>,  <35.129166, 38.643368, 28.246464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489342, 38.675003, 28.075369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342694, 0.476645, 0.809549,
		0.267905, -0.875531, 0.402085,
		0.900437, 0.079090, -0.427735,
		35.759472, 38.698730, 27.947048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646656, 38.479389, 28.733942>,  <35.129166, 38.643368, 28.246464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646656, 38.479389, 28.733942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.785633, 38.724007, 28.449604>,  <35.869019, 38.870777, 28.279001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.785633, 38.724007, 28.449604>,  <35.646656, 38.479389, 28.733942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785633, 38.724007, 28.449604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453486, 0.553944, 0.698209,
		0.820754, -0.564943, -0.084865,
		0.347438, 0.611543, -0.710846,
		35.889866, 38.907471, 28.236351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286732, 38.475395, 28.849997>,  <35.646656, 38.479389, 28.733942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286732, 38.475395, 28.849997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.217167, 38.810101, 28.642309>,  <36.175426, 39.010921, 28.517696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.217167, 38.810101, 28.642309>,  <36.286732, 38.475395, 28.849997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217167, 38.810101, 28.642309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534088, 0.523117, 0.664153,
		0.827348, -0.161805, -0.537880,
		-0.173911, 0.836760, -0.519218,
		36.164993, 39.061131, 28.486544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948112, 38.924412, 28.824123>,  <36.286732, 38.475395, 28.849997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948112, 38.924412, 28.824123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.646439, 39.177708, 28.754587>,  <36.465435, 39.329685, 28.712866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.646439, 39.177708, 28.754587>,  <36.948112, 38.924412, 28.824123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646439, 39.177708, 28.754587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326868, 0.591618, 0.736984,
		0.569532, 0.498998, -0.653173,
		-0.754182, 0.633237, -0.173839,
		36.420185, 39.367680, 28.702435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338547, 39.587837, 28.871033>,  <36.948112, 38.924412, 28.824123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338547, 39.587837, 28.871033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.950314, 39.684151, 28.870892>,  <36.717373, 39.741940, 28.870808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.950314, 39.684151, 28.870892>,  <37.338547, 39.587837, 28.871033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950314, 39.684151, 28.870892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153234, 0.618801, 0.770458,
		0.185732, 0.747736, -0.637491,
		-0.970579, 0.240784, -0.000353,
		36.659142, 39.756386, 28.870785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230797, 40.454834, 28.958973>,  <37.338547, 39.587837, 28.871033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230797, 40.454834, 28.958973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.907982, 40.246670, 29.070589>,  <36.714291, 40.121773, 29.137558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.907982, 40.246670, 29.070589>,  <37.230797, 40.454834, 28.958973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907982, 40.246670, 29.070589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029908, 0.435920, 0.899488,
		-0.589739, 0.734268, -0.336241,
		-0.807040, -0.520408, 0.279040,
		36.665871, 40.090546, 29.154301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400867, 41.186565, 28.960752>,  <37.230797, 40.454834, 28.958973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400867, 41.186565, 28.960752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.428665, 41.580944, 29.021521>,  <37.445343, 41.817570, 29.057981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.428665, 41.580944, 29.021521>,  <37.400867, 41.186565, 28.960752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428665, 41.580944, 29.021521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425184, 0.167040, -0.889560,
		-0.902435, -0.002773, 0.430817,
		0.069497, 0.985946, 0.151922,
		37.449512, 41.876728, 29.067097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739014, 41.529972, 28.882053>,  <37.400867, 41.186565, 28.960752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739014, 41.529972, 28.882053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.028881, 41.791416, 28.794735>,  <37.202801, 41.948280, 28.742344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.028881, 41.791416, 28.794735>,  <36.739014, 41.529972, 28.882053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028881, 41.791416, 28.794735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469973, 0.237101, -0.850241,
		-0.503965, 0.718736, 0.478997,
		0.724669, 0.653607, -0.218295,
		37.246281, 41.987499, 28.729246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415932, 42.071735, 28.561062>,  <36.739014, 41.529972, 28.882053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415932, 42.071735, 28.561062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.795345, 42.078247, 28.434559>,  <37.022995, 42.082153, 28.358658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.795345, 42.078247, 28.434559>,  <36.415932, 42.071735, 28.561062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795345, 42.078247, 28.434559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310467, 0.244597, -0.918576,
		0.062399, 0.969488, 0.237064,
		0.948534, 0.016282, -0.316256,
		37.079906, 42.083130, 28.339682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343132, 42.554771, 27.973658>,  <36.415932, 42.071735, 28.561062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343132, 42.554771, 27.973658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.701508, 42.384457, 27.923061>,  <36.916534, 42.282269, 27.892704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.701508, 42.384457, 27.923061>,  <36.343132, 42.554771, 27.973658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701508, 42.384457, 27.923061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037456, 0.211337, -0.976695,
		0.442598, 0.879796, 0.173396,
		0.895937, -0.425789, -0.126491,
		36.970287, 42.256721, 27.885115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715374, 43.067173, 27.691790>,  <36.343132, 42.554771, 27.973658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715374, 43.067173, 27.691790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884327, 42.718861, 27.591127>,  <36.985699, 42.509872, 27.530731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884327, 42.718861, 27.591127>,  <36.715374, 43.067173, 27.691790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884327, 42.718861, 27.591127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261486, 0.148773, -0.953672,
		0.867884, 0.468614, -0.164860,
		0.422378, -0.870785, -0.251654,
		37.011040, 42.457626, 27.515631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967339, 43.234821, 27.148376>,  <36.715374, 43.067173, 27.691790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967339, 43.234821, 27.148376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.003799, 42.837872, 27.115168>,  <37.025677, 42.599701, 27.095243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.003799, 42.837872, 27.115168>,  <36.967339, 43.234821, 27.148376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003799, 42.837872, 27.115168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091702, 0.074649, -0.992984,
		0.991606, 0.098126, -0.084198,
		0.091152, -0.992370, -0.083021,
		37.031143, 42.540161, 27.090261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242100, 43.193562, 26.570272>,  <36.967339, 43.234821, 27.148376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242100, 43.193562, 26.570272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.106941, 42.822697, 26.635012>,  <37.025845, 42.600178, 26.673855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.106941, 42.822697, 26.635012>,  <37.242100, 43.193562, 26.570272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106941, 42.822697, 26.635012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154589, -0.114955, -0.981268,
		0.928401, -0.356587, -0.104487,
		-0.337896, -0.927163, 0.161849,
		37.005573, 42.544548, 26.683567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501163, 42.777584, 26.027885>,  <37.242100, 43.193562, 26.570272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501163, 42.777584, 26.027885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.202465, 42.560581, 26.181797>,  <37.023247, 42.430378, 26.274143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.202465, 42.560581, 26.181797>,  <37.501163, 42.777584, 26.027885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202465, 42.560581, 26.181797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263208, -0.290247, -0.920043,
		0.610810, -0.788317, 0.073949,
		-0.746749, -0.542507, 0.384777,
		36.978439, 42.397831, 26.297230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590862, 42.033871, 25.846889>,  <37.501163, 42.777584, 26.027885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590862, 42.033871, 25.846889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.201710, 42.102978, 25.908421>,  <36.968220, 42.144440, 25.945339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.201710, 42.102978, 25.908421>,  <37.590862, 42.033871, 25.846889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201710, 42.102978, 25.908421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212193, -0.401722, -0.890839,
		-0.092111, -0.899317, 0.427486,
		-0.972877, 0.172766, 0.153825,
		36.909847, 42.154808, 25.954569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281776, 41.376930, 25.785597>,  <37.590862, 42.033871, 25.846889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281776, 41.376930, 25.785597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.982948, 41.639622, 25.744413>,  <36.803654, 41.797237, 25.719704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.982948, 41.639622, 25.744413>,  <37.281776, 41.376930, 25.785597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982948, 41.639622, 25.744413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322459, -0.493462, -0.807784,
		-0.581301, -0.570268, 0.580417,
		-0.747067, 0.656727, -0.102962,
		36.758827, 41.836639, 25.713526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853676, 40.983177, 25.542332>,  <37.281776, 41.376930, 25.785597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853676, 40.983177, 25.542332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684017, 41.340118, 25.480612>,  <36.582222, 41.554283, 25.443579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684017, 41.340118, 25.480612>,  <36.853676, 40.983177, 25.542332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684017, 41.340118, 25.480612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507328, -0.375277, -0.775749,
		-0.750147, -0.250748, 0.611887,
		-0.424144, 0.892352, -0.154301,
		36.556774, 41.607822, 25.434320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084034, 40.938091, 25.511183>,  <36.853676, 40.983177, 25.542332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084034, 40.938091, 25.511183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.155060, 41.272076, 25.302834>,  <36.197674, 41.472466, 25.177824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.155060, 41.272076, 25.302834>,  <36.084034, 40.938091, 25.511183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155060, 41.272076, 25.302834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523263, -0.368161, -0.768540,
		-0.833467, 0.409019, 0.371532,
		0.177563, 0.834962, -0.520875,
		36.208328, 41.522564, 25.146570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424961, 41.087875, 25.205339>,  <36.084034, 40.938091, 25.511183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424961, 41.087875, 25.205339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.705204, 41.275440, 24.990204>,  <35.873348, 41.387981, 24.861122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.705204, 41.275440, 24.990204>,  <35.424961, 41.087875, 25.205339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705204, 41.275440, 24.990204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508966, -0.199882, -0.837258,
		-0.500107, 0.860330, 0.098623,
		0.700605, 0.468914, -0.537841,
		35.915386, 41.416115, 24.828852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166157, 41.450226, 24.754486>,  <35.424961, 41.087875, 25.205339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166157, 41.450226, 24.754486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.523083, 41.408367, 24.578838>,  <35.737240, 41.383251, 24.473450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.523083, 41.408367, 24.578838>,  <35.166157, 41.450226, 24.754486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523083, 41.408367, 24.578838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437210, -0.442449, -0.782998,
		-0.112351, 0.890667, -0.440556,
		0.892314, -0.104645, -0.439118,
		35.790775, 41.376972, 24.447104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126076, 41.696648, 24.059813>,  <35.166157, 41.450226, 24.754486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126076, 41.696648, 24.059813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.449142, 41.460880, 24.066231>,  <35.642982, 41.319420, 24.070082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.449142, 41.460880, 24.066231>,  <35.126076, 41.696648, 24.059813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449142, 41.460880, 24.066231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376688, -0.536712, -0.755014,
		0.453633, 0.603756, -0.655512,
		0.807665, -0.589423, 0.016043,
		35.691441, 41.284054, 24.071043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426476, 41.822136, 23.420267>,  <35.126076, 41.696648, 24.059813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426476, 41.822136, 23.420267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.586670, 41.479042, 23.549200>,  <35.682789, 41.273186, 23.626560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.586670, 41.479042, 23.549200>,  <35.426476, 41.822136, 23.420267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586670, 41.479042, 23.549200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165198, -0.413601, -0.895346,
		0.901286, 0.305329, -0.307339,
		0.400490, -0.857735, 0.322333,
		35.706818, 41.221722, 23.645901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804756, 41.562935, 22.895859>,  <35.426476, 41.822136, 23.420267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804756, 41.562935, 22.895859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.751785, 41.243515, 23.130733>,  <35.720005, 41.051865, 23.271658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.751785, 41.243515, 23.130733>,  <35.804756, 41.562935, 22.895859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751785, 41.243515, 23.130733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128511, -0.573573, -0.809011,
		0.982827, -0.182594, -0.026667,
		-0.132425, -0.798545, 0.587188,
		35.712059, 41.003952, 23.306890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078136, 41.011246, 22.504827>,  <35.804756, 41.562935, 22.895859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078136, 41.011246, 22.504827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.866486, 40.813541, 22.780722>,  <35.739494, 40.694920, 22.946259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.866486, 40.813541, 22.780722>,  <36.078136, 41.011246, 22.504827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866486, 40.813541, 22.780722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189464, -0.723508, -0.663807,
		0.827123, -0.481916, 0.289181,
		-0.529123, -0.494260, 0.689735,
		35.707748, 40.665264, 22.987642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215370, 40.218681, 22.538710>,  <36.078136, 41.011246, 22.504827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215370, 40.218681, 22.538710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.850597, 40.269997, 22.694616>,  <35.631733, 40.300785, 22.788160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.850597, 40.269997, 22.694616>,  <36.215370, 40.218681, 22.538710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850597, 40.269997, 22.694616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366372, -0.682332, -0.632609,
		0.184792, -0.719697, 0.669244,
		-0.911934, 0.128291, 0.389767,
		35.577019, 40.308483, 22.811546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.855316, 39.433872, 22.919048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.552845, 39.685894, 22.848364>,  <35.371361, 39.837109, 22.805952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.552845, 39.685894, 22.848364>,  <35.855316, 39.433872, 22.919048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552845, 39.685894, 22.848364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497645, -0.729061, -0.469914,
		-0.424906, -0.267398, 0.864843,
		-0.756178, 0.630054, -0.176713,
		35.325993, 39.874908, 22.795349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278435, 38.969727, 22.958326>,  <35.855316, 39.433872, 22.919048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278435, 38.969727, 22.958326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.144386, 39.299385, 22.775690>,  <35.063957, 39.497181, 22.666109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.144386, 39.299385, 22.775690>,  <35.278435, 38.969727, 22.958326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144386, 39.299385, 22.775690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499007, -0.566317, -0.655955,
		-0.799179, 0.008018, 0.601040,
		-0.335120, 0.824149, -0.456589,
		35.043850, 39.546631, 22.638714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582794, 38.835281, 22.919672>,  <35.278435, 38.969727, 22.958326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582794, 38.835281, 22.919672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.662560, 39.104443, 22.634733>,  <34.710419, 39.265938, 22.463770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.662560, 39.104443, 22.634733>,  <34.582794, 38.835281, 22.919672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662560, 39.104443, 22.634733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532896, -0.535590, -0.655107,
		-0.822348, 0.510245, 0.251782,
		0.199413, 0.672899, -0.712349,
		34.722382, 39.306313, 22.421028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926167, 39.101414, 22.659380>,  <34.582794, 38.835281, 22.919672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926167, 39.101414, 22.659380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.186817, 39.157356, 22.361166>,  <34.343208, 39.190922, 22.182238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.186817, 39.157356, 22.361166>,  <33.926167, 39.101414, 22.659380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186817, 39.157356, 22.361166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657003, -0.387172, -0.646873,
		-0.379118, 0.911339, -0.160408,
		0.651626, 0.139852, -0.745537,
		34.382305, 39.199310, 22.137505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536987, 39.182129, 22.085398>,  <33.926167, 39.101414, 22.659380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536987, 39.182129, 22.085398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.888302, 39.119816, 21.904577>,  <34.099091, 39.082428, 21.796085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.888302, 39.119816, 21.904577>,  <33.536987, 39.182129, 22.085398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888302, 39.119816, 21.904577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476382, -0.366072, -0.799407,
		-0.040951, 0.917455, -0.395727,
		0.878284, -0.155781, -0.452050,
		34.151787, 39.073082, 21.768963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463665, 39.378613, 21.336756>,  <33.536987, 39.182129, 22.085398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463665, 39.378613, 21.336756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.801865, 39.165974, 21.356926>,  <34.004784, 39.038391, 21.369028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.801865, 39.165974, 21.356926>,  <33.463665, 39.378613, 21.336756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801865, 39.165974, 21.356926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186963, -0.383164, -0.904561,
		0.500183, 0.755374, -0.423353,
		0.845495, -0.531597, 0.050425,
		34.055511, 39.006496, 21.372053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893150, 39.442383, 20.686399>,  <33.463665, 39.378613, 21.336756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893150, 39.442383, 20.686399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.004723, 39.085491, 20.828453>,  <34.071667, 38.871357, 20.913685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.004723, 39.085491, 20.828453>,  <33.893150, 39.442383, 20.686399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004723, 39.085491, 20.828453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042858, -0.381010, -0.923577,
		0.959354, 0.242395, -0.144515,
		0.278932, -0.892231, 0.355135,
		34.088402, 38.817822, 20.934994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490028, 39.225330, 20.197966>,  <33.893150, 39.442383, 20.686399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490028, 39.225330, 20.197966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.320229, 38.906441, 20.369654>,  <34.218349, 38.715107, 20.472666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.320229, 38.906441, 20.369654>,  <34.490028, 39.225330, 20.197966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320229, 38.906441, 20.369654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090731, -0.434211, -0.896230,
		0.900871, -0.419393, 0.111989,
		-0.424500, -0.797227, 0.429220,
		34.192879, 38.667274, 20.498419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846256, 38.599476, 20.026993>,  <34.490028, 39.225330, 20.197966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846256, 38.599476, 20.026993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.454548, 38.540142, 20.082170>,  <34.219524, 38.504543, 20.115276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.454548, 38.540142, 20.082170>,  <34.846256, 38.599476, 20.026993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454548, 38.540142, 20.082170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072570, -0.378886, -0.922594,
		0.189117, -0.913478, 0.360267,
		-0.979269, -0.148334, 0.137945,
		34.160767, 38.495644, 20.123554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668137, 37.990398, 19.681728>,  <34.846256, 38.599476, 20.026993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668137, 37.990398, 19.681728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.305149, 38.147064, 19.742525>,  <34.087357, 38.241062, 19.779003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.305149, 38.147064, 19.742525>,  <34.668137, 37.990398, 19.681728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305149, 38.147064, 19.742525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289572, -0.321006, -0.901722,
		-0.304365, -0.862304, 0.404715,
		-0.907475, 0.391647, 0.151996,
		34.032909, 38.264565, 19.788122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113289, 37.505955, 19.359274>,  <34.668137, 37.990398, 19.681728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113289, 37.505955, 19.359274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.934357, 37.862911, 19.383053>,  <33.827000, 38.077087, 19.397320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.934357, 37.862911, 19.383053>,  <34.113289, 37.505955, 19.359274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934357, 37.862911, 19.383053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364675, -0.121300, -0.923200,
		-0.816647, -0.434651, 0.379694,
		-0.447326, 0.892393, 0.059447,
		33.800159, 38.130630, 19.400887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541416, 37.311287, 19.204748>,  <34.113289, 37.505955, 19.359274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541416, 37.311287, 19.204748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.552639, 37.706921, 19.146887>,  <33.559372, 37.944302, 19.112171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.552639, 37.706921, 19.146887>,  <33.541416, 37.311287, 19.204748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552639, 37.706921, 19.146887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547689, -0.105843, -0.829960,
		-0.836212, 0.102513, 0.538741,
		0.028059, 0.989084, -0.144653,
		33.561058, 38.003647, 19.103491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883171, 37.560036, 19.093266>,  <33.541416, 37.311287, 19.204748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883171, 37.560036, 19.093266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.137283, 37.816494, 18.921061>,  <33.289753, 37.970371, 18.817738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.137283, 37.816494, 18.921061>,  <32.883171, 37.560036, 19.093266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137283, 37.816494, 18.921061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446399, -0.150036, -0.882166,
		-0.630192, 0.752608, 0.190893,
		0.635284, 0.641148, -0.430515,
		33.327869, 38.008839, 18.791906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486465, 37.967403, 18.652512>,  <32.883171, 37.560036, 19.093266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486465, 37.967403, 18.652512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.855930, 38.047977, 18.522116>,  <33.077610, 38.096321, 18.443878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.855930, 38.047977, 18.522116>,  <32.486465, 37.967403, 18.652512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855930, 38.047977, 18.522116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296409, -0.163607, -0.940943,
		-0.242877, 0.965741, -0.091409,
		0.923663, 0.201439, -0.325990,
		33.133030, 38.108410, 18.424318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388802, 38.506611, 18.128288>,  <32.486465, 37.967403, 18.652512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388802, 38.506611, 18.128288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.742973, 38.342144, 18.041603>,  <32.955475, 38.243465, 17.989592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.742973, 38.342144, 18.041603>,  <32.388802, 38.506611, 18.128288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742973, 38.342144, 18.041603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223920, 0.031219, -0.974107,
		0.407282, 0.911027, -0.064426,
		0.885427, -0.411162, -0.216712,
		33.008602, 38.218796, 17.976589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783588, 38.950008, 17.621975>,  <32.388802, 38.506611, 18.128288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783588, 38.950008, 17.621975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.922592, 38.576103, 17.592430>,  <33.005993, 38.351761, 17.574703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.922592, 38.576103, 17.592430>,  <32.783588, 38.950008, 17.621975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922592, 38.576103, 17.592430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228324, -0.007953, -0.973553,
		0.909454, 0.355180, -0.216193,
		0.347506, -0.934764, -0.073863,
		33.026844, 38.295673, 17.570271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168976, 38.949379, 17.010233>,  <32.783588, 38.950008, 17.621975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168976, 38.949379, 17.010233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.110077, 38.559387, 17.076836>,  <33.074738, 38.325390, 17.116798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.110077, 38.559387, 17.076836>,  <33.168976, 38.949379, 17.010233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110077, 38.559387, 17.076836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141739, -0.145806, -0.979107,
		0.978891, -0.167775, -0.116723,
		-0.147251, -0.974983, 0.166509,
		33.065903, 38.266891, 17.126789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567913, 38.648643, 16.513569>,  <33.168976, 38.949379, 17.010233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567913, 38.648643, 16.513569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.337727, 38.342037, 16.627615>,  <33.199615, 38.158073, 16.696043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.337727, 38.342037, 16.627615>,  <33.567913, 38.648643, 16.513569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337727, 38.342037, 16.627615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174613, -0.225431, -0.958484,
		0.798967, -0.601361, -0.004116,
		-0.575467, -0.766516, 0.285117,
		33.165085, 38.112083, 16.713150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666653, 38.103039, 15.990531>,  <33.567913, 38.648643, 16.513569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666653, 38.103039, 15.990531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.342785, 37.987926, 16.195122>,  <33.148464, 37.918858, 16.317877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.342785, 37.987926, 16.195122>,  <33.666653, 38.103039, 15.990531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342785, 37.987926, 16.195122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370778, -0.424723, -0.825914,
		0.454920, -0.858366, 0.237183,
		-0.809673, -0.287783, 0.511478,
		33.099884, 37.901592, 16.348566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612225, 37.404930, 15.957802>,  <33.666653, 38.103039, 15.990531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612225, 37.404930, 15.957802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.235676, 37.527233, 16.014843>,  <33.009747, 37.600616, 16.049068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.235676, 37.527233, 16.014843>,  <33.612225, 37.404930, 15.957802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235676, 37.527233, 16.014843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287816, -0.507279, -0.812299,
		-0.176028, -0.805717, 0.565539,
		-0.941369, 0.305759, 0.142603,
		32.953266, 37.618961, 16.057623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121815, 36.775780, 15.854586>,  <33.612225, 37.404930, 15.957802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121815, 36.775780, 15.854586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.957424, 37.135151, 15.792721>,  <32.858791, 37.350773, 15.755602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.957424, 37.135151, 15.792721>,  <33.121815, 36.775780, 15.854586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957424, 37.135151, 15.792721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402814, -0.331151, -0.853276,
		-0.817827, -0.288374, 0.497995,
		-0.410974, 0.898432, -0.154663,
		32.834133, 37.404682, 15.746322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481041, 36.633781, 15.616707>,  <33.121815, 36.775780, 15.854586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481041, 36.633781, 15.616707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.492641, 37.022190, 15.521814>,  <32.499603, 37.255234, 15.464879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.492641, 37.022190, 15.521814>,  <32.481041, 36.633781, 15.616707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492641, 37.022190, 15.521814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345968, -0.212911, -0.913770,
		-0.937798, 0.108576, 0.329766,
		0.029003, 0.971020, -0.237232,
		32.501343, 37.313496, 15.450644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835642, 36.874142, 15.421427>,  <32.481041, 36.633781, 15.616707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835642, 36.874142, 15.421427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.078373, 37.139160, 15.245793>,  <32.224010, 37.298172, 15.140413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.078373, 37.139160, 15.245793>,  <31.835642, 36.874142, 15.421427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078373, 37.139160, 15.245793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546985, -0.052706, -0.835481,
		-0.576686, 0.747165, 0.330419,
		0.606828, 0.662545, -0.439083,
		32.260422, 37.337925, 15.114068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054771, 37.033371, 15.437811>,  <31.835642, 36.874142, 15.421427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054771, 37.033371, 15.437811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.906652, 36.735233, 15.216058>,  <30.817781, 36.556351, 15.083006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.906652, 36.735233, 15.216058>,  <31.054771, 37.033371, 15.437811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906652, 36.735233, 15.216058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926670, -0.337860, -0.164723,
		-0.064528, -0.574727, 0.815797,
		-0.370296, -0.745345, -0.554384,
		30.795563, 36.511631, 15.049743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323505, 36.700848, 15.484237>,  <31.054771, 37.033371, 15.437811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323505, 36.700848, 15.484237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.000546, 36.486832, 15.583706>,  <29.806770, 36.358421, 15.643387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.000546, 36.486832, 15.583706>,  <30.323505, 36.700848, 15.484237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000546, 36.486832, 15.583706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178620, 0.180033, 0.967307,
		-0.562320, 0.825419, -0.049789,
		-0.807398, -0.535043, 0.248672,
		29.758326, 36.326317, 15.658308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088724, 37.016346, 16.046247>,  <30.323505, 36.700848, 15.484237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088724, 37.016346, 16.046247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.929075, 36.650578, 16.073175>,  <29.833286, 36.431114, 16.089333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.929075, 36.650578, 16.073175>,  <30.088724, 37.016346, 16.046247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929075, 36.650578, 16.073175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077982, 0.039304, 0.996180,
		-0.913576, 0.402847, 0.055622,
		-0.399122, -0.914423, 0.067322,
		29.809340, 36.376251, 16.093372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540064, 37.037312, 16.448631>,  <30.088724, 37.016346, 16.046247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540064, 37.037312, 16.448631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.648104, 36.652489, 16.464117>,  <29.712929, 36.421597, 16.473408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.648104, 36.652489, 16.464117>,  <29.540064, 37.037312, 16.448631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648104, 36.652489, 16.464117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092706, 0.066008, 0.993503,
		-0.958359, -0.264757, 0.107017,
		0.270101, -0.962053, 0.038715,
		29.729134, 36.363873, 16.475731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255762, 36.836590, 17.028023>,  <29.540064, 37.037312, 16.448631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255762, 36.836590, 17.028023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.539335, 36.561104, 16.967247>,  <29.709478, 36.395813, 16.930780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.539335, 36.561104, 16.967247>,  <29.255762, 36.836590, 17.028023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539335, 36.561104, 16.967247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238352, 0.031202, 0.970677,
		-0.663779, -0.724361, 0.186277,
		0.708933, -0.688715, -0.151941,
		29.752014, 36.354488, 16.921665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306894, 36.356640, 17.680986>,  <29.255762, 36.836590, 17.028023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306894, 36.356640, 17.680986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.654474, 36.291866, 17.493923>,  <29.863022, 36.253002, 17.381685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.654474, 36.291866, 17.493923>,  <29.306894, 36.356640, 17.680986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654474, 36.291866, 17.493923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485530, 0.095926, 0.868941,
		-0.095852, -0.982128, 0.161980,
		0.868950, -0.161936, -0.467657,
		29.915159, 36.243286, 17.353626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637438, 35.739887, 18.046738>,  <29.306894, 36.356640, 17.680986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637438, 35.739887, 18.046738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.914097, 35.964104, 17.864565>,  <30.080091, 36.098633, 17.755262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.914097, 35.964104, 17.864565>,  <29.637438, 35.739887, 18.046738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914097, 35.964104, 17.864565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545118, 0.008503, 0.838317,
		0.473786, -0.828081, -0.299681,
		0.691646, 0.560544, -0.455430,
		30.121590, 36.132267, 17.727936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273869, 35.505604, 18.253193>,  <29.637438, 35.739887, 18.046738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273869, 35.505604, 18.253193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.393572, 35.872383, 18.147629>,  <30.465393, 36.092449, 18.084290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.393572, 35.872383, 18.147629>,  <30.273869, 35.505604, 18.253193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393572, 35.872383, 18.147629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526374, 0.072046, 0.847195,
		0.795849, -0.392446, -0.461097,
		0.299258, 0.916949, -0.263911,
		30.483349, 36.147469, 18.068455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005463, 35.526093, 18.387760>,  <30.273869, 35.505604, 18.253193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005463, 35.526093, 18.387760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.873905, 35.903839, 18.387821>,  <30.794970, 36.130486, 18.387857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.873905, 35.903839, 18.387821>,  <31.005463, 35.526093, 18.387760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873905, 35.903839, 18.387821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621400, 0.216295, 0.753046,
		0.711118, 0.247767, -0.657968,
		-0.328895, 0.944366, 0.000151,
		30.775236, 36.187149, 18.387867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580751, 35.972988, 18.503233>,  <31.005463, 35.526093, 18.387760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580751, 35.972988, 18.503233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.298733, 36.240692, 18.597038>,  <31.129522, 36.401314, 18.653322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.298733, 36.240692, 18.597038>,  <31.580751, 35.972988, 18.503233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298733, 36.240692, 18.597038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632037, 0.443039, 0.635803,
		0.321621, 0.596492, -0.735362,
		-0.705045, 0.669264, 0.234514,
		31.087219, 36.441471, 18.667393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021370, 36.645073, 18.429811>,  <31.580751, 35.972988, 18.503233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021370, 36.645073, 18.429811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.691113, 36.721020, 18.642324>,  <31.492958, 36.766590, 18.769833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.691113, 36.721020, 18.642324>,  <32.021370, 36.645073, 18.429811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691113, 36.721020, 18.642324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558677, 0.406483, 0.722946,
		-0.078691, 0.893711, -0.441687,
		-0.825644, 0.189872, 0.531282,
		31.443419, 36.777981, 18.801708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992134, 37.377510, 18.599064>,  <32.021370, 36.645073, 18.429811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992134, 37.377510, 18.599064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.763556, 37.183407, 18.863781>,  <31.626408, 37.066944, 19.022612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.763556, 37.183407, 18.863781>,  <31.992134, 37.377510, 18.599064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763556, 37.183407, 18.863781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519769, 0.410038, 0.749472,
		-0.635048, 0.772265, 0.017906,
		-0.571449, -0.485258, 0.661794,
		31.592121, 37.037830, 19.062319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792690, 37.860043, 19.205793>,  <31.992134, 37.377510, 18.599064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792690, 37.860043, 19.205793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.724413, 37.481403, 19.315208>,  <31.683447, 37.254219, 19.380857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.724413, 37.481403, 19.315208>,  <31.792690, 37.860043, 19.205793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724413, 37.481403, 19.315208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378139, 0.193421, 0.905317,
		-0.909876, 0.257966, 0.324929,
		-0.170692, -0.946595, 0.273536,
		31.673204, 37.197426, 19.397270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485613, 37.894287, 19.928156>,  <31.792690, 37.860043, 19.205793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485613, 37.894287, 19.928156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.615677, 37.517746, 19.892078>,  <31.693714, 37.291821, 19.870432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.615677, 37.517746, 19.892078>,  <31.485613, 37.894287, 19.928156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615677, 37.517746, 19.892078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559726, 0.114706, 0.820700,
		-0.762219, -0.317341, 0.564195,
		0.325159, -0.941348, -0.090193,
		31.713224, 37.235340, 19.865021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343346, 37.574203, 20.624561>,  <31.485613, 37.894287, 19.928156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343346, 37.574203, 20.624561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.644011, 37.374531, 20.452133>,  <31.824409, 37.254726, 20.348675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.644011, 37.374531, 20.452133>,  <31.343346, 37.574203, 20.624561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644011, 37.374531, 20.452133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430028, -0.124638, 0.894171,
		-0.500080, -0.857488, 0.120976,
		0.751662, -0.499180, -0.431073,
		31.869509, 37.224777, 20.322811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424931, 37.079887, 21.016556>,  <31.343346, 37.574203, 20.624561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424931, 37.079887, 21.016556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.774063, 37.045029, 20.824486>,  <31.983543, 37.024113, 20.709244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.774063, 37.045029, 20.824486>,  <31.424931, 37.079887, 21.016556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774063, 37.045029, 20.824486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460595, -0.178076, 0.869564,
		-0.161268, -0.980152, -0.115302,
		0.872837, -0.087125, -0.480171,
		32.035912, 37.018883, 20.680433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823803, 36.540203, 21.455685>,  <31.424931, 37.079887, 21.016556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823803, 36.540203, 21.455685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.087204, 36.706108, 21.204496>,  <32.245243, 36.805653, 21.053783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.087204, 36.706108, 21.204496>,  <31.823803, 36.540203, 21.455685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087204, 36.706108, 21.204496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712721, -0.075743, 0.697347,
		0.241672, -0.906770, -0.345490,
		0.658501, 0.414767, -0.627968,
		32.284756, 36.830540, 21.016106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371468, 36.078850, 21.390766>,  <31.823803, 36.540203, 21.455685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371468, 36.078850, 21.390766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.537205, 36.429626, 21.293373>,  <32.636646, 36.640095, 21.234938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.537205, 36.429626, 21.293373>,  <32.371468, 36.078850, 21.390766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537205, 36.429626, 21.293373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728810, -0.159470, 0.665887,
		0.545119, -0.453360, -0.705203,
		0.414345, 0.876946, -0.243484,
		32.661507, 36.692711, 21.220327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015625, 35.927601, 21.524591>,  <32.371468, 36.078850, 21.390766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015625, 35.927601, 21.524591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.969650, 36.324657, 21.539837>,  <32.942066, 36.562893, 21.548985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.969650, 36.324657, 21.539837>,  <33.015625, 35.927601, 21.524591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969650, 36.324657, 21.539837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504843, 0.025324, 0.862840,
		0.855525, 0.118414, -0.504038,
		-0.114937, 0.992641, 0.038116,
		32.935169, 36.622448, 21.551271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682945, 36.258564, 21.564892>,  <33.015625, 35.927601, 21.524591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682945, 36.258564, 21.564892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.456554, 36.550793, 21.717697>,  <33.320721, 36.726131, 21.809381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.456554, 36.550793, 21.717697>,  <33.682945, 36.258564, 21.564892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456554, 36.550793, 21.717697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472893, -0.091875, 0.876317,
		0.675312, 0.676624, -0.293485,
		-0.565973, 0.730575, 0.382015,
		33.286762, 36.769966, 21.832302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125896, 36.869514, 21.831682>,  <33.682945, 36.258564, 21.564892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125896, 36.869514, 21.831682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.786667, 36.873501, 22.043596>,  <33.583130, 36.875893, 22.170746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.786667, 36.873501, 22.043596>,  <34.125896, 36.869514, 21.831682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786667, 36.873501, 22.043596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525051, -0.118869, 0.842729,
		0.071372, 0.992860, 0.095578,
		-0.848073, 0.009963, 0.529786,
		33.532246, 36.876492, 22.202532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.838604, 41.986370, 24.081926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.554733, 41.804012, 24.296783>,  <36.384411, 41.694595, 24.425697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.554733, 41.804012, 24.296783>,  <36.838604, 41.986370, 24.081926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554733, 41.804012, 24.296783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234034, 0.566570, 0.790080,
		-0.664525, 0.686407, -0.295384,
		-0.709672, -0.455898, 0.537142,
		36.341831, 41.667244, 24.457926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552078, 42.557598, 24.495541>,  <36.838604, 41.986370, 24.081926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552078, 42.557598, 24.495541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.477566, 42.222378, 24.700665>,  <36.432858, 42.021248, 24.823738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.477566, 42.222378, 24.700665>,  <36.552078, 42.557598, 24.495541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477566, 42.222378, 24.700665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160308, 0.489025, 0.857412,
		-0.969330, 0.241928, 0.043250,
		-0.186282, -0.838048, 0.512810,
		36.421680, 41.970963, 24.854507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103729, 42.739151, 25.036249>,  <36.552078, 42.557598, 24.495541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103729, 42.739151, 25.036249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.243958, 42.388718, 25.168661>,  <36.328094, 42.178459, 25.248108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.243958, 42.388718, 25.168661>,  <36.103729, 42.739151, 25.036249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243958, 42.388718, 25.168661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149706, 0.401339, 0.903612,
		-0.924494, -0.267221, 0.271852,
		0.350569, -0.876082, 0.331031,
		36.349129, 42.125893, 25.267971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725674, 42.595184, 25.653395>,  <36.103729, 42.739151, 25.036249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725674, 42.595184, 25.653395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.055321, 42.368763, 25.661556>,  <36.253109, 42.232910, 25.666452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.055321, 42.368763, 25.661556>,  <35.725674, 42.595184, 25.653395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055321, 42.368763, 25.661556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132385, 0.227517, 0.964733,
		-0.550730, -0.792353, 0.262437,
		0.824118, -0.566050, 0.020405,
		36.302555, 42.198948, 25.667677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691879, 42.328239, 26.330700>,  <35.725674, 42.595184, 25.653395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691879, 42.328239, 26.330700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.069084, 42.264515, 26.213840>,  <36.295406, 42.226280, 26.143724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.069084, 42.264515, 26.213840>,  <35.691879, 42.328239, 26.330700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069084, 42.264515, 26.213840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295415, -0.003311, 0.955363,
		-0.153165, -0.987223, 0.043940,
		0.943011, -0.159309, -0.292148,
		36.351986, 42.216721, 26.126196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932533, 41.796116, 26.769907>,  <35.691879, 42.328239, 26.330700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932533, 41.796116, 26.769907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.264774, 41.961884, 26.621122>,  <36.464119, 42.061344, 26.531851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.264774, 41.961884, 26.621122>,  <35.932533, 41.796116, 26.769907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264774, 41.961884, 26.621122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446549, -0.096601, 0.889529,
		0.332704, -0.904946, -0.265295,
		0.830603, 0.414417, -0.371963,
		36.513954, 42.086208, 26.509533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389069, 41.461861, 27.033501>,  <35.932533, 41.796116, 26.769907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389069, 41.461861, 27.033501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.607452, 41.775215, 26.914684>,  <36.738483, 41.963230, 26.843395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.607452, 41.775215, 26.914684>,  <36.389069, 41.461861, 27.033501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607452, 41.775215, 26.914684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499097, -0.019340, 0.866330,
		0.672928, -0.621232, -0.401546,
		0.545958, 0.783388, -0.297040,
		36.771240, 42.010231, 26.825573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037743, 41.224918, 26.987579>,  <36.389069, 41.461861, 27.033501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037743, 41.224918, 26.987579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.039558, 41.622677, 27.029823>,  <37.040649, 41.861332, 27.055170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.039558, 41.622677, 27.029823>,  <37.037743, 41.224918, 26.987579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039558, 41.622677, 27.029823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513857, -0.092924, 0.852828,
		0.857864, 0.050394, -0.511400,
		0.004544, 0.994397, 0.105612,
		37.040920, 41.920998, 27.061506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523281, 41.268841, 27.437101>,  <37.037743, 41.224918, 26.987579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523281, 41.268841, 27.437101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.378101, 41.641499, 27.430191>,  <37.290993, 41.865093, 27.426044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.378101, 41.641499, 27.430191>,  <37.523281, 41.268841, 27.437101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378101, 41.641499, 27.430191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291134, 0.130993, 0.947672,
		0.885159, 0.338931, -0.318778,
		-0.362953, 0.931647, -0.017275,
		37.269215, 41.920994, 27.425009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117207, 41.648369, 27.636662>,  <37.523281, 41.268841, 27.437101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117207, 41.648369, 27.636662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.782097, 41.844753, 27.732231>,  <37.581032, 41.962585, 27.789574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.782097, 41.844753, 27.732231>,  <38.117207, 41.648369, 27.636662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782097, 41.844753, 27.732231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322717, 0.092267, 0.941988,
		0.440437, 0.866280, -0.235742,
		-0.837776, 0.490964, 0.238925,
		37.530766, 41.992043, 27.803909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307396, 42.263599, 27.967854>,  <38.117207, 41.648369, 27.636662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307396, 42.263599, 27.967854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.926876, 42.218132, 28.082474>,  <37.698563, 42.190853, 28.151245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.926876, 42.218132, 28.082474>,  <38.307396, 42.263599, 27.967854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926876, 42.218132, 28.082474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266443, 0.164341, 0.949737,
		-0.155044, 0.979833, -0.126052,
		-0.951299, -0.113665, 0.286549,
		37.641487, 42.184032, 28.168438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197681, 42.807110, 28.353382>,  <38.307396, 42.263599, 27.967854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197681, 42.807110, 28.353382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.932316, 42.533466, 28.474630>,  <37.773098, 42.369282, 28.547379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.932316, 42.533466, 28.474630>,  <38.197681, 42.807110, 28.353382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932316, 42.533466, 28.474630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280297, 0.148394, 0.948374,
		-0.693768, 0.714129, 0.093306,
		-0.663415, -0.684104, 0.303119,
		37.733292, 42.328236, 28.565567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793926, 43.116821, 28.918617>,  <38.197681, 42.807110, 28.353382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793926, 43.116821, 28.918617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.779274, 42.720673, 28.972012>,  <37.770485, 42.482983, 29.004049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.779274, 42.720673, 28.972012>,  <37.793926, 43.116821, 28.918617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779274, 42.720673, 28.972012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097856, 0.129380, 0.986755,
		-0.994526, 0.049205, 0.092175,
		-0.036627, -0.990373, 0.133487,
		37.768288, 42.423561, 29.012058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281704, 43.035027, 29.413446>,  <37.793926, 43.116821, 28.918617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281704, 43.035027, 29.413446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.478222, 42.686672, 29.418955>,  <37.596134, 42.477661, 29.422260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.478222, 42.686672, 29.418955>,  <37.281704, 43.035027, 29.413446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478222, 42.686672, 29.418955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102546, 0.073534, 0.992007,
		-0.864935, -0.485956, 0.125432,
		0.491295, -0.870884, 0.013769,
		37.625610, 42.425407, 29.423086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110420, 43.443047, 29.962120>,  <37.281704, 43.035027, 29.413446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110420, 43.443047, 29.962120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.959278, 43.796616, 30.072317>,  <36.868591, 44.008759, 30.138435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.959278, 43.796616, 30.072317>,  <37.110420, 43.443047, 29.962120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959278, 43.796616, 30.072317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451002, 0.084138, -0.888548,
		-0.808591, -0.459993, 0.366860,
		-0.377859, 0.883927, 0.275491,
		36.845921, 44.061794, 30.154964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395824, 43.437576, 29.729244>,  <37.110420, 43.443047, 29.962120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395824, 43.437576, 29.729244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.477196, 43.825043, 29.786251>,  <36.526016, 44.057522, 29.820456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.477196, 43.825043, 29.786251>,  <36.395824, 43.437576, 29.729244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477196, 43.825043, 29.786251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614717, 0.239654, -0.751458,
		-0.762063, 0.065260, 0.644206,
		0.203426, 0.968663, 0.142515,
		36.538223, 44.115643, 29.829006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720478, 43.717701, 29.854698>,  <36.395824, 43.437576, 29.729244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720478, 43.717701, 29.854698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.986710, 43.986050, 29.723892>,  <36.146446, 44.147060, 29.645409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.986710, 43.986050, 29.723892>,  <35.720478, 43.717701, 29.854698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986710, 43.986050, 29.723892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612854, 0.241226, -0.752476,
		-0.425931, 0.701242, 0.571701,
		0.665577, 0.670872, -0.327014,
		36.186382, 44.187313, 29.625788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384895, 44.341579, 29.878347>,  <35.720478, 43.717701, 29.854698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384895, 44.341579, 29.878347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.678131, 44.349773, 29.606421>,  <35.854073, 44.354691, 29.443264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.678131, 44.349773, 29.606421>,  <35.384895, 44.341579, 29.878347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678131, 44.349773, 29.606421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673485, 0.161227, -0.721404,
		0.094826, 0.986705, 0.131993,
		0.733094, 0.020487, -0.679819,
		35.898060, 44.355919, 29.402475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058033, 44.606918, 29.392918>,  <35.384895, 44.341579, 29.878347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058033, 44.606918, 29.392918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.384911, 44.478695, 29.201321>,  <35.581039, 44.401760, 29.086363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.384911, 44.478695, 29.201321>,  <35.058033, 44.606918, 29.392918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384911, 44.478695, 29.201321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507617, -0.006686, -0.861557,
		0.272977, 0.947205, -0.168185,
		0.817196, -0.320559, -0.478992,
		35.630070, 44.382526, 29.057623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010090, 44.991451, 28.719835>,  <35.058033, 44.606918, 29.392918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010090, 44.991451, 28.719835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.251808, 44.674927, 28.682629>,  <35.396839, 44.485012, 28.660305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.251808, 44.674927, 28.682629>,  <35.010090, 44.991451, 28.719835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251808, 44.674927, 28.682629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436888, -0.231459, -0.869227,
		0.666303, 0.565904, -0.485584,
		0.604293, -0.791314, -0.093015,
		35.433098, 44.437531, 28.654724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058338, 44.934498, 27.969278>,  <35.010090, 44.991451, 28.719835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058338, 44.934498, 27.969278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.126133, 44.562080, 28.098541>,  <35.166809, 44.338631, 28.176098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.126133, 44.562080, 28.098541>,  <35.058338, 44.934498, 27.969278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126133, 44.562080, 28.098541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290071, -0.360503, -0.886508,
		0.941877, 0.056515, -0.331170,
		0.169489, -0.931044, 0.323156,
		35.176979, 44.282768, 28.195488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497257, 44.660507, 27.424524>,  <35.058338, 44.934498, 27.969278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497257, 44.660507, 27.424524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.322853, 44.370556, 27.637859>,  <35.218212, 44.196587, 27.765862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.322853, 44.370556, 27.637859>,  <35.497257, 44.660507, 27.424524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322853, 44.370556, 27.637859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321265, -0.428219, -0.844640,
		0.840647, -0.539611, -0.046171,
		-0.436006, -0.724878, 0.533340,
		35.192051, 44.153091, 27.797861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621948, 44.104156, 27.052797>,  <35.497257, 44.660507, 27.424524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621948, 44.104156, 27.052797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.342251, 43.950661, 27.294062>,  <35.174431, 43.858562, 27.438820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.342251, 43.950661, 27.294062>,  <35.621948, 44.104156, 27.052797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342251, 43.950661, 27.294062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357270, -0.543213, -0.759788,
		0.619206, -0.746767, 0.242739,
		-0.699244, -0.383742, 0.603159,
		35.132477, 43.835537, 27.475010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603851, 43.436104, 26.909758>,  <35.621948, 44.104156, 27.052797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603851, 43.436104, 26.909758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.248131, 43.513439, 27.075531>,  <35.034698, 43.559841, 27.174995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.248131, 43.513439, 27.075531>,  <35.603851, 43.436104, 26.909758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248131, 43.513439, 27.075531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454385, -0.475958, -0.752993,
		0.051674, -0.857954, 0.511121,
		-0.889305, 0.193336, 0.414436,
		34.981339, 43.571442, 27.199862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252110, 42.787151, 26.983273>,  <35.603851, 43.436104, 26.909758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252110, 42.787151, 26.983273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.972237, 43.072926, 26.981049>,  <34.804314, 43.244389, 26.979715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.972237, 43.072926, 26.981049>,  <35.252110, 42.787151, 26.983273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972237, 43.072926, 26.981049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480316, -0.476126, -0.736614,
		-0.528911, -0.512723, 0.676291,
		-0.699679, 0.714436, -0.005560,
		34.762333, 43.287258, 26.979382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557270, 42.453365, 26.797701>,  <35.252110, 42.787151, 26.983273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557270, 42.453365, 26.797701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.513550, 42.840878, 26.708687>,  <34.487316, 43.073383, 26.655279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.513550, 42.840878, 26.708687>,  <34.557270, 42.453365, 26.797701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513550, 42.840878, 26.708687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539219, -0.245860, -0.805479,
		-0.835043, 0.031955, 0.549257,
		-0.109301, 0.968778, -0.222534,
		34.480759, 43.131512, 26.641926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974411, 42.469715, 26.443455>,  <34.557270, 42.453365, 26.797701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974411, 42.469715, 26.443455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.091991, 42.844982, 26.370323>,  <34.162540, 43.070145, 26.326445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.091991, 42.844982, 26.370323>,  <33.974411, 42.469715, 26.443455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091991, 42.844982, 26.370323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299716, -0.091158, -0.949663,
		-0.907613, 0.333954, 0.254389,
		0.293954, 0.938171, -0.182828,
		34.180180, 43.126434, 26.315475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413010, 42.789806, 26.260681>,  <33.974411, 42.469715, 26.443455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413010, 42.789806, 26.260681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.722744, 42.978683, 26.092188>,  <33.908585, 43.092010, 25.991093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.722744, 42.978683, 26.092188>,  <33.413010, 42.789806, 26.260681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722744, 42.978683, 26.092188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351310, -0.232864, -0.906838,
		-0.526289, 0.850183, -0.014430,
		0.774339, 0.472190, -0.421232,
		33.955044, 43.120342, 25.965818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690914, 43.013264, 26.389071>,  <33.413010, 42.789806, 26.260681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690914, 43.013264, 26.389071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.378563, 42.796593, 26.513531>,  <32.191151, 42.666592, 26.588207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.378563, 42.796593, 26.513531>,  <32.690914, 43.013264, 26.389071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378563, 42.796593, 26.513531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480362, -0.202260, 0.853430,
		-0.399349, 0.815891, 0.418142,
		-0.780879, -0.541676, 0.311151,
		32.144299, 42.634090, 26.606876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378506, 43.327908, 27.104290>,  <32.690914, 43.013264, 26.389071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378506, 43.327908, 27.104290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.271912, 42.942467, 27.095692>,  <32.207954, 42.711205, 27.090532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.271912, 42.942467, 27.095692>,  <32.378506, 43.327908, 27.104290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271912, 42.942467, 27.095692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421074, -0.136451, 0.896703,
		-0.866996, 0.229907, 0.442109,
		-0.266485, -0.963599, -0.021495,
		32.191967, 42.653385, 27.089243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184975, 43.195145, 27.747330>,  <32.378506, 43.327908, 27.104290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184975, 43.195145, 27.747330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.233330, 42.819275, 27.619326>,  <32.262344, 42.593754, 27.542524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.233330, 42.819275, 27.619326>,  <32.184975, 43.195145, 27.747330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233330, 42.819275, 27.619326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143765, -0.302400, 0.942277,
		-0.982200, -0.159918, 0.098534,
		0.120891, -0.939670, -0.320008,
		32.269596, 42.537373, 27.523323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746105, 42.772537, 28.148434>,  <32.184975, 43.195145, 27.747330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746105, 42.772537, 28.148434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.968271, 42.472248, 28.005367>,  <32.101570, 42.292076, 27.919527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.968271, 42.472248, 28.005367>,  <31.746105, 42.772537, 28.148434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968271, 42.472248, 28.005367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038733, -0.406286, 0.912925,
		-0.830669, -0.520908, -0.196580,
		0.555417, -0.750724, -0.357666,
		32.134895, 42.247032, 27.898067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452604, 42.092949, 28.456940>,  <31.746105, 42.772537, 28.148434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452604, 42.092949, 28.456940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.835474, 42.056282, 28.347095>,  <32.065197, 42.034283, 28.281189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.835474, 42.056282, 28.347095>,  <31.452604, 42.092949, 28.456940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835474, 42.056282, 28.347095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219680, -0.387836, 0.895167,
		-0.188559, -0.917159, -0.351091,
		0.957176, -0.091664, -0.274611,
		32.122627, 42.028782, 28.264711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680456, 41.337769, 28.526638>,  <31.452604, 42.092949, 28.456940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680456, 41.337769, 28.526638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.010506, 41.563709, 28.530890>,  <32.208534, 41.699272, 28.533440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.010506, 41.563709, 28.530890>,  <31.680456, 41.337769, 28.526638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010506, 41.563709, 28.530890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352026, -0.528761, 0.772327,
		0.441871, -0.633524, -0.635136,
		0.825123, 0.564853, 0.010627,
		32.258041, 41.733166, 28.534077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217461, 40.849529, 28.746328>,  <31.680456, 41.337769, 28.526638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217461, 40.849529, 28.746328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.410660, 41.198364, 28.777754>,  <32.526581, 41.407665, 28.796608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.410660, 41.198364, 28.777754>,  <32.217461, 40.849529, 28.746328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410660, 41.198364, 28.777754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515743, -0.355847, 0.779347,
		0.707617, -0.335905, -0.621648,
		0.482999, 0.872090, 0.078563,
		32.555561, 41.459991, 28.801323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928841, 40.713474, 28.777384>,  <32.217461, 40.849529, 28.746328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928841, 40.713474, 28.777384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.862797, 41.061356, 28.963436>,  <32.823170, 41.270084, 29.075068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.862797, 41.061356, 28.963436>,  <32.928841, 40.713474, 28.777384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862797, 41.061356, 28.963436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425314, -0.362715, 0.829184,
		0.889857, 0.334736, -0.310010,
		-0.165113, 0.869707, 0.465132,
		32.813263, 41.322269, 29.102976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511398, 40.750988, 29.175844>,  <32.928841, 40.713474, 28.777384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511398, 40.750988, 29.175844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.290138, 41.044174, 29.334225>,  <33.157383, 41.220085, 29.429253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.290138, 41.044174, 29.334225>,  <33.511398, 40.750988, 29.175844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290138, 41.044174, 29.334225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396742, -0.186153, 0.898856,
		0.732541, 0.654297, -0.187828,
		-0.553154, 0.732968, 0.395952,
		33.124191, 41.264065, 29.453011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027424, 41.164150, 29.524891>,  <33.511398, 40.750988, 29.175844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027424, 41.164150, 29.524891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.667152, 41.214943, 29.691099>,  <33.450989, 41.245419, 29.790825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.667152, 41.214943, 29.691099>,  <34.027424, 41.164150, 29.524891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667152, 41.214943, 29.691099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370679, -0.274352, 0.887315,
		0.226671, 0.953209, 0.200033,
		-0.900676, 0.126980, 0.415523,
		33.396950, 41.253036, 29.815756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151413, 41.652168, 30.084242>,  <34.027424, 41.164150, 29.524891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151413, 41.652168, 30.084242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.801044, 41.468868, 30.144598>,  <33.590824, 41.358887, 30.180811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.801044, 41.468868, 30.144598>,  <34.151413, 41.652168, 30.084242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801044, 41.468868, 30.144598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261243, -0.187572, 0.946873,
		-0.405605, 0.868804, 0.284014,
		-0.875920, -0.458254, 0.150889,
		33.538269, 41.331390, 30.189865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856178, 42.023117, 30.591311>,  <34.151413, 41.652168, 30.084242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856178, 42.023117, 30.591311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.704659, 41.653198, 30.577139>,  <33.613747, 41.431244, 30.568636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.704659, 41.653198, 30.577139>,  <33.856178, 42.023117, 30.591311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704659, 41.653198, 30.577139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310036, -0.162874, 0.936670,
		-0.872004, 0.343823, 0.348418,
		-0.378796, -0.924802, -0.035429,
		33.591019, 41.375759, 30.566509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<31.257845, 43.917919, 23.673714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923883, 43.710686, 23.599388>,  <30.723507, 43.586346, 23.554792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923883, 43.710686, 23.599388>,  <31.257845, 43.917919, 23.673714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923883, 43.710686, 23.599388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072392, -0.438030, 0.896041,
		-0.545617, 0.734655, 0.403217,
		-0.834902, -0.518085, -0.185814,
		30.673412, 43.555260, 23.543644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605688, 44.147621, 24.148405>,  <31.257845, 43.917919, 23.673714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605688, 44.147621, 24.148405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637213, 43.773842, 24.009497>,  <30.656128, 43.549576, 23.926151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637213, 43.773842, 24.009497>,  <30.605688, 44.147621, 24.148405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637213, 43.773842, 24.009497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091411, -0.340113, 0.935931,
		-0.992690, -0.105507, 0.058613,
		0.078813, -0.934447, -0.347271,
		30.660856, 43.493507, 23.905315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229277, 43.772717, 24.520102>,  <30.605688, 44.147621, 24.148405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229277, 43.772717, 24.520102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494595, 43.505547, 24.385098>,  <30.653786, 43.345245, 24.304094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494595, 43.505547, 24.385098>,  <30.229277, 43.772717, 24.520102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494595, 43.505547, 24.385098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199736, -0.276635, 0.939988,
		-0.721210, -0.690903, -0.050082,
		0.663296, -0.667926, -0.337511,
		30.693583, 43.305168, 24.283844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088200, 43.081745, 24.744219>,  <30.229277, 43.772717, 24.520102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088200, 43.081745, 24.744219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478926, 43.089535, 24.658941>,  <30.713362, 43.094208, 24.607775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478926, 43.089535, 24.658941>,  <30.088200, 43.081745, 24.744219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478926, 43.089535, 24.658941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199280, -0.446561, 0.872279,
		-0.078220, -0.894542, -0.440088,
		0.976816, 0.019471, -0.213195,
		30.771971, 43.095375, 24.594982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383106, 42.439022, 24.948971>,  <30.088200, 43.081745, 24.744219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383106, 42.439022, 24.948971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687244, 42.697918, 24.927244>,  <30.869728, 42.853256, 24.914207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687244, 42.697918, 24.927244>,  <30.383106, 42.439022, 24.948971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687244, 42.697918, 24.927244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336295, -0.320750, 0.885452,
		0.555680, -0.691517, -0.461546,
		0.760346, 0.647243, -0.054319,
		30.915348, 42.892090, 24.910948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914780, 42.039112, 25.215574>,  <30.383106, 42.439022, 24.948971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914780, 42.039112, 25.215574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071522, 42.406830, 25.200884>,  <31.165567, 42.627460, 25.192070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071522, 42.406830, 25.200884>,  <30.914780, 42.039112, 25.215574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071522, 42.406830, 25.200884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578651, -0.215227, 0.786664,
		0.715271, -0.329510, -0.616288,
		0.391855, 0.919294, -0.036725,
		31.189079, 42.682617, 25.189867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637968, 41.855957, 25.339325>,  <30.914780, 42.039112, 25.215574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637968, 41.855957, 25.339325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576815, 42.241116, 25.428289>,  <31.540123, 42.472210, 25.481668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576815, 42.241116, 25.428289>,  <31.637968, 41.855957, 25.339325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576815, 42.241116, 25.428289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624850, -0.080174, 0.776617,
		0.765630, 0.257705, -0.589406,
		-0.152883, 0.962892, 0.222410,
		31.530951, 42.529984, 25.495012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252617, 42.170151, 25.409357>,  <31.637968, 41.855957, 25.339325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252617, 42.170151, 25.409357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014309, 42.418011, 25.613745>,  <31.871325, 42.566727, 25.736378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014309, 42.418011, 25.613745>,  <32.252617, 42.170151, 25.409357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014309, 42.418011, 25.613745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542136, -0.159132, 0.825085,
		0.592578, 0.768575, -0.241130,
		-0.595769, 0.619653, 0.510970,
		31.835579, 42.603905, 25.767036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710693, 42.549835, 25.852156>,  <32.252617, 42.170151, 25.409357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710693, 42.549835, 25.852156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350212, 42.580883, 26.022713>,  <32.133923, 42.599510, 26.125048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350212, 42.580883, 26.022713>,  <32.710693, 42.549835, 25.852156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350212, 42.580883, 26.022713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417930, -0.104873, 0.902406,
		0.114760, 0.991452, 0.062073,
		-0.901202, 0.077618, 0.426393,
		32.079853, 42.604168, 26.150631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074314, 43.289669, 25.739197>,  <32.710693, 42.549835, 25.852156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074314, 43.289669, 25.739197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462379, 43.251995, 25.649832>,  <33.695217, 43.229389, 25.596212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462379, 43.251995, 25.649832>,  <33.074314, 43.289669, 25.739197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462379, 43.251995, 25.649832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239709, -0.234277, -0.942154,
		0.036400, 0.967596, -0.249865,
		0.970162, -0.094189, -0.223414,
		33.753429, 43.223740, 25.582808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162373, 43.827820, 25.176401>,  <33.074314, 43.289669, 25.739197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162373, 43.827820, 25.176401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458767, 43.562031, 25.137594>,  <33.636604, 43.402557, 25.114309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458767, 43.562031, 25.137594>,  <33.162373, 43.827820, 25.176401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458767, 43.562031, 25.137594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116829, 0.014711, -0.993043,
		0.661279, 0.747166, -0.066729,
		0.740986, -0.664475, -0.097018,
		33.681065, 43.362690, 25.108488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547676, 44.013496, 24.554996>,  <33.162373, 43.827820, 25.176401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547676, 44.013496, 24.554996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645180, 43.630577, 24.617182>,  <33.703682, 43.400826, 24.654493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645180, 43.630577, 24.617182>,  <33.547676, 44.013496, 24.554996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645180, 43.630577, 24.617182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126787, -0.190375, -0.973490,
		0.961513, 0.217585, -0.167778,
		0.243757, -0.957295, 0.155461,
		33.718307, 43.343388, 24.663820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091827, 43.756149, 24.127878>,  <33.547676, 44.013496, 24.554996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091827, 43.756149, 24.127878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887222, 43.427975, 24.230049>,  <33.764458, 43.231071, 24.291351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887222, 43.427975, 24.230049>,  <34.091827, 43.756149, 24.127878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887222, 43.427975, 24.230049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017876, -0.307358, -0.951426,
		0.859089, -0.482101, 0.171884,
		-0.511514, -0.820432, 0.255430,
		33.733768, 43.181847, 24.306679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486366, 43.210262, 23.759769>,  <34.091827, 43.756149, 24.127878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486366, 43.210262, 23.759769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135735, 43.046799, 23.861444>,  <33.925358, 42.948719, 23.922449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135735, 43.046799, 23.861444>,  <34.486366, 43.210262, 23.759769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135735, 43.046799, 23.861444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093620, -0.373278, -0.922984,
		0.472070, -0.832862, 0.288947,
		-0.876576, -0.408662, 0.254186,
		33.872761, 42.924198, 23.937700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526443, 42.606945, 23.352140>,  <34.486366, 43.210262, 23.759769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526443, 42.606945, 23.352140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144684, 42.656185, 23.460930>,  <33.915627, 42.685730, 23.526203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144684, 42.656185, 23.460930>,  <34.526443, 42.606945, 23.352140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144684, 42.656185, 23.460930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297615, -0.463920, -0.834388,
		0.023460, -0.877283, 0.479401,
		-0.954398, 0.123102, 0.271976,
		33.858364, 42.693115, 23.542522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263592, 41.955994, 23.278860>,  <34.526443, 42.606945, 23.352140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263592, 41.955994, 23.278860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938480, 42.187557, 23.252748>,  <33.743416, 42.326496, 23.237082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938480, 42.187557, 23.252748>,  <34.263592, 41.955994, 23.278860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938480, 42.187557, 23.252748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202707, -0.386072, -0.899921,
		-0.546173, -0.718202, 0.431138,
		-0.812776, 0.578908, -0.065277,
		33.694649, 42.361229, 23.233166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776581, 41.462936, 23.115093>,  <34.263592, 41.955994, 23.278860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776581, 41.462936, 23.115093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652458, 41.817738, 22.978315>,  <33.577984, 42.030621, 22.896248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652458, 41.817738, 22.978315>,  <33.776581, 41.462936, 23.115093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652458, 41.817738, 22.978315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082735, -0.383537, -0.919812,
		-0.947029, -0.257134, 0.192401,
		-0.310308, 0.887007, -0.341947,
		33.559364, 42.083839, 22.875731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274612, 41.199535, 22.601576>,  <33.776581, 41.462936, 23.115093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274612, 41.199535, 22.601576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303303, 41.593903, 22.541143>,  <33.320518, 41.830521, 22.504885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303303, 41.593903, 22.541143>,  <33.274612, 41.199535, 22.601576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303303, 41.593903, 22.541143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412375, -0.108605, -0.904517,
		-0.908186, 0.127183, 0.398777,
		0.071730, 0.985916, -0.151081,
		33.324821, 41.889679, 22.495819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683537, 41.471863, 22.343672>,  <33.274612, 41.199535, 22.601576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683537, 41.471863, 22.343672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965748, 41.717281, 22.201809>,  <33.135075, 41.864532, 22.116692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965748, 41.717281, 22.201809>,  <32.683537, 41.471863, 22.343672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965748, 41.717281, 22.201809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336355, -0.150576, -0.929620,
		-0.623772, 0.775166, 0.100135,
		0.705531, 0.613551, -0.354656,
		33.177406, 41.901348, 22.095411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349556, 41.819786, 21.835125>,  <32.683537, 41.471863, 22.343672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349556, 41.819786, 21.835125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740704, 41.858757, 21.761061>,  <32.975391, 41.882141, 21.716621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740704, 41.858757, 21.761061>,  <32.349556, 41.819786, 21.835125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740704, 41.858757, 21.761061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168565, -0.157407, -0.973041,
		-0.123946, 0.982716, -0.137501,
		0.977867, 0.097427, -0.185162,
		33.034065, 41.887985, 21.705513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341396, 42.116863, 21.212549>,  <32.349556, 41.819786, 21.835125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341396, 42.116863, 21.212549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735657, 42.058666, 21.246786>,  <32.972214, 42.023750, 21.267328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735657, 42.058666, 21.246786>,  <32.341396, 42.116863, 21.212549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735657, 42.058666, 21.246786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102767, 0.114931, -0.988043,
		0.133914, 0.982661, 0.128234,
		0.985650, -0.145491, 0.085594,
		33.031353, 42.015018, 21.272465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559879, 42.614910, 20.865612>,  <32.341396, 42.116863, 21.212549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559879, 42.614910, 20.865612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845211, 42.334923, 20.879503>,  <33.016411, 42.166931, 20.887838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845211, 42.334923, 20.879503>,  <32.559879, 42.614910, 20.865612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845211, 42.334923, 20.879503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022060, -0.027106, -0.999389,
		0.700480, 0.713662, -0.003895,
		0.713332, -0.699966, 0.034730,
		33.059212, 42.124931, 20.889923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202026, 42.806671, 20.338631>,  <32.559879, 42.614910, 20.865612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202026, 42.806671, 20.338631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216122, 42.410931, 20.395113>,  <33.224579, 42.173485, 20.429003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216122, 42.410931, 20.395113>,  <33.202026, 42.806671, 20.338631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216122, 42.410931, 20.395113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088534, -0.137647, -0.986517,
		0.995450, 0.047265, 0.082741,
		0.035239, -0.989353, 0.141205,
		33.226692, 42.114124, 20.437475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.091972, 37.054138, 22.961864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.249607, 37.352398, 22.746937>,  <30.344187, 37.531353, 22.617981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.249607, 37.352398, 22.746937>,  <30.091972, 37.054138, 22.961864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249607, 37.352398, 22.746937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549220, 0.277702, 0.788187,
		0.736922, -0.605718, -0.300086,
		0.394085, 0.745646, -0.537317,
		30.367832, 37.576092, 22.585741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703035, 37.042294, 23.180567>,  <30.091972, 37.054138, 22.961864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703035, 37.042294, 23.180567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.665365, 37.412094, 23.032822>,  <30.642763, 37.633976, 22.944174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.665365, 37.412094, 23.032822>,  <30.703035, 37.042294, 23.180567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665365, 37.412094, 23.032822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681830, 0.330237, 0.652726,
		0.725423, -0.190374, -0.661452,
		-0.094174, 0.924501, -0.369364,
		30.637114, 37.689445, 22.922012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416336, 37.312756, 23.063917>,  <30.703035, 37.042294, 23.180567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416336, 37.312756, 23.063917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.198711, 37.647980, 23.080164>,  <31.068136, 37.849113, 23.089912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.198711, 37.647980, 23.080164>,  <31.416336, 37.312756, 23.063917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198711, 37.647980, 23.080164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579998, 0.340667, 0.739965,
		0.606298, 0.426145, -0.671418,
		-0.544063, 0.838061, 0.040617,
		31.035492, 37.899399, 23.092350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908775, 37.967346, 23.031561>,  <31.416336, 37.312756, 23.063917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908775, 37.967346, 23.031561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.557425, 38.096279, 23.172733>,  <31.346615, 38.173637, 23.257437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.557425, 38.096279, 23.172733>,  <31.908775, 37.967346, 23.031561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557425, 38.096279, 23.172733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462260, 0.385110, 0.798753,
		0.121546, 0.864750, -0.487272,
		-0.878374, 0.322332, 0.352931,
		31.293913, 38.192978, 23.278612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133244, 38.529774, 23.301514>,  <31.908775, 37.967346, 23.031561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133244, 38.529774, 23.301514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.777502, 38.499962, 23.481953>,  <31.564056, 38.482075, 23.590216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.777502, 38.499962, 23.481953>,  <32.133244, 38.529774, 23.301514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777502, 38.499962, 23.481953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401643, 0.344063, 0.848707,
		-0.218463, 0.935984, -0.276059,
		-0.889358, -0.074534, 0.451096,
		31.510695, 38.477600, 23.617281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108871, 39.062202, 23.727581>,  <32.133244, 38.529774, 23.301514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108871, 39.062202, 23.727581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.846579, 38.813606, 23.899055>,  <31.689203, 38.664448, 24.001940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.846579, 38.813606, 23.899055>,  <32.108871, 39.062202, 23.727581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846579, 38.813606, 23.899055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382044, 0.216601, 0.898402,
		-0.651201, 0.752885, 0.095405,
		-0.655729, -0.621489, 0.428686,
		31.649860, 38.627159, 24.027660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931437, 39.387562, 24.266386>,  <32.108871, 39.062202, 23.727581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931437, 39.387562, 24.266386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.822084, 39.013889, 24.358103>,  <31.756474, 38.789688, 24.413134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.822084, 39.013889, 24.358103>,  <31.931437, 39.387562, 24.266386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822084, 39.013889, 24.358103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398211, 0.107076, 0.911023,
		-0.875609, 0.340364, 0.342727,
		-0.273382, -0.934177, 0.229293,
		31.740070, 38.733635, 24.426891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875277, 39.420223, 24.909855>,  <31.931437, 39.387562, 24.266386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875277, 39.420223, 24.909855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.880186, 39.020546, 24.894541>,  <31.883131, 38.780739, 24.885353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.880186, 39.020546, 24.894541>,  <31.875277, 39.420223, 24.909855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880186, 39.020546, 24.894541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475175, -0.027859, 0.879450,
		-0.879806, -0.028985, 0.474449,
		0.012273, -0.999192, -0.038283,
		31.883867, 38.720787, 24.883057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622635, 39.225899, 25.588327>,  <31.875277, 39.420223, 24.909855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622635, 39.225899, 25.588327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.834843, 38.922607, 25.436728>,  <31.962168, 38.740635, 25.345768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.834843, 38.922607, 25.436728>,  <31.622635, 39.225899, 25.588327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834843, 38.922607, 25.436728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496523, -0.084416, 0.863909,
		-0.687032, -0.646504, 0.331692,
		0.530520, -0.758226, -0.379001,
		31.993999, 38.695141, 25.323027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657967, 38.654079, 26.066736>,  <31.622635, 39.225899, 25.588327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657967, 38.654079, 26.066736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.981720, 38.573456, 25.846094>,  <32.175972, 38.525082, 25.713709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.981720, 38.573456, 25.846094>,  <31.657967, 38.654079, 26.066736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981720, 38.573456, 25.846094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522678, -0.181029, 0.833088,
		-0.267774, -0.962602, -0.041171,
		0.809385, -0.201560, -0.551606,
		32.224537, 38.512989, 25.680613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821735, 38.110241, 26.351498>,  <31.657967, 38.654079, 26.066736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821735, 38.110241, 26.351498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.154072, 38.208469, 26.151737>,  <32.353474, 38.267406, 26.031881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.154072, 38.208469, 26.151737>,  <31.821735, 38.110241, 26.351498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154072, 38.208469, 26.151737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537456, -0.121245, 0.834530,
		0.144387, -0.961766, -0.232720,
		0.830839, 0.245572, -0.499401,
		32.403324, 38.282143, 26.001917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326885, 37.636974, 26.529833>,  <31.821735, 38.110241, 26.351498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326885, 37.636974, 26.529833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.553566, 37.931355, 26.381653>,  <32.689575, 38.107983, 26.292746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.553566, 37.931355, 26.381653>,  <32.326885, 37.636974, 26.529833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553566, 37.931355, 26.381653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606282, -0.068024, 0.792335,
		0.557917, -0.673614, -0.484740,
		0.566702, 0.735946, -0.370449,
		32.723576, 38.152138, 26.270517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899223, 37.439690, 26.740730>,  <32.326885, 37.636974, 26.529833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899223, 37.439690, 26.740730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.962845, 37.826160, 26.659533>,  <33.001019, 38.058044, 26.610813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.962845, 37.826160, 26.659533>,  <32.899223, 37.439690, 26.740730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962845, 37.826160, 26.659533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631961, 0.058334, 0.772802,
		0.758504, -0.251201, -0.601307,
		0.159052, 0.966176, -0.202996,
		33.010559, 38.116013, 26.598635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668102, 37.514191, 26.692799>,  <32.899223, 37.439690, 26.740730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668102, 37.514191, 26.692799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.484665, 37.859798, 26.775906>,  <33.374603, 38.067162, 26.825769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.484665, 37.859798, 26.775906>,  <33.668102, 37.514191, 26.692799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484665, 37.859798, 26.775906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244397, -0.102158, 0.964279,
		0.854379, 0.492988, -0.164315,
		-0.458592, 0.864018, 0.207766,
		33.347088, 38.119003, 26.838236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219135, 37.914787, 26.309338>,  <33.668102, 37.514191, 26.692799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219135, 37.914787, 26.309338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.557938, 37.773041, 26.150839>,  <34.761219, 37.687992, 26.055740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.557938, 37.773041, 26.150839>,  <34.219135, 37.914787, 26.309338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557938, 37.773041, 26.150839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482239, -0.198565, -0.853239,
		0.223680, 0.913781, -0.339075,
		0.847002, -0.354368, -0.396246,
		34.812038, 37.666729, 26.031965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184559, 38.173447, 25.642298>,  <34.219135, 37.914787, 26.309338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184559, 38.173447, 25.642298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.448257, 37.872711, 25.637617>,  <34.606476, 37.692268, 25.634809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.448257, 37.872711, 25.637617>,  <34.184559, 38.173447, 25.642298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448257, 37.872711, 25.637617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293022, -0.242540, -0.924831,
		0.692485, 0.613118, -0.380198,
		0.659244, -0.751838, -0.011702,
		34.646030, 37.647160, 25.634106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294216, 38.074818, 24.943560>,  <34.184559, 38.173447, 25.642298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294216, 38.074818, 24.943560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.456085, 37.741188, 25.093529>,  <34.553207, 37.541012, 25.183510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.456085, 37.741188, 25.093529>,  <34.294216, 38.074818, 24.943560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456085, 37.741188, 25.093529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137674, -0.460889, -0.876714,
		0.904039, 0.303164, -0.301338,
		0.404672, -0.834070, 0.374924,
		34.577488, 37.490967, 25.206005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894962, 37.885906, 24.548182>,  <34.294216, 38.074818, 24.943560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894962, 37.885906, 24.548182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.748985, 37.549053, 24.706987>,  <34.661400, 37.346939, 24.802271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.748985, 37.549053, 24.706987>,  <34.894962, 37.885906, 24.548182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748985, 37.549053, 24.706987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155445, -0.365329, -0.917808,
		0.917961, -0.396664, 0.002419,
		-0.364946, -0.842136, 0.397017,
		34.639500, 37.296413, 24.826092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177628, 37.425110, 24.161451>,  <34.894962, 37.885906, 24.548182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177628, 37.425110, 24.161451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.882252, 37.210270, 24.324537>,  <34.705025, 37.081367, 24.422388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.882252, 37.210270, 24.324537>,  <35.177628, 37.425110, 24.161451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882252, 37.210270, 24.324537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243015, -0.352034, -0.903889,
		0.629007, -0.766549, 0.129433,
		-0.738440, -0.537099, 0.407715,
		34.660721, 37.049141, 24.446852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150108, 36.695915, 23.951014>,  <35.177628, 37.425110, 24.161451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150108, 36.695915, 23.951014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.773659, 36.797203, 24.040611>,  <34.547791, 36.857975, 24.094370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.773659, 36.797203, 24.040611>,  <35.150108, 36.695915, 23.951014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773659, 36.797203, 24.040611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294450, -0.288403, -0.911111,
		-0.166109, -0.923420, 0.345982,
		-0.941120, 0.253218, 0.223994,
		34.491322, 36.873169, 24.107809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753166, 36.351669, 23.414907>,  <35.150108, 36.695915, 23.951014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753166, 36.351669, 23.414907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.476532, 36.554562, 23.620596>,  <34.310551, 36.676296, 23.744009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.476532, 36.554562, 23.620596>,  <34.753166, 36.351669, 23.414907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476532, 36.554562, 23.620596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665167, -0.169757, -0.727141,
		-0.281539, -0.844923, 0.454798,
		-0.691583, 0.507236, 0.514222,
		34.269058, 36.706730, 23.774862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969727, 35.941601, 23.403780>,  <34.753166, 36.351669, 23.414907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969727, 35.941601, 23.403780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.933922, 36.338795, 23.434692>,  <33.912437, 36.577110, 23.453239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.933922, 36.338795, 23.434692>,  <33.969727, 35.941601, 23.403780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933922, 36.338795, 23.434692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636567, 0.002637, -0.771217,
		-0.766009, -0.118231, 0.631864,
		-0.089515, 0.992982, 0.077282,
		33.907066, 36.636688, 23.457876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342419, 36.050278, 23.267834>,  <33.969727, 35.941601, 23.403780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342419, 36.050278, 23.267834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.488945, 36.411026, 23.176241>,  <33.576862, 36.627476, 23.121284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.488945, 36.411026, 23.176241>,  <33.342419, 36.050278, 23.267834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488945, 36.411026, 23.176241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597960, 0.039620, -0.800546,
		-0.712920, 0.430176, 0.553799,
		0.366317, 0.901875, -0.228982,
		33.598839, 36.681587, 23.107546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685162, 36.502945, 23.113455>,  <33.342419, 36.050278, 23.267834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685162, 36.502945, 23.113455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.999825, 36.694874, 22.958050>,  <33.188622, 36.810032, 22.864807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.999825, 36.694874, 22.958050>,  <32.685162, 36.502945, 23.113455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999825, 36.694874, 22.958050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499530, 0.124843, -0.857254,
		-0.362829, 0.868436, 0.337895,
		0.786654, 0.479825, -0.388513,
		33.235821, 36.838821, 22.841496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369629, 37.016033, 22.732756>,  <32.685162, 36.502945, 23.113455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369629, 37.016033, 22.732756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.737442, 36.976387, 22.580631>,  <32.958130, 36.952599, 22.489357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.737442, 36.976387, 22.580631>,  <32.369629, 37.016033, 22.732756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737442, 36.976387, 22.580631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327061, 0.343586, -0.880329,
		0.217923, 0.933876, 0.283522,
		0.919533, -0.099115, -0.380310,
		33.013302, 36.946651, 22.466537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497158, 37.602608, 22.308355>,  <32.369629, 37.016033, 22.732756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497158, 37.602608, 22.308355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.744728, 37.326771, 22.157944>,  <32.893269, 37.161270, 22.067698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.744728, 37.326771, 22.157944>,  <32.497158, 37.602608, 22.308355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744728, 37.326771, 22.157944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187192, 0.335446, -0.923274,
		0.762821, 0.641824, 0.078528,
		0.618921, -0.689593, -0.376029,
		32.930405, 37.119892, 22.045135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769428, 37.884350, 21.724661>,  <32.497158, 37.602608, 22.308355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769428, 37.884350, 21.724661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.839554, 37.495895, 21.659954>,  <32.881630, 37.262825, 21.621130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.839554, 37.495895, 21.659954>,  <32.769428, 37.884350, 21.724661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839554, 37.495895, 21.659954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182657, 0.129378, -0.974627,
		0.967421, 0.200410, -0.154703,
		0.175310, -0.971132, -0.161769,
		32.892147, 37.204556, 21.611423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242950, 37.868908, 21.161133>,  <32.769428, 37.884350, 21.724661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242950, 37.868908, 21.161133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.041607, 37.524288, 21.187542>,  <32.920799, 37.317516, 21.203386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.041607, 37.524288, 21.187542>,  <33.242950, 37.868908, 21.161133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041607, 37.524288, 21.187542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261744, 0.079214, -0.961881,
		0.823480, -0.501452, -0.265379,
		-0.503359, -0.861551, 0.066021,
		32.890598, 37.265823, 21.207348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909554, 37.626884, 21.203333>,  <33.242950, 37.868908, 21.161133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909554, 37.626884, 21.203333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.025906, 37.934978, 20.976305>,  <34.095715, 38.119835, 20.840088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.025906, 37.934978, 20.976305>,  <33.909554, 37.626884, 21.203333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025906, 37.934978, 20.976305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189246, 0.535179, 0.823267,
		0.937857, -0.346879, 0.009908,
		0.290877, 0.770232, -0.567568,
		34.113171, 38.166050, 20.806034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510590, 37.715038, 21.432829>,  <33.909554, 37.626884, 21.203333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510590, 37.715038, 21.432829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.377716, 38.060509, 21.281187>,  <34.297993, 38.267792, 21.190203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.377716, 38.060509, 21.281187>,  <34.510590, 37.715038, 21.432829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377716, 38.060509, 21.281187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452525, 0.498578, 0.739352,
		0.827573, 0.074045, -0.556454,
		-0.332181, 0.863677, -0.379102,
		34.278061, 38.319611, 21.167456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080944, 38.205368, 21.391413>,  <34.510590, 37.715038, 21.432829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080944, 38.205368, 21.391413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.759266, 38.442928, 21.400799>,  <34.566261, 38.585464, 21.406431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.759266, 38.442928, 21.400799>,  <35.080944, 38.205368, 21.391413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759266, 38.442928, 21.400799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424992, 0.546975, 0.721249,
		0.415519, 0.589995, -0.692279,
		-0.804193, 0.593905, 0.023465,
		34.518009, 38.621101, 21.407839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373379, 38.929291, 21.280258>,  <35.080944, 38.205368, 21.391413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373379, 38.929291, 21.280258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.008690, 38.972244, 21.438868>,  <34.789875, 38.998016, 21.534033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.008690, 38.972244, 21.438868>,  <35.373379, 38.929291, 21.280258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008690, 38.972244, 21.438868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341988, 0.733186, 0.587778,
		-0.227606, 0.671496, -0.705187,
		-0.911723, 0.107384, 0.396521,
		34.735172, 39.004459, 21.557823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297928, 39.692783, 21.345837>,  <35.373379, 38.929291, 21.280258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297928, 39.692783, 21.345837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.012527, 39.520981, 21.567261>,  <34.841286, 39.417900, 21.700115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.012527, 39.520981, 21.567261>,  <35.297928, 39.692783, 21.345837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012527, 39.520981, 21.567261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187649, 0.644064, 0.741599,
		-0.675054, 0.633010, -0.378946,
		-0.713506, -0.429511, 0.553561,
		34.798477, 39.392128, 21.733330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991871, 40.231750, 21.592636>,  <35.297928, 39.692783, 21.345837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991871, 40.231750, 21.592636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.911556, 39.939342, 21.853495>,  <34.863365, 39.763897, 22.010010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.911556, 39.939342, 21.853495>,  <34.991871, 40.231750, 21.592636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911556, 39.939342, 21.853495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103907, 0.646057, 0.756183,
		-0.974108, 0.219597, -0.053764,
		-0.200791, -0.731018, 0.652147,
		34.851318, 39.720036, 22.049139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459610, 40.517937, 22.063370>,  <34.991871, 40.231750, 21.592636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459610, 40.517937, 22.063370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.642876, 40.215782, 22.250759>,  <34.752834, 40.034489, 22.363194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.642876, 40.215782, 22.250759>,  <34.459610, 40.517937, 22.063370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642876, 40.215782, 22.250759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220978, 0.607298, 0.763123,
		-0.860960, -0.246116, 0.445169,
		0.458167, -0.755391, 0.468473,
		34.780327, 39.989166, 22.391300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376884, 40.700382, 22.671068>,  <34.459610, 40.517937, 22.063370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376884, 40.700382, 22.671068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.674454, 40.433613, 22.688025>,  <34.852997, 40.273552, 22.698198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.674454, 40.433613, 22.688025>,  <34.376884, 40.700382, 22.671068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674454, 40.433613, 22.688025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397770, 0.492883, 0.773851,
		-0.536989, -0.558825, 0.631948,
		0.743924, -0.666919, 0.042389,
		34.897633, 40.233536, 22.700741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419651, 40.447731, 23.367018>,  <34.376884, 40.700382, 22.671068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419651, 40.447731, 23.367018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.782799, 40.407139, 23.204302>,  <35.000687, 40.382786, 23.106672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.782799, 40.407139, 23.204302>,  <34.419651, 40.447731, 23.367018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782799, 40.407139, 23.204302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415889, 0.340676, 0.843194,
		0.053018, -0.934688, 0.351492,
		0.907869, -0.101478, -0.406789,
		35.055161, 40.376698, 23.082266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893948, 40.242531, 23.907803>,  <34.419651, 40.447731, 23.367018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893948, 40.242531, 23.907803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.148510, 40.359386, 23.622248>,  <35.301247, 40.429501, 23.450914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.148510, 40.359386, 23.622248>,  <34.893948, 40.242531, 23.907803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148510, 40.359386, 23.622248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562241, 0.457927, 0.688613,
		0.528082, -0.839617, 0.127174,
		0.636408, 0.292141, -0.713890,
		35.339432, 40.447029, 23.408081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589893, 39.979324, 24.103128>,  <34.893948, 40.242531, 23.907803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589893, 39.979324, 24.103128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.610985, 40.289577, 23.851538>,  <35.623638, 40.475731, 23.700583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.610985, 40.289577, 23.851538>,  <35.589893, 39.979324, 24.103128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610985, 40.289577, 23.851538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483491, 0.531279, 0.695686,
		0.873760, -0.340786, -0.346999,
		0.052727, 0.775634, -0.628977,
		35.626804, 40.522266, 23.662844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272167, 40.147926, 24.087910>,  <35.589893, 39.979324, 24.103128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272167, 40.147926, 24.087910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.077377, 40.472927, 23.959728>,  <35.960503, 40.667927, 23.882820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.077377, 40.472927, 23.959728>,  <36.272167, 40.147926, 24.087910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077377, 40.472927, 23.959728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563961, 0.572670, 0.594976,
		0.666936, 0.109015, -0.737097,
		-0.486975, 0.812505, -0.320453,
		35.931286, 40.716679, 23.863592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807320, 40.543880, 24.038628>,  <36.272167, 40.147926, 24.087910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807320, 40.543880, 24.038628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.481579, 40.776005, 24.042046>,  <36.286133, 40.915279, 24.044096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.481579, 40.776005, 24.042046>,  <36.807320, 40.543880, 24.038628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481579, 40.776005, 24.042046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489525, 0.678896, 0.547234,
		0.311763, 0.449824, -0.836936,
		-0.814352, 0.580308, 0.008545,
		36.237274, 40.950096, 24.044609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975918, 41.289482, 23.945473>,  <36.807320, 40.543880, 24.038628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975918, 41.289482, 23.945473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.613552, 41.276638, 24.114368>,  <36.396133, 41.268932, 24.215706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.613552, 41.276638, 24.114368>,  <36.975918, 41.289482, 23.945473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613552, 41.276638, 24.114368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251474, 0.761455, 0.597451,
		-0.340704, 0.647422, -0.681737,
		-0.905915, -0.032115, 0.422240,
		36.341778, 41.267002, 24.241041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.771854, 42.632259, 19.819599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.565224, 42.308281, 19.930689>,  <33.441246, 42.113892, 19.997343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.565224, 42.308281, 19.930689>,  <33.771854, 42.632259, 19.819599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565224, 42.308281, 19.930689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091887, -0.374918, -0.922493,
		0.851295, -0.451021, 0.268098,
		-0.516578, -0.809949, 0.277723,
		33.410252, 42.065296, 20.014006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043449, 42.296139, 19.408070>,  <33.771854, 42.632259, 19.819599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043449, 42.296139, 19.408070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.716484, 42.096046, 19.522333>,  <33.520306, 41.975990, 19.590891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.716484, 42.096046, 19.522333>,  <34.043449, 42.296139, 19.408070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716484, 42.096046, 19.522333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124707, -0.330469, -0.935542,
		0.562385, -0.800352, 0.207749,
		-0.817417, -0.500227, 0.285660,
		33.471260, 41.945980, 19.608030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100857, 41.452175, 19.325583>,  <34.043449, 42.296139, 19.408070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100857, 41.452175, 19.325583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.725510, 41.588825, 19.304562>,  <33.500301, 41.670815, 19.291948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.725510, 41.588825, 19.304562>,  <34.100857, 41.452175, 19.325583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725510, 41.588825, 19.304562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073252, -0.345150, -0.935685,
		-0.337762, -0.874176, 0.348903,
		-0.938377, 0.341597, -0.052543,
		33.444000, 41.691311, 19.288795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896427, 40.947750, 18.954617>,  <34.100857, 41.452175, 19.325583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896427, 40.947750, 18.954617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.606186, 41.220322, 18.916348>,  <33.432041, 41.383865, 18.893387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.606186, 41.220322, 18.916348>,  <33.896427, 40.947750, 18.954617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606186, 41.220322, 18.916348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219250, -0.360744, -0.906528,
		-0.652245, -0.636807, 0.411161,
		-0.725607, 0.681426, -0.095673,
		33.388504, 41.424747, 18.887646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463428, 40.568233, 18.556953>,  <33.896427, 40.947750, 18.954617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463428, 40.568233, 18.556953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.328400, 40.942997, 18.520617>,  <33.247383, 41.167854, 18.498816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.328400, 40.942997, 18.520617>,  <33.463428, 40.568233, 18.556953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328400, 40.942997, 18.520617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566494, -0.279285, -0.775296,
		-0.751749, -0.210261, 0.625031,
		-0.337577, 0.936905, -0.090840,
		33.227127, 41.224068, 18.493364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762604, 40.584274, 18.679516>,  <33.463428, 40.568233, 18.556953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762604, 40.584274, 18.679516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.874771, 40.879349, 18.433855>,  <32.942070, 41.056393, 18.286459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.874771, 40.879349, 18.433855>,  <32.762604, 40.584274, 18.679516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874771, 40.879349, 18.433855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585955, -0.375222, -0.718238,
		-0.760279, 0.561272, 0.327033,
		0.280416, 0.737688, -0.614153,
		32.958897, 41.100655, 18.249609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183334, 40.595036, 18.175827>,  <32.762604, 40.584274, 18.679516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183334, 40.595036, 18.175827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.464970, 40.831699, 18.018751>,  <32.633949, 40.973698, 17.924505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.464970, 40.831699, 18.018751>,  <32.183334, 40.595036, 18.175827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464970, 40.831699, 18.018751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253585, -0.307044, -0.917288,
		-0.663294, 0.745429, -0.066150,
		0.704085, 0.591658, -0.392691,
		32.676193, 41.009197, 17.900944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796873, 41.077118, 17.684536>,  <32.183334, 40.595036, 18.175827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796873, 41.077118, 17.684536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.187935, 41.073032, 17.600544>,  <32.422573, 41.070580, 17.550148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.187935, 41.073032, 17.600544>,  <31.796873, 41.077118, 17.684536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187935, 41.073032, 17.600544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197441, -0.387647, -0.900415,
		-0.072202, 0.921751, -0.381000,
		0.977652, -0.010213, -0.209980,
		32.481232, 41.069969, 17.537550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781483, 41.494698, 17.218204>,  <31.796873, 41.077118, 17.684536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781483, 41.494698, 17.218204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.105179, 41.262909, 17.179554>,  <32.299397, 41.123837, 17.156363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.105179, 41.262909, 17.179554>,  <31.781483, 41.494698, 17.218204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105179, 41.262909, 17.179554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279871, -0.235651, -0.930667,
		0.516529, 0.780177, -0.352877,
		0.809241, -0.579476, -0.096628,
		32.347950, 41.089066, 17.150566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027115, 41.576275, 16.552370>,  <31.781483, 41.494698, 17.218204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027115, 41.576275, 16.552370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.177711, 41.226318, 16.674234>,  <32.268070, 41.016342, 16.747353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.177711, 41.226318, 16.674234>,  <32.027115, 41.576275, 16.552370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177711, 41.226318, 16.674234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224681, -0.405269, -0.886158,
		0.898763, 0.265175, -0.349151,
		0.376487, -0.874894, 0.304661,
		32.290657, 40.963852, 16.765633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499794, 41.251453, 16.033550>,  <32.027115, 41.576275, 16.552370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499794, 41.251453, 16.033550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.387688, 40.927826, 16.240185>,  <32.320423, 40.733650, 16.364164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.387688, 40.927826, 16.240185>,  <32.499794, 41.251453, 16.033550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387688, 40.927826, 16.240185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245450, -0.459861, -0.853395,
		0.928011, -0.365974, -0.069701,
		-0.280268, -0.809068, 0.516585,
		32.303608, 40.685104, 16.395161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708771, 40.682583, 15.572701>,  <32.499794, 41.251453, 16.033550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708771, 40.682583, 15.572701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.450832, 40.525845, 15.835192>,  <32.296070, 40.431801, 15.992686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.450832, 40.525845, 15.835192>,  <32.708771, 40.682583, 15.572701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450832, 40.525845, 15.835192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202767, -0.740115, -0.641183,
		0.736927, -0.546525, 0.397806,
		-0.644845, -0.391843, 0.656227,
		32.257378, 40.408291, 16.032061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808548, 40.026489, 15.589991>,  <32.708771, 40.682583, 15.572701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808548, 40.026489, 15.589991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.435627, 40.021992, 15.734592>,  <32.211876, 40.019295, 15.821354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.435627, 40.021992, 15.734592>,  <32.808548, 40.026489, 15.589991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435627, 40.021992, 15.734592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225592, -0.763187, -0.605519,
		0.282702, -0.646079, 0.708986,
		-0.932302, -0.011240, 0.361505,
		32.155937, 40.018620, 15.843044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647324, 39.275936, 15.713946>,  <32.808548, 40.026489, 15.589991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647324, 39.275936, 15.713946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.291573, 39.445560, 15.645617>,  <32.078121, 39.547337, 15.604620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.291573, 39.445560, 15.645617>,  <32.647324, 39.275936, 15.713946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291573, 39.445560, 15.645617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216506, -0.719769, -0.659590,
		-0.402658, -0.549640, 0.731958,
		-0.889377, 0.424062, -0.170821,
		32.024761, 39.572781, 15.594371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680618, 38.660801, 15.298745>,  <32.647324, 39.275936, 15.713946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680618, 38.660801, 15.298745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.630424, 38.264427, 15.317945>,  <32.600307, 38.026604, 15.329464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.630424, 38.264427, 15.317945>,  <32.680618, 38.660801, 15.298745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630424, 38.264427, 15.317945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132590, 0.031196, 0.990680,
		-0.983195, 0.130680, 0.127474,
		-0.125486, -0.990933, 0.047999,
		32.592777, 37.967148, 15.332344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148563, 38.494049, 15.700123>,  <32.680618, 38.660801, 15.298745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148563, 38.494049, 15.700123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.399132, 38.182301, 15.705339>,  <32.549473, 37.995251, 15.708469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.399132, 38.182301, 15.705339>,  <32.148563, 38.494049, 15.700123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399132, 38.182301, 15.705339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146958, -0.101653, 0.983905,
		-0.765507, -0.618255, -0.178213,
		0.626421, -0.779376, 0.013041,
		32.587059, 37.948486, 15.709251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763844, 37.996101, 16.255966>,  <32.148563, 38.494049, 15.700123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763844, 37.996101, 16.255966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.139820, 37.871960, 16.199129>,  <32.365406, 37.797474, 16.165026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.139820, 37.871960, 16.199129>,  <31.763844, 37.996101, 16.255966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139820, 37.871960, 16.199129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131503, -0.054901, 0.989794,
		-0.314987, -0.949035, -0.010791,
		0.939942, -0.310354, -0.142094,
		32.421803, 37.778854, 16.156502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898584, 37.559444, 16.791771>,  <31.763844, 37.996101, 16.255966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898584, 37.559444, 16.791771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.265926, 37.639580, 16.655249>,  <32.486332, 37.687660, 16.573336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.265926, 37.639580, 16.655249>,  <31.898584, 37.559444, 16.791771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265926, 37.639580, 16.655249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338457, 0.049411, 0.939684,
		0.205123, -0.978479, -0.022431,
		0.918353, 0.200343, -0.341308,
		32.541431, 37.699684, 16.552856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375599, 37.137211, 17.155180>,  <31.898584, 37.559444, 16.791771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375599, 37.137211, 17.155180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.613518, 37.427155, 17.016157>,  <32.756268, 37.601120, 16.932743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.613518, 37.427155, 17.016157>,  <32.375599, 37.137211, 17.155180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613518, 37.427155, 17.016157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403356, 0.104875, 0.909013,
		0.695359, -0.680864, -0.229998,
		0.594794, 0.724862, -0.347557,
		32.791958, 37.644611, 16.911890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070045, 36.991711, 17.336441>,  <32.375599, 37.137211, 17.155180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070045, 36.991711, 17.336441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.054394, 37.386463, 17.273792>,  <33.045002, 37.623314, 17.236202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.054394, 37.386463, 17.273792>,  <33.070045, 36.991711, 17.336441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054394, 37.386463, 17.273792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376791, 0.159744, 0.912420,
		0.925471, -0.023313, -0.378099,
		-0.039128, 0.986883, -0.156622,
		33.042656, 37.682529, 17.226805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726978, 37.158096, 17.546621>,  <33.070045, 36.991711, 17.336441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726978, 37.158096, 17.546621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.507877, 37.492439, 17.532162>,  <33.376419, 37.693047, 17.523487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.507877, 37.492439, 17.532162>,  <33.726978, 37.158096, 17.546621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507877, 37.492439, 17.532162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368132, 0.279590, 0.886740,
		0.751298, 0.472405, -0.460852,
		-0.547750, 0.835861, -0.036148,
		33.343552, 37.743198, 17.521317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195358, 37.700848, 17.741108>,  <33.726978, 37.158096, 17.546621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195358, 37.700848, 17.741108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.829094, 37.838337, 17.824451>,  <33.609333, 37.920830, 17.874458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.829094, 37.838337, 17.824451>,  <34.195358, 37.700848, 17.741108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829094, 37.838337, 17.824451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292058, 0.212808, 0.932424,
		0.276155, 0.914641, -0.295247,
		-0.915664, 0.343723, 0.208360,
		33.554394, 37.941452, 17.886959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332909, 38.335476, 18.007616>,  <34.195358, 37.700848, 17.741108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332909, 38.335476, 18.007616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.959068, 38.249897, 18.121283>,  <33.734764, 38.198551, 18.189482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.959068, 38.249897, 18.121283>,  <34.332909, 38.335476, 18.007616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959068, 38.249897, 18.121283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200022, 0.344503, 0.917229,
		-0.294130, 0.914082, -0.279179,
		-0.934601, -0.213943, 0.284165,
		33.678688, 38.185715, 18.206532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080982, 38.982635, 18.361628>,  <34.332909, 38.335476, 18.007616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080982, 38.982635, 18.361628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.854370, 38.679974, 18.492174>,  <33.718403, 38.498375, 18.570501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.854370, 38.679974, 18.492174>,  <34.080982, 38.982635, 18.361628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854370, 38.679974, 18.492174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070471, 0.350116, 0.934052,
		-0.821021, 0.552170, -0.145030,
		-0.566532, -0.756655, 0.326364,
		33.684410, 38.452976, 18.590084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624706, 39.276230, 18.844425>,  <34.080982, 38.982635, 18.361628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624706, 39.276230, 18.844425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.605648, 38.886406, 18.932026>,  <33.594212, 38.652512, 18.984587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.605648, 38.886406, 18.932026>,  <33.624706, 39.276230, 18.844425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605648, 38.886406, 18.932026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016713, 0.218441, 0.975707,
		-0.998725, 0.050147, 0.005880,
		-0.047644, -0.974561, 0.219001,
		33.591354, 38.594036, 18.997726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256371, 39.278252, 19.503071>,  <33.624706, 39.276230, 18.844425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256371, 39.278252, 19.503071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.417709, 38.914196, 19.465200>,  <33.514511, 38.695763, 19.442478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.417709, 38.914196, 19.465200>,  <33.256371, 39.278252, 19.503071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417709, 38.914196, 19.465200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087176, -0.064774, 0.994085,
		-0.910887, -0.409211, 0.053216,
		0.403343, -0.910138, -0.094675,
		33.538712, 38.641155, 19.436798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862118, 38.781300, 19.823751>,  <33.256371, 39.278252, 19.503071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862118, 38.781300, 19.823751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.235130, 38.636948, 19.818909>,  <33.458939, 38.550339, 19.816002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.235130, 38.636948, 19.818909>,  <32.862118, 38.781300, 19.823751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235130, 38.636948, 19.818909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027260, 0.036926, 0.998946,
		-0.360051, -0.931881, 0.044272,
		0.932534, -0.360879, -0.012108,
		33.514893, 38.528683, 19.815277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859077, 38.232620, 20.277536>,  <32.862118, 38.781300, 19.823751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859077, 38.232620, 20.277536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.249939, 38.316090, 20.261435>,  <33.484455, 38.366173, 20.251774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.249939, 38.316090, 20.261435>,  <32.859077, 38.232620, 20.277536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249939, 38.316090, 20.261435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049961, -0.041453, 0.997891,
		0.206565, -0.977106, -0.050932,
		0.977157, 0.208674, -0.040255,
		33.543087, 38.378693, 20.249357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182030, 37.614590, 20.387745>,  <32.859077, 38.232620, 20.277536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182030, 37.614590, 20.387745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.937466, 37.371429, 20.590382>,  <32.790730, 37.225533, 20.711964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.937466, 37.371429, 20.590382>,  <33.182030, 37.614590, 20.387745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937466, 37.371429, 20.590382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434094, -0.277600, -0.857030,
		0.661622, -0.743902, -0.094161,
		-0.611407, -0.607905, 0.506590,
		32.754044, 37.189056, 20.742359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202545, 36.992897, 19.990023>,  <33.182030, 37.614590, 20.387745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202545, 36.992897, 19.990023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.861931, 36.998253, 20.199673>,  <32.657562, 37.001469, 20.325462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.861931, 36.998253, 20.199673>,  <33.202545, 36.992897, 19.990023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861931, 36.998253, 20.199673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509959, -0.253333, -0.822049,
		0.121770, -0.967287, 0.222551,
		-0.851536, 0.013391, 0.524124,
		32.606468, 37.002270, 20.356911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789108, 36.354168, 19.931177>,  <33.202545, 36.992897, 19.990023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789108, 36.354168, 19.931177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.514946, 36.633492, 20.013714>,  <32.350449, 36.801086, 20.063236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.514946, 36.633492, 20.013714>,  <32.789108, 36.354168, 19.931177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514946, 36.633492, 20.013714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596344, -0.375711, -0.709377,
		-0.417843, -0.609261, 0.673950,
		-0.685406, 0.698314, 0.206341,
		32.309322, 36.842983, 20.075617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111408, 36.024754, 19.857000>,  <32.789108, 36.354168, 19.931177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111408, 36.024754, 19.857000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.008801, 36.411266, 19.848057>,  <31.947235, 36.643173, 19.842691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.008801, 36.411266, 19.848057>,  <32.111408, 36.024754, 19.857000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008801, 36.411266, 19.848057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745440, -0.212511, -0.631790,
		-0.615237, -0.145401, 0.774817,
		-0.256520, 0.966280, -0.022357,
		31.931845, 36.701149, 19.841351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420279, 35.965397, 19.843782>,  <32.111408, 36.024754, 19.857000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420279, 35.965397, 19.843782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.491806, 36.336601, 19.713049>,  <31.534723, 36.559322, 19.634609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.491806, 36.336601, 19.713049>,  <31.420279, 35.965397, 19.843782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491806, 36.336601, 19.713049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887973, 0.009165, -0.459806,
		-0.423709, 0.372443, 0.825686,
		0.178819, 0.928010, -0.326836,
		31.545452, 36.615005, 19.614998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826605, 36.283245, 19.820238>,  <31.420279, 35.965397, 19.843782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826605, 36.283245, 19.820238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.040440, 36.540897, 19.601400>,  <31.168741, 36.695488, 19.470098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.040440, 36.540897, 19.601400>,  <30.826605, 36.283245, 19.820238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040440, 36.540897, 19.601400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638300, -0.116535, -0.760916,
		-0.553885, 0.755985, 0.348851,
		0.534588, 0.644132, -0.547092,
		31.200815, 36.734138, 19.437273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467016, 36.853813, 19.690329>,  <30.826605, 36.283245, 19.820238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467016, 36.853813, 19.690329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.727268, 36.806351, 19.390301>,  <30.883419, 36.777874, 19.210285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.727268, 36.806351, 19.390301>,  <30.467016, 36.853813, 19.690329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727268, 36.806351, 19.390301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759391, -0.098842, -0.643082,
		0.002167, 0.988004, -0.154415,
		0.650631, -0.118655, -0.750067,
		30.922457, 36.770756, 19.165281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872854, 37.300678, 19.630610>,  <30.467016, 36.853813, 19.690329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872854, 37.300678, 19.630610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.502682, 37.292179, 19.781937>,  <29.280579, 37.287079, 19.872732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.502682, 37.292179, 19.781937>,  <29.872854, 37.300678, 19.630610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502682, 37.292179, 19.781937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363472, 0.232334, 0.902169,
		-0.107064, 0.972404, -0.207287,
		-0.925433, -0.021247, 0.378316,
		29.225052, 37.285805, 19.895432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904739, 37.832287, 20.012699>,  <29.872854, 37.300678, 19.630610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904739, 37.832287, 20.012699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.576269, 37.633278, 20.124517>,  <29.379187, 37.513874, 20.191608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.576269, 37.633278, 20.124517>,  <29.904739, 37.832287, 20.012699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576269, 37.633278, 20.124517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227772, 0.163401, 0.959906,
		-0.523252, 0.851923, -0.020859,
		-0.821175, -0.497521, 0.279544,
		29.329916, 37.484020, 20.208380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483541, 38.314899, 20.282200>,  <29.904739, 37.832287, 20.012699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483541, 38.314899, 20.282200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.405073, 37.954872, 20.437838>,  <29.357992, 37.738857, 20.531219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.405073, 37.954872, 20.437838>,  <29.483541, 38.314899, 20.282200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405073, 37.954872, 20.437838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326468, 0.314216, 0.891452,
		-0.924627, 0.301905, 0.232202,
		-0.196172, -0.900068, 0.389095,
		29.346222, 37.684853, 20.554565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174713, 38.450985, 20.820314>,  <29.483541, 38.314899, 20.282200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174713, 38.450985, 20.820314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.347729, 38.097294, 20.890793>,  <29.451538, 37.885078, 20.933081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.347729, 38.097294, 20.890793>,  <29.174713, 38.450985, 20.820314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.347729, 38.097294, 20.890793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297259, 0.324355, 0.898015,
		-0.851203, -0.336052, 0.403142,
		0.432541, -0.884230, 0.176197,
		29.477491, 37.832024, 20.943651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125187, 38.316959, 21.524734>,  <29.174713, 38.450985, 20.820314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125187, 38.316959, 21.524734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.396463, 38.034866, 21.442076>,  <29.559229, 37.865612, 21.392481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.396463, 38.034866, 21.442076>,  <29.125187, 38.316959, 21.524734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396463, 38.034866, 21.442076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422237, 0.143793, 0.895008,
		-0.601473, -0.694242, 0.395294,
		0.678193, -0.705231, -0.206647,
		29.599922, 37.823296, 21.380081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144375, 37.971359, 22.099041>,  <29.125187, 38.316959, 21.524734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144375, 37.971359, 22.099041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.484133, 37.847248, 21.928274>,  <29.687988, 37.772781, 21.825813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.484133, 37.847248, 21.928274>,  <29.144375, 37.971359, 22.099041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484133, 37.847248, 21.928274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429281, -0.064370, 0.900874,
		-0.306999, -0.948465, 0.078519,
		0.849394, -0.310274, -0.426919,
		29.738951, 37.754166, 21.800198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343985, 37.467728, 22.517370>,  <29.144375, 37.971359, 22.099041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343985, 37.467728, 22.517370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.683359, 37.574116, 22.334320>,  <29.886984, 37.637947, 22.224491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.683359, 37.574116, 22.334320>,  <29.343985, 37.467728, 22.517370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683359, 37.574116, 22.334320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495166, -0.093383, 0.863765,
		0.186998, -0.959448, -0.210927,
		0.848435, 0.265967, -0.457623,
		29.937889, 37.653904, 22.197033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.753485, 40.354736, 17.160597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.151901, 40.370449, 17.128706>,  <29.390951, 40.379879, 17.109571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.151901, 40.370449, 17.128706>,  <28.753485, 40.354736, 17.160597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.151901, 40.370449, 17.128706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064944, 0.290703, 0.954607,
		0.060679, -0.956006, 0.287001,
		0.996042, 0.039285, -0.079726,
		29.450714, 40.382236, 17.104788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923468, 40.279320, 17.767292>,  <28.753485, 40.354736, 17.160597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923468, 40.279320, 17.767292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.279366, 40.411022, 17.640835>,  <29.492905, 40.490044, 17.564960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.279366, 40.411022, 17.640835>,  <28.923468, 40.279320, 17.767292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279366, 40.411022, 17.640835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175792, 0.392007, 0.903010,
		0.421260, -0.859020, 0.290902,
		0.889740, 0.329264, -0.316145,
		29.546289, 40.509800, 17.545992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339703, 40.125790, 18.279993>,  <28.923468, 40.279320, 17.767292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339703, 40.125790, 18.279993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.531317, 40.411526, 18.075935>,  <29.646286, 40.582966, 17.953501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.531317, 40.411526, 18.075935>,  <29.339703, 40.125790, 18.279993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531317, 40.411526, 18.075935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046759, 0.559573, 0.827461,
		0.876550, -0.420236, 0.234653,
		0.479034, 0.714339, -0.510143,
		29.675028, 40.625828, 17.922892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880447, 40.263390, 18.731569>,  <29.339703, 40.125790, 18.279993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880447, 40.263390, 18.731569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.844810, 40.565598, 18.471954>,  <29.823429, 40.746922, 18.316185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.844810, 40.565598, 18.471954>,  <29.880447, 40.263390, 18.731569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844810, 40.565598, 18.471954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220050, 0.650455, 0.726970,
		0.971412, -0.078054, -0.224203,
		-0.089091, 0.755523, -0.649036,
		29.818083, 40.792255, 18.277245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577761, 40.519775, 18.705940>,  <29.880447, 40.263390, 18.731569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577761, 40.519775, 18.705940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.299711, 40.795017, 18.622684>,  <30.132881, 40.960159, 18.572731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.299711, 40.795017, 18.622684>,  <30.577761, 40.519775, 18.705940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299711, 40.795017, 18.622684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290784, 0.533915, 0.793965,
		0.657456, 0.491379, -0.571225,
		-0.695123, 0.688100, -0.208140,
		30.091175, 41.001446, 18.560242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890200, 41.107750, 18.846437>,  <30.577761, 40.519775, 18.705940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890200, 41.107750, 18.846437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.501780, 41.202877, 18.855412>,  <30.268728, 41.259953, 18.860796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.501780, 41.202877, 18.855412>,  <30.890200, 41.107750, 18.846437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501780, 41.202877, 18.855412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168195, 0.614003, 0.771175,
		0.169625, 0.752623, -0.636228,
		-0.971050, 0.237821, 0.022437,
		30.210464, 41.274223, 18.862143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887434, 41.786873, 19.251471>,  <30.890200, 41.107750, 18.846437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887434, 41.786873, 19.251471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.495897, 41.706657, 19.235209>,  <30.260975, 41.658527, 19.225452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.495897, 41.706657, 19.235209>,  <30.887434, 41.786873, 19.251471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495897, 41.706657, 19.235209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166097, 0.662676, 0.730255,
		-0.119506, 0.721556, -0.681964,
		-0.978841, -0.200542, -0.040654,
		30.202246, 41.646496, 19.223013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596436, 42.466343, 19.108597>,  <30.887434, 41.786873, 19.251471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596436, 42.466343, 19.108597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.331255, 42.211018, 19.265085>,  <30.172146, 42.057823, 19.358978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.331255, 42.211018, 19.265085>,  <30.596436, 42.466343, 19.108597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331255, 42.211018, 19.265085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193364, 0.650817, 0.734198,
		-0.723261, 0.411089, -0.554887,
		-0.662951, -0.638312, 0.391221,
		30.132370, 42.019524, 19.382452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100742, 42.911175, 19.303698>,  <30.596436, 42.466343, 19.108597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100742, 42.911175, 19.303698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.035536, 42.581215, 19.520203>,  <29.996412, 42.383240, 19.650106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.035536, 42.581215, 19.520203>,  <30.100742, 42.911175, 19.303698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035536, 42.581215, 19.520203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027018, 0.544663, 0.838220,
		-0.986253, 0.151268, -0.066502,
		-0.163018, -0.824900, 0.541262,
		29.986631, 42.333744, 19.682581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626541, 43.115044, 19.824341>,  <30.100742, 42.911175, 19.303698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626541, 43.115044, 19.824341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.773407, 42.776611, 19.978920>,  <29.861526, 42.573551, 20.071667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.773407, 42.776611, 19.978920>,  <29.626541, 43.115044, 19.824341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773407, 42.776611, 19.978920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059722, 0.393165, 0.917526,
		-0.928238, -0.359960, 0.093826,
		0.367162, -0.846079, 0.386448,
		29.883556, 42.522789, 20.094854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.245287, 42.922115, 20.381145>,  <29.626541, 43.115044, 19.824341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.245287, 42.922115, 20.381145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.583385, 42.729332, 20.473471>,  <29.786245, 42.613663, 20.528866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.583385, 42.729332, 20.473471>,  <29.245287, 42.922115, 20.381145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583385, 42.729332, 20.473471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013180, 0.450604, 0.892627,
		-0.534212, -0.751448, 0.387224,
		0.845247, -0.481955, 0.230814,
		29.836960, 42.584743, 20.542715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113760, 42.622932, 21.021124>,  <29.245287, 42.922115, 20.381145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113760, 42.622932, 21.021124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.510336, 42.650589, 20.976828>,  <29.748281, 42.667183, 20.950251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.510336, 42.650589, 20.976828>,  <29.113760, 42.622932, 21.021124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510336, 42.650589, 20.976828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068523, 0.446422, 0.892195,
		0.111120, -0.892147, 0.437864,
		0.991441, 0.069137, -0.110739,
		29.807768, 42.671329, 20.943605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072252, 41.888565, 21.250036>,  <29.113760, 42.622932, 21.021124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072252, 41.888565, 21.250036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.717484, 41.761211, 21.383904>,  <28.504623, 41.684799, 21.464224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.717484, 41.761211, 21.383904>,  <29.072252, 41.888565, 21.250036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717484, 41.761211, 21.383904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329578, -0.071467, -0.941420,
		0.323653, -0.945263, -0.041547,
		-0.886920, -0.318386, 0.334668,
		28.451406, 41.665695, 21.484304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809530, 41.491230, 20.717545>,  <29.072252, 41.888565, 21.250036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809530, 41.491230, 20.717545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.476542, 41.521961, 20.937031>,  <28.276749, 41.540398, 21.068724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.476542, 41.521961, 20.937031>,  <28.809530, 41.491230, 20.717545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476542, 41.521961, 20.937031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530491, -0.396339, -0.749330,
		0.159912, -0.914885, 0.370694,
		-0.832470, 0.076823, 0.548717,
		28.226801, 41.545010, 21.101646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558081, 40.774593, 20.937439>,  <28.809530, 41.491230, 20.717545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558081, 40.774593, 20.937439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.270859, 41.052814, 20.927599>,  <28.098526, 41.219746, 20.921696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.270859, 41.052814, 20.927599>,  <28.558081, 40.774593, 20.937439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270859, 41.052814, 20.927599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549221, -0.587991, -0.593820,
		-0.427497, -0.412884, 0.804222,
		-0.718054, 0.695552, -0.024600,
		28.055443, 41.261478, 20.920219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932455, 40.472843, 20.933302>,  <28.558081, 40.774593, 20.937439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932455, 40.472843, 20.933302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.836939, 40.833939, 20.790167>,  <27.779629, 41.050594, 20.704287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.836939, 40.833939, 20.790167>,  <27.932455, 40.472843, 20.933302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836939, 40.833939, 20.790167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554576, -0.429268, -0.712864,
		-0.797136, 0.028224, 0.603140,
		-0.238788, 0.902736, -0.357837,
		27.765303, 41.104759, 20.682816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245567, 40.508797, 20.836514>,  <27.932455, 40.472843, 20.933302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245567, 40.508797, 20.836514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.373777, 40.797867, 20.591564>,  <27.450705, 40.971310, 20.444595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.373777, 40.797867, 20.591564>,  <27.245567, 40.508797, 20.836514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373777, 40.797867, 20.591564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574317, -0.365836, -0.732342,
		-0.753275, 0.586430, 0.297786,
		0.320527, 0.722678, -0.612371,
		27.469934, 41.014671, 20.407852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.613007, 40.783737, 20.560207>,  <27.245567, 40.508797, 20.836514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.613007, 40.783737, 20.560207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.890154, 40.922768, 20.307501>,  <27.056442, 41.006184, 20.155876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.890154, 40.922768, 20.307501>,  <26.613007, 40.783737, 20.560207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890154, 40.922768, 20.307501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509438, -0.384103, -0.770025,
		-0.510304, 0.855370, -0.089065,
		0.692866, 0.347574, -0.631767,
		27.098013, 41.027039, 20.117971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236172, 40.842949, 20.007687>,  <26.613007, 40.783737, 20.560207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236172, 40.842949, 20.007687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.602539, 40.883011, 19.852219>,  <26.822359, 40.907047, 19.758938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.602539, 40.883011, 19.852219>,  <26.236172, 40.842949, 20.007687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602539, 40.883011, 19.852219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314954, -0.420912, -0.850669,
		-0.248796, 0.901555, -0.353976,
		0.915918, 0.100157, -0.388669,
		26.877314, 40.913059, 19.735619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136692, 41.272110, 19.364668>,  <26.236172, 40.842949, 20.007687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136692, 41.272110, 19.364668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.463879, 41.042625, 19.347782>,  <26.660191, 40.904934, 19.337650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.463879, 41.042625, 19.347782>,  <26.136692, 41.272110, 19.364668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.463879, 41.042625, 19.347782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317660, -0.389285, -0.864609,
		0.479603, 0.720633, -0.500668,
		0.817969, -0.573712, -0.042215,
		26.709269, 40.870510, 19.335117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.453279, 41.338387, 18.677332>,  <26.136692, 41.272110, 19.364668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.453279, 41.338387, 18.677332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.589001, 40.996227, 18.833878>,  <26.670433, 40.790932, 18.927805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.589001, 40.996227, 18.833878>,  <26.453279, 41.338387, 18.677332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589001, 40.996227, 18.833878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197735, -0.471609, -0.859352,
		0.919660, 0.214195, -0.329161,
		0.339305, -0.855398, 0.391366,
		26.690792, 40.739609, 18.951288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920481, 41.125500, 18.186871>,  <26.453279, 41.338387, 18.677332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920481, 41.125500, 18.186871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.876770, 40.785992, 18.393810>,  <26.850544, 40.582287, 18.517975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.876770, 40.785992, 18.393810>,  <26.920481, 41.125500, 18.186871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876770, 40.785992, 18.393810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147505, -0.500858, -0.852868,
		0.983006, -0.169509, -0.070466,
		-0.109275, -0.848768, 0.517350,
		26.843988, 40.531361, 18.549015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.365318, 40.655418, 17.944220>,  <26.920481, 41.125500, 18.186871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.365318, 40.655418, 17.944220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.100559, 40.431145, 18.143225>,  <26.941704, 40.296581, 18.262629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.100559, 40.431145, 18.143225>,  <27.365318, 40.655418, 17.944220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100559, 40.431145, 18.143225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041106, -0.635564, -0.770953,
		0.748464, -0.530745, 0.397632,
		-0.661900, -0.560686, 0.497514,
		26.901989, 40.262939, 18.292479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616667, 39.992470, 17.855431>,  <27.365318, 40.655418, 17.944220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616667, 39.992470, 17.855431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.232548, 39.951538, 17.959242>,  <27.002075, 39.926979, 18.021528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.232548, 39.951538, 17.959242>,  <27.616667, 39.992470, 17.855431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.232548, 39.951538, 17.959242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142147, -0.620984, -0.770826,
		0.240042, -0.777115, 0.581784,
		-0.960299, -0.102332, 0.259527,
		26.944458, 39.920837, 18.037100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469360, 39.274235, 17.916309>,  <27.616667, 39.992470, 17.855431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469360, 39.274235, 17.916309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.141729, 39.486782, 17.829819>,  <26.945150, 39.614311, 17.777924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.141729, 39.486782, 17.829819>,  <27.469360, 39.274235, 17.916309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141729, 39.486782, 17.829819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220763, -0.639841, -0.736117,
		-0.529501, -0.555203, 0.641388,
		-0.819080, 0.531369, -0.216228,
		26.896006, 39.646194, 17.764950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428843, 38.753357, 17.440653>,  <27.469360, 39.274235, 17.916309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428843, 38.753357, 17.440653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.372591, 38.359268, 17.401548>,  <27.338840, 38.122814, 17.378086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.372591, 38.359268, 17.401548>,  <27.428843, 38.753357, 17.440653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372591, 38.359268, 17.401548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420993, -0.148876, 0.894763,
		-0.896096, 0.084671, 0.435709,
		-0.140627, -0.985224, -0.097762,
		27.330402, 38.063702, 17.372219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269115, 38.498325, 18.069250>,  <27.428843, 38.753357, 17.440653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.269115, 38.498325, 18.069250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.398207, 38.162632, 17.894190>,  <27.475662, 37.961216, 17.789154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.398207, 38.162632, 17.894190>,  <27.269115, 38.498325, 18.069250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398207, 38.162632, 17.894190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407644, -0.294068, 0.864495,
		-0.854210, -0.457402, 0.247203,
		0.322727, -0.839230, -0.437652,
		27.495026, 37.910862, 17.762894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075716, 37.975685, 18.414957>,  <27.269115, 38.498325, 18.069250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075716, 37.975685, 18.414957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.377792, 37.806900, 18.214306>,  <27.559038, 37.705627, 18.093916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.377792, 37.806900, 18.214306>,  <27.075716, 37.975685, 18.414957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377792, 37.806900, 18.214306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407714, -0.296844, 0.863512,
		-0.513276, -0.856638, -0.052134,
		0.755193, -0.421964, -0.501627,
		27.604351, 37.680309, 18.063818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.241346, 37.368843, 18.732878>,  <27.075716, 37.975685, 18.414957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.241346, 37.368843, 18.732878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.581488, 37.441689, 18.535398>,  <27.785572, 37.485394, 18.416910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.581488, 37.441689, 18.535398>,  <27.241346, 37.368843, 18.732878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581488, 37.441689, 18.535398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526128, -0.311356, 0.791358,
		-0.009601, -0.932681, -0.360576,
		0.850351, 0.182111, -0.493698,
		27.836594, 37.496323, 18.387289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609035, 36.876083, 18.820353>,  <27.241346, 37.368843, 18.732878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609035, 36.876083, 18.820353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.868570, 37.170021, 18.741350>,  <28.024292, 37.346386, 18.693949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.868570, 37.170021, 18.741350>,  <27.609035, 36.876083, 18.820353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868570, 37.170021, 18.741350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591207, -0.323433, 0.738827,
		0.479044, -0.596148, -0.644302,
		0.648839, 0.734846, -0.197508,
		28.063223, 37.390476, 18.682098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190855, 36.538452, 18.863678>,  <27.609035, 36.876083, 18.820353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190855, 36.538452, 18.863678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.333153, 36.912159, 18.873459>,  <28.418531, 37.136383, 18.879328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.333153, 36.912159, 18.873459>,  <28.190855, 36.538452, 18.863678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333153, 36.912159, 18.873459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568586, -0.237121, 0.787708,
		0.741724, -0.266319, -0.615564,
		0.355745, 0.934263, 0.024453,
		28.439877, 37.192436, 18.880795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984827, 36.600597, 18.717167>,  <28.190855, 36.538452, 18.863678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984827, 36.600597, 18.717167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.854498, 36.896885, 18.952173>,  <28.776300, 37.074657, 19.093178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.854498, 36.896885, 18.952173>,  <28.984827, 36.600597, 18.717167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854498, 36.896885, 18.952173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668528, -0.258904, 0.697164,
		0.668514, 0.619922, -0.410835,
		-0.325821, 0.740719, 0.587517,
		28.756752, 37.119102, 19.128428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554056, 36.716614, 19.207994>,  <28.984827, 36.600597, 18.717167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554056, 36.716614, 19.207994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.257738, 36.936180, 19.362867>,  <29.079947, 37.067921, 19.455791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.257738, 36.936180, 19.362867>,  <29.554056, 36.716614, 19.207994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257738, 36.936180, 19.362867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424997, -0.063360, 0.902975,
		0.520191, 0.833471, -0.186352,
		-0.740796, 0.548918, 0.387182,
		29.035500, 37.100857, 19.479021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086987, 37.236694, 18.881212>,  <29.554056, 36.716614, 19.207994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086987, 37.236694, 18.881212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.415806, 37.017452, 18.819475>,  <30.613098, 36.885906, 18.782433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.415806, 37.017452, 18.819475>,  <30.086987, 37.236694, 18.881212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415806, 37.017452, 18.819475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329731, -0.237218, -0.913786,
		0.464236, 0.802067, -0.375731,
		0.822048, -0.548102, -0.154341,
		30.662420, 36.853020, 18.773172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348610, 37.490063, 18.299547>,  <30.086987, 37.236694, 18.881212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348610, 37.490063, 18.299547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.482826, 37.116383, 18.348011>,  <30.563356, 36.892174, 18.377089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.482826, 37.116383, 18.348011>,  <30.348610, 37.490063, 18.299547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482826, 37.116383, 18.348011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363437, -0.247038, -0.898268,
		0.869094, 0.257373, -0.422415,
		0.335542, -0.934201, 0.121160,
		30.583488, 36.836121, 18.384359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700294, 37.364574, 17.664339>,  <30.348610, 37.490063, 18.299547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700294, 37.364574, 17.664339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.643112, 36.991024, 17.795454>,  <30.608803, 36.766895, 17.874123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.643112, 36.991024, 17.795454>,  <30.700294, 37.364574, 17.664339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643112, 36.991024, 17.795454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187932, -0.299549, -0.935389,
		0.971723, -0.195319, -0.132683,
		-0.142954, -0.933874, 0.327785,
		30.600225, 36.710861, 17.893789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068558, 36.888432, 17.149172>,  <30.700294, 37.364574, 17.664339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068558, 36.888432, 17.149172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.797842, 36.657761, 17.332212>,  <30.635412, 36.519356, 17.442036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.797842, 36.657761, 17.332212>,  <31.068558, 36.888432, 17.149172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797842, 36.657761, 17.332212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375307, -0.264471, -0.888369,
		0.633327, -0.772978, -0.037441,
		-0.676788, -0.576680, 0.457600,
		30.594805, 36.484756, 17.469492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055702, 36.101635, 16.861443>,  <31.068558, 36.888432, 17.149172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055702, 36.101635, 16.861443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.693302, 36.180374, 17.011330>,  <30.475863, 36.227615, 17.101261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.693302, 36.180374, 17.011330>,  <31.055702, 36.101635, 16.861443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693302, 36.180374, 17.011330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416826, -0.260979, -0.870716,
		-0.073602, -0.945062, 0.318497,
		-0.906002, 0.196844, 0.374718,
		30.421501, 36.239429, 17.123745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779163, 35.558235, 16.628801>,  <31.055702, 36.101635, 16.861443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779163, 35.558235, 16.628801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.490606, 35.815609, 16.731239>,  <30.317472, 35.970036, 16.792702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.490606, 35.815609, 16.731239>,  <30.779163, 35.558235, 16.628801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490606, 35.815609, 16.731239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530296, -0.275406, -0.801834,
		-0.445400, -0.714240, 0.539888,
		-0.721390, 0.643438, 0.256093,
		30.274189, 36.008640, 16.808067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150951, 35.144192, 16.520229>,  <30.779163, 35.558235, 16.628801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150951, 35.144192, 16.520229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.021721, 35.522663, 16.512550>,  <29.944183, 35.749744, 16.507942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.021721, 35.522663, 16.512550>,  <30.150951, 35.144192, 16.520229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021721, 35.522663, 16.512550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474394, -0.179471, -0.861824,
		-0.818885, -0.269327, 0.506844,
		-0.323076, 0.946178, -0.019199,
		29.924799, 35.806515, 16.506790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425787, 35.131409, 16.215540>,  <30.150951, 35.144192, 16.520229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425787, 35.131409, 16.215540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.554985, 35.505249, 16.155954>,  <29.632504, 35.729553, 16.120203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.554985, 35.505249, 16.155954>,  <29.425787, 35.131409, 16.215540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554985, 35.505249, 16.155954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445937, 0.011464, -0.894991,
		-0.834753, 0.355509, 0.420477,
		0.322997, 0.934603, -0.148965,
		29.651884, 35.785629, 16.111265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896059, 35.416447, 15.877657>,  <29.425787, 35.131409, 16.215540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896059, 35.416447, 15.877657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.218927, 35.645031, 15.818446>,  <29.412649, 35.782181, 15.782920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.218927, 35.645031, 15.818446>,  <28.896059, 35.416447, 15.877657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218927, 35.645031, 15.818446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298956, 0.179492, -0.937234,
		-0.509020, 0.800761, 0.315721,
		0.807170, 0.571458, -0.148027,
		29.461079, 35.816467, 15.774038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.029663, 39.639961, 29.974089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.101044, 39.972095, 29.762920>,  <36.143871, 40.171375, 29.636219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.101044, 39.972095, 29.762920>,  <36.029663, 39.639961, 29.974089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101044, 39.972095, 29.762920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099305, -0.518594, -0.849234,
		-0.978924, 0.203975, -0.010090,
		0.178455, 0.830334, -0.527920,
		36.154579, 40.221195, 29.604544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457039, 39.767975, 29.464718>,  <36.029663, 39.639961, 29.974089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457039, 39.767975, 29.464718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.820305, 39.889999, 29.350050>,  <36.038265, 39.963215, 29.281250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.820305, 39.889999, 29.350050>,  <35.457039, 39.767975, 29.464718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820305, 39.889999, 29.350050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026041, -0.642306, -0.766006,
		-0.417806, 0.703124, -0.575374,
		0.908163, 0.305058, -0.286669,
		36.092754, 39.981518, 29.264050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293560, 40.146767, 29.000412>,  <35.457039, 39.767975, 29.464718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293560, 40.146767, 29.000412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.673935, 40.032337, 28.953295>,  <35.902161, 39.963680, 28.925024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.673935, 40.032337, 28.953295>,  <35.293560, 40.146767, 29.000412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673935, 40.032337, 28.953295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247433, -0.474695, -0.844655,
		0.185718, 0.832361, -0.522191,
		0.950939, -0.286075, -0.117794,
		35.959217, 39.946514, 28.917957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471985, 40.145374, 28.285343>,  <35.293560, 40.146767, 29.000412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471985, 40.145374, 28.285343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.772114, 39.917091, 28.418800>,  <35.952190, 39.780121, 28.498875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.772114, 39.917091, 28.418800>,  <35.471985, 40.145374, 28.285343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772114, 39.917091, 28.418800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028354, -0.532013, -0.846261,
		0.660468, 0.625506, -0.415361,
		0.750319, -0.570706, 0.333642,
		35.997208, 39.745880, 28.518892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984825, 40.099274, 27.795107>,  <35.471985, 40.145374, 28.285343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984825, 40.099274, 27.795107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.054920, 39.769714, 28.010693>,  <36.096977, 39.571980, 28.140045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.054920, 39.769714, 28.010693>,  <35.984825, 40.099274, 27.795107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054920, 39.769714, 28.010693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034787, -0.552277, -0.832935,
		0.983912, 0.127209, -0.125438,
		0.175233, -0.823898, 0.538967,
		36.107491, 39.522545, 28.172382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488766, 39.692177, 27.436623>,  <35.984825, 40.099274, 27.795107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488766, 39.692177, 27.436623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.324936, 39.427849, 27.688200>,  <36.226639, 39.269253, 27.839148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.324936, 39.427849, 27.688200>,  <36.488766, 39.692177, 27.436623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324936, 39.427849, 27.688200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059530, -0.668593, -0.741242,
		0.910334, -0.341033, 0.234498,
		-0.409572, -0.660817, 0.628945,
		36.202065, 39.229603, 27.876883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828171, 38.958588, 27.274977>,  <36.488766, 39.692177, 27.436623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828171, 38.958588, 27.274977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.492950, 38.881920, 27.479303>,  <36.291817, 38.835918, 27.601898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.492950, 38.881920, 27.479303>,  <36.828171, 38.958588, 27.274977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492950, 38.881920, 27.479303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260915, -0.681468, -0.683758,
		0.479158, -0.706304, 0.521097,
		-0.838052, -0.191666, 0.510816,
		36.241535, 38.824421, 27.632547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847900, 38.305080, 27.216743>,  <36.828171, 38.958588, 27.274977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847900, 38.305080, 27.216743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.472958, 38.407738, 27.310976>,  <36.247993, 38.469334, 27.367516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.472958, 38.407738, 27.310976>,  <36.847900, 38.305080, 27.216743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472958, 38.407738, 27.310976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347489, -0.640502, -0.684842,
		-0.024871, -0.723803, 0.689559,
		-0.937354, 0.256647, 0.235584,
		36.191750, 38.484734, 27.381651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441006, 37.608288, 27.356852>,  <36.847900, 38.305080, 27.216743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441006, 37.608288, 27.356852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.159103, 37.884445, 27.291517>,  <35.989960, 38.050140, 27.252316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.159103, 37.884445, 27.291517>,  <36.441006, 37.608288, 27.356852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159103, 37.884445, 27.291517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406352, -0.581546, -0.704758,
		-0.581546, -0.430311, 0.690389,
		0.704758, -0.690389, 0.163338,
		35.947678, 38.091560, 27.242516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849449, 37.186035, 27.233158>,  <36.441006, 37.608288, 27.356852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849449, 37.186035, 27.233158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.747925, 37.552094, 27.107883>,  <35.687012, 37.771729, 27.032719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.747925, 37.552094, 27.107883>,  <35.849449, 37.186035, 27.233158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747925, 37.552094, 27.107883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538264, -0.402657, -0.740364,
		-0.803649, -0.019335, 0.594789,
		-0.253811, 0.915147, -0.313188,
		35.671780, 37.826637, 27.013927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141323, 37.259834, 27.284109>,  <35.849449, 37.186035, 27.233158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141323, 37.259834, 27.284109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.267826, 37.500217, 26.990490>,  <35.343727, 37.644447, 26.814318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.267826, 37.500217, 26.990490>,  <35.141323, 37.259834, 27.284109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267826, 37.500217, 26.990490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548926, -0.515154, -0.658252,
		-0.773732, 0.611115, 0.166962,
		0.316257, 0.600961, -0.734049,
		35.362701, 37.680504, 26.770275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507057, 37.434437, 26.893784>,  <35.141323, 37.259834, 27.284109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507057, 37.434437, 26.893784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799263, 37.554634, 26.648491>,  <34.974586, 37.626751, 26.501316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799263, 37.554634, 26.648491>,  <34.507057, 37.434437, 26.893784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799263, 37.554634, 26.648491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595243, -0.159948, -0.787466,
		-0.334712, 0.940277, 0.062021,
		0.730516, 0.300492, -0.613230,
		35.018417, 37.644783, 26.464521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129444, 37.880138, 27.233965>,  <34.507057, 37.434437, 26.893784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129444, 37.880138, 27.233965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.766472, 38.041794, 27.280001>,  <33.548687, 38.138786, 27.307623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.766472, 38.041794, 27.280001>,  <34.129444, 37.880138, 27.233965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766472, 38.041794, 27.280001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007683, -0.289805, 0.957055,
		0.420134, 0.867575, 0.266083,
		-0.907429, 0.404136, 0.115091,
		33.494244, 38.163036, 27.314528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133976, 38.036179, 27.915285>,  <34.129444, 37.880138, 27.233965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133976, 38.036179, 27.915285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.748684, 38.036446, 27.807819>,  <33.517509, 38.036606, 27.743340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.748684, 38.036446, 27.807819>,  <34.133976, 38.036179, 27.915285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748684, 38.036446, 27.807819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264164, -0.184633, 0.946640,
		-0.048969, 0.982807, 0.178022,
		-0.963234, 0.000671, -0.268664,
		33.459713, 38.036648, 27.727221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895683, 38.364449, 28.467363>,  <34.133976, 38.036179, 27.915285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895683, 38.364449, 28.467363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.597694, 38.180809, 28.273769>,  <33.418900, 38.070625, 28.157614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.597694, 38.180809, 28.273769>,  <33.895683, 38.364449, 28.467363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597694, 38.180809, 28.273769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293391, -0.426092, 0.855784,
		-0.599111, 0.779535, 0.182733,
		-0.744975, -0.459098, -0.483985,
		33.374203, 38.043079, 28.128574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264469, 38.462059, 28.881874>,  <33.895683, 38.364449, 28.467363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264469, 38.462059, 28.881874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.210171, 38.141079, 28.649446>,  <33.177593, 37.948490, 28.509989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.210171, 38.141079, 28.649446>,  <33.264469, 38.462059, 28.881874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210171, 38.141079, 28.649446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368436, -0.503549, 0.781469,
		-0.919689, 0.320167, -0.227298,
		-0.135745, -0.802453, -0.581070,
		33.169449, 37.900345, 28.475126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662251, 38.288269, 29.040911>,  <33.264469, 38.462059, 28.881874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662251, 38.288269, 29.040911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781521, 37.948090, 28.867552>,  <32.853081, 37.743980, 28.763536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781521, 37.948090, 28.867552>,  <32.662251, 38.288269, 29.040911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781521, 37.948090, 28.867552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413328, -0.524311, 0.744485,
		-0.860380, -0.042849, -0.507849,
		0.298171, -0.850448, -0.433396,
		32.870972, 37.692955, 28.737534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051472, 37.836189, 28.842606>,  <32.662251, 38.288269, 29.040911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051472, 37.836189, 28.842606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.378773, 37.608253, 28.872929>,  <32.575153, 37.471493, 28.891123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.378773, 37.608253, 28.872929>,  <32.051472, 37.836189, 28.842606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378773, 37.608253, 28.872929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484426, -0.612506, 0.624634,
		-0.309509, -0.547830, -0.777230,
		0.818251, -0.569840, 0.075807,
		32.624249, 37.437302, 28.895670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801725, 37.181976, 28.889759>,  <32.051472, 37.836189, 28.842606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801725, 37.181976, 28.889759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.168438, 37.169125, 29.048998>,  <32.388466, 37.161415, 29.144541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.168438, 37.169125, 29.048998>,  <31.801725, 37.181976, 28.889759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168438, 37.169125, 29.048998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335852, -0.601440, 0.724895,
		0.216141, -0.798271, -0.562179,
		0.916780, -0.032129, 0.398097,
		32.443474, 37.159485, 29.168427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927914, 36.486568, 29.027964>,  <31.801725, 37.181976, 28.889759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927914, 36.486568, 29.027964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.190483, 36.680923, 29.258797>,  <32.348026, 36.797535, 29.397297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.190483, 36.680923, 29.258797>,  <31.927914, 36.486568, 29.027964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190483, 36.680923, 29.258797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293632, -0.540075, 0.788732,
		0.694900, -0.687193, -0.211848,
		0.656425, 0.485885, 0.577080,
		32.387409, 36.826691, 29.431921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248257, 35.971306, 29.527710>,  <31.927914, 36.486568, 29.027964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248257, 35.971306, 29.527710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.317608, 36.330170, 29.690212>,  <32.359219, 36.545486, 29.787714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.317608, 36.330170, 29.690212>,  <32.248257, 35.971306, 29.527710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317608, 36.330170, 29.690212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330131, -0.335694, 0.882226,
		0.927876, -0.287074, 0.237979,
		0.173376, 0.897161, 0.406255,
		32.369621, 36.599319, 29.812088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633911, 35.770172, 30.180523>,  <32.248257, 35.971306, 29.527710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633911, 35.770172, 30.180523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.478020, 36.138218, 30.196001>,  <32.384483, 36.359047, 30.205288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.478020, 36.138218, 30.196001>,  <32.633911, 35.770172, 30.180523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478020, 36.138218, 30.196001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422897, -0.216133, 0.880025,
		0.818089, 0.326606, 0.473348,
		-0.389728, 0.920117, 0.038695,
		32.361103, 36.414253, 30.207609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720776, 36.067005, 30.892290>,  <32.633911, 35.770172, 30.180523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720776, 36.067005, 30.892290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.453476, 36.328484, 30.750240>,  <32.293095, 36.485371, 30.665010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.453476, 36.328484, 30.750240>,  <32.720776, 36.067005, 30.892290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453476, 36.328484, 30.750240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463494, 0.007548, 0.886068,
		0.581903, 0.756716, 0.297942,
		-0.668252, 0.653701, -0.355126,
		32.252998, 36.524593, 30.643703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595303, 36.461887, 31.513950>,  <32.720776, 36.067005, 30.892290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595303, 36.461887, 31.513950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.283524, 36.529297, 31.272602>,  <32.096455, 36.569744, 31.127794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.283524, 36.529297, 31.272602>,  <32.595303, 36.461887, 31.513950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283524, 36.529297, 31.272602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595733, 0.098555, 0.797113,
		0.193799, 0.980758, 0.023577,
		-0.779451, 0.168525, -0.603370,
		32.049686, 36.579853, 31.091591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315105, 37.210705, 31.600851>,  <32.595303, 36.461887, 31.513950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315105, 37.210705, 31.600851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.041943, 36.961678, 31.447985>,  <31.878044, 36.812263, 31.356264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.041943, 36.961678, 31.447985>,  <32.315105, 37.210705, 31.600851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041943, 36.961678, 31.447985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597719, 0.175447, 0.782273,
		-0.419964, 0.762649, -0.491932,
		-0.682907, -0.622564, -0.382168,
		31.837070, 36.774910, 31.333334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700502, 37.568756, 31.657713>,  <32.315105, 37.210705, 31.600851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700502, 37.568756, 31.657713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.588545, 37.185688, 31.630804>,  <31.521370, 36.955849, 31.614658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.588545, 37.185688, 31.630804>,  <31.700502, 37.568756, 31.657713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588545, 37.185688, 31.630804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579962, 0.112827, 0.806793,
		-0.765051, 0.264832, -0.586993,
		-0.279893, -0.957671, -0.067274,
		31.504578, 36.898388, 31.610622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914677, 37.512421, 31.606409>,  <31.700502, 37.568756, 31.657713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914677, 37.512421, 31.606409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.170759, 37.299168, 31.827644>,  <31.324409, 37.171215, 31.960386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.170759, 37.299168, 31.827644>,  <30.914677, 37.512421, 31.606409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170759, 37.299168, 31.827644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559881, 0.169157, 0.811122,
		-0.525994, -0.828949, -0.190195,
		0.640206, -0.533131, 0.553088,
		31.362822, 37.139229, 31.993570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089808, 37.571690, 31.015013>,  <30.914677, 37.512421, 31.606409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089808, 37.571690, 31.015013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.918076, 37.210693, 31.028803>,  <30.815037, 36.994095, 31.037077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.918076, 37.210693, 31.028803>,  <31.089808, 37.571690, 31.015013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918076, 37.210693, 31.028803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812926, -0.369528, 0.450111,
		-0.393481, 0.221271, 0.892307,
		-0.429329, -0.902490, 0.034475,
		30.789276, 36.939945, 31.039145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960642, 38.336571, 30.958342>,  <31.089808, 37.571690, 31.015013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960642, 38.336571, 30.958342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.249981, 38.611984, 30.937588>,  <31.423584, 38.777233, 30.925135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.249981, 38.611984, 30.937588>,  <30.960642, 38.336571, 30.958342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249981, 38.611984, 30.937588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375631, 0.329345, -0.866275,
		-0.579370, 0.646108, 0.496865,
		0.723347, 0.688532, -0.051885,
		31.466986, 38.818542, 30.922022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621655, 38.903717, 30.824848>,  <30.960642, 38.336571, 30.958342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621655, 38.903717, 30.824848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.993986, 38.953758, 30.687496>,  <31.217384, 38.983784, 30.605085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.993986, 38.953758, 30.687496>,  <30.621655, 38.903717, 30.824848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993986, 38.953758, 30.687496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365449, 0.325209, -0.872173,
		0.002559, 0.937331, 0.348432,
		0.930828, 0.125102, -0.343379,
		31.273235, 38.991287, 30.584482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708740, 39.600117, 30.632881>,  <30.621655, 38.903717, 30.824848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708740, 39.600117, 30.632881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.969315, 39.379982, 30.423975>,  <31.125658, 39.247902, 30.298632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.969315, 39.379982, 30.423975>,  <30.708740, 39.600117, 30.632881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969315, 39.379982, 30.423975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320659, 0.424156, -0.846918,
		0.687612, 0.719181, 0.099840,
		0.651435, -0.550336, -0.522267,
		31.164745, 39.214882, 30.267296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964445, 40.083172, 30.096708>,  <30.708740, 39.600117, 30.632881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964445, 40.083172, 30.096708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.085184, 39.720509, 29.978821>,  <31.157627, 39.502911, 29.908089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.085184, 39.720509, 29.978821>,  <30.964445, 40.083172, 30.096708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085184, 39.720509, 29.978821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207042, 0.239419, -0.948584,
		0.930603, 0.347348, -0.115448,
		0.301849, -0.906658, -0.294719,
		31.175739, 39.448513, 29.890406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447414, 40.198956, 29.528622>,  <30.964445, 40.083172, 30.096708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447414, 40.198956, 29.528622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.371174, 39.806515, 29.515350>,  <31.325430, 39.571049, 29.507387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.371174, 39.806515, 29.515350>,  <31.447414, 40.198956, 29.528622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371174, 39.806515, 29.515350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220710, 0.075764, -0.972393,
		0.956535, -0.178016, -0.230981,
		-0.190601, -0.981107, -0.033181,
		31.313993, 39.512184, 29.505396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693483, 39.946754, 28.823050>,  <31.447414, 40.198956, 29.528622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693483, 39.946754, 28.823050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.415865, 39.680218, 28.932079>,  <31.249294, 39.520298, 28.997498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.415865, 39.680218, 28.932079>,  <31.693483, 39.946754, 28.823050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415865, 39.680218, 28.932079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382769, 0.020871, -0.923608,
		0.609747, -0.745357, -0.269539,
		-0.694044, -0.666338, 0.272573,
		31.207651, 39.480316, 29.013851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655931, 39.568810, 28.258350>,  <31.693483, 39.946754, 28.823050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655931, 39.568810, 28.258350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.321285, 39.492954, 28.463919>,  <31.120497, 39.447441, 28.587259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.321285, 39.492954, 28.463919>,  <31.655931, 39.568810, 28.258350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321285, 39.492954, 28.463919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546055, 0.214084, -0.809933,
		0.043571, -0.958231, -0.282658,
		-0.836615, -0.189636, 0.513919,
		31.070301, 39.436062, 28.618095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408268, 39.122032, 27.907789>,  <31.655931, 39.568810, 28.258350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408268, 39.122032, 27.907789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.109823, 39.272694, 28.127405>,  <30.930756, 39.363091, 28.259174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.109823, 39.272694, 28.127405>,  <31.408268, 39.122032, 27.907789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109823, 39.272694, 28.127405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463062, 0.298976, -0.834378,
		-0.478422, -0.876781, -0.048656,
		-0.746114, 0.376654, 0.549040,
		30.885988, 39.385689, 28.292118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756323, 38.839046, 27.722610>,  <31.408268, 39.122032, 27.907789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756323, 38.839046, 27.722610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.667650, 39.197083, 27.877365>,  <30.614447, 39.411903, 27.970217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.667650, 39.197083, 27.877365>,  <30.756323, 38.839046, 27.722610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667650, 39.197083, 27.877365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522406, 0.226002, -0.822202,
		-0.823378, -0.384377, 0.417498,
		-0.221680, 0.895086, 0.386885,
		30.601147, 39.465607, 27.993431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975897, 38.877705, 27.676157>,  <30.756323, 38.839046, 27.722610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975897, 38.877705, 27.676157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.154678, 39.235523, 27.677662>,  <30.261948, 39.450214, 27.678564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.154678, 39.235523, 27.677662>,  <29.975897, 38.877705, 27.676157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154678, 39.235523, 27.677662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377225, 0.192288, -0.905940,
		-0.811131, 0.403494, 0.423390,
		0.446954, 0.894549, 0.003763,
		30.288765, 39.503887, 27.678791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482241, 39.260494, 27.413776>,  <29.975897, 38.877705, 27.676157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482241, 39.260494, 27.413776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.816336, 39.475216, 27.366081>,  <30.016792, 39.604050, 27.337463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.816336, 39.475216, 27.366081>,  <29.482241, 39.260494, 27.413776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816336, 39.475216, 27.366081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372023, 0.391946, -0.841414,
		-0.404941, 0.747140, 0.527072,
		0.835238, 0.536806, -0.119238,
		30.066906, 39.636257, 27.330309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236002, 39.751873, 27.018024>,  <29.482241, 39.260494, 27.413776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236002, 39.751873, 27.018024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.625214, 39.842255, 26.999434>,  <29.858740, 39.896484, 26.988279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.625214, 39.842255, 26.999434>,  <29.236002, 39.751873, 27.018024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625214, 39.842255, 26.999434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168685, 0.559488, -0.811492,
		-0.157356, 0.797445, 0.582513,
		0.973029, 0.225954, -0.046479,
		29.917122, 39.910042, 26.985491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404535, 40.556446, 27.003155>,  <29.236002, 39.751873, 27.018024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404535, 40.556446, 27.003155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.721464, 40.378590, 26.836052>,  <29.911621, 40.271877, 26.735790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.721464, 40.378590, 26.836052>,  <29.404535, 40.556446, 27.003155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721464, 40.378590, 26.836052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270072, 0.358376, -0.893660,
		0.547070, 0.820892, 0.163865,
		0.792323, -0.444639, -0.417757,
		29.959162, 40.245197, 26.710726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706015, 41.015816, 26.524599>,  <29.404535, 40.556446, 27.003155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706015, 41.015816, 26.524599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.836700, 40.656734, 26.406357>,  <29.915112, 40.441284, 26.335411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.836700, 40.656734, 26.406357>,  <29.706015, 41.015816, 26.524599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.836700, 40.656734, 26.406357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255018, 0.217434, -0.942172,
		0.910067, 0.383207, -0.157891,
		0.326716, -0.897705, -0.295604,
		29.934715, 40.387424, 26.317675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344799, 41.160252, 26.010206>,  <29.706015, 41.015816, 26.524599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344799, 41.160252, 26.010206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.215601, 40.787785, 25.942568>,  <30.138083, 40.564304, 25.901985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.215601, 40.787785, 25.942568>,  <30.344799, 41.160252, 26.010206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215601, 40.787785, 25.942568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043869, 0.193210, -0.980176,
		0.945384, -0.309174, -0.103255,
		-0.322995, -0.931172, -0.169095,
		30.118702, 40.508434, 25.891840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772781, 40.853508, 25.427097>,  <30.344799, 41.160252, 26.010206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772781, 40.853508, 25.427097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.424608, 40.663010, 25.476944>,  <30.215704, 40.548710, 25.506851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.424608, 40.663010, 25.476944>,  <30.772781, 40.853508, 25.427097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424608, 40.663010, 25.476944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207196, 0.124799, -0.970307,
		0.446557, -0.870408, -0.207307,
		-0.870435, -0.476250, 0.124615,
		30.163477, 40.520134, 25.514328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806564, 40.510849, 24.802759>,  <30.772781, 40.853508, 25.427097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806564, 40.510849, 24.802759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.429764, 40.472668, 24.931459>,  <30.203684, 40.449760, 25.008678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.429764, 40.472668, 24.931459>,  <30.806564, 40.510849, 24.802759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429764, 40.472668, 24.931459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335151, 0.217509, -0.916713,
		0.017515, -0.971380, -0.236883,
		-0.942002, -0.095448, 0.321749,
		30.147163, 40.444035, 25.027985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478132, 40.120808, 24.263117>,  <30.806564, 40.510849, 24.802759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478132, 40.120808, 24.263117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.164881, 40.284264, 24.450615>,  <29.976931, 40.382336, 24.563114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.164881, 40.284264, 24.450615>,  <30.478132, 40.120808, 24.263117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164881, 40.284264, 24.450615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412424, 0.222852, -0.883314,
		-0.465419, -0.885070, -0.005988,
		-0.783129, 0.408641, 0.468744,
		29.929941, 40.406857, 24.591238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789421, 39.781841, 23.928936>,  <30.478132, 40.120808, 24.263117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789421, 39.781841, 23.928936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.710194, 40.122898, 24.122335>,  <29.662657, 40.327534, 24.238375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.710194, 40.122898, 24.122335>,  <29.789421, 39.781841, 23.928936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710194, 40.122898, 24.122335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605358, 0.281548, -0.744494,
		-0.770916, -0.440148, 0.460389,
		-0.198066, 0.852643, 0.483497,
		29.650774, 40.378693, 24.267385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024868, 39.987793, 23.732534>,  <29.789421, 39.781841, 23.928936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024868, 39.987793, 23.732534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.235899, 40.312042, 23.834162>,  <29.362518, 40.506592, 23.895138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.235899, 40.312042, 23.834162>,  <29.024868, 39.987793, 23.732534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235899, 40.312042, 23.834162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400349, 0.501037, -0.767256,
		-0.749253, 0.303072, 0.588869,
		0.527579, 0.810623, 0.254069,
		29.394173, 40.555229, 23.910383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500854, 40.400021, 23.948711>,  <29.024868, 39.987793, 23.732534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500854, 40.400021, 23.948711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.817722, 40.615231, 23.833471>,  <29.007843, 40.744354, 23.764328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.817722, 40.615231, 23.833471>,  <28.500854, 40.400021, 23.948711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817722, 40.615231, 23.833471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577858, 0.509350, -0.637686,
		-0.196346, 0.671635, 0.714391,
		0.792167, 0.538023, -0.288101,
		29.055372, 40.776638, 23.747042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194077, 40.967480, 23.744267>,  <28.500854, 40.400021, 23.948711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194077, 40.967480, 23.744267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.558075, 41.034828, 23.592709>,  <28.776474, 41.075237, 23.501774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.558075, 41.034828, 23.592709>,  <28.194077, 40.967480, 23.744267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558075, 41.034828, 23.592709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410974, 0.487206, -0.770540,
		0.054867, 0.856903, 0.512549,
		0.909995, 0.168367, -0.378896,
		28.831074, 41.085339, 23.479040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185946, 41.681835, 23.506149>,  <28.194077, 40.967480, 23.744267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185946, 41.681835, 23.506149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.507063, 41.521912, 23.329210>,  <28.699734, 41.425957, 23.223047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.507063, 41.521912, 23.329210>,  <28.185946, 41.681835, 23.506149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507063, 41.521912, 23.329210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272960, 0.413144, -0.868795,
		0.530107, 0.818208, 0.222537,
		0.802795, -0.399810, -0.442348,
		28.747902, 41.401970, 23.196507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488680, 42.265656, 23.094744>,  <28.185946, 41.681835, 23.506149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488680, 42.265656, 23.094744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.613562, 41.917603, 22.942223>,  <28.688492, 41.708771, 22.850710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.613562, 41.917603, 22.942223>,  <28.488680, 42.265656, 23.094744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613562, 41.917603, 22.942223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285679, 0.296797, -0.911207,
		0.906044, 0.393414, -0.155918,
		0.312206, -0.870136, -0.381301,
		28.707224, 41.656563, 22.827833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863306, 42.431477, 22.547354>,  <28.488680, 42.265656, 23.094744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863306, 42.431477, 22.547354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.747660, 42.057636, 22.464472>,  <28.678272, 41.833332, 22.414743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.747660, 42.057636, 22.464472>,  <28.863306, 42.431477, 22.547354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747660, 42.057636, 22.464472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202321, 0.271215, -0.941014,
		0.935669, -0.230142, -0.267503,
		-0.289118, -0.934600, -0.207205,
		28.660925, 41.777256, 22.402309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087561, 42.277027, 21.892559>,  <28.863306, 42.431477, 22.547354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087561, 42.277027, 21.892559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.782070, 42.026527, 21.955210>,  <28.598776, 41.876228, 21.992800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.782070, 42.026527, 21.955210>,  <29.087561, 42.277027, 21.892559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782070, 42.026527, 21.955210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326189, 0.165001, -0.930793,
		0.557067, -0.761960, -0.330292,
		-0.763726, -0.626252, 0.156627,
		28.552952, 41.838654, 22.002197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756704, 41.898006, 21.872904>,  <29.087561, 42.277027, 21.892559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756704, 41.898006, 21.872904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.994320, 42.157677, 21.682877>,  <30.136890, 42.313477, 21.568861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.994320, 42.157677, 21.682877>,  <29.756704, 41.898006, 21.872904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994320, 42.157677, 21.682877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480280, 0.187540, 0.856831,
		0.645326, -0.737158, -0.200379,
		0.594041, 0.649174, -0.475067,
		30.172533, 42.352428, 21.540356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443953, 41.790569, 22.117908>,  <29.756704, 41.898006, 21.872904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443953, 41.790569, 22.117908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.414106, 42.165779, 21.982531>,  <30.396198, 42.390903, 21.901304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.414106, 42.165779, 21.982531>,  <30.443953, 41.790569, 22.117908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414106, 42.165779, 21.982531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424148, 0.337013, 0.840548,
		0.902513, -0.080830, -0.423008,
		-0.074618, 0.938024, -0.338443,
		30.391722, 42.447186, 21.880999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051336, 42.080608, 22.373629>,  <30.443953, 41.790569, 22.117908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051336, 42.080608, 22.373629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.807182, 42.386971, 22.292812>,  <30.660690, 42.570789, 22.244324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.807182, 42.386971, 22.292812>,  <31.051336, 42.080608, 22.373629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807182, 42.386971, 22.292812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388747, 0.511889, 0.766058,
		0.690150, 0.389048, -0.610193,
		-0.610385, 0.765906, -0.202038,
		30.624067, 42.616741, 22.232201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526121, 42.708767, 22.381449>,  <31.051336, 42.080608, 22.373629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526121, 42.708767, 22.381449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.152189, 42.829838, 22.455727>,  <30.927830, 42.902481, 22.500294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.152189, 42.829838, 22.455727>,  <31.526121, 42.708767, 22.381449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152189, 42.829838, 22.455727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311991, 0.450363, 0.836562,
		0.169575, 0.839977, -0.515444,
		-0.934829, 0.302674, 0.185695,
		30.871740, 42.920639, 22.511435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557421, 43.370438, 22.682777>,  <31.526121, 42.708767, 22.381449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557421, 43.370438, 22.682777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.177246, 43.297573, 22.783560>,  <30.949141, 43.253853, 22.844030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.177246, 43.297573, 22.783560>,  <31.557421, 43.370438, 22.682777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177246, 43.297573, 22.783560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141501, 0.468153, 0.872245,
		-0.276848, 0.864667, -0.419173,
		-0.950438, -0.182166, 0.251958,
		30.892115, 43.242924, 22.859148>
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
