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
	<24.187164, 34.951969, 34.610016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.231642, 35.144516, 34.957790>,  <24.258327, 35.260044, 35.166454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.231642, 35.144516, 34.957790>,  <24.187164, 34.951969, 34.610016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.231642, 35.144516, 34.957790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949088, 0.208024, -0.236555,
		-0.294733, 0.851476, -0.433730,
		0.111194, 0.481368, 0.869437,
		24.264999, 35.288925, 35.218620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.682299, 35.456959, 34.419250>,  <24.187164, 34.951969, 34.610016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.682299, 35.456959, 34.419250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.673317, 35.432705, 34.818413>,  <24.667927, 35.418152, 35.057911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.673317, 35.432705, 34.818413>,  <24.682299, 35.456959, 34.419250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.673317, 35.432705, 34.818413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999704, -0.010717, 0.021845,
		0.009370, 0.998102, 0.060860,
		-0.022456, -0.060638, 0.997907,
		24.666580, 35.414513, 35.117786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.345398, 35.465420, 34.512867>,  <24.682299, 35.456959, 34.419250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.345398, 35.465420, 34.512867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295906, 35.435368, 34.908653>,  <25.266211, 35.417336, 35.146126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295906, 35.435368, 34.908653>,  <25.345398, 35.465420, 34.512867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.295906, 35.435368, 34.908653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943899, -0.316575, 0.093996,
		0.306178, 0.945588, 0.110087,
		-0.123732, -0.075131, 0.989467,
		25.258787, 35.412827, 35.205494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.036070, 35.404789, 34.751923>,  <25.345398, 35.465420, 34.512867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.036070, 35.404789, 34.751923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831240, 35.332302, 35.087765>,  <25.708342, 35.288811, 35.289268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831240, 35.332302, 35.087765>,  <26.036070, 35.404789, 34.751923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831240, 35.332302, 35.087765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806614, -0.437419, 0.397541,
		0.295218, 0.880809, 0.370164,
		-0.512075, -0.181218, 0.839607,
		25.677618, 35.277935, 35.339645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304461, 35.731270, 35.463070>,  <26.036070, 35.404789, 34.751923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304461, 35.731270, 35.463070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.142334, 35.377804, 35.556763>,  <26.045059, 35.165726, 35.612976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.142334, 35.377804, 35.556763>,  <26.304461, 35.731270, 35.463070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.142334, 35.377804, 35.556763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884855, -0.314846, 0.343370,
		-0.229677, 0.346433, 0.909524,
		-0.405315, -0.883661, 0.234230,
		26.020741, 35.112705, 35.627033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511198, 35.484367, 36.143379>,  <26.304461, 35.731270, 35.463070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.511198, 35.484367, 36.143379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.441875, 35.170803, 35.904903>,  <26.400282, 34.982662, 35.761818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.441875, 35.170803, 35.904903>,  <26.511198, 35.484367, 36.143379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.441875, 35.170803, 35.904903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946423, -0.300044, 0.119405,
		-0.272486, -0.543553, 0.793915,
		-0.173307, -0.783915, -0.596189,
		26.389883, 34.935627, 35.726048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274269, 35.755501, 36.356419>,  <26.511198, 35.484367, 36.143379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274269, 35.755501, 36.356419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038803, 35.806011, 36.037037>,  <26.897524, 35.836319, 35.845409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038803, 35.806011, 36.037037>,  <27.274269, 35.755501, 36.356419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038803, 35.806011, 36.037037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798272, 0.246499, -0.549545,
		0.127423, -0.960881, -0.245909,
		-0.588664, 0.126278, -0.798455,
		26.862204, 35.843895, 35.797501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579435, 35.347610, 35.819023>,  <27.274269, 35.755501, 36.356419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579435, 35.347610, 35.819023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.358913, 35.644516, 35.666653>,  <27.226601, 35.822659, 35.575230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.358913, 35.644516, 35.666653>,  <27.579435, 35.347610, 35.819023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.358913, 35.644516, 35.666653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753836, 0.247549, -0.608648,
		-0.357481, -0.622705, -0.696022,
		-0.551307, 0.742266, -0.380923,
		27.193521, 35.867195, 35.552376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080713, 34.929874, 35.431576>,  <27.579435, 35.347610, 35.819023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.080713, 34.929874, 35.431576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291283, 34.808773, 35.113781>,  <28.417625, 34.736111, 34.923103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291283, 34.808773, 35.113781>,  <28.080713, 34.929874, 35.431576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291283, 34.808773, 35.113781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338027, -0.931952, 0.131160,
		-0.780137, 0.199514, -0.592942,
		0.526426, -0.302753, -0.794491,
		28.449211, 34.717949, 34.875435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623507, 34.671928, 35.060001>,  <28.080713, 34.929874, 35.431576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.623507, 34.671928, 35.060001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968420, 34.510075, 34.938190>,  <28.175367, 34.412960, 34.865105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968420, 34.510075, 34.938190>,  <27.623507, 34.671928, 35.060001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968420, 34.510075, 34.938190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407139, -0.911502, 0.058323,
		-0.301177, 0.073694, -0.950716,
		0.862282, -0.404639, -0.304527,
		28.227104, 34.388683, 34.846832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432455, 34.146164, 34.604015>,  <27.623507, 34.671928, 35.060001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432455, 34.146164, 34.604015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807350, 34.022152, 34.667843>,  <28.032288, 33.947742, 34.706139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807350, 34.022152, 34.667843>,  <27.432455, 34.146164, 34.604015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807350, 34.022152, 34.667843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327283, -0.940052, 0.095853,
		0.120288, -0.142062, -0.982522,
		0.937239, -0.310032, 0.159572,
		28.088522, 33.929142, 34.715714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574778, 33.643887, 34.099674>,  <27.432455, 34.146164, 34.604015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.574778, 33.643887, 34.099674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.810751, 33.573196, 34.414825>,  <27.952335, 33.530785, 34.603916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.810751, 33.573196, 34.414825>,  <27.574778, 33.643887, 34.099674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.810751, 33.573196, 34.414825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227933, -0.972519, -0.047469,
		0.774613, -0.151579, -0.614002,
		0.589933, -0.176721, 0.787876,
		27.987730, 33.520180, 34.651188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218395, 33.365246, 34.775318>,  <27.574778, 33.643887, 34.099674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218395, 33.365246, 34.775318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948009, 33.421181, 35.064735>,  <26.785778, 33.454742, 35.238388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948009, 33.421181, 35.064735>,  <27.218395, 33.365246, 34.775318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948009, 33.421181, 35.064735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658107, -0.327270, 0.678078,
		0.331614, 0.934527, 0.129196,
		-0.675964, 0.139835, 0.723546,
		26.745220, 33.463131, 35.281799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.555979, 32.795582, 35.082710>,  <27.218395, 33.365246, 34.775318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.555979, 32.795582, 35.082710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884663, 32.731621, 34.863907>,  <28.081873, 32.693245, 34.732624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884663, 32.731621, 34.863907>,  <27.555979, 32.795582, 35.082710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884663, 32.731621, 34.863907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391908, 0.855405, 0.338658,
		0.413763, -0.492657, 0.765564,
		0.821710, -0.159907, -0.547012,
		28.131176, 32.683647, 34.699802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171259, 32.911713, 35.578213>,  <27.555979, 32.795582, 35.082710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171259, 32.911713, 35.578213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234596, 32.971134, 35.187756>,  <28.272598, 33.006786, 34.953480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234596, 32.971134, 35.187756>,  <28.171259, 32.911713, 35.578213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234596, 32.971134, 35.187756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230376, 0.955773, 0.182826,
		0.960133, -0.253829, 0.117114,
		0.158341, 0.148557, -0.976145,
		28.282099, 33.015701, 34.894913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688589, 33.465221, 35.525639>,  <28.171259, 32.911713, 35.578213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688589, 33.465221, 35.525639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562269, 33.436291, 35.147213>,  <28.486477, 33.418934, 34.920158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562269, 33.436291, 35.147213>,  <28.688589, 33.465221, 35.525639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562269, 33.436291, 35.147213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204388, 0.968497, -0.142264,
		0.926551, -0.238291, -0.291068,
		-0.315798, -0.072324, -0.946066,
		28.467529, 33.414593, 34.863392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243998, 33.470417, 34.918518>,  <28.688589, 33.465221, 35.525639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243998, 33.470417, 34.918518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880779, 33.618496, 34.840130>,  <28.662848, 33.707344, 34.793098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880779, 33.618496, 34.840130>,  <29.243998, 33.470417, 34.918518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880779, 33.618496, 34.840130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404683, 0.896088, -0.182368,
		0.108095, -0.244905, -0.963502,
		-0.908046, 0.370200, -0.195972,
		28.608366, 33.729557, 34.781338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292093, 33.841785, 34.262165>,  <29.243998, 33.470417, 34.918518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292093, 33.841785, 34.262165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.985214, 34.001778, 34.462734>,  <28.801086, 34.097771, 34.583076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.985214, 34.001778, 34.462734>,  <29.292093, 33.841785, 34.262165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985214, 34.001778, 34.462734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301312, 0.914867, -0.268754,
		-0.566233, -0.055102, -0.822401,
		-0.767197, 0.399977, 0.501425,
		28.755054, 34.121769, 34.613163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218199, 34.321079, 33.848339>,  <29.292093, 33.841785, 34.262165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218199, 34.321079, 33.848339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994144, 34.425610, 34.162781>,  <28.859713, 34.488327, 34.351444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994144, 34.425610, 34.162781>,  <29.218199, 34.321079, 33.848339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994144, 34.425610, 34.162781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241653, 0.959212, -0.146683,
		-0.792372, 0.107802, -0.600437,
		-0.560134, 0.261325, 0.786104,
		28.826105, 34.504005, 34.398613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855211, 34.393654, 33.370037>,  <29.218199, 34.321079, 33.848339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855211, 34.393654, 33.370037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968203, 34.202019, 33.702465>,  <30.035997, 34.087036, 33.901920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968203, 34.202019, 33.702465>,  <29.855211, 34.393654, 33.370037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968203, 34.202019, 33.702465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426722, -0.713158, -0.556160,
		0.859136, 0.511739, 0.002987,
		0.282479, -0.479091, 0.831070,
		30.052946, 34.058292, 33.951786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588118, 34.404118, 33.431084>,  <29.855211, 34.393654, 33.370037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588118, 34.404118, 33.431084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406622, 34.092064, 33.603367>,  <30.297726, 33.904831, 33.706738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406622, 34.092064, 33.603367>,  <30.588118, 34.404118, 33.431084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406622, 34.092064, 33.603367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455715, -0.618482, -0.640159,
		0.765798, -0.094182, 0.636148,
		-0.453737, -0.780135, 0.430712,
		30.270500, 33.858025, 33.732582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097073, 33.895988, 33.682816>,  <30.588118, 34.404118, 33.431084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097073, 33.895988, 33.682816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743734, 33.730629, 33.594448>,  <30.531733, 33.631413, 33.541428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743734, 33.730629, 33.594448>,  <31.097073, 33.895988, 33.682816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743734, 33.730629, 33.594448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466621, -0.730970, -0.497944,
		0.044364, -0.542941, 0.838598,
		-0.883344, -0.413399, -0.220918,
		30.478731, 33.606609, 33.528172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103672, 33.128746, 33.850677>,  <31.097073, 33.895988, 33.682816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103672, 33.128746, 33.850677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878698, 33.273464, 33.553284>,  <30.743713, 33.360294, 33.374847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878698, 33.273464, 33.553284>,  <31.103672, 33.128746, 33.850677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878698, 33.273464, 33.553284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487300, -0.581395, -0.651551,
		-0.667986, -0.728756, 0.150696,
		-0.562435, 0.361793, -0.743487,
		30.709969, 33.382004, 33.330238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181984, 32.676464, 33.320072>,  <31.103672, 33.128746, 33.850677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181984, 32.676464, 33.320072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972902, 32.938370, 33.101692>,  <30.847452, 33.095512, 32.970665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972902, 32.938370, 33.101692>,  <31.181984, 32.676464, 33.320072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972902, 32.938370, 33.101692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405350, -0.372493, -0.834830,
		-0.749979, -0.657672, -0.070705,
		-0.522707, 0.654765, -0.545949,
		30.816090, 33.134800, 32.937908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962969, 32.266178, 32.748039>,  <31.181984, 32.676464, 33.320072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962969, 32.266178, 32.748039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019543, 32.658737, 32.696098>,  <31.053486, 32.894272, 32.664932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019543, 32.658737, 32.696098>,  <30.962969, 32.266178, 32.748039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019543, 32.658737, 32.696098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664299, -0.191342, -0.722561,
		-0.733964, 0.015931, -0.679002,
		0.141433, 0.981394, -0.129855,
		31.061972, 32.953156, 32.657143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755674, 32.452461, 32.004219>,  <30.962969, 32.266178, 32.748039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755674, 32.452461, 32.004219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016945, 32.734962, 32.113449>,  <31.173706, 32.904465, 32.178986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016945, 32.734962, 32.113449>,  <30.755674, 32.452461, 32.004219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016945, 32.734962, 32.113449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565360, -0.214965, -0.796340,
		-0.503716, 0.674535, -0.539697,
		0.653176, 0.706253, 0.273073,
		31.212898, 32.946838, 32.195370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862720, 33.129219, 31.590599>,  <30.755674, 32.452461, 32.004219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862720, 33.129219, 31.590599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176247, 32.956738, 31.769350>,  <31.364363, 32.853249, 31.876600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176247, 32.956738, 31.769350>,  <30.862720, 33.129219, 31.590599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176247, 32.956738, 31.769350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381064, -0.234223, -0.894388,
		0.490331, 0.871324, -0.019272,
		0.783815, -0.431202, 0.446877,
		31.411390, 32.827377, 31.903414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531361, 33.318893, 31.387213>,  <30.862720, 33.129219, 31.590599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531361, 33.318893, 31.387213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589638, 32.940163, 31.501959>,  <31.624605, 32.712925, 31.570807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589638, 32.940163, 31.501959>,  <31.531361, 33.318893, 31.387213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589638, 32.940163, 31.501959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488811, -0.183204, -0.852936,
		0.860138, 0.264492, 0.436128,
		0.145694, -0.946826, 0.286867,
		31.633347, 32.656116, 31.588018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373711, 33.100208, 31.318623>,  <31.531361, 33.318893, 31.387213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373711, 33.100208, 31.318623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132767, 32.789524, 31.245003>,  <31.988199, 32.603111, 31.200830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132767, 32.789524, 31.245003>,  <32.373711, 33.100208, 31.318623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132767, 32.789524, 31.245003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521798, -0.208666, -0.827155,
		0.604058, -0.594285, 0.530980,
		-0.602363, -0.776714, -0.184051,
		31.952057, 32.556511, 31.189787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509266, 32.778362, 30.660870>,  <32.373711, 33.100208, 31.318623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509266, 32.778362, 30.660870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896328, 32.751854, 30.563501>,  <33.128567, 32.735950, 30.505081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896328, 32.751854, 30.563501>,  <32.509266, 32.778362, 30.660870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896328, 32.751854, 30.563501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056741, -0.997331, 0.045954,
		-0.245814, -0.030656, -0.968832,
		0.967655, -0.066268, -0.243418,
		33.186623, 32.731972, 30.490477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694260, 32.520042, 29.961485>,  <32.509266, 32.778362, 30.660870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694260, 32.520042, 29.961485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988194, 32.441223, 30.221081>,  <33.164555, 32.393932, 30.376839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988194, 32.441223, 30.221081>,  <32.694260, 32.520042, 29.961485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988194, 32.441223, 30.221081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158669, -0.980259, -0.117965,
		0.659422, -0.016289, -0.751596,
		0.734838, -0.197044, 0.648989,
		33.208645, 32.382111, 30.415777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935890, 31.885895, 29.762674>,  <32.694260, 32.520042, 29.961485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935890, 31.885895, 29.762674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101006, 31.939396, 30.123055>,  <33.200077, 31.971497, 30.339283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101006, 31.939396, 30.123055>,  <32.935890, 31.885895, 29.762674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101006, 31.939396, 30.123055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051033, -0.991001, 0.123742,
		0.909395, -0.005102, -0.415904,
		0.412792, 0.133755, 0.900951,
		33.224842, 31.979523, 30.393339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600513, 31.449436, 29.835276>,  <32.935890, 31.885895, 29.762674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600513, 31.449436, 29.835276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461792, 31.521278, 30.203508>,  <33.378559, 31.564383, 30.424448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461792, 31.521278, 30.203508>,  <33.600513, 31.449436, 29.835276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461792, 31.521278, 30.203508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131381, -0.962516, 0.237281,
		0.928689, 0.203238, 0.310211,
		-0.346807, 0.179604, 0.920580,
		33.357750, 31.575159, 30.479683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946411, 31.070391, 30.126049>,  <33.600513, 31.449436, 29.835276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946411, 31.070391, 30.126049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651936, 31.141453, 30.387266>,  <33.475250, 31.184090, 30.543997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651936, 31.141453, 30.387266>,  <33.946411, 31.070391, 30.126049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651936, 31.141453, 30.387266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017177, -0.969525, 0.244390,
		0.676561, 0.168699, 0.716803,
		-0.736186, 0.177657, 0.653045,
		33.431080, 31.194750, 30.583179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061813, 31.219080, 30.892397>,  <33.946411, 31.070391, 30.126049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061813, 31.219080, 30.892397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688133, 31.228956, 31.034754>,  <33.463924, 31.234882, 31.120169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688133, 31.228956, 31.034754>,  <34.061813, 31.219080, 30.892397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688133, 31.228956, 31.034754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092328, -0.980347, -0.174341,
		0.344595, -0.195728, 0.918120,
		-0.934200, 0.024692, 0.355894,
		33.407875, 31.236364, 31.141521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061314, 30.588392, 31.321138>,  <34.061813, 31.219080, 30.892397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061314, 30.588392, 31.321138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686466, 30.695475, 31.231577>,  <33.461555, 30.759724, 31.177839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686466, 30.695475, 31.231577>,  <34.061314, 30.588392, 31.321138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686466, 30.695475, 31.231577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224100, -0.953405, -0.201984,
		-0.267544, -0.139107, 0.953451,
		-0.937123, 0.267708, -0.223904,
		33.405331, 30.775787, 31.164406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501083, 30.247381, 31.760519>,  <34.061314, 30.588392, 31.321138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501083, 30.247381, 31.760519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327065, 30.347994, 31.414696>,  <33.222652, 30.408361, 31.207201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327065, 30.347994, 31.414696>,  <33.501083, 30.247381, 31.760519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327065, 30.347994, 31.414696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346293, -0.933077, -0.097208,
		-0.831151, 0.257100, 0.493039,
		-0.435050, 0.251531, -0.864560,
		33.196548, 30.423452, 31.155327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921696, 29.812033, 31.705647>,  <33.501083, 30.247381, 31.760519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921696, 29.812033, 31.705647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959778, 29.945515, 31.330503>,  <32.982628, 30.025604, 31.105417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959778, 29.945515, 31.330503>,  <32.921696, 29.812033, 31.705647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959778, 29.945515, 31.330503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201628, -0.916145, -0.346446,
		-0.974824, 0.222080, -0.019934,
		0.095201, 0.333705, -0.937858,
		32.988338, 30.045626, 31.049147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557823, 29.363081, 31.430738>,  <32.921696, 29.812033, 31.705647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557823, 29.363081, 31.430738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708282, 29.537001, 31.103455>,  <32.798557, 29.641352, 30.907085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708282, 29.537001, 31.103455>,  <32.557823, 29.363081, 31.430738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708282, 29.537001, 31.103455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128303, -0.850111, -0.510734,
		-0.917634, 0.297090, -0.263981,
		0.376147, 0.434797, -0.818208,
		32.821125, 29.667440, 30.857992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957966, 28.853601, 31.224279>,  <32.557823, 29.363081, 31.430738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957966, 28.853601, 31.224279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948555, 28.706430, 30.852457>,  <32.942909, 28.618128, 30.629364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948555, 28.706430, 30.852457>,  <32.957966, 28.853601, 31.224279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948555, 28.706430, 30.852457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184374, 0.912268, -0.365750,
		0.982574, -0.179992, 0.046372,
		-0.023528, -0.367926, -0.929557,
		32.941498, 28.596052, 30.573589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555099, 28.912750, 30.782272>,  <32.957966, 28.853601, 31.224279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555099, 28.912750, 30.782272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231194, 28.938643, 30.549002>,  <33.036850, 28.954178, 30.409039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231194, 28.938643, 30.549002>,  <33.555099, 28.912750, 30.782272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231194, 28.938643, 30.549002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158857, 0.980963, -0.111693,
		0.564844, -0.183086, -0.804631,
		-0.809763, 0.064732, -0.583176,
		32.988266, 28.958061, 30.374048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724957, 29.303940, 30.204580>,  <33.555099, 28.912750, 30.782272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724957, 29.303940, 30.204580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335812, 29.373695, 30.265404>,  <33.102325, 29.415548, 30.301897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335812, 29.373695, 30.265404>,  <33.724957, 29.303940, 30.204580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335812, 29.373695, 30.265404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178438, 0.983861, 0.013312,
		-0.147281, 0.040083, -0.988282,
		-0.972866, 0.174387, 0.152057,
		33.043953, 29.426012, 30.311020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577873, 29.851274, 29.840279>,  <33.724957, 29.303940, 30.204580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577873, 29.851274, 29.840279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277763, 29.852093, 30.104729>,  <33.097698, 29.852583, 30.263399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277763, 29.852093, 30.104729>,  <33.577873, 29.851274, 29.840279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277763, 29.852093, 30.104729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012695, 0.999855, 0.011315,
		-0.661006, 0.016882, -0.750191,
		-0.750273, 0.002045, 0.661124,
		33.052681, 29.852707, 30.303066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119030, 30.421284, 29.808809>,  <33.577873, 29.851274, 29.840279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119030, 30.421284, 29.808809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076176, 30.315689, 30.192232>,  <33.050461, 30.252333, 30.422285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076176, 30.315689, 30.192232>,  <33.119030, 30.421284, 29.808809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076176, 30.315689, 30.192232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042670, 0.964439, 0.260839,
		-0.993328, -0.012955, -0.114595,
		-0.107140, -0.263989, 0.958557,
		33.044033, 30.236492, 30.479799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584572, 30.849958, 30.094803>,  <33.119030, 30.421284, 29.808809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584572, 30.849958, 30.094803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788994, 30.719292, 30.412825>,  <32.911648, 30.640892, 30.603638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788994, 30.719292, 30.412825>,  <32.584572, 30.849958, 30.094803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788994, 30.719292, 30.412825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049308, 0.934586, 0.352303,
		-0.858135, -0.140842, 0.493728,
		0.511051, -0.326668, 0.795057,
		32.942310, 30.621292, 30.651342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175411, 31.032600, 30.740835>,  <32.584572, 30.849958, 30.094803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175411, 31.032600, 30.740835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562801, 30.991615, 30.831659>,  <32.795235, 30.967024, 30.886154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562801, 30.991615, 30.831659>,  <32.175411, 31.032600, 30.740835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562801, 30.991615, 30.831659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042568, 0.966158, 0.254414,
		-0.245445, -0.236728, 0.940062,
		0.968475, -0.102461, 0.227062,
		32.853344, 30.960876, 30.899778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395626, 31.475805, 31.323990>,  <32.175411, 31.032600, 30.740835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395626, 31.475805, 31.323990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733692, 31.388371, 31.128883>,  <32.936531, 31.335909, 31.011820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733692, 31.388371, 31.128883>,  <32.395626, 31.475805, 31.323990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733692, 31.388371, 31.128883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189639, 0.975817, -0.108713,
		0.499734, -0.000620, 0.866178,
		0.845164, -0.218589, -0.487767,
		32.987240, 31.322794, 30.982553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907589, 31.937021, 31.614256>,  <32.395626, 31.475805, 31.323990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907589, 31.937021, 31.614256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033794, 31.815992, 31.254499>,  <33.109516, 31.743376, 31.038647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033794, 31.815992, 31.254499>,  <32.907589, 31.937021, 31.614256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033794, 31.815992, 31.254499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273516, 0.936574, -0.219131,
		0.908648, -0.176860, 0.378259,
		0.315512, -0.302573, -0.899390,
		33.128448, 31.725220, 30.984682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633789, 32.078377, 31.603350>,  <32.907589, 31.937021, 31.614256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633789, 32.078377, 31.603350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485302, 32.064903, 31.232176>,  <33.396210, 32.056820, 31.009472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485302, 32.064903, 31.232176>,  <33.633789, 32.078377, 31.603350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485302, 32.064903, 31.232176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387672, 0.902455, -0.187845,
		0.843746, -0.429466, -0.321948,
		-0.371217, -0.033683, -0.927935,
		33.373936, 32.054798, 30.953794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207531, 32.249069, 31.091124>,  <33.633789, 32.078377, 31.603350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207531, 32.249069, 31.091124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832378, 32.332661, 30.980345>,  <33.607285, 32.382816, 30.913877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832378, 32.332661, 30.980345>,  <34.207531, 32.249069, 31.091124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832378, 32.332661, 30.980345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280718, 0.926172, -0.251797,
		0.203883, -0.313901, -0.927307,
		-0.937885, 0.208975, -0.276949,
		33.551014, 32.395351, 30.897261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470497, 32.444706, 30.336044>,  <34.207531, 32.249069, 31.091124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470497, 32.444706, 30.336044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087109, 32.545250, 30.389931>,  <33.857075, 32.605576, 30.422262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087109, 32.545250, 30.389931>,  <34.470497, 32.444706, 30.336044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087109, 32.545250, 30.389931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179437, 0.898699, -0.400179,
		-0.221659, -0.359388, -0.906481,
		-0.958473, 0.251359, 0.134717,
		33.799568, 32.620659, 30.430346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010773, 32.516247, 29.693075>,  <34.470497, 32.444706, 30.336044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010773, 32.516247, 29.693075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931690, 32.771091, 29.991068>,  <33.884243, 32.924000, 30.169863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931690, 32.771091, 29.991068>,  <34.010773, 32.516247, 29.693075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931690, 32.771091, 29.991068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016447, 0.762031, -0.647332,
		-0.980124, -0.115727, -0.161135,
		-0.197703, 0.637116, 0.744981,
		33.872379, 32.962227, 30.214561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531174, 32.919369, 29.424322>,  <34.010773, 32.516247, 29.693075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531174, 32.919369, 29.424322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709499, 33.154629, 29.694233>,  <33.816494, 33.295784, 29.856180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709499, 33.154629, 29.694233>,  <33.531174, 32.919369, 29.424322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709499, 33.154629, 29.694233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022459, 0.760949, -0.648423,
		-0.894842, 0.273924, 0.352454,
		0.445818, 0.588152, 0.674777,
		33.843246, 33.331074, 29.896666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269253, 33.548473, 29.637484>,  <33.531174, 32.919369, 29.424322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269253, 33.548473, 29.637484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660408, 33.619240, 29.682083>,  <33.895103, 33.661701, 29.708843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660408, 33.619240, 29.682083>,  <33.269253, 33.548473, 29.637484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660408, 33.619240, 29.682083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104610, 0.875525, -0.471713,
		-0.181075, 0.449619, 0.874674,
		0.977890, 0.176915, 0.111501,
		33.953773, 33.672314, 29.715534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446724, 34.271782, 29.665901>,  <33.269253, 33.548473, 29.637484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446724, 34.271782, 29.665901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793499, 34.102741, 29.560207>,  <34.001564, 34.001316, 29.496792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793499, 34.102741, 29.560207>,  <33.446724, 34.271782, 29.665901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793499, 34.102741, 29.560207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300785, 0.866343, -0.398720,
		0.397418, 0.266189, 0.878181,
		0.866941, -0.422603, -0.264234,
		34.053581, 33.975960, 29.480938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084457, 34.594952, 29.965876>,  <33.446724, 34.271782, 29.665901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084457, 34.594952, 29.965876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197624, 34.424076, 29.622372>,  <34.265522, 34.321552, 29.416269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197624, 34.424076, 29.622372>,  <34.084457, 34.594952, 29.965876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197624, 34.424076, 29.622372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414691, 0.861810, -0.292087,
		0.864865, -0.273486, 0.420968,
		0.282912, -0.427188, -0.858761,
		34.282497, 34.295921, 29.364742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676498, 34.897339, 29.846375>,  <34.084457, 34.594952, 29.965876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676498, 34.897339, 29.846375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623611, 34.748425, 29.478912>,  <34.591881, 34.659077, 29.258436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623611, 34.748425, 29.478912>,  <34.676498, 34.897339, 29.846375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623611, 34.748425, 29.478912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552618, 0.741706, -0.380112,
		0.822880, -0.557921, 0.107664,
		-0.132217, -0.372284, -0.918653,
		34.583946, 34.636738, 29.203316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377693, 34.944164, 29.562904>,  <34.676498, 34.897339, 29.846375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377693, 34.944164, 29.562904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169590, 34.887089, 29.226103>,  <35.044727, 34.852844, 29.024021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169590, 34.887089, 29.226103>,  <35.377693, 34.944164, 29.562904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169590, 34.887089, 29.226103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610739, 0.626990, -0.483613,
		0.596937, -0.765848, -0.239046,
		-0.520254, -0.142692, -0.842007,
		35.013515, 34.844280, 28.973501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819927, 34.780899, 28.923624>,  <35.377693, 34.944164, 29.562904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819927, 34.780899, 28.923624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480614, 34.941963, 28.786060>,  <35.277023, 35.038601, 28.703522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480614, 34.941963, 28.786060>,  <35.819927, 34.780899, 28.923624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480614, 34.941963, 28.786060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525331, 0.558244, -0.642177,
		-0.066593, -0.725417, -0.685081,
		-0.848288, 0.402659, -0.343909,
		35.226128, 35.062759, 28.682888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956882, 34.781124, 28.122726>,  <35.819927, 34.780899, 28.923624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956882, 34.781124, 28.122726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647354, 35.026379, 28.186306>,  <35.461636, 35.173531, 28.224453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647354, 35.026379, 28.186306>,  <35.956882, 34.781124, 28.122726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647354, 35.026379, 28.186306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379688, 0.649877, -0.658405,
		-0.506989, -0.449137, -0.735689,
		-0.773821, 0.613137, 0.158949,
		35.415207, 35.210320, 28.233990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696095, 34.916340, 27.477428>,  <35.956882, 34.781124, 28.122726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696095, 34.916340, 27.477428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586838, 35.212830, 27.722698>,  <35.521282, 35.390724, 27.869860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586838, 35.212830, 27.722698>,  <35.696095, 34.916340, 27.477428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586838, 35.212830, 27.722698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349760, 0.670313, -0.654484,
		-0.896136, 0.035694, -0.442342,
		-0.273146, 0.741220, 0.613176,
		35.504894, 35.435196, 27.906651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393860, 35.368595, 27.122173>,  <35.696095, 34.916340, 27.477428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393860, 35.368595, 27.122173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565018, 35.542332, 27.439222>,  <35.667713, 35.646572, 27.629452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565018, 35.542332, 27.439222>,  <35.393860, 35.368595, 27.122173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565018, 35.542332, 27.439222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304872, 0.756208, -0.578968,
		-0.850856, 0.489388, 0.191163,
		0.427899, 0.434338, 0.792624,
		35.693386, 35.672634, 27.677010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359219, 36.073513, 26.877754>,  <35.393860, 35.368595, 27.122173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359219, 36.073513, 26.877754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600918, 36.040459, 27.194754>,  <35.745937, 36.020626, 27.384954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600918, 36.040459, 27.194754>,  <35.359219, 36.073513, 26.877754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600918, 36.040459, 27.194754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549863, 0.763066, -0.339676,
		-0.576659, 0.641015, 0.506522,
		0.604247, -0.082640, 0.792500,
		35.782192, 36.015667, 27.432503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769203, 36.259098, 26.323610>,  <35.359219, 36.073513, 26.877754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769203, 36.259098, 26.323610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033512, 35.973557, 26.230843>,  <36.192097, 35.802231, 26.175182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033512, 35.973557, 26.230843>,  <35.769203, 36.259098, 26.323610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033512, 35.973557, 26.230843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670426, 0.422389, 0.610014,
		-0.337502, -0.558566, 0.757691,
		0.660774, -0.713857, -0.231920,
		36.231743, 35.759399, 26.161266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491463, 36.409115, 25.697599>,  <35.769203, 36.259098, 26.323610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491463, 36.409115, 25.697599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789680, 36.545372, 25.926729>,  <35.968613, 36.627129, 26.064207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789680, 36.545372, 25.926729>,  <35.491463, 36.409115, 25.697599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789680, 36.545372, 25.926729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597595, 0.038801, -0.800859,
		-0.295036, 0.939391, -0.174640,
		0.745543, 0.340646, 0.572823,
		36.013344, 36.647564, 26.098576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783615, 37.040310, 25.426962>,  <35.491463, 36.409115, 25.697599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783615, 37.040310, 25.426962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050003, 36.832169, 25.640774>,  <36.209835, 36.707283, 25.769062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050003, 36.832169, 25.640774>,  <35.783615, 37.040310, 25.426962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050003, 36.832169, 25.640774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719742, 0.259833, -0.643784,
		0.196103, 0.813464, 0.547558,
		0.665969, -0.520348, 0.534530,
		36.249794, 36.676064, 25.801132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260731, 37.557560, 25.776457>,  <35.783615, 37.040310, 25.426962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260731, 37.557560, 25.776457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345837, 37.188732, 25.647135>,  <36.396900, 36.967438, 25.569542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345837, 37.188732, 25.647135>,  <36.260731, 37.557560, 25.776457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345837, 37.188732, 25.647135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603593, 0.384230, -0.698601,
		0.768379, -0.046507, 0.638302,
		0.212765, -0.922065, -0.323306,
		36.409664, 36.912113, 25.550142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936382, 37.428711, 25.950026>,  <36.260731, 37.557560, 25.776457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936382, 37.428711, 25.950026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838306, 37.200409, 25.636560>,  <36.779461, 37.063427, 25.448483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838306, 37.200409, 25.636560>,  <36.936382, 37.428711, 25.950026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838306, 37.200409, 25.636560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711343, 0.443295, -0.545419,
		0.658692, -0.691181, 0.297310,
		-0.245187, -0.570752, -0.783662,
		36.764751, 37.029182, 25.401463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593666, 37.140633, 25.662590>,  <36.936382, 37.428711, 25.950026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593666, 37.140633, 25.662590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306000, 37.155647, 25.385061>,  <37.133400, 37.164654, 25.218544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306000, 37.155647, 25.385061>,  <37.593666, 37.140633, 25.662590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306000, 37.155647, 25.385061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624974, 0.471318, -0.622307,
		0.303653, -0.881164, -0.362414,
		-0.719167, 0.037534, -0.693822,
		37.090248, 37.166908, 25.176914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882153, 36.733028, 25.238981>,  <37.593666, 37.140633, 25.662590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882153, 36.733028, 25.238981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613232, 36.949940, 25.037411>,  <37.451878, 37.080086, 24.916468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613232, 36.949940, 25.037411>,  <37.882153, 36.733028, 25.238981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613232, 36.949940, 25.037411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714917, 0.298979, -0.632064,
		-0.192089, -0.785207, -0.588687,
		-0.672306, 0.542275, -0.503927,
		37.411541, 37.112621, 24.886232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031246, 36.642548, 24.508753>,  <37.882153, 36.733028, 25.238981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031246, 36.642548, 24.508753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837418, 36.987335, 24.568352>,  <37.721123, 37.194206, 24.604111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837418, 36.987335, 24.568352>,  <38.031246, 36.642548, 24.508753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837418, 36.987335, 24.568352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657207, 0.471150, -0.588300,
		-0.577297, -0.187150, -0.794798,
		-0.484569, 0.861971, 0.148997,
		37.692047, 37.245926, 24.613050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905720, 36.814632, 23.787477>,  <38.031246, 36.642548, 24.508753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905720, 36.814632, 23.787477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859570, 37.136753, 24.020092>,  <37.831879, 37.330025, 24.159660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859570, 37.136753, 24.020092>,  <37.905720, 36.814632, 23.787477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859570, 37.136753, 24.020092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623345, 0.514516, -0.588824,
		-0.773389, 0.294563, -0.561340,
		-0.115372, 0.805298, 0.581536,
		37.824959, 37.378342, 24.194553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758801, 37.250114, 23.298597>,  <37.905720, 36.814632, 23.787477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758801, 37.250114, 23.298597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874039, 37.457569, 23.620596>,  <37.943180, 37.582043, 23.813795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874039, 37.457569, 23.620596>,  <37.758801, 37.250114, 23.298597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874039, 37.457569, 23.620596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637617, 0.523295, -0.565338,
		-0.714456, 0.676149, -0.179934,
		0.288094, 0.518638, 0.804995,
		37.960468, 37.613159, 23.862095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781662, 37.921307, 23.121469>,  <37.758801, 37.250114, 23.298597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781662, 37.921307, 23.121469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001259, 37.926575, 23.455759>,  <38.133018, 37.929733, 23.656332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001259, 37.926575, 23.455759>,  <37.781662, 37.921307, 23.121469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001259, 37.926575, 23.455759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698640, 0.541634, -0.467478,
		-0.458811, 0.840512, 0.288154,
		0.548994, 0.013168, 0.835722,
		38.165958, 37.930527, 23.706476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009155, 38.499451, 23.029863>,  <37.781662, 37.921307, 23.121469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009155, 38.499451, 23.029863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265572, 38.331009, 23.286531>,  <38.419422, 38.229946, 23.440533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265572, 38.331009, 23.286531>,  <38.009155, 38.499451, 23.029863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265572, 38.331009, 23.286531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738200, 0.567114, -0.365299,
		-0.210072, 0.707852, 0.674400,
		0.641039, -0.421103, 0.641671,
		38.457882, 38.204678, 23.479033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449814, 39.087158, 23.287052>,  <38.009155, 38.499451, 23.029863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449814, 39.087158, 23.287052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645493, 38.744724, 23.353752>,  <38.762901, 38.539265, 23.393772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645493, 38.744724, 23.353752>,  <38.449814, 39.087158, 23.287052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645493, 38.744724, 23.353752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777504, 0.341428, -0.528123,
		0.395183, 0.388008, 0.832634,
		0.489200, -0.856082, 0.166751,
		38.792252, 38.487900, 23.403778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119144, 39.261711, 23.465261>,  <38.449814, 39.087158, 23.287052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119144, 39.261711, 23.465261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160206, 38.888279, 23.327917>,  <39.184841, 38.664219, 23.245510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160206, 38.888279, 23.327917>,  <39.119144, 39.261711, 23.465261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160206, 38.888279, 23.327917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657891, 0.322626, -0.680508,
		0.746083, -0.156037, 0.647311,
		0.102655, -0.933577, -0.343361,
		39.191002, 38.608208, 23.224909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837952, 39.175022, 23.406914>,  <39.119144, 39.261711, 23.465261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837952, 39.175022, 23.406914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651119, 38.900894, 23.183426>,  <39.539021, 38.736416, 23.049334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651119, 38.900894, 23.183426>,  <39.837952, 39.175022, 23.406914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651119, 38.900894, 23.183426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606586, 0.211400, -0.766397,
		0.643341, -0.696883, 0.316964,
		-0.467083, -0.685321, -0.558721,
		39.510994, 38.695297, 23.015810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416752, 38.927456, 23.004604>,  <39.837952, 39.175022, 23.406914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416752, 38.927456, 23.004604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077576, 38.813717, 22.825651>,  <39.874069, 38.745472, 22.718279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077576, 38.813717, 22.825651>,  <40.416752, 38.927456, 23.004604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077576, 38.813717, 22.825651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384424, 0.251259, -0.888305,
		0.364998, -0.925210, -0.103741,
		-0.847935, -0.284349, -0.447383,
		39.823196, 38.728413, 22.691437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540825, 38.327194, 22.592070>,  <40.416752, 38.927456, 23.004604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540825, 38.327194, 22.592070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220798, 38.511532, 22.438438>,  <40.028782, 38.622135, 22.346260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220798, 38.511532, 22.438438>,  <40.540825, 38.327194, 22.592070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220798, 38.511532, 22.438438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359133, -0.144901, -0.921969,
		-0.480538, -0.875572, -0.049573,
		-0.800067, 0.460844, -0.384077,
		39.980778, 38.649784, 22.323215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497608, 37.968697, 22.023033>,  <40.540825, 38.327194, 22.592070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497608, 37.968697, 22.023033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264347, 38.287315, 21.959229>,  <40.124390, 38.478489, 21.920946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264347, 38.287315, 21.959229>,  <40.497608, 37.968697, 22.023033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264347, 38.287315, 21.959229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215533, -0.037609, -0.975772,
		-0.783252, -0.603400, -0.149752,
		-0.583149, 0.796551, -0.159510,
		40.089401, 38.526279, 21.911375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995132, 37.784428, 21.474726>,  <40.497608, 37.968697, 22.023033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995132, 37.784428, 21.474726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011597, 38.183998, 21.483307>,  <40.021473, 38.423740, 21.488457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011597, 38.183998, 21.483307>,  <39.995132, 37.784428, 21.474726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011597, 38.183998, 21.483307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159928, 0.014609, -0.987020,
		-0.986270, 0.044053, -0.159155,
		0.041157, 0.998922, 0.021454,
		40.023945, 38.483673, 21.489742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529907, 37.927868, 20.977186>,  <39.995132, 37.784428, 21.474726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529907, 37.927868, 20.977186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825726, 38.186695, 21.051338>,  <40.003216, 38.341991, 21.095829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825726, 38.186695, 21.051338>,  <39.529907, 37.927868, 20.977186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825726, 38.186695, 21.051338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327628, -0.105461, -0.938902,
		-0.587987, 0.755099, -0.289992,
		0.739548, 0.647072, 0.185382,
		40.047588, 38.380817, 21.106953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444363, 38.243412, 20.317875>,  <39.529907, 37.927868, 20.977186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444363, 38.243412, 20.317875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789299, 38.358788, 20.484327>,  <39.996262, 38.428013, 20.584198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789299, 38.358788, 20.484327>,  <39.444363, 38.243412, 20.317875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789299, 38.358788, 20.484327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443043, -0.032001, -0.895929,
		-0.245106, 0.956963, -0.155388,
		0.862344, 0.288441, 0.416132,
		40.048000, 38.445320, 20.609167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687721, 38.813190, 19.922249>,  <39.444363, 38.243412, 20.317875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687721, 38.813190, 19.922249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001835, 38.664726, 20.120464>,  <40.190304, 38.575645, 20.239393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001835, 38.664726, 20.120464>,  <39.687721, 38.813190, 19.922249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001835, 38.664726, 20.120464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498878, -0.094672, -0.861486,
		0.366666, 0.923729, 0.110821,
		0.785288, -0.371163, 0.495541,
		40.237423, 38.553379, 20.269127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241165, 39.199860, 19.558077>,  <39.687721, 38.813190, 19.922249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241165, 39.199860, 19.558077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388290, 38.884483, 19.755285>,  <40.476566, 38.695255, 19.873611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388290, 38.884483, 19.755285>,  <40.241165, 39.199860, 19.558077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388290, 38.884483, 19.755285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626383, -0.181788, -0.758022,
		0.687282, 0.587632, 0.427003,
		0.367814, -0.788443, 0.493022,
		40.498634, 38.647949, 19.903193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954933, 39.292370, 19.556227>,  <40.241165, 39.199860, 19.558077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954933, 39.292370, 19.556227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892590, 38.903252, 19.624775>,  <40.855183, 38.669781, 19.665905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892590, 38.903252, 19.624775>,  <40.954933, 39.292370, 19.556227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892590, 38.903252, 19.624775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684310, -0.231454, -0.691483,
		0.712340, 0.009497, 0.701771,
		-0.155860, -0.972800, 0.171373,
		40.845833, 38.611412, 19.676188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635571, 38.918842, 19.575098>,  <40.954933, 39.292370, 19.556227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635571, 38.918842, 19.575098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384857, 38.617302, 19.496258>,  <41.234428, 38.436378, 19.448954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384857, 38.617302, 19.496258>,  <41.635571, 38.918842, 19.575098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384857, 38.617302, 19.496258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669399, -0.391488, -0.631380,
		0.398805, -0.527678, 0.750007,
		-0.626784, -0.753852, -0.197100,
		41.196823, 38.391148, 19.437128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053223, 38.211342, 19.571884>,  <41.635571, 38.918842, 19.575098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053223, 38.211342, 19.571884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.717739, 38.148125, 19.363428>,  <41.516449, 38.110195, 19.238354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.717739, 38.148125, 19.363428>,  <42.053223, 38.211342, 19.571884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717739, 38.148125, 19.363428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522927, -0.500875, -0.689689,
		-0.152026, -0.850968, 0.502734,
		-0.838710, -0.158042, -0.521140,
		41.466125, 38.100712, 19.207087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109322, 37.447701, 19.468418>,  <42.053223, 38.211342, 19.571884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109322, 37.447701, 19.468418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851486, 37.574318, 19.190050>,  <41.696785, 37.650288, 19.023029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851486, 37.574318, 19.190050>,  <42.109322, 37.447701, 19.468418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851486, 37.574318, 19.190050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568139, -0.410776, -0.713079,
		-0.511590, -0.855021, 0.084938,
		-0.644588, 0.316547, -0.695920,
		41.658108, 37.669281, 18.981274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134968, 36.930748, 18.977831>,  <42.109322, 37.447701, 19.468418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134968, 36.930748, 18.977831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.964634, 37.223999, 18.765718>,  <41.862434, 37.399948, 18.638451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.964634, 37.223999, 18.765718>,  <42.134968, 36.930748, 18.977831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964634, 37.223999, 18.765718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647618, -0.162326, -0.744474,
		-0.631869, -0.660440, -0.405661,
		-0.425831, 0.733123, -0.530281,
		41.836884, 37.443935, 18.606634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983318, 36.640572, 18.423788>,  <42.134968, 36.930748, 18.977831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983318, 36.640572, 18.423788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026981, 37.029469, 18.341005>,  <42.053177, 37.262806, 18.291336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026981, 37.029469, 18.341005>,  <41.983318, 36.640572, 18.423788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026981, 37.029469, 18.341005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616944, -0.229509, -0.752798,
		-0.779400, -0.045508, -0.624872,
		0.109155, 0.972242, -0.206955,
		42.059727, 37.321140, 18.278919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843372, 36.631416, 17.810104>,  <41.983318, 36.640572, 18.423788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843372, 36.631416, 17.810104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022408, 36.988941, 17.821199>,  <42.129829, 37.203457, 17.827856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022408, 36.988941, 17.821199>,  <41.843372, 36.631416, 17.810104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022408, 36.988941, 17.821199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329171, -0.135839, -0.934449,
		-0.831452, 0.427378, -0.355016,
		0.447588, 0.893810, 0.027737,
		42.156685, 37.257084, 17.829521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628052, 36.930569, 17.180933>,  <41.843372, 36.631416, 17.810104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628052, 36.930569, 17.180933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946430, 37.131435, 17.316168>,  <42.137455, 37.251957, 17.397308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946430, 37.131435, 17.316168>,  <41.628052, 36.930569, 17.180933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946430, 37.131435, 17.316168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316858, 0.130286, -0.939482,
		-0.515826, 0.854899, -0.055416,
		0.795943, 0.502168, 0.338087,
		42.185211, 37.282085, 17.417593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687069, 37.448891, 16.744265>,  <41.628052, 36.930569, 17.180933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687069, 37.448891, 16.744265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047249, 37.406082, 16.912901>,  <42.263355, 37.380398, 17.014082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047249, 37.406082, 16.912901>,  <41.687069, 37.448891, 16.744265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047249, 37.406082, 16.912901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422906, -0.011219, -0.906104,
		0.101701, 0.994194, 0.035157,
		0.900448, -0.107020, 0.421591,
		42.317383, 37.373978, 17.039379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086857, 37.915405, 16.472992>,  <41.687069, 37.448891, 16.744265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086857, 37.915405, 16.472992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.351562, 37.650669, 16.613865>,  <42.510387, 37.491829, 16.698389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.351562, 37.650669, 16.613865>,  <42.086857, 37.915405, 16.472992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351562, 37.650669, 16.613865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512775, 0.056883, -0.856636,
		0.546924, 0.747483, 0.377019,
		0.661767, -0.661841, 0.352180,
		42.550091, 37.452118, 16.719519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.759804, 38.120663, 16.275194>,  <42.086857, 37.915405, 16.472992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.759804, 38.120663, 16.275194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.820927, 37.732826, 16.351664>,  <42.857601, 37.500126, 16.397545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.820927, 37.732826, 16.351664>,  <42.759804, 38.120663, 16.275194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820927, 37.732826, 16.351664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592517, -0.064933, -0.802937,
		0.790932, 0.235971, 0.564575,
		0.152810, -0.969588, 0.191174,
		42.866768, 37.441948, 16.409016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466419, 37.896961, 16.101145>,  <42.759804, 38.120663, 16.275194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466419, 37.896961, 16.101145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298088, 37.534397, 16.115690>,  <43.197090, 37.316860, 16.124418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298088, 37.534397, 16.115690>,  <43.466419, 37.896961, 16.101145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298088, 37.534397, 16.115690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447345, -0.242231, -0.860934,
		0.789169, -0.346037, 0.507416,
		-0.420827, -0.906412, 0.036363,
		43.171841, 37.262474, 16.126598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027420, 37.390484, 15.949279>,  <43.466419, 37.896961, 16.101145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027420, 37.390484, 15.949279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679390, 37.218933, 15.852099>,  <43.470570, 37.116001, 15.793792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679390, 37.218933, 15.852099>,  <44.027420, 37.390484, 15.949279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679390, 37.218933, 15.852099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384108, -0.281053, -0.879472,
		0.308908, -0.858528, 0.409275,
		-0.870079, -0.428881, -0.242948,
		43.418365, 37.090267, 15.779215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.098434, 36.600574, 15.855394>,  <44.027420, 37.390484, 15.949279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.098434, 36.600574, 15.855394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771473, 36.711544, 15.653447>,  <43.575298, 36.778126, 15.532279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771473, 36.711544, 15.653447>,  <44.098434, 36.600574, 15.855394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771473, 36.711544, 15.653447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468087, -0.190986, -0.862797,
		-0.335783, -0.941573, 0.026253,
		-0.817401, 0.277424, -0.504868,
		43.526253, 36.794769, 15.501987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063564, 36.137775, 15.233196>,  <44.098434, 36.600574, 15.855394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063564, 36.137775, 15.233196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.794140, 36.415627, 15.132154>,  <43.632484, 36.582336, 15.071529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.794140, 36.415627, 15.132154>,  <44.063564, 36.137775, 15.233196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.794140, 36.415627, 15.132154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256689, -0.100657, -0.961238,
		-0.693132, -0.712290, -0.110505,
		-0.673557, 0.694631, -0.252606,
		43.592072, 36.624016, 15.056373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566551, 35.843620, 14.715180>,  <44.063564, 36.137775, 15.233196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566551, 35.843620, 14.715180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565819, 36.240833, 14.668039>,  <43.565380, 36.479160, 14.639754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565819, 36.240833, 14.668039>,  <43.566551, 35.843620, 14.715180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.565819, 36.240833, 14.668039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163870, -0.115962, -0.979642,
		-0.986480, -0.021106, -0.162516,
		-0.001831, 0.993029, -0.117853,
		43.565269, 36.538742, 14.632684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148823, 35.978439, 14.153361>,  <43.566551, 35.843620, 14.715180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148823, 35.978439, 14.153361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361992, 36.316742, 14.163806>,  <43.489895, 36.519726, 14.170073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361992, 36.316742, 14.163806>,  <43.148823, 35.978439, 14.153361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361992, 36.316742, 14.163806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194655, -0.092507, -0.976500,
		-0.823467, 0.525486, -0.213931,
		0.532927, 0.845758, 0.026112,
		43.521870, 36.570469, 14.171639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841656, 36.378563, 13.745506>,  <43.148823, 35.978439, 14.153361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841656, 36.378563, 13.745506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211887, 36.529987, 13.745336>,  <43.434025, 36.620842, 13.745233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211887, 36.529987, 13.745336>,  <42.841656, 36.378563, 13.745506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211887, 36.529987, 13.745336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024083, -0.060011, -0.997907,
		-0.377792, 0.923630, -0.064662,
		0.925577, 0.378559, -0.000428,
		43.489559, 36.643555, 13.745207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939533, 36.795376, 13.110264>,  <42.841656, 36.378563, 13.745506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939533, 36.795376, 13.110264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321232, 36.718304, 13.201722>,  <43.550251, 36.672062, 13.256598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321232, 36.718304, 13.201722>,  <42.939533, 36.795376, 13.110264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321232, 36.718304, 13.201722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205910, -0.131010, -0.969761,
		0.216808, 0.972477, -0.085342,
		0.954251, -0.192679, 0.228647,
		43.607506, 36.660500, 13.270316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391842, 36.933414, 12.472955>,  <42.939533, 36.795376, 13.110264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391842, 36.933414, 12.472955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662746, 36.743744, 12.697982>,  <43.825287, 36.629944, 12.832998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662746, 36.743744, 12.697982>,  <43.391842, 36.933414, 12.472955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662746, 36.743744, 12.697982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428394, -0.367498, -0.825484,
		0.598165, 0.800066, -0.045758,
		0.677257, -0.474173, 0.562568,
		43.865925, 36.601494, 12.866753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074020, 37.123257, 12.271797>,  <43.391842, 36.933414, 12.472955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074020, 37.123257, 12.271797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.103710, 36.769421, 12.455971>,  <44.121525, 36.557121, 12.566475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.103710, 36.769421, 12.455971>,  <44.074020, 37.123257, 12.271797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103710, 36.769421, 12.455971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402881, -0.395751, -0.825268,
		0.912237, 0.246758, 0.327006,
		0.074229, -0.884585, 0.460433,
		44.125980, 36.504044, 12.594101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697773, 36.832516, 12.039791>,  <44.074020, 37.123257, 12.271797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697773, 36.832516, 12.039791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.506573, 36.510010, 12.179189>,  <44.391853, 36.316505, 12.262827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.506573, 36.510010, 12.179189>,  <44.697773, 36.832516, 12.039791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.506573, 36.510010, 12.179189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270693, -0.512666, -0.814800,
		0.835606, -0.295142, 0.463307,
		-0.478003, -0.806266, 0.348494,
		44.363171, 36.268131, 12.283737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.293751, 36.372631, 12.089096>,  <44.697773, 36.832516, 12.039791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.293751, 36.372631, 12.089096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.932018, 36.201935, 12.085374>,  <44.714981, 36.099518, 12.083140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.932018, 36.201935, 12.085374>,  <45.293751, 36.372631, 12.089096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.932018, 36.201935, 12.085374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302582, -0.625539, -0.719128,
		0.301059, -0.653143, 0.694815,
		-0.904327, -0.426739, -0.009305,
		44.660721, 36.073914, 12.082582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.083614, 35.720524, 11.845695>,  <45.293751, 36.372631, 12.089096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.083614, 35.720524, 11.845695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.419559, 35.509254, 11.895764>,  <45.621124, 35.382492, 11.925806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.419559, 35.509254, 11.895764>,  <45.083614, 35.720524, 11.845695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.419559, 35.509254, 11.895764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226106, -0.550065, -0.803931,
		0.493469, 0.646886, -0.581401,
		0.839859, -0.528173, 0.125176,
		45.671516, 35.350803, 11.933317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.519234, 35.507572, 11.172398>,  <45.083614, 35.720524, 11.845695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.519234, 35.507572, 11.172398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.596920, 35.236290, 11.455896>,  <45.643532, 35.073521, 11.625996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.596920, 35.236290, 11.455896>,  <45.519234, 35.507572, 11.172398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.596920, 35.236290, 11.455896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161190, -0.734747, -0.658911,
		0.967625, 0.013726, -0.252017,
		0.194213, -0.678202, 0.708748,
		45.655186, 35.032829, 11.668521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.054222, 34.941669, 10.987188>,  <45.519234, 35.507572, 11.172398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.054222, 34.941669, 10.987188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758179, 34.839073, 11.235849>,  <45.580551, 34.777515, 11.385046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758179, 34.839073, 11.235849>,  <46.054222, 34.941669, 10.987188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.758179, 34.839073, 11.235849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228674, -0.773334, -0.591323,
		0.632414, -0.579799, 0.513698,
		-0.740108, -0.256492, 0.621652,
		45.536148, 34.762127, 11.422345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.052094, 34.257275, 10.940664>,  <46.054222, 34.941669, 10.987188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.052094, 34.257275, 10.940664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701675, 34.409172, 11.059554>,  <45.491425, 34.500309, 11.130888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701675, 34.409172, 11.059554>,  <46.052094, 34.257275, 10.940664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.701675, 34.409172, 11.059554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477762, -0.599777, -0.641881,
		-0.065479, -0.704319, 0.706857,
		-0.876046, 0.379739, 0.297224,
		45.438862, 34.523094, 11.148721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.450249, 33.701664, 11.103174>,  <46.052094, 34.257275, 10.940664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.450249, 33.701664, 11.103174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.336468, 34.055298, 10.954861>,  <45.268200, 34.267479, 10.865872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.336468, 34.055298, 10.954861>,  <45.450249, 33.701664, 11.103174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.336468, 34.055298, 10.954861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340204, -0.454676, -0.823123,
		-0.896297, -0.107998, 0.430103,
		-0.284453, 0.884085, -0.370783,
		45.251133, 34.320522, 10.843626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780323, 33.942070, 11.098171>,  <45.450249, 33.701664, 11.103174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780323, 33.942070, 11.098171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912815, 34.130119, 10.770935>,  <44.992310, 34.242950, 10.574594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912815, 34.130119, 10.770935>,  <44.780323, 33.942070, 11.098171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.912815, 34.130119, 10.770935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678088, -0.484301, -0.552856,
		-0.656111, 0.737860, 0.158368,
		0.331233, 0.470122, -0.818089,
		45.012184, 34.271156, 10.525508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.132595, 33.955029, 10.766469>,  <44.780323, 33.942070, 11.098171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.132595, 33.955029, 10.766469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.434719, 34.018097, 10.512022>,  <44.615993, 34.055939, 10.359354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.434719, 34.018097, 10.512022>,  <44.132595, 33.955029, 10.766469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.434719, 34.018097, 10.512022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400084, -0.657842, -0.638104,
		-0.519074, 0.736467, -0.433794,
		0.755311, 0.157669, -0.636118,
		44.661312, 34.065399, 10.321187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.826714, 33.939899, 10.099423>,  <44.132595, 33.955029, 10.766469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.826714, 33.939899, 10.099423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.203617, 33.858154, 9.993301>,  <44.429760, 33.809109, 9.929628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.203617, 33.858154, 9.993301>,  <43.826714, 33.939899, 10.099423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.203617, 33.858154, 9.993301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334621, -0.606229, -0.721467,
		-0.013397, 0.768585, -0.639608,
		0.942258, -0.204361, -0.265306,
		44.486294, 33.796844, 9.913710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426586, 34.564022, 10.491682>,  <43.826714, 33.939899, 10.099423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426586, 34.564022, 10.491682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413383, 34.222752, 10.699915>,  <43.405464, 34.017990, 10.824855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413383, 34.222752, 10.699915>,  <43.426586, 34.564022, 10.491682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.413383, 34.222752, 10.699915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970277, 0.152291, 0.188071,
		-0.239737, -0.498901, -0.832841,
		-0.033005, -0.853174, 0.520581,
		43.403481, 33.966801, 10.856090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743252, 34.152245, 10.354609>,  <43.426586, 34.564022, 10.491682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743252, 34.152245, 10.354609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914722, 34.087509, 10.710148>,  <43.017605, 34.048668, 10.923470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914722, 34.087509, 10.710148>,  <42.743252, 34.152245, 10.354609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.914722, 34.087509, 10.710148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895936, 0.050552, 0.441298,
		-0.116356, -0.985520, -0.123334,
		0.428673, -0.161847, 0.888844,
		43.043324, 34.038956, 10.976802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388012, 33.773952, 10.717813>,  <42.743252, 34.152245, 10.354609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388012, 33.773952, 10.717813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574661, 33.982574, 11.003536>,  <42.686653, 34.107750, 11.174971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574661, 33.982574, 11.003536>,  <42.388012, 33.773952, 10.717813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574661, 33.982574, 11.003536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883671, 0.308918, 0.351705,
		-0.037229, -0.795329, 0.605033,
		0.466626, 0.521557, 0.714310,
		42.714649, 34.139042, 11.217829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183205, 33.430813, 11.305452>,  <42.388012, 33.773952, 10.717813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183205, 33.430813, 11.305452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287243, 33.807632, 11.390209>,  <42.349667, 34.033722, 11.441063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287243, 33.807632, 11.390209>,  <42.183205, 33.430813, 11.305452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287243, 33.807632, 11.390209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888556, 0.147628, 0.434367,
		0.377912, -0.301255, 0.875458,
		0.260097, 0.942047, 0.211892,
		42.365273, 34.090248, 11.453777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951157, 33.559704, 11.969130>,  <42.183205, 33.430813, 11.305452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951157, 33.559704, 11.969130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002117, 33.935329, 11.841428>,  <42.032696, 34.160706, 11.764807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002117, 33.935329, 11.841428>,  <41.951157, 33.559704, 11.969130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002117, 33.935329, 11.841428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793233, 0.289702, 0.535588,
		0.595441, 0.185008, 0.781807,
		0.127403, 0.939066, -0.319255,
		42.040337, 34.217049, 11.745651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060001, 34.075832, 12.556747>,  <41.951157, 33.559704, 11.969130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060001, 34.075832, 12.556747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915020, 34.265190, 12.235618>,  <41.828033, 34.378803, 12.042940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915020, 34.265190, 12.235618>,  <42.060001, 34.075832, 12.556747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915020, 34.265190, 12.235618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801590, 0.281120, 0.527659,
		0.475481, 0.834787, 0.277575,
		-0.362452, 0.473393, -0.802825,
		41.806286, 34.407207, 11.994770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861683, 34.681419, 12.834499>,  <42.060001, 34.075832, 12.556747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861683, 34.681419, 12.834499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.694084, 34.706974, 12.472204>,  <41.593525, 34.722309, 12.254827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.694084, 34.706974, 12.472204>,  <41.861683, 34.681419, 12.834499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694084, 34.706974, 12.472204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857913, 0.298837, 0.417949,
		0.297372, 0.952163, -0.070398,
		-0.418993, 0.063891, -0.905739,
		41.568386, 34.726143, 12.200482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669666, 35.334679, 12.743624>,  <41.861683, 34.681419, 12.834499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669666, 35.334679, 12.743624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443874, 35.077789, 12.536194>,  <41.308399, 34.923656, 12.411736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443874, 35.077789, 12.536194>,  <41.669666, 35.334679, 12.743624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443874, 35.077789, 12.536194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814583, 0.331790, 0.475784,
		-0.133500, 0.690991, -0.710429,
		-0.564476, -0.642220, -0.518576,
		41.274532, 34.885124, 12.380621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122082, 35.722515, 12.456250>,  <41.669666, 35.334679, 12.743624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122082, 35.722515, 12.456250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972378, 35.351585, 12.455152>,  <40.882557, 35.129028, 12.454493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972378, 35.351585, 12.455152>,  <41.122082, 35.722515, 12.456250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972378, 35.351585, 12.455152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885587, 0.356533, 0.297691,
		-0.275076, 0.113845, -0.954658,
		-0.374258, -0.927321, -0.002745,
		40.860100, 35.073391, 12.454328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472870, 35.876095, 12.218972>,  <41.122082, 35.722515, 12.456250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472870, 35.876095, 12.218972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438019, 35.502419, 12.357364>,  <40.417107, 35.278214, 12.440398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438019, 35.502419, 12.357364>,  <40.472870, 35.876095, 12.218972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438019, 35.502419, 12.357364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908932, 0.216697, 0.356209,
		-0.407739, -0.283434, -0.867994,
		-0.087131, -0.934188, 0.345978,
		40.411880, 35.222160, 12.461157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637333, 35.703701, 12.156833>,  <40.472870, 35.876095, 12.218972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637333, 35.703701, 12.156833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821629, 35.449085, 12.404231>,  <39.932205, 35.296318, 12.552670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821629, 35.449085, 12.404231>,  <39.637333, 35.703701, 12.156833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821629, 35.449085, 12.404231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733556, 0.119170, 0.669100,
		-0.499613, -0.761983, -0.412030,
		0.460741, -0.636538, 0.618496,
		39.959850, 35.258125, 12.589780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135052, 35.132908, 12.314921>,  <39.637333, 35.703701, 12.156833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135052, 35.132908, 12.314921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395004, 35.133179, 12.618936>,  <39.550976, 35.133343, 12.801344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395004, 35.133179, 12.618936>,  <39.135052, 35.132908, 12.314921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395004, 35.133179, 12.618936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759793, 0.025799, 0.649653,
		-0.019171, -0.999667, 0.017277,
		0.649882, 0.000672, 0.760035,
		39.589970, 35.133381, 12.846946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706509, 34.954506, 12.808197>,  <39.135052, 35.132908, 12.314921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706509, 34.954506, 12.808197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037010, 35.042786, 13.015502>,  <39.235310, 35.095753, 13.139885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037010, 35.042786, 13.015502>,  <38.706509, 34.954506, 12.808197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037010, 35.042786, 13.015502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557508, 0.188839, 0.808409,
		0.080547, -0.956886, 0.279071,
		0.826255, 0.220700, 0.518261,
		39.284885, 35.108994, 13.170980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450256, 34.696003, 13.546227>,  <38.706509, 34.954506, 12.808197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450256, 34.696003, 13.546227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750942, 34.958797, 13.569175>,  <38.931355, 35.116474, 13.582944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750942, 34.958797, 13.569175>,  <38.450256, 34.696003, 13.546227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750942, 34.958797, 13.569175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450640, 0.448204, 0.772034,
		0.481505, -0.606202, 0.632987,
		0.751716, 0.656987, 0.057367,
		38.976460, 35.155891, 13.586386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721443, 34.594685, 14.219260>,  <38.450256, 34.696003, 13.546227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721443, 34.594685, 14.219260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821884, 34.963741, 14.102175>,  <38.882149, 35.185177, 14.031923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821884, 34.963741, 14.102175>,  <38.721443, 34.594685, 14.219260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821884, 34.963741, 14.102175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321513, 0.364732, 0.873842,
		0.913005, -0.125311, 0.388226,
		0.251100, 0.922642, -0.292713,
		38.897213, 35.240532, 14.014361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909889, 34.876648, 14.810855>,  <38.721443, 34.594685, 14.219260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909889, 34.876648, 14.810855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847942, 35.193821, 14.575137>,  <38.810776, 35.384125, 14.433706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847942, 35.193821, 14.575137>,  <38.909889, 34.876648, 14.810855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847942, 35.193821, 14.575137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403070, 0.493874, 0.770469,
		0.901971, 0.356847, 0.243124,
		-0.154867, 0.792936, -0.589295,
		38.801483, 35.431702, 14.398349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278297, 35.444382, 15.062643>,  <38.909889, 34.876648, 14.810855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278297, 35.444382, 15.062643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972309, 35.591499, 14.851152>,  <38.788715, 35.679771, 14.724258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972309, 35.591499, 14.851152>,  <39.278297, 35.444382, 15.062643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972309, 35.591499, 14.851152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330368, 0.480627, 0.812315,
		0.552883, 0.796069, -0.246158,
		-0.764969, 0.367792, -0.528726,
		38.742817, 35.701836, 14.692534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280735, 36.054367, 15.156141>,  <39.278297, 35.444382, 15.062643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280735, 36.054367, 15.156141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897472, 36.019802, 15.046985>,  <38.667515, 35.999062, 14.981491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897472, 36.019802, 15.046985>,  <39.280735, 36.054367, 15.156141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897472, 36.019802, 15.046985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276253, 0.528858, 0.802492,
		0.074976, 0.844300, -0.530600,
		-0.958156, -0.086413, -0.272892,
		38.610027, 35.993877, 14.965117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966999, 36.783443, 15.309981>,  <39.280735, 36.054367, 15.156141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966999, 36.783443, 15.309981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681713, 36.503082, 15.306896>,  <38.510544, 36.334866, 15.305045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681713, 36.503082, 15.306896>,  <38.966999, 36.783443, 15.309981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681713, 36.503082, 15.306896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320934, 0.316746, 0.892566,
		-0.623163, 0.639062, -0.450852,
		-0.713210, -0.700908, -0.007712,
		38.467751, 36.292809, 15.304583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326271, 37.134251, 15.573503>,  <38.966999, 36.783443, 15.309981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326271, 37.134251, 15.573503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271488, 36.741020, 15.622165>,  <38.238617, 36.505081, 15.651361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271488, 36.741020, 15.622165>,  <38.326271, 37.134251, 15.573503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271488, 36.741020, 15.622165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258815, 0.154056, 0.953562,
		-0.956168, 0.099111, -0.275535,
		-0.136956, -0.983079, 0.121652,
		38.230400, 36.446098, 15.658661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683281, 37.040295, 15.926861>,  <38.326271, 37.134251, 15.573503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683281, 37.040295, 15.926861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919552, 36.723972, 15.991008>,  <38.061314, 36.534180, 16.029495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919552, 36.723972, 15.991008>,  <37.683281, 37.040295, 15.926861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919552, 36.723972, 15.991008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269394, -0.005930, 0.963012,
		-0.760608, -0.612033, -0.216542,
		0.590679, -0.790810, 0.160368,
		38.096756, 36.486729, 16.039118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303078, 36.785110, 16.502314>,  <37.683281, 37.040295, 15.926861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303078, 36.785110, 16.502314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605175, 36.522957, 16.505978>,  <37.786434, 36.365665, 16.508177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605175, 36.522957, 16.505978>,  <37.303078, 36.785110, 16.502314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605175, 36.522957, 16.505978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035852, -0.027353, 0.998983,
		-0.654464, -0.754803, -0.044155,
		0.755243, -0.655382, 0.009160,
		37.831749, 36.326344, 16.508726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072853, 36.211506, 16.825264>,  <37.303078, 36.785110, 16.502314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072853, 36.211506, 16.825264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471874, 36.212982, 16.853205>,  <37.711285, 36.213867, 16.869968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471874, 36.212982, 16.853205>,  <37.072853, 36.211506, 16.825264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471874, 36.212982, 16.853205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069789, -0.014885, 0.997451,
		0.004729, -0.999882, -0.014590,
		0.997550, 0.003699, 0.069851,
		37.771141, 36.214088, 16.874161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232048, 35.632038, 17.192474>,  <37.072853, 36.211506, 16.825264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232048, 35.632038, 17.192474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573677, 35.839943, 17.200602>,  <37.778656, 35.964684, 17.205479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573677, 35.839943, 17.200602>,  <37.232048, 35.632038, 17.192474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573677, 35.839943, 17.200602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033467, -0.093889, 0.995020,
		0.519078, -0.849138, -0.097582,
		0.854071, 0.519759, 0.020318,
		37.829899, 35.995869, 17.206697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758125, 35.182144, 17.567806>,  <37.232048, 35.632038, 17.192474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758125, 35.182144, 17.567806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846130, 35.571655, 17.590998>,  <37.898933, 35.805363, 17.604912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846130, 35.571655, 17.590998>,  <37.758125, 35.182144, 17.567806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846130, 35.571655, 17.590998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047684, -0.070097, 0.996400,
		0.974332, -0.216451, -0.061855,
		0.220008, 0.973774, 0.057976,
		37.912132, 35.863789, 17.608391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410069, 35.229900, 18.020243>,  <37.758125, 35.182144, 17.567806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410069, 35.229900, 18.020243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212315, 35.577553, 18.025858>,  <38.093662, 35.786144, 18.029228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212315, 35.577553, 18.025858>,  <38.410069, 35.229900, 18.020243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212315, 35.577553, 18.025858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011273, -0.009739, 0.999889,
		0.869171, 0.494487, -0.004983,
		-0.494384, 0.869130, 0.014040,
		38.063999, 35.838291, 18.030069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679962, 35.577072, 18.614021>,  <38.410069, 35.229900, 18.020243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679962, 35.577072, 18.614021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354519, 35.794273, 18.530893>,  <38.159252, 35.924595, 18.481016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354519, 35.794273, 18.530893>,  <38.679962, 35.577072, 18.614021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354519, 35.794273, 18.530893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266596, -0.030767, 0.963317,
		0.516694, 0.839164, 0.169796,
		-0.813605, 0.543008, -0.207821,
		38.110435, 35.957176, 18.468548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699528, 36.108898, 19.179342>,  <38.679962, 35.577072, 18.614021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699528, 36.108898, 19.179342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318577, 36.118504, 19.057755>,  <38.090004, 36.124268, 18.984802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318577, 36.118504, 19.057755>,  <38.699528, 36.108898, 19.179342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318577, 36.118504, 19.057755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301211, 0.080821, 0.950126,
		0.047387, 0.996439, -0.069738,
		-0.952379, 0.024018, -0.303968,
		38.032864, 36.125710, 18.966564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426613, 36.592934, 19.583483>,  <38.699528, 36.108898, 19.179342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426613, 36.592934, 19.583483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112656, 36.385201, 19.448284>,  <37.924282, 36.260563, 19.367165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112656, 36.385201, 19.448284>,  <38.426613, 36.592934, 19.583483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112656, 36.385201, 19.448284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400717, 0.009368, 0.916154,
		-0.472620, 0.854523, -0.215457,
		-0.784893, -0.519330, -0.337994,
		37.877190, 36.229401, 19.346886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742954, 37.002914, 19.822298>,  <38.426613, 36.592934, 19.583483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742954, 37.002914, 19.822298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662415, 36.619953, 19.739504>,  <37.614090, 36.390179, 19.689827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662415, 36.619953, 19.739504>,  <37.742954, 37.002914, 19.822298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662415, 36.619953, 19.739504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486706, -0.085596, 0.869362,
		-0.850045, 0.275783, -0.448739,
		-0.201345, -0.957401, -0.206986,
		37.602013, 36.332733, 19.677408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001518, 36.887253, 19.717587>,  <37.742954, 37.002914, 19.822298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001518, 36.887253, 19.717587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137177, 36.528683, 19.831711>,  <37.218571, 36.313541, 19.900187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137177, 36.528683, 19.831711>,  <37.001518, 36.887253, 19.717587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137177, 36.528683, 19.831711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653344, -0.006230, 0.757035,
		-0.676848, -0.443150, -0.587788,
		0.339142, -0.896426, 0.285313,
		37.238918, 36.259754, 19.917305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367180, 36.447556, 19.834164>,  <37.001518, 36.887253, 19.717587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367180, 36.447556, 19.834164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681850, 36.263279, 19.998554>,  <36.870651, 36.152714, 20.097189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681850, 36.263279, 19.998554>,  <36.367180, 36.447556, 19.834164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681850, 36.263279, 19.998554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551674, -0.225765, 0.802923,
		-0.277122, -0.858363, -0.431759,
		0.786676, -0.460698, 0.410972,
		36.917854, 36.125072, 20.121847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050270, 35.812622, 20.093916>,  <36.367180, 36.447556, 19.834164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050270, 35.812622, 20.093916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411018, 35.854347, 20.261604>,  <36.627468, 35.879383, 20.362217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411018, 35.854347, 20.261604>,  <36.050270, 35.812622, 20.093916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411018, 35.854347, 20.261604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364622, -0.336634, 0.868175,
		0.231686, -0.935840, -0.265566,
		0.901872, 0.104313, 0.419221,
		36.681580, 35.885639, 20.387371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066933, 35.296177, 20.509672>,  <36.050270, 35.812622, 20.093916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066933, 35.296177, 20.509672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328220, 35.568813, 20.641579>,  <36.484993, 35.732395, 20.720722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328220, 35.568813, 20.641579>,  <36.066933, 35.296177, 20.509672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328220, 35.568813, 20.641579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312621, -0.153893, 0.937329,
		0.689621, -0.715370, 0.112554,
		0.653216, 0.681588, 0.329768,
		36.524185, 35.773289, 20.740509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281998, 34.962563, 21.006943>,  <36.066933, 35.296177, 20.509672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281998, 34.962563, 21.006943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375847, 35.343090, 21.086885>,  <36.432156, 35.571407, 21.134851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375847, 35.343090, 21.086885>,  <36.281998, 34.962563, 21.006943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375847, 35.343090, 21.086885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328335, -0.115958, 0.937417,
		0.914957, -0.285561, 0.285145,
		0.234625, 0.951319, 0.199856,
		36.446236, 35.628487, 21.146843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430660, 34.929550, 21.710836>,  <36.281998, 34.962563, 21.006943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430660, 34.929550, 21.710836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395107, 35.325558, 21.667101>,  <36.373775, 35.563164, 21.640860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395107, 35.325558, 21.667101>,  <36.430660, 34.929550, 21.710836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395107, 35.325558, 21.667101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373806, 0.068595, 0.924967,
		0.923238, 0.123088, 0.363979,
		-0.088885, 0.990022, -0.109340,
		36.368443, 35.622566, 21.634298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885159, 35.289932, 22.235739>,  <36.430660, 34.929550, 21.710836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885159, 35.289932, 22.235739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598431, 35.539604, 22.111443>,  <36.426392, 35.689407, 22.036865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598431, 35.539604, 22.111443>,  <36.885159, 35.289932, 22.235739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598431, 35.539604, 22.111443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372604, 0.033780, 0.927376,
		0.589350, 0.780547, 0.208359,
		-0.716822, 0.624184, -0.310743,
		36.383385, 35.726860, 22.018219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818642, 35.891304, 22.701242>,  <36.885159, 35.289932, 22.235739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818642, 35.891304, 22.701242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461575, 35.909473, 22.521873>,  <36.247334, 35.920376, 22.414253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461575, 35.909473, 22.521873>,  <36.818642, 35.891304, 22.701242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461575, 35.909473, 22.521873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438458, 0.142929, 0.887314,
		0.104401, 0.988690, -0.107670,
		-0.892667, 0.045428, -0.448421,
		36.193775, 35.923103, 22.387346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527306, 36.499073, 22.882864>,  <36.818642, 35.891304, 22.701242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527306, 36.499073, 22.882864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198662, 36.293140, 22.784960>,  <36.001476, 36.169582, 22.726217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198662, 36.293140, 22.784960>,  <36.527306, 36.499073, 22.882864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198662, 36.293140, 22.784960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335989, 0.090489, 0.937509,
		-0.460510, 0.852503, -0.247324,
		-0.821609, -0.514830, -0.244761,
		35.952179, 36.138691, 22.711533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986694, 36.857380, 23.199501>,  <36.527306, 36.499073, 22.882864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986694, 36.857380, 23.199501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833832, 36.496155, 23.121086>,  <35.742115, 36.279419, 23.074038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833832, 36.496155, 23.121086>,  <35.986694, 36.857380, 23.199501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833832, 36.496155, 23.121086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446445, -0.005317, 0.894795,
		-0.809099, 0.429475, -0.401136,
		-0.382159, -0.903063, -0.196039,
		35.719185, 36.225235, 23.062275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423347, 36.887276, 23.544075>,  <35.986694, 36.857380, 23.199501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423347, 36.887276, 23.544075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432274, 36.492939, 23.477604>,  <35.437630, 36.256336, 23.437721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432274, 36.492939, 23.477604>,  <35.423347, 36.887276, 23.544075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432274, 36.492939, 23.477604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538069, -0.151933, 0.829095,
		-0.842606, 0.070916, -0.533842,
		0.022312, -0.985843, -0.166177,
		35.438969, 36.197186, 23.427752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756184, 36.661766, 23.573473>,  <35.423347, 36.887276, 23.544075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756184, 36.661766, 23.573473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997524, 36.359180, 23.674452>,  <35.142326, 36.177628, 23.735039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997524, 36.359180, 23.674452>,  <34.756184, 36.661766, 23.573473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997524, 36.359180, 23.674452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549747, -0.165212, 0.818831,
		-0.577711, -0.632821, -0.515545,
		0.603348, -0.756467, 0.252446,
		35.178528, 36.132240, 23.750185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276215, 37.053883, 23.109364>,  <34.756184, 36.661766, 23.573473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276215, 37.053883, 23.109364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992966, 37.325169, 23.030792>,  <33.823017, 37.487938, 22.983648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992966, 37.325169, 23.030792>,  <34.276215, 37.053883, 23.109364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992966, 37.325169, 23.030792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102027, -0.176992, -0.978910,
		-0.698676, -0.713232, 0.056137,
		-0.708125, 0.678213, -0.196429,
		33.780529, 37.528633, 22.971863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842739, 36.735668, 22.606791>,  <34.276215, 37.053883, 23.109364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842739, 36.735668, 22.606791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802139, 37.132072, 22.571947>,  <33.777779, 37.369915, 22.551041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802139, 37.132072, 22.571947>,  <33.842739, 36.735668, 22.606791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802139, 37.132072, 22.571947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083423, -0.078775, -0.993396,
		-0.991331, -0.108099, -0.074677,
		-0.101502, 0.991014, -0.087110,
		33.771690, 37.429379, 22.545815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244457, 36.774101, 22.147713>,  <33.842739, 36.735668, 22.606791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244457, 36.774101, 22.147713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478512, 37.096695, 22.113800>,  <33.618946, 37.290253, 22.093452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478512, 37.096695, 22.113800>,  <33.244457, 36.774101, 22.147713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478512, 37.096695, 22.113800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191323, -0.238893, -0.952012,
		-0.788039, 0.540840, -0.294085,
		0.585141, 0.806487, -0.084782,
		33.654053, 37.338642, 22.088366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000660, 37.140980, 21.584085>,  <33.244457, 36.774101, 22.147713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000660, 37.140980, 21.584085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355812, 37.323162, 21.610071>,  <33.568905, 37.432472, 21.625662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355812, 37.323162, 21.610071>,  <33.000660, 37.140980, 21.584085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355812, 37.323162, 21.610071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042108, 0.060163, -0.997300,
		-0.458139, 0.888221, 0.034239,
		0.887883, 0.455460, 0.064964,
		33.622177, 37.459801, 21.629560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047485, 37.718842, 21.174343>,  <33.000660, 37.140980, 21.584085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047485, 37.718842, 21.174343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430943, 37.607998, 21.200329>,  <33.661015, 37.541492, 21.215919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430943, 37.607998, 21.200329>,  <33.047485, 37.718842, 21.174343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430943, 37.607998, 21.200329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076817, 0.032130, -0.996527,
		0.274061, 0.960301, 0.052088,
		0.958640, -0.277110, 0.064962,
		33.718533, 37.524864, 21.219818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390667, 38.220547, 20.772789>,  <33.047485, 37.718842, 21.174343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390667, 38.220547, 20.772789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629288, 37.901520, 20.808584>,  <33.772461, 37.710102, 20.830061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629288, 37.901520, 20.808584>,  <33.390667, 38.220547, 20.772789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629288, 37.901520, 20.808584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066435, -0.062044, -0.995860,
		0.799821, 0.600026, 0.015975,
		0.596551, -0.797571, 0.089487,
		33.808254, 37.662247, 20.835430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936478, 38.535084, 20.423965>,  <33.390667, 38.220547, 20.772789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936478, 38.535084, 20.423965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963936, 38.136311, 20.408918>,  <33.980412, 37.897045, 20.399889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963936, 38.136311, 20.408918>,  <33.936478, 38.535084, 20.423965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963936, 38.136311, 20.408918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163186, 0.048420, -0.985406,
		0.984204, 0.061502, 0.166009,
		0.068643, -0.996932, -0.037619,
		33.984528, 37.837231, 20.397633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497246, 38.407001, 19.971743>,  <33.936478, 38.535084, 20.423965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497246, 38.407001, 19.971743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327614, 38.045013, 19.985531>,  <34.225834, 37.827820, 19.993805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327614, 38.045013, 19.985531>,  <34.497246, 38.407001, 19.971743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327614, 38.045013, 19.985531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022752, -0.027406, -0.999365,
		0.905339, -0.424595, -0.008968,
		-0.424080, -0.904969, 0.034472,
		34.200390, 37.773521, 19.995872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015587, 37.921631, 19.734861>,  <34.497246, 38.407001, 19.971743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015587, 37.921631, 19.734861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646561, 37.780251, 19.672962>,  <34.425144, 37.695423, 19.635822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646561, 37.780251, 19.672962>,  <35.015587, 37.921631, 19.734861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646561, 37.780251, 19.672962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179145, -0.037165, -0.983121,
		0.341730, -0.934716, 0.097606,
		-0.922566, -0.353448, -0.154749,
		34.369789, 37.674217, 19.626537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200520, 37.469288, 19.256338>,  <35.015587, 37.921631, 19.734861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200520, 37.469288, 19.256338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800896, 37.485001, 19.249037>,  <34.561119, 37.494431, 19.244656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800896, 37.485001, 19.249037>,  <35.200520, 37.469288, 19.256338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800896, 37.485001, 19.249037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019425, 0.029662, -0.999371,
		-0.038719, -0.998788, -0.030397,
		-0.999061, 0.039285, -0.018253,
		34.501179, 37.496784, 19.243561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005043, 36.948624, 18.787340>,  <35.200520, 37.469288, 19.256338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005043, 36.948624, 18.787340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706722, 37.214924, 18.796825>,  <34.527729, 37.374702, 18.802517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706722, 37.214924, 18.796825>,  <35.005043, 36.948624, 18.787340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706722, 37.214924, 18.796825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030961, 0.070195, -0.997053,
		-0.665449, -0.742869, -0.072964,
		-0.745801, 0.665747, 0.023711,
		34.482983, 37.414646, 18.803938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489773, 36.738510, 18.311144>,  <35.005043, 36.948624, 18.787340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489773, 36.738510, 18.311144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411049, 37.130440, 18.325096>,  <34.363815, 37.365597, 18.333467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411049, 37.130440, 18.325096>,  <34.489773, 36.738510, 18.311144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411049, 37.130440, 18.325096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092684, 0.054013, -0.994230,
		-0.976051, -0.192444, -0.101444,
		-0.196813, 0.979820, 0.034883,
		34.352005, 37.424385, 18.335562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890759, 36.874081, 17.906912>,  <34.489773, 36.738510, 18.311144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890759, 36.874081, 17.906912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105843, 37.210815, 17.925560>,  <34.234894, 37.412857, 17.936749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105843, 37.210815, 17.925560>,  <33.890759, 36.874081, 17.906912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105843, 37.210815, 17.925560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010703, 0.062106, -0.998012,
		-0.843061, 0.536144, 0.042405,
		0.537712, 0.841838, 0.046621,
		34.267155, 37.463367, 17.939547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663746, 37.322731, 17.359262>,  <33.890759, 36.874081, 17.906912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663746, 37.322731, 17.359262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020275, 37.465832, 17.470655>,  <34.234192, 37.551693, 17.537491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020275, 37.465832, 17.470655>,  <33.663746, 37.322731, 17.359262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020275, 37.465832, 17.470655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218414, 0.199429, -0.955261,
		-0.397282, 0.912273, 0.099619,
		0.891326, 0.357750, 0.278483,
		34.287674, 37.573158, 17.554201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772511, 38.007797, 16.979748>,  <33.663746, 37.322731, 17.359262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772511, 38.007797, 16.979748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126778, 37.847366, 17.073317>,  <34.339340, 37.751106, 17.129457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126778, 37.847366, 17.073317>,  <33.772511, 38.007797, 16.979748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126778, 37.847366, 17.073317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320792, 0.164356, -0.932781,
		0.335674, 0.901178, 0.274229,
		0.885673, -0.401080, 0.233921,
		34.392479, 37.727043, 17.143494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218311, 38.454048, 16.776236>,  <33.772511, 38.007797, 16.979748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218311, 38.454048, 16.776236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441250, 38.122444, 16.794590>,  <34.575012, 37.923481, 16.805603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441250, 38.122444, 16.794590>,  <34.218311, 38.454048, 16.776236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441250, 38.122444, 16.794590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269473, 0.128340, -0.954418,
		0.785335, 0.544304, 0.294926,
		0.557344, -0.829013, 0.045886,
		34.608452, 37.873741, 16.808355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880150, 38.695526, 16.698671>,  <34.218311, 38.454048, 16.776236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880150, 38.695526, 16.698671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895428, 38.310684, 16.590679>,  <34.904594, 38.079777, 16.525885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895428, 38.310684, 16.590679>,  <34.880150, 38.695526, 16.698671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895428, 38.310684, 16.590679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515019, 0.250482, -0.819765,
		0.856328, -0.107732, 0.505071,
		0.038197, -0.962108, -0.269979,
		34.906887, 38.022053, 16.509686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586910, 38.592190, 16.341425>,  <34.880150, 38.695526, 16.698671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586910, 38.592190, 16.341425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378033, 38.270004, 16.229321>,  <35.252708, 38.076694, 16.162058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378033, 38.270004, 16.229321>,  <35.586910, 38.592190, 16.341425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378033, 38.270004, 16.229321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701773, -0.219103, -0.677871,
		0.484594, -0.550657, 0.679666,
		-0.522191, -0.805463, -0.280260,
		35.221375, 38.028366, 16.145243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068554, 37.967796, 16.405054>,  <35.586910, 38.592190, 16.341425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068554, 37.967796, 16.405054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770210, 37.881561, 16.152954>,  <35.591206, 37.829819, 16.001694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770210, 37.881561, 16.152954>,  <36.068554, 37.967796, 16.405054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770210, 37.881561, 16.152954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658085, -0.092124, -0.747286,
		0.103048, -0.972128, 0.210590,
		-0.745858, -0.215592, -0.630251,
		35.546452, 37.816883, 15.963879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366634, 37.476585, 16.045265>,  <36.068554, 37.967796, 16.405054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366634, 37.476585, 16.045265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050846, 37.578861, 15.822064>,  <35.861374, 37.640228, 15.688145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050846, 37.578861, 15.822064>,  <36.366634, 37.476585, 16.045265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050846, 37.578861, 15.822064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537856, -0.149817, -0.829618,
		-0.295726, -0.955079, -0.019250,
		-0.789467, 0.255693, -0.558000,
		35.814007, 37.655567, 15.654664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201752, 36.930107, 15.545804>,  <36.366634, 37.476585, 16.045265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201752, 36.930107, 15.545804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050888, 37.263062, 15.383383>,  <35.960369, 37.462833, 15.285930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050888, 37.263062, 15.383383>,  <36.201752, 36.930107, 15.545804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050888, 37.263062, 15.383383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581427, -0.128461, -0.803393,
		-0.720898, -0.539098, -0.435523,
		-0.377160, 0.832389, -0.406053,
		35.937740, 37.512779, 15.261567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970570, 36.830925, 14.747409>,  <36.201752, 36.930107, 15.545804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970570, 36.830925, 14.747409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066727, 37.209602, 14.833189>,  <36.124420, 37.436810, 14.884657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066727, 37.209602, 14.833189>,  <35.970570, 36.830925, 14.747409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066727, 37.209602, 14.833189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518350, 0.061588, -0.852948,
		-0.820684, 0.316207, -0.475911,
		0.240397, 0.946689, 0.214451,
		36.138847, 37.493610, 14.897524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946331, 37.195652, 14.090641>,  <35.970570, 36.830925, 14.747409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946331, 37.195652, 14.090641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166142, 37.433353, 14.325548>,  <36.298027, 37.575974, 14.466493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166142, 37.433353, 14.325548>,  <35.946331, 37.195652, 14.090641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166142, 37.433353, 14.325548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727507, 0.005264, -0.686080,
		-0.410797, 0.804260, -0.429432,
		0.549526, 0.594255, 0.587267,
		36.330997, 37.611629, 14.501728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122654, 37.628460, 13.638867>,  <35.946331, 37.195652, 14.090641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122654, 37.628460, 13.638867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392132, 37.661278, 13.932644>,  <36.553818, 37.680969, 14.108910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392132, 37.661278, 13.932644>,  <36.122654, 37.628460, 13.638867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392132, 37.661278, 13.932644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738812, -0.097748, -0.666785,
		0.017083, 0.991823, -0.126470,
		0.673695, 0.082047, 0.734441,
		36.594242, 37.685890, 14.152976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656784, 38.158836, 13.452912>,  <36.122654, 37.628460, 13.638867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656784, 38.158836, 13.452912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857224, 37.931507, 13.713959>,  <36.977486, 37.795109, 13.870586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857224, 37.931507, 13.713959>,  <36.656784, 38.158836, 13.452912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857224, 37.931507, 13.713959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776297, -0.038071, -0.629217,
		0.382445, 0.821923, 0.422111,
		0.501097, -0.568325, 0.652617,
		37.007553, 37.761009, 13.909743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270000, 38.508869, 13.646236>,  <36.656784, 38.158836, 13.452912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270000, 38.508869, 13.646236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323051, 38.116604, 13.703810>,  <37.354881, 37.881245, 13.738354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323051, 38.116604, 13.703810>,  <37.270000, 38.508869, 13.646236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323051, 38.116604, 13.703810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865082, 0.043654, -0.499728,
		0.483779, 0.190794, 0.854140,
		0.132632, -0.980659, 0.143934,
		37.362843, 37.822407, 13.746990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964844, 38.466393, 13.834181>,  <37.270000, 38.508869, 13.646236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964844, 38.466393, 13.834181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859459, 38.091522, 13.742706>,  <37.796230, 37.866600, 13.687821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859459, 38.091522, 13.742706>,  <37.964844, 38.466393, 13.834181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859459, 38.091522, 13.742706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875363, -0.132636, -0.464917,
		0.405375, -0.322670, 0.855310,
		-0.263459, -0.937172, -0.228686,
		37.780422, 37.810371, 13.674101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474388, 38.090477, 14.131182>,  <37.964844, 38.466393, 13.834181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474388, 38.090477, 14.131182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278896, 37.895763, 13.841580>,  <38.161602, 37.778934, 13.667819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278896, 37.895763, 13.841580>,  <38.474388, 38.090477, 14.131182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278896, 37.895763, 13.841580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847438, -0.067657, -0.526566,
		0.207340, -0.870898, 0.445586,
		-0.488732, -0.486785, -0.724004,
		38.132278, 37.749729, 13.624379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008266, 37.821056, 13.863935>,  <38.474388, 38.090477, 14.131182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008266, 37.821056, 13.863935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734123, 37.738422, 13.584620>,  <38.569637, 37.688843, 13.417031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734123, 37.738422, 13.584620>,  <39.008266, 37.821056, 13.863935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734123, 37.738422, 13.584620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718112, -0.032627, -0.695162,
		0.120827, -0.977884, 0.170712,
		-0.685358, -0.206585, -0.698289,
		38.528515, 37.676449, 13.375134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360779, 37.376598, 13.342573>,  <39.008266, 37.821056, 13.863935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360779, 37.376598, 13.342573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035175, 37.518158, 13.158339>,  <38.839813, 37.603092, 13.047798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035175, 37.518158, 13.158339>,  <39.360779, 37.376598, 13.342573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035175, 37.518158, 13.158339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500534, 0.025065, -0.865354,
		-0.294702, -0.934948, -0.197541,
		-0.814013, 0.353898, -0.460587,
		38.790970, 37.624329, 13.020163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245586, 36.932838, 12.663431>,  <39.360779, 37.376598, 13.342573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245586, 36.932838, 12.663431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073978, 37.293545, 12.642448>,  <38.971012, 37.509968, 12.629859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073978, 37.293545, 12.642448>,  <39.245586, 36.932838, 12.663431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073978, 37.293545, 12.642448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441592, 0.158721, -0.883065,
		-0.787996, -0.402017, -0.466309,
		-0.429020, 0.901770, -0.052456,
		38.945271, 37.564075, 12.626712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153496, 36.900234, 11.984138>,  <39.245586, 36.932838, 12.663431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153496, 36.900234, 11.984138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092129, 37.283459, 12.080954>,  <39.055309, 37.513393, 12.139043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092129, 37.283459, 12.080954>,  <39.153496, 36.900234, 11.984138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092129, 37.283459, 12.080954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343153, 0.281349, -0.896152,
		-0.926665, -0.054433, -0.371926,
		-0.153421, 0.958060, 0.242038,
		39.046101, 37.570877, 12.153564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877575, 37.134571, 11.348801>,  <39.153496, 36.900234, 11.984138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877575, 37.134571, 11.348801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042942, 37.436966, 11.551808>,  <39.142162, 37.618401, 11.673613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042942, 37.436966, 11.551808>,  <38.877575, 37.134571, 11.348801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042942, 37.436966, 11.551808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320643, 0.400807, -0.858220,
		-0.852218, 0.517534, -0.076701,
		0.413416, 0.755984, 0.507518,
		39.166965, 37.663761, 11.704063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832516, 37.781487, 10.886466>,  <38.877575, 37.134571, 11.348801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832516, 37.781487, 10.886466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097141, 37.869461, 11.173229>,  <39.255917, 37.922245, 11.345287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097141, 37.869461, 11.173229>,  <38.832516, 37.781487, 10.886466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097141, 37.869461, 11.173229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647803, 0.313946, -0.694110,
		-0.377728, 0.923616, 0.065224,
		0.661568, 0.219933, 0.716908,
		39.295612, 37.935440, 11.388302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048107, 38.455421, 10.738669>,  <38.832516, 37.781487, 10.886466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048107, 38.455421, 10.738669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333462, 38.286503, 10.962363>,  <39.504673, 38.185150, 11.096580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333462, 38.286503, 10.962363>,  <39.048107, 38.455421, 10.738669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333462, 38.286503, 10.962363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683991, 0.246018, -0.686754,
		0.152434, 0.872432, 0.464356,
		0.713386, -0.422300, 0.559235,
		39.547478, 38.159813, 11.130134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720066, 38.981327, 10.827504>,  <39.048107, 38.455421, 10.738669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720066, 38.981327, 10.827504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855347, 38.609650, 10.887130>,  <39.936516, 38.386642, 10.922905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855347, 38.609650, 10.887130>,  <39.720066, 38.981327, 10.827504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855347, 38.609650, 10.887130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809118, 0.206221, -0.550274,
		0.480570, 0.306714, 0.821571,
		0.338202, -0.929193, 0.149064,
		39.956806, 38.330891, 10.931849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450050, 39.086926, 10.941859>,  <39.720066, 38.981327, 10.827504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450050, 39.086926, 10.941859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406174, 38.697460, 10.861917>,  <40.379848, 38.463779, 10.813951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406174, 38.697460, 10.861917>,  <40.450050, 39.086926, 10.941859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406174, 38.697460, 10.861917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706995, 0.064904, -0.704235,
		0.698661, -0.218545, 0.681257,
		-0.109691, -0.973666, -0.199856,
		40.373268, 38.405361, 10.801960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137131, 38.836288, 10.901760>,  <40.450050, 39.086926, 10.941859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137131, 38.836288, 10.901760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926472, 38.558407, 10.705789>,  <40.800076, 38.391678, 10.588206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926472, 38.558407, 10.705789>,  <41.137131, 38.836288, 10.901760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926472, 38.558407, 10.705789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656302, 0.034016, -0.753731,
		0.540283, -0.718494, 0.438019,
		-0.526652, -0.694701, -0.489927,
		40.768475, 38.349998, 10.558810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280098, 39.561901, 10.848982>,  <41.137131, 38.836288, 10.901760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280098, 39.561901, 10.848982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151733, 39.914326, 10.709988>,  <41.074715, 40.125782, 10.626591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151733, 39.914326, 10.709988>,  <41.280098, 39.561901, 10.848982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151733, 39.914326, 10.709988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650733, 0.061465, 0.756815,
		0.688158, 0.468992, 0.553610,
		-0.320913, 0.881061, -0.347486,
		41.055458, 40.178642, 10.605742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195309, 39.934410, 11.465878>,  <41.280098, 39.561901, 10.848982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195309, 39.934410, 11.465878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010155, 40.156624, 11.189585>,  <40.899063, 40.289951, 11.023808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010155, 40.156624, 11.189585>,  <41.195309, 39.934410, 11.465878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010155, 40.156624, 11.189585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651453, 0.315237, 0.690098,
		0.601119, 0.769419, 0.215986,
		-0.462888, 0.555536, -0.690735,
		40.871288, 40.323284, 10.982364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180180, 40.614296, 11.725376>,  <41.195309, 39.934410, 11.465878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180180, 40.614296, 11.725376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877308, 40.564163, 11.468949>,  <40.695583, 40.534084, 11.315093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877308, 40.564163, 11.468949>,  <41.180180, 40.614296, 11.725376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877308, 40.564163, 11.468949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648670, 0.259705, 0.715388,
		0.076825, 0.957520, -0.277945,
		-0.757182, -0.125335, -0.641067,
		40.650154, 40.526562, 11.276629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647934, 41.191353, 11.849561>,  <41.180180, 40.614296, 11.725376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647934, 41.191353, 11.849561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462032, 40.889851, 11.663721>,  <40.350491, 40.708950, 11.552217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462032, 40.889851, 11.663721>,  <40.647934, 41.191353, 11.849561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462032, 40.889851, 11.663721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706847, -0.000175, 0.707366,
		-0.533265, 0.657150, -0.532712,
		-0.464752, -0.753760, -0.464598,
		40.322605, 40.663723, 11.524342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967842, 41.367802, 11.766366>,  <40.647934, 41.191353, 11.849561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967842, 41.367802, 11.766366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935707, 40.972771, 11.712338>,  <39.916424, 40.735752, 11.679922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935707, 40.972771, 11.712338>,  <39.967842, 41.367802, 11.766366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935707, 40.972771, 11.712338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800891, -0.016713, 0.598577,
		-0.593397, 0.156265, -0.789596,
		-0.080340, -0.987574, -0.135069,
		39.911606, 40.676498, 11.671818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256386, 41.194771, 11.462956>,  <39.967842, 41.367802, 11.766366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256386, 41.194771, 11.462956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407402, 40.880306, 11.658675>,  <39.498013, 40.691628, 11.776107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407402, 40.880306, 11.658675>,  <39.256386, 41.194771, 11.462956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407402, 40.880306, 11.658675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797443, -0.007443, 0.603348,
		-0.470687, -0.617976, -0.629729,
		0.377542, -0.786161, 0.489298,
		39.520664, 40.644459, 11.805465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656837, 40.755894, 11.431815>,  <39.256386, 41.194771, 11.462956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656837, 40.755894, 11.431815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881184, 40.603378, 11.725767>,  <39.015793, 40.511868, 11.902138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881184, 40.603378, 11.725767>,  <38.656837, 40.755894, 11.431815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881184, 40.603378, 11.725767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761522, 0.110670, 0.638620,
		-0.324830, -0.917806, -0.228292,
		0.560865, -0.381293, 0.734879,
		39.049442, 40.488991, 11.946231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250114, 40.365459, 11.858548>,  <38.656837, 40.755894, 11.431815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250114, 40.365459, 11.858548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541080, 40.419724, 12.127611>,  <38.715660, 40.452282, 12.289049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541080, 40.419724, 12.127611>,  <38.250114, 40.365459, 11.858548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541080, 40.419724, 12.127611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681769, 0.031651, 0.730883,
		0.077863, -0.990249, 0.115514,
		0.727412, 0.135662, 0.672657,
		38.759304, 40.460423, 12.329408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981411, 40.069332, 12.340966>,  <38.250114, 40.365459, 11.858548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981411, 40.069332, 12.340966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267418, 40.275341, 12.530072>,  <38.439022, 40.398945, 12.643536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267418, 40.275341, 12.530072>,  <37.981411, 40.069332, 12.340966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267418, 40.275341, 12.530072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573325, 0.044991, 0.818092,
		0.400064, -0.855996, 0.327443,
		0.715015, 0.515021, 0.472765,
		38.481922, 40.429848, 12.671902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226357, 39.700703, 13.022827>,  <37.981411, 40.069332, 12.340966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226357, 39.700703, 13.022827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276478, 40.097431, 13.032596>,  <38.306549, 40.335468, 13.038457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276478, 40.097431, 13.032596>,  <38.226357, 39.700703, 13.022827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276478, 40.097431, 13.032596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617058, 0.058632, 0.784730,
		0.776878, -0.113395, 0.619356,
		0.125299, 0.991819, 0.024422,
		38.314068, 40.394978, 13.039922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047764, 39.815941, 13.597038>,  <38.226357, 39.700703, 13.022827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047764, 39.815941, 13.597038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030586, 40.201653, 13.492479>,  <38.020279, 40.433079, 13.429744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030586, 40.201653, 13.492479>,  <38.047764, 39.815941, 13.597038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030586, 40.201653, 13.492479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740149, 0.145038, 0.656615,
		0.671071, 0.221668, 0.707480,
		-0.042939, 0.964276, -0.261398,
		38.017704, 40.490936, 13.414060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956841, 40.089554, 14.141001>,  <38.047764, 39.815941, 13.597038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956841, 40.089554, 14.141001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840992, 40.395817, 13.911256>,  <37.771481, 40.579575, 13.773409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840992, 40.395817, 13.911256>,  <37.956841, 40.089554, 14.141001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840992, 40.395817, 13.911256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650891, 0.282413, 0.704687,
		0.701754, 0.577941, 0.416563,
		-0.289625, 0.765655, -0.574361,
		37.754105, 40.625515, 13.738948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978710, 40.760044, 14.544672>,  <37.956841, 40.089554, 14.141001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978710, 40.760044, 14.544672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722057, 40.756130, 14.237890>,  <37.568066, 40.753780, 14.053822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722057, 40.756130, 14.237890>,  <37.978710, 40.760044, 14.544672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722057, 40.756130, 14.237890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727982, 0.322690, 0.604907,
		0.241567, 0.946454, -0.214173,
		-0.641628, -0.009789, -0.766953,
		37.529568, 40.753193, 14.007804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622387, 41.341522, 14.677416>,  <37.978710, 40.760044, 14.544672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622387, 41.341522, 14.677416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362728, 41.189240, 14.414001>,  <37.206932, 41.097870, 14.255953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362728, 41.189240, 14.414001>,  <37.622387, 41.341522, 14.677416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362728, 41.189240, 14.414001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750747, 0.181334, 0.635213,
		-0.122416, 0.906741, -0.403528,
		-0.649148, -0.380708, -0.658535,
		37.167984, 41.075027, 14.216441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991390, 41.780254, 14.729430>,  <37.622387, 41.341522, 14.677416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991390, 41.780254, 14.729430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896549, 41.418667, 14.587096>,  <36.839645, 41.201714, 14.501696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896549, 41.418667, 14.587096>,  <36.991390, 41.780254, 14.729430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896549, 41.418667, 14.587096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791722, -0.032461, 0.610019,
		-0.562990, 0.426362, -0.707996,
		-0.237106, -0.903970, -0.355835,
		36.825417, 41.147476, 14.480346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275654, 41.711498, 14.588510>,  <36.991390, 41.780254, 14.729430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275654, 41.711498, 14.588510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392494, 41.334583, 14.653950>,  <36.462597, 41.108433, 14.693213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392494, 41.334583, 14.653950>,  <36.275654, 41.711498, 14.588510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392494, 41.334583, 14.653950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806516, -0.150756, 0.571668,
		-0.514014, -0.298929, -0.804009,
		0.292098, -0.942292, 0.163600,
		36.480125, 41.051895, 14.703030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626286, 41.294353, 14.587129>,  <36.275654, 41.711498, 14.588510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626286, 41.294353, 14.587129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902752, 41.058365, 14.754088>,  <36.068634, 40.916771, 14.854264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902752, 41.058365, 14.754088>,  <35.626286, 41.294353, 14.587129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902752, 41.058365, 14.754088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665151, -0.293469, 0.686622,
		-0.282578, -0.752218, -0.595246,
		0.691175, -0.589953, 0.417411,
		36.110104, 40.881374, 14.879309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304760, 40.715481, 14.650214>,  <35.626286, 41.294353, 14.587129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304760, 40.715481, 14.650214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598217, 40.679058, 14.919577>,  <35.774292, 40.657204, 15.081194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598217, 40.679058, 14.919577>,  <35.304760, 40.715481, 14.650214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598217, 40.679058, 14.919577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657120, -0.347484, 0.668915,
		0.173090, -0.933254, -0.314764,
		0.733643, -0.091055, 0.673406,
		35.818310, 40.651741, 15.121598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140556, 40.157089, 15.025703>,  <35.304760, 40.715481, 14.650214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140556, 40.157089, 15.025703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405262, 40.339108, 15.264032>,  <35.564083, 40.448318, 15.407030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405262, 40.339108, 15.264032>,  <35.140556, 40.157089, 15.025703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405262, 40.339108, 15.264032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535205, -0.269789, 0.800480,
		0.525003, -0.848614, 0.065008,
		0.661761, 0.455047, 0.595823,
		35.603790, 40.475620, 15.442780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347576, 39.633598, 15.513349>,  <35.140556, 40.157089, 15.025703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347576, 39.633598, 15.513349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444702, 39.966015, 15.713510>,  <35.502979, 40.165466, 15.833607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444702, 39.966015, 15.713510>,  <35.347576, 39.633598, 15.513349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444702, 39.966015, 15.713510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526631, -0.320282, 0.787451,
		0.814678, -0.454733, 0.359885,
		0.242816, 0.831046, 0.500403,
		35.517548, 40.215328, 15.863630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534416, 39.376869, 16.177929>,  <35.347576, 39.633598, 15.513349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534416, 39.376869, 16.177929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482040, 39.765228, 16.258139>,  <35.450615, 39.998245, 16.306265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482040, 39.765228, 16.258139>,  <35.534416, 39.376869, 16.177929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482040, 39.765228, 16.258139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400535, -0.236831, 0.885146,
		0.906877, 0.035584, 0.419890,
		-0.130940, 0.970899, 0.200524,
		35.442757, 40.056499, 16.318296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706833, 39.351551, 16.986977>,  <35.534416, 39.376869, 16.177929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706833, 39.351551, 16.986977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531582, 39.691936, 16.871111>,  <35.426430, 39.896168, 16.801592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531582, 39.691936, 16.871111>,  <35.706833, 39.351551, 16.986977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531582, 39.691936, 16.871111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421171, 0.090353, 0.902469,
		0.794141, 0.517394, 0.318815,
		-0.438127, 0.850964, -0.289665,
		35.400143, 39.947227, 16.784212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763237, 39.823933, 17.519119>,  <35.706833, 39.351551, 16.986977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763237, 39.823933, 17.519119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448463, 39.953411, 17.308992>,  <35.259602, 40.031097, 17.182917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448463, 39.953411, 17.308992>,  <35.763237, 39.823933, 17.519119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448463, 39.953411, 17.308992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505414, 0.150250, 0.849695,
		0.353973, 0.934155, 0.045365,
		-0.786930, 0.323697, -0.525320,
		35.212383, 40.050522, 17.151396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590023, 40.395683, 17.855114>,  <35.763237, 39.823933, 17.519119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590023, 40.395683, 17.855114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263351, 40.280655, 17.654976>,  <35.067348, 40.211639, 17.534893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263351, 40.280655, 17.654976>,  <35.590023, 40.395683, 17.855114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263351, 40.280655, 17.654976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553471, 0.144755, 0.820192,
		-0.163436, 0.946757, -0.277379,
		-0.816675, -0.287570, -0.500345,
		35.018349, 40.194386, 17.504873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090092, 40.862232, 18.049557>,  <35.590023, 40.395683, 17.855114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090092, 40.862232, 18.049557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896183, 40.553360, 17.885246>,  <34.779839, 40.368038, 17.786659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896183, 40.553360, 17.885246>,  <35.090092, 40.862232, 18.049557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896183, 40.553360, 17.885246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701144, 0.062320, 0.710291,
		-0.522872, 0.632341, -0.571620,
		-0.484769, -0.772180, -0.410777,
		34.750751, 40.321705, 17.762012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242180, 41.013638, 18.057621>,  <35.090092, 40.862232, 18.049557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242180, 41.013638, 18.057621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306568, 40.620949, 18.017015>,  <34.345203, 40.385334, 17.992651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306568, 40.620949, 18.017015>,  <34.242180, 41.013638, 18.057621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306568, 40.620949, 18.017015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742263, -0.188214, 0.643134,
		-0.650486, -0.028177, -0.758995,
		0.160975, -0.981724, -0.101515,
		34.354862, 40.326431, 17.986561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546917, 40.819031, 18.030020>,  <34.242180, 41.013638, 18.057621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546917, 40.819031, 18.030020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772446, 40.508308, 18.142223>,  <33.907761, 40.321877, 18.209545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772446, 40.508308, 18.142223>,  <33.546917, 40.819031, 18.030020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772446, 40.508308, 18.142223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634177, -0.189621, 0.749575,
		-0.529082, -0.600517, -0.599543,
		0.563819, -0.776803, 0.280509,
		33.941593, 40.275269, 18.226376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069309, 40.354259, 18.131222>,  <33.546917, 40.819031, 18.030020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069309, 40.354259, 18.131222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396862, 40.242325, 18.331671>,  <33.593395, 40.175163, 18.451941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396862, 40.242325, 18.331671>,  <33.069309, 40.354259, 18.131222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396862, 40.242325, 18.331671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539678, -0.078175, 0.838234,
		-0.195398, -0.956858, -0.215040,
		0.818882, -0.279841, 0.501120,
		33.642529, 40.158375, 18.482006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734074, 39.967575, 18.535643>,  <33.069309, 40.354259, 18.131222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734074, 39.967575, 18.535643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083931, 40.046406, 18.712801>,  <33.293846, 40.093704, 18.819096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083931, 40.046406, 18.712801>,  <32.734074, 39.967575, 18.535643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083931, 40.046406, 18.712801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417102, -0.159623, 0.894733,
		0.247025, -0.967307, -0.057413,
		0.874646, 0.197074, 0.442897,
		33.346325, 40.105530, 18.845671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981586, 39.338062, 18.946268>,  <32.734074, 39.967575, 18.535643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981586, 39.338062, 18.946268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154812, 39.666271, 19.095507>,  <33.258747, 39.863197, 19.185051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154812, 39.666271, 19.095507>,  <32.981586, 39.338062, 18.946268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154812, 39.666271, 19.095507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400046, -0.195960, 0.895301,
		0.807726, -0.536977, 0.243383,
		0.433062, 0.820522, 0.373097,
		33.284729, 39.912426, 19.207436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323730, 39.092831, 19.616026>,  <32.981586, 39.338062, 18.946268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323730, 39.092831, 19.616026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288727, 39.489395, 19.654884>,  <33.267727, 39.727333, 19.678200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288727, 39.489395, 19.654884>,  <33.323730, 39.092831, 19.616026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288727, 39.489395, 19.654884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206275, -0.113442, 0.971896,
		0.974574, 0.065008, 0.214431,
		-0.087506, 0.991416, 0.097148,
		33.262474, 39.786819, 19.684029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572392, 39.162014, 20.254660>,  <33.323730, 39.092831, 19.616026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572392, 39.162014, 20.254660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399780, 39.517441, 20.192402>,  <33.296211, 39.730698, 20.155048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399780, 39.517441, 20.192402>,  <33.572392, 39.162014, 20.254660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399780, 39.517441, 20.192402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323048, 0.008875, 0.946341,
		0.842272, 0.458655, 0.283221,
		-0.431530, 0.888570, -0.155643,
		33.270321, 39.784012, 20.145710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707840, 39.638569, 20.903767>,  <33.572392, 39.162014, 20.254660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707840, 39.638569, 20.903767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408970, 39.811504, 20.701851>,  <33.229649, 39.915264, 20.580702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408970, 39.811504, 20.701851>,  <33.707840, 39.638569, 20.903767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408970, 39.811504, 20.701851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451682, 0.226850, 0.862857,
		0.487556, 0.872711, 0.025782,
		-0.747176, 0.432337, -0.504790,
		33.184818, 39.941204, 20.550413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649399, 40.265583, 21.128744>,  <33.707840, 39.638569, 20.903767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649399, 40.265583, 21.128744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286457, 40.216991, 20.967770>,  <33.068691, 40.187836, 20.871185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286457, 40.216991, 20.967770>,  <33.649399, 40.265583, 21.128744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286457, 40.216991, 20.967770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418943, 0.182478, 0.889488,
		-0.034618, 0.975677, -0.216464,
		-0.907353, -0.121478, -0.402436,
		33.014252, 40.180550, 20.847038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221184, 40.697353, 21.477253>,  <33.649399, 40.265583, 21.128744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221184, 40.697353, 21.477253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970783, 40.423512, 21.327890>,  <32.820541, 40.259205, 21.238272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970783, 40.423512, 21.327890>,  <33.221184, 40.697353, 21.477253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970783, 40.423512, 21.327890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396779, -0.132597, 0.908286,
		-0.671333, 0.716750, -0.188632,
		-0.626002, -0.684608, -0.373408,
		32.782982, 40.218128, 21.215868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583614, 40.981049, 21.720879>,  <33.221184, 40.697353, 21.477253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583614, 40.981049, 21.720879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560684, 40.590549, 21.637300>,  <32.546925, 40.356251, 21.587154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560684, 40.590549, 21.637300>,  <32.583614, 40.981049, 21.720879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560684, 40.590549, 21.637300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442697, -0.162731, 0.881781,
		-0.894837, 0.143046, -0.422853,
		-0.057324, -0.976246, -0.208944,
		32.543488, 40.297676, 21.574617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947601, 40.817123, 21.937469>,  <32.583614, 40.981049, 21.720879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947601, 40.817123, 21.937469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141712, 40.468086, 21.915253>,  <32.258179, 40.258663, 21.901922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141712, 40.468086, 21.915253>,  <31.947601, 40.817123, 21.937469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141712, 40.468086, 21.915253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308518, -0.230321, 0.922913,
		-0.818122, -0.430732, -0.380981,
		0.485276, -0.872595, -0.055542,
		32.287296, 40.206306, 21.898590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516733, 40.314297, 22.226505>,  <31.947601, 40.817123, 21.937469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516733, 40.314297, 22.226505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876705, 40.142418, 22.256130>,  <32.092690, 40.039291, 22.273905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876705, 40.142418, 22.256130>,  <31.516733, 40.314297, 22.226505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876705, 40.142418, 22.256130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216118, -0.292038, 0.931669,
		-0.378711, -0.854441, -0.355680,
		0.899928, -0.429701, 0.074062,
		32.146683, 40.013508, 22.278349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399881, 39.566654, 22.474102>,  <31.516733, 40.314297, 22.226505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399881, 39.566654, 22.474102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777218, 39.672153, 22.554642>,  <32.003620, 39.735455, 22.602966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777218, 39.672153, 22.554642>,  <31.399881, 39.566654, 22.474102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777218, 39.672153, 22.554642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107376, -0.331516, 0.937320,
		0.313970, -0.905833, -0.284412,
		0.943342, 0.263751, 0.201351,
		32.060219, 39.751278, 22.615047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764380, 39.083336, 22.968252>,  <31.399881, 39.566654, 22.474102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764380, 39.083336, 22.968252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928816, 39.446247, 23.003677>,  <32.027477, 39.663994, 23.024933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928816, 39.446247, 23.003677>,  <31.764380, 39.083336, 22.968252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928816, 39.446247, 23.003677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112405, -0.045962, 0.992599,
		0.904637, -0.418006, 0.083088,
		0.411093, 0.907281, 0.088565,
		32.052143, 39.718430, 23.030247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958645, 39.152023, 23.657907>,  <31.764380, 39.083336, 22.968252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958645, 39.152023, 23.657907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069141, 39.527172, 23.573923>,  <32.135437, 39.752262, 23.523533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069141, 39.527172, 23.573923>,  <31.958645, 39.152023, 23.657907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069141, 39.527172, 23.573923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134805, 0.254114, 0.957734,
		0.951588, -0.236259, 0.196626,
		0.276239, 0.937874, -0.209963,
		32.152012, 39.808533, 23.510935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547920, 39.283909, 24.184717>,  <31.958645, 39.152023, 23.657907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547920, 39.283909, 24.184717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284935, 39.575394, 24.108070>,  <32.127144, 39.750286, 24.062082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284935, 39.575394, 24.108070>,  <32.547920, 39.283909, 24.184717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284935, 39.575394, 24.108070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234515, 0.043778, 0.971126,
		0.716062, 0.683418, 0.142112,
		-0.657464, 0.728714, -0.191619,
		32.087696, 39.794006, 24.050585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807789, 39.806637, 24.543415>,  <32.547920, 39.283909, 24.184717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807789, 39.806637, 24.543415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408325, 39.818291, 24.526291>,  <32.168648, 39.825283, 24.516016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408325, 39.818291, 24.526291>,  <32.807789, 39.806637, 24.543415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408325, 39.818291, 24.526291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048716, -0.248246, 0.967471,
		0.017560, 0.968259, 0.249332,
		-0.998658, 0.029136, -0.042811,
		32.108727, 39.827030, 24.513447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492493, 40.211861, 25.101023>,  <32.807789, 39.806637, 24.543415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492493, 40.211861, 25.101023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230263, 39.933121, 24.984661>,  <32.072926, 39.765877, 24.914845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230263, 39.933121, 24.984661>,  <32.492493, 40.211861, 25.101023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230263, 39.933121, 24.984661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130766, -0.274654, 0.952610,
		-0.743721, 0.662549, 0.088933,
		-0.655576, -0.696846, -0.290905,
		32.033588, 39.724068, 24.897390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889542, 40.427677, 25.406521>,  <32.492493, 40.211861, 25.101023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889542, 40.427677, 25.406521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908329, 40.035892, 25.328079>,  <31.919601, 39.800823, 25.281015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908329, 40.035892, 25.328079>,  <31.889542, 40.427677, 25.406521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908329, 40.035892, 25.328079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137903, -0.200797, 0.969878,
		-0.989332, -0.018509, -0.144501,
		0.046967, -0.979458, -0.196103,
		31.922419, 39.742054, 25.269249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062943, 40.794563, 26.143393>,  <31.889542, 40.427677, 25.406521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062943, 40.794563, 26.143393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389069, 40.915333, 25.945763>,  <32.584743, 40.987793, 25.827185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389069, 40.915333, 25.945763>,  <32.062943, 40.794563, 26.143393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389069, 40.915333, 25.945763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544811, -0.688973, 0.478014,
		-0.196080, -0.658907, -0.726219,
		0.815312, 0.301923, -0.494073,
		32.633663, 41.005909, 25.797541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418831, 40.196850, 25.834814>,  <32.062943, 40.794563, 26.143393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418831, 40.196850, 25.834814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676544, 40.495899, 25.899256>,  <32.831173, 40.675327, 25.937920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676544, 40.495899, 25.899256>,  <32.418831, 40.196850, 25.834814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676544, 40.495899, 25.899256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511285, -0.577721, 0.636259,
		0.568754, -0.327565, -0.754467,
		0.644288, 0.747623, 0.161102,
		32.869831, 40.720184, 25.947586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898415, 39.519073, 25.750002>,  <32.418831, 40.196850, 25.834814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898415, 39.519073, 25.750002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294834, 39.520943, 25.803381>,  <33.532684, 39.522064, 25.835409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294834, 39.520943, 25.803381>,  <32.898415, 39.519073, 25.750002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294834, 39.520943, 25.803381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105039, -0.589740, 0.800733,
		0.082445, -0.807579, -0.583968,
		0.991045, 0.004677, 0.133449,
		33.592148, 39.522346, 25.843416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137814, 38.838337, 25.782543>,  <32.898415, 39.519073, 25.750002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137814, 38.838337, 25.782543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329491, 39.092587, 26.024651>,  <33.444496, 39.245136, 26.169914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329491, 39.092587, 26.024651>,  <33.137814, 38.838337, 25.782543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329491, 39.092587, 26.024651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163815, -0.612715, 0.773140,
		0.862285, -0.469638, -0.189486,
		0.479197, 0.635626, 0.605269,
		33.473251, 39.283276, 26.206232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627960, 38.448051, 26.145555>,  <33.137814, 38.838337, 25.782543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627960, 38.448051, 26.145555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547916, 38.783676, 26.347918>,  <33.499889, 38.985050, 26.469336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547916, 38.783676, 26.347918>,  <33.627960, 38.448051, 26.145555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547916, 38.783676, 26.347918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216290, -0.541439, 0.812442,
		0.955603, 0.053151, 0.289825,
		-0.200105, 0.839058, 0.505905,
		33.487885, 39.035393, 26.499689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134937, 38.626022, 26.663303>,  <33.627960, 38.448051, 26.145555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134937, 38.626022, 26.663303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752197, 38.720623, 26.730831>,  <33.522552, 38.777382, 26.771349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752197, 38.720623, 26.730831>,  <34.134937, 38.626022, 26.663303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752197, 38.720623, 26.730831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024322, -0.513764, 0.857587,
		0.289554, 0.824690, 0.485844,
		-0.956853, 0.236500, 0.168821,
		33.465141, 38.791573, 26.781477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039356, 38.821259, 27.437717>,  <34.134937, 38.626022, 26.663303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039356, 38.821259, 27.437717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712399, 38.662567, 27.270634>,  <33.516224, 38.567352, 27.170383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712399, 38.662567, 27.270634>,  <34.039356, 38.821259, 27.437717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712399, 38.662567, 27.270634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081593, -0.638047, 0.765662,
		-0.570274, 0.659928, 0.489165,
		-0.817392, -0.396725, -0.417708,
		33.467182, 38.543549, 27.145321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563103, 38.623852, 27.950176>,  <34.039356, 38.821259, 27.437717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563103, 38.623852, 27.950176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473286, 38.387463, 27.640251>,  <33.419395, 38.245628, 27.454296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473286, 38.387463, 27.640251>,  <33.563103, 38.623852, 27.950176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473286, 38.387463, 27.640251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063390, -0.784575, 0.616786,
		-0.972400, 0.187612, 0.138711,
		-0.224546, -0.590969, -0.774813,
		33.405922, 38.210171, 27.407808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159134, 38.123688, 28.249323>,  <33.563103, 38.623852, 27.950176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159134, 38.123688, 28.249323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277355, 37.952248, 27.907808>,  <33.348289, 37.849384, 27.702900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277355, 37.952248, 27.907808>,  <33.159134, 38.123688, 28.249323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277355, 37.952248, 27.907808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092632, -0.876645, 0.472137,
		-0.950825, -0.218630, -0.219393,
		0.295553, -0.428597, -0.853788,
		33.366020, 37.823669, 27.651672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855160, 37.964218, 28.359253>,  <33.159134, 38.123688, 28.249323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855160, 37.964218, 28.359253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114113, 37.898666, 28.061518>,  <34.269485, 37.859337, 27.882877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114113, 37.898666, 28.061518>,  <33.855160, 37.964218, 28.359253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114113, 37.898666, 28.061518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658863, -0.370601, 0.654641,
		-0.383137, -0.914219, -0.131943,
		0.647383, -0.163885, -0.744336,
		34.308327, 37.849503, 27.838217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140602, 37.228554, 28.350414>,  <33.855160, 37.964218, 28.359253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140602, 37.228554, 28.350414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393562, 37.485363, 28.177036>,  <34.545338, 37.639450, 28.073009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393562, 37.485363, 28.177036>,  <34.140602, 37.228554, 28.350414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393562, 37.485363, 28.177036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738228, -0.329954, 0.588344,
		0.234717, -0.692048, -0.682625,
		0.632398, 0.642028, -0.433444,
		34.583282, 37.677971, 28.047003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727852, 36.906734, 28.149887>,  <34.140602, 37.228554, 28.350414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727852, 36.906734, 28.149887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823429, 37.284153, 28.241644>,  <34.880775, 37.510605, 28.296698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823429, 37.284153, 28.241644>,  <34.727852, 36.906734, 28.149887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823429, 37.284153, 28.241644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702728, -0.331059, 0.629741,
		0.670134, 0.010726, -0.742163,
		0.238945, 0.943549, 0.229392,
		34.895111, 37.567219, 28.310461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476009, 37.108364, 27.944031>,  <34.727852, 36.906734, 28.149887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476009, 37.108364, 27.944031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321777, 37.299278, 28.259886>,  <35.229237, 37.413826, 28.449400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321777, 37.299278, 28.259886>,  <35.476009, 37.108364, 27.944031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321777, 37.299278, 28.259886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229007, -0.779532, 0.582998,
		0.893803, 0.405625, 0.191271,
		-0.385580, 0.477283, 0.789639,
		35.206104, 37.442463, 28.496777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893757, 36.971416, 28.595020>,  <35.476009, 37.108364, 27.944031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893757, 36.971416, 28.595020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552353, 37.125462, 28.735430>,  <35.347511, 37.217888, 28.819675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552353, 37.125462, 28.735430>,  <35.893757, 36.971416, 28.595020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552353, 37.125462, 28.735430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130136, -0.494763, 0.859229,
		0.504570, 0.779039, 0.372167,
		-0.853507, 0.385109, 0.351023,
		35.296299, 37.240993, 28.840736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806805, 36.177238, 28.798920>,  <35.893757, 36.971416, 28.595020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806805, 36.177238, 28.798920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787086, 36.196533, 28.399872>,  <35.775257, 36.208111, 28.160442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787086, 36.196533, 28.399872>,  <35.806805, 36.177238, 28.798920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787086, 36.196533, 28.399872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889311, -0.456780, 0.021859,
		-0.454638, 0.888271, 0.065414,
		-0.049296, 0.048235, -0.997619,
		35.772297, 36.211002, 28.100586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164921, 36.483086, 28.544640>,  <35.806805, 36.177238, 28.798920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164921, 36.483086, 28.544640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298809, 36.156662, 28.356169>,  <35.379143, 35.960808, 28.243086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298809, 36.156662, 28.356169>,  <35.164921, 36.483086, 28.544640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298809, 36.156662, 28.356169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752971, -0.532263, 0.386951,
		-0.566566, 0.225264, -0.792628,
		0.334720, -0.816059, -0.471180,
		35.399227, 35.911842, 28.214815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559189, 36.051907, 28.643791>,  <35.164921, 36.483086, 28.544640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559189, 36.051907, 28.643791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821739, 35.781239, 28.510349>,  <34.979267, 35.618839, 28.430285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821739, 35.781239, 28.510349>,  <34.559189, 36.051907, 28.643791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821739, 35.781239, 28.510349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485949, -0.717445, 0.499125,
		-0.577085, -0.165498, -0.799739,
		0.656373, -0.676670, -0.333604,
		35.018650, 35.578236, 28.410269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183537, 35.555836, 28.172514>,  <34.559189, 36.051907, 28.643791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183537, 35.555836, 28.172514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505646, 35.381126, 28.332897>,  <34.698910, 35.276302, 28.429127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505646, 35.381126, 28.332897>,  <34.183537, 35.555836, 28.172514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505646, 35.381126, 28.332897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572694, -0.748052, 0.335320,
		0.153478, -0.499650, -0.852523,
		0.805274, -0.436771, 0.400956,
		34.747227, 35.250095, 28.453184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306488, 34.912281, 27.868555>,  <34.183537, 35.555836, 28.172514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306488, 34.912281, 27.868555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473328, 34.906975, 28.232061>,  <34.573433, 34.903790, 28.450165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473328, 34.906975, 28.232061>,  <34.306488, 34.912281, 27.868555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473328, 34.906975, 28.232061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309324, -0.942273, 0.128215,
		0.854603, -0.334581, -0.397127,
		0.417100, -0.013269, 0.908763,
		34.598457, 34.902996, 28.504690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349865, 34.136623, 28.070345>,  <34.306488, 34.912281, 27.868555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349865, 34.136623, 28.070345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405052, 34.307426, 28.427811>,  <34.438164, 34.409908, 28.642290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405052, 34.307426, 28.427811>,  <34.349865, 34.136623, 28.070345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405052, 34.307426, 28.427811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351943, -0.822269, 0.447225,
		0.925798, -0.376221, 0.036835,
		0.137967, 0.427003, 0.893663,
		34.446442, 34.435528, 28.695910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915154, 33.701389, 28.419518>,  <34.349865, 34.136623, 28.070345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915154, 33.701389, 28.419518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662277, 33.903500, 28.654476>,  <34.510551, 34.024765, 28.795452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662277, 33.903500, 28.654476>,  <34.915154, 33.701389, 28.419518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662277, 33.903500, 28.654476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337003, -0.861960, 0.378754,
		0.697689, 0.041489, 0.715198,
		-0.632186, 0.505277, 0.587398,
		34.472622, 34.055084, 28.830696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905720, 33.341877, 29.175079>,  <34.915154, 33.701389, 28.419518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905720, 33.341877, 29.175079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569820, 33.544426, 29.096697>,  <34.368279, 33.665955, 29.049667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569820, 33.544426, 29.096697>,  <34.905720, 33.341877, 29.175079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569820, 33.544426, 29.096697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542770, -0.773111, 0.328176,
		0.014687, 0.381944, 0.924069,
		-0.839753, 0.506377, -0.195954,
		34.317894, 33.696339, 29.037910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367462, 33.731499, 29.500160>,  <34.905720, 33.341877, 29.175079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367462, 33.731499, 29.500160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570293, 33.575195, 29.192865>,  <35.691990, 33.481415, 29.008490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570293, 33.575195, 29.192865>,  <35.367462, 33.731499, 29.500160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570293, 33.575195, 29.192865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554941, 0.830010, -0.055890,
		0.659482, -0.397985, 0.637723,
		0.507074, -0.390757, -0.768235,
		35.722416, 33.457970, 28.962395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093456, 33.719452, 29.655962>,  <35.367462, 33.731499, 29.500160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093456, 33.719452, 29.655962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046814, 33.728172, 29.258787>,  <36.018829, 33.733402, 29.020481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046814, 33.728172, 29.258787>,  <36.093456, 33.719452, 29.655962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046814, 33.728172, 29.258787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584778, 0.809595, -0.050903,
		0.802768, -0.586584, -0.107154,
		-0.116610, 0.021797, -0.992938,
		36.011829, 33.734711, 28.960905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818832, 33.790764, 29.301565>,  <36.093456, 33.719452, 29.655962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818832, 33.790764, 29.301565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534882, 33.949371, 29.068722>,  <36.364513, 34.044537, 28.929016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534882, 33.949371, 29.068722>,  <36.818832, 33.790764, 29.301565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534882, 33.949371, 29.068722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589454, 0.786834, -0.182857,
		0.385515, -0.472931, -0.792284,
		-0.709875, 0.396521, -0.582107,
		36.321918, 34.068329, 28.894089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365917, 34.233974, 29.761776>,  <36.818832, 33.790764, 29.301565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365917, 34.233974, 29.761776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555500, 34.001644, 30.026505>,  <37.669250, 33.862247, 30.185341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555500, 34.001644, 30.026505>,  <37.365917, 34.233974, 29.761776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555500, 34.001644, 30.026505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429517, -0.503626, -0.749584,
		0.768687, 0.639534, 0.010776,
		0.473957, -0.580824, 0.661822,
		37.697689, 33.827396, 30.225052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039387, 34.366119, 29.684883>,  <37.365917, 34.233974, 29.761776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039387, 34.366119, 29.684883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951405, 33.991074, 29.792580>,  <37.898617, 33.766045, 29.857199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951405, 33.991074, 29.792580>,  <38.039387, 34.366119, 29.684883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951405, 33.991074, 29.792580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485482, -0.344609, -0.803463,
		0.846125, -0.046014, 0.530995,
		-0.219956, -0.937618, 0.269243,
		37.885418, 33.709789, 29.873352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703896, 33.899990, 29.856152>,  <38.039387, 34.366119, 29.684883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703896, 33.899990, 29.856152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377953, 33.719734, 29.710314>,  <38.182388, 33.611580, 29.622810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377953, 33.719734, 29.710314>,  <38.703896, 33.899990, 29.856152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377953, 33.719734, 29.710314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539054, -0.357841, -0.762476,
		0.213134, -0.817848, 0.534509,
		-0.814859, -0.450639, -0.364596,
		38.133495, 33.584541, 29.600935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033924, 33.571407, 30.507082>,  <38.703896, 33.899990, 29.856152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033924, 33.571407, 30.507082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759136, 33.714836, 30.759907>,  <38.594265, 33.800892, 30.911602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759136, 33.714836, 30.759907>,  <39.033924, 33.571407, 30.507082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759136, 33.714836, 30.759907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625637, 0.150630, -0.765434,
		-0.369669, -0.921270, 0.120857,
		-0.686967, 0.358570, 0.632064,
		38.553047, 33.822407, 30.949526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381569, 33.326984, 30.458132>,  <39.033924, 33.571407, 30.507082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381569, 33.326984, 30.458132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307144, 33.688881, 30.611406>,  <38.262489, 33.906017, 30.703371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307144, 33.688881, 30.611406>,  <38.381569, 33.326984, 30.458132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307144, 33.688881, 30.611406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600882, 0.203789, -0.772923,
		-0.777382, -0.374058, 0.505725,
		-0.186058, 0.904738, 0.383187,
		38.251328, 33.960300, 30.726362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750286, 33.710140, 30.847725>,  <38.381569, 33.326984, 30.458132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750286, 33.710140, 30.847725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903645, 33.977928, 30.593224>,  <37.995659, 34.138599, 30.440523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903645, 33.977928, 30.593224>,  <37.750286, 33.710140, 30.847725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903645, 33.977928, 30.593224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859734, 0.007011, -0.510693,
		-0.337432, 0.742807, 0.578253,
		0.383401, 0.669468, -0.636252,
		38.018665, 34.178768, 30.402348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971539, 33.452023, 31.541353>,  <37.750286, 33.710140, 30.847725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971539, 33.452023, 31.541353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306702, 33.269062, 31.422234>,  <38.507801, 33.159286, 31.350761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306702, 33.269062, 31.422234>,  <37.971539, 33.452023, 31.541353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306702, 33.269062, 31.422234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307081, -0.056001, 0.950034,
		-0.451229, -0.887493, 0.093537,
		0.837910, -0.457406, -0.297801,
		38.558075, 33.131840, 31.332893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109779, 32.821777, 32.063148>,  <37.971539, 33.452023, 31.541353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109779, 32.821777, 32.063148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435925, 32.971790, 31.886721>,  <38.631611, 33.061798, 31.780865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435925, 32.971790, 31.886721>,  <38.109779, 32.821777, 32.063148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435925, 32.971790, 31.886721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497009, -0.062681, 0.865478,
		0.296937, -0.924890, -0.237503,
		0.815359, 0.375033, -0.441066,
		38.680531, 33.084301, 31.754400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582809, 32.392448, 32.243549>,  <38.109779, 32.821777, 32.063148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582809, 32.392448, 32.243549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817150, 32.702221, 32.148026>,  <38.957756, 32.888084, 32.090714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817150, 32.702221, 32.148026>,  <38.582809, 32.392448, 32.243549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817150, 32.702221, 32.148026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733895, -0.381988, 0.561679,
		0.343761, -0.504322, -0.792141,
		0.585855, 0.774432, -0.238806,
		38.992908, 32.934551, 32.076382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255795, 32.177303, 32.233250>,  <38.582809, 32.392448, 32.243549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255795, 32.177303, 32.233250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262505, 32.557751, 32.356598>,  <39.266529, 32.786018, 32.430607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262505, 32.557751, 32.356598>,  <39.255795, 32.177303, 32.233250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262505, 32.557751, 32.356598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688667, -0.234583, 0.686082,
		0.724884, 0.200856, -0.658939,
		0.016772, 0.951119, 0.308368,
		39.267536, 32.843086, 32.449108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955788, 32.558372, 32.161118>,  <39.255795, 32.177303, 32.233250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955788, 32.558372, 32.161118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741077, 32.721096, 32.456787>,  <39.612251, 32.818729, 32.634190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741077, 32.721096, 32.456787>,  <39.955788, 32.558372, 32.161118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741077, 32.721096, 32.456787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774173, -0.110840, 0.623194,
		0.335452, 0.906763, -0.255445,
		-0.536776, 0.406810, 0.739173,
		39.580044, 32.843140, 32.678539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161877, 31.840681, 32.019909>,  <39.955788, 32.558372, 32.161118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161877, 31.840681, 32.019909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557152, 31.870865, 32.073261>,  <40.794315, 31.888975, 32.105274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557152, 31.870865, 32.073261>,  <40.161877, 31.840681, 32.019909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557152, 31.870865, 32.073261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045853, -0.684916, 0.727178,
		0.146230, -0.724704, -0.673365,
		0.988187, 0.075460, 0.133385,
		40.853607, 31.893503, 32.113277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372726, 31.217299, 32.254326>,  <40.161877, 31.840681, 32.019909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372726, 31.217299, 32.254326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678108, 31.452719, 32.360718>,  <40.861336, 31.593971, 32.424553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678108, 31.452719, 32.360718>,  <40.372726, 31.217299, 32.254326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678108, 31.452719, 32.360718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240156, -0.640982, 0.729018,
		0.599552, -0.492696, -0.630704,
		0.763455, 0.588552, 0.265978,
		40.907143, 31.629284, 32.440510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966892, 30.887081, 32.182209>,  <40.372726, 31.217299, 32.254326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966892, 30.887081, 32.182209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925892, 31.125547, 32.500725>,  <40.901291, 31.268627, 32.691833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925892, 31.125547, 32.500725>,  <40.966892, 30.887081, 32.182209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925892, 31.125547, 32.500725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067530, -0.794489, 0.603512,
		0.992438, 0.115634, 0.041177,
		-0.102501, 0.596168, 0.796290,
		40.895142, 31.304398, 32.739613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436348, 30.492687, 32.557995>,  <40.966892, 30.887081, 32.182209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436348, 30.492687, 32.557995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705227, 30.231474, 32.697533>,  <41.866554, 30.074745, 32.781258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705227, 30.231474, 32.697533>,  <41.436348, 30.492687, 32.557995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705227, 30.231474, 32.697533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326446, -0.161477, -0.931320,
		0.664513, 0.739914, 0.104635,
		0.672201, -0.653033, 0.348846,
		41.906887, 30.035564, 32.802185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060467, 30.710896, 32.308151>,  <41.436348, 30.492687, 32.557995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060467, 30.710896, 32.308151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.050514, 30.313957, 32.356529>,  <42.044544, 30.075794, 32.385555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.050514, 30.313957, 32.356529>,  <42.060467, 30.710896, 32.308151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050514, 30.313957, 32.356529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323273, -0.122470, -0.938347,
		0.945979, 0.015755, 0.323846,
		-0.024878, -0.992347, 0.120947,
		42.043049, 30.016253, 32.392815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692532, 30.437426, 32.358555>,  <42.060467, 30.710896, 32.308151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692532, 30.437426, 32.358555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424644, 30.203882, 32.174999>,  <42.263912, 30.063755, 32.064865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424644, 30.203882, 32.174999>,  <42.692532, 30.437426, 32.358555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424644, 30.203882, 32.174999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495330, 0.109185, -0.861816,
		0.553284, -0.804479, 0.216080,
		-0.669720, -0.583860, -0.458893,
		42.223728, 30.028725, 32.037331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998169, 29.952343, 31.969625>,  <42.692532, 30.437426, 32.358555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998169, 29.952343, 31.969625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642315, 30.020298, 31.800064>,  <42.428802, 30.061071, 31.698328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642315, 30.020298, 31.800064>,  <42.998169, 29.952343, 31.969625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642315, 30.020298, 31.800064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434762, 0.030965, -0.900013,
		-0.139777, -0.984976, -0.101409,
		-0.889631, 0.169890, -0.423903,
		42.375427, 30.071264, 31.672894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500198, 29.534855, 32.327217>,  <42.998169, 29.952343, 31.969625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500198, 29.534855, 32.327217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815689, 29.765631, 32.412113>,  <44.004986, 29.904097, 32.463051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815689, 29.765631, 32.412113>,  <43.500198, 29.534855, 32.327217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815689, 29.765631, 32.412113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364100, 0.160245, 0.917471,
		0.495316, -0.800913, 0.336454,
		0.788729, 0.576941, 0.212241,
		44.052307, 29.938713, 32.475784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666225, 29.259192, 32.934834>,  <43.500198, 29.534855, 32.327217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666225, 29.259192, 32.934834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856678, 29.610296, 32.913528>,  <43.970947, 29.820959, 32.900745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856678, 29.610296, 32.913528>,  <43.666225, 29.259192, 32.934834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856678, 29.610296, 32.913528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077088, 0.102003, 0.991793,
		0.875991, -0.468112, 0.116231,
		0.476126, 0.877762, -0.053267,
		43.999516, 29.873625, 32.897549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.394325, 29.362272, 33.277130>,  <43.666225, 29.259192, 32.934834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.394325, 29.362272, 33.277130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138035, 29.669378, 33.278690>,  <43.984261, 29.853642, 33.279625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138035, 29.669378, 33.278690>,  <44.394325, 29.362272, 33.277130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138035, 29.669378, 33.278690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151256, -0.131206, 0.979748,
		0.752726, 0.627156, 0.200195,
		-0.640722, 0.767763, 0.003901,
		43.945820, 29.899708, 33.279861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537102, 29.770210, 33.830368>,  <44.394325, 29.362272, 33.277130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537102, 29.770210, 33.830368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.154869, 29.836922, 33.733173>,  <43.925529, 29.876949, 33.674858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.154869, 29.836922, 33.733173>,  <44.537102, 29.770210, 33.830368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154869, 29.836922, 33.733173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255943, -0.060874, 0.964773,
		0.146114, 0.984113, 0.100856,
		-0.955586, 0.166781, -0.242982,
		43.868195, 29.886955, 33.660278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127075, 30.403555, 34.291561>,  <44.537102, 29.770210, 33.830368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127075, 30.403555, 34.291561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924156, 30.087881, 34.153091>,  <43.802402, 29.898476, 34.070011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924156, 30.087881, 34.153091>,  <44.127075, 30.403555, 34.291561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924156, 30.087881, 34.153091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326977, -0.195389, 0.924613,
		-0.797329, 0.582245, -0.158925,
		-0.507299, -0.789185, -0.346170,
		43.771965, 29.851126, 34.049240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.575497, 30.836157, 34.705032>,  <44.127075, 30.403555, 34.291561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.575497, 30.836157, 34.705032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772217, 30.783298, 34.360783>,  <44.890251, 30.751583, 34.154232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772217, 30.783298, 34.360783>,  <44.575497, 30.836157, 34.705032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.772217, 30.783298, 34.360783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862913, 0.205926, 0.461493,
		0.116239, -0.969604, 0.215306,
		0.491803, -0.132147, -0.860620,
		44.919758, 30.743654, 34.102596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.120121, 30.288187, 34.825142>,  <44.575497, 30.836157, 34.705032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.120121, 30.288187, 34.825142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.226589, 30.545446, 34.537945>,  <45.290470, 30.699802, 34.365627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.226589, 30.545446, 34.537945>,  <45.120121, 30.288187, 34.825142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.226589, 30.545446, 34.537945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898912, 0.103301, 0.425777,
		0.348008, -0.758740, -0.550639,
		0.266173, 0.643150, -0.717990,
		45.306442, 30.738392, 34.322548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.723064, 30.451006, 34.997952>,  <45.120121, 30.288187, 34.825142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.723064, 30.451006, 34.997952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.692234, 30.714983, 34.699009>,  <45.673737, 30.873369, 34.519646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.692234, 30.714983, 34.699009>,  <45.723064, 30.451006, 34.997952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.692234, 30.714983, 34.699009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815799, 0.472670, 0.333250,
		0.573177, -0.584003, -0.574812,
		-0.077077, 0.659942, -0.747353,
		45.669109, 30.912966, 34.474804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.441872, 30.440262, 34.757202>,  <45.723064, 30.451006, 34.997952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.441872, 30.440262, 34.757202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.239124, 30.778416, 34.689777>,  <46.117477, 30.981308, 34.649323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.239124, 30.778416, 34.689777>,  <46.441872, 30.440262, 34.757202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.239124, 30.778416, 34.689777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782807, 0.533282, 0.320659,
		0.360972, 0.030579, -0.932075,
		-0.506865, 0.845385, -0.168562,
		46.087067, 31.032030, 34.639210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.719467, 31.016636, 34.681187>,  <46.441872, 30.440262, 34.757202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.719467, 31.016636, 34.681187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.407024, 31.238085, 34.796680>,  <46.219559, 31.370955, 34.865978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.407024, 31.238085, 34.796680>,  <46.719467, 31.016636, 34.681187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.407024, 31.238085, 34.796680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623731, 0.713100, 0.320074,
		-0.028699, 0.430108, -0.902321,
		-0.781112, 0.553620, 0.288738,
		46.172691, 31.404171, 34.883301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.752468, 31.725891, 34.440304>,  <46.719467, 31.016636, 34.681187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.752468, 31.725891, 34.440304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.541187, 31.746084, 34.779350>,  <46.414417, 31.758200, 34.982777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.541187, 31.746084, 34.779350>,  <46.752468, 31.725891, 34.440304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.541187, 31.746084, 34.779350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413818, 0.886966, 0.205051,
		-0.741454, 0.459067, -0.489390,
		-0.528204, 0.050483, 0.847615,
		46.382725, 31.761229, 35.033634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.353065, 32.345333, 34.467911>,  <46.752468, 31.725891, 34.440304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.353065, 32.345333, 34.467911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.442062, 32.214428, 34.835258>,  <46.495461, 32.135883, 35.055668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.442062, 32.214428, 34.835258>,  <46.353065, 32.345333, 34.467911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.442062, 32.214428, 34.835258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392994, 0.892163, 0.222714,
		-0.892218, 0.311361, 0.327111,
		0.222492, -0.327262, 0.918366,
		46.508808, 32.116249, 35.110767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.976753, 32.814056, 35.043137>,  <46.353065, 32.345333, 34.467911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.976753, 32.814056, 35.043137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.331348, 32.641502, 35.110119>,  <46.544106, 32.537971, 35.150311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.331348, 32.641502, 35.110119>,  <45.976753, 32.814056, 35.043137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.331348, 32.641502, 35.110119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443864, 0.895007, -0.044133,
		-0.130839, 0.113452, 0.984891,
		0.886491, -0.431383, 0.167459,
		46.597294, 32.512089, 35.160355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.232777, 33.020485, 35.776138>,  <45.976753, 32.814056, 35.043137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.232777, 33.020485, 35.776138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.505665, 32.973225, 35.487522>,  <46.669399, 32.944870, 35.314354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.505665, 32.973225, 35.487522>,  <46.232777, 33.020485, 35.776138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.505665, 32.973225, 35.487522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085072, 0.992981, -0.082164,
		0.726180, -0.005329, 0.687484,
		0.682220, -0.118152, -0.721537,
		46.710331, 32.937778, 35.271061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.932964, 33.267082, 36.020447>,  <46.232777, 33.020485, 35.776138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.932964, 33.267082, 36.020447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.853966, 33.335880, 35.634407>,  <46.806568, 33.377159, 35.402782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.853966, 33.335880, 35.634407>,  <46.932964, 33.267082, 36.020447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.853966, 33.335880, 35.634407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175252, 0.974823, 0.137866,
		0.964512, -0.141908, -0.222663,
		-0.197493, 0.171995, -0.965098,
		46.794720, 33.387478, 35.344879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.092400, 33.872406, 36.034775>,  <46.932964, 33.267082, 36.020447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.092400, 33.872406, 36.034775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.906864, 33.851700, 35.681011>,  <46.795544, 33.839275, 35.468754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.906864, 33.851700, 35.681011>,  <47.092400, 33.872406, 36.034775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.906864, 33.851700, 35.681011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010555, 0.997898, -0.063943,
		0.885856, -0.038994, -0.462318,
		-0.463839, -0.051765, -0.884406,
		46.767712, 33.836170, 35.415688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.393970, 34.219707, 35.475349>,  <47.092400, 33.872406, 36.034775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.393970, 34.219707, 35.475349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.994301, 34.234680, 35.481594>,  <46.754498, 34.243664, 35.485340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.994301, 34.234680, 35.481594>,  <47.393970, 34.219707, 35.475349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.994301, 34.234680, 35.481594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039508, 0.985347, 0.165921,
		-0.009169, 0.166401, -0.986016,
		-0.999177, 0.037434, 0.015609,
		46.694550, 34.245911, 35.486279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.089630, 34.534889, 34.902920>,  <47.393970, 34.219707, 35.475349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.089630, 34.534889, 34.902920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.405056, 34.305267, 34.991123>,  <47.594311, 34.167492, 35.044044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.405056, 34.305267, 34.991123>,  <47.089630, 34.534889, 34.902920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.405056, 34.305267, 34.991123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608653, 0.779781, -0.146570,
		-0.087812, 0.249795, 0.964309,
		0.788562, -0.574059, 0.220513,
		47.641624, 34.133049, 35.057278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.501270, 35.089615, 35.276485>,  <47.089630, 34.534889, 34.902920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.501270, 35.089615, 35.276485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.788040, 34.857685, 35.121658>,  <47.960102, 34.718529, 35.028763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.788040, 34.857685, 35.121658>,  <47.501270, 35.089615, 35.276485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.788040, 34.857685, 35.121658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444365, 0.807877, -0.387136,
		0.537171, 0.105550, 0.836843,
		0.716929, -0.579822, -0.387065,
		48.003120, 34.683739, 35.005539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.407280, 41.465332, 17.925270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.675159, 41.203789, 18.066113>,  <41.835888, 41.046864, 18.150618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.675159, 41.203789, 18.066113>,  <41.407280, 41.465332, 17.925270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675159, 41.203789, 18.066113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392043, 0.091404, 0.915395,
		-0.630721, -0.751077, -0.195127,
		0.669696, -0.653857, 0.352105,
		41.876068, 41.007633, 18.171743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954857, 40.982384, 18.251921>,  <41.407280, 41.465332, 17.925270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954857, 40.982384, 18.251921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.313614, 40.937363, 18.422997>,  <41.528870, 40.910351, 18.525642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.313614, 40.937363, 18.422997>,  <40.954857, 40.982384, 18.251921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313614, 40.937363, 18.422997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418706, 0.095221, 0.903116,
		-0.142373, -0.989073, 0.038276,
		0.896892, -0.112553, 0.427688,
		41.582680, 40.903599, 18.551302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809307, 40.550037, 18.760038>,  <40.954857, 40.982384, 18.251921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809307, 40.550037, 18.760038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.167324, 40.697552, 18.860346>,  <41.382133, 40.786060, 18.920530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.167324, 40.697552, 18.860346>,  <40.809307, 40.550037, 18.760038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167324, 40.697552, 18.860346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249492, -0.052017, 0.966979,
		0.369656, -0.928056, 0.045453,
		0.895046, 0.368790, 0.250771,
		41.435837, 40.808189, 18.935577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058449, 40.076385, 19.351593>,  <40.809307, 40.550037, 18.760038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058449, 40.076385, 19.351593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.246857, 40.429142, 19.343573>,  <41.359901, 40.640797, 19.338760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.246857, 40.429142, 19.343573>,  <41.058449, 40.076385, 19.351593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246857, 40.429142, 19.343573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097653, 0.074723, 0.992411,
		0.876700, -0.465489, 0.121316,
		0.471022, 0.881894, -0.020053,
		41.388165, 40.693710, 19.337557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387436, 40.066891, 20.031641>,  <41.058449, 40.076385, 19.351593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387436, 40.066891, 20.031641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.386627, 40.453110, 19.927557>,  <41.386143, 40.684841, 19.865107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.386627, 40.453110, 19.927557>,  <41.387436, 40.066891, 20.031641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386627, 40.453110, 19.927557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405600, 0.237053, 0.882777,
		0.914048, 0.107330, 0.391147,
		-0.002026, 0.965550, -0.260211,
		41.386021, 40.742775, 19.849493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609283, 40.405869, 20.672285>,  <41.387436, 40.066891, 20.031641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609283, 40.405869, 20.672285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.398743, 40.639973, 20.425571>,  <41.272419, 40.780437, 20.277544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.398743, 40.639973, 20.425571>,  <41.609283, 40.405869, 20.672285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398743, 40.639973, 20.425571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599828, 0.258536, 0.757209,
		0.602627, 0.768523, 0.214976,
		-0.526353, 0.585263, -0.616782,
		41.240837, 40.815552, 20.240538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283157, 40.830158, 21.202915>,  <41.609283, 40.405869, 20.672285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283157, 40.830158, 21.202915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.073631, 40.932312, 20.877855>,  <40.947914, 40.993603, 20.682819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.073631, 40.932312, 20.877855>,  <41.283157, 40.830158, 21.202915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073631, 40.932312, 20.877855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786551, 0.221258, 0.576526,
		0.327041, 0.941182, 0.084975,
		-0.523814, 0.255385, -0.812648,
		40.916489, 41.008926, 20.634060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042519, 41.574650, 21.215464>,  <41.283157, 40.830158, 21.202915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042519, 41.574650, 21.215464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.795719, 41.356388, 20.988634>,  <40.647640, 41.225430, 20.852537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.795719, 41.356388, 20.988634>,  <41.042519, 41.574650, 21.215464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795719, 41.356388, 20.988634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771054, 0.274998, 0.574327,
		-0.157442, 0.791602, -0.590405,
		-0.616999, -0.545658, -0.567072,
		40.610619, 41.192692, 20.818512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420910, 41.872005, 21.399481>,  <41.042519, 41.574650, 21.215464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420910, 41.872005, 21.399481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.284660, 41.569012, 21.176699>,  <40.202911, 41.387215, 21.043030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.284660, 41.569012, 21.176699>,  <40.420910, 41.872005, 21.399481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284660, 41.569012, 21.176699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895777, 0.081531, 0.436962,
		-0.285581, 0.647748, -0.706305,
		-0.340627, -0.757480, -0.556954,
		40.182472, 41.341766, 21.009613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840122, 42.132748, 21.118521>,  <40.420910, 41.872005, 21.399481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840122, 42.132748, 21.118521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.818783, 41.734379, 21.089434>,  <39.805981, 41.495358, 21.071981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.818783, 41.734379, 21.089434>,  <39.840122, 42.132748, 21.118521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818783, 41.734379, 21.089434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876169, 0.011748, 0.481860,
		-0.479042, 0.089420, -0.873226,
		-0.053347, -0.995925, -0.072719,
		39.802780, 41.435600, 21.067617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190868, 42.010944, 21.054976>,  <39.840122, 42.132748, 21.118521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190868, 42.010944, 21.054976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.300877, 41.645241, 21.173964>,  <39.366882, 41.425819, 21.245356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.300877, 41.645241, 21.173964>,  <39.190868, 42.010944, 21.054976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300877, 41.645241, 21.173964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745710, -0.007554, 0.666228,
		-0.606859, -0.405054, -0.683852,
		0.275024, -0.914262, 0.297468,
		39.383385, 41.370964, 21.263205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508560, 41.624977, 21.090935>,  <39.190868, 42.010944, 21.054976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508560, 41.624977, 21.090935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.779114, 41.438057, 21.318665>,  <38.941444, 41.325905, 21.455303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.779114, 41.438057, 21.318665>,  <38.508560, 41.624977, 21.090935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779114, 41.438057, 21.318665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685369, -0.116217, 0.718862,
		-0.269763, -0.876424, -0.398884,
		0.676385, -0.467305, 0.569323,
		38.982029, 41.297867, 21.489462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088570, 41.192039, 21.426357>,  <38.508560, 41.624977, 21.090935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088570, 41.192039, 21.426357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.423317, 41.205032, 21.644934>,  <38.624165, 41.212830, 21.776079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.423317, 41.205032, 21.644934>,  <38.088570, 41.192039, 21.426357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423317, 41.205032, 21.644934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522233, -0.251847, 0.814767,
		0.164088, -0.967222, -0.193798,
		0.836868, 0.032486, 0.546440,
		38.674377, 41.214779, 21.808867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089233, 40.571716, 21.780682>,  <38.088570, 41.192039, 21.426357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089233, 40.571716, 21.780682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.362907, 40.786137, 21.978487>,  <38.527111, 40.914787, 22.097170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.362907, 40.786137, 21.978487>,  <38.089233, 40.571716, 21.780682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362907, 40.786137, 21.978487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514415, -0.125946, 0.848242,
		0.516980, -0.834740, 0.189580,
		0.684185, 0.536047, 0.494515,
		38.568161, 40.946949, 22.126841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407993, 40.150852, 22.296560>,  <38.089233, 40.571716, 21.780682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407993, 40.150852, 22.296560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.461155, 40.525394, 22.426525>,  <38.493053, 40.750122, 22.504503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.461155, 40.525394, 22.426525>,  <38.407993, 40.150852, 22.296560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461155, 40.525394, 22.426525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497661, -0.220452, 0.838889,
		0.857129, -0.273187, 0.436690,
		0.132905, 0.936360, 0.324910,
		38.501026, 40.806301, 22.523998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499332, 39.932884, 22.902035>,  <38.407993, 40.150852, 22.296560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499332, 39.932884, 22.902035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.427471, 40.326103, 22.887377>,  <38.384354, 40.562035, 22.878582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.427471, 40.326103, 22.887377>,  <38.499332, 39.932884, 22.902035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427471, 40.326103, 22.887377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572061, -0.074097, 0.816857,
		0.800293, 0.167718, 0.575674,
		-0.179657, 0.983047, -0.036646,
		38.373573, 40.621017, 22.876383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608212, 40.244797, 23.602598>,  <38.499332, 39.932884, 22.902035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608212, 40.244797, 23.602598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.373260, 40.503258, 23.407671>,  <38.232288, 40.658333, 23.290714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.373260, 40.503258, 23.407671>,  <38.608212, 40.244797, 23.602598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373260, 40.503258, 23.407671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697171, -0.098171, 0.710151,
		0.411022, 0.756872, 0.508139,
		-0.587378, 0.646148, -0.487319,
		38.197048, 40.697102, 23.261475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370411, 40.661900, 24.079834>,  <38.608212, 40.244797, 23.602598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370411, 40.661900, 24.079834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.113968, 40.682262, 23.773529>,  <37.960102, 40.694481, 23.589746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.113968, 40.682262, 23.773529>,  <38.370411, 40.661900, 24.079834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113968, 40.682262, 23.773529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767419, -0.052182, 0.639019,
		-0.007430, 0.997339, 0.072519,
		-0.641104, 0.050905, -0.765764,
		37.921638, 40.697533, 23.543800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761593, 41.111481, 24.316200>,  <38.370411, 40.661900, 24.079834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761593, 41.111481, 24.316200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.624992, 40.949230, 23.977062>,  <37.543034, 40.851879, 23.773579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.624992, 40.949230, 23.977062>,  <37.761593, 41.111481, 24.316200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624992, 40.949230, 23.977062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902843, -0.109169, 0.415882,
		-0.261252, 0.907495, -0.328938,
		-0.341501, -0.405629, -0.847846,
		37.522541, 40.827541, 23.722708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073391, 41.370090, 24.092945>,  <37.761593, 41.111481, 24.316200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073391, 41.370090, 24.092945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.115425, 41.007832, 23.928625>,  <37.140644, 40.790474, 23.830032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.115425, 41.007832, 23.928625>,  <37.073391, 41.370090, 24.092945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115425, 41.007832, 23.928625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857635, -0.291639, 0.423567,
		-0.503408, 0.307807, -0.807363,
		0.105082, -0.905650, -0.410800,
		37.146950, 40.736137, 23.805386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442265, 41.246834, 23.696318>,  <37.073391, 41.370090, 24.092945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442265, 41.246834, 23.696318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.600197, 40.883186, 23.749405>,  <36.694958, 40.664997, 23.781258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.600197, 40.883186, 23.749405>,  <36.442265, 41.246834, 23.696318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600197, 40.883186, 23.749405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907420, -0.363251, 0.211275,
		-0.143864, -0.203848, -0.968374,
		0.394831, -0.909118, 0.132717,
		36.718647, 40.610451, 23.789219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422363, 40.765633, 23.099115>,  <36.442265, 41.246834, 23.696318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422363, 40.765633, 23.099115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.425358, 40.536346, 23.426863>,  <36.427155, 40.398773, 23.623510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.425358, 40.536346, 23.426863>,  <36.422363, 40.765633, 23.099115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425358, 40.536346, 23.426863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838413, -0.450166, -0.307267,
		0.544983, -0.684669, -0.483965,
		0.007488, -0.573218, 0.819369,
		36.427605, 40.364380, 23.672674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725281, 40.451229, 22.899204>,  <36.422363, 40.765633, 23.099115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725281, 40.451229, 22.899204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.392700, 40.641106, 22.783720>,  <35.193150, 40.755032, 22.714430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.392700, 40.641106, 22.783720>,  <35.725281, 40.451229, 22.899204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392700, 40.641106, 22.783720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445733, 0.259698, -0.856667,
		-0.331674, -0.840967, -0.427512,
		-0.831454, 0.474690, -0.288712,
		35.143265, 40.783512, 22.697105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678455, 40.324131, 22.192881>,  <35.725281, 40.451229, 22.899204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678455, 40.324131, 22.192881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.502396, 40.677376, 22.257860>,  <35.396759, 40.889320, 22.296848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.502396, 40.677376, 22.257860>,  <35.678455, 40.324131, 22.192881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502396, 40.677376, 22.257860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364969, 0.341246, -0.866226,
		-0.820406, -0.321981, -0.472506,
		-0.440150, 0.883107, 0.162448,
		35.370350, 40.942307, 22.306595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568298, 40.580093, 21.586508>,  <35.678455, 40.324131, 22.192881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568298, 40.580093, 21.586508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.518215, 40.913239, 21.802156>,  <35.488163, 41.113125, 21.931545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.518215, 40.913239, 21.802156>,  <35.568298, 40.580093, 21.586508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518215, 40.913239, 21.802156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313221, 0.548794, -0.775060,
		-0.941390, 0.071819, -0.329587,
		-0.125212, 0.832867, 0.539124,
		35.480652, 41.163097, 21.963894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185238, 41.075733, 21.139015>,  <35.568298, 40.580093, 21.586508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185238, 41.075733, 21.139015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.395687, 41.271370, 21.417292>,  <35.521957, 41.388752, 21.584257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.395687, 41.271370, 21.417292>,  <35.185238, 41.075733, 21.139015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395687, 41.271370, 21.417292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521993, 0.460094, -0.718218,
		-0.671358, 0.741015, -0.013238,
		0.526119, 0.489091, 0.695692,
		35.553524, 41.418098, 21.625999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317181, 41.631958, 20.811293>,  <35.185238, 41.075733, 21.139015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317181, 41.631958, 20.811293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.584293, 41.683468, 21.104548>,  <35.744560, 41.714375, 21.280500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.584293, 41.683468, 21.104548>,  <35.317181, 41.631958, 20.811293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584293, 41.683468, 21.104548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581039, 0.525444, -0.621532,
		-0.465257, 0.841027, 0.276060,
		0.667779, 0.128770, 0.733137,
		35.784626, 41.722099, 21.324488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468231, 42.396729, 20.910902>,  <35.317181, 41.631958, 20.811293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468231, 42.396729, 20.910902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.787651, 42.193684, 21.040295>,  <35.979305, 42.071857, 21.117929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.787651, 42.193684, 21.040295>,  <35.468231, 42.396729, 20.910902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787651, 42.193684, 21.040295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598396, 0.611389, -0.517809,
		0.065076, 0.607067, 0.791982,
		0.798553, -0.507616, 0.323480,
		36.027218, 42.041397, 21.137339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986141, 42.909195, 20.974422>,  <35.468231, 42.396729, 20.910902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986141, 42.909195, 20.974422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.224358, 42.589603, 21.007811>,  <36.367287, 42.397850, 21.027843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.224358, 42.589603, 21.007811>,  <35.986141, 42.909195, 20.974422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224358, 42.589603, 21.007811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705889, 0.470869, -0.529153,
		0.383478, 0.374052, 0.844411,
		0.595538, -0.798979, 0.083471,
		36.403019, 42.349911, 21.032852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654984, 43.162464, 21.026361>,  <35.986141, 42.909195, 20.974422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654984, 43.162464, 21.026361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714104, 42.782990, 20.914545>,  <36.749577, 42.555305, 20.847454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714104, 42.782990, 20.914545>,  <36.654984, 43.162464, 21.026361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714104, 42.782990, 20.914545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761499, 0.289519, -0.579912,
		0.631089, -0.127157, 0.765217,
		0.147805, -0.948688, -0.279543,
		36.758446, 42.498383, 20.830683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448425, 43.056591, 21.143927>,  <36.654984, 43.162464, 21.026361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448425, 43.056591, 21.143927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.316788, 42.790676, 20.875671>,  <37.237804, 42.631126, 20.714718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.316788, 42.790676, 20.875671>,  <37.448425, 43.056591, 21.143927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316788, 42.790676, 20.875671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734046, 0.266666, -0.624552,
		0.594032, -0.697814, 0.400228,
		-0.329094, -0.664789, -0.670636,
		37.218060, 42.591240, 20.674480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056992, 42.580021, 20.889420>,  <37.448425, 43.056591, 21.143927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056992, 42.580021, 20.889420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.759865, 42.567032, 20.621939>,  <37.581589, 42.559238, 20.461451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.759865, 42.567032, 20.621939>,  <38.056992, 42.580021, 20.889420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759865, 42.567032, 20.621939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662729, 0.105929, -0.741329,
		0.094912, -0.993843, -0.057162,
		-0.742820, -0.032478, -0.668703,
		37.537018, 42.557289, 20.421328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372890, 42.311401, 20.351774>,  <38.056992, 42.580021, 20.889420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372890, 42.311401, 20.351774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.042637, 42.399128, 20.143839>,  <37.844486, 42.451763, 20.019077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.042637, 42.399128, 20.143839>,  <38.372890, 42.311401, 20.351774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042637, 42.399128, 20.143839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559220, 0.195819, -0.805561,
		-0.074878, -0.955800, -0.284321,
		-0.825631, 0.219317, -0.519840,
		37.794949, 42.464924, 19.987886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316334, 41.871029, 19.831476>,  <38.372890, 42.311401, 20.351774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316334, 41.871029, 19.831476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.084530, 42.170494, 19.702677>,  <37.945450, 42.350174, 19.625397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.084530, 42.170494, 19.702677>,  <38.316334, 41.871029, 19.831476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084530, 42.170494, 19.702677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404476, -0.078796, -0.911148,
		-0.707512, -0.658255, -0.257152,
		-0.579505, 0.748660, -0.321998,
		37.910679, 42.395092, 19.606077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906170, 41.575672, 19.228952>,  <38.316334, 41.871029, 19.831476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906170, 41.575672, 19.228952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.926689, 41.974007, 19.198811>,  <37.938999, 42.213009, 19.180725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.926689, 41.974007, 19.198811>,  <37.906170, 41.575672, 19.228952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926689, 41.974007, 19.198811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376556, -0.089171, -0.922092,
		-0.924972, 0.018928, -0.379563,
		0.051299, 0.995836, -0.075354,
		37.942078, 42.272758, 19.176205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556602, 41.750530, 18.622183>,  <37.906170, 41.575672, 19.228952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556602, 41.750530, 18.622183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.787643, 42.071983, 18.679525>,  <37.926270, 42.264854, 18.713932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.787643, 42.071983, 18.679525>,  <37.556602, 41.750530, 18.622183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787643, 42.071983, 18.679525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479320, -0.191731, -0.856441,
		-0.660774, 0.563401, -0.495940,
		0.577607, 0.803628, 0.143358,
		37.960926, 42.313072, 18.722532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584518, 42.051640, 17.995857>,  <37.556602, 41.750530, 18.622183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584518, 42.051640, 17.995857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.898041, 42.189182, 18.202705>,  <38.086155, 42.271709, 18.326815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.898041, 42.189182, 18.202705>,  <37.584518, 42.051640, 17.995857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898041, 42.189182, 18.202705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559445, -0.029506, -0.828342,
		-0.269572, 0.938559, -0.215495,
		0.783806, 0.343856, 0.517118,
		38.133183, 42.292339, 18.357841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953934, 42.569668, 17.568283>,  <37.584518, 42.051640, 17.995857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953934, 42.569668, 17.568283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.230408, 42.448471, 17.830721>,  <38.396294, 42.375751, 17.988184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.230408, 42.448471, 17.830721>,  <37.953934, 42.569668, 17.568283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230408, 42.448471, 17.830721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665877, -0.085792, -0.741112,
		0.280840, 0.949123, 0.142459,
		0.691185, -0.302995, 0.656093,
		38.437763, 42.357574, 18.027550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483139, 43.081970, 17.406412>,  <37.953934, 42.569668, 17.568283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483139, 43.081970, 17.406412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.619846, 42.757172, 17.595663>,  <38.701870, 42.562290, 17.709213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.619846, 42.757172, 17.595663>,  <38.483139, 43.081970, 17.406412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619846, 42.757172, 17.595663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628197, -0.177050, -0.757643,
		0.698972, 0.556158, 0.449584,
		0.341770, -0.811998, 0.473130,
		38.722378, 42.513573, 17.737602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192986, 43.078869, 17.389742>,  <38.483139, 43.081970, 17.406412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192986, 43.078869, 17.389742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.101616, 42.691826, 17.432753>,  <39.046795, 42.459602, 17.458559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.101616, 42.691826, 17.432753>,  <39.192986, 43.078869, 17.389742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101616, 42.691826, 17.432753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791667, -0.248893, -0.557957,
		0.566645, -0.042328, 0.822874,
		-0.228425, -0.967606, 0.107525,
		39.033089, 42.401543, 17.465010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.866417, 42.765858, 17.664085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.640587, 42.473183, 17.511299>,  <39.505089, 42.297577, 17.419626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.640587, 42.473183, 17.511299>,  <39.866417, 42.765858, 17.664085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640587, 42.473183, 17.511299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762100, -0.284394, -0.581657,
		0.316960, -0.619483, 0.718176,
		-0.564571, -0.731683, -0.381967,
		39.471214, 42.253677, 17.396709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282413, 42.195454, 17.606787>,  <39.866417, 42.765858, 17.664085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282413, 42.195454, 17.606787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.988865, 42.056004, 17.373587>,  <39.812737, 41.972336, 17.233667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.988865, 42.056004, 17.373587>,  <40.282413, 42.195454, 17.606787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988865, 42.056004, 17.373587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674185, -0.478775, -0.562360,
		-0.083075, -0.805753, 0.586397,
		-0.733875, -0.348622, -0.583000,
		39.768703, 41.951416, 17.198687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469799, 41.550640, 17.426746>,  <40.282413, 42.195454, 17.606787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469799, 41.550640, 17.426746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.213001, 41.635231, 17.131960>,  <40.058922, 41.685986, 16.955088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.213001, 41.635231, 17.131960>,  <40.469799, 41.550640, 17.426746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213001, 41.635231, 17.131960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639331, -0.382898, -0.666817,
		-0.423196, -0.899260, 0.110618,
		-0.641997, 0.211473, -0.736966,
		40.020401, 41.698673, 16.910870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269623, 40.943058, 17.058352>,  <40.469799, 41.550640, 17.426746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269623, 40.943058, 17.058352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.231216, 41.262020, 16.820047>,  <40.208172, 41.453396, 16.677065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.231216, 41.262020, 16.820047>,  <40.269623, 40.943058, 17.058352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231216, 41.262020, 16.820047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457859, -0.496068, -0.737754,
		-0.883825, -0.343610, -0.317468,
		-0.096014, 0.797401, -0.595762,
		40.202412, 41.501240, 16.641319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159664, 40.676140, 16.410398>,  <40.269623, 40.943058, 17.058352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159664, 40.676140, 16.410398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.233265, 41.061832, 16.334080>,  <40.277424, 41.293247, 16.288288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.233265, 41.061832, 16.334080>,  <40.159664, 40.676140, 16.410398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233265, 41.061832, 16.334080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548743, -0.261814, -0.793936,
		-0.815491, 0.041383, -0.577288,
		0.183997, 0.964231, -0.190799,
		40.288464, 41.351101, 16.276840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951233, 40.959538, 15.630568>,  <40.159664, 40.676140, 16.410398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951233, 40.959538, 15.630568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.244751, 41.191574, 15.772016>,  <40.420860, 41.330795, 15.856884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.244751, 41.191574, 15.772016>,  <39.951233, 40.959538, 15.630568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244751, 41.191574, 15.772016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490566, -0.092336, -0.866498,
		-0.469993, 0.809304, -0.352327,
		0.733793, 0.580088, 0.353619,
		40.464890, 41.365601, 15.878101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064434, 41.370655, 15.101235>,  <39.951233, 40.959538, 15.630568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064434, 41.370655, 15.101235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.401646, 41.434135, 15.306804>,  <40.603973, 41.472221, 15.430145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.401646, 41.434135, 15.306804>,  <40.064434, 41.370655, 15.101235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401646, 41.434135, 15.306804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515142, 0.036574, -0.856324,
		-0.154694, 0.986649, -0.050920,
		0.843030, 0.158699, 0.513922,
		40.654556, 41.481747, 15.460980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408440, 41.950993, 14.761505>,  <40.064434, 41.370655, 15.101235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408440, 41.950993, 14.761505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.687328, 41.790913, 14.999403>,  <40.854664, 41.694866, 15.142141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.687328, 41.790913, 14.999403>,  <40.408440, 41.950993, 14.761505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687328, 41.790913, 14.999403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692191, 0.160096, -0.703734,
		0.186415, 0.902337, 0.388635,
		0.697224, -0.400196, 0.594745,
		40.896496, 41.670853, 15.177827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898258, 42.453476, 14.794529>,  <40.408440, 41.950993, 14.761505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898258, 42.453476, 14.794529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.087990, 42.120018, 14.907703>,  <41.201828, 41.919945, 14.975608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.087990, 42.120018, 14.907703>,  <40.898258, 42.453476, 14.794529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087990, 42.120018, 14.907703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698277, 0.160545, -0.697592,
		0.536118, 0.528455, 0.658265,
		0.474327, -0.833643, 0.282937,
		41.230289, 41.869926, 14.992584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662956, 42.630138, 14.662975>,  <40.898258, 42.453476, 14.794529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662956, 42.630138, 14.662975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.616951, 42.232838, 14.657088>,  <41.589348, 41.994457, 14.653556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.616951, 42.232838, 14.657088>,  <41.662956, 42.630138, 14.662975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616951, 42.232838, 14.657088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696432, -0.070063, -0.714195,
		0.708346, -0.092393, 0.699792,
		-0.115016, -0.993255, -0.014717,
		41.582447, 41.934860, 14.652673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332760, 42.449680, 14.389274>,  <41.662956, 42.630138, 14.662975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332760, 42.449680, 14.389274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.113834, 42.114910, 14.390545>,  <41.982479, 41.914047, 14.391308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.113834, 42.114910, 14.390545>,  <42.332760, 42.449680, 14.389274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113834, 42.114910, 14.390545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517959, -0.341700, -0.784194,
		0.657396, -0.427551, 0.620508,
		-0.547311, -0.836924, 0.003179,
		41.949642, 41.863834, 14.391499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820171, 41.807976, 14.446495>,  <42.332760, 42.449680, 14.389274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820171, 41.807976, 14.446495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.473179, 41.716465, 14.269795>,  <42.264984, 41.661560, 14.163775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.473179, 41.716465, 14.269795>,  <42.820171, 41.807976, 14.446495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473179, 41.716465, 14.269795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497448, -0.389717, -0.775026,
		0.005151, -0.892066, 0.451876,
		-0.867478, -0.228777, -0.441749,
		42.212936, 41.647831, 14.137271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890995, 41.117935, 14.109114>,  <42.820171, 41.807976, 14.446495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890995, 41.117935, 14.109114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.585903, 41.302174, 13.927524>,  <42.402847, 41.412716, 13.818570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.585903, 41.302174, 13.927524>,  <42.890995, 41.117935, 14.109114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585903, 41.302174, 13.927524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420249, -0.180560, -0.889263,
		-0.491560, -0.869051, -0.055846,
		-0.762732, 0.460595, -0.453975,
		42.357082, 41.440353, 13.791331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845016, 40.709534, 13.564388>,  <42.890995, 41.117935, 14.109114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845016, 40.709534, 13.564388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.605709, 41.015541, 13.469042>,  <42.462124, 41.199146, 13.411834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.605709, 41.015541, 13.469042>,  <42.845016, 40.709534, 13.564388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.605709, 41.015541, 13.469042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121221, -0.207641, -0.970665,
		-0.792073, -0.609614, 0.031489,
		-0.598269, 0.765021, -0.238365,
		42.426228, 41.245049, 13.397532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338791, 40.475220, 13.051264>,  <42.845016, 40.709534, 13.564388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338791, 40.475220, 13.051264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.369823, 40.871593, 13.007394>,  <42.388443, 41.109417, 12.981072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.369823, 40.871593, 13.007394>,  <42.338791, 40.475220, 13.051264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369823, 40.871593, 13.007394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199123, -0.123190, -0.972201,
		-0.976899, 0.053584, -0.206875,
		0.077579, 0.990935, -0.109674,
		42.393097, 41.168873, 12.974491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976967, 40.569942, 12.451908>,  <42.338791, 40.475220, 13.051264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976967, 40.569942, 12.451908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.178249, 40.913128, 12.493258>,  <42.299019, 41.119038, 12.518067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.178249, 40.913128, 12.493258>,  <41.976967, 40.569942, 12.451908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178249, 40.913128, 12.493258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137335, 0.038704, -0.989768,
		-0.853182, 0.512257, -0.098351,
		0.503209, 0.857960, 0.103373,
		42.329212, 41.170517, 12.524269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682938, 41.099644, 12.003814>,  <41.976967, 40.569942, 12.451908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682938, 41.099644, 12.003814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.069225, 41.150864, 12.094136>,  <42.300999, 41.181595, 12.148330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.069225, 41.150864, 12.094136>,  <41.682938, 41.099644, 12.003814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069225, 41.150864, 12.094136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219957, 0.058293, -0.973766,
		-0.137858, 0.990053, 0.028128,
		0.965719, 0.128055, 0.225805,
		42.358940, 41.189281, 12.161878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836678, 41.489708, 11.482361>,  <41.682938, 41.099644, 12.003814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836678, 41.489708, 11.482361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.199856, 41.380852, 11.609845>,  <42.417763, 41.315536, 11.686336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.199856, 41.380852, 11.609845>,  <41.836678, 41.489708, 11.482361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199856, 41.380852, 11.609845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357401, 0.105642, -0.927957,
		0.218868, 0.956440, 0.193181,
		0.907944, -0.272143, 0.318711,
		42.472240, 41.299210, 11.705459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282295, 41.964600, 11.169788>,  <41.836678, 41.489708, 11.482361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282295, 41.964600, 11.169788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.510063, 41.646545, 11.253225>,  <42.646725, 41.455711, 11.303288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.510063, 41.646545, 11.253225>,  <42.282295, 41.964600, 11.169788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510063, 41.646545, 11.253225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443449, 0.083459, -0.892406,
		0.692178, 0.600656, 0.400127,
		0.569423, -0.795139, 0.208592,
		42.680889, 41.408005, 11.315803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937599, 42.176506, 10.795447>,  <42.282295, 41.964600, 11.169788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937599, 42.176506, 10.795447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.978344, 41.788502, 10.883726>,  <43.002792, 41.555698, 10.936693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.978344, 41.788502, 10.883726>,  <42.937599, 42.176506, 10.795447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978344, 41.788502, 10.883726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638537, -0.106365, -0.762205,
		0.762820, 0.218562, 0.608552,
		0.101861, -0.970009, 0.220697,
		43.008904, 41.497498, 10.949935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623711, 42.027363, 10.857609>,  <42.937599, 42.176506, 10.795447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623711, 42.027363, 10.857609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.463242, 41.673412, 10.762906>,  <43.366959, 41.461040, 10.706084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.463242, 41.673412, 10.762906>,  <43.623711, 42.027363, 10.857609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463242, 41.673412, 10.762906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626753, -0.076674, -0.775436,
		0.668012, -0.459473, 0.585359,
		-0.401174, -0.884876, -0.236757,
		43.342888, 41.407951, 10.691879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160355, 41.605202, 10.777277>,  <43.623711, 42.027363, 10.857609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160355, 41.605202, 10.777277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.860985, 41.421284, 10.586092>,  <43.681362, 41.310932, 10.471381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.860985, 41.421284, 10.586092>,  <44.160355, 41.605202, 10.777277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860985, 41.421284, 10.586092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626786, -0.254783, -0.736359,
		0.216799, -0.850689, 0.478880,
		-0.748423, -0.459797, -0.477963,
		43.636459, 41.283344, 10.442703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.260277, 40.827625, 10.725539>,  <44.160355, 41.605202, 10.777277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.260277, 40.827625, 10.725539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.038921, 40.974056, 10.426272>,  <43.906109, 41.061913, 10.246712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.038921, 40.974056, 10.426272>,  <44.260277, 40.827625, 10.725539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038921, 40.974056, 10.426272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668669, -0.340329, -0.661104,
		-0.496636, -0.866121, -0.056450,
		-0.553384, 0.366075, -0.748168,
		43.872906, 41.083878, 10.201822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538681, 40.121742, 10.649757>,  <44.260277, 40.827625, 10.725539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538681, 40.121742, 10.649757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.659451, 39.740982, 10.670671>,  <44.731911, 39.512527, 10.683220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.659451, 39.740982, 10.670671>,  <44.538681, 40.121742, 10.649757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.659451, 39.740982, 10.670671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398936, -0.076342, 0.913795,
		-0.865847, -0.296755, -0.402796,
		0.301924, -0.951898, 0.052286,
		44.750027, 39.455414, 10.686357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061344, 39.774239, 11.041928>,  <44.538681, 40.121742, 10.649757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061344, 39.774239, 11.041928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.371239, 39.521816, 11.057743>,  <44.557175, 39.370365, 11.067232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.371239, 39.521816, 11.057743>,  <44.061344, 39.774239, 11.041928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371239, 39.521816, 11.057743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237873, -0.232955, 0.942946,
		-0.585838, -0.739936, -0.330588,
		0.774732, -0.631052, 0.039537,
		44.603657, 39.332500, 11.069604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.810966, 39.251404, 11.425971>,  <44.061344, 39.774239, 11.041928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.810966, 39.251404, 11.425971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.208256, 39.210094, 11.447304>,  <44.446629, 39.185307, 11.460104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.208256, 39.210094, 11.447304>,  <43.810966, 39.251404, 11.425971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.208256, 39.210094, 11.447304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068528, -0.149673, 0.986358,
		-0.093881, -0.983327, -0.155736,
		0.993222, -0.103273, 0.053334,
		44.506222, 39.179111, 11.463304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969612, 38.594933, 11.757406>,  <43.810966, 39.251404, 11.425971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969612, 38.594933, 11.757406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.294380, 38.827362, 11.779805>,  <44.489243, 38.966820, 11.793244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.294380, 38.827362, 11.779805>,  <43.969612, 38.594933, 11.757406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.294380, 38.827362, 11.779805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055845, -0.172797, 0.983373,
		0.581088, -0.795295, -0.172748,
		0.811923, 0.581073, 0.055997,
		44.537956, 39.001682, 11.796604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.490429, 38.193195, 12.100491>,  <43.969612, 38.594933, 11.757406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.490429, 38.193195, 12.100491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.574181, 38.580078, 12.158002>,  <44.624432, 38.812206, 12.192509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.574181, 38.580078, 12.158002>,  <44.490429, 38.193195, 12.100491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.574181, 38.580078, 12.158002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090860, -0.165646, 0.981991,
		0.973604, -0.192544, -0.122563,
		0.209379, 0.967206, 0.143779,
		44.636993, 38.870239, 12.201136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.811367, 38.190327, 12.707022>,  <44.490429, 38.193195, 12.100491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.811367, 38.190327, 12.707022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.728912, 38.580360, 12.674229>,  <44.679440, 38.814381, 12.654552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.728912, 38.580360, 12.674229>,  <44.811367, 38.190327, 12.707022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.728912, 38.580360, 12.674229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030929, 0.077247, 0.996532,
		0.978035, 0.207954, 0.014235,
		-0.206133, 0.975084, -0.081982,
		44.667072, 38.872887, 12.649634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.257927, 38.590439, 13.184453>,  <44.811367, 38.190327, 12.707022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.257927, 38.590439, 13.184453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.965881, 38.855587, 13.118080>,  <44.790653, 39.014675, 13.078257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.965881, 38.855587, 13.118080>,  <45.257927, 38.590439, 13.184453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.965881, 38.855587, 13.118080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150891, 0.080440, 0.985272,
		0.666458, 0.744398, 0.041292,
		-0.730113, 0.662873, -0.165933,
		44.746849, 39.054447, 13.068300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.343723, 39.175858, 13.632707>,  <45.257927, 38.590439, 13.184453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.343723, 39.175858, 13.632707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.956078, 39.181976, 13.534256>,  <44.723488, 39.185646, 13.475185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.956078, 39.181976, 13.534256>,  <45.343723, 39.175858, 13.632707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.956078, 39.181976, 13.534256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230307, 0.300639, 0.925513,
		0.088152, 0.953615, -0.287831,
		-0.969117, 0.015297, -0.246126,
		44.665344, 39.186565, 13.460418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.009819, 39.799252, 13.979547>,  <45.343723, 39.175858, 13.632707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.009819, 39.799252, 13.979547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.690598, 39.577267, 13.885626>,  <44.499065, 39.444077, 13.829273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.690598, 39.577267, 13.885626>,  <45.009819, 39.799252, 13.979547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.690598, 39.577267, 13.885626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418348, 0.229812, 0.878733,
		-0.433701, 0.799504, -0.415568,
		-0.798053, -0.554959, -0.234801,
		44.451183, 39.410778, 13.815186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.494572, 40.163376, 14.240817>,  <45.009819, 39.799252, 13.979547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.494572, 40.163376, 14.240817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.328255, 39.802670, 14.193596>,  <44.228466, 39.586246, 14.165263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.328255, 39.802670, 14.193596>,  <44.494572, 40.163376, 14.240817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.328255, 39.802670, 14.193596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515914, 0.126973, 0.847178,
		-0.748968, 0.413151, -0.518028,
		-0.415788, -0.901767, -0.118052,
		44.203518, 39.532139, 14.158180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.735462, 40.214264, 14.157314>,  <44.494572, 40.163376, 14.240817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.735462, 40.214264, 14.157314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.798962, 39.839352, 14.281445>,  <43.837063, 39.614403, 14.355923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.798962, 39.839352, 14.281445>,  <43.735462, 40.214264, 14.157314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.798962, 39.839352, 14.281445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615939, 0.151630, 0.773064,
		-0.771633, -0.313866, -0.553237,
		0.158751, -0.937281, 0.310325,
		43.846588, 39.558167, 14.374542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.082920, 40.107006, 14.456095>,  <43.735462, 40.214264, 14.157314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.082920, 40.107006, 14.456095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.351933, 39.843830, 14.591630>,  <43.513340, 39.685925, 14.672951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.351933, 39.843830, 14.591630>,  <43.082920, 40.107006, 14.456095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.351933, 39.843830, 14.591630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503083, -0.070651, 0.861346,
		-0.542777, -0.749747, -0.378515,
		0.672533, -0.657943, 0.338837,
		43.553692, 39.646446, 14.693281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712322, 39.657066, 14.798643>,  <43.082920, 40.107006, 14.456095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.712322, 39.657066, 14.798643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.079796, 39.581707, 14.937506>,  <43.300282, 39.536491, 15.020823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.079796, 39.581707, 14.937506>,  <42.712322, 39.657066, 14.798643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079796, 39.581707, 14.937506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359249, -0.033237, 0.932650,
		-0.164171, -0.981530, -0.098217,
		0.918688, -0.188399, 0.347157,
		43.355404, 39.525188, 15.041653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.677826, 39.063549, 15.348365>,  <42.712322, 39.657066, 14.798643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.677826, 39.063549, 15.348365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.000969, 39.294361, 15.396366>,  <43.194855, 39.432850, 15.425167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.000969, 39.294361, 15.396366>,  <42.677826, 39.063549, 15.348365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000969, 39.294361, 15.396366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268747, 0.179440, 0.946349,
		0.524543, -0.796764, 0.300038,
		0.807855, 0.577034, 0.120004,
		43.243324, 39.467472, 15.432367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926384, 38.914860, 16.038486>,  <42.677826, 39.063549, 15.348365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926384, 38.914860, 16.038486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.089016, 39.268631, 15.946851>,  <43.186596, 39.480892, 15.891869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.089016, 39.268631, 15.946851>,  <42.926384, 38.914860, 16.038486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089016, 39.268631, 15.946851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325733, 0.374603, 0.868084,
		0.853574, -0.278325, 0.440393,
		0.406582, 0.884425, -0.229092,
		43.210991, 39.533958, 15.878123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.065445, 39.177597, 16.661306>,  <42.926384, 38.914860, 16.038486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.065445, 39.177597, 16.661306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.095608, 39.509090, 16.439493>,  <43.113705, 39.707989, 16.306406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.095608, 39.509090, 16.439493>,  <43.065445, 39.177597, 16.661306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095608, 39.509090, 16.439493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243011, 0.554623, 0.795826,
		0.967088, 0.074745, 0.243217,
		0.075409, 0.828738, -0.554533,
		43.118229, 39.757713, 16.273134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427898, 39.686092, 17.083612>,  <43.065445, 39.177597, 16.661306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.427898, 39.686092, 17.083612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.219891, 39.900593, 16.817677>,  <43.095085, 40.029293, 16.658115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.219891, 39.900593, 16.817677>,  <43.427898, 39.686092, 17.083612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219891, 39.900593, 16.817677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253813, 0.646189, 0.719735,
		0.815571, 0.543022, -0.199924,
		-0.520021, 0.536252, -0.664840,
		43.063885, 40.061470, 16.618225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.603546, 40.374866, 17.226818>,  <43.427898, 39.686092, 17.083612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.603546, 40.374866, 17.226818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.250137, 40.376961, 17.039474>,  <43.038094, 40.378216, 16.927069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.250137, 40.376961, 17.039474>,  <43.603546, 40.374866, 17.226818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250137, 40.376961, 17.039474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372967, 0.597036, 0.710242,
		0.283346, 0.802198, -0.525541,
		-0.883522, 0.005235, -0.468361,
		42.985081, 40.378532, 16.898966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287914, 40.990818, 17.425308>,  <43.603546, 40.374866, 17.226818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287914, 40.990818, 17.425308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.966805, 40.802593, 17.278814>,  <42.774139, 40.689659, 17.190918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.966805, 40.802593, 17.278814>,  <43.287914, 40.990818, 17.425308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966805, 40.802593, 17.278814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586984, 0.515555, 0.624222,
		-0.104923, 0.716081, -0.690087,
		-0.802771, -0.470565, -0.366234,
		42.725975, 40.661423, 17.168943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.791401, 41.492817, 17.472195>,  <43.287914, 40.990818, 17.425308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.791401, 41.492817, 17.472195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.618996, 41.132118, 17.459095>,  <42.515553, 40.915699, 17.451235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.618996, 41.132118, 17.459095>,  <42.791401, 41.492817, 17.472195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618996, 41.132118, 17.459095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660490, 0.290555, 0.692337,
		-0.614801, 0.320036, -0.720831,
		-0.431014, -0.901751, -0.032748,
		42.489693, 40.861591, 17.449270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080242, 41.716232, 17.565929>,  <42.791401, 41.492817, 17.472195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080242, 41.716232, 17.565929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.117214, 41.335575, 17.683123>,  <42.139397, 41.107182, 17.753439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.117214, 41.335575, 17.683123>,  <42.080242, 41.716232, 17.565929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117214, 41.335575, 17.683123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599903, 0.181622, 0.779186,
		-0.794716, -0.247779, -0.554104,
		0.092429, -0.951640, 0.292981,
		42.144943, 41.050083, 17.771017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.419205, 43.452599, 19.123972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.558910, 43.112026, 19.280472>,  <37.642735, 42.907684, 19.374372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.558910, 43.112026, 19.280472>,  <37.419205, 43.452599, 19.123972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558910, 43.112026, 19.280472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740082, 0.005437, 0.672494,
		-0.574711, -0.524436, -0.628231,
		0.349265, -0.851432, 0.391251,
		37.663689, 42.856598, 19.397846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854786, 43.118179, 19.380812>,  <37.419205, 43.452599, 19.123972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854786, 43.118179, 19.380812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.118523, 42.874485, 19.557041>,  <37.276764, 42.728268, 19.662779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.118523, 42.874485, 19.557041>,  <36.854786, 43.118179, 19.380812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118523, 42.874485, 19.557041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668829, -0.207617, 0.713837,
		-0.343422, -0.765330, -0.544363,
		0.659340, -0.609233, 0.440574,
		37.316326, 42.691715, 19.689213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576313, 42.320938, 19.563543>,  <36.854786, 43.118179, 19.380812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576313, 42.320938, 19.563543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.856602, 42.419201, 19.831467>,  <37.024773, 42.478157, 19.992222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.856602, 42.419201, 19.831467>,  <36.576313, 42.320938, 19.563543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856602, 42.419201, 19.831467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475609, -0.538951, 0.695218,
		0.531779, -0.805720, -0.260817,
		0.700719, 0.245656, 0.669810,
		37.066818, 42.492897, 20.032410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809193, 41.638428, 19.890425>,  <36.576313, 42.320938, 19.563543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809193, 41.638428, 19.890425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.931892, 41.933159, 20.131416>,  <37.005512, 42.109997, 20.276012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.931892, 41.933159, 20.131416>,  <36.809193, 41.638428, 19.890425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931892, 41.933159, 20.131416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427083, -0.459137, 0.778970,
		0.850590, -0.496260, 0.173847,
		0.306752, 0.736831, 0.602481,
		37.023918, 42.154209, 20.312160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049854, 41.284142, 20.481033>,  <36.809193, 41.638428, 19.890425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049854, 41.284142, 20.481033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.984463, 41.662254, 20.593971>,  <36.945229, 41.889122, 20.661734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.984463, 41.662254, 20.593971>,  <37.049854, 41.284142, 20.481033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984463, 41.662254, 20.593971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468171, -0.326248, 0.821205,
		0.868384, 0.002062, 0.495888,
		-0.163476, 0.945282, 0.282343,
		36.935421, 41.945839, 20.678675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098587, 41.221462, 21.083103>,  <37.049854, 41.284142, 20.481033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098587, 41.221462, 21.083103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.910545, 41.574238, 21.069283>,  <36.797722, 41.785904, 21.060989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.910545, 41.574238, 21.069283>,  <37.098587, 41.221462, 21.083103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910545, 41.574238, 21.069283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447488, -0.204419, 0.870613,
		0.760760, 0.424741, 0.490753,
		-0.470104, 0.881934, -0.034553,
		36.769516, 41.838818, 21.058916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078247, 41.525433, 21.726135>,  <37.098587, 41.221462, 21.083103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078247, 41.525433, 21.726135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.755165, 41.696808, 21.564123>,  <36.561314, 41.799633, 21.466915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.755165, 41.696808, 21.564123>,  <37.078247, 41.525433, 21.726135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755165, 41.696808, 21.564123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553839, -0.315793, 0.770414,
		0.202167, 0.846591, 0.492353,
		-0.807707, 0.428437, -0.405033,
		36.512852, 41.825340, 21.442614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681229, 41.867481, 22.258728>,  <37.078247, 41.525433, 21.726135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681229, 41.867481, 22.258728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.405205, 41.809982, 21.974995>,  <36.239590, 41.775482, 21.804754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.405205, 41.809982, 21.974995>,  <36.681229, 41.867481, 22.258728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405205, 41.809982, 21.974995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687131, -0.177692, 0.704470,
		-0.227305, 0.973531, 0.023848,
		-0.690061, -0.143743, -0.709333,
		36.198185, 41.766861, 21.762194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106274, 42.033962, 22.628141>,  <36.681229, 41.867481, 22.258728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106274, 42.033962, 22.628141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.931854, 41.854889, 22.315874>,  <35.827202, 41.747444, 22.128513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.931854, 41.854889, 22.315874>,  <36.106274, 42.033962, 22.628141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931854, 41.854889, 22.315874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753544, -0.292597, 0.588692,
		-0.491966, 0.844968, -0.209758,
		-0.436051, -0.447679, -0.780668,
		35.801041, 41.720585, 22.081673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368607, 42.236565, 22.697992>,  <36.106274, 42.033962, 22.628141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368607, 42.236565, 22.697992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.405689, 41.910389, 22.469446>,  <35.427940, 41.714684, 22.332319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.405689, 41.910389, 22.469446>,  <35.368607, 42.236565, 22.697992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405689, 41.910389, 22.469446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692686, -0.465036, 0.551296,
		-0.715256, 0.344665, -0.607960,
		0.092711, -0.815443, -0.571365,
		35.433502, 41.665756, 22.298037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666519, 41.959946, 22.495054>,  <35.368607, 42.236565, 22.697992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666519, 41.959946, 22.495054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.882469, 41.631683, 22.420153>,  <35.012039, 41.434727, 22.375212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.882469, 41.631683, 22.420153>,  <34.666519, 41.959946, 22.495054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882469, 41.631683, 22.420153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544493, -0.510117, 0.665814,
		-0.641925, -0.257495, -0.722238,
		0.539870, -0.820656, -0.187253,
		35.044430, 41.385487, 22.363977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228985, 41.441910, 22.155306>,  <34.666519, 41.959946, 22.495054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228985, 41.441910, 22.155306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.532658, 41.270290, 22.351088>,  <34.714859, 41.167316, 22.468555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.532658, 41.270290, 22.351088>,  <34.228985, 41.441910, 22.155306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532658, 41.270290, 22.351088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648188, -0.429991, 0.628459,
		-0.059182, -0.794369, -0.604546,
		0.759178, -0.429053, 0.489453,
		34.760410, 41.141575, 22.497923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003757, 40.809406, 22.704205>,  <34.228985, 41.441910, 22.155306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003757, 40.809406, 22.704205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.918106, 40.794155, 22.313780>,  <33.866714, 40.785004, 22.079525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.918106, 40.794155, 22.313780>,  <34.003757, 40.809406, 22.704205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918106, 40.794155, 22.313780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807073, -0.555985, 0.198778,
		-0.550255, 0.830317, 0.088281,
		-0.214132, -0.038130, -0.976060,
		33.853867, 40.782715, 22.020962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316856, 41.018402, 22.672598>,  <34.003757, 40.809406, 22.704205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316856, 41.018402, 22.672598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.427929, 40.798260, 22.357637>,  <33.494572, 40.666176, 22.168661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.427929, 40.798260, 22.357637>,  <33.316856, 41.018402, 22.672598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427929, 40.798260, 22.357637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686749, -0.686863, 0.237899,
		-0.671765, 0.474686, -0.568687,
		0.277682, -0.550358, -0.787400,
		33.511234, 40.633152, 22.121416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864834, 40.384212, 22.688147>,  <33.316856, 41.018402, 22.672598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864834, 40.384212, 22.688147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.089973, 40.266758, 22.379087>,  <33.225056, 40.196285, 22.193653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.089973, 40.266758, 22.379087>,  <32.864834, 40.384212, 22.688147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089973, 40.266758, 22.379087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310005, -0.941528, 0.131992,
		-0.766225, 0.165233, -0.620964,
		0.562846, -0.293638, -0.772646,
		33.258827, 40.178665, 22.147293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370708, 39.793167, 22.830025>,  <32.864834, 40.384212, 22.688147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370708, 39.793167, 22.830025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.979580, 39.760544, 22.752857>,  <32.744904, 39.740971, 22.706556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.979580, 39.760544, 22.752857>,  <33.370708, 39.793167, 22.830025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979580, 39.760544, 22.752857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203243, -0.146939, -0.968040,
		0.050604, -0.985777, 0.160256,
		-0.977820, -0.081557, -0.192917,
		32.686234, 39.736076, 22.694983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291553, 39.387707, 22.266787>,  <33.370708, 39.793167, 22.830025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291553, 39.387707, 22.266787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.928352, 39.555222, 22.271664>,  <32.710430, 39.655731, 22.274590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.928352, 39.555222, 22.271664>,  <33.291553, 39.387707, 22.266787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928352, 39.555222, 22.271664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029292, 0.092484, -0.995283,
		-0.417937, -0.903364, -0.096243,
		-0.908004, 0.418784, 0.012191,
		32.655952, 39.680859, 22.275320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816021, 39.009659, 21.838772>,  <33.291553, 39.387707, 22.266787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816021, 39.009659, 21.838772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.681622, 39.385902, 21.858208>,  <32.600983, 39.611649, 21.869869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.681622, 39.385902, 21.858208>,  <32.816021, 39.009659, 21.838772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681622, 39.385902, 21.858208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012477, 0.056027, -0.998351,
		-0.941779, -0.334841, -0.030561,
		-0.336001, 0.940608, 0.048588,
		32.580822, 39.668083, 21.872784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374207, 39.064846, 21.292343>,  <32.816021, 39.009659, 21.838772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374207, 39.064846, 21.292343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.458462, 39.446117, 21.379137>,  <32.509014, 39.674881, 21.431213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.458462, 39.446117, 21.379137>,  <32.374207, 39.064846, 21.292343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458462, 39.446117, 21.379137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047894, 0.211636, -0.976174,
		-0.976389, 0.216016, -0.001072,
		0.210642, 0.953177, 0.216985,
		32.521656, 39.732071, 21.444233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956427, 39.328876, 20.851938>,  <32.374207, 39.064846, 21.292343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956427, 39.328876, 20.851938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.218273, 39.610947, 20.960894>,  <32.375381, 39.780190, 21.026268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.218273, 39.610947, 20.960894>,  <31.956427, 39.328876, 20.851938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218273, 39.610947, 20.960894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235874, 0.151801, -0.959854,
		-0.718219, 0.692588, -0.066962,
		0.654619, 0.705180, 0.272389,
		32.414658, 39.822502, 21.042610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774973, 39.951015, 20.358768>,  <31.956427, 39.328876, 20.851938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774973, 39.951015, 20.358768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.144650, 40.007160, 20.500847>,  <32.366455, 40.040848, 20.586094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.144650, 40.007160, 20.500847>,  <31.774973, 39.951015, 20.358768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144650, 40.007160, 20.500847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286262, 0.361079, -0.887511,
		-0.252825, 0.921912, 0.293527,
		0.924194, 0.140359, 0.355198,
		32.421909, 40.049267, 20.607407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069622, 40.408638, 19.883455>,  <31.774973, 39.951015, 20.358768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069622, 40.408638, 19.883455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.402058, 40.284332, 20.067942>,  <32.601517, 40.209747, 20.178633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.402058, 40.284332, 20.067942>,  <32.069622, 40.408638, 19.883455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402058, 40.284332, 20.067942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506354, 0.079847, -0.858621,
		0.230002, 0.947127, 0.223717,
		0.831086, -0.310765, 0.461217,
		32.651382, 40.191101, 20.206306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577930, 40.825111, 19.808495>,  <32.069622, 40.408638, 19.883455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577930, 40.825111, 19.808495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.801907, 40.520218, 19.938396>,  <32.936295, 40.337280, 20.016338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.801907, 40.520218, 19.938396>,  <32.577930, 40.825111, 19.808495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801907, 40.520218, 19.938396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523168, 0.021338, -0.851963,
		0.642464, 0.646951, 0.410724,
		0.559942, -0.762233, 0.324755,
		32.969891, 40.291550, 20.035824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290581, 41.061375, 19.860931>,  <32.577930, 40.825111, 19.808495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290581, 41.061375, 19.860931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.276432, 40.667244, 19.794132>,  <33.267941, 40.430767, 19.754053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.276432, 40.667244, 19.794132>,  <33.290581, 41.061375, 19.860931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276432, 40.667244, 19.794132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642532, 0.105562, -0.758953,
		0.765442, -0.134150, 0.629367,
		-0.035376, -0.985322, -0.166998,
		33.265820, 40.371647, 19.744034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922138, 40.968105, 19.630737>,  <33.290581, 41.061375, 19.860931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922138, 40.968105, 19.630737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.744022, 40.627213, 19.520891>,  <33.637154, 40.422676, 19.454983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.744022, 40.627213, 19.520891>,  <33.922138, 40.968105, 19.630737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744022, 40.627213, 19.520891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579032, -0.040143, -0.814316,
		0.682964, -0.521618, 0.511346,
		-0.445289, -0.852234, -0.274618,
		33.610435, 40.371544, 19.438505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558376, 40.500694, 19.365704>,  <33.922138, 40.968105, 19.630737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558376, 40.500694, 19.365704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.214165, 40.346043, 19.233032>,  <34.007637, 40.253254, 19.153429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.214165, 40.346043, 19.233032>,  <34.558376, 40.500694, 19.365704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214165, 40.346043, 19.233032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440712, -0.238520, -0.865379,
		0.255467, -0.890858, 0.375644,
		-0.860528, -0.386627, -0.331678,
		33.956005, 40.230053, 19.133530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628895, 39.809006, 19.285349>,  <34.558376, 40.500694, 19.365704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628895, 39.809006, 19.285349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.343746, 39.917931, 19.026844>,  <34.172657, 39.983288, 18.871740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.343746, 39.917931, 19.026844>,  <34.628895, 39.809006, 19.285349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343746, 39.917931, 19.026844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640401, -0.122810, -0.758159,
		-0.285825, -0.954339, -0.086842,
		-0.712875, 0.272314, -0.646262,
		34.129883, 39.999626, 18.832966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726376, 39.351284, 18.712463>,  <34.628895, 39.809006, 19.285349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726376, 39.351284, 18.712463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.477875, 39.615944, 18.544527>,  <34.328773, 39.774738, 18.443766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.477875, 39.615944, 18.544527>,  <34.726376, 39.351284, 18.712463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477875, 39.615944, 18.544527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629211, 0.101864, -0.770530,
		-0.467055, -0.742861, -0.479601,
		-0.621251, 0.661651, -0.419840,
		34.291500, 39.814438, 18.418575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256767, 38.692596, 18.525993>,  <34.726376, 39.351284, 18.712463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256767, 38.692596, 18.525993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.253361, 38.298752, 18.456171>,  <34.251316, 38.062447, 18.414278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.253361, 38.298752, 18.456171>,  <34.256767, 38.692596, 18.525993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253361, 38.298752, 18.456171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372669, -0.158861, 0.914265,
		-0.927925, 0.072834, -0.365582,
		-0.008513, -0.984611, -0.174554,
		34.250809, 38.003368, 18.403805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582172, 38.347569, 18.743359>,  <34.256767, 38.692596, 18.525993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582172, 38.347569, 18.743359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.854687, 38.055386, 18.762499>,  <34.018196, 37.880077, 18.773983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.854687, 38.055386, 18.762499>,  <33.582172, 38.347569, 18.743359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854687, 38.055386, 18.762499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379656, -0.296697, 0.876260,
		-0.625872, -0.615147, -0.479456,
		0.681282, -0.730455, 0.047850,
		34.059071, 37.836250, 18.776854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191109, 37.659142, 18.917202>,  <33.582172, 38.347569, 18.743359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191109, 37.659142, 18.917202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.569527, 37.629047, 19.043276>,  <33.796577, 37.610992, 19.118919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.569527, 37.629047, 19.043276>,  <33.191109, 37.659142, 18.917202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569527, 37.629047, 19.043276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321172, -0.346777, 0.881246,
		0.042997, -0.934925, -0.352230,
		0.946044, -0.075236, 0.315183,
		33.853340, 37.606476, 19.137831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207874, 37.069782, 19.459984>,  <33.191109, 37.659142, 18.917202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207874, 37.069782, 19.459984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.558517, 37.256405, 19.507116>,  <33.768902, 37.368378, 19.535397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.558517, 37.256405, 19.507116>,  <33.207874, 37.069782, 19.459984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558517, 37.256405, 19.507116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031228, -0.299507, 0.953583,
		0.480189, -0.832240, -0.277120,
		0.876609, 0.466553, 0.117831,
		33.821499, 37.396370, 19.542465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538319, 36.665337, 20.106960>,  <33.207874, 37.069782, 19.459984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538319, 36.665337, 20.106960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.718086, 37.021626, 20.079742>,  <33.825947, 37.235401, 20.063412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.718086, 37.021626, 20.079742>,  <33.538319, 36.665337, 20.106960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718086, 37.021626, 20.079742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233274, -0.043490, 0.971438,
		0.862327, -0.452453, -0.227329,
		0.449417, 0.890727, -0.068043,
		33.852913, 37.288845, 20.059330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258564, 36.559563, 20.224815>,  <33.538319, 36.665337, 20.106960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258564, 36.559563, 20.224815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.165863, 36.939659, 20.308075>,  <34.110241, 37.167717, 20.358030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.165863, 36.939659, 20.308075>,  <34.258564, 36.559563, 20.224815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165863, 36.939659, 20.308075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216627, -0.158187, 0.963353,
		0.948348, 0.268350, -0.169189,
		-0.231752, 0.950245, 0.208148,
		34.096336, 37.224731, 20.370520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751434, 36.764889, 20.838036>,  <34.258564, 36.559563, 20.224815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751434, 36.764889, 20.838036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.461845, 37.040741, 20.844683>,  <34.288094, 37.206253, 20.848671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.461845, 37.040741, 20.844683>,  <34.751434, 36.764889, 20.838036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461845, 37.040741, 20.844683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061745, 0.040786, 0.997258,
		0.687059, 0.723015, -0.072108,
		-0.723973, 0.689628, 0.016620,
		34.244652, 37.247631, 20.849669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975361, 37.227493, 21.320210>,  <34.751434, 36.764889, 20.838036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975361, 37.227493, 21.320210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.587540, 37.323761, 21.302086>,  <34.354847, 37.381519, 21.291212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.587540, 37.323761, 21.302086>,  <34.975361, 37.227493, 21.320210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587540, 37.323761, 21.302086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022203, 0.270632, 0.962427,
		0.243886, 0.932115, -0.267734,
		-0.969550, 0.240667, -0.045308,
		34.296677, 37.395962, 21.288494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880116, 37.782166, 21.724152>,  <34.975361, 37.227493, 21.320210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880116, 37.782166, 21.724152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.492653, 37.684772, 21.704443>,  <34.260178, 37.626335, 21.692617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.492653, 37.684772, 21.704443>,  <34.880116, 37.782166, 21.724152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492653, 37.684772, 21.704443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156223, 0.442850, 0.882881,
		-0.193148, 0.862902, -0.467006,
		-0.968653, -0.243483, -0.049269,
		34.202057, 37.611729, 21.689663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425446, 38.408936, 21.994627>,  <34.880116, 37.782166, 21.724152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425446, 38.408936, 21.994627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.205322, 38.075619, 22.015726>,  <34.073250, 37.875629, 22.028385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.205322, 38.075619, 22.015726>,  <34.425446, 38.408936, 21.994627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205322, 38.075619, 22.015726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398440, 0.317596, 0.860452,
		-0.733762, 0.452497, -0.506793,
		-0.550308, -0.833294, 0.052747,
		34.040230, 37.825630, 22.031549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739468, 38.674377, 22.239342>,  <34.425446, 38.408936, 21.994627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739468, 38.674377, 22.239342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.740677, 38.287289, 22.340136>,  <33.741402, 38.055035, 22.400612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.740677, 38.287289, 22.340136>,  <33.739468, 38.674377, 22.239342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740677, 38.287289, 22.340136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541597, 0.210245, 0.813923,
		-0.840633, -0.138938, -0.523481,
		0.003025, -0.967726, 0.251987,
		33.741585, 37.996971, 22.415731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106689, 38.602917, 22.434990>,  <33.739468, 38.674377, 22.239342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106689, 38.602917, 22.434990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.320114, 38.299904, 22.585436>,  <33.448170, 38.118095, 22.675703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.320114, 38.299904, 22.585436>,  <33.106689, 38.602917, 22.434990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320114, 38.299904, 22.585436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404505, 0.161977, 0.900077,
		-0.742755, -0.632388, -0.219999,
		0.533563, -0.757528, 0.376114,
		33.480183, 38.072647, 22.698271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.358799, 38.563824, 14.785006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528778, 38.232014, 14.929955>,  <35.630764, 38.032928, 15.016924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528778, 38.232014, 14.929955>,  <35.358799, 38.563824, 14.785006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528778, 38.232014, 14.929955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808120, -0.167269, 0.564768,
		-0.407873, -0.532838, -0.741433,
		0.424949, -0.829521, 0.362373,
		35.656261, 37.983158, 15.038667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818840, 38.125957, 14.888224>,  <35.358799, 38.563824, 14.785006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818840, 38.125957, 14.888224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111172, 37.981476, 15.119886>,  <35.286572, 37.894787, 15.258884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111172, 37.981476, 15.119886>,  <34.818840, 38.125957, 14.888224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111172, 37.981476, 15.119886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658159, -0.148072, 0.738174,
		-0.180879, -0.920653, -0.345949,
		0.730827, -0.361210, 0.579153,
		35.330421, 37.873116, 15.293633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523460, 37.446960, 15.197189>,  <34.818840, 38.125957, 14.888224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523460, 37.446960, 15.197189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830830, 37.578400, 15.416842>,  <35.015251, 37.657265, 15.548633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830830, 37.578400, 15.416842>,  <34.523460, 37.446960, 15.197189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830830, 37.578400, 15.416842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550709, -0.097504, 0.828982,
		0.325947, -0.939422, 0.106039,
		0.768426, 0.328601, 0.549130,
		35.061356, 37.676979, 15.581580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571381, 37.017387, 15.743644>,  <34.523460, 37.446960, 15.197189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571381, 37.017387, 15.743644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766838, 37.343864, 15.866965>,  <34.884113, 37.539753, 15.940958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766838, 37.343864, 15.866965>,  <34.571381, 37.017387, 15.743644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766838, 37.343864, 15.866965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354641, -0.137049, 0.924904,
		0.797155, -0.561287, 0.222488,
		0.488644, 0.816195, 0.308305,
		34.913433, 37.588722, 15.959456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903942, 36.754623, 16.330912>,  <34.571381, 37.017387, 15.743644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903942, 36.754623, 16.330912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902840, 37.151329, 16.382145>,  <34.902180, 37.389351, 16.412886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902840, 37.151329, 16.382145>,  <34.903942, 36.754623, 16.330912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902840, 37.151329, 16.382145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142857, -0.127161, 0.981540,
		0.989740, -0.015593, 0.142031,
		-0.002756, 0.991760, 0.128084,
		34.902012, 37.448856, 16.420570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311310, 36.805328, 16.934132>,  <34.903942, 36.754623, 16.330912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311310, 36.805328, 16.934132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086124, 37.133068, 16.890800>,  <34.951012, 37.329712, 16.864801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086124, 37.133068, 16.890800>,  <35.311310, 36.805328, 16.934132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086124, 37.133068, 16.890800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169194, 0.014042, 0.985483,
		0.808979, 0.573118, 0.130724,
		-0.562962, 0.819353, -0.108328,
		34.917236, 37.378876, 16.858301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606922, 37.440056, 17.396778>,  <35.311310, 36.805328, 16.934132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606922, 37.440056, 17.396778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224754, 37.538609, 17.331709>,  <34.995453, 37.597740, 17.292667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224754, 37.538609, 17.331709>,  <35.606922, 37.440056, 17.396778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224754, 37.538609, 17.331709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146993, 0.080877, 0.985826,
		0.256047, 0.965792, -0.041056,
		-0.955423, 0.246383, -0.162673,
		34.938126, 37.612522, 17.282907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484818, 37.935833, 17.939819>,  <35.606922, 37.440056, 17.396778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484818, 37.935833, 17.939819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114075, 37.839321, 17.824778>,  <34.891628, 37.781414, 17.755753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114075, 37.839321, 17.824778>,  <35.484818, 37.935833, 17.939819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114075, 37.839321, 17.824778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318934, 0.101971, 0.942275,
		-0.198024, 0.965083, -0.171465,
		-0.926859, -0.241280, -0.287605,
		34.836018, 37.766937, 17.738497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039017, 38.533260, 18.137321>,  <35.484818, 37.935833, 17.939819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039017, 38.533260, 18.137321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803715, 38.216644, 18.071087>,  <34.662533, 38.026672, 18.031345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803715, 38.216644, 18.071087>,  <35.039017, 38.533260, 18.137321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803715, 38.216644, 18.071087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326617, 0.045235, 0.944074,
		-0.739784, 0.609438, -0.285140,
		-0.588253, -0.791542, -0.165589,
		34.627239, 37.979183, 18.021410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559776, 39.076000, 17.814192>,  <35.039017, 38.533260, 18.137321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559776, 39.076000, 17.814192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483047, 39.466259, 17.856749>,  <34.437008, 39.700413, 17.882282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483047, 39.466259, 17.856749>,  <34.559776, 39.076000, 17.814192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483047, 39.466259, 17.856749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392715, 0.175651, -0.902730,
		-0.899432, -0.131385, -0.416845,
		-0.191824, 0.975646, 0.106390,
		34.425499, 39.758953, 17.888666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192875, 39.275066, 17.210508>,  <34.559776, 39.076000, 17.814192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192875, 39.275066, 17.210508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346321, 39.608238, 17.370039>,  <34.438389, 39.808144, 17.465757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346321, 39.608238, 17.370039>,  <34.192875, 39.275066, 17.210508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346321, 39.608238, 17.370039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331313, 0.278988, -0.901331,
		-0.862016, 0.477899, -0.168937,
		0.383614, 0.832933, 0.398827,
		34.461407, 39.858120, 17.489687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019268, 39.781239, 16.834547>,  <34.192875, 39.275066, 17.210508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019268, 39.781239, 16.834547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322746, 39.942207, 17.039459>,  <34.504833, 40.038788, 17.162407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322746, 39.942207, 17.039459>,  <34.019268, 39.781239, 16.834547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322746, 39.942207, 17.039459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425816, 0.288775, -0.857490,
		-0.493009, 0.868714, 0.047735,
		0.758698, 0.402424, 0.512281,
		34.550354, 40.062935, 17.193144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161434, 40.378742, 16.519995>,  <34.019268, 39.781239, 16.834547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161434, 40.378742, 16.519995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493061, 40.289047, 16.724884>,  <34.692036, 40.235229, 16.847816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493061, 40.289047, 16.724884>,  <34.161434, 40.378742, 16.519995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493061, 40.289047, 16.724884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549838, 0.160425, -0.819721,
		0.101637, 0.961240, 0.256295,
		0.829064, -0.224235, 0.512221,
		34.741779, 40.221775, 16.878550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666512, 40.927998, 16.405882>,  <34.161434, 40.378742, 16.519995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666512, 40.927998, 16.405882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902924, 40.633171, 16.536982>,  <35.044773, 40.456276, 16.615641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902924, 40.633171, 16.536982>,  <34.666512, 40.927998, 16.405882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902924, 40.633171, 16.536982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681684, 0.239158, -0.691455,
		0.431261, 0.632094, 0.643794,
		0.591033, -0.737062, 0.327749,
		35.080235, 40.412052, 16.635305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212639, 41.291309, 16.538254>,  <34.666512, 40.927998, 16.405882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212639, 41.291309, 16.538254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288071, 40.904877, 16.467690>,  <35.333328, 40.673016, 16.425352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288071, 40.904877, 16.467690>,  <35.212639, 41.291309, 16.538254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288071, 40.904877, 16.467690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665779, 0.257815, -0.700192,
		0.721926, 0.014591, 0.691817,
		0.188577, -0.966084, -0.176408,
		35.344643, 40.615051, 16.414766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834358, 41.374031, 16.427126>,  <35.212639, 41.291309, 16.538254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834358, 41.374031, 16.427126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734913, 41.017998, 16.274315>,  <35.675243, 40.804379, 16.182629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734913, 41.017998, 16.274315>,  <35.834358, 41.374031, 16.427126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734913, 41.017998, 16.274315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665272, 0.129746, -0.735241,
		0.703990, -0.436947, 0.559888,
		-0.248618, -0.890081, -0.382029,
		35.660328, 40.750973, 16.159706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411427, 41.021004, 16.203417>,  <35.834358, 41.374031, 16.427126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411427, 41.021004, 16.203417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159103, 40.809566, 15.976199>,  <36.007710, 40.682705, 15.839869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159103, 40.809566, 15.976199>,  <36.411427, 41.021004, 16.203417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159103, 40.809566, 15.976199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652977, 0.033846, -0.756621,
		0.419167, -0.848203, 0.323806,
		-0.630809, -0.528589, -0.568044,
		35.969860, 40.650990, 15.805786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777706, 40.459431, 15.973371>,  <36.411427, 41.021004, 16.203417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777706, 40.459431, 15.973371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477291, 40.511436, 15.714438>,  <36.297043, 40.542641, 15.559079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477291, 40.511436, 15.714438>,  <36.777706, 40.459431, 15.973371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477291, 40.511436, 15.714438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651087, -0.017012, -0.758812,
		-0.109670, -0.991366, -0.071875,
		-0.751038, 0.130016, -0.647331,
		36.251980, 40.550442, 15.520239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957939, 40.057602, 15.427459>,  <36.777706, 40.459431, 15.973371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957939, 40.057602, 15.427459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691006, 40.310249, 15.269613>,  <36.530846, 40.461838, 15.174906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691006, 40.310249, 15.269613>,  <36.957939, 40.057602, 15.427459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691006, 40.310249, 15.269613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562809, 0.080679, -0.822640,
		-0.487758, -0.771070, -0.409321,
		-0.667337, 0.631619, -0.394613,
		36.490807, 40.499737, 15.151229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899879, 39.836651, 14.704757>,  <36.957939, 40.057602, 15.427459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899879, 39.836651, 14.704757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745426, 40.205524, 14.713568>,  <36.652756, 40.426849, 14.718854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745426, 40.205524, 14.713568>,  <36.899879, 39.836651, 14.704757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745426, 40.205524, 14.713568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358799, 0.172147, -0.917403,
		-0.849803, -0.346336, -0.397349,
		-0.386132, 0.922180, 0.022027,
		36.629585, 40.482178, 14.720176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563282, 39.975082, 14.004775>,  <36.899879, 39.836651, 14.704757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563282, 39.975082, 14.004775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626476, 40.332985, 14.171842>,  <36.664394, 40.547726, 14.272081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626476, 40.332985, 14.171842>,  <36.563282, 39.975082, 14.004775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626476, 40.332985, 14.171842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506086, 0.289829, -0.812328,
		-0.847890, 0.339712, -0.407037,
		0.157986, 0.894760, 0.417666,
		36.673874, 40.601414, 14.297141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468117, 40.268936, 13.489962>,  <36.563282, 39.975082, 14.004775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468117, 40.268936, 13.489962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670597, 40.536842, 13.707279>,  <36.792084, 40.697586, 13.837670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670597, 40.536842, 13.707279>,  <36.468117, 40.268936, 13.489962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670597, 40.536842, 13.707279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609278, 0.168115, -0.774931,
		-0.610361, 0.723289, -0.322975,
		0.506201, 0.669769, 0.543295,
		36.822456, 40.737774, 13.870268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605255, 40.939869, 13.190328>,  <36.468117, 40.268936, 13.489962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605255, 40.939869, 13.190328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896698, 40.857136, 13.451510>,  <37.071564, 40.807495, 13.608220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896698, 40.857136, 13.451510>,  <36.605255, 40.939869, 13.190328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896698, 40.857136, 13.451510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682856, 0.145200, -0.715978,
		0.053277, 0.967542, 0.247030,
		0.728608, -0.206831, 0.652956,
		37.115280, 40.795086, 13.647397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<43.473091, 37.208996, 17.619106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.128883, 37.280430, 17.428274>,  <42.922359, 37.323292, 17.313774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.128883, 37.280430, 17.428274>,  <43.473091, 37.208996, 17.619106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128883, 37.280430, 17.428274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421032, 0.277859, 0.863439,
		0.286762, 0.943875, -0.163912,
		-0.860523, 0.178589, -0.477081,
		42.870728, 37.334007, 17.285151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.268883, 37.867462, 17.829082>,  <43.473091, 37.208996, 17.619106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.268883, 37.867462, 17.829082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.937820, 37.685993, 17.696920>,  <42.739182, 37.577110, 17.617622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.937820, 37.685993, 17.696920>,  <43.268883, 37.867462, 17.829082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937820, 37.685993, 17.696920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512230, 0.370021, 0.775051,
		-0.229362, 0.810720, -0.538635,
		-0.827655, -0.453672, -0.330407,
		42.689526, 37.549892, 17.597799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.754700, 38.369492, 17.821724>,  <43.268883, 37.867462, 17.829082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.754700, 38.369492, 17.821724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.566231, 38.016903, 17.834379>,  <42.453152, 37.805347, 17.841972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.566231, 38.016903, 17.834379>,  <42.754700, 38.369492, 17.821724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566231, 38.016903, 17.834379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680971, 0.386326, 0.622119,
		-0.560605, 0.271578, -0.782284,
		-0.471170, -0.881475, 0.031640,
		42.424881, 37.752460, 17.843872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151836, 38.570473, 17.985073>,  <42.754700, 38.369492, 17.821724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151836, 38.570473, 17.985073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.082554, 38.179989, 18.037247>,  <42.040985, 37.945698, 18.068550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.082554, 38.179989, 18.037247>,  <42.151836, 38.570473, 17.985073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082554, 38.179989, 18.037247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791868, 0.216782, 0.570921,
		-0.585614, -0.004397, -0.810578,
		-0.173208, -0.976210, 0.130433,
		42.030590, 37.887127, 18.076376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405212, 38.452774, 17.923178>,  <42.151836, 38.570473, 17.985073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405212, 38.452774, 17.923178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.552223, 38.158516, 18.150774>,  <41.640430, 37.981960, 18.287333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.552223, 38.158516, 18.150774>,  <41.405212, 38.452774, 17.923178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552223, 38.158516, 18.150774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821629, 0.029803, 0.569242,
		-0.435719, -0.676709, -0.593476,
		0.367524, -0.735647, 0.568990,
		41.662479, 37.937820, 18.321470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770149, 38.246799, 18.220009>,  <41.405212, 38.452774, 17.923178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770149, 38.246799, 18.220009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.043907, 38.066380, 18.449148>,  <41.208160, 37.958126, 18.586632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.043907, 38.066380, 18.449148>,  <40.770149, 38.246799, 18.220009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043907, 38.066380, 18.449148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616689, 0.061039, 0.784837,
		-0.388970, -0.890407, -0.236385,
		0.684395, -0.451054, 0.572847,
		41.249226, 37.931065, 18.621002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489841, 37.652164, 18.552900>,  <40.770149, 38.246799, 18.220009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489841, 37.652164, 18.552900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.784138, 37.793003, 18.784319>,  <40.960716, 37.877506, 18.923170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.784138, 37.793003, 18.784319>,  <40.489841, 37.652164, 18.552900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784138, 37.793003, 18.784319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632882, 0.053291, 0.772412,
		0.241131, -0.934446, 0.262043,
		0.735742, 0.352095, 0.578544,
		41.004860, 37.898632, 18.957882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436882, 37.334759, 19.275616>,  <40.489841, 37.652164, 18.552900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436882, 37.334759, 19.275616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.697540, 37.630726, 19.342403>,  <40.853935, 37.808308, 19.382477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.697540, 37.630726, 19.342403>,  <40.436882, 37.334759, 19.275616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697540, 37.630726, 19.342403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516039, 0.271121, 0.812525,
		0.555934, -0.615640, 0.558502,
		0.651645, 0.739919, 0.166969,
		40.893032, 37.852703, 19.392494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625683, 37.350525, 19.926971>,  <40.436882, 37.334759, 19.275616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625683, 37.350525, 19.926971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.690372, 37.736809, 19.845728>,  <40.729187, 37.968578, 19.796982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.690372, 37.736809, 19.845728>,  <40.625683, 37.350525, 19.926971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690372, 37.736809, 19.845728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531830, 0.258662, 0.806381,
		0.831265, -0.022393, 0.555425,
		0.161725, 0.965708, -0.203108,
		40.738892, 38.026520, 19.784796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963524, 37.541893, 20.544325>,  <40.625683, 37.350525, 19.926971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963524, 37.541893, 20.544325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.839237, 37.870380, 20.352888>,  <40.764664, 38.067474, 20.238026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.839237, 37.870380, 20.352888>,  <40.963524, 37.541893, 20.544325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839237, 37.870380, 20.352888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372645, 0.357955, 0.856156,
		0.874409, 0.444366, 0.194803,
		-0.310716, 0.821223, -0.478590,
		40.746021, 38.116749, 20.209311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290852, 38.133755, 20.918308>,  <40.963524, 37.541893, 20.544325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290852, 38.133755, 20.918308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.967247, 38.258080, 20.718750>,  <40.773083, 38.332676, 20.599014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.967247, 38.258080, 20.718750>,  <41.290852, 38.133755, 20.918308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967247, 38.258080, 20.718750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269958, 0.557475, 0.785076,
		0.522134, 0.769816, -0.367096,
		-0.809011, 0.310814, -0.498895,
		40.724545, 38.351322, 20.569082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188404, 38.825401, 21.214430>,  <41.290852, 38.133755, 20.918308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188404, 38.825401, 21.214430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.859192, 38.704273, 21.022211>,  <40.661667, 38.631596, 20.906879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.859192, 38.704273, 21.022211>,  <41.188404, 38.825401, 21.214430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859192, 38.704273, 21.022211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567782, 0.462063, 0.681265,
		0.015744, 0.833547, -0.552225,
		-0.823029, -0.302817, -0.480547,
		40.612282, 38.613426, 20.878046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795502, 39.456188, 21.338467>,  <41.188404, 38.825401, 21.214430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795502, 39.456188, 21.338467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.571476, 39.134987, 21.256964>,  <40.437061, 38.942268, 21.208063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.571476, 39.134987, 21.256964>,  <40.795502, 39.456188, 21.338467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571476, 39.134987, 21.256964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672077, 0.296588, 0.678489,
		-0.484396, 0.516938, -0.705787,
		-0.560066, -0.803001, -0.203756,
		40.403458, 38.894085, 21.195837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155922, 39.758213, 21.357939>,  <40.795502, 39.456188, 21.338467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155922, 39.758213, 21.357939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.097954, 39.365475, 21.406893>,  <40.063171, 39.129833, 21.436266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.097954, 39.365475, 21.406893>,  <40.155922, 39.758213, 21.357939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097954, 39.365475, 21.406893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660129, 0.188084, 0.727224,
		-0.737040, 0.024601, -0.675401,
		-0.144923, -0.981845, 0.122386,
		40.054478, 39.070923, 21.443609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669445, 40.100040, 20.912642>,  <40.155922, 39.758213, 21.357939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669445, 40.100040, 20.912642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.686729, 40.496548, 20.962479>,  <39.697098, 40.734451, 20.992380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.686729, 40.496548, 20.962479>,  <39.669445, 40.100040, 20.912642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686729, 40.496548, 20.962479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531023, 0.082848, -0.843297,
		-0.846255, 0.102599, -0.522806,
		0.043208, 0.991266, 0.124594,
		39.699692, 40.793926, 20.999857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705898, 40.296230, 20.299738>,  <39.669445, 40.100040, 20.912642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705898, 40.296230, 20.299738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.836395, 40.606609, 20.515688>,  <39.914692, 40.792839, 20.645258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.836395, 40.606609, 20.515688>,  <39.705898, 40.296230, 20.299738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836395, 40.606609, 20.515688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758269, 0.126209, -0.639608,
		-0.564442, 0.618038, -0.547206,
		0.326240, 0.775952, 0.539877,
		39.934269, 40.839394, 20.677650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882885, 40.758278, 19.795330>,  <39.705898, 40.296230, 20.299738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882885, 40.758278, 19.795330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.103355, 40.845264, 20.117552>,  <40.235638, 40.897457, 20.310884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.103355, 40.845264, 20.117552>,  <39.882885, 40.758278, 19.795330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103355, 40.845264, 20.117552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804542, 0.117406, -0.582174,
		-0.221180, 0.968981, -0.110250,
		0.551172, 0.217466, 0.805554,
		40.268707, 40.910503, 20.359219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354023, 41.177189, 19.496469>,  <39.882885, 40.758278, 19.795330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354023, 41.177189, 19.496469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.524532, 41.149696, 19.857260>,  <40.626839, 41.133202, 20.073734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.524532, 41.149696, 19.857260>,  <40.354023, 41.177189, 19.496469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524532, 41.149696, 19.857260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894237, 0.182467, -0.408713,
		-0.136489, 0.980806, 0.139245,
		0.426276, -0.068733, 0.901978,
		40.652416, 41.129078, 20.127853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693947, 41.802410, 19.589901>,  <40.354023, 41.177189, 19.496469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693947, 41.802410, 19.589901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.853573, 41.497864, 19.794279>,  <40.949348, 41.315136, 19.916906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.853573, 41.497864, 19.794279>,  <40.693947, 41.802410, 19.589901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853573, 41.497864, 19.794279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805777, 0.025278, -0.591679,
		0.437570, 0.647827, 0.623580,
		0.399069, -0.761368, 0.510943,
		40.973293, 41.269455, 19.947561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383606, 42.019058, 19.603067>,  <40.693947, 41.802410, 19.589901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383606, 42.019058, 19.603067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.384796, 41.625729, 19.675806>,  <41.385509, 41.389732, 19.719450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.384796, 41.625729, 19.675806>,  <41.383606, 42.019058, 19.603067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384796, 41.625729, 19.675806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720686, -0.123957, -0.682090,
		0.693255, 0.133086, 0.708297,
		0.002978, -0.983322, 0.181847,
		41.385689, 41.330730, 19.730360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986607, 41.838886, 19.361053>,  <41.383606, 42.019058, 19.603067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986607, 41.838886, 19.361053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.798630, 41.486038, 19.373810>,  <41.685844, 41.274330, 19.381464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.798630, 41.486038, 19.373810>,  <41.986607, 41.838886, 19.361053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798630, 41.486038, 19.373810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500575, -0.296082, -0.813486,
		0.727037, -0.366324, 0.580709,
		-0.469938, -0.882123, 0.031890,
		41.657650, 41.221401, 19.383377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552750, 41.366524, 19.339880>,  <41.986607, 41.838886, 19.361053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552750, 41.366524, 19.339880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.223896, 41.181377, 19.207304>,  <42.026585, 41.070290, 19.127758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.223896, 41.181377, 19.207304>,  <42.552750, 41.366524, 19.339880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223896, 41.181377, 19.207304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440666, -0.148808, -0.885251,
		0.360430, -0.873850, 0.326308,
		-0.822134, -0.462864, -0.331441,
		41.977257, 41.042519, 19.107872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758354, 40.743511, 19.057749>,  <42.552750, 41.366524, 19.339880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758354, 40.743511, 19.057749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.397949, 40.797470, 18.892834>,  <42.181705, 40.829845, 18.793884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.397949, 40.797470, 18.892834>,  <42.758354, 40.743511, 19.057749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397949, 40.797470, 18.892834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357933, -0.305748, -0.882271,
		-0.245073, -0.942507, 0.227198,
		-0.901012, 0.134899, -0.412285,
		42.127647, 40.837940, 18.769148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543091, 40.066010, 18.707497>,  <42.758354, 40.743511, 19.057749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543091, 40.066010, 18.707497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.336685, 40.356247, 18.525396>,  <42.212841, 40.530388, 18.416136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.336685, 40.356247, 18.525396>,  <42.543091, 40.066010, 18.707497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336685, 40.356247, 18.525396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206572, -0.410376, -0.888211,
		-0.831301, -0.552367, 0.061872,
		-0.516010, 0.725590, -0.455250,
		42.181881, 40.573925, 18.388821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214024, 39.755627, 18.088541>,  <42.543091, 40.066010, 18.707497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214024, 39.755627, 18.088541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.198151, 40.142773, 17.989206>,  <42.188629, 40.375061, 17.929605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.198151, 40.142773, 17.989206>,  <42.214024, 39.755627, 18.088541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198151, 40.142773, 17.989206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115590, -0.242418, -0.963261,
		-0.992504, -0.066927, -0.102256,
		-0.039680, 0.967861, -0.248337,
		42.186245, 40.433132, 17.914705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877594, 39.744751, 17.415918>,  <42.214024, 39.755627, 18.088541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877594, 39.744751, 17.415918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.063740, 40.098080, 17.438452>,  <42.175426, 40.310078, 17.451971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.063740, 40.098080, 17.438452>,  <41.877594, 39.744751, 17.415918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063740, 40.098080, 17.438452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324407, -0.110999, -0.939382,
		-0.823527, 0.455429, -0.338212,
		0.465363, 0.883325, 0.056334,
		42.203350, 40.363079, 17.455353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660336, 40.071774, 16.787451>,  <41.877594, 39.744751, 17.415918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660336, 40.071774, 16.787451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.000065, 40.251572, 16.898155>,  <42.203903, 40.359451, 16.964579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.000065, 40.251572, 16.898155>,  <41.660336, 40.071774, 16.787451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000065, 40.251572, 16.898155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469918, -0.404996, -0.784318,
		-0.240462, 0.796197, -0.555201,
		0.849326, 0.449498, 0.276762,
		42.254864, 40.386421, 16.981184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902596, 40.380840, 16.174763>,  <41.660336, 40.071774, 16.787451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902596, 40.380840, 16.174763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.240067, 40.397995, 16.388815>,  <42.442551, 40.408287, 16.517246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.240067, 40.397995, 16.388815>,  <41.902596, 40.380840, 16.174763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240067, 40.397995, 16.388815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531633, -0.205334, -0.821708,
		0.074637, 0.977752, -0.196038,
		0.843680, 0.042890, 0.535131,
		42.493172, 40.410862, 16.549355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852825, 41.116661, 15.878453>,  <41.902596, 40.380840, 16.174763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852825, 41.116661, 15.878453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.555565, 41.284210, 15.669736>,  <41.377209, 41.384739, 15.544505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.555565, 41.284210, 15.669736>,  <41.852825, 41.116661, 15.878453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555565, 41.284210, 15.669736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553903, 0.052380, 0.830932,
		0.375389, 0.906532, 0.193090,
		-0.743152, 0.418875, -0.521794,
		41.332619, 41.409874, 15.513198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686836, 41.668739, 16.217113>,  <41.852825, 41.116661, 15.878453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686836, 41.668739, 16.217113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.370708, 41.638371, 15.973924>,  <41.181034, 41.620152, 15.828010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.370708, 41.638371, 15.973924>,  <41.686836, 41.668739, 16.217113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370708, 41.638371, 15.973924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604082, 0.262374, 0.752492,
		0.102389, 0.961975, -0.253220,
		-0.790317, -0.075919, -0.607976,
		41.133614, 41.615597, 15.791531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221233, 42.339844, 16.175043>,  <41.686836, 41.668739, 16.217113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221233, 42.339844, 16.175043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.006168, 42.013275, 16.090784>,  <40.877129, 41.817333, 16.040228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.006168, 42.013275, 16.090784>,  <41.221233, 42.339844, 16.175043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006168, 42.013275, 16.090784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759804, 0.360830, 0.540831,
		-0.365539, 0.450835, -0.814327,
		-0.537660, -0.816424, -0.210649,
		40.844872, 41.768349, 16.027590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601887, 42.549767, 15.913365>,  <41.221233, 42.339844, 16.175043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601887, 42.549767, 15.913365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.511349, 42.179493, 16.034611>,  <40.457024, 41.957329, 16.107357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.511349, 42.179493, 16.034611>,  <40.601887, 42.549767, 15.913365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511349, 42.179493, 16.034611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871496, 0.331448, 0.361437,
		-0.435042, -0.182351, -0.881752,
		-0.226347, -0.925684, 0.303112,
		40.443443, 41.901787, 16.125544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921349, 42.512829, 15.844604>,  <40.601887, 42.549767, 15.913365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921349, 42.512829, 15.844604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.010952, 42.216438, 16.097832>,  <40.064716, 42.038605, 16.249767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.010952, 42.216438, 16.097832>,  <39.921349, 42.512829, 15.844604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010952, 42.216438, 16.097832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886905, 0.114280, 0.447592,
		-0.404001, -0.661738, -0.631574,
		0.224012, -0.740975, 0.633068,
		40.078156, 41.994144, 16.287752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198280, 42.187061, 16.065300>,  <39.921349, 42.512829, 15.844604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198280, 42.187061, 16.065300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.453979, 42.014988, 16.320269>,  <39.607399, 41.911743, 16.473249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.453979, 42.014988, 16.320269>,  <39.198280, 42.187061, 16.065300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453979, 42.014988, 16.320269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656617, 0.126106, 0.743607,
		-0.400271, -0.893889, -0.201853,
		0.639248, -0.430185, 0.637420,
		39.645752, 41.885933, 16.511494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784466, 41.620052, 16.426792>,  <39.198280, 42.187061, 16.065300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784466, 41.620052, 16.426792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.087696, 41.725178, 16.665539>,  <39.269634, 41.788254, 16.808786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.087696, 41.725178, 16.665539>,  <38.784466, 41.620052, 16.426792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087696, 41.725178, 16.665539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604057, -0.062031, 0.794523,
		0.245837, -0.962850, 0.111731,
		0.758076, 0.262816, 0.596866,
		39.315121, 41.804024, 16.844599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605068, 41.313942, 17.080347>,  <38.784466, 41.620052, 16.426792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605068, 41.313942, 17.080347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.865322, 41.607723, 17.157551>,  <39.021473, 41.783993, 17.203873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.865322, 41.607723, 17.157551>,  <38.605068, 41.313942, 17.080347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865322, 41.607723, 17.157551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409418, 0.125204, 0.903715,
		0.639570, -0.667011, 0.382161,
		0.650636, 0.734452, 0.193010,
		39.060513, 41.828060, 17.215454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959103, 41.122814, 17.762388>,  <38.605068, 41.313942, 17.080347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959103, 41.122814, 17.762388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.984077, 41.512383, 17.675138>,  <38.999062, 41.746124, 17.622789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.984077, 41.512383, 17.675138>,  <38.959103, 41.122814, 17.762388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984077, 41.512383, 17.675138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419797, 0.223905, 0.879567,
		0.905468, 0.036650, 0.422829,
		0.062437, 0.973922, -0.218124,
		39.002808, 41.804558, 17.609701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380966, 41.531059, 18.279066>,  <38.959103, 41.122814, 17.762388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380966, 41.531059, 18.279066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.146229, 41.805641, 18.107302>,  <39.005386, 41.970390, 18.004242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.146229, 41.805641, 18.107302>,  <39.380966, 41.531059, 18.279066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146229, 41.805641, 18.107302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458989, 0.154871, 0.874839,
		0.667039, 0.710492, 0.224189,
		-0.586846, 0.686452, -0.429413,
		38.970177, 42.011578, 17.978477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336796, 41.989620, 18.814413>,  <39.380966, 41.531059, 18.279066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336796, 41.989620, 18.814413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.044777, 42.111874, 18.569912>,  <38.869568, 42.185226, 18.423212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.044777, 42.111874, 18.569912>,  <39.336796, 41.989620, 18.814413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044777, 42.111874, 18.569912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521630, 0.328648, 0.787332,
		0.441520, 0.893633, -0.080501,
		-0.730043, 0.305631, -0.611251,
		38.825764, 42.203564, 18.386538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186268, 42.592781, 19.092672>,  <39.336796, 41.989620, 18.814413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186268, 42.592781, 19.092672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.874763, 42.521362, 18.852123>,  <38.687859, 42.478512, 18.707794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.874763, 42.521362, 18.852123>,  <39.186268, 42.592781, 19.092672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874763, 42.521362, 18.852123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598510, 0.498647, 0.627007,
		0.187919, 0.848216, -0.495193,
		-0.778763, -0.178551, -0.601371,
		38.641136, 42.467796, 18.671713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862804, 43.256077, 18.935133>,  <39.186268, 42.592781, 19.092672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862804, 43.256077, 18.935133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.586208, 42.970684, 18.889912>,  <38.420250, 42.799450, 18.862778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.586208, 42.970684, 18.889912>,  <38.862804, 43.256077, 18.935133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586208, 42.970684, 18.889912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559280, 0.429714, 0.708909,
		-0.457212, 0.553435, -0.696180,
		-0.691493, -0.713481, -0.113055,
		38.378761, 42.756641, 18.855995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226410, 43.574554, 19.085146>,  <38.862804, 43.256077, 18.935133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226410, 43.574554, 19.085146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.150005, 43.184021, 19.125713>,  <38.104164, 42.949699, 19.150055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.150005, 43.184021, 19.125713>,  <38.226410, 43.574554, 19.085146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150005, 43.184021, 19.125713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522640, 0.188615, 0.831428,
		-0.830881, 0.105802, -0.546298,
		-0.191007, -0.976335, 0.101421,
		38.092705, 42.891121, 19.156139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.272945, 41.551178, 13.001370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.442776, 41.282074, 13.243736>,  <37.544674, 41.120613, 13.389156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.442776, 41.282074, 13.243736>,  <37.272945, 41.551178, 13.001370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442776, 41.282074, 13.243736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752797, -0.109503, -0.649081,
		0.503023, 0.731716, 0.459957,
		0.424576, -0.672757, 0.605916,
		37.570148, 41.080246, 13.425511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022820, 41.728184, 13.163089>,  <37.272945, 41.551178, 13.001370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022820, 41.728184, 13.163089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.037785, 41.335255, 13.236452>,  <38.046764, 41.099495, 13.280470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.037785, 41.335255, 13.236452>,  <38.022820, 41.728184, 13.163089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037785, 41.335255, 13.236452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852326, -0.064448, -0.519025,
		0.521671, 0.175740, 0.834850,
		0.037409, -0.982325, 0.183408,
		38.049007, 41.040558, 13.291474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716942, 41.648678, 13.157309>,  <38.022820, 41.728184, 13.163089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716942, 41.648678, 13.157309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.590832, 41.271610, 13.113513>,  <38.515167, 41.045372, 13.087235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.590832, 41.271610, 13.113513>,  <38.716942, 41.648678, 13.157309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590832, 41.271610, 13.113513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788525, -0.196014, -0.582930,
		0.528046, -0.270116, 0.805112,
		-0.315271, -0.942664, -0.109489,
		38.496250, 40.988811, 13.080667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325821, 41.230881, 13.209592>,  <38.716942, 41.648678, 13.157309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325821, 41.230881, 13.209592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.053516, 40.991615, 13.040468>,  <38.890133, 40.848057, 12.938994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.053516, 40.991615, 13.040468>,  <39.325821, 41.230881, 13.209592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053516, 40.991615, 13.040468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704779, -0.377570, -0.600606,
		0.199618, -0.706857, 0.678606,
		-0.680764, -0.598159, -0.422808,
		38.849289, 40.812168, 12.913626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815704, 40.788849, 13.005365>,  <39.325821, 41.230881, 13.209592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815704, 40.788849, 13.005365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.483315, 40.674461, 12.814488>,  <39.283882, 40.605831, 12.699963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.483315, 40.674461, 12.814488>,  <39.815704, 40.788849, 13.005365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483315, 40.674461, 12.814488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556313, -0.430339, -0.710862,
		-0.002072, -0.856173, 0.516685,
		-0.830970, -0.285965, -0.477192,
		39.234024, 40.588673, 12.671330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813293, 40.026222, 12.916889>,  <39.815704, 40.788849, 13.005365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813293, 40.026222, 12.916889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.590523, 40.179371, 12.622067>,  <39.456860, 40.271259, 12.445174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.590523, 40.179371, 12.622067>,  <39.813293, 40.026222, 12.916889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590523, 40.179371, 12.622067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581616, -0.453731, -0.675167,
		-0.592926, -0.804698, 0.030009,
		-0.556922, 0.382870, -0.737055,
		39.423447, 40.294231, 12.400951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894775, 39.497952, 12.267684>,  <39.813293, 40.026222, 12.916889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894775, 39.497952, 12.267684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.761139, 39.854958, 12.146488>,  <39.680958, 40.069160, 12.073771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.761139, 39.854958, 12.146488>,  <39.894775, 39.497952, 12.267684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761139, 39.854958, 12.146488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608445, -0.041289, -0.792522,
		-0.719848, -0.449123, -0.529252,
		-0.334088, 0.892515, -0.302988,
		39.660912, 40.122711, 12.055592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777977, 39.387505, 11.577306>,  <39.894775, 39.497952, 12.267684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777977, 39.387505, 11.577306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.820580, 39.783745, 11.611625>,  <39.846142, 40.021488, 11.632215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.820580, 39.783745, 11.611625>,  <39.777977, 39.387505, 11.577306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820580, 39.783745, 11.611625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576173, 0.008834, -0.817280,
		-0.810358, 0.136482, -0.569818,
		0.106510, 0.990603, 0.085796,
		39.852531, 40.080925, 11.637363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735275, 39.724697, 10.848725>,  <39.777977, 39.387505, 11.577306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735275, 39.724697, 10.848725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.927258, 39.987511, 11.081260>,  <40.042446, 40.145199, 11.220780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.927258, 39.987511, 11.081260>,  <39.735275, 39.724697, 10.848725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927258, 39.987511, 11.081260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582084, 0.257278, -0.771353,
		-0.656368, 0.708603, -0.258965,
		0.479957, 0.657032, 0.581335,
		40.071243, 40.184620, 11.255660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667500, 40.378735, 10.448568>,  <39.735275, 39.724697, 10.848725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667500, 40.378735, 10.448568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.970901, 40.435688, 10.702939>,  <40.152943, 40.469860, 10.855561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.970901, 40.435688, 10.702939>,  <39.667500, 40.378735, 10.448568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970901, 40.435688, 10.702939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628125, 0.100212, -0.771632,
		-0.173595, 0.984726, -0.013424,
		0.758501, 0.142383, 0.635927,
		40.198452, 40.478401, 10.893717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083527, 41.043777, 10.265657>,  <39.667500, 40.378735, 10.448568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083527, 41.043777, 10.265657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.341484, 40.819294, 10.473180>,  <40.496258, 40.684605, 10.597693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.341484, 40.819294, 10.473180>,  <40.083527, 41.043777, 10.265657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341484, 40.819294, 10.473180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676953, 0.104350, -0.728592,
		0.354758, 0.821067, 0.447209,
		0.644889, -0.561213, 0.518805,
		40.534950, 40.650928, 10.628821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717686, 41.334023, 10.175575>,  <40.083527, 41.043777, 10.265657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717686, 41.334023, 10.175575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.816578, 40.970509, 10.310031>,  <40.875912, 40.752399, 10.390704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.816578, 40.970509, 10.310031>,  <40.717686, 41.334023, 10.175575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816578, 40.970509, 10.310031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690266, -0.078275, -0.719310,
		0.680009, 0.409858, 0.607951,
		0.247228, -0.908784, 0.336139,
		40.890747, 40.697872, 10.410872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495010, 41.239887, 10.353374>,  <40.717686, 41.334023, 10.175575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495010, 41.239887, 10.353374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.287525, 40.920162, 10.232031>,  <41.163033, 40.728325, 10.159225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.287525, 40.920162, 10.232031>,  <41.495010, 41.239887, 10.353374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287525, 40.920162, 10.232031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557939, -0.047638, -0.828513,
		0.647793, -0.599018, 0.470681,
		-0.518717, -0.799317, -0.303356,
		41.131908, 40.680367, 10.141025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939827, 40.771580, 10.046304>,  <41.495010, 41.239887, 10.353374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939827, 40.771580, 10.046304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.568874, 40.710777, 9.909564>,  <41.346302, 40.674294, 9.827520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.568874, 40.710777, 9.909564>,  <41.939827, 40.771580, 10.046304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568874, 40.710777, 9.909564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341353, 0.030168, -0.939451,
		0.153118, -0.987919, 0.023912,
		-0.927380, -0.152009, -0.341848,
		41.290661, 40.665176, 9.807010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668598, 40.655548, 9.869731>,  <41.939827, 40.771580, 10.046304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668598, 40.655548, 9.869731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.966488, 40.839272, 10.063398>,  <43.145222, 40.949505, 10.179599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.966488, 40.839272, 10.063398>,  <42.668598, 40.655548, 9.869731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966488, 40.839272, 10.063398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528499, -0.037118, 0.848122,
		0.407524, -0.887499, 0.215104,
		0.744723, 0.459312, 0.484169,
		43.189903, 40.977066, 10.208649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793018, 40.231178, 10.456026>,  <42.668598, 40.655548, 9.869731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793018, 40.231178, 10.456026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.963627, 40.585781, 10.527786>,  <43.065994, 40.798542, 10.570843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.963627, 40.585781, 10.527786>,  <42.793018, 40.231178, 10.456026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.963627, 40.585781, 10.527786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388970, 0.000713, 0.921250,
		0.816566, -0.462716, 0.345129,
		0.426523, 0.886506, 0.179400,
		43.091583, 40.851734, 10.581606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107552, 40.175682, 11.099530>,  <42.793018, 40.231178, 10.456026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107552, 40.175682, 11.099530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.100151, 40.575394, 11.086248>,  <43.095711, 40.815220, 11.078279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.100151, 40.575394, 11.086248>,  <43.107552, 40.175682, 11.099530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100151, 40.575394, 11.086248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191286, 0.029059, 0.981104,
		0.981360, 0.024507, 0.190610,
		-0.018505, 0.999278, -0.033205,
		43.094601, 40.875175, 11.076286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449791, 40.411591, 11.597762>,  <43.107552, 40.175682, 11.099530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.449791, 40.411591, 11.597762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.222836, 40.732517, 11.523616>,  <43.086662, 40.925072, 11.479128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.222836, 40.732517, 11.523616>,  <43.449791, 40.411591, 11.597762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222836, 40.732517, 11.523616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101710, 0.155102, 0.982648,
		0.817145, 0.576397, -0.006400,
		-0.567388, 0.802315, -0.185366,
		43.052620, 40.973213, 11.468006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683247, 41.028725, 12.030965>,  <43.449791, 40.411591, 11.597762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683247, 41.028725, 12.030965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.304253, 41.128418, 11.950807>,  <43.076859, 41.188232, 11.902712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.304253, 41.128418, 11.950807>,  <43.683247, 41.028725, 12.030965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304253, 41.128418, 11.950807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150310, 0.206041, 0.966930,
		0.282281, 0.946271, -0.157758,
		-0.947483, 0.249234, -0.200396,
		43.020008, 41.203190, 11.890688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.562565, 41.574696, 12.481627>,  <43.683247, 41.028725, 12.030965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.562565, 41.574696, 12.481627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.195023, 41.459602, 12.373615>,  <42.974499, 41.390545, 12.308808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.195023, 41.459602, 12.373615>,  <43.562565, 41.574696, 12.481627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195023, 41.459602, 12.373615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369758, 0.388881, 0.843831,
		-0.137791, 0.875203, -0.463717,
		-0.918854, -0.287735, -0.270029,
		42.919365, 41.373283, 12.292606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.139565, 42.169987, 12.577354>,  <43.562565, 41.574696, 12.481627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.139565, 42.169987, 12.577354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.871834, 41.873878, 12.552051>,  <42.711197, 41.696213, 12.536868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.871834, 41.873878, 12.552051>,  <43.139565, 42.169987, 12.577354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.871834, 41.873878, 12.552051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339540, 0.229039, 0.912280,
		-0.660849, 0.632088, -0.404653,
		-0.669322, -0.740274, -0.063259,
		42.671036, 41.651794, 12.533072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404675, 42.406696, 12.820873>,  <43.139565, 42.169987, 12.577354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404675, 42.406696, 12.820873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.436428, 42.012131, 12.878407>,  <42.455482, 41.775391, 12.912928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.436428, 42.012131, 12.878407>,  <42.404675, 42.406696, 12.820873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436428, 42.012131, 12.878407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341632, 0.108630, 0.933535,
		-0.936475, -0.123249, -0.328366,
		0.079387, -0.986412, 0.143835,
		42.460243, 41.716206, 12.921558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696682, 42.309277, 13.062747>,  <42.404675, 42.406696, 12.820873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696682, 42.309277, 13.062747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.866859, 41.964142, 13.171938>,  <41.968967, 41.757061, 13.237453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.866859, 41.964142, 13.171938>,  <41.696682, 42.309277, 13.062747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.866859, 41.964142, 13.171938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357255, 0.117013, 0.926648,
		-0.831484, -0.491760, -0.258468,
		0.425445, -0.862833, 0.272978,
		41.994492, 41.705292, 13.253831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194489, 41.923443, 13.397762>,  <41.696682, 42.309277, 13.062747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194489, 41.923443, 13.397762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.534050, 41.735229, 13.494066>,  <41.737785, 41.622303, 13.551848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.534050, 41.735229, 13.494066>,  <41.194489, 41.923443, 13.397762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534050, 41.735229, 13.494066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318896, -0.092698, 0.943246,
		-0.421507, -0.877502, -0.228742,
		0.848904, -0.470529, 0.240759,
		41.788719, 41.594070, 13.566294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038082, 41.285381, 13.597704>,  <41.194489, 41.923443, 13.397762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038082, 41.285381, 13.597704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.371811, 41.401299, 13.785292>,  <41.572048, 41.470848, 13.897844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.371811, 41.401299, 13.785292>,  <41.038082, 41.285381, 13.597704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371811, 41.401299, 13.785292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486713, -0.012285, 0.873476,
		0.258894, -0.957008, 0.130800,
		0.834317, 0.289800, 0.468969,
		41.622105, 41.488239, 13.925982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164730, 40.818241, 14.152020>,  <41.038082, 41.285381, 13.597704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164730, 40.818241, 14.152020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.397728, 41.128033, 14.250726>,  <41.537525, 41.313908, 14.309950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.397728, 41.128033, 14.250726>,  <41.164730, 40.818241, 14.152020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397728, 41.128033, 14.250726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234383, -0.130655, 0.963324,
		0.778311, -0.618965, 0.105419,
		0.582491, 0.774475, 0.246766,
		41.572475, 41.360374, 14.324756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559395, 40.606670, 14.672480>,  <41.164730, 40.818241, 14.152020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559395, 40.606670, 14.672480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.542866, 41.006008, 14.688462>,  <41.532948, 41.245613, 14.698051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.542866, 41.006008, 14.688462>,  <41.559395, 40.606670, 14.672480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542866, 41.006008, 14.688462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366892, -0.052358, 0.928789,
		0.929345, 0.023719, 0.368449,
		-0.041322, 0.998347, 0.039956,
		41.530468, 41.305511, 14.700449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755451, 40.695900, 15.309088>,  <41.559395, 40.606670, 14.672480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755451, 40.695900, 15.309088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.608482, 41.052788, 15.204056>,  <41.520302, 41.266922, 15.141037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.608482, 41.052788, 15.204056>,  <41.755451, 40.695900, 15.309088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608482, 41.052788, 15.204056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455539, 0.073504, 0.887176,
		0.810857, 0.445579, 0.379434,
		-0.367417, 0.892220, -0.262580,
		41.498257, 41.320454, 15.125281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379025, 40.625126, 15.706754>,  <41.755451, 40.695900, 15.309088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379025, 40.625126, 15.706754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.601673, 40.458431, 15.994226>,  <42.735264, 40.358414, 16.166710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.601673, 40.458431, 15.994226>,  <42.379025, 40.625126, 15.706754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.601673, 40.458431, 15.994226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603318, -0.391939, -0.694544,
		0.571119, 0.820193, 0.033261,
		0.556624, -0.416734, 0.718681,
		42.768661, 40.333412, 16.209831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145844, 40.768303, 15.457720>,  <42.379025, 40.625126, 15.706754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145844, 40.768303, 15.457720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.138050, 40.460117, 15.712596>,  <43.133373, 40.275208, 15.865521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.138050, 40.460117, 15.712596>,  <43.145844, 40.768303, 15.457720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138050, 40.460117, 15.712596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712557, -0.457762, -0.531712,
		0.701344, 0.443674, 0.557916,
		-0.019486, -0.770460, 0.637191,
		43.132206, 40.228981, 15.903753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846691, 40.614529, 15.584461>,  <43.145844, 40.768303, 15.457720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846691, 40.614529, 15.584461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.630623, 40.285065, 15.653508>,  <43.500984, 40.087387, 15.694937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.630623, 40.285065, 15.653508>,  <43.846691, 40.614529, 15.584461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.630623, 40.285065, 15.653508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560809, -0.505246, -0.655911,
		0.627464, -0.257497, 0.734836,
		-0.540168, -0.823663, 0.172617,
		43.468571, 40.037964, 15.705294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.335735, 40.015980, 15.728726>,  <43.846691, 40.614529, 15.584461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.335735, 40.015980, 15.728726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.981983, 39.861805, 15.623414>,  <43.769733, 39.769302, 15.560226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.981983, 39.861805, 15.623414>,  <44.335735, 40.015980, 15.728726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981983, 39.861805, 15.623414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458686, -0.613090, -0.643217,
		0.086501, -0.689610, 0.718996,
		-0.884378, -0.385432, -0.263281,
		43.716671, 39.746174, 15.544430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500618, 39.381046, 15.579264>,  <44.335735, 40.015980, 15.728726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500618, 39.381046, 15.579264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.148899, 39.432892, 15.395947>,  <43.937866, 39.464001, 15.285956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.148899, 39.432892, 15.395947>,  <44.500618, 39.381046, 15.579264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.148899, 39.432892, 15.395947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370819, -0.417528, -0.829556,
		-0.298871, -0.899373, 0.319069,
		-0.879300, 0.129614, -0.458292,
		43.885109, 39.471775, 15.258459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.412018, 38.791870, 15.166361>,  <44.500618, 39.381046, 15.579264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.412018, 38.791870, 15.166361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.126953, 39.028488, 15.015531>,  <43.955914, 39.170460, 14.925033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.126953, 39.028488, 15.015531>,  <44.412018, 38.791870, 15.166361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126953, 39.028488, 15.015531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168336, -0.377613, -0.910534,
		-0.681007, -0.712382, 0.169534,
		-0.712666, 0.591541, -0.377077,
		43.913155, 39.205952, 14.902408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150982, 38.372753, 14.686507>,  <44.412018, 38.791870, 15.166361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150982, 38.372753, 14.686507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.041954, 38.746471, 14.594588>,  <43.976540, 38.970703, 14.539436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.041954, 38.746471, 14.594588>,  <44.150982, 38.372753, 14.686507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.041954, 38.746471, 14.594588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280575, -0.151276, -0.947836,
		-0.920318, -0.322823, -0.220906,
		-0.272566, 0.934292, -0.229798,
		43.960186, 39.026760, 14.525649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505989, 37.839806, 14.539292>,  <44.150982, 38.372753, 14.686507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505989, 37.839806, 14.539292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.539055, 37.445816, 14.599953>,  <43.558895, 37.209423, 14.636349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.539055, 37.445816, 14.599953>,  <43.505989, 37.839806, 14.539292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539055, 37.445816, 14.599953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623135, 0.067667, 0.779182,
		-0.777733, -0.158912, -0.608176,
		0.082668, -0.984971, 0.151650,
		43.563854, 37.150326, 14.645448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826298, 37.580910, 14.563952>,  <43.505989, 37.839806, 14.539292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826298, 37.580910, 14.563952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.050308, 37.287731, 14.718442>,  <43.184715, 37.111824, 14.811136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.050308, 37.287731, 14.718442>,  <42.826298, 37.580910, 14.563952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050308, 37.287731, 14.718442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505428, 0.067126, 0.860254,
		-0.656442, -0.676970, -0.332858,
		0.560023, -0.732943, 0.386224,
		43.218315, 37.067848, 14.834310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436825, 37.121445, 14.911366>,  <42.826298, 37.580910, 14.563952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436825, 37.121445, 14.911366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.772659, 37.021832, 15.104474>,  <42.974159, 36.962063, 15.220340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.772659, 37.021832, 15.104474>,  <42.436825, 37.121445, 14.911366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772659, 37.021832, 15.104474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502884, -0.020261, 0.864116,
		-0.205416, -0.968282, -0.142248,
		0.839590, -0.249038, 0.482772,
		43.024536, 36.947121, 15.249306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276379, 36.601852, 15.452801>,  <42.436825, 37.121445, 14.911366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276379, 36.601852, 15.452801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.638279, 36.740147, 15.552319>,  <42.855419, 36.823124, 15.612029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.638279, 36.740147, 15.552319>,  <42.276379, 36.601852, 15.452801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.638279, 36.740147, 15.552319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307163, 0.124910, 0.943424,
		0.295097, -0.929982, 0.219209,
		0.904748, 0.345734, 0.248795,
		42.909702, 36.843864, 15.626957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453674, 36.196323, 16.074167>,  <42.276379, 36.601852, 15.452801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453674, 36.196323, 16.074167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.678059, 36.527153, 16.088390>,  <42.812691, 36.725651, 16.096924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.678059, 36.527153, 16.088390>,  <42.453674, 36.196323, 16.074167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678059, 36.527153, 16.088390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279540, 0.148818, 0.948531,
		0.779218, -0.542027, 0.314683,
		0.560960, 0.827079, 0.035557,
		42.846348, 36.775276, 16.099058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822975, 36.170139, 16.671911>,  <42.453674, 36.196323, 16.074167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822975, 36.170139, 16.671911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.834270, 36.562572, 16.595312>,  <42.841049, 36.798035, 16.549353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.834270, 36.562572, 16.595312>,  <42.822975, 36.170139, 16.671911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834270, 36.562572, 16.595312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193507, 0.193314, 0.961866,
		0.980693, 0.009892, 0.195306,
		0.028241, 0.981087, -0.191496,
		42.842743, 36.856899, 16.537863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289192, 36.443222, 17.141590>,  <42.822975, 36.170139, 16.671911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289192, 36.443222, 17.141590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.069118, 36.747459, 17.003729>,  <42.937073, 36.930004, 16.921011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.069118, 36.747459, 17.003729>,  <43.289192, 36.443222, 17.141590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069118, 36.747459, 17.003729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319310, 0.189742, 0.928460,
		0.771580, 0.620878, 0.138473,
		-0.550187, 0.760597, -0.344654,
		42.904064, 36.975639, 16.900333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.071285, 37.461010, 9.977313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.312538, 37.714657, 10.170858>,  <40.457291, 37.866844, 10.286985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.312538, 37.714657, 10.170858>,  <40.071285, 37.461010, 9.977313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312538, 37.714657, 10.170858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537519, -0.125072, 0.833925,
		0.589326, -0.763053, 0.265416,
		0.603133, 0.634119, 0.483863,
		40.493477, 37.904892, 10.316017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343315, 37.137550, 10.568836>,  <40.071285, 37.461010, 9.977313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343315, 37.137550, 10.568836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.364727, 37.528423, 10.651052>,  <40.377575, 37.762947, 10.700382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.364727, 37.528423, 10.651052>,  <40.343315, 37.137550, 10.568836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364727, 37.528423, 10.651052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571822, -0.138750, 0.808559,
		0.818630, -0.160811, 0.551349,
		0.053525, 0.977184, 0.205540,
		40.380783, 37.821579, 10.712714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511856, 37.195091, 11.244146>,  <40.343315, 37.137550, 10.568836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511856, 37.195091, 11.244146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.337582, 37.542671, 11.150240>,  <40.233017, 37.751217, 11.093896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.337582, 37.542671, 11.150240>,  <40.511856, 37.195091, 11.244146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337582, 37.542671, 11.150240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609852, -0.093143, 0.787023,
		0.662013, 0.486064, 0.570509,
		-0.435683, 0.868945, -0.234765,
		40.206879, 37.803356, 11.079810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493011, 37.574131, 11.823059>,  <40.511856, 37.195091, 11.244146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493011, 37.574131, 11.823059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.201706, 37.743717, 11.607697>,  <40.026924, 37.845470, 11.478480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.201706, 37.743717, 11.607697>,  <40.493011, 37.574131, 11.823059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201706, 37.743717, 11.607697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587941, 0.017087, 0.808724,
		0.352074, 0.905515, 0.236825,
		-0.728265, 0.423969, -0.538405,
		39.983227, 37.870907, 11.446176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227695, 38.193398, 12.220682>,  <40.493011, 37.574131, 11.823059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227695, 38.193398, 12.220682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.939747, 38.085758, 11.964753>,  <39.766979, 38.021175, 11.811195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.939747, 38.085758, 11.964753>,  <40.227695, 38.193398, 12.220682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939747, 38.085758, 11.964753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671009, 0.033964, 0.740671,
		-0.177584, 0.962513, -0.205019,
		-0.719868, -0.269101, -0.639824,
		39.723785, 38.005028, 11.772806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654346, 38.642845, 12.419775>,  <40.227695, 38.193398, 12.220682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654346, 38.642845, 12.419775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.512012, 38.336796, 12.205124>,  <39.426613, 38.153168, 12.076333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.512012, 38.336796, 12.205124>,  <39.654346, 38.642845, 12.419775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512012, 38.336796, 12.205124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831256, -0.003285, 0.555879,
		-0.427080, 0.643874, -0.634846,
		-0.355831, -0.765124, -0.536627,
		39.405262, 38.107258, 12.044136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945858, 38.832157, 12.420016>,  <39.654346, 38.642845, 12.419775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945858, 38.832157, 12.420016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.974312, 38.439533, 12.349046>,  <38.991383, 38.203960, 12.306463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.974312, 38.439533, 12.349046>,  <38.945858, 38.832157, 12.420016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974312, 38.439533, 12.349046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898643, -0.140257, 0.415654,
		-0.432874, 0.129876, -0.892049,
		0.071133, -0.981560, -0.177426,
		38.995651, 38.145065, 12.295818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323555, 38.665970, 12.269712>,  <38.945858, 38.832157, 12.420016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323555, 38.665970, 12.269712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.493908, 38.326447, 12.395027>,  <38.596119, 38.122734, 12.470216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.493908, 38.326447, 12.395027>,  <38.323555, 38.665970, 12.269712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493908, 38.326447, 12.395027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820548, -0.216456, 0.529006,
		-0.381212, -0.482361, -0.788673,
		0.425885, -0.848808, 0.313285,
		38.621674, 38.071804, 12.489013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840595, 38.208950, 12.316709>,  <38.323555, 38.665970, 12.269712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840595, 38.208950, 12.316709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.121365, 38.006657, 12.517323>,  <38.289825, 37.885281, 12.637691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.121365, 38.006657, 12.517323>,  <37.840595, 38.208950, 12.316709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121365, 38.006657, 12.517323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711014, -0.456071, 0.535218,
		-0.041938, -0.732283, -0.679708,
		0.701926, -0.505728, 0.501537,
		38.331944, 37.854939, 12.667784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605442, 37.496387, 12.370138>,  <37.840595, 38.208950, 12.316709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605442, 37.496387, 12.370138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.872322, 37.538605, 12.665084>,  <38.032452, 37.563934, 12.842052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.872322, 37.538605, 12.665084>,  <37.605442, 37.496387, 12.370138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872322, 37.538605, 12.665084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703954, -0.234261, 0.670501,
		0.243504, -0.966427, -0.082000,
		0.667199, 0.105545, 0.737363,
		38.072483, 37.570267, 12.886293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543613, 36.952480, 12.786171>,  <37.605442, 37.496387, 12.370138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543613, 36.952480, 12.786171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.719994, 37.218811, 13.026917>,  <37.825821, 37.378609, 13.171364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.719994, 37.218811, 13.026917>,  <37.543613, 36.952480, 12.786171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719994, 37.218811, 13.026917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701852, -0.162176, 0.693615,
		0.559436, -0.728267, 0.395801,
		0.440948, 0.665827, 0.601863,
		37.852280, 37.418560, 13.207476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588646, 36.589306, 13.365160>,  <37.543613, 36.952480, 12.786171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588646, 36.589306, 13.365160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.638428, 36.965397, 13.491959>,  <37.668297, 37.191051, 13.568038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.638428, 36.965397, 13.491959>,  <37.588646, 36.589306, 13.365160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638428, 36.965397, 13.491959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635768, -0.169716, 0.752991,
		0.761781, -0.295248, 0.576644,
		0.124453, 0.940226, 0.316996,
		37.675762, 37.247463, 13.587057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328690, 36.311363, 13.560036>,  <37.588646, 36.589306, 13.365160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328690, 36.311363, 13.560036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.498104, 36.064892, 13.825648>,  <38.599751, 35.917007, 13.985016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.498104, 36.064892, 13.825648>,  <38.328690, 36.311363, 13.560036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498104, 36.064892, 13.825648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586033, -0.372600, -0.719537,
		0.690785, 0.693893, 0.203295,
		0.423534, -0.616183, 0.664031,
		38.625164, 35.880035, 14.024858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117130, 36.425804, 13.517888>,  <38.328690, 36.311363, 13.560036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117130, 36.425804, 13.517888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.023170, 36.064381, 13.661219>,  <38.966793, 35.847527, 13.747217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.023170, 36.064381, 13.661219>,  <39.117130, 36.425804, 13.517888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023170, 36.064381, 13.661219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668636, -0.417773, -0.615135,
		0.705511, 0.095094, 0.702290,
		-0.234902, -0.903561, 0.358327,
		38.952702, 35.793312, 13.768717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832203, 36.142342, 13.645508>,  <39.117130, 36.425804, 13.517888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832203, 36.142342, 13.645508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.559040, 35.854198, 13.596978>,  <39.395142, 35.681313, 13.567861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.559040, 35.854198, 13.596978>,  <39.832203, 36.142342, 13.645508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559040, 35.854198, 13.596978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683830, -0.571988, -0.452996,
		0.256922, -0.392322, 0.883218,
		-0.682911, -0.720356, -0.121325,
		39.354168, 35.638092, 13.560580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228474, 35.614834, 13.863348>,  <39.832203, 36.142342, 13.645508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228474, 35.614834, 13.863348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.941452, 35.457085, 13.633711>,  <39.769238, 35.362434, 13.495929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.941452, 35.457085, 13.633711>,  <40.228474, 35.614834, 13.863348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941452, 35.457085, 13.633711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692005, -0.497157, -0.523416,
		-0.078993, -0.772856, 0.629646,
		-0.717558, -0.394372, -0.574092,
		39.726185, 35.338772, 13.461483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395435, 34.908897, 13.768381>,  <40.228474, 35.614834, 13.863348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395435, 34.908897, 13.768381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.158775, 35.005951, 13.460855>,  <40.016777, 35.064182, 13.276340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.158775, 35.005951, 13.460855>,  <40.395435, 34.908897, 13.768381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158775, 35.005951, 13.460855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621992, -0.469328, -0.626783,
		-0.512904, -0.849035, 0.126764,
		-0.591654, 0.242634, -0.768813,
		39.981281, 35.078743, 13.230211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453823, 34.386124, 13.383600>,  <40.395435, 34.908897, 13.768381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453823, 34.386124, 13.383600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.306480, 34.666862, 13.139722>,  <40.218075, 34.835304, 12.993395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.306480, 34.666862, 13.139722>,  <40.453823, 34.386124, 13.383600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306480, 34.666862, 13.139722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489237, -0.411323, -0.769065,
		-0.790547, -0.581573, -0.191857,
		-0.368352, 0.701845, -0.609697,
		40.195976, 34.877415, 12.956813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170689, 34.009277, 12.764760>,  <40.453823, 34.386124, 13.383600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170689, 34.009277, 12.764760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.267429, 34.391594, 12.697858>,  <40.325474, 34.620983, 12.657717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.267429, 34.391594, 12.697858>,  <40.170689, 34.009277, 12.764760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267429, 34.391594, 12.697858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661374, -0.288510, -0.692348,
		-0.709994, 0.056829, -0.701911,
		0.241854, 0.955789, -0.167255,
		40.339985, 34.678329, 12.647681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292736, 34.006836, 12.118293>,  <40.170689, 34.009277, 12.764760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292736, 34.006836, 12.118293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.491581, 34.330116, 12.244586>,  <40.610889, 34.524086, 12.320362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.491581, 34.330116, 12.244586>,  <40.292736, 34.006836, 12.118293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491581, 34.330116, 12.244586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687503, -0.144885, -0.711581,
		-0.529357, 0.570803, -0.627666,
		0.497112, 0.808203, 0.315733,
		40.640713, 34.572578, 12.339306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521767, 34.211071, 11.552174>,  <40.292736, 34.006836, 12.118293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521767, 34.211071, 11.552174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.746223, 34.406036, 11.819770>,  <40.880898, 34.523014, 11.980328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.746223, 34.406036, 11.819770>,  <40.521767, 34.211071, 11.552174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746223, 34.406036, 11.819770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805227, -0.134315, -0.577554,
		-0.191651, 0.862779, -0.467848,
		0.561141, 0.487413, 0.668992,
		40.914566, 34.552261, 12.020468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966400, 34.645947, 11.052601>,  <40.521767, 34.211071, 11.552174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966400, 34.645947, 11.052601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.123730, 34.644211, 11.420356>,  <41.218128, 34.643169, 11.641009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.123730, 34.644211, 11.420356>,  <40.966400, 34.645947, 11.052601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123730, 34.644211, 11.420356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916623, -0.075796, -0.392502,
		0.071388, 0.997114, -0.025839,
		0.393328, -0.004335, 0.919388,
		41.241730, 34.642910, 11.696173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542408, 35.095596, 10.930399>,  <40.966400, 34.645947, 11.052601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542408, 35.095596, 10.930399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.599667, 34.885223, 11.265756>,  <41.634022, 34.758999, 11.466970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.599667, 34.885223, 11.265756>,  <41.542408, 35.095596, 10.930399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599667, 34.885223, 11.265756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955301, -0.147977, -0.255934,
		0.258667, 0.837554, 0.481243,
		0.143146, -0.525934, 0.838393,
		41.642609, 34.727444, 11.517274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128223, 35.415707, 11.195305>,  <41.542408, 35.095596, 10.930399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128223, 35.415707, 11.195305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.100098, 35.061008, 11.378057>,  <42.083221, 34.848190, 11.487709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.100098, 35.061008, 11.378057>,  <42.128223, 35.415707, 11.195305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100098, 35.061008, 11.378057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961275, -0.182587, -0.206428,
		0.266469, 0.424674, 0.865243,
		-0.070318, -0.886743, 0.456882,
		42.079002, 34.794987, 11.515122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659477, 35.339863, 11.744596>,  <42.128223, 35.415707, 11.195305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659477, 35.339863, 11.744596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.575787, 34.957172, 11.663705>,  <42.525574, 34.727558, 11.615170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.575787, 34.957172, 11.663705>,  <42.659477, 35.339863, 11.744596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575787, 34.957172, 11.663705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977212, -0.196986, -0.079081,
		0.035823, -0.214166, 0.976140,
		-0.209222, -0.956729, -0.202228,
		42.513020, 34.670155, 11.603036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137894, 34.931770, 12.169746>,  <42.659477, 35.339863, 11.744596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137894, 34.931770, 12.169746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.041534, 34.693222, 11.863463>,  <42.983719, 34.550091, 11.679693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.041534, 34.693222, 11.863463>,  <43.137894, 34.931770, 12.169746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041534, 34.693222, 11.863463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931147, -0.364533, -0.009025,
		-0.273743, -0.715161, 0.643125,
		-0.240894, -0.596374, -0.765708,
		42.969265, 34.514309, 11.633751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592628, 35.418468, 11.938051>,  <43.137894, 34.931770, 12.169746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592628, 35.418468, 11.938051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.943130, 35.585335, 12.034507>,  <44.153431, 35.685455, 12.092381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.943130, 35.585335, 12.034507>,  <43.592628, 35.418468, 11.938051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943130, 35.585335, 12.034507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300637, 0.082239, 0.950186,
		0.376555, -0.905101, 0.197478,
		0.876256, 0.417167, 0.241140,
		44.206009, 35.710484, 12.106849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686222, 35.222664, 12.614850>,  <43.592628, 35.418468, 11.938051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686222, 35.222664, 12.614850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.907021, 35.544266, 12.526421>,  <44.039501, 35.737228, 12.473363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.907021, 35.544266, 12.526421>,  <43.686222, 35.222664, 12.614850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907021, 35.544266, 12.526421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024683, 0.249254, 0.968124,
		0.833478, -0.539861, 0.117743,
		0.552000, 0.804004, -0.221073,
		44.072620, 35.785465, 12.460098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.212437, 35.327061, 13.134267>,  <43.686222, 35.222664, 12.614850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.212437, 35.327061, 13.134267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.184517, 35.686939, 12.961909>,  <44.167767, 35.902866, 12.858495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.184517, 35.686939, 12.961909>,  <44.212437, 35.327061, 13.134267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.184517, 35.686939, 12.961909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059796, 0.434944, 0.898470,
		0.995767, 0.036943, -0.084155,
		-0.069796, 0.899699, -0.430894,
		44.163578, 35.956848, 12.832641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.634945, 35.732372, 13.549211>,  <44.212437, 35.327061, 13.134267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.634945, 35.732372, 13.549211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.429897, 35.987194, 13.318947>,  <44.306870, 36.140087, 13.180789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.429897, 35.987194, 13.318947>,  <44.634945, 35.732372, 13.549211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429897, 35.987194, 13.318947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018740, 0.678592, 0.734276,
		0.858409, 0.365619, -0.359800,
		-0.512623, 0.637052, -0.575658,
		44.276112, 36.178310, 13.146249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.770157, 36.359520, 13.773534>,  <44.634945, 35.732372, 13.549211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.770157, 36.359520, 13.773534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.422394, 36.461521, 13.604251>,  <44.213737, 36.522720, 13.502681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.422394, 36.461521, 13.604251>,  <44.770157, 36.359520, 13.773534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422394, 36.461521, 13.604251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236037, 0.538125, 0.809140,
		0.434070, 0.803366, -0.407660,
		-0.869408, 0.255001, -0.423208,
		44.161572, 36.538021, 13.477288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.668453, 37.107620, 13.886404>,  <44.770157, 36.359520, 13.773534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.668453, 37.107620, 13.886404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.303188, 36.961124, 13.814842>,  <44.084030, 36.873226, 13.771905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.303188, 36.961124, 13.814842>,  <44.668453, 37.107620, 13.886404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.303188, 36.961124, 13.814842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349419, 0.477386, 0.806231,
		-0.209866, 0.798731, -0.563901,
		-0.913161, -0.366239, -0.178905,
		44.029240, 36.851254, 13.761170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162247, 37.681427, 14.067810>,  <44.668453, 37.107620, 13.886404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.162247, 37.681427, 14.067810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.972271, 37.332142, 14.111490>,  <43.858284, 37.122570, 14.137698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.972271, 37.332142, 14.111490>,  <44.162247, 37.681427, 14.067810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972271, 37.332142, 14.111490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455407, 0.350063, 0.818572,
		-0.753016, 0.339045, -0.563929,
		-0.474943, -0.873215, 0.109200,
		43.829788, 37.070179, 14.144250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807064, 38.300751, 14.055131>,  <44.162247, 37.681427, 14.067810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807064, 38.300751, 14.055131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.904541, 38.687721, 14.082580>,  <43.963028, 38.919903, 14.099049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.904541, 38.687721, 14.082580>,  <43.807064, 38.300751, 14.055131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904541, 38.687721, 14.082580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287740, -0.004550, -0.957698,
		-0.926185, 0.253130, -0.279475,
		0.243694, 0.967421, 0.068621,
		43.977650, 38.977947, 14.103166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453220, 38.660130, 13.632043>,  <43.807064, 38.300751, 14.055131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453220, 38.660130, 13.632043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.783909, 38.880722, 13.676586>,  <43.982323, 39.013077, 13.703312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.783909, 38.880722, 13.676586>,  <43.453220, 38.660130, 13.632043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783909, 38.880722, 13.676586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119158, 0.021808, -0.992636,
		-0.549850, 0.833902, -0.047685,
		0.826721, 0.551482, 0.111357,
		44.031925, 39.046165, 13.709993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.373985, 39.190506, 13.124029>,  <43.453220, 38.660130, 13.632043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.373985, 39.190506, 13.124029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.764938, 39.193024, 13.208578>,  <43.999512, 39.194534, 13.259308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.764938, 39.193024, 13.208578>,  <43.373985, 39.190506, 13.124029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.764938, 39.193024, 13.208578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207640, 0.160728, -0.964910,
		-0.040049, 0.986979, 0.155786,
		0.977385, 0.006297, 0.211373,
		44.058155, 39.194912, 13.271990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737083, 39.810020, 12.764060>,  <43.373985, 39.190506, 13.124029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737083, 39.810020, 12.764060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.048611, 39.571423, 12.841665>,  <44.235527, 39.428265, 12.888228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.048611, 39.571423, 12.841665>,  <43.737083, 39.810020, 12.764060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.048611, 39.571423, 12.841665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354679, 0.163673, -0.920551,
		0.517351, 0.785750, 0.339036,
		0.778814, -0.596497, 0.194013,
		44.282253, 39.392475, 12.899869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403973, 40.132000, 12.517552>,  <43.737083, 39.810020, 12.764060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403973, 40.132000, 12.517552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.470181, 39.740234, 12.563761>,  <44.509907, 39.505173, 12.591486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.470181, 39.740234, 12.563761>,  <44.403973, 40.132000, 12.517552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.470181, 39.740234, 12.563761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371979, -0.046484, -0.927077,
		0.913365, 0.196421, 0.356628,
		0.165519, -0.979417, 0.115521,
		44.519836, 39.446407, 12.598417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099205, 40.106293, 12.275117>,  <44.403973, 40.132000, 12.517552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099205, 40.106293, 12.275117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.934265, 39.741909, 12.279415>,  <44.835300, 39.523277, 12.281994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.934265, 39.741909, 12.279415>,  <45.099205, 40.106293, 12.275117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.934265, 39.741909, 12.279415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128150, -0.069678, -0.989304,
		0.901967, -0.406563, 0.145472,
		-0.412351, -0.910962, 0.010746,
		44.810558, 39.468620, 12.282640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.636234, 39.652428, 11.990012>,  <45.099205, 40.106293, 12.275117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.636234, 39.652428, 11.990012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.291893, 39.460396, 11.922525>,  <45.085289, 39.345177, 11.882033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.291893, 39.460396, 11.922525>,  <45.636234, 39.652428, 11.990012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.291893, 39.460396, 11.922525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247864, -0.106033, -0.962975,
		0.444412, -0.870795, 0.210272,
		-0.860849, -0.480076, -0.168717,
		45.033638, 39.316372, 11.871910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.866871, 39.126045, 11.528785>,  <45.636234, 39.652428, 11.990012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.866871, 39.126045, 11.528785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.467102, 39.123745, 11.515362>,  <45.227242, 39.122364, 11.507308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.467102, 39.123745, 11.515362>,  <45.866871, 39.126045, 11.528785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.467102, 39.123745, 11.515362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033923, -0.251850, -0.967171,
		-0.002892, -0.967749, 0.251899,
		-0.999420, -0.005748, -0.033557,
		45.167274, 39.122021, 11.505295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.628098, 38.617336, 11.152441>,  <45.866871, 39.126045, 11.528785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.628098, 38.617336, 11.152441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.316238, 38.866592, 11.127643>,  <45.129124, 39.016144, 11.112763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.316238, 38.866592, 11.127643>,  <45.628098, 38.617336, 11.152441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.316238, 38.866592, 11.127643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069797, -0.011912, -0.997490,
		-0.622313, -0.782021, -0.034206,
		-0.779651, 0.623138, -0.061996,
		45.082344, 39.053535, 11.109044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.993130, 39.563503, 24.560703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.812023, 39.749825, 24.256590>,  <36.703358, 39.861618, 24.074121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.812023, 39.749825, 24.256590>,  <36.993130, 39.563503, 24.560703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812023, 39.749825, 24.256590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886417, 0.327203, -0.327418,
		0.096256, -0.822173, -0.561040,
		-0.452769, 0.465800, -0.760284,
		36.676193, 39.889565, 24.028505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194881, 39.370228, 23.812878>,  <36.993130, 39.563503, 24.560703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194881, 39.370228, 23.812878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.045357, 39.741127, 23.804203>,  <36.955643, 39.963669, 23.798998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.045357, 39.741127, 23.804203>,  <37.194881, 39.370228, 23.812878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045357, 39.741127, 23.804203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832693, 0.325207, -0.448177,
		-0.408520, -0.185594, -0.893681,
		-0.373810, 0.927251, -0.021689,
		36.933212, 40.019302, 23.797697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331284, 39.656605, 23.115208>,  <37.194881, 39.370228, 23.812878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331284, 39.656605, 23.115208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.257877, 39.995579, 23.314478>,  <37.213833, 40.198963, 23.434040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.257877, 39.995579, 23.314478>,  <37.331284, 39.656605, 23.115208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257877, 39.995579, 23.314478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527792, 0.512483, -0.677346,
		-0.829311, 0.138628, -0.541318,
		-0.183518, 0.847434, 0.498174,
		37.202824, 40.249809, 23.463930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170723, 40.179218, 22.603455>,  <37.331284, 39.656605, 23.115208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170723, 40.179218, 22.603455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.276192, 40.368061, 22.939928>,  <37.339474, 40.481369, 23.141813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.276192, 40.368061, 22.939928>,  <37.170723, 40.179218, 22.603455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276192, 40.368061, 22.939928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653143, 0.554348, -0.515851,
		-0.709848, 0.685427, -0.162191,
		0.263668, 0.472110, 0.841185,
		37.355293, 40.509693, 23.192284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147190, 40.901966, 22.527172>,  <37.170723, 40.179218, 22.603455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147190, 40.901966, 22.527172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.392879, 40.855400, 22.839371>,  <37.540295, 40.827461, 23.026690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.392879, 40.855400, 22.839371>,  <37.147190, 40.901966, 22.527172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392879, 40.855400, 22.839371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716467, 0.496826, -0.489734,
		-0.330757, 0.860006, 0.388573,
		0.614227, -0.116417, 0.780494,
		37.577148, 40.820477, 23.073519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360775, 41.526707, 22.725222>,  <37.147190, 40.901966, 22.527172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360775, 41.526707, 22.725222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.633213, 41.265797, 22.858273>,  <37.796677, 41.109249, 22.938103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.633213, 41.265797, 22.858273>,  <37.360775, 41.526707, 22.725222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633213, 41.265797, 22.858273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719157, 0.510613, -0.471261,
		0.137550, 0.560185, 0.816868,
		0.681097, -0.652278, 0.332626,
		37.837543, 41.070114, 22.958061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043808, 41.903118, 22.973780>,  <37.360775, 41.526707, 22.725222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043808, 41.903118, 22.973780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.128098, 41.516857, 22.912958>,  <38.178673, 41.285103, 22.876465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.128098, 41.516857, 22.912958>,  <38.043808, 41.903118, 22.973780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128098, 41.516857, 22.912958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868553, 0.256324, -0.424163,
		0.448567, -0.042686, 0.892729,
		0.210722, -0.965648, -0.152054,
		38.191315, 41.227161, 22.867342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750214, 41.949917, 23.043158>,  <38.043808, 41.903118, 22.973780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750214, 41.949917, 23.043158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.664425, 41.602329, 22.864771>,  <38.612953, 41.393776, 22.757738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.664425, 41.602329, 22.864771>,  <38.750214, 41.949917, 23.043158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664425, 41.602329, 22.864771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776813, 0.125027, -0.617196,
		0.592085, -0.478805, 0.648214,
		-0.214472, -0.868973, -0.445968,
		38.600082, 41.341637, 22.730980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351639, 41.838760, 22.607180>,  <38.750214, 41.949917, 23.043158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351639, 41.838760, 22.607180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.103107, 41.551910, 22.480886>,  <38.953991, 41.379799, 22.405111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.103107, 41.551910, 22.480886>,  <39.351639, 41.838760, 22.607180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103107, 41.551910, 22.480886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603888, -0.181504, -0.776129,
		0.499274, -0.672896, 0.545836,
		-0.621325, -0.717125, -0.315733,
		38.916710, 41.336773, 22.386166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760971, 41.263199, 22.513830>,  <39.351639, 41.838760, 22.607180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760971, 41.263199, 22.513830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.423870, 41.207016, 22.305969>,  <39.221611, 41.173306, 22.181252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.423870, 41.207016, 22.305969>,  <39.760971, 41.263199, 22.513830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423870, 41.207016, 22.305969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537363, -0.276464, -0.796749,
		-0.031756, -0.950705, 0.308467,
		-0.842753, -0.140457, -0.519653,
		39.171043, 41.164879, 22.150074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742153, 40.602066, 22.243484>,  <39.760971, 41.263199, 22.513830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742153, 40.602066, 22.243484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.537235, 40.836960, 21.992817>,  <39.414284, 40.977898, 21.842417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.537235, 40.836960, 21.992817>,  <39.742153, 40.602066, 22.243484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537235, 40.836960, 21.992817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588904, -0.290916, -0.754029,
		-0.625100, -0.755330, -0.196792,
		-0.512291, 0.587236, -0.626668,
		39.383549, 41.013130, 21.804817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501732, 40.176140, 21.741735>,  <39.742153, 40.602066, 22.243484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501732, 40.176140, 21.741735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.502949, 40.547356, 21.592747>,  <39.503677, 40.770084, 21.503353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.502949, 40.547356, 21.592747>,  <39.501732, 40.176140, 21.741735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502949, 40.547356, 21.592747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537581, -0.315590, -0.781927,
		-0.843206, -0.197856, -0.499856,
		0.003040, 0.928039, -0.372471,
		39.503860, 40.825768, 21.481005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284969, 39.486912, 21.615116>,  <39.501732, 40.176140, 21.741735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284969, 39.486912, 21.615116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.543697, 39.201153, 21.721899>,  <39.698933, 39.029697, 21.785969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.543697, 39.201153, 21.721899>,  <39.284969, 39.486912, 21.615116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543697, 39.201153, 21.721899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594100, -0.252514, 0.763729,
		-0.478194, -0.652593, -0.587752,
		0.646820, -0.714394, 0.266954,
		39.737743, 38.986835, 21.801985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840347, 38.961830, 21.888391>,  <39.284969, 39.486912, 21.615116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840347, 38.961830, 21.888391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.208023, 38.856998, 22.005972>,  <39.428627, 38.794098, 22.076521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.208023, 38.856998, 22.005972>,  <38.840347, 38.961830, 21.888391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208023, 38.856998, 22.005972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369594, -0.316312, 0.873697,
		-0.135999, -0.911735, -0.387614,
		0.919187, -0.262082, 0.293953,
		39.483780, 38.778374, 22.094158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795570, 38.284248, 22.040058>,  <38.840347, 38.961830, 21.888391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795570, 38.284248, 22.040058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.111511, 38.424919, 22.241037>,  <39.301075, 38.509319, 22.361626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.111511, 38.424919, 22.241037>,  <38.795570, 38.284248, 22.040058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111511, 38.424919, 22.241037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354520, -0.406704, 0.841966,
		0.500446, -0.843159, -0.196562,
		0.789854, 0.351674, 0.502450,
		39.348469, 38.530422, 22.391773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049328, 37.722984, 22.236366>,  <38.795570, 38.284248, 22.040058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049328, 37.722984, 22.236366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.161377, 38.030231, 22.466679>,  <39.228607, 38.214581, 22.604866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.161377, 38.030231, 22.466679>,  <39.049328, 37.722984, 22.236366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161377, 38.030231, 22.466679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316922, -0.492165, 0.810762,
		0.906141, -0.409589, 0.105569,
		0.280122, 0.768122, 0.575779,
		39.245415, 38.260670, 22.639412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227074, 37.363686, 22.838797>,  <39.049328, 37.722984, 22.236366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227074, 37.363686, 22.838797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.211739, 37.748749, 22.945995>,  <39.202538, 37.979786, 23.010315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.211739, 37.748749, 22.945995>,  <39.227074, 37.363686, 22.838797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211739, 37.748749, 22.945995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496731, -0.251073, 0.830795,
		0.867057, -0.101269, 0.487807,
		-0.038341, 0.962656, 0.267998,
		39.200237, 38.037544, 23.026396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464252, 37.385578, 23.577768>,  <39.227074, 37.363686, 22.838797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464252, 37.385578, 23.577768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.242638, 37.709618, 23.501053>,  <39.109669, 37.904041, 23.455023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.242638, 37.709618, 23.501053>,  <39.464252, 37.385578, 23.577768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242638, 37.709618, 23.501053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520923, -0.157655, 0.838919,
		0.649370, 0.564699, 0.509346,
		-0.554038, 0.810099, -0.191788,
		39.076427, 37.952648, 23.443516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311253, 37.586533, 24.287714>,  <39.464252, 37.385578, 23.577768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311253, 37.586533, 24.287714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.043617, 37.758022, 24.044891>,  <38.883038, 37.860916, 23.899199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.043617, 37.758022, 24.044891>,  <39.311253, 37.586533, 24.287714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043617, 37.758022, 24.044891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718784, -0.165717, 0.675195,
		0.188875, 0.888105, 0.419041,
		-0.669086, 0.428728, -0.607056,
		38.842892, 37.886642, 23.862774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867168, 37.886543, 24.805420>,  <39.311253, 37.586533, 24.287714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867168, 37.886543, 24.805420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.665112, 37.900890, 24.460503>,  <38.543877, 37.909500, 24.253553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.665112, 37.900890, 24.460503>,  <38.867168, 37.886543, 24.805420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665112, 37.900890, 24.460503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847762, -0.207779, 0.487984,
		-0.161663, 0.977518, 0.135365,
		-0.505139, 0.035868, -0.862292,
		38.513569, 37.911652, 24.201815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360786, 38.331127, 24.905645>,  <38.867168, 37.886543, 24.805420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360786, 38.331127, 24.905645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.252209, 38.096497, 24.600426>,  <38.187061, 37.955719, 24.417294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.252209, 38.096497, 24.600426>,  <38.360786, 38.331127, 24.905645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252209, 38.096497, 24.600426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843161, -0.237383, 0.482420,
		-0.464113, 0.774322, -0.430144,
		-0.271440, -0.586578, -0.763051,
		38.170776, 37.920525, 24.371510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635296, 38.529552, 24.821875>,  <38.360786, 38.331127, 24.905645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635296, 38.529552, 24.821875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.687553, 38.178509, 24.637386>,  <37.718910, 37.967880, 24.526693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.687553, 38.178509, 24.637386>,  <37.635296, 38.529552, 24.821875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687553, 38.178509, 24.637386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693838, -0.413237, 0.589766,
		-0.708181, 0.242962, -0.662910,
		0.130648, -0.877613, -0.461223,
		37.726749, 37.915226, 24.499020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938168, 38.297268, 24.603901>,  <37.635296, 38.529552, 24.821875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938168, 38.297268, 24.603901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.173645, 37.975521, 24.571802>,  <37.314930, 37.782475, 24.552544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.173645, 37.975521, 24.571802>,  <36.938168, 38.297268, 24.603901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173645, 37.975521, 24.571802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697218, -0.555476, 0.453137,
		-0.409062, -0.210810, -0.887822,
		0.588690, -0.804367, -0.080244,
		37.350250, 37.734211, 24.547729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528702, 37.840557, 24.277403>,  <36.938168, 38.297268, 24.603901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528702, 37.840557, 24.277403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.803600, 37.631508, 24.479219>,  <36.968540, 37.506077, 24.600309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.803600, 37.631508, 24.479219>,  <36.528702, 37.840557, 24.277403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803600, 37.631508, 24.479219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726203, -0.511506, 0.459338,
		0.018015, -0.682076, -0.731059,
		0.687245, -0.522622, 0.504541,
		37.009773, 37.474720, 24.630581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192993, 37.284435, 24.312679>,  <36.528702, 37.840557, 24.277403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192993, 37.284435, 24.312679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.478767, 37.242477, 24.589397>,  <36.650230, 37.217300, 24.755428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.478767, 37.242477, 24.589397>,  <36.192993, 37.284435, 24.312679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478767, 37.242477, 24.589397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634795, -0.513046, 0.577771,
		0.294317, -0.851927, -0.433125,
		0.714432, -0.104898, 0.691797,
		36.693096, 37.211010, 24.796936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253338, 36.472332, 24.301973>,  <36.192993, 37.284435, 24.312679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253338, 36.472332, 24.301973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.405857, 36.649597, 24.626497>,  <36.497368, 36.755955, 24.821211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.405857, 36.649597, 24.626497>,  <36.253338, 36.472332, 24.301973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405857, 36.649597, 24.626497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465857, -0.665922, 0.582688,
		0.798493, -0.600131, -0.047464,
		0.381296, 0.443161, 0.811309,
		36.520245, 36.782547, 24.869890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542629, 35.947224, 24.832325>,  <36.253338, 36.472332, 24.301973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542629, 35.947224, 24.832325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433174, 36.277607, 25.029469>,  <36.367500, 36.475838, 25.147755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433174, 36.277607, 25.029469>,  <36.542629, 35.947224, 24.832325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433174, 36.277607, 25.029469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504620, -0.559517, 0.657495,
		0.818828, -0.068789, 0.569903,
		-0.273641, 0.825959, 0.492860,
		36.351082, 36.525394, 25.177326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220383, 35.310555, 24.424953>,  <36.542629, 35.947224, 24.832325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220383, 35.310555, 24.424953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.880573, 35.503708, 24.339966>,  <35.676689, 35.619598, 24.288973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.880573, 35.503708, 24.339966>,  <36.220383, 35.310555, 24.424953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880573, 35.503708, 24.339966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284660, 0.080488, -0.955244,
		-0.444169, -0.871979, -0.205833,
		-0.849519, 0.482882, -0.212467,
		35.625717, 35.648571, 24.276226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807270, 35.019081, 23.924658>,  <36.220383, 35.310555, 24.424953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807270, 35.019081, 23.924658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.649582, 35.383488, 23.876261>,  <35.554970, 35.602131, 23.847221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.649582, 35.383488, 23.876261>,  <35.807270, 35.019081, 23.924658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649582, 35.383488, 23.876261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051815, -0.109415, -0.992645,
		-0.917554, -0.397591, -0.004070,
		-0.394221, 0.911016, -0.120995,
		35.531315, 35.656792, 23.839962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807884, 34.948475, 23.258204>,  <35.807270, 35.019081, 23.924658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807884, 34.948475, 23.258204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.661572, 35.318562, 23.298563>,  <35.573784, 35.540615, 23.322779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.661572, 35.318562, 23.298563>,  <35.807884, 34.948475, 23.258204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661572, 35.318562, 23.298563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144583, 0.163585, -0.975877,
		-0.919404, -0.342365, -0.193606,
		-0.365777, 0.925217, 0.100900,
		35.551838, 35.596127, 23.328833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155560, 35.126995, 22.784204>,  <35.807884, 34.948475, 23.258204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155560, 35.126995, 22.784204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.354279, 35.461708, 22.876276>,  <35.473511, 35.662537, 22.931519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.354279, 35.461708, 22.876276>,  <35.155560, 35.126995, 22.784204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354279, 35.461708, 22.876276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172972, 0.164431, -0.971104,
		-0.850455, 0.522255, -0.063052,
		0.496796, 0.836787, 0.230177,
		35.503319, 35.712746, 22.945330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892338, 35.498943, 22.262226>,  <35.155560, 35.126995, 22.784204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892338, 35.498943, 22.262226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.223186, 35.673023, 22.404478>,  <35.421696, 35.777473, 22.489828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.223186, 35.673023, 22.404478>,  <34.892338, 35.498943, 22.262226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223186, 35.673023, 22.404478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318243, 0.158882, -0.934600,
		-0.463245, 0.886202, -0.007086,
		0.827119, 0.435204, 0.355629,
		35.471321, 35.803585, 22.511168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036411, 35.992329, 21.871494>,  <34.892338, 35.498943, 22.262226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036411, 35.992329, 21.871494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.400478, 35.962093, 22.034409>,  <35.618919, 35.943954, 22.132158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.400478, 35.962093, 22.034409>,  <35.036411, 35.992329, 21.871494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400478, 35.962093, 22.034409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411766, 0.057744, -0.909458,
		0.045223, 0.995466, 0.083680,
		0.910167, -0.075585, 0.407288,
		35.673527, 35.939419, 22.156595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461987, 36.552574, 21.694853>,  <35.036411, 35.992329, 21.871494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461987, 36.552574, 21.694853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.764034, 36.309406, 21.793020>,  <35.945263, 36.163506, 21.851921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.764034, 36.309406, 21.793020>,  <35.461987, 36.552574, 21.694853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764034, 36.309406, 21.793020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431579, 0.179166, -0.884103,
		0.493492, 0.773520, 0.397657,
		0.755119, -0.607919, 0.245419,
		35.990570, 36.127029, 21.866646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118443, 36.898605, 21.492794>,  <35.461987, 36.552574, 21.694853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118443, 36.898605, 21.492794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207771, 36.509254, 21.513420>,  <36.261368, 36.275642, 21.525795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207771, 36.509254, 21.513420>,  <36.118443, 36.898605, 21.492794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207771, 36.509254, 21.513420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408597, 0.045453, -0.911583,
		0.884972, 0.224647, 0.407871,
		0.223323, -0.973380, 0.051565,
		36.274769, 36.217239, 21.528891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768894, 36.883320, 21.259083>,  <36.118443, 36.898605, 21.492794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768894, 36.883320, 21.259083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.667995, 36.497238, 21.231524>,  <36.607456, 36.265587, 21.214989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.667995, 36.497238, 21.231524>,  <36.768894, 36.883320, 21.259083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667995, 36.497238, 21.231524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689475, -0.129318, -0.712672,
		0.678965, -0.227276, 0.698106,
		-0.252251, -0.965206, -0.068898,
		36.592319, 36.207676, 21.210854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431808, 36.584423, 21.196346>,  <36.768894, 36.883320, 21.259083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431808, 36.584423, 21.196346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.150562, 36.333565, 21.062288>,  <36.981815, 36.183052, 20.981853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.150562, 36.333565, 21.062288>,  <37.431808, 36.584423, 21.196346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150562, 36.333565, 21.062288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587705, -0.247203, -0.770385,
		0.400292, -0.738636, 0.542387,
		-0.703114, -0.627142, -0.335147,
		36.939629, 36.145424, 20.961744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852039, 35.908684, 21.006641>,  <37.431808, 36.584423, 21.196346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852039, 35.908684, 21.006641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.495277, 35.915955, 20.825895>,  <37.281219, 35.920319, 20.717447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.495277, 35.915955, 20.825895>,  <37.852039, 35.908684, 21.006641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495277, 35.915955, 20.825895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441533, -0.181015, -0.878796,
		-0.097768, -0.983312, 0.153422,
		-0.891902, 0.018177, -0.451863,
		37.227707, 35.921410, 20.690336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829449, 35.295925, 20.652948>,  <37.852039, 35.908684, 21.006641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829449, 35.295925, 20.652948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.574173, 35.553558, 20.484249>,  <37.421005, 35.708138, 20.383030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.574173, 35.553558, 20.484249>,  <37.829449, 35.295925, 20.652948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574173, 35.553558, 20.484249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438361, -0.146335, -0.886806,
		-0.632891, -0.750831, -0.188950,
		-0.638191, 0.644080, -0.421749,
		37.382717, 35.746780, 20.357725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540016, 34.985950, 20.058010>,  <37.829449, 35.295925, 20.652948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540016, 34.985950, 20.058010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.446159, 35.370777, 20.002344>,  <37.389847, 35.601673, 19.968945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.446159, 35.370777, 20.002344>,  <37.540016, 34.985950, 20.058010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446159, 35.370777, 20.002344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434696, -0.024207, -0.900252,
		-0.869474, -0.271728, -0.412528,
		-0.234638, 0.962070, -0.139166,
		37.375767, 35.659397, 19.960594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251930, 35.061363, 19.358850>,  <37.540016, 34.985950, 20.058010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251930, 35.061363, 19.358850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.359379, 35.434280, 19.455732>,  <37.423847, 35.658031, 19.513863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.359379, 35.434280, 19.455732>,  <37.251930, 35.061363, 19.358850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359379, 35.434280, 19.455732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273225, 0.167373, -0.947277,
		-0.923682, 0.320639, -0.209767,
		0.268625, 0.932297, 0.242206,
		37.439968, 35.713970, 19.528395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864265, 35.562180, 18.954161>,  <37.251930, 35.061363, 19.358850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864265, 35.562180, 18.954161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.188229, 35.771805, 19.059544>,  <37.382607, 35.897579, 19.122772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.188229, 35.771805, 19.059544>,  <36.864265, 35.562180, 18.954161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188229, 35.771805, 19.059544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154213, 0.243106, -0.957663,
		-0.565927, 0.816243, 0.116074,
		0.809904, 0.524067, 0.263456,
		37.431198, 35.929024, 19.138580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785538, 36.147594, 18.646076>,  <36.864265, 35.562180, 18.954161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785538, 36.147594, 18.646076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.176765, 36.125572, 18.726416>,  <37.411503, 36.112358, 18.774620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.176765, 36.125572, 18.726416>,  <36.785538, 36.147594, 18.646076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176765, 36.125572, 18.726416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208059, 0.300553, -0.930795,
		-0.009122, 0.952175, 0.305418,
		0.978074, -0.055054, 0.200850,
		37.470188, 36.109055, 18.786671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999863, 36.589069, 18.152966>,  <36.785538, 36.147594, 18.646076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999863, 36.589069, 18.152966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.332470, 36.390137, 18.251949>,  <37.532036, 36.270779, 18.311340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.332470, 36.390137, 18.251949>,  <36.999863, 36.589069, 18.152966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332470, 36.390137, 18.251949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350956, 0.125038, -0.928006,
		0.430581, 0.858505, 0.278512,
		0.831523, -0.497327, 0.247459,
		37.581928, 36.240940, 18.326187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552132, 37.076237, 18.017176>,  <36.999863, 36.589069, 18.152966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552132, 37.076237, 18.017176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.713520, 36.710365, 18.026775>,  <37.810352, 36.490841, 18.032536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.713520, 36.710365, 18.026775>,  <37.552132, 37.076237, 18.017176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713520, 36.710365, 18.026775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366688, 0.137609, -0.920111,
		0.838302, 0.380037, 0.390923,
		0.403471, -0.914678, 0.023997,
		37.834560, 36.435963, 18.033974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348354, 37.081490, 17.758663>,  <37.552132, 37.076237, 18.017176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348354, 37.081490, 17.758663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.205502, 36.710331, 17.715839>,  <38.119789, 36.487637, 17.690145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.205502, 36.710331, 17.715839>,  <38.348354, 37.081490, 17.758663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205502, 36.710331, 17.715839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308270, -0.008893, -0.951257,
		0.881719, -0.372725, 0.289219,
		-0.357130, -0.927899, -0.107059,
		38.098362, 36.431961, 17.683722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868832, 36.742474, 17.400318>,  <38.348354, 37.081490, 17.758663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868832, 36.742474, 17.400318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.538681, 36.526463, 17.334435>,  <38.340591, 36.396858, 17.294905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.538681, 36.526463, 17.334435>,  <38.868832, 36.742474, 17.400318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538681, 36.526463, 17.334435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240488, -0.072335, -0.967953,
		0.510804, -0.838535, 0.189573,
		-0.825375, -0.540024, -0.164708,
		38.291069, 36.364456, 17.285023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057678, 36.239464, 16.904739>,  <38.868832, 36.742474, 17.400318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057678, 36.239464, 16.904739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.658054, 36.222328, 16.901905>,  <38.418282, 36.212048, 16.900204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.658054, 36.222328, 16.901905>,  <39.057678, 36.239464, 16.904739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658054, 36.222328, 16.901905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017057, -0.237070, -0.971343,
		0.039934, -0.970548, 0.237577,
		-0.999056, -0.042842, -0.007088,
		38.358337, 36.209476, 16.899778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946991, 35.692398, 16.519442>,  <39.057678, 36.239464, 16.904739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946991, 35.692398, 16.519442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.579956, 35.851215, 16.511578>,  <38.359734, 35.946507, 16.506859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.579956, 35.851215, 16.511578>,  <38.946991, 35.692398, 16.519442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579956, 35.851215, 16.511578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036269, -0.132862, -0.990471,
		-0.395869, -0.908134, 0.136313,
		-0.917590, 0.397040, -0.019659,
		38.304680, 35.970325, 16.505680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530277, 35.246235, 16.175499>,  <38.946991, 35.692398, 16.519442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530277, 35.246235, 16.175499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.384724, 35.617222, 16.141106>,  <38.297394, 35.839813, 16.120470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.384724, 35.617222, 16.141106>,  <38.530277, 35.246235, 16.175499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384724, 35.617222, 16.141106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086604, -0.125599, -0.988294,
		-0.927410, -0.352176, 0.126026,
		-0.363882, 0.927468, -0.085982,
		38.275558, 35.895462, 16.115311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965557, 35.163296, 15.656365>,  <38.530277, 35.246235, 16.175499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965557, 35.163296, 15.656365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.026672, 35.558376, 15.669661>,  <38.063339, 35.795425, 15.677638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.026672, 35.558376, 15.669661>,  <37.965557, 35.163296, 15.656365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026672, 35.558376, 15.669661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069658, 0.022786, -0.997311,
		-0.985802, 0.154689, -0.065319,
		0.152784, 0.987700, 0.033238,
		38.072506, 35.854687, 15.679632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491081, 35.464115, 15.221108>,  <37.965557, 35.163296, 15.656365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491081, 35.464115, 15.221108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.800484, 35.716301, 15.247067>,  <37.986126, 35.867611, 15.262643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.800484, 35.716301, 15.247067>,  <37.491081, 35.464115, 15.221108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800484, 35.716301, 15.247067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180309, -0.120734, -0.976172,
		-0.607604, 0.766773, -0.207066,
		0.773502, 0.630462, 0.064897,
		38.032536, 35.905441, 15.266537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393105, 35.956982, 14.595954>,  <37.491081, 35.464115, 15.221108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393105, 35.956982, 14.595954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.778896, 35.968876, 14.700950>,  <38.010372, 35.976013, 14.763947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.778896, 35.968876, 14.700950>,  <37.393105, 35.956982, 14.595954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778896, 35.968876, 14.700950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257571, -0.326559, -0.909404,
		0.058674, 0.944709, -0.322619,
		0.964476, 0.029739, 0.262490,
		38.068241, 35.977798, 14.779696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722065, 35.875061, 13.921019>,  <37.393105, 35.956982, 14.595954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722065, 35.875061, 13.921019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.043629, 35.876133, 14.158916>,  <38.236568, 35.876774, 14.301654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.043629, 35.876133, 14.158916>,  <37.722065, 35.875061, 13.921019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043629, 35.876133, 14.158916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581268, -0.215230, -0.784732,
		0.125906, 0.976560, -0.174582,
		0.803913, 0.002677, 0.594741,
		38.284801, 35.876934, 14.337337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411793, 36.555031, 14.145144>,  <37.722065, 35.875061, 13.921019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411793, 36.555031, 14.145144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.434383, 36.944740, 14.057871>,  <37.447937, 37.178566, 14.005507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.434383, 36.944740, 14.057871>,  <37.411793, 36.555031, 14.145144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434383, 36.944740, 14.057871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702613, 0.194040, 0.684605,
		0.709327, 0.114634, 0.695496,
		0.056474, 0.974273, -0.218181,
		37.451324, 37.237022, 13.992416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563126, 36.986839, 14.736761>,  <37.411793, 36.555031, 14.145144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563126, 36.986839, 14.736761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.371357, 37.218441, 14.472972>,  <37.256294, 37.357403, 14.314698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.371357, 37.218441, 14.472972>,  <37.563126, 36.986839, 14.736761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371357, 37.218441, 14.472972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573667, 0.361913, 0.734796,
		0.664123, 0.730597, 0.158646,
		-0.479424, 0.579005, -0.659474,
		37.227531, 37.392143, 14.275129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522030, 37.687454, 15.020567>,  <37.563126, 36.986839, 14.736761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522030, 37.687454, 15.020567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.233265, 37.660229, 14.745115>,  <37.060005, 37.643894, 14.579844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.233265, 37.660229, 14.745115>,  <37.522030, 37.687454, 15.020567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233265, 37.660229, 14.745115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648231, 0.414766, 0.638566,
		0.242158, 0.907379, -0.343544,
		-0.721911, -0.068062, -0.688630,
		37.016693, 37.639809, 14.538527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161449, 38.328941, 15.176437>,  <37.522030, 37.687454, 15.020567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161449, 38.328941, 15.176437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.895016, 38.086330, 15.002795>,  <36.735153, 37.940762, 14.898610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.895016, 38.086330, 15.002795>,  <37.161449, 38.328941, 15.176437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895016, 38.086330, 15.002795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707101, 0.328288, 0.626287,
		-0.237350, 0.724119, -0.647547,
		-0.666088, -0.606530, -0.434106,
		36.695190, 37.904373, 14.872563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496502, 38.704876, 15.098248>,  <37.161449, 38.328941, 15.176437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496502, 38.704876, 15.098248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.394409, 38.318848, 15.074584>,  <36.333153, 38.087231, 15.060386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.394409, 38.318848, 15.074584>,  <36.496502, 38.704876, 15.098248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394409, 38.318848, 15.074584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747631, 0.158189, 0.644999,
		-0.613110, 0.208853, -0.761890,
		-0.255233, -0.965068, -0.059158,
		36.317841, 38.029327, 15.056836>
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
