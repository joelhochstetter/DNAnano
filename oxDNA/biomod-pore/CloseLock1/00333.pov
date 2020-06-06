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
	<24.123447, 35.094990, 34.658894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.412352, 34.992218, 34.915745>,  <24.585693, 34.930553, 35.069855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.412352, 34.992218, 34.915745>,  <24.123447, 35.094990, 34.658894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.412352, 34.992218, 34.915745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645572, 0.583563, -0.492638,
		-0.248147, 0.770351, 0.587352,
		0.722261, -0.256931, 0.642126,
		24.629030, 34.915138, 35.108383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.486973, 35.698101, 34.965611>,  <24.123447, 35.094990, 34.658894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.486973, 35.698101, 34.965611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.716326, 35.370754, 34.950089>,  <24.853937, 35.174347, 34.940777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.716326, 35.370754, 34.950089>,  <24.486973, 35.698101, 34.965611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.716326, 35.370754, 34.950089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730957, 0.532379, -0.426935,
		0.370048, 0.216434, 0.903449,
		0.573381, -0.818369, -0.038802,
		24.888340, 35.125244, 34.938446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.204597, 35.887806, 35.194832>,  <24.486973, 35.698101, 34.965611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.204597, 35.887806, 35.194832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.197693, 35.602600, 34.914455>,  <25.193550, 35.431477, 34.746231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.197693, 35.602600, 34.914455>,  <25.204597, 35.887806, 35.194832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.197693, 35.602600, 34.914455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832309, 0.378220, -0.405230,
		0.554043, -0.590394, 0.586917,
		-0.017262, -0.713011, -0.700940,
		25.192514, 35.388695, 34.704174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.796928, 35.406876, 35.263107>,  <25.204597, 35.887806, 35.194832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.796928, 35.406876, 35.263107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664236, 35.452278, 34.888500>,  <25.584620, 35.479519, 34.663734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664236, 35.452278, 34.888500>,  <25.796928, 35.406876, 35.263107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.664236, 35.452278, 34.888500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832674, 0.501836, -0.234124,
		0.443404, -0.857482, -0.260992,
		-0.331732, 0.113509, -0.936520,
		25.564716, 35.486332, 34.607544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.257612, 34.906963, 35.609398>,  <25.796928, 35.406876, 35.263107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.257612, 34.906963, 35.609398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449871, 34.561623, 35.547939>,  <26.565226, 34.354420, 35.511063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449871, 34.561623, 35.547939>,  <26.257612, 34.906963, 35.609398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.449871, 34.561623, 35.547939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322887, 0.337146, -0.884351,
		0.815306, 0.375449, 0.440812,
		0.480646, -0.863349, -0.153649,
		26.594065, 34.302616, 35.501846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045374, 35.105904, 35.407478>,  <26.257612, 34.906963, 35.609398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045374, 35.105904, 35.407478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937822, 34.737068, 35.296162>,  <26.873291, 34.515766, 35.229370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937822, 34.737068, 35.296162>,  <27.045374, 35.105904, 35.407478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937822, 34.737068, 35.296162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333524, 0.181926, -0.925021,
		0.903585, -0.341537, 0.258624,
		-0.268879, -0.922093, -0.278296,
		26.857159, 34.460442, 35.212673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473829, 34.986629, 34.854298>,  <27.045374, 35.105904, 35.407478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473829, 34.986629, 34.854298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.197527, 34.702484, 34.800274>,  <27.031746, 34.531998, 34.767860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.197527, 34.702484, 34.800274>,  <27.473829, 34.986629, 34.854298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.197527, 34.702484, 34.800274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102403, 0.088795, -0.990772,
		0.715800, -0.698212, 0.011408,
		-0.690756, -0.710363, -0.135059,
		26.990299, 34.489376, 34.759758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704475, 34.506943, 34.331081>,  <27.473829, 34.986629, 34.854298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704475, 34.506943, 34.331081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309992, 34.445290, 34.306961>,  <27.073301, 34.408298, 34.292488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309992, 34.445290, 34.306961>,  <27.704475, 34.506943, 34.331081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309992, 34.445290, 34.306961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074379, -0.087249, -0.993406,
		0.147858, -0.984190, 0.097510,
		-0.986208, -0.154135, -0.060303,
		27.014130, 34.399048, 34.288872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663019, 34.066082, 33.753410>,  <27.704475, 34.506943, 34.331081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663019, 34.066082, 33.753410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282164, 34.177647, 33.803436>,  <27.053650, 34.244587, 33.833450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282164, 34.177647, 33.803436>,  <27.663019, 34.066082, 33.753410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282164, 34.177647, 33.803436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176352, -0.167055, -0.970048,
		-0.249672, -0.945673, 0.208247,
		-0.952137, 0.278919, 0.125063,
		26.996523, 34.261322, 33.840954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238665, 33.499401, 33.475925>,  <27.663019, 34.066082, 33.753410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238665, 33.499401, 33.475925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022753, 33.836079, 33.481514>,  <26.893206, 34.038086, 33.484867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022753, 33.836079, 33.481514>,  <27.238665, 33.499401, 33.475925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.022753, 33.836079, 33.481514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120918, -0.061101, -0.990780,
		-0.833076, -0.536493, 0.134757,
		-0.539780, 0.841690, 0.013970,
		26.860819, 34.088585, 33.485706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.624020, 33.399212, 32.918575>,  <27.238665, 33.499401, 33.475925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.624020, 33.399212, 32.918575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657221, 33.794819, 32.967487>,  <26.677141, 34.032185, 32.996834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657221, 33.794819, 32.967487>,  <26.624020, 33.399212, 32.918575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657221, 33.794819, 32.967487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187920, 0.136041, -0.972717,
		-0.978671, 0.057761, 0.197148,
		0.083005, 0.989018, 0.122285,
		26.682123, 34.091526, 33.004173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.154074, 33.765301, 32.484734>,  <26.624020, 33.399212, 32.918575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.154074, 33.765301, 32.484734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448290, 34.031387, 32.536064>,  <26.624821, 34.191040, 32.566864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448290, 34.031387, 32.536064>,  <26.154074, 33.765301, 32.484734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.448290, 34.031387, 32.536064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113456, 0.307690, -0.944698,
		-0.667912, 0.680305, 0.301791,
		0.735541, 0.665215, 0.128325,
		26.668953, 34.230953, 32.574562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.939224, 34.328320, 32.166386>,  <26.154074, 33.765301, 32.484734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.939224, 34.328320, 32.166386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.318342, 34.443947, 32.220234>,  <26.545813, 34.513325, 32.252544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.318342, 34.443947, 32.220234>,  <25.939224, 34.328320, 32.166386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.318342, 34.443947, 32.220234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046880, 0.291266, -0.955493,
		-0.315416, 0.911922, 0.262509,
		0.947795, 0.289071, 0.134621,
		26.602680, 34.530666, 32.260620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.040651, 35.051605, 31.893473>,  <25.939224, 34.328320, 32.166386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.040651, 35.051605, 31.893473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399767, 34.875774, 31.882505>,  <26.615236, 34.770275, 31.875925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399767, 34.875774, 31.882505>,  <26.040651, 35.051605, 31.893473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.399767, 34.875774, 31.882505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098522, 0.261117, -0.960266,
		0.429267, 0.859414, 0.277735,
		0.897788, -0.439574, -0.027417,
		26.669104, 34.743904, 31.874281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233906, 35.390594, 31.389080>,  <26.040651, 35.051605, 31.893473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233906, 35.390594, 31.389080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.504679, 35.100071, 31.436798>,  <26.667143, 34.925755, 31.465429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.504679, 35.100071, 31.436798>,  <26.233906, 35.390594, 31.389080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504679, 35.100071, 31.436798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257216, 0.081573, -0.962905,
		0.689639, 0.682507, 0.242039,
		0.676933, -0.726313, 0.119296,
		26.707758, 34.882175, 31.472588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815399, 35.531570, 31.033785>,  <26.233906, 35.390594, 31.389080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815399, 35.531570, 31.033785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790758, 35.132446, 31.043427>,  <26.775974, 34.892971, 31.049212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790758, 35.132446, 31.043427>,  <26.815399, 35.531570, 31.033785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790758, 35.132446, 31.043427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231727, -0.037787, -0.972047,
		0.970828, -0.054296, 0.233547,
		-0.061603, -0.997810, 0.024103,
		26.772278, 34.833103, 31.050657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347588, 35.233337, 30.588181>,  <26.815399, 35.531570, 31.033785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347588, 35.233337, 30.588181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107548, 34.919968, 30.652838>,  <26.963524, 34.731945, 30.691631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107548, 34.919968, 30.652838>,  <27.347588, 35.233337, 30.588181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.107548, 34.919968, 30.652838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265354, -0.385592, -0.883689,
		0.754630, -0.487410, 0.439278,
		-0.600101, -0.783422, 0.161643,
		26.927517, 34.684940, 30.701330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633873, 34.609390, 30.295065>,  <27.347588, 35.233337, 30.588181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633873, 34.609390, 30.295065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277874, 34.434235, 30.345903>,  <27.064274, 34.329140, 30.376406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277874, 34.434235, 30.345903>,  <27.633873, 34.609390, 30.295065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.277874, 34.434235, 30.345903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144529, -0.535297, -0.832207,
		0.432449, -0.722295, 0.539702,
		-0.890000, -0.437890, 0.127096,
		27.010874, 34.302868, 30.384033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667833, 33.934170, 30.101372>,  <27.633873, 34.609390, 30.295065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667833, 33.934170, 30.101372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270123, 33.976753, 30.097881>,  <27.031496, 34.002304, 30.095787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270123, 33.976753, 30.097881>,  <27.667833, 33.934170, 30.101372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270123, 33.976753, 30.097881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068497, -0.698132, -0.712685,
		-0.081966, -0.708010, 0.701430,
		-0.994279, 0.106462, -0.008727,
		26.971840, 34.008694, 30.095263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.337221, 33.319706, 30.397633>,  <27.667833, 33.934170, 30.101372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.337221, 33.319706, 30.397633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139566, 33.521614, 30.114496>,  <27.020973, 33.642757, 29.944614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139566, 33.521614, 30.114496>,  <27.337221, 33.319706, 30.397633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139566, 33.521614, 30.114496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120620, -0.766508, -0.630806,
		-0.860977, -0.397083, 0.317874,
		-0.494135, 0.504767, -0.707842,
		26.991325, 33.673042, 29.902143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191250, 32.874283, 29.915028>,  <27.337221, 33.319706, 30.397633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191250, 32.874283, 29.915028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.057024, 33.176880, 29.690485>,  <26.976488, 33.358437, 29.555759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.057024, 33.176880, 29.690485>,  <27.191250, 32.874283, 29.915028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057024, 33.176880, 29.690485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166676, -0.538827, -0.825763,
		-0.927154, -0.370663, 0.054723,
		-0.335566, 0.756489, -0.561356,
		26.956354, 33.403828, 29.522078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687647, 32.637600, 29.382719>,  <27.191250, 32.874283, 29.915028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687647, 32.637600, 29.382719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.844719, 32.973927, 29.233685>,  <26.938963, 33.175724, 29.144264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.844719, 32.973927, 29.233685>,  <26.687647, 32.637600, 29.382719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.844719, 32.973927, 29.233685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309579, -0.502336, -0.807353,
		-0.866003, 0.201688, -0.457559,
		0.392682, 0.840821, -0.372586,
		26.962524, 33.226173, 29.121908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619755, 32.541527, 28.717728>,  <26.687647, 32.637600, 29.382719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619755, 32.541527, 28.717728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898796, 32.827049, 28.742504>,  <27.066221, 32.998363, 28.757370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898796, 32.827049, 28.742504>,  <26.619755, 32.541527, 28.717728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898796, 32.827049, 28.742504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514292, -0.438670, -0.736934,
		-0.498854, 0.545942, -0.673121,
		0.697601, 0.713803, 0.061941,
		27.108076, 33.041191, 28.761087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962034, 32.467644, 28.129517>,  <26.619755, 32.541527, 28.717728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.962034, 32.467644, 28.129517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187662, 32.773998, 28.252964>,  <27.323038, 32.957809, 28.327032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187662, 32.773998, 28.252964>,  <26.962034, 32.467644, 28.129517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.187662, 32.773998, 28.252964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572447, -0.093349, -0.814611,
		-0.595089, 0.636164, -0.491084,
		0.564069, 0.765885, 0.308619,
		27.356882, 33.003765, 28.345551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084085, 32.955643, 27.529058>,  <26.962034, 32.467644, 28.129517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084085, 32.955643, 27.529058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384352, 33.017620, 27.785961>,  <27.564510, 33.054806, 27.940104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384352, 33.017620, 27.785961>,  <27.084085, 32.955643, 27.529058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384352, 33.017620, 27.785961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659155, -0.109547, -0.743985,
		-0.044917, 0.981831, -0.184364,
		0.750664, 0.154942, 0.642258,
		27.609550, 33.064102, 27.978640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482599, 33.636280, 27.461481>,  <27.084085, 32.955643, 27.529058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482599, 33.636280, 27.461481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.707787, 33.328388, 27.581875>,  <27.842899, 33.143654, 27.654110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.707787, 33.328388, 27.581875>,  <27.482599, 33.636280, 27.461481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707787, 33.328388, 27.581875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562960, 0.090509, -0.821513,
		0.605098, 0.631926, 0.484279,
		0.562967, -0.769725, 0.300983,
		27.876677, 33.097469, 27.672169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235550, 33.788452, 27.394703>,  <27.482599, 33.636280, 27.461481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235550, 33.788452, 27.394703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138145, 33.403164, 27.349270>,  <28.079702, 33.171989, 27.322010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138145, 33.403164, 27.349270>,  <28.235550, 33.788452, 27.394703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138145, 33.403164, 27.349270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545654, -0.039235, -0.837092,
		0.801851, -0.265818, 0.535141,
		-0.243511, -0.963224, -0.113584,
		28.065092, 33.114197, 27.315195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873669, 33.482513, 27.324896>,  <28.235550, 33.788452, 27.394703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873669, 33.482513, 27.324896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566032, 33.298824, 27.147083>,  <28.381451, 33.188610, 27.040396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566032, 33.298824, 27.147083>,  <28.873669, 33.482513, 27.324896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566032, 33.298824, 27.147083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566399, -0.167462, -0.806937,
		0.296125, -0.872392, 0.388899,
		-0.769091, -0.459226, -0.444533,
		28.335304, 33.161057, 27.013723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171591, 32.982327, 26.998346>,  <28.873669, 33.482513, 27.324896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171591, 32.982327, 26.998346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819839, 33.026592, 26.813112>,  <28.608788, 33.053150, 26.701973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819839, 33.026592, 26.813112>,  <29.171591, 32.982327, 26.998346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819839, 33.026592, 26.813112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467265, 0.013861, -0.884009,
		-0.091408, -0.993761, -0.063898,
		-0.879379, 0.110663, -0.463082,
		28.556026, 33.059792, 26.674187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213690, 32.663628, 26.318714>,  <29.171591, 32.982327, 26.998346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213690, 32.663628, 26.318714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.890842, 32.892574, 26.260817>,  <28.697134, 33.029942, 26.226078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.890842, 32.892574, 26.260817>,  <29.213690, 32.663628, 26.318714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890842, 32.892574, 26.260817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213642, 0.054601, -0.975385,
		-0.550378, -0.818175, -0.166351,
		-0.807119, 0.572370, -0.144745,
		28.648706, 33.064285, 26.217394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946835, 32.141399, 26.843784>,  <29.213690, 32.663628, 26.318714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946835, 32.141399, 26.843784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.734367, 31.903021, 27.084682>,  <28.606886, 31.759993, 27.229221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.734367, 31.903021, 27.084682>,  <28.946835, 32.141399, 26.843784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734367, 31.903021, 27.084682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058488, -0.734908, -0.675640,
		0.845244, -0.323655, 0.425217,
		-0.531170, -0.595950, 0.602247,
		28.575016, 31.724236, 27.265356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196972, 31.424940, 26.804350>,  <28.946835, 32.141399, 26.843784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196972, 31.424940, 26.804350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812250, 31.419493, 26.913712>,  <28.581417, 31.416224, 26.979328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812250, 31.419493, 26.913712>,  <29.196972, 31.424940, 26.804350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812250, 31.419493, 26.913712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130483, -0.855189, -0.501623,
		0.240642, -0.518137, 0.820747,
		-0.961803, -0.013618, 0.273403,
		28.523708, 31.415407, 26.995733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031933, 30.819660, 27.102566>,  <29.196972, 31.424940, 26.804350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031933, 30.819660, 27.102566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702225, 30.964653, 26.928585>,  <28.504400, 31.051649, 26.824196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702225, 30.964653, 26.928585>,  <29.031933, 30.819660, 27.102566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702225, 30.964653, 26.928585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169771, -0.891084, -0.420888,
		-0.540144, -0.273083, 0.796034,
		-0.824271, 0.362483, -0.434952,
		28.454943, 31.073399, 26.798100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368227, 30.808474, 27.838747>,  <29.031933, 30.819660, 27.102566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368227, 30.808474, 27.838747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492250, 31.171101, 27.953287>,  <29.566664, 31.388678, 28.022011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492250, 31.171101, 27.953287>,  <29.368227, 30.808474, 27.838747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492250, 31.171101, 27.953287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750444, 0.048458, 0.659155,
		0.583694, -0.419265, 0.695354,
		0.310056, 0.906569, 0.286351,
		29.585268, 31.443071, 28.039192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470306, 30.868797, 28.570107>,  <29.368227, 30.808474, 27.838747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470306, 30.868797, 28.570107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391712, 31.242916, 28.452387>,  <29.344557, 31.467388, 28.381756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391712, 31.242916, 28.452387>,  <29.470306, 30.868797, 28.570107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391712, 31.242916, 28.452387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689147, 0.081778, 0.719992,
		0.697474, 0.344282, 0.628490,
		-0.196483, 0.935298, -0.294299,
		29.332767, 31.523506, 28.364098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083248, 30.262407, 28.546415>,  <29.470306, 30.868797, 28.570107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083248, 30.262407, 28.546415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684225, 30.234810, 28.550793>,  <28.444811, 30.218250, 28.553419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684225, 30.234810, 28.550793>,  <29.083248, 30.262407, 28.546415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684225, 30.234810, 28.550793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004475, 0.219468, 0.975609,
		-0.069714, 0.973177, -0.219241,
		-0.997557, -0.068995, 0.010946,
		28.384958, 30.214111, 28.554077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747704, 30.884686, 28.793648>,  <29.083248, 30.262407, 28.546415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747704, 30.884686, 28.793648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527084, 30.561447, 28.876381>,  <28.394712, 30.367504, 28.926022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527084, 30.561447, 28.876381>,  <28.747704, 30.884686, 28.793648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527084, 30.561447, 28.876381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018770, 0.259920, 0.965448,
		-0.833933, 0.528607, -0.158526,
		-0.551547, -0.808094, 0.206834,
		28.361620, 30.319019, 28.938431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281496, 31.128384, 29.241982>,  <28.747704, 30.884686, 28.793648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281496, 31.128384, 29.241982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287504, 30.730803, 29.285496>,  <28.291109, 30.492254, 29.311604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287504, 30.730803, 29.285496>,  <28.281496, 31.128384, 29.241982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287504, 30.730803, 29.285496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116073, 0.106329, 0.987533,
		-0.993127, -0.027459, -0.113774,
		0.015019, -0.993951, 0.108785,
		28.292009, 30.432617, 29.318130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650829, 30.882408, 29.572639>,  <28.281496, 31.128384, 29.241982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650829, 30.882408, 29.572639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920765, 30.596209, 29.644918>,  <28.082727, 30.424488, 29.688286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920765, 30.596209, 29.644918>,  <27.650829, 30.882408, 29.572639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920765, 30.596209, 29.644918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118238, 0.136863, 0.983508,
		-0.728430, -0.685077, 0.007761,
		0.674841, -0.715499, 0.180698,
		28.123217, 30.381559, 29.699127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338669, 30.326689, 30.061195>,  <27.650829, 30.882408, 29.572639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338669, 30.326689, 30.061195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738110, 30.309334, 30.073257>,  <27.977774, 30.298922, 30.080494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738110, 30.309334, 30.073257>,  <27.338669, 30.326689, 30.061195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738110, 30.309334, 30.073257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030059, 0.002853, 0.999544,
		-0.043453, -0.999054, 0.001545,
		0.998603, -0.043387, 0.030155,
		28.037691, 30.296318, 30.082304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363684, 30.061821, 30.738594>,  <27.338669, 30.326689, 30.061195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363684, 30.061821, 30.738594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721352, 30.206520, 30.633064>,  <27.935951, 30.293339, 30.569746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721352, 30.206520, 30.633064>,  <27.363684, 30.061821, 30.738594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721352, 30.206520, 30.633064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088786, 0.434278, 0.896393,
		0.438863, -0.824940, 0.356192,
		0.894156, 0.361769, -0.263832,
		27.989601, 30.315044, 30.553917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840382, 29.804234, 31.245352>,  <27.363684, 30.061821, 30.738594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840382, 29.804234, 31.245352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020386, 30.120537, 31.079369>,  <28.128387, 30.310320, 30.979778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020386, 30.120537, 31.079369>,  <27.840382, 29.804234, 31.245352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020386, 30.120537, 31.079369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226987, 0.348120, 0.909554,
		0.863694, -0.503499, -0.022835,
		0.450010, 0.790760, -0.414957,
		28.155390, 30.357765, 30.954882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426365, 29.923538, 31.660210>,  <27.840382, 29.804234, 31.245352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426365, 29.923538, 31.660210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392429, 30.274357, 31.471069>,  <28.372068, 30.484848, 31.357586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392429, 30.274357, 31.471069>,  <28.426365, 29.923538, 31.660210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392429, 30.274357, 31.471069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305072, 0.474636, 0.825622,
		0.948543, -0.074206, -0.307831,
		-0.084841, 0.877049, -0.472851,
		28.366978, 30.537472, 31.329214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015762, 30.369926, 31.893053>,  <28.426365, 29.923538, 31.660210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015762, 30.369926, 31.893053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755489, 30.631266, 31.738264>,  <28.599325, 30.788071, 31.645391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755489, 30.631266, 31.738264>,  <29.015762, 30.369926, 31.893053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755489, 30.631266, 31.738264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371620, 0.718397, 0.588051,
		0.662202, 0.238828, -0.710246,
		-0.650682, 0.653350, -0.386971,
		28.560286, 30.827271, 31.622173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387299, 31.011740, 31.750507>,  <29.015762, 30.369926, 31.893053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387299, 31.011740, 31.750507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001619, 31.117668, 31.744974>,  <28.770212, 31.181225, 31.741653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001619, 31.117668, 31.744974>,  <29.387299, 31.011740, 31.750507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001619, 31.117668, 31.744974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195396, 0.744758, 0.638088,
		0.179281, 0.612540, -0.769840,
		-0.964199, 0.264821, -0.013833,
		28.712360, 31.197115, 31.740824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.394739, 31.708933, 31.695807>,  <29.387299, 31.011740, 31.750507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.394739, 31.708933, 31.695807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037800, 31.611189, 31.847595>,  <28.823635, 31.552544, 31.938669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037800, 31.611189, 31.847595>,  <29.394739, 31.708933, 31.695807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037800, 31.611189, 31.847595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067579, 0.758949, 0.647634,
		-0.446257, 0.603560, -0.660734,
		-0.892350, -0.244359, 0.379474,
		28.770096, 31.537882, 31.961437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019915, 32.330669, 31.863184>,  <29.394739, 31.708933, 31.695807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019915, 32.330669, 31.863184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828606, 32.060574, 32.087791>,  <28.713820, 31.898516, 32.222557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828606, 32.060574, 32.087791>,  <29.019915, 32.330669, 31.863184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828606, 32.060574, 32.087791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136653, 0.688823, 0.711933,
		-0.867515, 0.263765, -0.421719,
		-0.478272, -0.675241, 0.561520,
		28.685123, 31.858002, 32.256248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497023, 32.787624, 32.149513>,  <29.019915, 32.330669, 31.863184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.497023, 32.787624, 32.149513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550356, 32.460110, 32.372875>,  <28.582355, 32.263603, 32.506893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550356, 32.460110, 32.372875>,  <28.497023, 32.787624, 32.149513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550356, 32.460110, 32.372875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033851, 0.566870, 0.823112,
		-0.990493, -0.090846, 0.103299,
		0.133333, -0.818783, 0.558405,
		28.590357, 32.214474, 32.540398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107075, 32.927902, 32.734650>,  <28.497023, 32.787624, 32.149513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107075, 32.927902, 32.734650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346561, 32.632359, 32.858349>,  <28.490253, 32.455032, 32.932568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346561, 32.632359, 32.858349>,  <28.107075, 32.927902, 32.734650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346561, 32.632359, 32.858349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140955, 0.477260, 0.867383,
		-0.788462, -0.475725, 0.389888,
		0.598714, -0.738856, 0.309246,
		28.526176, 32.410702, 32.951122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912489, 32.823460, 33.520020>,  <28.107075, 32.927902, 32.734650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912489, 32.823460, 33.520020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271170, 32.652199, 33.475105>,  <28.486378, 32.549442, 33.448158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271170, 32.652199, 33.475105>,  <27.912489, 32.823460, 33.520020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271170, 32.652199, 33.475105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238445, 0.253523, 0.937481,
		-0.372922, -0.867415, 0.329426,
		0.896702, -0.428157, -0.112287,
		28.540180, 32.523750, 33.441418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988686, 32.366585, 34.080517>,  <27.912489, 32.823460, 33.520020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988686, 32.366585, 34.080517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364664, 32.437153, 33.963638>,  <28.590250, 32.479492, 33.893513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364664, 32.437153, 33.963638>,  <27.988686, 32.366585, 34.080517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364664, 32.437153, 33.963638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272040, 0.129829, 0.953488,
		0.206151, -0.975715, 0.074039,
		0.939945, 0.176421, -0.292198,
		28.646648, 32.490078, 33.875980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334290, 32.142975, 34.634003>,  <27.988686, 32.366585, 34.080517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334290, 32.142975, 34.634003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624973, 32.362541, 34.468792>,  <28.799383, 32.494282, 34.369667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624973, 32.362541, 34.468792>,  <28.334290, 32.142975, 34.634003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624973, 32.362541, 34.468792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346253, 0.226588, 0.910366,
		0.593301, -0.804580, -0.025400,
		0.726707, 0.548916, -0.413023,
		28.842985, 32.527214, 34.344887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983381, 31.976318, 35.029896>,  <28.334290, 32.142975, 34.634003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983381, 31.976318, 35.029896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032711, 32.327354, 34.844585>,  <29.062309, 32.537975, 34.733398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032711, 32.327354, 34.844585>,  <28.983381, 31.976318, 35.029896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032711, 32.327354, 34.844585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160462, 0.443064, 0.882013,
		0.979307, -0.183113, -0.086178,
		0.123326, 0.877590, -0.463278,
		29.069708, 32.590630, 34.705601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558651, 32.304993, 35.316517>,  <28.983381, 31.976318, 35.029896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558651, 32.304993, 35.316517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312090, 32.583679, 35.169746>,  <29.164152, 32.750889, 35.081684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312090, 32.583679, 35.169746>,  <29.558651, 32.304993, 35.316517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312090, 32.583679, 35.169746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093818, 0.527642, 0.844270,
		0.781821, 0.485988, -0.390605,
		-0.616405, 0.696713, -0.366927,
		29.127169, 32.792694, 35.059669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795624, 32.910370, 35.649258>,  <29.558651, 32.304993, 35.316517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795624, 32.910370, 35.649258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451124, 33.030956, 35.485615>,  <29.244425, 33.103306, 35.387428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451124, 33.030956, 35.485615>,  <29.795624, 32.910370, 35.649258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451124, 33.030956, 35.485615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033438, 0.769683, 0.637550,
		0.507082, 0.562770, -0.652808,
		-0.861249, 0.301461, -0.409110,
		29.192749, 33.121395, 35.362881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882177, 33.597198, 35.489811>,  <29.795624, 32.910370, 35.649258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882177, 33.597198, 35.489811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.494150, 33.514771, 35.541191>,  <29.261333, 33.465313, 35.572018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.494150, 33.514771, 35.541191>,  <29.882177, 33.597198, 35.489811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.494150, 33.514771, 35.541191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061386, 0.719900, 0.691358,
		-0.234940, 0.662780, -0.711003,
		-0.970070, -0.206073, 0.128448,
		29.203129, 33.452950, 35.579727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515141, 34.201187, 35.440090>,  <29.882177, 33.597198, 35.489811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515141, 34.201187, 35.440090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284285, 33.967262, 35.668091>,  <29.145771, 33.826908, 35.804890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284285, 33.967262, 35.668091>,  <29.515141, 34.201187, 35.440090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284285, 33.967262, 35.668091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065243, 0.728765, 0.681649,
		-0.814034, 0.356219, -0.458755,
		-0.577141, -0.584816, 0.569999,
		29.111143, 33.791817, 35.839088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113598, 34.648232, 35.688492>,  <29.515141, 34.201187, 35.440090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113598, 34.648232, 35.688492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.110508, 34.328262, 35.928513>,  <29.108654, 34.136280, 36.072525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.110508, 34.328262, 35.928513>,  <29.113598, 34.648232, 35.688492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110508, 34.328262, 35.928513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168722, 0.592505, 0.787700,
		-0.985633, -0.095158, -0.139541,
		-0.007723, -0.799927, 0.600048,
		29.108191, 34.088284, 36.108528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157148, 35.294231, 35.699188>,  <29.113598, 34.648232, 35.688492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157148, 35.294231, 35.699188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204105, 35.021442, 35.987946>,  <29.232281, 34.857769, 36.161201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204105, 35.021442, 35.987946>,  <29.157148, 35.294231, 35.699188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204105, 35.021442, 35.987946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984592, -0.014941, -0.174227,
		0.129603, 0.731228, 0.669708,
		0.117393, -0.681970, 0.721898,
		29.239323, 34.816853, 36.204514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940073, 35.564880, 36.331577>,  <29.157148, 35.294231, 35.699188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940073, 35.564880, 36.331577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071377, 35.643867, 36.701065>,  <29.150158, 35.691257, 36.922756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071377, 35.643867, 36.701065>,  <28.940073, 35.564880, 36.331577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071377, 35.643867, 36.701065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938071, -0.182823, -0.294276,
		0.110768, 0.963111, -0.245248,
		0.328258, 0.197464, 0.923718,
		29.169855, 35.703106, 36.978180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639095, 36.025005, 36.255344>,  <28.940073, 35.564880, 36.331577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639095, 36.025005, 36.255344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598606, 35.755806, 36.548416>,  <29.574312, 35.594284, 36.724258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598606, 35.755806, 36.548416>,  <29.639095, 36.025005, 36.255344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598606, 35.755806, 36.548416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806794, -0.486438, -0.335353,
		0.582097, 0.557180, 0.592211,
		-0.101222, -0.673000, 0.732683,
		29.568239, 35.553905, 36.768223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279190, 35.946564, 36.748932>,  <29.639095, 36.025005, 36.255344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279190, 35.946564, 36.748932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077944, 35.601143, 36.735313>,  <29.957195, 35.393890, 36.727142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077944, 35.601143, 36.735313>,  <30.279190, 35.946564, 36.748932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077944, 35.601143, 36.735313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839205, -0.478766, -0.257912,
		0.206420, -0.158330, 0.965569,
		-0.503116, -0.863548, -0.034044,
		29.927010, 35.342079, 36.725101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617262, 35.385422, 37.138248>,  <30.279190, 35.946564, 36.748932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617262, 35.385422, 37.138248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390425, 35.227547, 36.849075>,  <30.254322, 35.132824, 36.675571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390425, 35.227547, 36.849075>,  <30.617262, 35.385422, 37.138248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390425, 35.227547, 36.849075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686366, -0.711642, -0.149889,
		-0.455310, -0.581196, 0.674466,
		-0.567093, -0.394685, -0.722931,
		30.220297, 35.109142, 36.632195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165880, 35.895397, 37.382660>,  <30.617262, 35.385422, 37.138248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165880, 35.895397, 37.382660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396523, 35.568699, 37.391117>,  <31.534908, 35.372681, 37.396191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396523, 35.568699, 37.391117>,  <31.165880, 35.895397, 37.382660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396523, 35.568699, 37.391117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124217, 0.113207, 0.985776,
		-0.807524, -0.565779, 0.166730,
		0.576606, -0.816749, 0.021139,
		31.569504, 35.323673, 37.397457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982376, 35.495594, 37.907803>,  <31.165880, 35.895397, 37.382660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982376, 35.495594, 37.907803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353834, 35.352299, 37.869251>,  <31.576708, 35.266323, 37.846119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353834, 35.352299, 37.869251>,  <30.982376, 35.495594, 37.907803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353834, 35.352299, 37.869251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139768, 0.097205, 0.985401,
		-0.343636, -0.928558, 0.140339,
		0.928644, -0.358234, -0.096380,
		31.632427, 35.244827, 37.840336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060553, 35.150372, 38.480068>,  <30.982376, 35.495594, 37.907803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060553, 35.150372, 38.480068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431311, 35.228951, 38.352150>,  <31.653767, 35.276100, 38.275398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431311, 35.228951, 38.352150>,  <31.060553, 35.150372, 38.480068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431311, 35.228951, 38.352150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288948, 0.170265, 0.942082,
		0.239525, -0.965617, 0.101053,
		0.926896, 0.196453, -0.319796,
		31.709379, 35.287888, 38.256210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537104, 34.672882, 38.854599>,  <31.060553, 35.150372, 38.480068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537104, 34.672882, 38.854599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731661, 34.993458, 38.715393>,  <31.848394, 35.185802, 38.631870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731661, 34.993458, 38.715393>,  <31.537104, 34.672882, 38.854599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731661, 34.993458, 38.715393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236231, 0.262850, 0.935470,
		0.841199, -0.537219, -0.061477,
		0.486394, 0.801440, -0.348017,
		31.877579, 35.233891, 38.610989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079548, 34.672283, 39.297256>,  <31.537104, 34.672882, 38.854599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079548, 34.672283, 39.297256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104755, 35.041538, 39.145546>,  <32.119881, 35.263092, 39.054520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104755, 35.041538, 39.145546>,  <32.079548, 34.672283, 39.297256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104755, 35.041538, 39.145546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416250, 0.321083, 0.850671,
		0.907064, -0.211483, -0.364020,
		0.063022, 0.923136, -0.379272,
		32.123661, 35.318478, 39.031765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731003, 34.864700, 39.326542>,  <32.079548, 34.672283, 39.297256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731003, 34.864700, 39.326542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544899, 35.218754, 39.329784>,  <32.433235, 35.431187, 39.331730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544899, 35.218754, 39.329784>,  <32.731003, 34.864700, 39.326542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544899, 35.218754, 39.329784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278256, 0.137556, 0.950606,
		0.840300, 0.444538, -0.310294,
		-0.465263, 0.885135, 0.008108,
		32.405319, 35.484295, 39.332218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161350, 35.349216, 39.579937>,  <32.731003, 34.864700, 39.326542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161350, 35.349216, 39.579937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809460, 35.533424, 39.627266>,  <32.598324, 35.643948, 39.655663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809460, 35.533424, 39.627266>,  <33.161350, 35.349216, 39.579937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809460, 35.533424, 39.627266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213728, 0.160703, 0.963584,
		0.424731, 0.872983, -0.239800,
		-0.879729, 0.460516, 0.118325,
		32.545540, 35.671577, 39.662762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300007, 35.967606, 39.853397>,  <33.161350, 35.349216, 39.579937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300007, 35.967606, 39.853397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908478, 35.995094, 39.930538>,  <32.673561, 36.011585, 39.976822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908478, 35.995094, 39.930538>,  <33.300007, 35.967606, 39.853397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908478, 35.995094, 39.930538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204527, 0.286298, 0.936057,
		0.009111, 0.955673, -0.294289,
		-0.978819, 0.068718, 0.192852,
		32.614834, 36.015709, 39.988396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053413, 36.729752, 40.185257>,  <33.300007, 35.967606, 39.853397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053413, 36.729752, 40.185257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793377, 36.452980, 40.310867>,  <32.637356, 36.286915, 40.386234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793377, 36.452980, 40.310867>,  <33.053413, 36.729752, 40.185257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793377, 36.452980, 40.310867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015395, 0.425182, 0.904977,
		-0.759703, 0.583480, -0.287057,
		-0.650088, -0.691933, 0.314029,
		32.598351, 36.245399, 40.405075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581158, 37.132153, 40.496330>,  <33.053413, 36.729752, 40.185257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581158, 37.132153, 40.496330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538887, 36.765083, 40.649544>,  <32.513527, 36.544842, 40.741470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538887, 36.765083, 40.649544>,  <32.581158, 37.132153, 40.496330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538887, 36.765083, 40.649544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140719, 0.367512, 0.919311,
		-0.984394, 0.151047, 0.090298,
		-0.105674, -0.917671, 0.383031,
		32.507183, 36.489780, 40.764454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410110, 37.372829, 41.108829>,  <32.581158, 37.132153, 40.496330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410110, 37.372829, 41.108829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431187, 36.976227, 41.156380>,  <32.443832, 36.738266, 41.184910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431187, 36.976227, 41.156380>,  <32.410110, 37.372829, 41.108829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431187, 36.976227, 41.156380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187227, 0.126735, 0.974107,
		-0.980902, -0.029073, 0.192315,
		0.052693, -0.991511, 0.118872,
		32.446995, 36.678772, 41.192039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877909, 37.100998, 41.637093>,  <32.410110, 37.372829, 41.108829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877909, 37.100998, 41.637093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194534, 36.856712, 41.628532>,  <32.384510, 36.710140, 41.623394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194534, 36.856712, 41.628532>,  <31.877909, 37.100998, 41.637093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194534, 36.856712, 41.628532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113672, 0.112739, 0.987101,
		-0.600423, -0.783785, 0.158661,
		0.791562, -0.610713, -0.021403,
		32.432003, 36.673500, 41.622112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671932, 36.635521, 42.106583>,  <31.877909, 37.100998, 41.637093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671932, 36.635521, 42.106583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067844, 36.617142, 42.052578>,  <32.305389, 36.606113, 42.020176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067844, 36.617142, 42.052578>,  <31.671932, 36.635521, 42.106583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067844, 36.617142, 42.052578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140095, 0.136151, 0.980733,
		-0.026683, -0.989622, 0.141196,
		0.989779, -0.045950, -0.135008,
		32.364777, 36.603355, 42.012077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863960, 36.113461, 42.481102>,  <31.671932, 36.635521, 42.106583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863960, 36.113461, 42.481102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209953, 36.303421, 42.416264>,  <32.417549, 36.417397, 42.377361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209953, 36.303421, 42.416264>,  <31.863960, 36.113461, 42.481102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209953, 36.303421, 42.416264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189478, -0.009990, 0.981834,
		0.464654, -0.879983, -0.098625,
		0.864982, 0.474900, -0.162096,
		32.469448, 36.445892, 42.367634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473351, 35.669403, 42.717106>,  <31.863960, 36.113461, 42.481102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473351, 35.669403, 42.717106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582031, 36.054134, 42.730118>,  <32.647240, 36.284973, 42.737926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582031, 36.054134, 42.730118>,  <32.473351, 35.669403, 42.717106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582031, 36.054134, 42.730118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454194, -0.157957, 0.876788,
		0.848460, -0.223452, -0.479776,
		0.271704, 0.961831, 0.032529,
		32.663544, 36.342682, 42.739876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079060, 35.647449, 43.080956>,  <32.473351, 35.669403, 42.717106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079060, 35.647449, 43.080956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957886, 36.027214, 43.114071>,  <32.885181, 36.255074, 43.133942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957886, 36.027214, 43.114071>,  <33.079060, 35.647449, 43.080956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957886, 36.027214, 43.114071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238443, -0.008604, 0.971118,
		0.922700, 0.313927, -0.223773,
		-0.302935, 0.949408, 0.082793,
		32.867004, 36.312035, 43.138908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598423, 36.006172, 43.549931>,  <33.079060, 35.647449, 43.080956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598423, 36.006172, 43.549931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285583, 36.255390, 43.545162>,  <33.097881, 36.404919, 43.542301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285583, 36.255390, 43.545162>,  <33.598423, 36.006172, 43.549931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285583, 36.255390, 43.545162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030350, 0.057187, 0.997902,
		0.622417, 0.780095, -0.063635,
		-0.782097, 0.623042, -0.011919,
		33.050953, 36.442303, 43.541588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724705, 36.600182, 44.039310>,  <33.598423, 36.006172, 43.549931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724705, 36.600182, 44.039310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327545, 36.576340, 43.998127>,  <33.089249, 36.562035, 43.973415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327545, 36.576340, 43.998127>,  <33.724705, 36.600182, 44.039310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327545, 36.576340, 43.998127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112421, 0.186981, 0.975910,
		-0.038917, 0.980554, -0.192353,
		-0.992898, -0.059604, -0.102958,
		33.029675, 36.558460, 43.967239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438438, 37.173000, 44.430904>,  <33.724705, 36.600182, 44.039310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438438, 37.173000, 44.430904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129128, 36.927605, 44.366802>,  <32.943542, 36.780369, 44.328342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129128, 36.927605, 44.366802>,  <33.438438, 37.173000, 44.430904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129128, 36.927605, 44.366802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292550, 0.120963, 0.948569,
		-0.562550, 0.780385, -0.273013,
		-0.773274, -0.613487, -0.160254,
		32.897144, 36.743557, 44.318726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918621, 37.523075, 44.896851>,  <33.438438, 37.173000, 44.430904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918621, 37.523075, 44.896851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791664, 37.152027, 44.818077>,  <32.715488, 36.929398, 44.770813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791664, 37.152027, 44.818077>,  <32.918621, 37.523075, 44.896851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791664, 37.152027, 44.818077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371078, -0.069615, 0.925989,
		-0.872675, 0.366982, -0.322123,
		-0.317397, -0.927620, -0.196930,
		32.696445, 36.873741, 44.758999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159336, 37.503952, 44.960136>,  <32.918621, 37.523075, 44.896851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159336, 37.503952, 44.960136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310680, 37.136204, 45.003204>,  <32.401489, 36.915554, 45.029045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310680, 37.136204, 45.003204>,  <32.159336, 37.503952, 44.960136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310680, 37.136204, 45.003204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490471, -0.100471, 0.865647,
		-0.785035, -0.380339, -0.488940,
		0.378364, -0.919374, 0.107672,
		32.424191, 36.860394, 45.035507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679651, 37.064522, 45.228123>,  <32.159336, 37.503952, 44.960136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679651, 37.064522, 45.228123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005447, 36.855198, 45.328327>,  <32.200924, 36.729603, 45.388451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005447, 36.855198, 45.328327>,  <31.679651, 37.064522, 45.228123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005447, 36.855198, 45.328327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425281, -0.244806, 0.871324,
		-0.394647, -0.816220, -0.421946,
		0.814487, -0.523311, 0.250511,
		32.249794, 36.698204, 45.403481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447912, 36.479534, 45.407070>,  <31.679651, 37.064522, 45.228123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447912, 36.479534, 45.407070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808147, 36.498692, 45.579880>,  <32.024288, 36.510185, 45.683567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808147, 36.498692, 45.579880>,  <31.447912, 36.479534, 45.407070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808147, 36.498692, 45.579880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377619, -0.406036, 0.832189,
		0.215271, -0.912601, -0.347588,
		0.900590, 0.047891, 0.432023,
		32.078323, 36.513058, 45.709488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562981, 35.844906, 45.750568>,  <31.447912, 36.479534, 45.407070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562981, 35.844906, 45.750568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836504, 36.084011, 45.917942>,  <32.000618, 36.227474, 46.018364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836504, 36.084011, 45.917942>,  <31.562981, 35.844906, 45.750568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836504, 36.084011, 45.917942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210800, -0.387162, 0.897590,
		0.698550, -0.701983, -0.138735,
		0.683806, 0.597766, 0.418431,
		32.041645, 36.263340, 46.043472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434885, 35.639454, 46.390873>,  <31.562981, 35.844906, 45.750568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434885, 35.639454, 46.390873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678728, 35.954346, 46.428055>,  <31.825035, 36.143280, 46.450363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678728, 35.954346, 46.428055>,  <31.434885, 35.639454, 46.390873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678728, 35.954346, 46.428055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152595, 0.001467, 0.988288,
		0.777876, -0.616655, 0.121022,
		0.609610, 0.787232, 0.092957,
		31.861610, 36.190514, 46.455940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022549, 35.525425, 46.988773>,  <31.434885, 35.639454, 46.390873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022549, 35.525425, 46.988773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955788, 35.917088, 46.942486>,  <31.915731, 36.152084, 46.914715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955788, 35.917088, 46.942486>,  <32.022549, 35.525425, 46.988773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955788, 35.917088, 46.942486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088977, 0.131841, 0.987270,
		0.981951, 0.154480, -0.109127,
		-0.166900, 0.979160, -0.115716,
		31.905718, 36.210835, 46.907772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570419, 35.829689, 47.391514>,  <32.022549, 35.525425, 46.988773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570419, 35.829689, 47.391514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285290, 36.106384, 47.345253>,  <32.114212, 36.272400, 47.317497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285290, 36.106384, 47.345253>,  <32.570419, 35.829689, 47.391514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285290, 36.106384, 47.345253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082574, 0.246536, 0.965609,
		0.696460, 0.678764, -0.232857,
		-0.712828, 0.691737, -0.115654,
		32.071442, 36.313904, 47.310558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865131, 36.408596, 47.571106>,  <32.570419, 35.829689, 47.391514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865131, 36.408596, 47.571106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474564, 36.480846, 47.618397>,  <32.240223, 36.524197, 47.646770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474564, 36.480846, 47.618397>,  <32.865131, 36.408596, 47.571106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474564, 36.480846, 47.618397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140155, 0.113837, 0.983564,
		0.164200, 0.976942, -0.136469,
		-0.976420, 0.180628, 0.118231,
		32.181637, 36.535034, 47.653866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733345, 37.071648, 47.989388>,  <32.865131, 36.408596, 47.571106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733345, 37.071648, 47.989388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392353, 36.862911, 48.001781>,  <32.187759, 36.737667, 48.009220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392353, 36.862911, 48.001781>,  <32.733345, 37.071648, 47.989388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392353, 36.862911, 48.001781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070956, 0.174234, 0.982144,
		-0.517927, 0.835057, -0.185558,
		-0.852477, -0.521846, 0.030988,
		32.136608, 36.706356, 48.011078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219521, 37.446980, 48.417431>,  <32.733345, 37.071648, 47.989388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219521, 37.446980, 48.417431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108097, 37.062813, 48.418686>,  <32.041245, 36.832314, 48.419437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108097, 37.062813, 48.418686>,  <32.219521, 37.446980, 48.417431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108097, 37.062813, 48.418686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189775, 0.058242, 0.980099,
		-0.941483, 0.272421, -0.198487,
		-0.278560, -0.960414, 0.003135,
		32.024529, 36.774689, 48.419628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685766, 37.402451, 48.962795>,  <32.219521, 37.446980, 48.417431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685766, 37.402451, 48.962795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773388, 37.017021, 48.901428>,  <31.825960, 36.785763, 48.864609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773388, 37.017021, 48.901428>,  <31.685766, 37.402451, 48.962795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773388, 37.017021, 48.901428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026279, -0.151354, 0.988130,
		-0.975359, -0.220485, -0.007833,
		0.219053, -0.963576, -0.153418,
		31.839104, 36.727947, 48.855404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182076, 37.056946, 49.401226>,  <31.685766, 37.402451, 48.962795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182076, 37.056946, 49.401226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496073, 36.818855, 49.332535>,  <31.684471, 36.676003, 49.291321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496073, 36.818855, 49.332535>,  <31.182076, 37.056946, 49.401226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496073, 36.818855, 49.332535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083072, -0.173564, 0.981313,
		-0.613911, -0.784589, -0.086799,
		0.784992, -0.595228, -0.171730,
		31.731571, 36.640285, 49.281017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121859, 36.406036, 49.715431>,  <31.182076, 37.056946, 49.401226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121859, 36.406036, 49.715431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518936, 36.427170, 49.672039>,  <31.757183, 36.439850, 49.646004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518936, 36.427170, 49.672039>,  <31.121859, 36.406036, 49.715431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518936, 36.427170, 49.672039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111355, -0.054896, 0.992263,
		0.046470, -0.997093, -0.060378,
		0.992694, 0.052834, -0.108480,
		31.816744, 36.443020, 49.639496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223797, 35.939499, 50.170715>,  <31.121859, 36.406036, 49.715431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223797, 35.939499, 50.170715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570732, 36.125690, 50.100220>,  <31.778893, 36.237404, 50.057922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570732, 36.125690, 50.100220>,  <31.223797, 35.939499, 50.170715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570732, 36.125690, 50.100220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351839, -0.322946, 0.878587,
		0.352047, -0.824037, -0.443876,
		0.867336, 0.465477, -0.176236,
		31.830933, 36.265335, 50.047348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714296, 35.472321, 50.420380>,  <31.223797, 35.939499, 50.170715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714296, 35.472321, 50.420380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918858, 35.813484, 50.378407>,  <32.041595, 36.018181, 50.353222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918858, 35.813484, 50.378407>,  <31.714296, 35.472321, 50.420380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918858, 35.813484, 50.378407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655635, -0.308322, 0.689261,
		0.555526, -0.421286, -0.716875,
		0.511404, 0.852910, -0.104929,
		32.072277, 36.069359, 50.346928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463284, 35.299915, 50.470322>,  <31.714296, 35.472321, 50.420380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463284, 35.299915, 50.470322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403030, 35.686489, 50.553566>,  <32.366879, 35.918434, 50.603512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403030, 35.686489, 50.553566>,  <32.463284, 35.299915, 50.470322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403030, 35.686489, 50.553566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477587, -0.113175, 0.871265,
		0.865575, 0.230635, -0.444509,
		-0.150637, 0.966436, 0.208110,
		32.357838, 35.976421, 50.615997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151470, 35.511841, 50.654453>,  <32.463284, 35.299915, 50.470322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151470, 35.511841, 50.654453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877003, 35.755981, 50.812771>,  <32.712322, 35.902466, 50.907761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877003, 35.755981, 50.812771>,  <33.151470, 35.511841, 50.654453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877003, 35.755981, 50.812771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517838, 0.027702, 0.855030,
		0.510901, 0.791649, -0.335069,
		-0.686166, 0.610347, 0.395793,
		32.671154, 35.939087, 50.931507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499470, 36.100613, 51.062752>,  <33.151470, 35.511841, 50.654453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499470, 36.100613, 51.062752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126438, 36.047363, 51.196964>,  <32.902618, 36.015415, 51.277493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126438, 36.047363, 51.196964>,  <33.499470, 36.100613, 51.062752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126438, 36.047363, 51.196964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343938, -0.045528, 0.937888,
		-0.109579, 0.990053, 0.088244,
		-0.932577, -0.133124, 0.335528,
		32.846664, 36.007427, 51.297623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406689, 36.646885, 51.517860>,  <33.499470, 36.100613, 51.062752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406689, 36.646885, 51.517860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135632, 36.366222, 51.605942>,  <32.973000, 36.197826, 51.658791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135632, 36.366222, 51.605942>,  <33.406689, 36.646885, 51.517860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135632, 36.366222, 51.605942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226297, 0.085946, 0.970259,
		-0.699711, 0.707316, 0.100542,
		-0.677638, -0.701654, 0.220201,
		32.932339, 36.155727, 51.672001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173645, 36.839539, 52.152843>,  <33.406689, 36.646885, 51.517860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173645, 36.839539, 52.152843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050587, 36.459904, 52.125732>,  <32.976749, 36.232124, 52.109467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050587, 36.459904, 52.125732>,  <33.173645, 36.839539, 52.152843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050587, 36.459904, 52.125732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017326, -0.076811, 0.996895,
		-0.951342, 0.305519, 0.040075,
		-0.307648, -0.949083, -0.067780,
		32.958294, 36.175179, 52.105400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646095, 36.792862, 52.581745>,  <33.173645, 36.839539, 52.152843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646095, 36.792862, 52.581745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765270, 36.413563, 52.537815>,  <32.836777, 36.185986, 52.511459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765270, 36.413563, 52.537815>,  <32.646095, 36.792862, 52.581745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765270, 36.413563, 52.537815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070687, -0.092816, 0.993171,
		-0.951963, -0.303670, 0.039374,
		0.297942, -0.948246, -0.109823,
		32.854652, 36.129089, 52.504868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227821, 36.449219, 53.176807>,  <32.646095, 36.792862, 52.581745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227821, 36.449219, 53.176807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520706, 36.194675, 53.079716>,  <32.696438, 36.041950, 53.021461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520706, 36.194675, 53.079716>,  <32.227821, 36.449219, 53.176807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520706, 36.194675, 53.079716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314532, -0.000166, 0.949247,
		-0.604102, -0.771393, 0.200034,
		0.732209, -0.636359, -0.242728,
		32.740368, 36.003769, 53.006897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165424, 35.714226, 53.440060>,  <32.227821, 36.449219, 53.176807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165424, 35.714226, 53.440060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548283, 35.827526, 53.415947>,  <32.778000, 35.895508, 53.401478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548283, 35.827526, 53.415947>,  <32.165424, 35.714226, 53.440060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548283, 35.827526, 53.415947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016531, 0.154378, 0.987874,
		0.289122, -0.946539, 0.143080,
		0.957150, 0.283251, -0.060281,
		32.835426, 35.912502, 53.397861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505199, 35.364937, 53.885387>,  <32.165424, 35.714226, 53.440060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505199, 35.364937, 53.885387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689362, 35.714657, 53.823910>,  <32.799858, 35.924488, 53.787022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689362, 35.714657, 53.823910>,  <32.505199, 35.364937, 53.885387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689362, 35.714657, 53.823910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072337, 0.209512, 0.975127,
		0.884757, -0.437836, 0.159705,
		0.460405, 0.874302, -0.153696,
		32.827484, 35.976948, 53.777802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084282, 35.497753, 54.298122>,  <32.505199, 35.364937, 53.885387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084282, 35.497753, 54.298122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953667, 35.867256, 54.218079>,  <32.875298, 36.088959, 54.170052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953667, 35.867256, 54.218079>,  <33.084282, 35.497753, 54.298122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953667, 35.867256, 54.218079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035800, 0.223653, 0.974011,
		0.944507, 0.310885, -0.106101,
		-0.326536, 0.923758, -0.200112,
		32.855705, 36.144382, 54.158047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984211, 35.162106, 54.879341>,  <33.084282, 35.497753, 54.298122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984211, 35.162106, 54.879341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320156, 35.352226, 54.984203>,  <33.521721, 35.466297, 55.047119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320156, 35.352226, 54.984203>,  <32.984211, 35.162106, 54.879341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320156, 35.352226, 54.984203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498729, 0.485068, 0.718317,
		0.214256, -0.734028, 0.644436,
		0.839859, 0.475303, 0.262152,
		33.572113, 35.494816, 55.062847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278011, 34.856136, 55.401871>,  <32.984211, 35.162106, 54.879341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278011, 34.856136, 55.401871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309742, 35.254093, 55.376911>,  <33.328781, 35.492867, 55.361935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309742, 35.254093, 55.376911>,  <33.278011, 34.856136, 55.401871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309742, 35.254093, 55.376911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458243, 0.091985, 0.884054,
		0.885280, -0.041536, 0.463200,
		0.079327, 0.994894, -0.062399,
		33.333542, 35.552563, 55.358192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377911, 34.272240, 55.002647>,  <33.278011, 34.856136, 55.401871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377911, 34.272240, 55.002647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698730, 34.056282, 55.104809>,  <33.891224, 33.926708, 55.166107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698730, 34.056282, 55.104809>,  <33.377911, 34.272240, 55.002647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698730, 34.056282, 55.104809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476493, 0.320588, -0.818644,
		0.360099, 0.778293, 0.514382,
		0.802050, -0.539892, 0.255408,
		33.939346, 33.894314, 55.181431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946049, 34.607437, 54.964783>,  <33.377911, 34.272240, 55.002647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946049, 34.607437, 54.964783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048752, 34.223801, 54.917091>,  <34.110374, 33.993618, 54.888477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048752, 34.223801, 54.917091>,  <33.946049, 34.607437, 54.964783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048752, 34.223801, 54.917091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502342, 0.237824, -0.831320,
		0.825668, 0.153556, 0.542856,
		0.256758, -0.959093, -0.119226,
		34.125778, 33.936073, 54.881325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532215, 34.637959, 54.482883>,  <33.946049, 34.607437, 54.964783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532215, 34.637959, 54.482883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436752, 34.249657, 54.493362>,  <34.379475, 34.016678, 54.499649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436752, 34.249657, 54.493362>,  <34.532215, 34.637959, 54.482883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436752, 34.249657, 54.493362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406875, -0.124450, -0.904967,
		0.881759, -0.205313, 0.424675,
		-0.238652, -0.970752, 0.026198,
		34.365158, 33.958431, 54.501221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092884, 34.231144, 54.194603>,  <34.532215, 34.637959, 54.482883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092884, 34.231144, 54.194603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739967, 34.061893, 54.112118>,  <34.528217, 33.960342, 54.062626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739967, 34.061893, 54.112118>,  <35.092884, 34.231144, 54.194603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739967, 34.061893, 54.112118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246646, -0.042462, -0.968175,
		0.400901, -0.905077, 0.141826,
		-0.882295, -0.423123, -0.206211,
		34.475281, 33.934956, 54.050255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207691, 33.620419, 53.774212>,  <35.092884, 34.231144, 54.194603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207691, 33.620419, 53.774212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837799, 33.758831, 53.710796>,  <34.615864, 33.841877, 53.672749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837799, 33.758831, 53.710796>,  <35.207691, 33.620419, 53.774212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837799, 33.758831, 53.710796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146550, -0.060727, -0.987338,
		-0.351277, -0.936256, 0.005445,
		-0.924731, 0.346031, -0.158540,
		34.560379, 33.862640, 53.663235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986401, 33.143654, 53.337517>,  <35.207691, 33.620419, 53.774212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986401, 33.143654, 53.337517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746902, 33.461308, 53.295841>,  <34.603203, 33.651897, 53.270836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746902, 33.461308, 53.295841>,  <34.986401, 33.143654, 53.337517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746902, 33.461308, 53.295841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048474, -0.165778, -0.984971,
		-0.799469, -0.584699, 0.137753,
		-0.598748, 0.794131, -0.104192,
		34.567280, 33.699547, 53.264584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458271, 32.947483, 52.929665>,  <34.986401, 33.143654, 53.337517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458271, 32.947483, 52.929665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485928, 33.341778, 52.868282>,  <34.502522, 33.578354, 52.831455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485928, 33.341778, 52.868282>,  <34.458271, 32.947483, 52.929665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485928, 33.341778, 52.868282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122380, -0.144279, -0.981940,
		-0.990072, 0.086676, 0.110658,
		0.069145, 0.985734, -0.153454,
		34.506672, 33.637497, 52.822247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961288, 33.110813, 52.498348>,  <34.458271, 32.947483, 52.929665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961288, 33.110813, 52.498348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194984, 33.430954, 52.444530>,  <34.335201, 33.623039, 52.412239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194984, 33.430954, 52.444530>,  <33.961288, 33.110813, 52.498348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194984, 33.430954, 52.444530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059291, -0.123244, -0.990604,
		-0.809411, 0.586729, -0.024551,
		0.584242, 0.800350, -0.134542,
		34.370258, 33.671059, 52.404167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556461, 33.637314, 52.008392>,  <33.961288, 33.110813, 52.498348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556461, 33.637314, 52.008392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949261, 33.711655, 51.994946>,  <34.184940, 33.756260, 51.986877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949261, 33.711655, 51.994946>,  <33.556461, 33.637314, 52.008392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949261, 33.711655, 51.994946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032305, -0.010105, -0.999427,
		-0.186088, 0.982525, -0.003919,
		0.982002, 0.185855, -0.033621,
		34.243862, 33.767410, 51.984859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641029, 33.852451, 51.320854>,  <33.556461, 33.637314, 52.008392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641029, 33.852451, 51.320854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017975, 33.824623, 51.451767>,  <34.244141, 33.807926, 51.530315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017975, 33.824623, 51.451767>,  <33.641029, 33.852451, 51.320854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017975, 33.824623, 51.451767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326231, -0.026335, -0.944923,
		0.074355, 0.997230, -0.002121,
		0.942361, -0.069568, 0.327285,
		34.300682, 33.803753, 51.549953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088264, 34.306961, 50.845173>,  <33.641029, 33.852451, 51.320854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088264, 34.306961, 50.845173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324886, 34.020626, 50.993576>,  <34.466858, 33.848827, 51.082619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324886, 34.020626, 50.993576>,  <34.088264, 34.306961, 50.845173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324886, 34.020626, 50.993576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198279, -0.316869, -0.927512,
		0.781506, 0.622235, -0.045510,
		0.591552, -0.715833, 0.371012,
		34.502354, 33.805878, 51.104881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593449, 34.286652, 50.423805>,  <34.088264, 34.306961, 50.845173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593449, 34.286652, 50.423805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590023, 33.928078, 50.601040>,  <34.587967, 33.712933, 50.707378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590023, 33.928078, 50.601040>,  <34.593449, 34.286652, 50.423805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590023, 33.928078, 50.601040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245293, -0.431447, -0.868150,
		0.969411, 0.101247, 0.223587,
		-0.008569, -0.896439, 0.443085,
		34.587452, 33.659145, 50.733967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250042, 34.078556, 50.285629>,  <34.593449, 34.286652, 50.423805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250042, 34.078556, 50.285629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039742, 33.743565, 50.345245>,  <34.913563, 33.542568, 50.381016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039742, 33.743565, 50.345245>,  <35.250042, 34.078556, 50.285629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039742, 33.743565, 50.345245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028881, -0.192679, -0.980837,
		0.850150, -0.511369, 0.125488,
		-0.525748, -0.837482, 0.149037,
		34.882015, 33.492321, 50.389957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677425, 33.642513, 49.853756>,  <35.250042, 34.078556, 50.285629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677425, 33.642513, 49.853756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329708, 33.460819, 49.931732>,  <35.121078, 33.351803, 49.978519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329708, 33.460819, 49.931732>,  <35.677425, 33.642513, 49.853756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329708, 33.460819, 49.931732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010410, -0.377473, -0.925962,
		0.494188, -0.806962, 0.323406,
		-0.869293, -0.454233, 0.194943,
		35.068920, 33.324551, 49.990215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678101, 32.905613, 49.583286>,  <35.677425, 33.642513, 49.853756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678101, 32.905613, 49.583286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284569, 32.975094, 49.600739>,  <35.048450, 33.016781, 49.611210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284569, 32.975094, 49.600739>,  <35.678101, 32.905613, 49.583286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284569, 32.975094, 49.600739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143151, -0.616297, -0.774394,
		-0.107625, -0.768119, 0.631198,
		-0.983832, 0.173700, 0.043628,
		34.989418, 33.027203, 49.613827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373947, 32.270714, 49.376564>,  <35.678101, 32.905613, 49.583286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373947, 32.270714, 49.376564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091644, 32.549515, 49.325813>,  <34.922260, 32.716793, 49.295364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091644, 32.549515, 49.325813>,  <35.373947, 32.270714, 49.376564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091644, 32.549515, 49.325813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352037, -0.500445, -0.790965,
		-0.614795, -0.513565, 0.598563,
		-0.705760, 0.696998, -0.126877,
		34.879917, 32.758614, 49.287750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812756, 31.953142, 49.132042>,  <35.373947, 32.270714, 49.376564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812756, 31.953142, 49.132042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744972, 32.332546, 49.025002>,  <34.704304, 32.560188, 48.960777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744972, 32.332546, 49.025002>,  <34.812756, 31.953142, 49.132042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744972, 32.332546, 49.025002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240887, -0.303154, -0.921993,
		-0.955646, -0.091774, 0.279855,
		-0.169454, 0.948512, -0.267601,
		34.694138, 32.617100, 48.944721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159492, 32.025337, 48.760624>,  <34.812756, 31.953142, 49.132042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159492, 32.025337, 48.760624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377773, 32.334595, 48.631344>,  <34.508743, 32.520149, 48.553776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377773, 32.334595, 48.631344>,  <34.159492, 32.025337, 48.760624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377773, 32.334595, 48.631344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397944, -0.100327, -0.911907,
		-0.737458, 0.626249, 0.252918,
		0.545707, 0.773141, -0.323199,
		34.541485, 32.566536, 48.534386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712303, 32.508072, 48.259968>,  <34.159492, 32.025337, 48.760624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712303, 32.508072, 48.259968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091084, 32.609676, 48.181217>,  <34.318352, 32.670639, 48.133968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091084, 32.609676, 48.181217>,  <33.712303, 32.508072, 48.259968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091084, 32.609676, 48.181217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212016, 0.033381, -0.976696,
		-0.241520, 0.966625, 0.085465,
		0.946952, 0.254011, -0.196878,
		34.375168, 32.685879, 48.122154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695789, 32.956654, 47.742943>,  <33.712303, 32.508072, 48.259968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695789, 32.956654, 47.742943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082016, 32.858006, 47.709797>,  <34.313751, 32.798817, 47.689907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082016, 32.858006, 47.709797>,  <33.695789, 32.956654, 47.742943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082016, 32.858006, 47.709797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058714, 0.103741, -0.992870,
		0.253456, 0.963544, 0.085688,
		0.965564, -0.246617, -0.082867,
		34.371685, 32.784019, 47.684937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005844, 33.512501, 47.379639>,  <33.695789, 32.956654, 47.742943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005844, 33.512501, 47.379639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213428, 33.174580, 47.327511>,  <34.337978, 32.971825, 47.296234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213428, 33.174580, 47.327511>,  <34.005844, 33.512501, 47.379639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213428, 33.174580, 47.327511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163544, 0.051508, -0.985190,
		0.839006, 0.532590, -0.111432,
		0.518963, -0.844804, -0.130317,
		34.369118, 32.921139, 47.288414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295643, 33.601391, 46.671597>,  <34.005844, 33.512501, 47.379639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295643, 33.601391, 46.671597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299480, 33.214493, 46.773064>,  <34.301781, 32.982353, 46.833942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299480, 33.214493, 46.773064>,  <34.295643, 33.601391, 46.671597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299480, 33.214493, 46.773064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240327, -0.248470, -0.938353,
		0.970645, -0.051962, -0.234838,
		0.009591, -0.967245, 0.253664,
		34.302357, 32.924320, 46.849163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678104, 33.249668, 46.118908>,  <34.295643, 33.601391, 46.671597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678104, 33.249668, 46.118908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449184, 32.975632, 46.299179>,  <34.311832, 32.811211, 46.407341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449184, 32.975632, 46.299179>,  <34.678104, 33.249668, 46.118908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449184, 32.975632, 46.299179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341107, -0.300899, -0.890565,
		0.745731, -0.663404, -0.061485,
		-0.572303, -0.685095, 0.450681,
		34.277493, 32.770103, 46.434383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732437, 32.611088, 45.654125>,  <34.678104, 33.249668, 46.118908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732437, 32.611088, 45.654125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396507, 32.550774, 45.862724>,  <34.194950, 32.514584, 45.987885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396507, 32.550774, 45.862724>,  <34.732437, 32.611088, 45.654125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396507, 32.550774, 45.862724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371145, -0.541567, -0.754292,
		0.396160, -0.827024, 0.398859,
		-0.839827, -0.150786, 0.521493,
		34.144558, 32.505539, 46.019173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494358, 31.925455, 45.521069>,  <34.732437, 32.611088, 45.654125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494358, 31.925455, 45.521069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173935, 32.119995, 45.660652>,  <33.981682, 32.236717, 45.744400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173935, 32.119995, 45.660652>,  <34.494358, 31.925455, 45.521069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173935, 32.119995, 45.660652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545711, -0.353808, -0.759618,
		-0.245977, -0.798927, 0.548827,
		-0.801059, 0.486349, 0.348954,
		33.933617, 32.265900, 45.765339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015617, 31.462578, 45.294079>,  <34.494358, 31.925455, 45.521069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015617, 31.462578, 45.294079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786465, 31.765757, 45.418865>,  <33.648972, 31.947664, 45.493736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786465, 31.765757, 45.418865>,  <34.015617, 31.462578, 45.294079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786465, 31.765757, 45.418865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588856, -0.115853, -0.799892,
		-0.570132, -0.641948, 0.512691,
		-0.572885, 0.757946, 0.311964,
		33.614597, 31.993141, 45.512455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333893, 31.146112, 45.287247>,  <34.015617, 31.462578, 45.294079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333893, 31.146112, 45.287247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317974, 31.544304, 45.252739>,  <33.308422, 31.783218, 45.232037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317974, 31.544304, 45.252739>,  <33.333893, 31.146112, 45.287247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317974, 31.544304, 45.252739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539704, -0.094072, -0.836583,
		-0.840914, 0.013266, 0.541006,
		-0.039796, 0.995477, -0.086266,
		33.306034, 31.842947, 45.226860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594421, 31.361517, 44.955742>,  <33.333893, 31.146112, 45.287247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594421, 31.361517, 44.955742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817936, 31.690401, 44.912426>,  <32.952045, 31.887732, 44.886436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817936, 31.690401, 44.912426>,  <32.594421, 31.361517, 44.955742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817936, 31.690401, 44.912426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294663, 0.074787, -0.952670,
		-0.775199, 0.564246, 0.284065,
		0.558785, 0.822212, -0.108288,
		32.985573, 31.937065, 44.879940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120453, 31.972731, 44.538048>,  <32.594421, 31.361517, 44.955742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120453, 31.972731, 44.538048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509666, 32.038151, 44.472992>,  <32.743195, 32.077404, 44.433960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509666, 32.038151, 44.472992>,  <32.120453, 31.972731, 44.538048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509666, 32.038151, 44.472992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194028, 0.199135, -0.960572,
		-0.124717, 0.966228, 0.225499,
		0.973036, 0.163552, -0.162640,
		32.801579, 32.087215, 44.424198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111549, 32.546635, 44.272076>,  <32.120453, 31.972731, 44.538048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111549, 32.546635, 44.272076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450024, 32.367313, 44.156845>,  <32.653111, 32.259720, 44.087708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450024, 32.367313, 44.156845>,  <32.111549, 32.546635, 44.272076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450024, 32.367313, 44.156845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184320, 0.260997, -0.947579,
		0.499990, 0.854930, 0.138221,
		0.846189, -0.448303, -0.288077,
		32.703880, 32.232822, 44.070423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253071, 32.845592, 43.671730>,  <32.111549, 32.546635, 44.272076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253071, 32.845592, 43.671730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487587, 32.522648, 43.645111>,  <32.628296, 32.328880, 43.629139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487587, 32.522648, 43.645111>,  <32.253071, 32.845592, 43.671730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487587, 32.522648, 43.645111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029086, 0.061110, -0.997707,
		0.809575, 0.586886, 0.012346,
		0.586295, -0.807360, -0.066543,
		32.663475, 32.280441, 43.625149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867668, 33.064510, 43.212090>,  <32.253071, 32.845592, 43.671730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867668, 33.064510, 43.212090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844517, 32.665184, 43.213455>,  <32.830627, 32.425587, 43.214275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844517, 32.665184, 43.213455>,  <32.867668, 33.064510, 43.212090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844517, 32.665184, 43.213455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106899, -0.009601, -0.994224,
		0.992584, -0.057178, 0.107274,
		-0.057877, -0.998318, 0.003418,
		32.827152, 32.365688, 43.214481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341419, 32.870663, 42.723473>,  <32.867668, 33.064510, 43.212090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341419, 32.870663, 42.723473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146492, 32.525810, 42.778973>,  <33.029537, 32.318897, 42.812275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146492, 32.525810, 42.778973>,  <33.341419, 32.870663, 42.723473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146492, 32.525810, 42.778973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078795, -0.201663, -0.976280,
		0.869662, -0.464827, 0.166206,
		-0.487319, -0.862130, 0.138753,
		33.000298, 32.267170, 42.820599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838974, 32.352921, 42.508034>,  <33.341419, 32.870663, 42.723473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838974, 32.352921, 42.508034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470428, 32.200386, 42.477898>,  <33.249302, 32.108868, 42.459816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470428, 32.200386, 42.477898>,  <33.838974, 32.352921, 42.508034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470428, 32.200386, 42.477898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132927, -0.126971, -0.982959,
		0.365269, -0.915677, 0.167675,
		-0.921363, -0.381333, -0.075339,
		33.194019, 32.085987, 42.455296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912479, 31.912430, 42.054558>,  <33.838974, 32.352921, 42.508034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912479, 31.912430, 42.054558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516739, 31.969893, 42.045128>,  <33.279297, 32.004368, 42.039471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516739, 31.969893, 42.045128>,  <33.912479, 31.912430, 42.054558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516739, 31.969893, 42.045128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005076, -0.195894, -0.980612,
		-0.145487, -0.970046, 0.194537,
		-0.989347, 0.143654, -0.023576,
		33.219936, 32.012989, 42.038055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732506, 31.369776, 41.555042>,  <33.912479, 31.912430, 42.054558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732506, 31.369776, 41.555042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446346, 31.647842, 41.583176>,  <33.274651, 31.814682, 41.600056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446346, 31.647842, 41.583176>,  <33.732506, 31.369776, 41.555042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446346, 31.647842, 41.583176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077331, 0.021267, -0.996779,
		-0.694421, -0.718536, 0.038544,
		-0.715401, 0.695165, 0.070333,
		33.231728, 31.856392, 41.604275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123142, 31.160582, 41.018204>,  <33.732506, 31.369776, 41.555042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123142, 31.160582, 41.018204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059166, 31.543432, 41.114807>,  <33.020779, 31.773142, 41.172771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059166, 31.543432, 41.114807>,  <33.123142, 31.160582, 41.018204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059166, 31.543432, 41.114807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312218, 0.183049, -0.932209,
		-0.936450, -0.224506, 0.269554,
		-0.159944, 0.957126, 0.241511,
		33.011181, 31.830570, 41.187260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521191, 31.325214, 40.633690>,  <33.123142, 31.160582, 41.018204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521191, 31.325214, 40.633690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718620, 31.659454, 40.730156>,  <32.837078, 31.859999, 40.788036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718620, 31.659454, 40.730156>,  <32.521191, 31.325214, 40.633690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718620, 31.659454, 40.730156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172937, 0.366055, -0.914383,
		-0.852338, 0.409606, 0.325180,
		0.493571, 0.835600, 0.241167,
		32.866692, 31.910133, 40.802505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049892, 31.814470, 40.495502>,  <32.521191, 31.325214, 40.633690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049892, 31.814470, 40.495502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404667, 31.999184, 40.491600>,  <32.617531, 32.110012, 40.489258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404667, 31.999184, 40.491600>,  <32.049892, 31.814470, 40.495502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404667, 31.999184, 40.491600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192797, 0.350943, -0.916334,
		-0.419725, 0.814613, 0.400295,
		0.886939, 0.461784, -0.009755,
		32.670750, 32.137718, 40.488674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861616, 32.463783, 40.360931>,  <32.049892, 31.814470, 40.495502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861616, 32.463783, 40.360931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243477, 32.419617, 40.250336>,  <32.472595, 32.393116, 40.183979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243477, 32.419617, 40.250336>,  <31.861616, 32.463783, 40.360931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243477, 32.419617, 40.250336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178332, 0.531582, -0.828021,
		0.238406, 0.839779, 0.487784,
		0.954652, -0.110417, -0.276492,
		32.529873, 32.386490, 40.167389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039509, 33.064095, 40.084461>,  <31.861616, 32.463783, 40.360931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039509, 33.064095, 40.084461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323421, 32.811813, 39.958977>,  <32.493771, 32.660442, 39.883686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323421, 32.811813, 39.958977>,  <32.039509, 33.064095, 40.084461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323421, 32.811813, 39.958977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043964, 0.404821, -0.913338,
		0.703048, 0.662063, 0.259606,
		0.709782, -0.630708, -0.313716,
		32.536358, 32.622601, 39.864861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559265, 33.533306, 39.764805>,  <32.039509, 33.064095, 40.084461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559265, 33.533306, 39.764805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585484, 33.162716, 39.616562>,  <32.601215, 32.940361, 39.527615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585484, 33.162716, 39.616562>,  <32.559265, 33.533306, 39.764805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585484, 33.162716, 39.616562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006038, 0.371031, -0.928601,
		0.997831, 0.063104, 0.018726,
		0.065547, -0.926474, -0.370607,
		32.605148, 32.884773, 39.505379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028381, 33.559013, 39.181873>,  <32.559265, 33.533306, 39.764805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028381, 33.559013, 39.181873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849403, 33.206642, 39.120205>,  <32.742016, 32.995220, 39.083206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849403, 33.206642, 39.120205>,  <33.028381, 33.559013, 39.181873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849403, 33.206642, 39.120205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008040, 0.168419, -0.985683,
		0.894276, -0.442276, -0.068275,
		-0.447443, -0.880924, -0.154169,
		32.715172, 32.942364, 39.073956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332699, 33.316437, 38.620140>,  <33.028381, 33.559013, 39.181873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332699, 33.316437, 38.620140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025723, 33.060001, 38.617508>,  <32.841537, 32.906139, 38.615929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025723, 33.060001, 38.617508>,  <33.332699, 33.316437, 38.620140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025723, 33.060001, 38.617508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086932, -0.093885, -0.991780,
		0.635201, -0.761703, 0.127782,
		-0.767439, -0.641088, -0.006581,
		32.795490, 32.867676, 38.615532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585388, 32.629929, 38.392296>,  <33.332699, 33.316437, 38.620140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585388, 32.629929, 38.392296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195229, 32.669365, 38.313423>,  <32.961132, 32.693027, 38.266098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195229, 32.669365, 38.313423>,  <33.585388, 32.629929, 38.392296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195229, 32.669365, 38.313423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153407, -0.338821, -0.928260,
		-0.158323, -0.935672, 0.315361,
		-0.975398, 0.098586, -0.197182,
		32.902611, 32.698940, 38.254269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191338, 32.231930, 38.118954>,  <33.585388, 32.629929, 38.392296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191338, 32.231930, 38.118954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499504, 32.476627, 38.047138>,  <34.684402, 32.623447, 38.004047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499504, 32.476627, 38.047138>,  <34.191338, 32.231930, 38.118954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499504, 32.476627, 38.047138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421750, -0.277831, 0.863097,
		0.478113, -0.740661, -0.472048,
		0.770412, 0.611744, -0.179539,
		34.730629, 32.660152, 37.993275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795105, 31.830120, 38.116283>,  <34.191338, 32.231930, 38.118954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795105, 31.830120, 38.116283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860451, 32.214748, 38.204552>,  <34.899658, 32.445526, 38.257515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860451, 32.214748, 38.204552>,  <34.795105, 31.830120, 38.116283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860451, 32.214748, 38.204552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560517, -0.274536, 0.781314,
		0.811870, -0.003948, -0.583825,
		0.163366, 0.961569, 0.220674,
		34.909462, 32.503220, 38.270756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348186, 31.835838, 38.389271>,  <34.795105, 31.830120, 38.116283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348186, 31.835838, 38.389271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239273, 32.203346, 38.503620>,  <35.173927, 32.423851, 38.572227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239273, 32.203346, 38.503620>,  <35.348186, 31.835838, 38.389271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239273, 32.203346, 38.503620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537309, -0.101280, 0.837282,
		0.798224, 0.381576, -0.466088,
		-0.272281, 0.918772, 0.285869,
		35.157589, 32.478977, 38.589382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944599, 32.207420, 38.534050>,  <35.348186, 31.835838, 38.389271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944599, 32.207420, 38.534050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657391, 32.420071, 38.713753>,  <35.485065, 32.547661, 38.821575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657391, 32.420071, 38.713753>,  <35.944599, 32.207420, 38.534050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657391, 32.420071, 38.713753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600145, 0.145954, 0.786462,
		0.352530, 0.834311, -0.423848,
		-0.718017, 0.531622, 0.449255,
		35.441986, 32.579556, 38.848530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222004, 32.799625, 38.758717>,  <35.944599, 32.207420, 38.534050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222004, 32.799625, 38.758717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909996, 32.741615, 39.002205>,  <35.722794, 32.706810, 39.148296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909996, 32.741615, 39.002205>,  <36.222004, 32.799625, 38.758717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909996, 32.741615, 39.002205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585462, 0.174305, 0.791740,
		-0.220924, 0.973954, -0.051055,
		-0.780017, -0.145024, 0.608721,
		35.675991, 32.698109, 39.184822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483532, 33.060303, 39.363140>,  <36.222004, 32.799625, 38.758717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483532, 33.060303, 39.363140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151676, 32.889595, 39.507118>,  <35.952560, 32.787170, 39.593506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151676, 32.889595, 39.507118>,  <36.483532, 33.060303, 39.363140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151676, 32.889595, 39.507118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356887, 0.090383, 0.929765,
		-0.429331, 0.899831, 0.077324,
		-0.829642, -0.426773, 0.359942,
		35.902782, 32.761562, 39.615101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447758, 33.392441, 40.001682>,  <36.483532, 33.060303, 39.363140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447758, 33.392441, 40.001682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208145, 33.072212, 39.995346>,  <36.064377, 32.880077, 39.991543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208145, 33.072212, 39.995346>,  <36.447758, 33.392441, 40.001682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208145, 33.072212, 39.995346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164176, -0.142166, 0.976133,
		-0.783714, 0.582134, 0.216596,
		-0.599032, -0.800568, -0.015845,
		36.028435, 32.832043, 39.990593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894096, 33.457741, 40.500694>,  <36.447758, 33.392441, 40.001682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894096, 33.457741, 40.500694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951035, 33.067364, 40.434624>,  <35.985199, 32.833138, 40.394981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951035, 33.067364, 40.434624>,  <35.894096, 33.457741, 40.500694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951035, 33.067364, 40.434624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120436, -0.148556, 0.981543,
		-0.982463, -0.159610, 0.096392,
		0.142344, -0.975939, -0.165173,
		35.993736, 32.774582, 40.385071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450993, 33.090881, 40.821308>,  <35.894096, 33.457741, 40.500694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450993, 33.090881, 40.821308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751526, 32.831268, 40.773556>,  <35.931847, 32.675499, 40.744904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751526, 32.831268, 40.773556>,  <35.450993, 33.090881, 40.821308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751526, 32.831268, 40.773556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130758, -0.030900, 0.990933,
		-0.646840, -0.760129, 0.061651,
		0.751332, -0.649037, -0.119380,
		35.976925, 32.636559, 40.737743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432709, 32.653564, 41.409595>,  <35.450993, 33.090881, 40.821308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432709, 32.653564, 41.409595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806702, 32.596981, 41.279495>,  <36.031097, 32.563030, 41.201435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806702, 32.596981, 41.279495>,  <35.432709, 32.653564, 41.409595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806702, 32.596981, 41.279495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320141, -0.058164, 0.945583,
		-0.152680, -0.988234, -0.009096,
		0.934986, -0.141460, -0.325254,
		36.087196, 32.554543, 41.181919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648937, 32.032341, 41.680603>,  <35.432709, 32.653564, 41.409595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648937, 32.032341, 41.680603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973660, 32.251732, 41.600460>,  <36.168491, 32.383366, 41.552372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973660, 32.251732, 41.600460>,  <35.648937, 32.032341, 41.680603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973660, 32.251732, 41.600460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332822, -0.152678, 0.930548,
		0.479793, -0.822109, -0.306490,
		0.811806, 0.548476, -0.200362,
		36.217201, 32.416275, 41.540352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109081, 31.768240, 42.143150>,  <35.648937, 32.032341, 41.680603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109081, 31.768240, 42.143150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309307, 32.093132, 42.023342>,  <36.429443, 32.288067, 41.951458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309307, 32.093132, 42.023342>,  <36.109081, 31.768240, 42.143150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309307, 32.093132, 42.023342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440556, 0.058824, 0.895796,
		0.745213, -0.580362, -0.328388,
		0.500568, 0.812232, -0.299518,
		36.459476, 32.336800, 41.933487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827637, 31.711164, 42.368118>,  <36.109081, 31.768240, 42.143150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827637, 31.711164, 42.368118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779869, 32.103363, 42.305676>,  <36.751209, 32.338680, 42.268211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779869, 32.103363, 42.305676>,  <36.827637, 31.711164, 42.368118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779869, 32.103363, 42.305676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311074, 0.186261, 0.931955,
		0.942853, 0.062733, -0.327250,
		-0.119418, 0.980496, -0.156103,
		36.744045, 32.397511, 42.258846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298752, 31.917906, 42.730202>,  <36.827637, 31.711164, 42.368118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298752, 31.917906, 42.730202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104130, 32.264725, 42.687313>,  <36.987358, 32.472816, 42.661579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104130, 32.264725, 42.687313>,  <37.298752, 31.917906, 42.730202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104130, 32.264725, 42.687313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091843, 0.172807, 0.980664,
		0.868808, 0.467301, -0.163712,
		-0.486556, 0.867045, -0.107218,
		36.958164, 32.524837, 42.655148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704311, 32.366524, 43.173573>,  <37.298752, 31.917906, 42.730202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704311, 32.366524, 43.173573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363503, 32.556271, 43.084999>,  <37.159016, 32.670120, 43.031857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363503, 32.556271, 43.084999>,  <37.704311, 32.366524, 43.173573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363503, 32.556271, 43.084999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075434, 0.307319, 0.948612,
		0.518042, 0.824943, -0.226059,
		-0.852023, 0.474368, -0.221433,
		37.107895, 32.698582, 43.018570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708843, 33.098343, 43.388832>,  <37.704311, 32.366524, 43.173573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708843, 33.098343, 43.388832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326466, 32.981136, 43.381680>,  <37.097038, 32.910812, 43.377388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326466, 32.981136, 43.381680>,  <37.708843, 33.098343, 43.388832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326466, 32.981136, 43.381680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126997, 0.357878, 0.925092,
		-0.264668, 0.886603, -0.379322,
		-0.955941, -0.293015, -0.017877,
		37.039684, 32.893230, 43.376316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430927, 33.622501, 43.772621>,  <37.708843, 33.098343, 43.388832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430927, 33.622501, 43.772621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153839, 33.334026, 43.774612>,  <36.987587, 33.160942, 43.775806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153839, 33.334026, 43.774612>,  <37.430927, 33.622501, 43.772621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153839, 33.334026, 43.774612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317246, 0.310907, 0.895931,
		-0.647684, 0.619049, -0.444166,
		-0.692720, -0.721190, 0.004979,
		36.946022, 33.117668, 43.776108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709129, 33.922916, 43.948498>,  <37.430927, 33.622501, 43.772621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709129, 33.922916, 43.948498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700333, 33.530636, 44.026203>,  <36.695053, 33.295265, 44.072826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700333, 33.530636, 44.026203>,  <36.709129, 33.922916, 43.948498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700333, 33.530636, 44.026203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280748, 0.192548, 0.940269,
		-0.959529, -0.033856, -0.279566,
		-0.021996, -0.980703, 0.194260,
		36.693733, 33.236423, 44.084480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201424, 33.910103, 44.538204>,  <36.709129, 33.922916, 43.948498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201424, 33.910103, 44.538204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402008, 33.564037, 44.540298>,  <36.522358, 33.356396, 44.541553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402008, 33.564037, 44.540298>,  <36.201424, 33.910103, 44.538204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402008, 33.564037, 44.540298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060684, -0.029135, 0.997732,
		-0.863052, -0.500636, -0.067112,
		0.501456, -0.865167, 0.005236,
		36.552444, 33.304485, 44.541870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941868, 33.456009, 45.162636>,  <36.201424, 33.910103, 44.538204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941868, 33.456009, 45.162636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297356, 33.300823, 45.064926>,  <36.510647, 33.207714, 45.006302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297356, 33.300823, 45.064926>,  <35.941868, 33.456009, 45.162636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297356, 33.300823, 45.064926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241968, -0.055631, 0.968688,
		-0.389402, -0.919995, 0.044434,
		0.888717, -0.387961, -0.244273,
		36.563972, 33.184437, 44.991646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947739, 32.837162, 45.514122>,  <35.941868, 33.456009, 45.162636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947739, 32.837162, 45.514122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328499, 32.944363, 45.454708>,  <36.556953, 33.008682, 45.419060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328499, 32.944363, 45.454708>,  <35.947739, 32.837162, 45.514122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328499, 32.944363, 45.454708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145444, 0.031473, 0.988866,
		0.269692, -0.962904, -0.009019,
		0.951899, 0.268001, -0.148536,
		36.614067, 33.024761, 45.410149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353054, 32.358658, 45.867023>,  <35.947739, 32.837162, 45.514122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353054, 32.358658, 45.867023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542084, 32.706631, 45.810600>,  <36.655502, 32.915413, 45.776745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542084, 32.706631, 45.810600>,  <36.353054, 32.358658, 45.867023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542084, 32.706631, 45.810600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152801, 0.076760, 0.985272,
		0.867945, -0.487164, -0.096652,
		0.472570, 0.869931, -0.141063,
		36.683853, 32.967609, 45.768280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987480, 32.266693, 46.298058>,  <36.353054, 32.358658, 45.867023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987480, 32.266693, 46.298058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931225, 32.653881, 46.214874>,  <36.897472, 32.886196, 46.164967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931225, 32.653881, 46.214874>,  <36.987480, 32.266693, 46.298058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931225, 32.653881, 46.214874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130763, 0.226363, 0.965226,
		0.981387, 0.108558, -0.158412,
		-0.140642, 0.967975, -0.207954,
		36.889030, 32.944275, 46.152489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458363, 32.506847, 46.847946>,  <36.987480, 32.266693, 46.298058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458363, 32.506847, 46.847946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198959, 32.785954, 46.726250>,  <37.043320, 32.953419, 46.653233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198959, 32.785954, 46.726250>,  <37.458363, 32.506847, 46.847946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198959, 32.785954, 46.726250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090393, 0.467444, 0.879389,
		0.755824, 0.542787, -0.366213,
		-0.648506, 0.697766, -0.304242,
		37.004406, 32.995285, 46.634975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778770, 33.081215, 46.961838>,  <37.458363, 32.506847, 46.847946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778770, 33.081215, 46.961838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399681, 33.206570, 46.937805>,  <37.172226, 33.281784, 46.923386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399681, 33.206570, 46.937805>,  <37.778770, 33.081215, 46.961838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399681, 33.206570, 46.937805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099026, 0.467846, 0.878245,
		0.303339, 0.826383, -0.474422,
		-0.947723, 0.313386, -0.060083,
		37.115364, 33.300587, 46.919781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774040, 33.908894, 47.042858>,  <37.778770, 33.081215, 46.961838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774040, 33.908894, 47.042858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420910, 33.744835, 47.134415>,  <37.209030, 33.646400, 47.189350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420910, 33.744835, 47.134415>,  <37.774040, 33.908894, 47.042858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420910, 33.744835, 47.134415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014881, 0.511505, 0.859151,
		-0.469457, 0.755078, -0.457675,
		-0.882830, -0.410145, 0.228893,
		37.156059, 33.621792, 47.203083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668880, 34.267967, 47.706272>,  <37.774040, 33.908894, 47.042858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668880, 34.267967, 47.706272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340260, 34.041599, 47.678604>,  <37.143085, 33.905781, 47.662003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340260, 34.041599, 47.678604>,  <37.668880, 34.267967, 47.706272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340260, 34.041599, 47.678604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208017, 0.184570, 0.960554,
		-0.530827, 0.803536, -0.269355,
		-0.821554, -0.565918, -0.069174,
		37.093792, 33.871822, 47.657852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069843, 34.722359, 47.842468>,  <37.668880, 34.267967, 47.706272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069843, 34.722359, 47.842468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012447, 34.334393, 47.921131>,  <36.978008, 34.101612, 47.968327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012447, 34.334393, 47.921131>,  <37.069843, 34.722359, 47.842468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012447, 34.334393, 47.921131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091686, 0.210885, 0.973202,
		-0.985395, 0.121616, -0.119188,
		-0.143491, -0.969916, 0.196655,
		36.969398, 34.043419, 47.980129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582691, 34.692852, 48.338886>,  <37.069843, 34.722359, 47.842468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582691, 34.692852, 48.338886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787552, 34.350903, 48.372101>,  <36.910469, 34.145733, 48.392029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787552, 34.350903, 48.372101>,  <36.582691, 34.692852, 48.338886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787552, 34.350903, 48.372101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016468, 0.086883, 0.996082,
		-0.858739, -0.511510, 0.030419,
		0.512149, -0.854874, 0.083034,
		36.941196, 34.094440, 48.397011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369030, 34.547928, 49.028568>,  <36.582691, 34.692852, 48.338886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369030, 34.547928, 49.028568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669819, 34.299141, 48.941212>,  <36.850292, 34.149868, 48.888798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669819, 34.299141, 48.941212>,  <36.369030, 34.547928, 49.028568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669819, 34.299141, 48.941212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128011, -0.187219, 0.973942,
		-0.646646, -0.760334, -0.061165,
		0.751972, -0.621966, -0.218396,
		36.895412, 34.112553, 48.875694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237431, 33.975628, 49.411339>,  <36.369030, 34.547928, 49.028568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237431, 33.975628, 49.411339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623203, 33.990147, 49.306606>,  <36.854668, 33.998859, 49.243767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623203, 33.990147, 49.306606>,  <36.237431, 33.975628, 49.411339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623203, 33.990147, 49.306606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261268, 0.019506, 0.965069,
		0.040148, -0.999150, 0.009326,
		0.964431, 0.036309, -0.261829,
		36.912533, 34.001038, 49.228058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602345, 33.422321, 49.849804>,  <36.237431, 33.975628, 49.411339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602345, 33.422321, 49.849804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899372, 33.657764, 49.721970>,  <37.077587, 33.799030, 49.645271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899372, 33.657764, 49.721970>,  <36.602345, 33.422321, 49.849804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899372, 33.657764, 49.721970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521601, -0.208897, 0.827221,
		0.420148, -0.780963, -0.462138,
		0.742568, 0.588607, -0.319584,
		37.122143, 33.834347, 49.626095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098148, 33.080322, 49.865631>,  <36.602345, 33.422321, 49.849804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098148, 33.080322, 49.865631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203495, 33.461025, 49.928627>,  <37.266705, 33.689445, 49.966423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203495, 33.461025, 49.928627>,  <37.098148, 33.080322, 49.865631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203495, 33.461025, 49.928627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427310, -0.261455, 0.865475,
		0.864896, -0.160640, -0.475552,
		0.263366, 0.951754, 0.157488,
		37.282505, 33.746552, 49.975872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778641, 33.033131, 50.156307>,  <37.098148, 33.080322, 49.865631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778641, 33.033131, 50.156307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632050, 33.393002, 50.251190>,  <37.544094, 33.608925, 50.308121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632050, 33.393002, 50.251190>,  <37.778641, 33.033131, 50.156307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632050, 33.393002, 50.251190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326105, -0.114568, 0.938365,
		0.871406, 0.421246, -0.251403,
		-0.366479, 0.899681, 0.237206,
		37.522106, 33.662907, 50.322353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247726, 33.142742, 50.690933>,  <37.778641, 33.033131, 50.156307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247726, 33.142742, 50.690933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979481, 33.438995, 50.707607>,  <37.818531, 33.616749, 50.717613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979481, 33.438995, 50.707607>,  <38.247726, 33.142742, 50.690933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979481, 33.438995, 50.707607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378135, 0.292957, 0.878174,
		0.638191, 0.604682, -0.476521,
		-0.670617, 0.740632, 0.041689,
		37.778297, 33.661186, 50.720116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581554, 33.696522, 50.988045>,  <38.247726, 33.142742, 50.690933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581554, 33.696522, 50.988045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200008, 33.810413, 51.026157>,  <37.971081, 33.878746, 51.049023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200008, 33.810413, 51.026157>,  <38.581554, 33.696522, 50.988045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200008, 33.810413, 51.026157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186911, 0.314776, 0.930581,
		0.234968, 0.905455, -0.353471,
		-0.953863, 0.284725, 0.095278,
		37.913849, 33.895832, 51.054741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556213, 34.409222, 51.173950>,  <38.581554, 33.696522, 50.988045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556213, 34.409222, 51.173950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203136, 34.261379, 51.290054>,  <37.991291, 34.172672, 51.359718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203136, 34.261379, 51.290054>,  <38.556213, 34.409222, 51.173950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203136, 34.261379, 51.290054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189429, 0.285412, 0.939498,
		-0.430090, 0.884268, -0.181916,
		-0.882689, -0.369608, 0.290259,
		37.938332, 34.150497, 51.377132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103653, 34.917271, 51.414894>,  <38.556213, 34.409222, 51.173950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103653, 34.917271, 51.414894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999332, 34.573013, 51.589832>,  <37.936741, 34.366459, 51.694794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999332, 34.573013, 51.589832>,  <38.103653, 34.917271, 51.414894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999332, 34.573013, 51.589832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031881, 0.445094, 0.894916,
		-0.964865, 0.247340, -0.088644,
		-0.260803, -0.860648, 0.437341,
		37.921093, 34.314819, 51.721035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179798, 35.678478, 51.640903>,  <38.103653, 34.917271, 51.414894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179798, 35.678478, 51.640903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262398, 36.069363, 51.621227>,  <38.311958, 36.303894, 51.609421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262398, 36.069363, 51.621227>,  <38.179798, 35.678478, 51.640903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262398, 36.069363, 51.621227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161864, -0.083698, -0.983257,
		-0.964966, 0.195078, -0.175458,
		0.206497, 0.977210, -0.049190,
		38.324348, 36.362526, 51.606472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910728, 35.858593, 50.974697>,  <38.179798, 35.678478, 51.640903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910728, 35.858593, 50.974697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161736, 36.152084, 51.078899>,  <38.312340, 36.328178, 51.141422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161736, 36.152084, 51.078899>,  <37.910728, 35.858593, 50.974697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161736, 36.152084, 51.078899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216579, 0.156889, -0.963576,
		-0.747871, 0.661085, -0.060459,
		0.627521, 0.733725, 0.260510,
		38.349991, 36.372200, 51.157051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671207, 36.479691, 50.711037>,  <37.910728, 35.858593, 50.974697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671207, 36.479691, 50.711037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065464, 36.499897, 50.775494>,  <38.302017, 36.512020, 50.814167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065464, 36.499897, 50.775494>,  <37.671207, 36.479691, 50.711037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065464, 36.499897, 50.775494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156151, 0.090731, -0.983557,
		-0.064305, 0.994593, 0.081540,
		0.985638, 0.050515, 0.161141,
		38.361156, 36.515053, 50.823837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903824, 37.022903, 50.239037>,  <37.671207, 36.479691, 50.711037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903824, 37.022903, 50.239037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247414, 36.838646, 50.328453>,  <38.453568, 36.728092, 50.382103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247414, 36.838646, 50.328453>,  <37.903824, 37.022903, 50.239037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247414, 36.838646, 50.328453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182295, -0.132853, -0.974227,
		0.478469, 0.877587, -0.030145,
		0.858974, -0.460642, 0.223546,
		38.505104, 36.700455, 50.395515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423237, 37.307045, 49.790958>,  <37.903824, 37.022903, 50.239037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423237, 37.307045, 49.790958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571823, 36.948975, 49.889481>,  <38.660976, 36.734131, 49.948593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571823, 36.948975, 49.889481>,  <38.423237, 37.307045, 49.790958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571823, 36.948975, 49.889481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387675, -0.091502, -0.917243,
		0.843636, 0.436210, 0.313049,
		0.371466, -0.895181, 0.246302,
		38.683262, 36.680420, 49.963371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019627, 37.295631, 49.437969>,  <38.423237, 37.307045, 49.790958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019627, 37.295631, 49.437969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944054, 36.907967, 49.501263>,  <38.898708, 36.675369, 49.539238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944054, 36.907967, 49.501263>,  <39.019627, 37.295631, 49.437969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944054, 36.907967, 49.501263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426540, -0.226130, -0.875745,
		0.884516, -0.097964, 0.456107,
		-0.188931, -0.969159, 0.158231,
		38.887375, 36.617218, 49.548733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577381, 37.000034, 49.185944>,  <39.019627, 37.295631, 49.437969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577381, 37.000034, 49.185944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306034, 36.706223, 49.192677>,  <39.143227, 36.529938, 49.196716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306034, 36.706223, 49.192677>,  <39.577381, 37.000034, 49.185944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306034, 36.706223, 49.192677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331976, -0.326876, -0.884841,
		0.655443, -0.594661, 0.465588,
		-0.678370, -0.734527, 0.016836,
		39.102524, 36.485863, 49.197727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890530, 36.402935, 48.924007>,  <39.577381, 37.000034, 49.185944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890530, 36.402935, 48.924007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502026, 36.321606, 48.874496>,  <39.268925, 36.272808, 48.844788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502026, 36.321606, 48.874496>,  <39.890530, 36.402935, 48.924007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502026, 36.321606, 48.874496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184701, -0.315701, -0.930708,
		0.150157, -0.926818, 0.344181,
		-0.971256, -0.203323, -0.123780,
		39.210648, 36.260609, 48.837364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942261, 35.760719, 48.665230>,  <39.890530, 36.402935, 48.924007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942261, 35.760719, 48.665230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568920, 35.887798, 48.598392>,  <39.344913, 35.964046, 48.558292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568920, 35.887798, 48.598392>,  <39.942261, 35.760719, 48.665230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568920, 35.887798, 48.598392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019525, -0.509738, -0.860108,
		-0.358423, -0.799524, 0.481969,
		-0.933355, 0.317694, -0.167091,
		39.288914, 35.983109, 48.548264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570435, 35.192142, 48.350075>,  <39.942261, 35.760719, 48.665230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570435, 35.192142, 48.350075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369556, 35.525364, 48.257271>,  <39.249031, 35.725296, 48.201588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369556, 35.525364, 48.257271>,  <39.570435, 35.192142, 48.350075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369556, 35.525364, 48.257271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099279, -0.322060, -0.941499,
		-0.859039, -0.449779, 0.244440,
		-0.502191, 0.833052, -0.232008,
		39.218899, 35.775280, 48.187668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041771, 34.968998, 47.998711>,  <39.570435, 35.192142, 48.350075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041771, 34.968998, 47.998711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070312, 35.351074, 47.883808>,  <39.087437, 35.580318, 47.814865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070312, 35.351074, 47.883808>,  <39.041771, 34.968998, 47.998711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070312, 35.351074, 47.883808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265430, -0.259426, -0.928572,
		-0.961486, 0.142508, 0.235024,
		0.071358, 0.955191, -0.287260,
		39.091721, 35.637630, 47.797630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525475, 34.997395, 47.503075>,  <39.041771, 34.968998, 47.998711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525475, 34.997395, 47.503075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737492, 35.330875, 47.441116>,  <38.864704, 35.530964, 47.403942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737492, 35.330875, 47.441116>,  <38.525475, 34.997395, 47.503075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737492, 35.330875, 47.441116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239031, -0.028365, -0.970597,
		-0.813582, 0.551487, 0.184246,
		0.530046, 0.833701, -0.154900,
		38.896507, 35.580986, 47.394646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115398, 35.425030, 47.125179>,  <38.525475, 34.997395, 47.503075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115398, 35.425030, 47.125179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500648, 35.519432, 47.073490>,  <38.731796, 35.576073, 47.042477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500648, 35.519432, 47.073490>,  <38.115398, 35.425030, 47.125179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500648, 35.519432, 47.073490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155712, 0.097200, -0.983008,
		-0.219434, 0.966878, 0.130364,
		0.963121, 0.236005, -0.129225,
		38.789585, 35.590233, 47.034721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187397, 36.101917, 46.802837>,  <38.115398, 35.425030, 47.125179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187397, 36.101917, 46.802837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524242, 35.904903, 46.714977>,  <38.726349, 35.786694, 46.662262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524242, 35.904903, 46.714977>,  <38.187397, 36.101917, 46.802837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524242, 35.904903, 46.714977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284992, -0.060655, -0.956609,
		0.457842, 0.868175, -0.191448,
		0.842116, -0.492537, -0.219653,
		38.776878, 35.757141, 46.649082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543358, 36.514332, 46.188854>,  <38.187397, 36.101917, 46.802837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543358, 36.514332, 46.188854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685143, 36.140446, 46.178600>,  <38.770214, 35.916115, 46.172447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685143, 36.140446, 46.178600>,  <38.543358, 36.514332, 46.188854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685143, 36.140446, 46.178600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315104, -0.093594, -0.944431,
		0.880379, 0.342842, -0.327709,
		0.354462, -0.934719, -0.025633,
		38.791481, 35.860031, 46.170910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891117, 36.395981, 45.508801>,  <38.543358, 36.514332, 46.188854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891117, 36.395981, 45.508801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833721, 36.021496, 45.637123>,  <38.799282, 35.796806, 45.714119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833721, 36.021496, 45.637123>,  <38.891117, 36.395981, 45.508801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833721, 36.021496, 45.637123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223636, -0.285105, -0.932042,
		0.964053, -0.205482, -0.168462,
		-0.143488, -0.936211, 0.320809,
		38.790676, 35.740631, 45.733364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125080, 36.006672, 44.974625>,  <38.891117, 36.395981, 45.508801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125080, 36.006672, 44.974625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879028, 35.757133, 45.167469>,  <38.731396, 35.607410, 45.283176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879028, 35.757133, 45.167469>,  <39.125080, 36.006672, 44.974625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879028, 35.757133, 45.167469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365159, -0.316516, -0.875486,
		0.698762, -0.714587, -0.033103,
		-0.615134, -0.623845, 0.482108,
		38.694489, 35.569981, 45.312099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289318, 35.301426, 44.663033>,  <39.125080, 36.006672, 44.974625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289318, 35.301426, 44.663033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923607, 35.264023, 44.820694>,  <38.704182, 35.241581, 44.915291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923607, 35.264023, 44.820694>,  <39.289318, 35.301426, 44.663033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923607, 35.264023, 44.820694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357445, -0.271601, -0.893569,
		0.190611, -0.957856, 0.214893,
		-0.914276, -0.093512, 0.394151,
		38.649323, 35.235970, 44.938938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107372, 34.627819, 44.594963>,  <39.289318, 35.301426, 44.663033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107372, 34.627819, 44.594963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770157, 34.841167, 44.622665>,  <38.567825, 34.969177, 44.639286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770157, 34.841167, 44.622665>,  <39.107372, 34.627819, 44.594963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770157, 34.841167, 44.622665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318250, -0.390880, -0.863672,
		-0.433589, -0.750151, 0.499273,
		-0.843041, 0.533372, 0.069254,
		38.517242, 35.001179, 44.643444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702999, 34.264748, 44.367100>,  <39.107372, 34.627819, 44.594963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702999, 34.264748, 44.367100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484089, 34.598629, 44.342579>,  <38.352745, 34.798958, 44.327866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484089, 34.598629, 44.342579>,  <38.702999, 34.264748, 44.367100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484089, 34.598629, 44.342579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368712, -0.306198, -0.877664,
		-0.751362, -0.457720, 0.475340,
		-0.547273, 0.834707, -0.061299,
		38.319908, 34.849041, 44.324188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903652, 34.115856, 44.194950>,  <38.702999, 34.264748, 44.367100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903652, 34.115856, 44.194950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996647, 34.482204, 44.064022>,  <38.052444, 34.702011, 43.985466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996647, 34.482204, 44.064022>,  <37.903652, 34.115856, 44.194950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996647, 34.482204, 44.064022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382324, -0.223394, -0.896618,
		-0.894303, 0.333594, 0.298222,
		0.232485, 0.915866, -0.327323,
		38.066391, 34.756966, 43.965824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448608, 34.378090, 43.789623>,  <37.903652, 34.115856, 44.194950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448608, 34.378090, 43.789623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749146, 34.613274, 43.669758>,  <37.929466, 34.754383, 43.597839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749146, 34.613274, 43.669758>,  <37.448608, 34.378090, 43.789623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749146, 34.613274, 43.669758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331426, -0.056471, -0.941790,
		-0.570652, 0.806920, 0.152434,
		0.751341, 0.587955, -0.299659,
		37.974548, 34.789661, 43.579861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119171, 34.808617, 43.317516>,  <37.448608, 34.378090, 43.789623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119171, 34.808617, 43.317516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508259, 34.842770, 43.231232>,  <37.741711, 34.863262, 43.179462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508259, 34.842770, 43.231232>,  <37.119171, 34.808617, 43.317516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508259, 34.842770, 43.231232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227873, 0.177138, -0.957443,
		-0.043539, 0.980475, 0.191762,
		0.972717, 0.085383, -0.215711,
		37.800076, 34.868385, 43.166519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126133, 35.355324, 42.917088>,  <37.119171, 34.808617, 43.317516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126133, 35.355324, 42.917088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455471, 35.144245, 42.833534>,  <37.653076, 35.017597, 42.783401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455471, 35.144245, 42.833534>,  <37.126133, 35.355324, 42.917088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455471, 35.144245, 42.833534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164965, 0.129631, -0.977744,
		0.543033, 0.839481, 0.019679,
		0.823348, -0.527701, -0.208879,
		37.702477, 34.985935, 42.770870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449974, 35.736839, 42.412891>,  <37.126133, 35.355324, 42.917088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449974, 35.736839, 42.412891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606422, 35.369846, 42.383892>,  <37.700291, 35.149651, 42.366493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606422, 35.369846, 42.383892>,  <37.449974, 35.736839, 42.412891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606422, 35.369846, 42.383892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032864, 0.064798, -0.997357,
		0.919754, 0.392465, -0.004808,
		0.391116, -0.917482, -0.072496,
		37.723759, 35.094601, 42.362144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968384, 35.820938, 41.944035>,  <37.449974, 35.736839, 42.412891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968384, 35.820938, 41.944035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933823, 35.422489, 41.937363>,  <37.913086, 35.183422, 41.933361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933823, 35.422489, 41.937363>,  <37.968384, 35.820938, 41.944035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933823, 35.422489, 41.937363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144311, 0.004052, -0.989524,
		0.985753, -0.087907, 0.143401,
		-0.086405, -0.996120, -0.016680,
		37.907902, 35.123653, 41.932358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619869, 35.622189, 41.643829>,  <37.968384, 35.820938, 41.944035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619869, 35.622189, 41.643829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340500, 35.338722, 41.603825>,  <38.172878, 35.168644, 41.579823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340500, 35.338722, 41.603825>,  <38.619869, 35.622189, 41.643829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340500, 35.338722, 41.603825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044666, 0.096313, -0.994348,
		0.714290, -0.698942, -0.035614,
		-0.698422, -0.708663, -0.100014,
		38.130974, 35.126122, 41.573822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770725, 35.373119, 41.010422>,  <38.619869, 35.622189, 41.643829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770725, 35.373119, 41.010422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445724, 35.152683, 41.086460>,  <38.250725, 35.020420, 41.132084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445724, 35.152683, 41.086460>,  <38.770725, 35.373119, 41.010422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445724, 35.152683, 41.086460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073991, -0.225964, -0.971321,
		0.578241, -0.803268, 0.142821,
		-0.812504, -0.551090, 0.190097,
		38.201973, 34.987358, 41.143490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791527, 34.722233, 40.770828>,  <38.770725, 35.373119, 41.010422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791527, 34.722233, 40.770828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405781, 34.828056, 40.770908>,  <38.174332, 34.891552, 40.770958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405781, 34.828056, 40.770908>,  <38.791527, 34.722233, 40.770828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405781, 34.828056, 40.770908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031776, -0.115074, -0.992849,
		-0.262645, -0.957479, 0.119381,
		-0.964370, 0.264560, 0.000201,
		38.116470, 34.907425, 40.770969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409817, 34.333832, 40.278622>,  <38.791527, 34.722233, 40.770828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409817, 34.333832, 40.278622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192135, 34.666027, 40.326180>,  <38.061527, 34.865345, 40.354713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192135, 34.666027, 40.326180>,  <38.409817, 34.333832, 40.278622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192135, 34.666027, 40.326180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104256, 0.207562, -0.972650,
		-0.832449, -0.516927, -0.199540,
		-0.544206, 0.830485, 0.118892,
		38.028873, 34.915173, 40.361847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961876, 34.404560, 39.675972>,  <38.409817, 34.333832, 40.278622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961876, 34.404560, 39.675972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967472, 34.768814, 39.841164>,  <37.970829, 34.987366, 39.940281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967472, 34.768814, 39.841164>,  <37.961876, 34.404560, 39.675972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967472, 34.768814, 39.841164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221302, 0.399960, -0.889414,
		-0.975105, 0.103840, -0.195928,
		0.013993, 0.910631, 0.412982,
		37.971668, 35.042004, 39.965057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608475, 34.828438, 39.135918>,  <37.961876, 34.404560, 39.675972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608475, 34.828438, 39.135918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781570, 35.105946, 39.366192>,  <37.885429, 35.272449, 39.504356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781570, 35.105946, 39.366192>,  <37.608475, 34.828438, 39.135918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781570, 35.105946, 39.366192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054260, 0.617375, -0.784795,
		-0.899885, 0.370848, 0.229518,
		0.432738, 0.693772, 0.575689,
		37.911392, 35.314075, 39.538898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303108, 35.575676, 39.023041>,  <37.608475, 34.828438, 39.135918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303108, 35.575676, 39.023041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652645, 35.636944, 39.207623>,  <37.862366, 35.673706, 39.318371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652645, 35.636944, 39.207623>,  <37.303108, 35.575676, 39.023041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652645, 35.636944, 39.207623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200949, 0.750454, -0.629633,
		-0.442739, 0.642929, 0.625000,
		0.873843, 0.153170, 0.461451,
		37.914799, 35.682896, 39.346058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457130, 36.323677, 39.050568>,  <37.303108, 35.575676, 39.023041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457130, 36.323677, 39.050568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811317, 36.144104, 39.098572>,  <38.023830, 36.036362, 39.127373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811317, 36.144104, 39.098572>,  <37.457130, 36.323677, 39.050568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811317, 36.144104, 39.098572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416407, 0.651919, -0.633725,
		0.206262, 0.611118, 0.764193,
		0.885472, -0.448929, 0.120008,
		38.076958, 36.009426, 39.134575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933681, 36.924957, 39.039124>,  <37.457130, 36.323677, 39.050568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933681, 36.924957, 39.039124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170139, 36.611610, 38.962299>,  <38.312016, 36.423603, 38.916203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170139, 36.611610, 38.962299>,  <37.933681, 36.924957, 39.039124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170139, 36.611610, 38.962299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531167, 0.557299, -0.638184,
		0.606967, 0.275241, 0.745542,
		0.591145, -0.783364, -0.192063,
		38.347485, 36.376602, 38.904682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574249, 37.184254, 39.025154>,  <37.933681, 36.924957, 39.039124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574249, 37.184254, 39.025154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633881, 36.844044, 38.823406>,  <38.669659, 36.639919, 38.702358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633881, 36.844044, 38.823406>,  <38.574249, 37.184254, 39.025154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633881, 36.844044, 38.823406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430953, 0.514962, -0.741008,
		0.889974, -0.106889, 0.443306,
		0.149080, -0.850522, -0.504368,
		38.678604, 36.588886, 38.672096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113667, 37.303818, 38.679173>,  <38.574249, 37.184254, 39.025154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113667, 37.303818, 38.679173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981514, 36.980106, 38.484886>,  <38.902222, 36.785877, 38.368317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981514, 36.980106, 38.484886>,  <39.113667, 37.303818, 38.679173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981514, 36.980106, 38.484886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444136, 0.320777, -0.836568,
		0.832823, -0.492104, 0.253453,
		-0.330377, -0.809281, -0.485711,
		38.882401, 36.737324, 38.339172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761326, 37.017090, 38.466888>,  <39.113667, 37.303818, 38.679173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761326, 37.017090, 38.466888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463299, 36.895153, 38.229588>,  <39.284485, 36.821991, 38.087208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463299, 36.895153, 38.229588>,  <39.761326, 37.017090, 38.466888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463299, 36.895153, 38.229588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476233, 0.379609, -0.793158,
		0.466993, -0.873481, -0.137657,
		-0.745064, -0.304842, -0.593255,
		39.239780, 36.803699, 38.051613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061501, 36.709496, 37.922226>,  <39.761326, 37.017090, 38.466888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061501, 36.709496, 37.922226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690975, 36.788219, 37.793720>,  <39.468658, 36.835453, 37.716618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690975, 36.788219, 37.793720>,  <40.061501, 36.709496, 37.922226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690975, 36.788219, 37.793720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370000, 0.314436, -0.874202,
		-0.071037, -0.928652, -0.364087,
		-0.926312, 0.196813, -0.321265,
		39.413082, 36.847263, 37.697342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916168, 36.181812, 37.472569>,  <40.061501, 36.709496, 37.922226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916168, 36.181812, 37.472569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673546, 36.486931, 37.382919>,  <39.527973, 36.670002, 37.329132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673546, 36.486931, 37.382919>,  <39.916168, 36.181812, 37.472569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673546, 36.486931, 37.382919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374524, 0.025486, -0.926867,
		-0.701302, -0.646132, -0.301145,
		-0.606553, 0.762800, -0.224119,
		39.491581, 36.715771, 37.315685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673309, 35.980724, 36.846577>,  <39.916168, 36.181812, 37.472569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673309, 35.980724, 36.846577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635418, 36.377396, 36.881470>,  <39.612682, 36.615398, 36.902405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635418, 36.377396, 36.881470>,  <39.673309, 35.980724, 36.846577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635418, 36.377396, 36.881470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071250, 0.080647, -0.994193,
		-0.992950, -0.100395, 0.063017,
		-0.094729, 0.991674, 0.087231,
		39.606998, 36.674896, 36.907639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066563, 36.295498, 36.450607>,  <39.673309, 35.980724, 36.846577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066563, 36.295498, 36.450607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362785, 36.564194, 36.457996>,  <39.540520, 36.725410, 36.462429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362785, 36.564194, 36.457996>,  <39.066563, 36.295498, 36.450607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362785, 36.564194, 36.457996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026466, 0.056628, -0.998045,
		-0.671472, 0.738620, 0.059715,
		0.740557, 0.671740, 0.018475,
		39.584953, 36.765717, 36.463539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923203, 36.879745, 36.092400>,  <39.066563, 36.295498, 36.450607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923203, 36.879745, 36.092400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321564, 36.844036, 36.086708>,  <39.560581, 36.822609, 36.083294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321564, 36.844036, 36.086708>,  <38.923203, 36.879745, 36.092400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321564, 36.844036, 36.086708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011222, 0.034100, -0.999355,
		0.089700, 0.995423, 0.032958,
		0.995906, -0.089272, -0.014229,
		39.620335, 36.817253, 36.082439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271454, 37.428860, 35.627483>,  <38.923203, 36.879745, 36.092400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271454, 37.428860, 35.627483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544212, 37.136410, 35.618805>,  <39.707867, 36.960941, 35.613598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544212, 37.136410, 35.618805>,  <39.271454, 37.428860, 35.627483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544212, 37.136410, 35.618805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057191, 0.082871, -0.994918,
		0.729207, 0.677192, 0.098324,
		0.681898, -0.731125, -0.021700,
		39.748783, 36.917072, 35.612293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949966, 37.587791, 35.230980>,  <39.271454, 37.428860, 35.627483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949966, 37.587791, 35.230980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881271, 37.193867, 35.241154>,  <39.840054, 36.957512, 35.247257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881271, 37.193867, 35.241154>,  <39.949966, 37.587791, 35.230980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881271, 37.193867, 35.241154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119607, -0.046469, -0.991733,
		0.977854, -0.167280, 0.125771,
		-0.171742, -0.984814, 0.025432,
		39.829750, 36.898422, 35.248783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511818, 37.266056, 34.921505>,  <39.949966, 37.587791, 35.230980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511818, 37.266056, 34.921505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200287, 37.017532, 34.887108>,  <40.013367, 36.868420, 34.866470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200287, 37.017532, 34.887108>,  <40.511818, 37.266056, 34.921505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200287, 37.017532, 34.887108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164289, -0.069765, -0.983942,
		0.605335, -0.780452, 0.156410,
		-0.778832, -0.621311, -0.085989,
		39.966637, 36.831139, 34.861313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885246, 36.662327, 34.743088>,  <40.511818, 37.266056, 34.921505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885246, 36.662327, 34.743088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272282, 36.762947, 34.751907>,  <41.504505, 36.823318, 34.757198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272282, 36.762947, 34.751907>,  <40.885246, 36.662327, 34.743088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272282, 36.762947, 34.751907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243765, -0.953272, 0.178469,
		0.065911, -0.167311, -0.983698,
		0.967592, 0.251555, 0.022047,
		41.562561, 36.838413, 34.758522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324871, 36.199165, 34.273132>,  <40.885246, 36.662327, 34.743088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324871, 36.199165, 34.273132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570854, 36.345863, 34.552364>,  <41.718445, 36.433884, 34.719906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570854, 36.345863, 34.552364>,  <41.324871, 36.199165, 34.273132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570854, 36.345863, 34.552364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324629, -0.924514, 0.199726,
		0.718636, 0.103794, -0.687597,
		0.614962, 0.366744, 0.698083,
		41.755344, 36.455887, 34.761791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843857, 35.778824, 34.157692>,  <41.324871, 36.199165, 34.273132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843857, 35.778824, 34.157692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916538, 35.936386, 34.518097>,  <41.960148, 36.030922, 34.734341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916538, 35.936386, 34.518097>,  <41.843857, 35.778824, 34.157692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916538, 35.936386, 34.518097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449979, -0.848012, 0.279990,
		0.874358, 0.354560, -0.331339,
		0.181706, 0.393907, 0.901011,
		41.971050, 36.054558, 34.788399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615845, 35.749626, 34.315128>,  <41.843857, 35.778824, 34.157692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615845, 35.749626, 34.315128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423000, 35.762367, 34.665340>,  <42.307293, 35.770012, 34.875469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423000, 35.762367, 34.665340>,  <42.615845, 35.749626, 34.315128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423000, 35.762367, 34.665340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549453, -0.767390, 0.330474,
		0.682399, 0.640389, 0.352468,
		-0.482113, 0.031851, 0.875530,
		42.278366, 35.771923, 34.927998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118717, 35.632900, 34.845390>,  <42.615845, 35.749626, 34.315128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118717, 35.632900, 34.845390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788948, 35.550842, 35.056385>,  <42.591087, 35.501606, 35.182983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788948, 35.550842, 35.056385>,  <43.118717, 35.632900, 34.845390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788948, 35.550842, 35.056385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404270, -0.865708, 0.295154,
		0.396101, 0.456579, 0.796643,
		-0.824421, -0.205148, 0.527489,
		42.541622, 35.489300, 35.214630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467171, 35.360878, 35.452705>,  <43.118717, 35.632900, 34.845390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467171, 35.360878, 35.452705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.085659, 35.242065, 35.434475>,  <42.856750, 35.170780, 35.423538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.085659, 35.242065, 35.434475>,  <43.467171, 35.360878, 35.452705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.085659, 35.242065, 35.434475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296244, -0.954830, 0.023226,
		-0.050417, 0.008650, 0.998691,
		-0.953781, -0.297027, -0.045578,
		42.799526, 35.152958, 35.420803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355461, 35.057919, 36.176476>,  <43.467171, 35.360878, 35.452705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355461, 35.057919, 36.176476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048180, 34.909912, 35.967499>,  <42.863811, 34.821110, 35.842113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048180, 34.909912, 35.967499>,  <43.355461, 35.057919, 36.176476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048180, 34.909912, 35.967499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352578, -0.925675, 0.137166,
		-0.534367, -0.078830, 0.841568,
		-0.768206, -0.370015, -0.522444,
		42.817719, 34.798908, 35.810764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007595, 34.524723, 36.618080>,  <43.355461, 35.057919, 36.176476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.007595, 34.524723, 36.618080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902512, 34.440361, 36.241463>,  <42.839462, 34.389744, 36.015491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902512, 34.440361, 36.241463>,  <43.007595, 34.524723, 36.618080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902512, 34.440361, 36.241463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207451, -0.965344, 0.158353,
		-0.942310, -0.153723, 0.297356,
		-0.262708, -0.210905, -0.941543,
		42.823700, 34.377090, 35.959000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631790, 33.848866, 36.637379>,  <43.007595, 34.524723, 36.618080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631790, 33.848866, 36.637379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752125, 33.886436, 36.257763>,  <42.824326, 33.908981, 36.029995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752125, 33.886436, 36.257763>,  <42.631790, 33.848866, 36.637379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752125, 33.886436, 36.257763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124621, -0.990476, -0.058530,
		-0.945498, -0.100663, -0.309676,
		0.300835, 0.093932, -0.949039,
		42.842377, 33.914616, 35.973053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.422321, 33.347191, 36.288952>,  <42.631790, 33.848866, 36.637379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.422321, 33.347191, 36.288952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720886, 33.475594, 36.055775>,  <42.900024, 33.552635, 35.915871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720886, 33.475594, 36.055775>,  <42.422321, 33.347191, 36.288952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720886, 33.475594, 36.055775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272369, -0.946602, -0.172511,
		-0.607188, -0.030009, -0.793992,
		0.746417, 0.321005, -0.582939,
		42.944813, 33.571896, 35.880894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456177, 32.936974, 35.696983>,  <42.422321, 33.347191, 36.288952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456177, 32.936974, 35.696983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814541, 33.114189, 35.710007>,  <43.029560, 33.220520, 35.717819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814541, 33.114189, 35.710007>,  <42.456177, 32.936974, 35.696983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814541, 33.114189, 35.710007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434849, -0.859629, -0.268225,
		-0.090849, 0.254462, -0.962806,
		0.895909, 0.443043, 0.032556,
		43.083313, 33.247101, 35.719772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.905437, 32.595116, 35.187683>,  <42.456177, 32.936974, 35.696983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.905437, 32.595116, 35.187683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.143501, 32.755474, 35.466270>,  <43.286339, 32.851688, 35.633423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.143501, 32.755474, 35.466270>,  <42.905437, 32.595116, 35.187683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.143501, 32.755474, 35.466270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615505, -0.784619, -0.074334,
		0.516664, 0.472922, -0.713725,
		0.595157, 0.400896, 0.696471,
		43.322048, 32.875744, 35.675213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591015, 32.675156, 34.825428>,  <42.905437, 32.595116, 35.187683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591015, 32.675156, 34.825428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643532, 32.668125, 35.221905>,  <43.675041, 32.663906, 35.459789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643532, 32.668125, 35.221905>,  <43.591015, 32.675156, 34.825428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643532, 32.668125, 35.221905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660461, -0.744080, -0.100678,
		0.739293, 0.667859, -0.086079,
		0.131288, -0.017579, 0.991188,
		43.682919, 32.662853, 35.519260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.319828, 32.477634, 34.840939>,  <43.591015, 32.675156, 34.825428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.319828, 32.477634, 34.840939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.201130, 32.429482, 35.219875>,  <44.129910, 32.400589, 35.447235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.201130, 32.429482, 35.219875>,  <44.319828, 32.477634, 34.840939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.201130, 32.429482, 35.219875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775438, -0.609358, 0.165468,
		0.557348, 0.783703, 0.274176,
		-0.296749, -0.120383, 0.947337,
		44.112106, 32.393368, 35.504078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951180, 32.510906, 35.282169>,  <44.319828, 32.477634, 34.840939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.951180, 32.510906, 35.282169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.662483, 32.300190, 35.461761>,  <44.489265, 32.173759, 35.569515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.662483, 32.300190, 35.461761>,  <44.951180, 32.510906, 35.282169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.662483, 32.300190, 35.461761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660807, -0.717441, 0.220481,
		0.205970, 0.455820, 0.865912,
		-0.721741, -0.526788, 0.448981,
		44.445961, 32.142155, 35.596455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.331364, 31.925661, 35.510353>,  <44.951180, 32.510906, 35.282169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.331364, 31.925661, 35.510353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967445, 31.804598, 35.623959>,  <44.749092, 31.731960, 35.692123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967445, 31.804598, 35.623959>,  <45.331364, 31.925661, 35.510353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967445, 31.804598, 35.623959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357150, -0.919495, 0.164233,
		0.211443, 0.250854, 0.944650,
		-0.909800, -0.302656, 0.284013,
		44.694504, 31.713800, 35.709164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.384949, 31.525511, 36.090561>,  <45.331364, 31.925661, 35.510353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.384949, 31.525511, 36.090561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038376, 31.413181, 35.925426>,  <44.830433, 31.345783, 35.826344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038376, 31.413181, 35.925426>,  <45.384949, 31.525511, 36.090561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.038376, 31.413181, 35.925426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217761, -0.956591, 0.193682,
		-0.449308, 0.077912, 0.889973,
		-0.866431, -0.280825, -0.412838,
		44.778446, 31.328934, 35.801575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.160496, 30.969368, 36.488556>,  <45.384949, 31.525511, 36.090561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.160496, 30.969368, 36.488556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.919533, 30.917202, 36.173573>,  <44.774956, 30.885902, 35.984581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.919533, 30.917202, 36.173573>,  <45.160496, 30.969368, 36.488556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.919533, 30.917202, 36.173573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304048, -0.949675, -0.075319,
		-0.738011, -0.284799, 0.611743,
		-0.602408, -0.130414, -0.787463,
		44.738811, 30.878078, 35.937332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579868, 30.659966, 36.655777>,  <45.160496, 30.969368, 36.488556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.579868, 30.659966, 36.655777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.669426, 30.576101, 36.275059>,  <44.723160, 30.525782, 36.046627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.669426, 30.576101, 36.275059>,  <44.579868, 30.659966, 36.655777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.669426, 30.576101, 36.275059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324101, -0.904991, 0.275591,
		-0.919147, -0.370180, -0.134669,
		0.223892, -0.209662, -0.951795,
		44.736595, 30.513203, 35.989521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.268677, 30.026257, 36.719147>,  <44.579868, 30.659966, 36.655777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.268677, 30.026257, 36.719147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.485622, 30.038422, 36.383308>,  <44.615791, 30.045721, 36.181805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.485622, 30.038422, 36.383308>,  <44.268677, 30.026257, 36.719147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.485622, 30.038422, 36.383308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190947, -0.977654, 0.087934,
		-0.818155, -0.208011, -0.536053,
		0.542366, 0.030414, -0.839592,
		44.648331, 30.047546, 36.131432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.048244, 29.483192, 36.369560>,  <44.268677, 30.026257, 36.719147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.048244, 29.483192, 36.369560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.408077, 29.546108, 36.206577>,  <44.623978, 29.583858, 36.108788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.408077, 29.546108, 36.206577>,  <44.048244, 29.483192, 36.369560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.408077, 29.546108, 36.206577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205035, -0.975801, 0.075987,
		-0.385642, -0.151899, -0.910059,
		0.899578, 0.157290, -0.407454,
		44.677952, 29.593296, 36.084339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.303532, 28.866722, 35.894260>,  <44.048244, 29.483192, 36.369560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.303532, 28.866722, 35.894260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.612785, 29.076096, 36.037529>,  <44.798336, 29.201719, 36.123489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.612785, 29.076096, 36.037529>,  <44.303532, 28.866722, 35.894260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.612785, 29.076096, 36.037529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481269, -0.851970, 0.206222,
		0.413098, 0.012942, -0.910595,
		0.773130, 0.523431, 0.358176,
		44.844723, 29.233126, 36.144981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.033451, 28.732504, 35.546448>,  <44.303532, 28.866722, 35.894260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.033451, 28.732504, 35.546448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046741, 28.827652, 35.934738>,  <45.054714, 28.884741, 36.167713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046741, 28.827652, 35.934738>,  <45.033451, 28.732504, 35.546448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.046741, 28.827652, 35.934738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273435, -0.936372, 0.220091,
		0.961317, 0.258118, -0.096153,
		0.033225, 0.237869, 0.970729,
		45.056709, 28.899014, 36.225956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.804604, 28.214315, 35.075008>,  <45.033451, 28.732504, 35.546448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.804604, 28.214315, 35.075008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.160889, 28.094706, 34.938061>,  <45.374660, 28.022940, 34.855892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.160889, 28.094706, 34.938061>,  <44.804604, 28.214315, 35.075008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.160889, 28.094706, 34.938061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341502, 0.056904, -0.938157,
		0.300014, 0.952547, -0.051433,
		0.890712, -0.299024, -0.342369,
		45.428101, 28.004999, 34.835350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.006531, 28.747698, 34.599277>,  <44.804604, 28.214315, 35.075008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.006531, 28.747698, 34.599277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.145584, 28.375816, 34.550613>,  <45.229015, 28.152687, 34.521416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.145584, 28.375816, 34.550613>,  <45.006531, 28.747698, 34.599277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.145584, 28.375816, 34.550613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611982, -0.126675, -0.780661,
		0.710371, 0.345841, -0.612998,
		0.347636, -0.929703, -0.121663,
		45.249874, 28.096905, 34.514114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.990730, 29.241234, 34.059895>,  <45.006531, 28.747698, 34.599277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.990730, 29.241234, 34.059895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747257, 29.500536, 33.876907>,  <44.601173, 29.656116, 33.767117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747257, 29.500536, 33.876907>,  <44.990730, 29.241234, 34.059895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.747257, 29.500536, 33.876907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028007, -0.593771, -0.804146,
		-0.792922, -0.476654, 0.379572,
		-0.608679, 0.648256, -0.457465,
		44.564655, 29.695013, 33.739670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.749077, 28.956518, 34.079048>,  <44.990730, 29.241234, 34.059895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.749077, 28.956518, 34.079048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.887020, 29.133410, 33.747868>,  <45.969788, 29.239544, 33.549160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.887020, 29.133410, 33.747868>,  <45.749077, 28.956518, 34.079048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.887020, 29.133410, 33.747868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741130, 0.413008, 0.529292,
		0.576021, -0.796151, -0.185322,
		0.344857, 0.442231, -0.827953,
		45.990479, 29.266079, 33.499481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.514347, 28.730795, 34.002708>,  <45.749077, 28.956518, 34.079048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.514347, 28.730795, 34.002708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.416405, 29.097261, 33.875782>,  <46.357639, 29.317141, 33.799625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.416405, 29.097261, 33.875782>,  <46.514347, 28.730795, 34.002708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.416405, 29.097261, 33.875782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659775, 0.397261, 0.637872,
		0.710453, -0.053172, -0.701733,
		-0.244854, 0.916164, -0.317317,
		46.342949, 29.372110, 33.780586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.109360, 28.970535, 33.669361>,  <46.514347, 28.730795, 34.002708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.109360, 28.970535, 33.669361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866577, 29.249712, 33.821404>,  <46.720909, 29.417217, 33.912628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866577, 29.249712, 33.821404>,  <47.109360, 28.970535, 33.669361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.866577, 29.249712, 33.821404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752058, 0.349788, 0.558621,
		0.256928, 0.624920, -0.737199,
		-0.606957, 0.697942, 0.380106,
		46.684490, 29.459095, 33.935436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.282845, 29.380775, 33.119190>,  <47.109360, 28.970535, 33.669361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.282845, 29.380775, 33.119190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.446972, 29.582766, 32.815445>,  <47.545448, 29.703960, 32.633198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.446972, 29.582766, 32.815445>,  <47.282845, 29.380775, 33.119190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.446972, 29.582766, 32.815445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494142, 0.822967, 0.280266,
		0.766462, 0.260236, 0.587209,
		0.410318, 0.504977, -0.759366,
		47.570068, 29.734259, 32.587635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.483913, 30.024723, 33.353142>,  <47.282845, 29.380775, 33.119190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.483913, 30.024723, 33.353142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.423481, 30.060692, 32.959373>,  <47.387222, 30.082273, 32.723110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.423481, 30.060692, 32.959373>,  <47.483913, 30.024723, 33.353142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.423481, 30.060692, 32.959373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520783, 0.839206, 0.156583,
		0.840214, 0.536327, -0.079961,
		-0.151083, 0.089920, -0.984423,
		47.378155, 30.087667, 32.664047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.784069, 30.596546, 33.030975>,  <47.483913, 30.024723, 33.353142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.784069, 30.596546, 33.030975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.417362, 30.514502, 32.893879>,  <47.197338, 30.465275, 32.811619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.417362, 30.514502, 32.893879>,  <47.784069, 30.596546, 33.030975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.417362, 30.514502, 32.893879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322859, 0.885738, 0.333511,
		0.235174, 0.416409, -0.878235,
		-0.916763, -0.205113, -0.342744,
		47.142334, 30.452967, 32.791058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.617760, 31.168283, 32.625057>,  <47.784069, 30.596546, 33.030975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.617760, 31.168283, 32.625057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.270943, 30.992323, 32.718628>,  <47.062851, 30.886747, 32.774769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.270943, 30.992323, 32.718628>,  <47.617760, 31.168283, 32.625057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.270943, 30.992323, 32.718628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451419, 0.892299, 0.004794,
		-0.210841, -0.101442, -0.972243,
		-0.867045, -0.439899, 0.233926,
		47.010830, 30.860353, 32.788807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.980930, 31.357582, 32.134975>,  <47.617760, 31.168283, 32.625057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.980930, 31.357582, 32.134975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.800884, 31.230165, 32.468666>,  <46.692856, 31.153715, 32.668880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.800884, 31.230165, 32.468666>,  <46.980930, 31.357582, 32.134975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.800884, 31.230165, 32.468666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503333, 0.862168, 0.057631,
		-0.737599, -0.393952, -0.548406,
		-0.450114, -0.318539, 0.834224,
		46.665852, 31.134604, 32.718933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.280231, 31.590944, 32.039330>,  <46.980930, 31.357582, 32.134975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.280231, 31.590944, 32.039330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.360867, 31.525499, 32.425613>,  <46.409248, 31.486233, 32.657383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.360867, 31.525499, 32.425613>,  <46.280231, 31.590944, 32.039330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.360867, 31.525499, 32.425613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583752, 0.771641, 0.252593,
		-0.786508, -0.614654, 0.060045,
		0.201591, -0.163615, 0.965708,
		46.421345, 31.476416, 32.715324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.756863, 31.941294, 32.368992>,  <46.280231, 31.590944, 32.039330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.756863, 31.941294, 32.368992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.000641, 31.853004, 32.673588>,  <46.146908, 31.800032, 32.856346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.000641, 31.853004, 32.673588>,  <45.756863, 31.941294, 32.368992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.000641, 31.853004, 32.673588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305301, 0.821063, 0.482334,
		-0.731692, -0.526437, 0.433002,
		0.609441, -0.220723, 0.761487,
		46.183472, 31.786787, 32.902035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.383541, 32.004421, 32.963287>,  <45.756863, 31.941294, 32.368992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.383541, 32.004421, 32.963287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.766052, 32.042110, 33.074039>,  <45.995560, 32.064724, 33.140491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.766052, 32.042110, 33.074039>,  <45.383541, 32.004421, 32.963287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.766052, 32.042110, 33.074039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225985, 0.839004, 0.494978,
		-0.185665, -0.535905, 0.823610,
		0.956273, 0.094224, 0.276880,
		46.052933, 32.070377, 33.157104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.364540, 32.085876, 33.645374>,  <45.383541, 32.004421, 32.963287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.364540, 32.085876, 33.645374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.711514, 32.241982, 33.521919>,  <45.919697, 32.335644, 33.447845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.711514, 32.241982, 33.521919>,  <45.364540, 32.085876, 33.645374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.711514, 32.241982, 33.521919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249559, 0.877899, 0.408674,
		0.430444, -0.277473, 0.858910,
		0.867432, 0.390260, -0.308641,
		45.971745, 32.359058, 33.429329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.756023, 32.469051, 34.247700>,  <45.364540, 32.085876, 33.645374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.756023, 32.469051, 34.247700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.907185, 32.641911, 33.920181>,  <45.997883, 32.745625, 33.723671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.907185, 32.641911, 33.920181>,  <45.756023, 32.469051, 34.247700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.907185, 32.641911, 33.920181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078709, 0.896178, 0.436658,
		0.922491, -0.100570, 0.372687,
		0.377908, 0.432147, -0.818800,
		46.020557, 32.771553, 33.674541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.300358, 32.953949, 34.456512>,  <45.756023, 32.469051, 34.247700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.300358, 32.953949, 34.456512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171795, 33.054474, 34.091320>,  <46.094658, 33.114788, 33.872204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171795, 33.054474, 34.091320>,  <46.300358, 32.953949, 34.456512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.171795, 33.054474, 34.091320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230777, 0.914283, 0.332909,
		0.918390, 0.317694, -0.235860,
		-0.321406, 0.251310, -0.912985,
		46.075375, 33.129868, 33.817425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.666321, 33.641586, 34.290169>,  <46.300358, 32.953949, 34.456512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.666321, 33.641586, 34.290169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.405228, 33.645496, 33.987160>,  <46.248573, 33.647842, 33.805355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.405228, 33.645496, 33.987160>,  <46.666321, 33.641586, 34.290169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.405228, 33.645496, 33.987160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164046, 0.974370, 0.153924,
		0.739616, 0.224740, -0.634398,
		-0.652731, 0.009775, -0.757527,
		46.209408, 33.648430, 33.759903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.710484, 34.283627, 33.982285>,  <46.666321, 33.641586, 34.290169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.710484, 34.283627, 33.982285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.347473, 34.146023, 33.885906>,  <46.129665, 34.063461, 33.828079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.347473, 34.146023, 33.885906>,  <46.710484, 34.283627, 33.982285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.347473, 34.146023, 33.885906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411040, 0.845325, 0.341280,
		0.086276, 0.408759, -0.908555,
		-0.907526, -0.344008, -0.240948,
		46.075214, 34.042820, 33.813622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.237392, 34.840431, 33.478168>,  <46.710484, 34.283627, 33.982285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.237392, 34.840431, 33.478168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.970783, 34.599854, 33.654358>,  <45.810818, 34.455509, 33.760071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.970783, 34.599854, 33.654358>,  <46.237392, 34.840431, 33.478168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.970783, 34.599854, 33.654358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447344, 0.795333, 0.409058,
		-0.596350, 0.075601, -0.799156,
		-0.666521, -0.601439, 0.440478,
		45.770828, 34.419422, 33.786503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.529327, 35.087910, 33.289330>,  <46.237392, 34.840431, 33.478168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.529327, 35.087910, 33.289330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470718, 34.848042, 33.604015>,  <45.435555, 34.704121, 33.792828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470718, 34.848042, 33.604015>,  <45.529327, 35.087910, 33.289330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.470718, 34.848042, 33.604015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442587, 0.751000, 0.490017,
		-0.884674, -0.276394, -0.375443,
		-0.146520, -0.599672, 0.786718,
		45.426762, 34.668140, 33.840031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.758015, 34.992035, 33.374428>,  <45.529327, 35.087910, 33.289330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.758015, 34.992035, 33.374428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.945065, 34.923492, 33.721291>,  <45.057293, 34.882366, 33.929409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.945065, 34.923492, 33.721291>,  <44.758015, 34.992035, 33.374428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.945065, 34.923492, 33.721291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525844, 0.734628, 0.428731,
		-0.710506, -0.656475, 0.253421,
		0.467621, -0.171356, 0.867161,
		45.085350, 34.872086, 33.981438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.208466, 34.833099, 33.863682>,  <44.758015, 34.992035, 33.374428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.208466, 34.833099, 33.863682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534149, 34.935211, 34.072258>,  <44.729561, 34.996479, 34.197403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534149, 34.935211, 34.072258>,  <44.208466, 34.833099, 33.863682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.534149, 34.935211, 34.072258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532177, 0.687160, 0.494569,
		-0.232060, -0.680180, 0.695344,
		0.814209, 0.255276, 0.521438,
		44.778412, 35.011795, 34.228691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.957211, 35.073235, 34.452980>,  <44.208466, 34.833099, 33.863682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.957211, 35.073235, 34.452980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327942, 35.223301, 34.446899>,  <44.550381, 35.313343, 34.443253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327942, 35.223301, 34.446899>,  <43.957211, 35.073235, 34.452980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327942, 35.223301, 34.446899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313955, 0.796541, 0.516677,
		0.205947, -0.474101, 0.856046,
		0.926832, 0.375167, -0.015199,
		44.605991, 35.335850, 34.442341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105980, 35.402264, 35.093914>,  <43.957211, 35.073235, 34.452980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105980, 35.402264, 35.093914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368111, 35.550713, 34.830761>,  <44.525391, 35.639782, 34.672871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368111, 35.550713, 34.830761>,  <44.105980, 35.402264, 35.093914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368111, 35.550713, 34.830761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190746, 0.924054, 0.331271,
		0.730863, -0.091603, 0.676349,
		0.655329, 0.371124, -0.657884,
		44.564709, 35.662048, 34.633396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362114, 35.968227, 35.454025>,  <44.105980, 35.402264, 35.093914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362114, 35.968227, 35.454025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480385, 36.044384, 35.079578>,  <44.551350, 36.090080, 34.854908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480385, 36.044384, 35.079578>,  <44.362114, 35.968227, 35.454025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480385, 36.044384, 35.079578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167880, 0.975043, 0.145285,
		0.940419, 0.114198, 0.320266,
		0.295681, 0.190395, -0.936121,
		44.569088, 36.101501, 34.798740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.857845, 36.517246, 35.511234>,  <44.362114, 35.968227, 35.454025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.857845, 36.517246, 35.511234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742752, 36.528141, 35.128304>,  <44.673695, 36.534676, 34.898544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742752, 36.528141, 35.128304>,  <44.857845, 36.517246, 35.511234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.742752, 36.528141, 35.128304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012013, 0.999414, 0.032042,
		0.957635, 0.020720, -0.287238,
		-0.287734, 0.027234, -0.957323,
		44.656433, 36.536312, 34.841106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.184277, 37.087742, 35.265400>,  <44.857845, 36.517246, 35.511234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.184277, 37.087742, 35.265400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.870991, 37.029694, 35.023567>,  <44.683018, 36.994865, 34.878468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.870991, 37.029694, 35.023567>,  <45.184277, 37.087742, 35.265400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.870991, 37.029694, 35.023567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162070, 0.986415, -0.026811,
		0.600257, 0.076985, -0.796094,
		-0.783215, -0.145116, -0.604579,
		44.636028, 36.986160, 34.842194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.319946, 37.572273, 34.750229>,  <45.184277, 37.087742, 35.265400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.319946, 37.572273, 34.750229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.944454, 37.437119, 34.723038>,  <44.719158, 37.356026, 34.706722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.944454, 37.437119, 34.723038>,  <45.319946, 37.572273, 34.750229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.944454, 37.437119, 34.723038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329168, 0.937398, -0.113729,
		0.102147, -0.084385, -0.991184,
		-0.938730, -0.337883, -0.067976,
		44.662834, 37.335754, 34.702644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.810505, 36.937935, 34.845112>,  <45.319946, 37.572273, 34.750229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.810505, 36.937935, 34.845112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.835186, 37.317772, 34.968048>,  <45.849995, 37.545673, 35.041809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.835186, 37.317772, 34.968048>,  <45.810505, 36.937935, 34.845112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.835186, 37.317772, 34.968048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114154, -0.299195, 0.947339,
		0.991545, -0.093538, 0.089939,
		0.061703, 0.949596, 0.307343,
		45.853695, 37.602650, 35.060249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.114830, 36.317314, 34.720287>,  <45.810505, 36.937935, 34.845112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.114830, 36.317314, 34.720287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.455383, 36.280594, 34.926865>,  <46.659718, 36.258560, 35.050812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.455383, 36.280594, 34.926865>,  <46.114830, 36.317314, 34.720287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.455383, 36.280594, 34.926865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037223, -0.992658, -0.115085,
		0.523216, 0.078759, -0.848553,
		0.851387, -0.091800, 0.516442,
		46.710800, 36.253056, 35.081799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.681206, 36.043583, 34.368439>,  <46.114830, 36.317314, 34.720287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.681206, 36.043583, 34.368439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.740261, 35.899700, 34.736961>,  <46.775692, 35.813370, 34.958076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.740261, 35.899700, 34.736961>,  <46.681206, 36.043583, 34.368439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.740261, 35.899700, 34.736961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186979, -0.924871, -0.331137,
		0.971207, -0.123379, -0.203800,
		0.147634, -0.359709, 0.921311,
		46.784550, 35.791786, 35.013355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.260742, 35.440224, 34.484997>,  <46.681206, 36.043583, 34.368439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.260742, 35.440224, 34.484997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.968887, 35.407200, 34.756531>,  <46.793774, 35.387386, 34.919453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.968887, 35.407200, 34.756531>,  <47.260742, 35.440224, 34.484997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.968887, 35.407200, 34.756531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016752, -0.990230, -0.138437,
		0.683631, -0.112380, 0.721124,
		-0.729635, -0.082559, 0.678834,
		46.749996, 35.382431, 34.960182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.331009, 34.993443, 35.082230>,  <47.260742, 35.440224, 34.484997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.331009, 34.993443, 35.082230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.718250, 34.937061, 34.999367>,  <47.950596, 34.903233, 34.949650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.718250, 34.937061, 34.999367>,  <47.331009, 34.993443, 35.082230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.718250, 34.937061, 34.999367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178848, 0.967765, 0.177327,
		0.175487, -0.208720, 0.962102,
		0.968100, -0.140952, -0.207159,
		48.008678, 34.894775, 34.937218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.502487, 39.639351, 45.875454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.177792, 39.407295, 45.848598>,  <33.982975, 39.268063, 45.832485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.177792, 39.407295, 45.848598>,  <34.502487, 39.639351, 45.875454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177792, 39.407295, 45.848598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179632, -0.138637, -0.973916,
		0.555703, -0.802629, 0.216750,
		-0.811743, -0.580143, -0.067136,
		33.934269, 39.233253, 45.828457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657383, 39.048782, 45.497162>,  <34.502487, 39.639351, 45.875454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657383, 39.048782, 45.497162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.266018, 39.112423, 45.444401>,  <34.031200, 39.150608, 45.412746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.266018, 39.112423, 45.444401>,  <34.657383, 39.048782, 45.497162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266018, 39.112423, 45.444401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091382, -0.239382, -0.966615,
		-0.185361, -0.957802, 0.219676,
		-0.978413, 0.159098, -0.131898,
		33.972496, 39.160152, 45.404831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514950, 38.420303, 45.227600>,  <34.657383, 39.048782, 45.497162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514950, 38.420303, 45.227600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.219398, 38.672939, 45.133663>,  <34.042068, 38.824520, 45.077301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.219398, 38.672939, 45.133663>,  <34.514950, 38.420303, 45.227600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219398, 38.672939, 45.133663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006357, -0.355032, -0.934833,
		-0.673808, -0.689236, 0.266341,
		-0.738880, 0.631591, -0.234842,
		33.997734, 38.862415, 45.063210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194729, 38.046204, 44.710205>,  <34.514950, 38.420303, 45.227600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194729, 38.046204, 44.710205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.034447, 38.411270, 44.678036>,  <33.938278, 38.630310, 44.658733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.034447, 38.411270, 44.678036>,  <34.194729, 38.046204, 44.710205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034447, 38.411270, 44.678036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017056, -0.080338, -0.996622,
		-0.916047, -0.400727, 0.016625,
		-0.400709, 0.912668, -0.080428,
		33.914234, 38.685070, 44.653908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749783, 37.978260, 44.199913>,  <34.194729, 38.046204, 44.710205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749783, 37.978260, 44.199913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.793877, 38.375248, 44.221268>,  <33.820332, 38.613441, 44.234081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.793877, 38.375248, 44.221268>,  <33.749783, 37.978260, 44.199913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793877, 38.375248, 44.221268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105027, 0.065050, -0.992340,
		-0.988341, 0.103784, 0.111407,
		0.110236, 0.992471, 0.053391,
		33.826946, 38.672989, 44.237286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224144, 38.255268, 43.905659>,  <33.749783, 37.978260, 44.199913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224144, 38.255268, 43.905659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.510185, 38.533035, 43.873634>,  <33.681812, 38.699696, 43.854420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.510185, 38.533035, 43.873634>,  <33.224144, 38.255268, 43.905659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510185, 38.533035, 43.873634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179376, 0.071602, -0.981171,
		-0.675608, 0.716003, 0.175765,
		0.715107, 0.694415, -0.080058,
		33.724716, 38.741360, 43.849617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897312, 38.873596, 43.486855>,  <33.224144, 38.255268, 43.905659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897312, 38.873596, 43.486855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.295780, 38.855469, 43.456921>,  <33.534859, 38.844593, 43.438961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.295780, 38.855469, 43.456921>,  <32.897312, 38.873596, 43.486855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295780, 38.855469, 43.456921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070965, 0.081684, -0.994129,
		0.051168, 0.995627, 0.078154,
		0.996166, -0.045321, -0.074834,
		33.594631, 38.841873, 43.434471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020645, 39.173939, 42.792572>,  <32.897312, 38.873596, 43.486855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020645, 39.173939, 42.792572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.391323, 39.048359, 42.875206>,  <33.613728, 38.973011, 42.924786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.391323, 39.048359, 42.875206>,  <33.020645, 39.173939, 42.792572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391323, 39.048359, 42.875206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229661, 0.037946, -0.972531,
		0.297482, 0.948682, 0.107265,
		0.926693, -0.313945, 0.206587,
		33.669331, 38.954174, 42.937183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464214, 39.563343, 42.435253>,  <33.020645, 39.173939, 42.792572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464214, 39.563343, 42.435253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.685513, 39.238827, 42.510857>,  <33.818291, 39.044117, 42.556217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.685513, 39.238827, 42.510857>,  <33.464214, 39.563343, 42.435253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685513, 39.238827, 42.510857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322163, -0.000855, -0.946684,
		0.768201, 0.584637, 0.260896,
		0.553243, -0.811295, 0.189005,
		33.851486, 38.995438, 42.567558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033848, 39.709629, 41.997005>,  <33.464214, 39.563343, 42.435253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033848, 39.709629, 41.997005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.055374, 39.324455, 42.102730>,  <34.068291, 39.093349, 42.166164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.055374, 39.324455, 42.102730>,  <34.033848, 39.709629, 41.997005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055374, 39.324455, 42.102730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351473, -0.229485, -0.907636,
		0.934650, 0.141746, 0.326095,
		0.053819, -0.962935, 0.264308,
		34.071522, 39.035576, 42.182022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741676, 39.391376, 41.854916>,  <34.033848, 39.709629, 41.997005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741676, 39.391376, 41.854916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.474239, 39.093933, 41.856823>,  <34.313778, 38.915466, 41.857967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.474239, 39.093933, 41.856823>,  <34.741676, 39.391376, 41.854916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474239, 39.093933, 41.856823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318913, -0.292516, -0.901515,
		0.671771, -0.601228, 0.432722,
		-0.668594, -0.743612, 0.004764,
		34.273663, 38.870850, 41.858253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066628, 38.891933, 41.610268>,  <34.741676, 39.391376, 41.854916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066628, 38.891933, 41.610268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.706337, 38.720509, 41.581890>,  <34.490162, 38.617653, 41.564861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.706337, 38.720509, 41.581890>,  <35.066628, 38.891933, 41.610268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706337, 38.720509, 41.581890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264360, -0.411190, -0.872374,
		0.344694, -0.804523, 0.483662,
		-0.900722, -0.428563, -0.070948,
		34.436119, 38.591938, 41.560604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247807, 38.161350, 41.407986>,  <35.066628, 38.891933, 41.610268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247807, 38.161350, 41.407986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.887066, 38.266613, 41.270920>,  <34.670624, 38.329769, 41.188679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.887066, 38.266613, 41.270920>,  <35.247807, 38.161350, 41.407986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887066, 38.266613, 41.270920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251220, -0.325863, -0.911428,
		-0.351511, -0.908054, 0.227768,
		-0.901847, 0.263157, -0.342666,
		34.616512, 38.345558, 41.168121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879551, 37.620525, 40.975899>,  <35.247807, 38.161350, 41.407986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879551, 37.620525, 40.975899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.719471, 37.962421, 40.843681>,  <34.623421, 38.167561, 40.764351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.719471, 37.962421, 40.843681>,  <34.879551, 37.620525, 40.975899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719471, 37.962421, 40.843681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160612, -0.289683, -0.943550,
		-0.902243, -0.430700, -0.021349,
		-0.400202, 0.854740, -0.330540,
		34.599411, 38.218845, 40.744518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343864, 37.438652, 40.559513>,  <34.879551, 37.620525, 40.975899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343864, 37.438652, 40.559513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.499504, 37.796001, 40.469646>,  <34.592888, 38.010410, 40.415726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.499504, 37.796001, 40.469646>,  <34.343864, 37.438652, 40.559513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499504, 37.796001, 40.469646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271202, -0.344170, -0.898886,
		-0.880368, 0.288830, -0.376203,
		0.389103, 0.893378, -0.224665,
		34.616234, 38.064014, 40.402248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480618, 37.401184, 39.825409>,  <34.343864, 37.438652, 40.559513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480618, 37.401184, 39.825409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.639923, 37.762436, 39.889595>,  <34.735504, 37.979187, 39.928108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.639923, 37.762436, 39.889595>,  <34.480618, 37.401184, 39.825409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639923, 37.762436, 39.889595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347066, 0.013565, -0.937743,
		-0.849078, 0.429158, -0.308042,
		0.398261, 0.903128, 0.160464,
		34.759403, 38.033375, 39.937733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317394, 37.780201, 39.297256>,  <34.480618, 37.401184, 39.825409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317394, 37.780201, 39.297256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.638390, 37.961544, 39.452423>,  <34.830986, 38.070351, 39.545525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.638390, 37.961544, 39.452423>,  <34.317394, 37.780201, 39.297256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638390, 37.961544, 39.452423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403539, 0.066516, -0.912541,
		-0.439507, 0.888845, -0.129568,
		0.802490, 0.453354, 0.387918,
		34.879135, 38.097549, 39.568798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501480, 38.384418, 38.880726>,  <34.317394, 37.780201, 39.297256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501480, 38.384418, 38.880726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.840572, 38.298725, 39.074821>,  <35.044025, 38.247307, 39.191280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.840572, 38.298725, 39.074821>,  <34.501480, 38.384418, 38.880726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840572, 38.298725, 39.074821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522839, 0.183279, -0.832495,
		0.089417, 0.959433, 0.267382,
		0.847728, -0.214237, 0.485241,
		35.094891, 38.234455, 39.220394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901665, 38.875191, 38.672173>,  <34.501480, 38.384418, 38.880726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901665, 38.875191, 38.672173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.162369, 38.600224, 38.800343>,  <35.318790, 38.435246, 38.877243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.162369, 38.600224, 38.800343>,  <34.901665, 38.875191, 38.672173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162369, 38.600224, 38.800343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611481, 0.226346, -0.758194,
		0.448667, 0.690093, 0.567864,
		0.651758, -0.687415, 0.320425,
		35.357895, 38.394001, 38.896469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525814, 39.164436, 38.703278>,  <34.901665, 38.875191, 38.672173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525814, 39.164436, 38.703278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.619678, 38.776077, 38.684155>,  <35.675999, 38.543060, 38.672680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.619678, 38.776077, 38.684155>,  <35.525814, 39.164436, 38.703278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619678, 38.776077, 38.684155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656520, 0.194563, -0.728784,
		0.716878, 0.139633, 0.683073,
		0.234663, -0.970900, -0.047806,
		35.690079, 38.484806, 38.669811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280502, 39.108612, 38.660198>,  <35.525814, 39.164436, 38.703278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280502, 39.108612, 38.660198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.136330, 38.753147, 38.546803>,  <36.049828, 38.539867, 38.478767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.136330, 38.753147, 38.546803>,  <36.280502, 39.108612, 38.660198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136330, 38.753147, 38.546803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656600, -0.025842, -0.753797,
		0.662548, -0.457826, 0.592812,
		-0.360427, -0.888666, -0.283487,
		36.028202, 38.486546, 38.461758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827919, 38.724075, 38.499260>,  <36.280502, 39.108612, 38.660198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827919, 38.724075, 38.499260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.521862, 38.544556, 38.314594>,  <36.338230, 38.436844, 38.203793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.521862, 38.544556, 38.314594>,  <36.827919, 38.724075, 38.499260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521862, 38.544556, 38.314594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490146, 0.058946, -0.869645,
		0.417513, -0.891684, 0.174877,
		-0.765140, -0.448804, -0.461666,
		36.292320, 38.409916, 38.176094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098698, 38.511337, 37.788555>,  <36.827919, 38.724075, 38.499260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098698, 38.511337, 37.788555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.491329, 38.566818, 37.841110>,  <37.726910, 38.600109, 37.872643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.491329, 38.566818, 37.841110>,  <37.098698, 38.511337, 37.788555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491329, 38.566818, 37.841110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133170, 0.003593, 0.991087,
		0.136997, -0.990327, 0.021998,
		0.981579, 0.138705, 0.131390,
		37.785805, 38.608429, 37.880527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276779, 38.048237, 38.306854>,  <37.098698, 38.511337, 37.788555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276779, 38.048237, 38.306854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.598900, 38.284992, 38.293259>,  <37.792171, 38.427048, 38.285103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.598900, 38.284992, 38.293259>,  <37.276779, 38.048237, 38.306854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598900, 38.284992, 38.293259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091289, -0.067155, 0.993558,
		0.585796, -0.803215, -0.108114,
		0.805301, 0.591891, -0.033986,
		37.840488, 38.462559, 38.283062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798771, 37.770390, 38.785751>,  <37.276779, 38.048237, 38.306854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798771, 37.770390, 38.785751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.878246, 38.159981, 38.742149>,  <37.925930, 38.393738, 38.715988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.878246, 38.159981, 38.742149>,  <37.798771, 37.770390, 38.785751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878246, 38.159981, 38.742149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031726, 0.104774, 0.993990,
		0.979549, -0.200953, -0.010083,
		0.198688, 0.973982, -0.109007,
		37.937851, 38.452175, 38.709446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365124, 37.932758, 39.269623>,  <37.798771, 37.770390, 38.785751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365124, 37.932758, 39.269623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206844, 38.288475, 39.177906>,  <38.111877, 38.501907, 39.122875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206844, 38.288475, 39.177906>,  <38.365124, 37.932758, 39.269623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206844, 38.288475, 39.177906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120062, 0.197434, 0.972936,
		0.910497, 0.412522, 0.028645,
		-0.395702, 0.889295, -0.229291,
		38.088135, 38.555264, 39.109119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747326, 38.493248, 39.703373>,  <38.365124, 37.932758, 39.269623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747326, 38.493248, 39.703373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.381317, 38.612652, 39.594841>,  <38.161713, 38.684292, 39.529720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.381317, 38.612652, 39.594841>,  <38.747326, 38.493248, 39.703373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381317, 38.612652, 39.594841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149044, 0.374849, 0.915027,
		0.374849, 0.877714, -0.298507,
		-0.915027, 0.298507, -0.271330,
		38.106808, 38.702206, 39.513443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638683, 39.150017, 40.062748>,  <38.747326, 38.493248, 39.703373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638683, 39.150017, 40.062748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265251, 39.067150, 39.945782>,  <38.041191, 39.017429, 39.875603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265251, 39.067150, 39.945782>,  <38.638683, 39.150017, 40.062748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265251, 39.067150, 39.945782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353911, 0.404770, 0.843154,
		-0.056315, 0.890641, -0.451205,
		-0.933582, -0.207169, -0.292413,
		37.985176, 39.005001, 39.858059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238831, 39.697025, 40.298431>,  <38.638683, 39.150017, 40.062748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238831, 39.697025, 40.298431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.954071, 39.428009, 40.217552>,  <37.783215, 39.266598, 40.169025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.954071, 39.428009, 40.217552>,  <38.238831, 39.697025, 40.298431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954071, 39.428009, 40.217552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449879, 0.215639, 0.866666,
		-0.539268, 0.707944, -0.456076,
		-0.711898, -0.672544, -0.202202,
		37.740501, 39.226246, 40.156891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569061, 40.019241, 40.336933>,  <38.238831, 39.697025, 40.298431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569061, 40.019241, 40.336933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.518799, 39.628056, 40.403625>,  <37.488640, 39.393345, 40.443642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.518799, 39.628056, 40.403625>,  <37.569061, 40.019241, 40.336933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518799, 39.628056, 40.403625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404932, 0.203988, 0.891302,
		-0.905672, 0.044482, -0.421640,
		-0.125656, -0.977962, 0.166734,
		37.481102, 39.334667, 40.453644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962326, 40.014782, 40.566235>,  <37.569061, 40.019241, 40.336933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962326, 40.014782, 40.566235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.130791, 39.672806, 40.687363>,  <37.231869, 39.467621, 40.760040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.130791, 39.672806, 40.687363>,  <36.962326, 40.014782, 40.566235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130791, 39.672806, 40.687363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221402, 0.226868, 0.948426,
		-0.879548, -0.466485, -0.093738,
		0.421160, -0.854940, 0.302822,
		37.257137, 39.416325, 40.778210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441643, 39.761734, 41.084175>,  <36.962326, 40.014782, 40.566235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441643, 39.761734, 41.084175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.766075, 39.542522, 41.165970>,  <36.960735, 39.410995, 41.215046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.766075, 39.542522, 41.165970>,  <36.441643, 39.761734, 41.084175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766075, 39.542522, 41.165970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278048, -0.053649, 0.959068,
		-0.514627, -0.834737, -0.195892,
		0.811079, -0.548029, 0.204487,
		37.009399, 39.378113, 41.227318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153931, 39.055122, 41.410492>,  <36.441643, 39.761734, 41.084175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153931, 39.055122, 41.410492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.533310, 39.130421, 41.512478>,  <36.760937, 39.175602, 41.573669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.533310, 39.130421, 41.512478>,  <36.153931, 39.055122, 41.410492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533310, 39.130421, 41.512478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238942, -0.103771, 0.965473,
		0.208207, -0.976624, -0.053441,
		0.948450, 0.188249, 0.254962,
		36.817844, 39.186893, 41.588966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227570, 38.533955, 41.993332>,  <36.153931, 39.055122, 41.410492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227570, 38.533955, 41.993332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.501438, 38.825481, 41.996155>,  <36.665760, 39.000397, 41.997849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.501438, 38.825481, 41.996155>,  <36.227570, 38.533955, 41.993332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501438, 38.825481, 41.996155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083654, 0.068957, 0.994106,
		0.724035, -0.681227, 0.108181,
		0.684672, 0.728817, 0.007060,
		36.706841, 39.044128, 41.998272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670536, 38.289898, 42.452660>,  <36.227570, 38.533955, 41.993332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670536, 38.289898, 42.452660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.744606, 38.682846, 42.462963>,  <36.789047, 38.918613, 42.469143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.744606, 38.682846, 42.462963>,  <36.670536, 38.289898, 42.452660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744606, 38.682846, 42.462963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161521, -0.056279, 0.985263,
		0.969340, -0.178289, -0.169095,
		0.185178, 0.982367, 0.025756,
		36.800159, 38.977558, 42.470692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110634, 38.363445, 42.950367>,  <36.670536, 38.289898, 42.452660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110634, 38.363445, 42.950367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.004162, 38.748032, 42.922874>,  <36.940277, 38.978783, 42.906380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.004162, 38.748032, 42.922874>,  <37.110634, 38.363445, 42.950367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004162, 38.748032, 42.922874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137450, 0.108431, 0.984556,
		0.954073, 0.252623, -0.161016,
		-0.266180, 0.961470, -0.068728,
		36.924309, 39.036472, 42.902256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556339, 38.760136, 43.338634>,  <37.110634, 38.363445, 42.950367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556339, 38.760136, 43.338634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.209446, 38.957397, 43.311222>,  <37.001308, 39.075756, 43.294773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.209446, 38.957397, 43.311222>,  <37.556339, 38.760136, 43.338634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209446, 38.957397, 43.311222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007300, 0.150225, 0.988625,
		0.497844, 0.856870, -0.133881,
		-0.867236, 0.493159, -0.068533,
		36.949276, 39.105347, 43.290661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689106, 39.402676, 43.746342>,  <37.556339, 38.760136, 43.338634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689106, 39.402676, 43.746342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.300533, 39.312496, 43.716709>,  <37.067390, 39.258389, 43.698929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.300533, 39.312496, 43.716709>,  <37.689106, 39.402676, 43.746342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300533, 39.312496, 43.716709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125637, 0.223783, 0.966507,
		-0.201325, 0.948205, -0.245716,
		-0.971434, -0.225453, -0.074077,
		37.009102, 39.244862, 43.694485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279442, 39.857330, 44.158089>,  <37.689106, 39.402676, 43.746342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279442, 39.857330, 44.158089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.024097, 39.554050, 44.104973>,  <36.870892, 39.372082, 44.073105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.024097, 39.554050, 44.104973>,  <37.279442, 39.857330, 44.158089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024097, 39.554050, 44.104973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279366, 0.067462, 0.957812,
		-0.717255, 0.648523, -0.254880,
		-0.638358, -0.758200, -0.132788,
		36.832592, 39.326591, 44.065136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721138, 40.112591, 44.479351>,  <37.279442, 39.857330, 44.158089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721138, 40.112591, 44.479351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.648468, 39.719257, 44.476292>,  <36.604866, 39.483257, 44.474457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.648468, 39.719257, 44.476292>,  <36.721138, 40.112591, 44.479351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648468, 39.719257, 44.476292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299839, 0.047984, 0.952783,
		-0.936532, 0.175386, -0.303558,
		-0.181670, -0.983330, -0.007649,
		36.593967, 39.424259, 44.473995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.884079, 40.020733, 44.844223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.102779, 39.685852, 44.849377>,  <36.233997, 39.484924, 44.852467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.102779, 39.685852, 44.849377>,  <35.884079, 40.020733, 44.844223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102779, 39.685852, 44.849377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171964, -0.097223, 0.980294,
		-0.819448, -0.538189, -0.197124,
		0.546748, -0.837198, 0.012879,
		36.266804, 39.434692, 44.853241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516499, 39.538933, 45.228287>,  <35.884079, 40.020733, 44.844223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516499, 39.538933, 45.228287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.883717, 39.381859, 45.250137>,  <36.104050, 39.287613, 45.263248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.883717, 39.381859, 45.250137>,  <35.516499, 39.538933, 45.228287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883717, 39.381859, 45.250137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153910, -0.226006, 0.961890,
		-0.365375, -0.891470, -0.267923,
		0.918048, -0.392687, 0.054629,
		36.159130, 39.264053, 45.266525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466831, 38.762146, 45.548260>,  <35.516499, 39.538933, 45.228287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466831, 38.762146, 45.548260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.818275, 38.949806, 45.583923>,  <36.029140, 39.062401, 45.605324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.818275, 38.949806, 45.583923>,  <35.466831, 38.762146, 45.548260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818275, 38.949806, 45.583923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005618, -0.196851, 0.980417,
		0.477514, -0.860900, -0.175590,
		0.878606, 0.469150, 0.089162,
		36.081856, 39.090549, 45.610672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671120, 38.419891, 46.110432>,  <35.466831, 38.762146, 45.548260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671120, 38.419891, 46.110432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.942833, 38.712929, 46.127758>,  <36.105862, 38.888752, 46.138153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.942833, 38.712929, 46.127758>,  <35.671120, 38.419891, 46.110432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942833, 38.712929, 46.127758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004130, -0.055201, 0.998466,
		0.733862, -0.678423, -0.034472,
		0.679285, 0.732595, 0.043312,
		36.146618, 38.932709, 46.140751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201733, 38.234848, 46.541222>,  <35.671120, 38.419891, 46.110432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201733, 38.234848, 46.541222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.229053, 38.633427, 46.560905>,  <36.245445, 38.872574, 46.572716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.229053, 38.633427, 46.560905>,  <36.201733, 38.234848, 46.541222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229053, 38.633427, 46.560905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078637, -0.043795, 0.995941,
		0.994561, -0.071898, 0.075366,
		0.068305, 0.996450, 0.049211,
		36.249546, 38.932362, 46.575668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518024, 38.331333, 47.210815>,  <36.201733, 38.234848, 46.541222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518024, 38.331333, 47.210815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.382839, 38.682751, 47.075794>,  <36.301727, 38.893600, 46.994781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.382839, 38.682751, 47.075794>,  <36.518024, 38.331333, 47.210815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382839, 38.682751, 47.075794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147269, 0.304869, 0.940939,
		0.929565, 0.367716, 0.026348,
		-0.337966, 0.878544, -0.337548,
		36.281448, 38.946316, 46.974529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876713, 38.822475, 47.568367>,  <36.518024, 38.331333, 47.210815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876713, 38.822475, 47.568367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.533836, 38.982704, 47.438896>,  <36.328110, 39.078842, 47.361214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.533836, 38.982704, 47.438896>,  <36.876713, 38.822475, 47.568367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533836, 38.982704, 47.438896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229315, 0.265883, 0.936334,
		0.461127, 0.876841, -0.136056,
		-0.857191, 0.400569, -0.323678,
		36.276680, 39.102875, 47.341793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836517, 39.462109, 47.894077>,  <36.876713, 38.822475, 47.568367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836517, 39.462109, 47.894077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.471931, 39.351223, 47.772495>,  <36.253181, 39.284691, 47.699547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.471931, 39.351223, 47.772495>,  <36.836517, 39.462109, 47.894077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471931, 39.351223, 47.772495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371638, 0.238008, 0.897350,
		-0.176411, 0.930863, -0.319957,
		-0.911463, -0.277211, -0.303957,
		36.198494, 39.268059, 47.681309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425373, 39.970406, 48.086132>,  <36.836517, 39.462109, 47.894077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425373, 39.970406, 48.086132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.162777, 39.672897, 48.035828>,  <36.005219, 39.494392, 48.005646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.162777, 39.672897, 48.035828>,  <36.425373, 39.970406, 48.086132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162777, 39.672897, 48.035828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274027, 0.079814, 0.958404,
		-0.702797, 0.663651, -0.256211,
		-0.656495, -0.743773, -0.125765,
		35.965828, 39.449764, 47.998096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831791, 40.123238, 48.376213>,  <36.425373, 39.970406, 48.086132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831791, 40.123238, 48.376213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.789822, 39.725975, 48.355732>,  <35.764641, 39.487617, 48.343445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.789822, 39.725975, 48.355732>,  <35.831791, 40.123238, 48.376213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789822, 39.725975, 48.355732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221290, -0.026877, 0.974837,
		-0.969547, 0.113616, -0.216956,
		-0.104926, -0.993161, -0.051201,
		35.758343, 39.428028, 48.340370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416180, 39.941494, 48.930851>,  <35.831791, 40.123238, 48.376213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416180, 39.941494, 48.930851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.514484, 39.567787, 48.827515>,  <35.573467, 39.343563, 48.765514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.514484, 39.567787, 48.827515>,  <35.416180, 39.941494, 48.930851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514484, 39.567787, 48.827515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116234, -0.292995, 0.949022,
		-0.962335, -0.203209, -0.180602,
		0.245765, -0.934270, -0.258339,
		35.588215, 39.287506, 48.750011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933548, 39.554874, 49.272038>,  <35.416180, 39.941494, 48.930851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933548, 39.554874, 49.272038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.254028, 39.334808, 49.177883>,  <35.446316, 39.202770, 49.121391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.254028, 39.334808, 49.177883>,  <34.933548, 39.554874, 49.272038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254028, 39.334808, 49.177883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021878, -0.420020, 0.907251,
		-0.597999, -0.721738, -0.348556,
		0.801198, -0.550161, -0.235381,
		35.494389, 39.169762, 49.107269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774918, 38.954685, 49.581146>,  <34.933548, 39.554874, 49.272038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774918, 38.954685, 49.581146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.174896, 38.953075, 49.585007>,  <35.414883, 38.952110, 49.587322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.174896, 38.953075, 49.585007>,  <34.774918, 38.954685, 49.581146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174896, 38.953075, 49.585007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010456, -0.416777, 0.908949,
		0.000363, -0.909000, -0.416796,
		0.999945, -0.004028, 0.009656,
		35.474880, 38.951866, 49.587902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945862, 38.535042, 50.083244>,  <34.774918, 38.954685, 49.581146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945862, 38.535042, 50.083244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.307915, 38.698025, 50.034706>,  <35.525146, 38.795815, 50.005585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.307915, 38.698025, 50.034706>,  <34.945862, 38.535042, 50.083244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307915, 38.698025, 50.034706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221029, -0.207192, 0.953004,
		0.363165, -0.889411, -0.277594,
		0.905128, 0.407455, -0.121341,
		35.579453, 38.820263, 49.998302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408215, 38.100380, 50.350193>,  <34.945862, 38.535042, 50.083244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408215, 38.100380, 50.350193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.603661, 38.448181, 50.379070>,  <35.720928, 38.656864, 50.396397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.603661, 38.448181, 50.379070>,  <35.408215, 38.100380, 50.350193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603661, 38.448181, 50.379070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284497, -0.237003, 0.928919,
		0.824813, -0.433344, -0.363175,
		0.488615, 0.869507, 0.072197,
		35.750244, 38.709034, 50.400730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065132, 37.953144, 50.580051>,  <35.408215, 38.100380, 50.350193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065132, 37.953144, 50.580051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.985260, 38.331226, 50.683365>,  <35.937336, 38.558075, 50.745354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.985260, 38.331226, 50.683365>,  <36.065132, 37.953144, 50.580051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985260, 38.331226, 50.683365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326346, -0.184393, 0.927091,
		0.923919, 0.269412, -0.271645,
		-0.199680, 0.945207, 0.258285,
		35.925358, 38.614788, 50.760849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577869, 38.127655, 50.989426>,  <36.065132, 37.953144, 50.580051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577869, 38.127655, 50.989426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.339283, 38.438305, 51.070507>,  <36.196133, 38.624695, 51.119156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.339283, 38.438305, 51.070507>,  <36.577869, 38.127655, 50.989426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339283, 38.438305, 51.070507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252358, -0.058280, 0.965877,
		0.761933, 0.627268, -0.161224,
		-0.596467, 0.776620, 0.202701,
		36.160343, 38.671291, 51.131317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860817, 38.657318, 51.541702>,  <36.577869, 38.127655, 50.989426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860817, 38.657318, 51.541702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.463024, 38.698105, 51.551544>,  <36.224350, 38.722576, 51.557449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.463024, 38.698105, 51.551544>,  <36.860817, 38.657318, 51.541702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463024, 38.698105, 51.551544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042825, 0.180533, 0.982636,
		0.095756, 0.978269, -0.183904,
		-0.994483, 0.101969, 0.024608,
		36.164680, 38.728695, 51.558926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837013, 39.153030, 51.970203>,  <36.860817, 38.657318, 51.541702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837013, 39.153030, 51.970203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.478809, 38.975178, 51.962452>,  <36.263889, 38.868465, 51.957802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.478809, 38.975178, 51.962452>,  <36.837013, 39.153030, 51.970203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478809, 38.975178, 51.962452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045576, -0.134932, 0.989806,
		-0.442711, 0.885493, 0.141096,
		-0.895505, -0.444629, -0.019379,
		36.210159, 38.841789, 51.956638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421707, 39.438133, 52.579609>,  <36.837013, 39.153030, 51.970203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421707, 39.438133, 52.579609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.298008, 39.068989, 52.487789>,  <36.223789, 38.847504, 52.432697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.298008, 39.068989, 52.487789>,  <36.421707, 39.438133, 52.579609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298008, 39.068989, 52.487789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105980, -0.273322, 0.956067,
		-0.945056, 0.271338, 0.182330,
		-0.309252, -0.922860, -0.229549,
		36.205231, 38.792130, 52.418926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072624, 39.263126, 53.123772>,  <36.421707, 39.438133, 52.579609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072624, 39.263126, 53.123772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.115562, 38.912361, 52.936371>,  <36.141323, 38.701900, 52.823929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.115562, 38.912361, 52.936371>,  <36.072624, 39.263126, 53.123772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115562, 38.912361, 52.936371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056455, -0.465088, 0.883463,
		-0.992618, -0.121282, -0.000417,
		0.107343, -0.876917, -0.468501,
		36.147766, 38.649284, 52.795822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784199, 38.790436, 53.641430>,  <36.072624, 39.263126, 53.123772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784199, 38.790436, 53.641430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.974895, 38.565258, 53.371372>,  <36.089314, 38.430153, 53.209339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.974895, 38.565258, 53.371372>,  <35.784199, 38.790436, 53.641430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974895, 38.565258, 53.371372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265419, -0.640010, 0.721068,
		-0.838016, -0.522958, -0.155704,
		0.476741, -0.562940, -0.675142,
		36.117916, 38.396378, 53.168831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474556, 38.127693, 53.666660>,  <35.784199, 38.790436, 53.641430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474556, 38.127693, 53.666660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.851082, 38.120655, 53.531834>,  <36.076996, 38.116432, 53.450935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.851082, 38.120655, 53.531834>,  <35.474556, 38.127693, 53.666660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851082, 38.120655, 53.531834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269003, -0.564076, 0.780676,
		-0.203871, -0.825535, -0.526240,
		0.941315, -0.017597, -0.337070,
		36.133476, 38.115376, 53.430714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150116, 38.594780, 53.122028>,  <35.474556, 38.127693, 53.666660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150116, 38.594780, 53.122028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.472652, 38.405926, 52.979530>,  <35.666172, 38.292614, 52.894032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.472652, 38.405926, 52.979530>,  <35.150116, 38.594780, 53.122028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472652, 38.405926, 52.979530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171372, 0.389984, -0.904734,
		0.566085, 0.790571, 0.233548,
		0.806337, -0.472133, -0.356246,
		35.714554, 38.264286, 52.872658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520058, 38.673954, 53.561066>,  <35.150116, 38.594780, 53.122028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520058, 38.673954, 53.561066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.163410, 38.848396, 53.609779>,  <33.949421, 38.953060, 53.639008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.163410, 38.848396, 53.609779>,  <34.520058, 38.673954, 53.561066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163410, 38.848396, 53.609779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092934, 0.086972, -0.991866,
		-0.443146, -0.895685, -0.037017,
		-0.891619, 0.436102, 0.121781,
		33.895924, 38.979225, 53.646313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048782, 38.417461, 53.026127>,  <34.520058, 38.673954, 53.561066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048782, 38.417461, 53.026127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.792496, 38.709316, 53.121723>,  <33.638725, 38.884430, 53.179081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.792496, 38.709316, 53.121723>,  <34.048782, 38.417461, 53.026127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792496, 38.709316, 53.121723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346641, 0.002845, -0.937994,
		-0.685073, -0.683831, 0.251098,
		-0.640715, 0.729635, 0.238993,
		33.600281, 38.928207, 53.193420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391697, 38.221210, 52.781818>,  <34.048782, 38.417461, 53.026127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391697, 38.221210, 52.781818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.366646, 38.619442, 52.809845>,  <33.351616, 38.858379, 52.826660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.366646, 38.619442, 52.809845>,  <33.391697, 38.221210, 52.781818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366646, 38.619442, 52.809845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259557, 0.051546, -0.964351,
		-0.963695, -0.078584, 0.255180,
		-0.062629, 0.995574, 0.070071,
		33.347858, 38.918114, 52.830868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784729, 38.382889, 52.396236>,  <33.391697, 38.221210, 52.781818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784729, 38.382889, 52.396236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.971306, 38.736706, 52.394382>,  <33.083252, 38.948997, 52.393272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.971306, 38.736706, 52.394382>,  <32.784729, 38.382889, 52.396236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971306, 38.736706, 52.394382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137646, 0.067410, -0.988185,
		-0.873778, 0.461566, 0.153196,
		0.466439, 0.884541, -0.004632,
		33.111237, 39.002068, 52.392994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266788, 38.883026, 52.196465>,  <32.784729, 38.382889, 52.396236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266788, 38.883026, 52.196465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.628784, 39.036087, 52.122101>,  <32.845982, 39.127926, 52.077480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.628784, 39.036087, 52.122101>,  <32.266788, 38.883026, 52.196465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628784, 39.036087, 52.122101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263905, 0.162192, -0.950814,
		-0.333682, 0.909542, 0.247768,
		0.904992, 0.382657, -0.185913,
		32.900280, 39.150883, 52.066326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156403, 39.475204, 51.697571>,  <32.266788, 38.883026, 52.196465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156403, 39.475204, 51.697571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.539330, 39.359741, 51.691631>,  <32.769085, 39.290462, 51.688068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.539330, 39.359741, 51.691631>,  <32.156403, 39.475204, 51.697571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539330, 39.359741, 51.691631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061580, -0.153480, -0.986231,
		0.282403, 0.945051, -0.164705,
		0.957318, -0.288657, -0.014853,
		32.826527, 39.273144, 51.687176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378609, 39.779984, 51.119007>,  <32.156403, 39.475204, 51.697571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378609, 39.779984, 51.119007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.676552, 39.524990, 51.197796>,  <32.855320, 39.371994, 51.245068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.676552, 39.524990, 51.197796>,  <32.378609, 39.779984, 51.119007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676552, 39.524990, 51.197796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013242, -0.309273, -0.950881,
		0.667088, 0.705666, -0.238807,
		0.744861, -0.637484, 0.196968,
		32.900009, 39.333744, 51.256886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806446, 39.879177, 50.618889>,  <32.378609, 39.779984, 51.119007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806446, 39.879177, 50.618889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.888309, 39.511665, 50.753918>,  <32.937428, 39.291157, 50.834934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.888309, 39.511665, 50.753918>,  <32.806446, 39.879177, 50.618889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888309, 39.511665, 50.753918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048179, -0.334998, -0.940987,
		0.977646, 0.208848, -0.024295,
		0.204662, -0.918781, 0.337571,
		32.949707, 39.236031, 50.855190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416458, 39.745296, 50.362793>,  <32.806446, 39.879177, 50.618889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416458, 39.745296, 50.362793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291821, 39.372066, 50.434658>,  <33.217037, 39.148129, 50.477776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291821, 39.372066, 50.434658>,  <33.416458, 39.745296, 50.362793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291821, 39.372066, 50.434658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046001, -0.174039, -0.983664,
		0.949101, -0.314768, 0.011307,
		-0.311594, -0.933076, 0.179660,
		33.198341, 39.092144, 50.488556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958130, 39.260818, 50.202141>,  <33.416458, 39.745296, 50.362793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958130, 39.260818, 50.202141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.604881, 39.074245, 50.182007>,  <33.392933, 38.962303, 50.169926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.604881, 39.074245, 50.182007>,  <33.958130, 39.260818, 50.202141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604881, 39.074245, 50.182007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187587, -0.252733, -0.949177,
		0.430005, -0.847683, 0.310691,
		-0.883123, -0.466433, -0.050338,
		33.339943, 38.934315, 50.166904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105953, 38.759300, 49.778919>,  <33.958130, 39.260818, 50.202141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105953, 38.759300, 49.778919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.706135, 38.751122, 49.787697>,  <33.466244, 38.746212, 49.792961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.706135, 38.751122, 49.787697>,  <34.105953, 38.759300, 49.778919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706135, 38.751122, 49.787697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016248, -0.245654, -0.969221,
		0.025210, -0.969142, 0.245211,
		-0.999550, -0.020450, 0.021940,
		33.406269, 38.744987, 49.794277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975883, 38.252293, 49.351368>,  <34.105953, 38.759300, 49.778919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975883, 38.252293, 49.351368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.636559, 38.464062, 49.355003>,  <33.432964, 38.591122, 49.357185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.636559, 38.464062, 49.355003>,  <33.975883, 38.252293, 49.351368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636559, 38.464062, 49.355003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105335, -0.151908, -0.982766,
		-0.518918, -0.834647, 0.184631,
		-0.848309, 0.529423, 0.009090,
		33.382065, 38.622890, 49.357731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565876, 37.896835, 48.922211>,  <33.975883, 38.252293, 49.351368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565876, 37.896835, 48.922211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.396641, 38.259209, 48.928856>,  <33.295097, 38.476631, 48.932842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.396641, 38.259209, 48.928856>,  <33.565876, 37.896835, 48.922211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396641, 38.259209, 48.928856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037295, 0.035734, -0.998665,
		-0.905319, -0.421908, -0.048906,
		-0.423092, 0.905934, 0.016615,
		33.269714, 38.530991, 48.933842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946667, 37.822872, 48.423672>,  <33.565876, 37.896835, 48.922211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946667, 37.822872, 48.423672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.085136, 38.195000, 48.472134>,  <33.168217, 38.418274, 48.501209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.085136, 38.195000, 48.472134>,  <32.946667, 37.822872, 48.423672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085136, 38.195000, 48.472134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059930, 0.150803, -0.986746,
		-0.936255, 0.334322, 0.107957,
		0.346171, 0.930316, 0.121154,
		33.188988, 38.474094, 48.508480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593464, 38.142670, 47.983555>,  <32.946667, 37.822872, 48.423672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593464, 38.142670, 47.983555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.876503, 38.414474, 48.061092>,  <33.046326, 38.577557, 48.107616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.876503, 38.414474, 48.061092>,  <32.593464, 38.142670, 47.983555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876503, 38.414474, 48.061092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008330, 0.266291, -0.963857,
		-0.706568, 0.683636, 0.182767,
		0.707596, 0.679507, 0.193847,
		33.088783, 38.618328, 48.119247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385719, 38.764172, 47.548462>,  <32.593464, 38.142670, 47.983555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385719, 38.764172, 47.548462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.770981, 38.799255, 47.650166>,  <33.002136, 38.820305, 47.711185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.770981, 38.799255, 47.650166>,  <32.385719, 38.764172, 47.548462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770981, 38.799255, 47.650166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210520, 0.342490, -0.915632,
		-0.167391, 0.935418, 0.311404,
		0.963152, 0.087712, 0.254255,
		33.059925, 38.825569, 47.726440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690121, 39.431747, 47.488937>,  <32.385719, 38.764172, 47.548462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690121, 39.431747, 47.488937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.030235, 39.223511, 47.457954>,  <33.234303, 39.098568, 47.439365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.030235, 39.223511, 47.457954>,  <32.690121, 39.431747, 47.488937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030235, 39.223511, 47.457954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182235, 0.429268, -0.884601,
		0.493768, 0.738046, 0.459870,
		0.850284, -0.520592, -0.077461,
		33.285320, 39.067333, 47.434715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114311, 39.914642, 47.139935>,  <32.690121, 39.431747, 47.488937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114311, 39.914642, 47.139935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.301903, 39.563198, 47.103924>,  <33.414455, 39.352333, 47.082317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.301903, 39.563198, 47.103924>,  <33.114311, 39.914642, 47.139935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301903, 39.563198, 47.103924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314371, 0.261314, -0.912626,
		0.825369, 0.399696, 0.398760,
		0.468975, -0.878611, -0.090027,
		33.442596, 39.299614, 47.076916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668476, 40.072510, 46.820747>,  <33.114311, 39.914642, 47.139935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668476, 40.072510, 46.820747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630833, 39.681416, 46.745724>,  <33.608246, 39.446758, 46.700710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630833, 39.681416, 46.745724>,  <33.668476, 40.072510, 46.820747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630833, 39.681416, 46.745724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233671, 0.161440, -0.958820,
		0.967751, -0.134063, 0.213275,
		-0.094111, -0.977734, -0.187560,
		33.602600, 39.388096, 46.689457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990852, 40.033733, 46.203110>,  <33.668476, 40.072510, 46.820747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990852, 40.033733, 46.203110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.887466, 39.647781, 46.221874>,  <33.825436, 39.416210, 46.233131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.887466, 39.647781, 46.221874>,  <33.990852, 40.033733, 46.203110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887466, 39.647781, 46.221874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259795, -0.116198, -0.958647,
		0.930432, -0.235587, 0.280705,
		-0.258462, -0.964882, 0.046910,
		33.809929, 39.358318, 46.235947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.012180, 29.590334, 36.347374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.688160, 29.459682, 36.152592>,  <45.493748, 29.381290, 36.035721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.688160, 29.459682, 36.152592>,  <46.012180, 29.590334, 36.347374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.688160, 29.459682, 36.152592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178064, 0.928291, -0.326450,
		0.558667, -0.177732, -0.810125,
		-0.810052, -0.326631, -0.486958,
		45.445145, 29.361692, 36.006504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.866985, 29.950365, 35.674759>,  <46.012180, 29.590334, 36.347374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.866985, 29.950365, 35.674759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.504524, 29.802128, 35.756283>,  <45.287048, 29.713184, 35.805199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.504524, 29.802128, 35.756283>,  <45.866985, 29.950365, 35.674759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.504524, 29.802128, 35.756283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421566, 0.830253, -0.364639,
		-0.034083, -0.416340, -0.908570,
		-0.906157, -0.370594, 0.203812,
		45.232677, 29.690950, 35.817425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437901, 29.978144, 35.015480>,  <45.866985, 29.950365, 35.674759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437901, 29.978144, 35.015480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.189095, 30.009314, 35.327129>,  <45.039810, 30.028015, 35.514118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.189095, 30.009314, 35.327129>,  <45.437901, 29.978144, 35.015480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.189095, 30.009314, 35.327129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219719, 0.937687, -0.269198,
		-0.751547, -0.338632, -0.566131,
		-0.622013, 0.077925, 0.779120,
		45.002491, 30.032692, 35.560863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.904232, 30.292976, 34.692749>,  <45.437901, 29.978144, 35.015480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.904232, 30.292976, 34.692749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.836544, 30.337532, 35.084454>,  <44.795933, 30.364265, 35.319477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.836544, 30.337532, 35.084454>,  <44.904232, 30.292976, 34.692749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.836544, 30.337532, 35.084454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318493, 0.934103, -0.161288,
		-0.932699, -0.339182, -0.122592,
		-0.169220, 0.111388, 0.979264,
		44.785778, 30.370949, 35.378231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169991, 30.545742, 34.857208>,  <44.904232, 30.292976, 34.692749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.169991, 30.545742, 34.857208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.333031, 30.663172, 35.203079>,  <44.430855, 30.733629, 35.410603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.333031, 30.663172, 35.203079>,  <44.169991, 30.545742, 34.857208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333031, 30.663172, 35.203079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291173, 0.939268, -0.181643,
		-0.865494, -0.177734, 0.468329,
		0.407602, 0.293576, 0.864682,
		44.455311, 30.751244, 35.462482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.619396, 31.034195, 35.138374>,  <44.169991, 30.545742, 34.857208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.619396, 31.034195, 35.138374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.942970, 31.120520, 35.357113>,  <44.137115, 31.172314, 35.488358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.942970, 31.120520, 35.357113>,  <43.619396, 31.034195, 35.138374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942970, 31.120520, 35.357113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366887, 0.912137, 0.182756,
		-0.459361, -0.348470, 0.817041,
		0.808939, 0.215811, 0.546849,
		44.185654, 31.185263, 35.521168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520340, 31.260130, 35.855778>,  <43.619396, 31.034195, 35.138374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520340, 31.260130, 35.855778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.890514, 31.406908, 35.817986>,  <44.112617, 31.494974, 35.795311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.890514, 31.406908, 35.817986>,  <43.520340, 31.260130, 35.855778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890514, 31.406908, 35.817986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326400, 0.898645, 0.293088,
		0.192450, -0.240396, 0.951406,
		0.925433, 0.366944, -0.094479,
		44.168144, 31.516991, 35.789642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505322, 31.662069, 36.387905>,  <43.520340, 31.260130, 35.855778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505322, 31.662069, 36.387905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.785828, 31.781122, 36.128784>,  <43.954132, 31.852554, 35.973312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.785828, 31.781122, 36.128784>,  <43.505322, 31.662069, 36.387905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.785828, 31.781122, 36.128784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378482, 0.925479, 0.015491,
		0.604136, 0.234317, 0.761652,
		0.701264, 0.297630, -0.647801,
		43.996208, 31.870411, 35.934444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786304, 32.150478, 36.747768>,  <43.505322, 31.662069, 36.387905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786304, 32.150478, 36.747768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.871475, 32.222458, 36.363628>,  <43.922577, 32.265648, 36.133144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.871475, 32.222458, 36.363628>,  <43.786304, 32.150478, 36.747768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871475, 32.222458, 36.363628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490367, 0.869825, 0.054266,
		0.845104, 0.459371, 0.273454,
		0.212929, 0.179953, -0.960353,
		43.935352, 32.276443, 36.075523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004143, 32.829002, 36.788399>,  <43.786304, 32.150478, 36.747768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004143, 32.829002, 36.788399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.917595, 32.773579, 36.401829>,  <43.865665, 32.740322, 36.169888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.917595, 32.773579, 36.401829>,  <44.004143, 32.829002, 36.788399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.917595, 32.773579, 36.401829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408180, 0.912051, -0.039379,
		0.886888, 0.385956, -0.253903,
		-0.216374, -0.138563, -0.966428,
		43.852684, 32.732010, 36.111900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.244381, 33.433342, 36.463818>,  <44.004143, 32.829002, 36.788399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.244381, 33.433342, 36.463818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.953636, 33.257278, 36.252945>,  <43.779190, 33.151638, 36.126423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.953636, 33.257278, 36.252945>,  <44.244381, 33.433342, 36.463818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.953636, 33.257278, 36.252945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379249, 0.897215, -0.226218,
		0.572569, 0.035503, -0.819087,
		-0.726866, -0.440164, -0.527183,
		43.735577, 33.125229, 36.094791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.284439, 33.740391, 35.832405>,  <44.244381, 33.433342, 36.463818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.284439, 33.740391, 35.832405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.924374, 33.566853, 35.817017>,  <43.708336, 33.462730, 35.807785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.924374, 33.566853, 35.817017>,  <44.284439, 33.740391, 35.832405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924374, 33.566853, 35.817017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375889, 0.818440, -0.434584,
		0.220028, -0.376738, -0.899809,
		-0.900164, -0.433849, -0.038468,
		43.654324, 33.436699, 35.805477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.956211, 33.932415, 35.169983>,  <44.284439, 33.740391, 35.832405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.956211, 33.932415, 35.169983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.630516, 33.823555, 35.375099>,  <43.435101, 33.758240, 35.498169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.630516, 33.823555, 35.375099>,  <43.956211, 33.932415, 35.169983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.630516, 33.823555, 35.375099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486571, 0.801728, -0.347104,
		-0.316650, -0.532132, -0.785219,
		-0.814237, -0.272154, 0.512787,
		43.386246, 33.741909, 35.528934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321068, 34.175751, 34.745930>,  <43.956211, 33.932415, 35.169983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321068, 34.175751, 34.745930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.182598, 34.083042, 35.109566>,  <43.099518, 34.027416, 35.327747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.182598, 34.083042, 35.109566>,  <43.321068, 34.175751, 34.745930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182598, 34.083042, 35.109566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649846, 0.758133, -0.054168,
		-0.676656, -0.609520, -0.413065,
		-0.346175, -0.231775, 0.909089,
		43.078747, 34.013508, 35.382294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518192, 34.034248, 34.714230>,  <43.321068, 34.175751, 34.745930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518192, 34.034248, 34.714230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.582912, 34.155586, 35.089848>,  <42.621746, 34.228390, 35.315216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.582912, 34.155586, 35.089848>,  <42.518192, 34.034248, 34.714230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582912, 34.155586, 35.089848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527491, 0.830811, -0.177497,
		-0.834011, -0.466618, 0.294438,
		0.161799, 0.303348, 0.939042,
		42.631451, 34.246590, 35.371559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856892, 34.244499, 35.077087>,  <42.518192, 34.034248, 34.714230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856892, 34.244499, 35.077087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.153770, 34.422153, 35.277843>,  <42.331898, 34.528744, 35.398296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.153770, 34.422153, 35.277843>,  <41.856892, 34.244499, 35.077087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153770, 34.422153, 35.277843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470549, 0.878590, -0.081633,
		-0.477210, -0.175576, 0.861071,
		0.742196, 0.444132, 0.501888,
		42.376431, 34.555393, 35.428410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564182, 34.716885, 35.462864>,  <41.856892, 34.244499, 35.077087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564182, 34.716885, 35.462864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.940788, 34.851452, 35.455116>,  <42.166752, 34.932194, 35.450466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.940788, 34.851452, 35.455116>,  <41.564182, 34.716885, 35.462864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940788, 34.851452, 35.455116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336583, 0.936082, -0.102282,
		-0.016277, 0.102820, 0.994567,
		0.941513, 0.336419, -0.019371,
		42.223244, 34.952377, 35.449306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440884, 35.273228, 35.861679>,  <41.564182, 34.716885, 35.462864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440884, 35.273228, 35.861679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.777214, 35.323540, 35.651081>,  <41.979012, 35.353729, 35.524723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.777214, 35.323540, 35.651081>,  <41.440884, 35.273228, 35.861679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777214, 35.323540, 35.651081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163739, 0.986164, -0.025896,
		0.515950, 0.107981, 0.849786,
		0.840824, 0.125782, -0.526491,
		42.029461, 35.361275, 35.493134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716583, 35.941128, 36.119305>,  <41.440884, 35.273228, 35.861679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716583, 35.941128, 36.119305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.885422, 35.887691, 35.760643>,  <41.986725, 35.855629, 35.545444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.885422, 35.887691, 35.760643>,  <41.716583, 35.941128, 36.119305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885422, 35.887691, 35.760643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155677, 0.963709, -0.216862,
		0.893084, 0.231125, 0.385981,
		0.422096, -0.133588, -0.896654,
		42.012051, 35.847614, 35.491646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242153, 36.489117, 36.008682>,  <41.716583, 35.941128, 36.119305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242153, 36.489117, 36.008682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.150726, 36.358402, 35.641865>,  <42.095871, 36.279976, 35.421776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.150726, 36.358402, 35.641865>,  <42.242153, 36.489117, 36.008682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150726, 36.358402, 35.641865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095211, 0.944968, -0.313002,
		0.968861, 0.015770, -0.247104,
		-0.228569, -0.326783, -0.917044,
		42.082157, 36.260368, 35.366753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565346, 36.890705, 35.662682>,  <42.242153, 36.489117, 36.008682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565346, 36.890705, 35.662682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.292095, 36.754684, 35.404163>,  <42.128143, 36.673073, 35.249054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.292095, 36.754684, 35.404163>,  <42.565346, 36.890705, 35.662682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292095, 36.754684, 35.404163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114906, 0.924002, -0.364715,
		0.721202, -0.174883, -0.670286,
		-0.683128, -0.340054, -0.646297,
		42.087158, 36.652668, 35.210274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658772, 37.056934, 34.813583>,  <42.565346, 36.890705, 35.662682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658772, 37.056934, 34.813583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.271358, 37.020054, 34.906052>,  <42.038910, 36.997925, 34.961533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.271358, 37.020054, 34.906052>,  <42.658772, 37.056934, 34.813583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271358, 37.020054, 34.906052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165708, 0.931925, -0.322576,
		-0.185691, -0.350733, -0.917881,
		-0.968535, -0.092201, 0.231169,
		41.980797, 36.992393, 34.975403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391594, 37.047489, 34.666309>,  <42.658772, 37.056934, 34.813583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391594, 37.047489, 34.666309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.779247, 37.143238, 34.642704>,  <44.011841, 37.200687, 34.628540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.779247, 37.143238, 34.642704>,  <43.391594, 37.047489, 34.666309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779247, 37.143238, 34.642704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205616, -0.916852, -0.342206,
		-0.136023, 0.319509, -0.937770,
		0.969133, 0.239368, -0.059017,
		44.069988, 37.215050, 34.625000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617374, 36.748047, 34.069588>,  <43.391594, 37.047489, 34.666309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617374, 36.748047, 34.069588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.939751, 36.837715, 34.288757>,  <44.133175, 36.891514, 34.420258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.939751, 36.837715, 34.288757>,  <43.617374, 36.748047, 34.069588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939751, 36.837715, 34.288757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386420, -0.900373, -0.200021,
		0.448493, 0.372931, -0.812266,
		0.805936, 0.224168, 0.547919,
		44.181530, 36.904964, 34.453133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084682, 36.608082, 33.625233>,  <43.617374, 36.748047, 34.069588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084682, 36.608082, 33.625233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.283035, 36.612457, 33.972561>,  <44.402046, 36.615082, 34.180958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.283035, 36.612457, 33.972561>,  <44.084682, 36.608082, 33.625233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.283035, 36.612457, 33.972561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442090, -0.863824, -0.241587,
		0.747434, 0.503675, -0.433191,
		0.495881, 0.010939, 0.868321,
		44.431801, 36.615738, 34.233059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826344, 36.400715, 33.540859>,  <44.084682, 36.608082, 33.625233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826344, 36.400715, 33.540859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.754559, 36.306580, 33.922939>,  <44.711487, 36.250099, 34.152187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.754559, 36.306580, 33.922939>,  <44.826344, 36.400715, 33.540859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.754559, 36.306580, 33.922939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490120, -0.863271, -0.120606,
		0.852980, 0.446519, 0.270271,
		-0.179464, -0.235340, 0.955200,
		44.700718, 36.235977, 34.209499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.455624, 36.157825, 33.826061>,  <44.826344, 36.400715, 33.540859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.455624, 36.157825, 33.826061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.172222, 36.007767, 34.065155>,  <45.002182, 35.917732, 34.208611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.172222, 36.007767, 34.065155>,  <45.455624, 36.157825, 33.826061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172222, 36.007767, 34.065155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392034, -0.913512, -0.108650,
		0.586798, 0.157353, 0.794297,
		-0.708504, -0.375147, 0.597735,
		44.959671, 35.895222, 34.244476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.770260, 35.796066, 34.299366>,  <45.455624, 36.157825, 33.826061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.770260, 35.796066, 34.299366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.404202, 35.652058, 34.371910>,  <45.184566, 35.565655, 34.415436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.404202, 35.652058, 34.371910>,  <45.770260, 35.796066, 34.299366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.404202, 35.652058, 34.371910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371379, -0.927932, 0.031938,
		0.156795, 0.096582, 0.982897,
		-0.915146, -0.360020, 0.181364,
		45.129658, 35.544052, 34.426319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.828045, 35.349777, 34.892403>,  <45.770260, 35.796066, 34.299366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.828045, 35.349777, 34.892403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.511047, 35.239010, 34.675045>,  <45.320850, 35.172550, 34.544632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.511047, 35.239010, 34.675045>,  <45.828045, 35.349777, 34.892403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.511047, 35.239010, 34.675045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389784, -0.915233, -0.102061,
		-0.469066, -0.292687, 0.833253,
		-0.792493, -0.276915, -0.543390,
		45.273300, 35.155937, 34.512028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.635601, 34.636616, 35.090538>,  <45.828045, 35.349777, 34.892403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.635601, 34.636616, 35.090538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.454212, 34.700142, 34.739735>,  <45.345379, 34.738258, 34.529251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.454212, 34.700142, 34.739735>,  <45.635601, 34.636616, 35.090538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.454212, 34.700142, 34.739735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353150, -0.871440, -0.340408,
		-0.818322, -0.464080, 0.339086,
		-0.453469, 0.158816, -0.877008,
		45.318172, 34.747787, 34.476631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.309174, 33.939766, 34.854446>,  <45.635601, 34.636616, 35.090538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.309174, 33.939766, 34.854446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.354862, 34.170410, 34.530849>,  <45.382275, 34.308796, 34.336689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.354862, 34.170410, 34.530849>,  <45.309174, 33.939766, 34.854446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.354862, 34.170410, 34.530849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391546, -0.774541, -0.496766,
		-0.913041, -0.260016, -0.314240,
		0.114225, 0.576608, -0.808997,
		45.389130, 34.343391, 34.288151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.933167, 33.601593, 34.248970>,  <45.309174, 33.939766, 34.854446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.933167, 33.601593, 34.248970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.191364, 33.857285, 34.081768>,  <45.346283, 34.010700, 33.981445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.191364, 33.857285, 34.081768>,  <44.933167, 33.601593, 34.248970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.191364, 33.857285, 34.081768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394324, -0.747628, -0.534379,
		-0.654103, 0.180107, -0.734650,
		0.645491, 0.639229, -0.418005,
		45.385010, 34.049053, 33.956367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.823025, 33.575462, 33.527515>,  <44.933167, 33.601593, 34.248970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.823025, 33.575462, 33.527515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.195839, 33.709049, 33.583763>,  <45.419529, 33.789200, 33.617512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.195839, 33.709049, 33.583763>,  <44.823025, 33.575462, 33.527515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.195839, 33.709049, 33.583763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347030, -0.710962, -0.611639,
		-0.104293, 0.618869, -0.778540,
		0.932037, 0.333967, 0.140618,
		45.475449, 33.809238, 33.625950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.249210, 33.592564, 32.868023>,  <44.823025, 33.575462, 33.527515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.249210, 33.592564, 32.868023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.518837, 33.600853, 33.163376>,  <45.680611, 33.605827, 33.340588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.518837, 33.600853, 33.163376>,  <45.249210, 33.592564, 32.868023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.518837, 33.600853, 33.163376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414023, -0.838432, -0.354425,
		0.611739, 0.544612, -0.573736,
		0.674062, 0.020724, 0.738384,
		45.721054, 33.607071, 33.384892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.877720, 33.453236, 32.550476>,  <45.249210, 33.592564, 32.868023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.877720, 33.453236, 32.550476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.932621, 33.368835, 32.937595>,  <45.965561, 33.318195, 33.169868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.932621, 33.368835, 32.937595>,  <45.877720, 33.453236, 32.550476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.932621, 33.368835, 32.937595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325428, -0.913208, -0.245251,
		0.935552, 0.348612, -0.056678,
		0.137256, -0.211000, 0.967801,
		45.973797, 33.305534, 33.227936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.559010, 33.230263, 32.595478>,  <45.877720, 33.453236, 32.550476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.559010, 33.230263, 32.595478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.391876, 33.084274, 32.928276>,  <46.291595, 32.996681, 33.127956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.391876, 33.084274, 32.928276>,  <46.559010, 33.230263, 32.595478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.391876, 33.084274, 32.928276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322132, -0.915781, -0.239949,
		0.849500, 0.167754, 0.500209,
		-0.417829, -0.364970, 0.831995,
		46.266529, 32.974785, 33.177876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.079735, 32.829185, 32.894253>,  <46.559010, 33.230263, 32.595478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.079735, 32.829185, 32.894253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.742695, 32.695900, 33.063484>,  <46.540470, 32.615929, 33.165024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.742695, 32.695900, 33.063484>,  <47.079735, 32.829185, 32.894253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.742695, 32.695900, 33.063484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323092, -0.941290, -0.097898,
		0.430859, 0.054204, 0.900790,
		-0.842598, -0.333218, 0.423077,
		46.489914, 32.595936, 33.190407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.330750, 32.254864, 33.246014>,  <47.079735, 32.829185, 32.894253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.330750, 32.254864, 33.246014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.934875, 32.197617, 33.243572>,  <46.697350, 32.163269, 33.242107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.934875, 32.197617, 33.243572>,  <47.330750, 32.254864, 33.246014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.934875, 32.197617, 33.243572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142369, -0.977993, -0.152514,
		0.015859, -0.151810, 0.988283,
		-0.989687, -0.143119, -0.006103,
		46.637970, 32.154682, 33.241741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.174809, 31.703375, 33.735825>,  <47.330750, 32.254864, 33.246014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.174809, 31.703375, 33.735825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.886597, 31.742208, 33.461189>,  <46.713669, 31.765509, 33.296406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.886597, 31.742208, 33.461189>,  <47.174809, 31.703375, 33.735825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.886597, 31.742208, 33.461189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107316, -0.962609, -0.248733,
		-0.685067, -0.252902, 0.683172,
		-0.720532, 0.097083, -0.686592,
		46.670437, 31.771334, 33.255211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.591671, 31.267553, 33.991188>,  <47.174809, 31.703375, 33.735825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.591671, 31.267553, 33.991188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.553185, 31.329170, 33.597839>,  <46.530090, 31.366140, 33.361832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.553185, 31.329170, 33.597839>,  <46.591671, 31.267553, 33.991188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.553185, 31.329170, 33.597839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233228, -0.956958, -0.172728,
		-0.967650, -0.245969, 0.056151,
		-0.096220, 0.154045, -0.983368,
		46.524319, 31.375383, 33.302830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.161720, 30.640059, 33.826012>,  <46.591671, 31.267553, 33.991188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.161720, 30.640059, 33.826012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.313137, 30.791656, 33.488239>,  <46.403988, 30.882616, 33.285576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.313137, 30.791656, 33.488239>,  <46.161720, 30.640059, 33.826012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.313137, 30.791656, 33.488239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225300, -0.922613, -0.313089,
		-0.897747, -0.071735, -0.434632,
		0.378538, 0.378997, -0.844435,
		46.426697, 30.905355, 33.234909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.906097, 30.256868, 33.278751>,  <46.161720, 30.640059, 33.826012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.906097, 30.256868, 33.278751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.245052, 30.424276, 33.148048>,  <46.448425, 30.524721, 33.069626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.245052, 30.424276, 33.148048>,  <45.906097, 30.256868, 33.278751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.245052, 30.424276, 33.148048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380294, -0.907852, -0.176582,
		-0.370552, 0.025370, -0.928465,
		0.847389, 0.418522, -0.326758,
		46.499268, 30.549833, 33.050022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.683670, 39.946873, 42.000141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392509, 39.672695, 41.992973>,  <37.217812, 39.508190, 41.988674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392509, 39.672695, 41.992973>,  <37.683670, 39.946873, 42.000141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392509, 39.672695, 41.992973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328110, -0.325248, -0.886881,
		0.602079, -0.651445, 0.461650,
		-0.727904, -0.685445, -0.017921,
		37.174137, 39.467060, 41.987598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047131, 39.290306, 41.932766>,  <37.683670, 39.946873, 42.000141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047131, 39.290306, 41.932766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664234, 39.248882, 41.824718>,  <37.434498, 39.224026, 41.759892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664234, 39.248882, 41.824718>,  <38.047131, 39.290306, 41.932766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664234, 39.248882, 41.824718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289157, -0.314165, -0.904261,
		0.008786, -0.943703, 0.330678,
		-0.957241, -0.103563, -0.270118,
		37.377060, 39.217815, 41.743683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967503, 38.703064, 41.597248>,  <38.047131, 39.290306, 41.932766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967503, 38.703064, 41.597248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642761, 38.888702, 41.455544>,  <37.447914, 39.000084, 41.370522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642761, 38.888702, 41.455544>,  <37.967503, 38.703064, 41.597248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642761, 38.888702, 41.455544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077559, -0.515663, -0.853274,
		-0.578683, -0.720212, 0.382649,
		-0.811856, 0.464097, -0.354265,
		37.399204, 39.027931, 41.349266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652050, 38.211079, 41.158936>,  <37.967503, 38.703064, 41.597248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652050, 38.211079, 41.158936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514992, 38.565773, 41.034809>,  <37.432758, 38.778591, 40.960335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514992, 38.565773, 41.034809>,  <37.652050, 38.211079, 41.158936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514992, 38.565773, 41.034809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103228, -0.292774, -0.950593,
		-0.933777, -0.357748, 0.008781,
		-0.342643, 0.886735, -0.310315,
		37.412197, 38.831795, 40.941715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226738, 38.060925, 40.598751>,  <37.652050, 38.211079, 41.158936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226738, 38.060925, 40.598751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305145, 38.450703, 40.554863>,  <37.352188, 38.684570, 40.528530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305145, 38.450703, 40.554863>,  <37.226738, 38.060925, 40.598751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305145, 38.450703, 40.554863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001268, -0.112138, -0.993692,
		-0.980600, 0.194639, -0.023216,
		0.196015, 0.974444, -0.109716,
		37.363949, 38.743034, 40.521950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895481, 38.246780, 39.968750>,  <37.226738, 38.060925, 40.598751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895481, 38.246780, 39.968750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136997, 38.563648, 40.004326>,  <37.281906, 38.753769, 40.025669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136997, 38.563648, 40.004326>,  <36.895481, 38.246780, 39.968750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136997, 38.563648, 40.004326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204085, -0.045766, -0.977883,
		-0.770575, 0.608588, -0.189302,
		0.603791, 0.792166, 0.088938,
		37.318134, 38.801296, 40.031006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777134, 38.716110, 39.461250>,  <36.895481, 38.246780, 39.968750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777134, 38.716110, 39.461250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150673, 38.810371, 39.568871>,  <37.374798, 38.866928, 39.633442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150673, 38.810371, 39.568871>,  <36.777134, 38.716110, 39.461250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150673, 38.810371, 39.568871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245522, 0.124633, -0.961346,
		-0.260076, 0.963812, 0.058531,
		0.933852, 0.235652, 0.269051,
		37.430828, 38.881065, 39.649586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017780, 39.350983, 39.107121>,  <36.777134, 38.716110, 39.461250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017780, 39.350983, 39.107121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345688, 39.155224, 39.226097>,  <37.542431, 39.037769, 39.297485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345688, 39.155224, 39.226097>,  <37.017780, 39.350983, 39.107121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345688, 39.155224, 39.226097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359003, 0.034478, -0.932700,
		0.446203, 0.871380, 0.203958,
		0.819768, -0.489395, 0.297443,
		37.591618, 39.008404, 39.315331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568108, 39.736809, 38.846561>,  <37.017780, 39.350983, 39.107121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568108, 39.736809, 38.846561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698460, 39.367294, 38.926979>,  <37.776672, 39.145584, 38.975231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698460, 39.367294, 38.926979>,  <37.568108, 39.736809, 38.846561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698460, 39.367294, 38.926979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348434, -0.080325, -0.933885,
		0.878861, 0.374385, 0.295703,
		0.325880, -0.923788, 0.201043,
		37.796223, 39.090157, 38.987293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189663, 39.727978, 38.694374>,  <37.568108, 39.736809, 38.846561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189663, 39.727978, 38.694374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121170, 39.333885, 38.693226>,  <38.080074, 39.097431, 38.692535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121170, 39.333885, 38.693226>,  <38.189663, 39.727978, 38.694374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121170, 39.333885, 38.693226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339138, -0.056202, -0.939056,
		0.925022, -0.161770, 0.343752,
		-0.171231, -0.985227, -0.002874,
		38.069801, 39.038319, 38.692364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705132, 39.429180, 38.351768>,  <38.189663, 39.727978, 38.694374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705132, 39.429180, 38.351768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442608, 39.128250, 38.328888>,  <38.285095, 38.947693, 38.315159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442608, 39.128250, 38.328888>,  <38.705132, 39.429180, 38.351768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442608, 39.128250, 38.328888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280232, -0.172667, -0.944275,
		0.700521, -0.635767, 0.324148,
		-0.656308, -0.752321, -0.057206,
		38.245716, 38.902554, 38.311726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066319, 38.719585, 38.126133>,  <38.705132, 39.429180, 38.351768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066319, 38.719585, 38.126133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678108, 38.702885, 38.031185>,  <38.445183, 38.692863, 37.974216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678108, 38.702885, 38.031185>,  <39.066319, 38.719585, 38.126133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678108, 38.702885, 38.031185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240578, -0.227092, -0.943690,
		-0.014499, -0.972978, 0.230443,
		-0.970521, -0.041757, -0.237369,
		38.386951, 38.690357, 37.959972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970989, 38.185520, 37.572868>,  <39.066319, 38.719585, 38.126133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970989, 38.185520, 37.572868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643620, 38.414715, 37.555553>,  <38.447197, 38.552231, 37.545166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643620, 38.414715, 37.555553>,  <38.970989, 38.185520, 37.572868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643620, 38.414715, 37.555553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036070, -0.023949, -0.999062,
		-0.573485, -0.819215, -0.001067,
		-0.818422, 0.572986, -0.043283,
		38.398094, 38.586609, 37.542568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347694, 37.748917, 37.027950>,  <38.970989, 38.185520, 37.572868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347694, 37.748917, 37.027950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298977, 37.366199, 36.922344>,  <39.269745, 37.136570, 36.858978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298977, 37.366199, 36.922344>,  <39.347694, 37.748917, 37.027950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298977, 37.366199, 36.922344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404435, -0.195075, 0.893520,
		-0.906420, 0.215607, -0.363202,
		-0.121798, -0.956796, -0.264020,
		39.262436, 37.079159, 36.843140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653946, 37.623257, 36.984711>,  <39.347694, 37.748917, 37.027950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653946, 37.623257, 36.984711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882801, 37.303886, 37.059727>,  <39.020115, 37.112263, 37.104736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882801, 37.303886, 37.059727>,  <38.653946, 37.623257, 36.984711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882801, 37.303886, 37.059727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523697, -0.179667, 0.832743,
		-0.631190, -0.574658, -0.520929,
		0.572136, -0.798428, 0.187543,
		39.054443, 37.064358, 37.115990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273827, 37.079464, 37.106667>,  <38.653946, 37.623257, 36.984711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273827, 37.079464, 37.106667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619831, 37.003052, 37.292252>,  <38.827435, 36.957207, 37.403603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619831, 37.003052, 37.292252>,  <38.273827, 37.079464, 37.106667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619831, 37.003052, 37.292252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501640, -0.309563, 0.807792,
		-0.010683, -0.931493, -0.363602,
		0.865011, -0.191026, 0.463967,
		38.879333, 36.945744, 37.431442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161583, 36.476318, 37.422165>,  <38.273827, 37.079464, 37.106667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161583, 36.476318, 37.422165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504219, 36.578262, 37.601627>,  <38.709801, 36.639427, 37.709305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504219, 36.578262, 37.601627>,  <38.161583, 36.476318, 37.422165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504219, 36.578262, 37.601627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249337, -0.556804, 0.792338,
		0.451750, -0.790579, -0.413409,
		0.856594, 0.254861, 0.448656,
		38.761196, 36.654720, 37.736225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484161, 35.832088, 37.512314>,  <38.161583, 36.476318, 37.422165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484161, 35.832088, 37.512314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627945, 36.085651, 37.786236>,  <38.714214, 36.237789, 37.950588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627945, 36.085651, 37.786236>,  <38.484161, 35.832088, 37.512314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627945, 36.085651, 37.786236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405639, -0.554748, 0.726437,
		0.840386, -0.538906, 0.057729,
		0.359456, 0.633905, 0.684804,
		38.735783, 36.275822, 37.991676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811768, 35.451599, 38.022827>,  <38.484161, 35.832088, 37.512314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811768, 35.451599, 38.022827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739944, 35.802662, 38.200581>,  <38.696850, 36.013298, 38.307232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739944, 35.802662, 38.200581>,  <38.811768, 35.451599, 38.022827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739944, 35.802662, 38.200581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242670, -0.477281, 0.844579,
		0.953347, 0.043809, 0.298679,
		-0.179554, 0.877658, 0.444384,
		38.686077, 36.065960, 38.333897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154980, 35.442726, 38.653973>,  <38.811768, 35.451599, 38.022827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154980, 35.442726, 38.653973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880455, 35.719791, 38.742695>,  <38.715740, 35.886028, 38.795929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880455, 35.719791, 38.742695>,  <39.154980, 35.442726, 38.653973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880455, 35.719791, 38.742695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037708, -0.338446, 0.940230,
		0.726328, 0.636929, 0.258399,
		-0.686314, 0.692659, 0.221806,
		38.674561, 35.927589, 38.809238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284981, 35.590355, 39.328823>,  <39.154980, 35.442726, 38.653973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284981, 35.590355, 39.328823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919918, 35.743027, 39.270336>,  <38.700882, 35.834629, 39.235245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919918, 35.743027, 39.270336>,  <39.284981, 35.590355, 39.328823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919918, 35.743027, 39.270336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275027, -0.308831, 0.910485,
		0.302358, 0.871173, 0.386829,
		-0.912655, 0.381681, -0.146219,
		38.646122, 35.857533, 39.226471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105267, 35.863728, 39.935287>,  <39.284981, 35.590355, 39.328823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105267, 35.863728, 39.935287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756367, 35.807121, 39.748032>,  <38.547028, 35.773155, 39.635677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756367, 35.807121, 39.748032>,  <39.105267, 35.863728, 39.935287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756367, 35.807121, 39.748032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392906, -0.367198, 0.843084,
		-0.291212, 0.919314, 0.264684,
		-0.872250, -0.141520, -0.468136,
		38.494690, 35.764664, 39.607590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528816, 36.161488, 40.378166>,  <39.105267, 35.863728, 39.935287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528816, 36.161488, 40.378166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355995, 35.913338, 40.116337>,  <38.252304, 35.764446, 39.959240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355995, 35.913338, 40.116337>,  <38.528816, 36.161488, 40.378166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355995, 35.913338, 40.116337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477375, -0.458468, 0.749613,
		-0.765143, 0.636348, -0.098070,
		-0.432053, -0.620377, -0.654570,
		38.226379, 35.727226, 39.919968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864189, 36.214508, 40.511032>,  <38.528816, 36.161488, 40.378166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864189, 36.214508, 40.511032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923805, 35.861584, 40.332455>,  <37.959576, 35.649830, 40.225307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923805, 35.861584, 40.332455>,  <37.864189, 36.214508, 40.511032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923805, 35.861584, 40.332455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408625, -0.466090, 0.784720,
		-0.900451, 0.065472, -0.430002,
		0.149043, -0.882311, -0.446445,
		37.968517, 35.596889, 40.198521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200523, 35.896751, 40.582664>,  <37.864189, 36.214508, 40.511032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200523, 35.896751, 40.582664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463108, 35.602234, 40.517036>,  <37.620659, 35.425522, 40.477661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463108, 35.602234, 40.517036>,  <37.200523, 35.896751, 40.582664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463108, 35.602234, 40.517036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281464, -0.440862, 0.852302,
		-0.699879, -0.513328, -0.496652,
		0.656466, -0.736298, -0.164067,
		37.660049, 35.381344, 40.467815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920765, 35.410549, 40.978073>,  <37.200523, 35.896751, 40.582664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920765, 35.410549, 40.978073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273026, 35.248093, 40.880497>,  <37.484383, 35.150620, 40.821953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273026, 35.248093, 40.880497>,  <36.920765, 35.410549, 40.978073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273026, 35.248093, 40.880497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045995, -0.585745, 0.809190,
		-0.471530, -0.701393, -0.534516,
		0.880650, -0.406142, -0.243936,
		37.537220, 35.126251, 40.807316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885872, 34.681042, 41.201145>,  <36.920765, 35.410549, 40.978073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885872, 34.681042, 41.201145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279934, 34.746071, 41.179108>,  <37.516373, 34.785088, 41.165886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279934, 34.746071, 41.179108>,  <36.885872, 34.681042, 41.201145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279934, 34.746071, 41.179108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129004, -0.489454, 0.862434,
		0.113244, -0.856740, -0.503162,
		0.985157, 0.162576, -0.055095,
		37.575481, 34.794842, 41.162579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239738, 34.102013, 41.327988>,  <36.885872, 34.681042, 41.201145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239738, 34.102013, 41.327988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489212, 34.401279, 41.418560>,  <37.638897, 34.580837, 41.472904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489212, 34.401279, 41.418560>,  <37.239738, 34.102013, 41.327988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489212, 34.401279, 41.418560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043244, -0.322253, 0.945665,
		0.780482, -0.580002, -0.233337,
		0.623681, 0.748165, 0.226431,
		37.676315, 34.625729, 41.486488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146008, 33.410091, 41.521233>,  <37.239738, 34.102013, 41.327988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146008, 33.410091, 41.521233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922150, 33.102776, 41.645508>,  <36.787834, 32.918385, 41.720074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922150, 33.102776, 41.645508>,  <37.146008, 33.410091, 41.521233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922150, 33.102776, 41.645508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153056, -0.272621, -0.949869,
		0.814476, -0.579141, 0.034979,
		-0.559645, -0.768292, 0.310684,
		36.754257, 32.872288, 41.738712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432575, 32.815292, 41.161152>,  <37.146008, 33.410091, 41.521233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432575, 32.815292, 41.161152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060074, 32.726898, 41.277042>,  <36.836575, 32.673862, 41.346577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060074, 32.726898, 41.277042>,  <37.432575, 32.815292, 41.161152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060074, 32.726898, 41.277042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195281, -0.368613, -0.908840,
		0.307632, -0.902935, 0.300118,
		-0.931251, -0.220981, 0.289724,
		36.780697, 32.660603, 41.363960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243309, 32.254993, 40.699280>,  <37.432575, 32.815292, 41.161152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243309, 32.254993, 40.699280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890839, 32.331375, 40.872284>,  <36.679356, 32.377205, 40.976086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890839, 32.331375, 40.872284>,  <37.243309, 32.254993, 40.699280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890839, 32.331375, 40.872284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461833, -0.151907, -0.873862,
		-0.101161, -0.969775, 0.222043,
		-0.881179, 0.190947, 0.432507,
		36.626484, 32.388660, 41.002037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837940, 31.743870, 40.412106>,  <37.243309, 32.254993, 40.699280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837940, 31.743870, 40.412106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591034, 32.032734, 40.536983>,  <36.442890, 32.206055, 40.611908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591034, 32.032734, 40.536983>,  <36.837940, 31.743870, 40.412106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591034, 32.032734, 40.536983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484736, -0.036542, -0.873897,
		-0.619688, -0.690757, 0.372614,
		-0.617267, 0.722163, 0.312190,
		36.405853, 32.249382, 40.630642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194492, 31.521349, 40.209728>,  <36.837940, 31.743870, 40.412106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194492, 31.521349, 40.209728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124905, 31.910572, 40.270256>,  <36.083153, 32.144104, 40.306572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124905, 31.910572, 40.270256>,  <36.194492, 31.521349, 40.209728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124905, 31.910572, 40.270256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521321, 0.039358, -0.852452,
		-0.835439, -0.227186, 0.500428,
		-0.173969, 0.973056, 0.151318,
		36.072716, 32.202488, 40.315651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482716, 31.680519, 40.187611>,  <36.194492, 31.521349, 40.209728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482716, 31.680519, 40.187611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651257, 32.033764, 40.105072>,  <35.752380, 32.245712, 40.055550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651257, 32.033764, 40.105072>,  <35.482716, 31.680519, 40.187611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651257, 32.033764, 40.105072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708833, 0.178758, -0.682350,
		-0.565704, 0.433775, 0.701297,
		0.421349, 0.883111, -0.206350,
		35.777660, 32.298698, 40.043167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848904, 32.112450, 40.039948>,  <35.482716, 31.680519, 40.187611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848904, 32.112450, 40.039948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173412, 32.321938, 39.935978>,  <35.368118, 32.447628, 39.873596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173412, 32.321938, 39.935978>,  <34.848904, 32.112450, 40.039948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173412, 32.321938, 39.935978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488665, 0.363287, -0.793240,
		-0.321006, 0.770548, 0.550646,
		0.811272, 0.523716, -0.259923,
		35.416794, 32.479053, 39.858002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714512, 32.819824, 40.080635>,  <34.848904, 32.112450, 40.039948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714512, 32.819824, 40.080635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993305, 32.774830, 39.797348>,  <35.160580, 32.747833, 39.627377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993305, 32.774830, 39.797348>,  <34.714512, 32.819824, 40.080635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993305, 32.774830, 39.797348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654101, 0.305034, -0.692175,
		0.293890, 0.945675, 0.139025,
		0.696980, -0.112487, -0.708213,
		35.202400, 32.741085, 39.584885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458912, 33.133102, 39.569031>,  <34.714512, 32.819824, 40.080635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458912, 33.133102, 39.569031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772190, 32.983761, 39.370148>,  <34.960155, 32.894154, 39.250816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772190, 32.983761, 39.370148>,  <34.458912, 33.133102, 39.569031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772190, 32.983761, 39.370148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407124, 0.296470, -0.863919,
		0.469957, 0.879039, 0.080189,
		0.783192, -0.373358, -0.497206,
		35.007149, 32.871754, 39.220985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726368, 33.658173, 39.076794>,  <34.458912, 33.133102, 39.569031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726368, 33.658173, 39.076794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870548, 33.310295, 38.941910>,  <34.957058, 33.101570, 38.860977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870548, 33.310295, 38.941910>,  <34.726368, 33.658173, 39.076794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870548, 33.310295, 38.941910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289318, 0.239445, -0.926802,
		0.886775, 0.431629, -0.165309,
		0.360452, -0.869691, -0.337212,
		34.978683, 33.049389, 38.840748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096107, 33.811260, 38.558167>,  <34.726368, 33.658173, 39.076794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096107, 33.811260, 38.558167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995216, 33.429699, 38.493114>,  <34.934681, 33.200760, 38.454082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995216, 33.429699, 38.493114>,  <35.096107, 33.811260, 38.558167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995216, 33.429699, 38.493114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267921, 0.230333, -0.935503,
		0.929839, -0.192385, -0.313667,
		-0.252225, -0.953905, -0.162629,
		34.919548, 33.143528, 38.444324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094330, 33.692944, 37.869148>,  <35.096107, 33.811260, 38.558167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094330, 33.692944, 37.869148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845741, 33.425060, 38.031765>,  <34.696590, 33.264332, 38.129333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845741, 33.425060, 38.031765>,  <35.094330, 33.692944, 37.869148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845741, 33.425060, 38.031765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730392, 0.307572, -0.609858,
		0.283386, -0.675939, -0.680294,
		-0.621466, -0.669706, 0.406539,
		34.659302, 33.224148, 38.153728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.781563, 33.456360, 44.986813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.439213, 33.306225, 45.129139>,  <37.233803, 33.216145, 45.214535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.439213, 33.306225, 45.129139>,  <37.781563, 33.456360, 44.986813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439213, 33.306225, 45.129139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236605, -0.327610, -0.914708,
		0.459889, -0.867062, 0.191587,
		-0.855874, -0.375334, 0.355815,
		37.182449, 33.193626, 45.235882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792633, 32.770180, 44.732300>,  <37.781563, 33.456360, 44.986813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792633, 32.770180, 44.732300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.424248, 32.902550, 44.814579>,  <37.203217, 32.981972, 44.863949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.424248, 32.902550, 44.814579>,  <37.792633, 32.770180, 44.732300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424248, 32.902550, 44.814579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296529, -0.252773, -0.920965,
		-0.252773, -0.909173, 0.330924,
		0.920965, -0.330924, -0.205702,
		37.147957, 33.001827, 44.876289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388466, 32.257038, 44.495380>,  <37.792633, 32.770180, 44.732300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388466, 32.257038, 44.495380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.102631, 32.535664, 44.521172>,  <36.931129, 32.702839, 44.536648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.102631, 32.535664, 44.521172>,  <37.388466, 32.257038, 44.495380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102631, 32.535664, 44.521172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315720, -0.238887, -0.918289,
		-0.624247, -0.676555, 0.390626,
		-0.714588, 0.696567, 0.064478,
		36.888252, 32.744633, 44.540516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708096, 31.991243, 44.276211>,  <37.388466, 32.257038, 44.495380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708096, 31.991243, 44.276211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.707550, 32.385525, 44.208813>,  <36.707222, 32.622093, 44.168373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.707550, 32.385525, 44.208813>,  <36.708096, 31.991243, 44.276211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707550, 32.385525, 44.208813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154752, -0.166669, -0.973793,
		-0.987953, 0.024750, 0.152766,
		-0.001360, 0.985702, -0.168491,
		36.707142, 32.681236, 44.158264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074608, 32.111969, 43.817993>,  <36.708096, 31.991243, 44.276211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074608, 32.111969, 43.817993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.345825, 32.404682, 43.790447>,  <36.508556, 32.580311, 43.773922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.345825, 32.404682, 43.790447>,  <36.074608, 32.111969, 43.817993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345825, 32.404682, 43.790447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002786, -0.091128, -0.995835,
		-0.735013, 0.675415, -0.059750,
		0.678047, 0.731785, -0.068862,
		36.549240, 32.624218, 43.769791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840004, 32.498573, 43.291142>,  <36.074608, 32.111969, 43.817993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840004, 32.498573, 43.291142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.205841, 32.658131, 43.317673>,  <36.425343, 32.753864, 43.333591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.205841, 32.658131, 43.317673>,  <35.840004, 32.498573, 43.291142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205841, 32.658131, 43.317673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068493, 0.008845, -0.997612,
		-0.398523, 0.916957, -0.019232,
		0.914597, 0.398889, 0.066330,
		36.480221, 32.777798, 43.337570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917625, 33.245129, 42.901684>,  <35.840004, 32.498573, 43.291142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917625, 33.245129, 42.901684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.279087, 33.073841, 42.904102>,  <36.495964, 32.971069, 42.905556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.279087, 33.073841, 42.904102>,  <35.917625, 33.245129, 42.901684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279087, 33.073841, 42.904102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009822, 0.006602, -0.999930,
		0.428150, 0.903651, 0.010171,
		0.903654, -0.428220, 0.006049,
		36.550182, 32.945374, 42.905918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200611, 33.543640, 42.399231>,  <35.917625, 33.245129, 42.901684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200611, 33.543640, 42.399231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.456165, 33.244926, 42.473137>,  <36.609497, 33.065697, 42.517483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.456165, 33.244926, 42.473137>,  <36.200611, 33.543640, 42.399231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456165, 33.244926, 42.473137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103679, -0.154402, -0.982553,
		0.762286, 0.646892, -0.021218,
		0.638882, -0.746787, 0.184768,
		36.647831, 33.020889, 42.528568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777111, 33.728806, 42.079494>,  <36.200611, 33.543640, 42.399231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777111, 33.728806, 42.079494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.753979, 33.331676, 42.121368>,  <36.740097, 33.093399, 42.146492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.753979, 33.331676, 42.121368>,  <36.777111, 33.728806, 42.079494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753979, 33.331676, 42.121368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117265, -0.097382, -0.988314,
		0.991415, -0.069436, -0.110792,
		-0.057835, -0.992822, 0.104689,
		36.736629, 33.033829, 42.152775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569511, 33.878891, 41.970520>,  <36.777111, 33.728806, 42.079494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569511, 33.878891, 41.970520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.680874, 34.262394, 41.947651>,  <37.747692, 34.492496, 41.933929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.680874, 34.262394, 41.947651>,  <37.569511, 33.878891, 41.970520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680874, 34.262394, 41.947651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228566, -0.008317, 0.973493,
		0.932869, -0.284100, -0.221455,
		0.278411, 0.958759, -0.057177,
		37.764397, 34.550022, 41.930496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208126, 33.854088, 42.280544>,  <37.569511, 33.878891, 41.970520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208126, 33.854088, 42.280544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.084389, 34.233768, 42.303627>,  <38.010147, 34.461575, 42.317478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.084389, 34.233768, 42.303627>,  <38.208126, 33.854088, 42.280544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084389, 34.233768, 42.303627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464543, 0.097890, 0.880123,
		0.829762, 0.299070, -0.471225,
		-0.309347, 0.949197, 0.057706,
		37.991585, 34.518528, 42.320938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771236, 34.287792, 42.484509>,  <38.208126, 33.854088, 42.280544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771236, 34.287792, 42.484509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.459183, 34.527550, 42.556194>,  <38.271950, 34.671402, 42.599205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.459183, 34.527550, 42.556194>,  <38.771236, 34.287792, 42.484509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459183, 34.527550, 42.556194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448704, 0.336462, 0.827924,
		0.435951, 0.726308, -0.531435,
		-0.780136, 0.599391, 0.179217,
		38.225143, 34.707367, 42.609959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998650, 34.904171, 42.718735>,  <38.771236, 34.287792, 42.484509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998650, 34.904171, 42.718735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.628609, 34.886402, 42.869583>,  <38.406586, 34.875740, 42.960091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.628609, 34.886402, 42.869583>,  <38.998650, 34.904171, 42.718735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628609, 34.886402, 42.869583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336270, 0.365494, 0.867949,
		-0.176393, 0.929753, -0.323180,
		-0.925099, -0.044425, 0.377119,
		38.351078, 34.873074, 42.982719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863205, 35.553288, 43.148907>,  <38.998650, 34.904171, 42.718735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863205, 35.553288, 43.148907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.594208, 35.293812, 43.291435>,  <38.432808, 35.138126, 43.376953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.594208, 35.293812, 43.291435>,  <38.863205, 35.553288, 43.148907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594208, 35.293812, 43.291435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104406, 0.393478, 0.913386,
		-0.732703, 0.651447, -0.196884,
		-0.672492, -0.648685, 0.356317,
		38.392460, 35.099205, 43.398331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427208, 35.979595, 43.580574>,  <38.863205, 35.553288, 43.148907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427208, 35.979595, 43.580574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.306850, 35.615570, 43.694595>,  <38.234634, 35.397156, 43.763008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.306850, 35.615570, 43.694595>,  <38.427208, 35.979595, 43.580574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306850, 35.615570, 43.694595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146302, 0.339420, 0.929188,
		-0.942368, 0.237883, -0.235272,
		-0.300895, -0.910058, 0.285056,
		38.216583, 35.342552, 43.780113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772278, 36.029850, 44.058327>,  <38.427208, 35.979595, 43.580574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772278, 36.029850, 44.058327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.936684, 35.676525, 44.148506>,  <38.035328, 35.464531, 44.202614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.936684, 35.676525, 44.148506>,  <37.772278, 36.029850, 44.058327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936684, 35.676525, 44.148506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067954, 0.276305, 0.958665,
		-0.909091, -0.378709, 0.173591,
		0.411019, -0.883309, 0.225452,
		38.059990, 35.411533, 44.216141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378044, 35.736397, 44.811855>,  <37.772278, 36.029850, 44.058327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378044, 35.736397, 44.811855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.714165, 35.526352, 44.757961>,  <37.915836, 35.400326, 44.725624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.714165, 35.526352, 44.757961>,  <37.378044, 35.736397, 44.811855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714165, 35.526352, 44.757961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212524, 0.090439, 0.972962,
		-0.498726, -0.846215, 0.187594,
		0.840301, -0.525110, -0.134737,
		37.966255, 35.368820, 44.717541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449558, 35.184708, 45.393261>,  <37.378044, 35.736397, 44.811855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449558, 35.184708, 45.393261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.825230, 35.199303, 45.256668>,  <38.050632, 35.208057, 45.174713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.825230, 35.199303, 45.256668>,  <37.449558, 35.184708, 45.393261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825230, 35.199303, 45.256668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336373, 0.102725, 0.936109,
		0.069229, -0.994040, 0.084206,
		0.939181, 0.036481, -0.341480,
		38.106983, 35.210247, 45.154224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824409, 34.782043, 45.851208>,  <37.449558, 35.184708, 45.393261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824409, 34.782043, 45.851208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.112797, 35.014481, 45.700191>,  <38.285828, 35.153942, 45.609581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.112797, 35.014481, 45.700191>,  <37.824409, 34.782043, 45.851208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112797, 35.014481, 45.700191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365153, 0.144469, 0.919669,
		0.588954, -0.800914, -0.108029,
		0.720969, 0.581090, -0.377542,
		38.329086, 35.188808, 45.586929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542950, 34.565758, 46.141941>,  <37.824409, 34.782043, 45.851208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542950, 34.565758, 46.141941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.612309, 34.939800, 46.018322>,  <38.653923, 35.164227, 45.944149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.612309, 34.939800, 46.018322>,  <38.542950, 34.565758, 46.141941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612309, 34.939800, 46.018322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555674, 0.166186, 0.814622,
		0.813116, -0.312986, -0.490797,
		0.173401, 0.935106, -0.309046,
		38.664330, 35.220333, 45.925610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258816, 34.626713, 46.161819>,  <38.542950, 34.565758, 46.141941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258816, 34.626713, 46.161819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.108154, 34.997089, 46.172905>,  <39.017757, 35.219315, 46.179554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.108154, 34.997089, 46.172905>,  <39.258816, 34.626713, 46.161819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108154, 34.997089, 46.172905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501551, 0.178688, 0.846473,
		0.778832, 0.332724, -0.531709,
		-0.376652, 0.925940, 0.027710,
		38.995159, 35.274872, 46.181217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848618, 35.102692, 46.358128>,  <39.258816, 34.626713, 46.161819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848618, 35.102692, 46.358128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.504436, 35.282963, 46.453213>,  <39.297928, 35.391125, 46.510262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.504436, 35.282963, 46.453213>,  <39.848618, 35.102692, 46.358128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504436, 35.282963, 46.453213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363596, 0.216275, 0.906103,
		0.356950, 0.866092, -0.349960,
		-0.860456, 0.450677, 0.237708,
		39.246300, 35.418167, 46.524525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080879, 35.669491, 46.661865>,  <39.848618, 35.102692, 46.358128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080879, 35.669491, 46.661865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.704422, 35.632439, 46.791889>,  <39.478546, 35.610207, 46.869904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.704422, 35.632439, 46.791889>,  <40.080879, 35.669491, 46.661865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704422, 35.632439, 46.791889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268918, 0.377418, 0.886137,
		-0.204765, 0.921399, -0.330296,
		-0.941145, -0.092628, 0.325063,
		39.422077, 35.604649, 46.889408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.890965, 36.760628, 47.606960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.288284, 36.718548, 47.626102>,  <31.526676, 36.693298, 47.637589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.288284, 36.718548, 47.626102>,  <30.890965, 36.760628, 47.606960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288284, 36.718548, 47.626102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042241, -0.054996, -0.997593,
		0.107583, 0.992929, -0.050184,
		0.993298, -0.105204, 0.047859,
		31.586273, 36.686985, 47.640461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222460, 37.298100, 47.174286>,  <30.890965, 36.760628, 47.606960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222460, 37.298100, 47.174286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.461443, 36.980236, 47.217312>,  <31.604832, 36.789520, 47.243126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.461443, 36.980236, 47.217312>,  <31.222460, 37.298100, 47.174286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461443, 36.980236, 47.217312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067657, -0.083704, -0.994191,
		0.799042, 0.601263, 0.003754,
		0.597456, -0.794655, 0.107562,
		31.640680, 36.741840, 47.249580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849833, 37.475163, 46.785503>,  <31.222460, 37.298100, 47.174286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849833, 37.475163, 46.785503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.861773, 37.077450, 46.826511>,  <31.868937, 36.838821, 46.851116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.861773, 37.077450, 46.826511>,  <31.849833, 37.475163, 46.785503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861773, 37.077450, 46.826511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482231, -0.075517, -0.872783,
		0.875536, 0.075491, 0.477219,
		0.029849, -0.994283, 0.102522,
		31.870728, 36.779163, 46.857269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431889, 37.425816, 46.414253>,  <31.849833, 37.475163, 46.785503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431889, 37.425816, 46.414253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.293037, 37.052589, 46.451988>,  <32.209728, 36.828655, 46.474628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.293037, 37.052589, 46.451988>,  <32.431889, 37.425816, 46.414253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293037, 37.052589, 46.451988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511839, -0.272778, -0.814624,
		0.785828, -0.234492, 0.572266,
		-0.347124, -0.933063, 0.094335,
		32.188900, 36.772671, 46.480289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953445, 37.008648, 46.543022>,  <32.431889, 37.425816, 46.414253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953445, 37.008648, 46.543022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.659908, 36.773399, 46.407024>,  <32.483788, 36.632252, 46.325428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.659908, 36.773399, 46.407024>,  <32.953445, 37.008648, 46.543022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659908, 36.773399, 46.407024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477242, -0.090155, -0.874135,
		0.483446, -0.803732, 0.346835,
		-0.733840, -0.588121, -0.339990,
		32.439754, 36.596962, 46.305027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270645, 36.414944, 46.178749>,  <32.953445, 37.008648, 46.543022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270645, 36.414944, 46.178749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.901840, 36.433323, 46.024975>,  <32.680557, 36.444351, 45.932713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.901840, 36.433323, 46.024975>,  <33.270645, 36.414944, 46.178749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901840, 36.433323, 46.024975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374030, -0.150762, -0.915081,
		-0.100009, -0.987502, 0.121816,
		-0.922009, 0.045954, -0.384433,
		32.625237, 36.447109, 45.909645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242493, 35.958065, 45.655174>,  <33.270645, 36.414944, 46.178749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242493, 35.958065, 45.655174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.940620, 36.209435, 45.579754>,  <32.759499, 36.360256, 45.534504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.940620, 36.209435, 45.579754>,  <33.242493, 35.958065, 45.655174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940620, 36.209435, 45.579754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172848, -0.086793, -0.981117,
		-0.632919, -0.773017, -0.043120,
		-0.754677, 0.628421, -0.188547,
		32.714218, 36.397961, 45.523190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803307, 35.651474, 45.088306>,  <33.242493, 35.958065, 45.655174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803307, 35.651474, 45.088306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.660831, 36.024101, 45.059158>,  <32.575348, 36.247677, 45.041668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.660831, 36.024101, 45.059158>,  <32.803307, 35.651474, 45.088306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660831, 36.024101, 45.059158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000437, -0.077819, -0.996967,
		-0.934415, -0.355137, 0.027311,
		-0.356185, 0.931570, -0.072870,
		32.553974, 36.303574, 45.037296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337067, 35.658592, 44.539745>,  <32.803307, 35.651474, 45.088306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337067, 35.658592, 44.539745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.438816, 36.040493, 44.601387>,  <32.499866, 36.269634, 44.638371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.438816, 36.040493, 44.601387>,  <32.337067, 35.658592, 44.539745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438816, 36.040493, 44.601387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098965, 0.184202, -0.977893,
		-0.962029, 0.233501, 0.141343,
		0.254375, 0.954750, 0.154100,
		32.515129, 36.326920, 44.647617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798725, 36.100636, 44.213932>,  <32.337067, 35.658592, 44.539745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798725, 36.100636, 44.213932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.158867, 36.273560, 44.233803>,  <32.374950, 36.377316, 44.245724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.158867, 36.273560, 44.233803>,  <31.798725, 36.100636, 44.213932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158867, 36.273560, 44.233803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037085, 0.189973, -0.981088,
		-0.433576, 0.881484, 0.187075,
		0.900353, 0.432314, 0.049678,
		32.428974, 36.403255, 44.248707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707235, 36.685776, 43.803883>,  <31.798725, 36.100636, 44.213932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707235, 36.685776, 43.803883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.099819, 36.622303, 43.846882>,  <32.335369, 36.584217, 43.872681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.099819, 36.622303, 43.846882>,  <31.707235, 36.685776, 43.803883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099819, 36.622303, 43.846882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143895, 0.239534, -0.960166,
		0.126615, 0.957832, 0.257927,
		0.981460, -0.158685, 0.107499,
		32.394257, 36.574696, 43.879131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966127, 37.139709, 43.347000>,  <31.707235, 36.685776, 43.803883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966127, 37.139709, 43.347000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.308842, 36.949448, 43.426670>,  <32.514469, 36.835293, 43.474472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.308842, 36.949448, 43.426670>,  <31.966127, 37.139709, 43.347000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308842, 36.949448, 43.426670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261072, 0.067018, -0.962990,
		0.444701, 0.877076, 0.181599,
		0.856786, -0.475653, 0.199177,
		32.565876, 36.806751, 43.486423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517250, 37.529652, 43.120342>,  <31.966127, 37.139709, 43.347000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517250, 37.529652, 43.120342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.641449, 37.149803, 43.137333>,  <32.715969, 36.921894, 43.147530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.641449, 37.149803, 43.137333>,  <32.517250, 37.529652, 43.120342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641449, 37.149803, 43.137333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264411, 0.043356, -0.963435,
		0.913061, 0.310374, 0.264553,
		0.310495, -0.949625, 0.042479,
		32.734596, 36.864914, 43.150078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229988, 37.484245, 42.860470>,  <32.517250, 37.529652, 43.120342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229988, 37.484245, 42.860470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.037529, 37.136581, 42.814766>,  <32.922054, 36.927982, 42.787342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.037529, 37.136581, 42.814766>,  <33.229988, 37.484245, 42.860470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037529, 37.136581, 42.814766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179203, 0.030070, -0.983352,
		0.858130, -0.493609, 0.141289,
		-0.481143, -0.869164, -0.114261,
		32.893185, 36.875832, 42.780487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914307, 37.724949, 42.530418>,  <33.229988, 37.484245, 42.860470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914307, 37.724949, 42.530418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.977669, 38.104332, 42.420635>,  <34.015686, 38.331963, 42.354767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.977669, 38.104332, 42.420635>,  <33.914307, 37.724949, 42.530418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977669, 38.104332, 42.420635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057851, 0.268574, 0.961520,
		0.985677, -0.168192, -0.012324,
		0.158410, 0.948462, -0.274457,
		34.025192, 38.388870, 42.338299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527546, 37.890110, 42.839310>,  <33.914307, 37.724949, 42.530418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527546, 37.890110, 42.839310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.344975, 38.238045, 42.764416>,  <34.235432, 38.446804, 42.719479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.344975, 38.238045, 42.764416>,  <34.527546, 37.890110, 42.839310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344975, 38.238045, 42.764416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095147, 0.256943, 0.961731,
		0.884657, 0.421149, -0.200039,
		-0.456431, 0.869835, -0.187235,
		34.208046, 38.498997, 42.708244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815556, 38.378448, 43.218174>,  <34.527546, 37.890110, 42.839310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815556, 38.378448, 43.218174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.479168, 38.574306, 43.126072>,  <34.277336, 38.691822, 43.070812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.479168, 38.574306, 43.126072>,  <34.815556, 38.378448, 43.218174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479168, 38.574306, 43.126072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109902, 0.262097, 0.958763,
		0.529801, 0.831598, -0.166603,
		-0.840971, 0.489643, -0.230254,
		34.226875, 38.721199, 43.056995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917843, 39.063988, 43.430828>,  <34.815556, 38.378448, 43.218174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917843, 39.063988, 43.430828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.522507, 39.003075, 43.430824>,  <34.285305, 38.966526, 43.430820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.522507, 39.003075, 43.430824>,  <34.917843, 39.063988, 43.430828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522507, 39.003075, 43.430824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042397, 0.275104, 0.960479,
		-0.146258, 0.949278, -0.278352,
		-0.988337, -0.152279, -0.000010,
		34.226006, 38.957390, 43.430820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737530, 39.520977, 43.908966>,  <34.917843, 39.063988, 43.430828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737530, 39.520977, 43.908966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.400131, 39.306877, 43.890976>,  <34.197693, 39.178417, 43.880184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.400131, 39.306877, 43.890976>,  <34.737530, 39.520977, 43.908966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400131, 39.306877, 43.890976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212183, 0.255116, 0.943342,
		-0.493453, 0.805246, -0.328760,
		-0.843494, -0.535252, -0.044972,
		34.147083, 39.146301, 43.877483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282261, 39.875053, 44.322357>,  <34.737530, 39.520977, 43.908966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282261, 39.875053, 44.322357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.094948, 39.525032, 44.273361>,  <33.982559, 39.315022, 44.243965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.094948, 39.525032, 44.273361>,  <34.282261, 39.875053, 44.322357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094948, 39.525032, 44.273361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382030, 0.075511, 0.921059,
		-0.796723, 0.478108, -0.369656,
		-0.468279, -0.875049, -0.122490,
		33.954464, 39.262516, 44.236614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531780, 39.924866, 44.439869>,  <34.282261, 39.875053, 44.322357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531780, 39.924866, 44.439869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.642132, 39.548229, 44.517117>,  <33.708344, 39.322247, 44.563465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.642132, 39.548229, 44.517117>,  <33.531780, 39.924866, 44.439869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642132, 39.548229, 44.517117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331163, 0.095502, 0.938728,
		-0.902343, -0.322929, -0.285473,
		0.275879, -0.941593, 0.193117,
		33.724895, 39.265751, 44.575050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024811, 39.697018, 44.829765>,  <33.531780, 39.924866, 44.439869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024811, 39.697018, 44.829765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.334900, 39.449932, 44.882629>,  <33.520954, 39.301682, 44.914349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.334900, 39.449932, 44.882629>,  <33.024811, 39.697018, 44.829765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334900, 39.449932, 44.882629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136987, 0.039839, 0.989771,
		-0.616658, -0.785395, -0.053734,
		0.775221, -0.617711, 0.132156,
		33.567467, 39.264618, 44.922276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681179, 39.173191, 45.162746>,  <33.024811, 39.697018, 44.829765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681179, 39.173191, 45.162746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.073154, 39.147518, 45.238220>,  <33.308338, 39.132114, 45.283504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.073154, 39.147518, 45.238220>,  <32.681179, 39.173191, 45.162746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073154, 39.147518, 45.238220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194173, -0.093971, 0.976456,
		-0.044941, -0.993504, -0.104548,
		0.979937, -0.064183, 0.188688,
		33.367134, 39.128262, 45.294827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796791, 38.640148, 45.639114>,  <32.681179, 39.173191, 45.162746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796791, 38.640148, 45.639114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.140419, 38.832771, 45.708519>,  <33.346596, 38.948345, 45.750164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.140419, 38.832771, 45.708519>,  <32.796791, 38.640148, 45.639114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140419, 38.832771, 45.708519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103467, -0.168616, 0.980236,
		0.501300, -0.860040, -0.095026,
		0.859065, 0.481560, 0.173513,
		33.398140, 38.977238, 45.760574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085979, 38.281071, 46.125816>,  <32.796791, 38.640148, 45.639114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085979, 38.281071, 46.125816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.300121, 38.617317, 46.158680>,  <33.428608, 38.819065, 46.178398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.300121, 38.617317, 46.158680>,  <33.085979, 38.281071, 46.125816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300121, 38.617317, 46.158680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090208, -0.153623, 0.984003,
		0.839795, -0.519381, -0.158074,
		0.535357, 0.840621, 0.082159,
		33.460728, 38.869503, 46.183327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570141, 38.069763, 46.496662>,  <33.085979, 38.281071, 46.125816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570141, 38.069763, 46.496662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.551613, 38.465504, 46.551849>,  <33.540497, 38.702950, 46.584961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.551613, 38.465504, 46.551849>,  <33.570141, 38.069763, 46.496662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551613, 38.465504, 46.551849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024219, -0.139187, 0.989970,
		0.998633, 0.042514, 0.030408,
		-0.046319, 0.989353, 0.137967,
		33.537716, 38.762310, 46.593239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069698, 38.158596, 46.999405>,  <33.570141, 38.069763, 46.496662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069698, 38.158596, 46.999405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.877506, 38.509380, 47.003059>,  <33.762192, 38.719849, 47.005253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.877506, 38.509380, 47.003059>,  <34.069698, 38.158596, 46.999405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877506, 38.509380, 47.003059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101654, 0.045345, 0.993786,
		0.871094, 0.478424, -0.110933,
		-0.480481, 0.876957, 0.009133,
		33.733360, 38.772469, 47.005798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427883, 38.530148, 47.481403>,  <34.069698, 38.158596, 46.999405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427883, 38.530148, 47.481403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.069817, 38.707195, 47.460354>,  <33.854977, 38.813423, 47.447723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.069817, 38.707195, 47.460354>,  <34.427883, 38.530148, 47.481403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069817, 38.707195, 47.460354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067168, -0.017242, 0.997593,
		0.440648, 0.896543, 0.045165,
		-0.895163, 0.442621, -0.052621,
		33.801266, 38.839981, 47.444569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917927, 39.079781, 47.372414>,  <34.427883, 38.530148, 47.481403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917927, 39.079781, 47.372414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.301018, 39.158428, 47.456406>,  <35.530872, 39.205616, 47.506802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.301018, 39.158428, 47.456406>,  <34.917927, 39.079781, 47.372414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301018, 39.158428, 47.456406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173685, 0.186623, -0.966957,
		-0.229312, 0.962555, 0.144584,
		0.957731, 0.196623, 0.209977,
		35.588337, 39.217415, 47.519398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147224, 39.573929, 46.906204>,  <34.917927, 39.079781, 47.372414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147224, 39.573929, 46.906204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.491455, 39.432716, 47.053051>,  <35.697994, 39.347988, 47.141159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.491455, 39.432716, 47.053051>,  <35.147224, 39.573929, 46.906204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491455, 39.432716, 47.053051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431994, 0.124130, -0.893293,
		0.269792, 0.927340, 0.259332,
		0.860577, -0.353033, 0.367116,
		35.749630, 39.326805, 47.163185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703159, 40.072010, 46.725407>,  <35.147224, 39.573929, 46.906204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703159, 40.072010, 46.725407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.887764, 39.723446, 46.791908>,  <35.998528, 39.514305, 46.831810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.887764, 39.723446, 46.791908>,  <35.703159, 40.072010, 46.725407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887764, 39.723446, 46.791908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452376, 0.069963, -0.889079,
		0.763125, 0.485532, 0.426496,
		0.461516, -0.871414, 0.166253,
		36.026218, 39.462021, 46.841785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417301, 40.183792, 46.631458>,  <35.703159, 40.072010, 46.725407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417301, 40.183792, 46.631458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.357479, 39.790688, 46.587994>,  <36.321587, 39.554825, 46.561913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.357479, 39.790688, 46.587994>,  <36.417301, 40.183792, 46.631458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357479, 39.790688, 46.587994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471060, 0.025810, -0.881723,
		0.869331, -0.183052, 0.459081,
		-0.149552, -0.982764, -0.108666,
		36.312614, 39.495857, 46.555393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004818, 39.913013, 46.327511>,  <36.417301, 40.183792, 46.631458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004818, 39.913013, 46.327511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.730122, 39.633366, 46.247887>,  <36.565304, 39.465576, 46.200111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.730122, 39.633366, 46.247887>,  <37.004818, 39.913013, 46.327511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730122, 39.633366, 46.247887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295678, -0.018494, -0.955109,
		0.664050, -0.714770, 0.219414,
		-0.686741, -0.699115, -0.199060,
		36.524097, 39.423630, 46.188168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282120, 39.587509, 45.727367>,  <37.004818, 39.913013, 46.327511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282120, 39.587509, 45.727367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.907940, 39.446144, 45.729748>,  <36.683434, 39.361324, 45.731174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.907940, 39.446144, 45.729748>,  <37.282120, 39.587509, 45.727367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907940, 39.446144, 45.729748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036653, -0.113732, -0.992835,
		0.351557, -0.928529, 0.119344,
		-0.935449, -0.353412, 0.005950,
		36.627304, 39.340122, 45.731533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386063, 38.867908, 45.390800>,  <37.282120, 39.587509, 45.727367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386063, 38.867908, 45.390800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.012360, 39.000412, 45.337990>,  <36.788139, 39.079914, 45.306305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.012360, 39.000412, 45.337990>,  <37.386063, 38.867908, 45.390800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012360, 39.000412, 45.337990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094501, -0.127003, -0.987390,
		-0.343850, -0.934953, 0.087349,
		-0.934257, 0.331260, -0.132024,
		36.732082, 39.099789, 45.298382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960968, 38.313725, 44.932423>,  <37.386063, 38.867908, 45.390800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960968, 38.313725, 44.932423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.761005, 38.659992, 44.921700>,  <36.641029, 38.867752, 44.915264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.761005, 38.659992, 44.921700>,  <36.960968, 38.313725, 44.932423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761005, 38.659992, 44.921700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063870, -0.067721, -0.995658,
		-0.863723, -0.496020, 0.089144,
		-0.499903, 0.865666, -0.026812,
		36.611034, 38.919693, 44.913654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364777, 38.161915, 44.537659>,  <36.960968, 38.313725, 44.932423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364777, 38.161915, 44.537659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.421852, 38.556114, 44.500912>,  <36.456097, 38.792633, 44.478863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.421852, 38.556114, 44.500912>,  <36.364777, 38.161915, 44.537659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421852, 38.556114, 44.500912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018831, -0.090096, -0.995755,
		-0.989588, 0.143816, 0.005702,
		0.142692, 0.985495, -0.091866,
		36.464661, 38.851761, 44.473351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924461, 38.461391, 43.972660>,  <36.364777, 38.161915, 44.537659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924461, 38.461391, 43.972660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.234051, 38.713043, 44.001411>,  <36.419804, 38.864033, 44.018661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.234051, 38.713043, 44.001411>,  <35.924461, 38.461391, 43.972660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234051, 38.713043, 44.001411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090937, 0.001909, -0.995855,
		-0.626659, 0.777298, -0.055734,
		0.773969, 0.629130, 0.071882,
		36.466240, 38.901783, 44.022976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770893, 38.951756, 43.438896>,  <35.924461, 38.461391, 43.972660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770893, 38.951756, 43.438896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.153797, 39.026260, 43.527397>,  <36.383541, 39.070965, 43.580498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.153797, 39.026260, 43.527397>,  <35.770893, 38.951756, 43.438896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153797, 39.026260, 43.527397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169909, 0.256895, -0.951386,
		-0.234047, 0.948320, 0.214268,
		0.957263, 0.186263, 0.221254,
		36.440975, 39.082138, 43.593773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871105, 39.743065, 43.239960>,  <35.770893, 38.951756, 43.438896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871105, 39.743065, 43.239960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.211853, 39.534306, 43.257595>,  <36.416302, 39.409050, 43.268177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.211853, 39.534306, 43.257595>,  <35.871105, 39.743065, 43.239960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211853, 39.534306, 43.257595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152415, 0.166489, -0.974193,
		0.501092, 0.836601, 0.221372,
		0.851866, -0.521901, 0.044084,
		36.467411, 39.377735, 43.270821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370388, 40.183270, 42.860550>,  <35.871105, 39.743065, 43.239960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370388, 40.183270, 42.860550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.542564, 39.822235, 42.863434>,  <36.645870, 39.605614, 42.865166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.542564, 39.822235, 42.863434>,  <36.370388, 40.183270, 42.860550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542564, 39.822235, 42.863434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456740, 0.210911, -0.864237,
		0.778530, 0.375297, 0.503034,
		0.430441, -0.902590, 0.007212,
		36.671696, 39.551456, 42.865597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058445, 40.262711, 42.410439>,  <36.370388, 40.183270, 42.860550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058445, 40.262711, 42.410439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.007351, 39.866776, 42.435432>,  <36.976696, 39.629215, 42.450428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.007351, 39.866776, 42.435432>,  <37.058445, 40.262711, 42.410439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007351, 39.866776, 42.435432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345717, -0.103488, -0.932615,
		0.929604, -0.097520, 0.355423,
		-0.127731, -0.989838, 0.062489,
		36.969032, 39.569824, 42.454178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.529924, 32.802021, 28.864389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.244223, 32.896587, 28.600889>,  <28.072802, 32.953327, 28.442789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.244223, 32.896587, 28.600889>,  <28.529924, 32.802021, 28.864389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244223, 32.896587, 28.600889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541008, 0.410628, 0.733959,
		0.444018, 0.880621, -0.165391,
		-0.714254, 0.236413, -0.658749,
		28.029947, 32.967510, 28.403265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405296, 33.580040, 28.804901>,  <28.529924, 32.802021, 28.864389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405296, 33.580040, 28.804901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.065834, 33.397690, 28.697601>,  <27.862156, 33.288280, 28.633223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.065834, 33.397690, 28.697601>,  <28.405296, 33.580040, 28.804901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065834, 33.397690, 28.697601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493126, 0.498448, 0.713005,
		-0.191337, 0.737376, -0.647817,
		-0.848656, -0.455880, -0.268247,
		27.811237, 33.260925, 28.617126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847975, 34.058914, 28.908934>,  <28.405296, 33.580040, 28.804901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847975, 34.058914, 28.908934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.644838, 33.716610, 28.869385>,  <27.522957, 33.511227, 28.845655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.644838, 33.716610, 28.869385>,  <27.847975, 34.058914, 28.908934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644838, 33.716610, 28.869385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732808, 0.368809, 0.571815,
		-0.452870, 0.362846, -0.814402,
		-0.507840, -0.855758, -0.098874,
		27.492487, 33.459881, 28.839722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303984, 34.305622, 28.537861>,  <27.847975, 34.058914, 28.908934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303984, 34.305622, 28.537861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.230560, 33.977646, 28.754751>,  <27.186506, 33.780861, 28.884886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.230560, 33.977646, 28.754751>,  <27.303984, 34.305622, 28.537861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230560, 33.977646, 28.754751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539546, 0.545121, 0.641665,
		-0.821703, -0.174772, -0.542456,
		-0.183559, -0.819938, 0.542225,
		27.175493, 33.731663, 28.917419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.458954, 34.312172, 28.727171>,  <27.303984, 34.305622, 28.537861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.458954, 34.312172, 28.727171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.645840, 34.051830, 28.966537>,  <26.757971, 33.895626, 29.110157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.645840, 34.051830, 28.966537>,  <26.458954, 34.312172, 28.727171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.645840, 34.051830, 28.966537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566595, 0.299180, 0.767763,
		-0.678734, -0.697771, -0.228987,
		0.467215, -0.650850, 0.598418,
		26.786005, 33.856575, 29.146063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.914484, 34.185570, 29.269838>,  <26.458954, 34.312172, 28.727171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.914484, 34.185570, 29.269838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.254772, 34.050884, 29.431278>,  <26.458946, 33.970074, 29.528143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.254772, 34.050884, 29.431278>,  <25.914484, 34.185570, 29.269838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254772, 34.050884, 29.431278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327537, 0.260940, 0.908091,
		-0.411086, -0.904727, 0.111700,
		0.850722, -0.336718, 0.403600,
		26.509989, 33.949867, 29.552359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671007, 34.049927, 29.976679>,  <25.914484, 34.185570, 29.269838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671007, 34.049927, 29.976679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.068996, 34.039227, 30.015274>,  <26.307791, 34.032806, 30.038431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.068996, 34.039227, 30.015274>,  <25.671007, 34.049927, 29.976679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.068996, 34.039227, 30.015274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077418, 0.405606, 0.910764,
		-0.063501, -0.913657, 0.401497,
		0.994974, -0.026752, 0.096490,
		26.367489, 34.031200, 30.044222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823372, 33.884911, 30.654991>,  <25.671007, 34.049927, 29.976679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823372, 33.884911, 30.654991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.185213, 34.017059, 30.547251>,  <26.402319, 34.096348, 30.482607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.185213, 34.017059, 30.547251>,  <25.823372, 33.884911, 30.654991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185213, 34.017059, 30.547251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156360, 0.330664, 0.930706,
		0.396538, -0.884036, 0.247464,
		0.904605, 0.330366, -0.269349,
		26.456594, 34.116169, 30.466446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371437, 33.598770, 31.097263>,  <25.823372, 33.884911, 30.654991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371437, 33.598770, 31.097263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.534737, 33.932648, 30.949413>,  <26.632715, 34.132973, 30.860703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.534737, 33.932648, 30.949413>,  <26.371437, 33.598770, 31.097263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534737, 33.932648, 30.949413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223489, 0.301196, 0.927003,
		0.885091, -0.461053, -0.063582,
		0.408247, 0.834692, -0.369626,
		26.657211, 34.183056, 30.838526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055403, 33.588043, 31.187971>,  <26.371437, 33.598770, 31.097263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055403, 33.588043, 31.187971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.965836, 33.976616, 31.156517>,  <26.912094, 34.209759, 31.137646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.965836, 33.976616, 31.156517>,  <27.055403, 33.588043, 31.187971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965836, 33.976616, 31.156517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163471, 0.116976, 0.979589,
		0.960800, 0.206495, -0.184994,
		-0.223920, 0.971430, -0.078634,
		26.898659, 34.268044, 31.132927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489466, 33.815079, 31.627472>,  <27.055403, 33.588043, 31.187971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489466, 33.815079, 31.627472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.248499, 34.130955, 31.581034>,  <27.103920, 34.320480, 31.553171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.248499, 34.130955, 31.581034>,  <27.489466, 33.815079, 31.627472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248499, 34.130955, 31.581034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056278, 0.187109, 0.980726,
		0.796196, 0.584271, -0.157160,
		-0.602416, 0.789694, -0.116094,
		27.067774, 34.367863, 31.546206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902534, 34.353539, 32.023911>,  <27.489466, 33.815079, 31.627472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902534, 34.353539, 32.023911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.530754, 34.491703, 31.972054>,  <27.307686, 34.574604, 31.940939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.530754, 34.491703, 31.972054>,  <27.902534, 34.353539, 32.023911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530754, 34.491703, 31.972054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111482, 0.072038, 0.991152,
		0.351699, 0.935681, -0.028448,
		-0.929451, 0.345416, -0.129647,
		27.251919, 34.595329, 31.933159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793283, 35.005135, 32.412937>,  <27.902534, 34.353539, 32.023911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793283, 35.005135, 32.412937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.422028, 34.862988, 32.368626>,  <27.199274, 34.777699, 32.342041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.422028, 34.862988, 32.368626>,  <27.793283, 35.005135, 32.412937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.422028, 34.862988, 32.368626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090666, -0.072810, 0.993216,
		-0.361024, 0.931886, 0.035358,
		-0.928139, -0.355369, -0.110777,
		27.143585, 34.756378, 32.335392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475628, 35.166931, 32.951218>,  <27.793283, 35.005135, 32.412937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475628, 35.166931, 32.951218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.240116, 34.874691, 32.812908>,  <27.098808, 34.699348, 32.729923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.240116, 34.874691, 32.812908>,  <27.475628, 35.166931, 32.951218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240116, 34.874691, 32.812908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269212, -0.226112, 0.936162,
		-0.762143, 0.644281, -0.063556,
		-0.588781, -0.730599, -0.345778,
		27.063482, 34.655510, 32.709175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812094, 35.396660, 33.162239>,  <27.475628, 35.166931, 32.951218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812094, 35.396660, 33.162239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.799309, 34.999088, 33.120129>,  <26.791637, 34.760544, 33.094864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.799309, 34.999088, 33.120129>,  <26.812094, 35.396660, 33.162239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799309, 34.999088, 33.120129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382652, -0.085135, 0.919962,
		-0.923339, 0.069690, -0.377608,
		-0.031964, -0.993929, -0.105275,
		26.789719, 34.700909, 33.088547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.259460, 35.284565, 33.514778>,  <26.812094, 35.396660, 33.162239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.259460, 35.284565, 33.514778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.423590, 34.919956, 33.503780>,  <26.522068, 34.701191, 33.497181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.423590, 34.919956, 33.503780>,  <26.259460, 35.284565, 33.514778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423590, 34.919956, 33.503780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140113, -0.092811, 0.985776,
		-0.901111, -0.400635, -0.165799,
		0.410325, -0.911525, -0.027499,
		26.546688, 34.646500, 33.495529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.874077, 34.910816, 33.977409>,  <26.259460, 35.284565, 33.514778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.874077, 34.910816, 33.977409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.214428, 34.703514, 33.942966>,  <26.418638, 34.579132, 33.922302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.214428, 34.703514, 33.942966>,  <25.874077, 34.910816, 33.977409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.214428, 34.703514, 33.942966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038338, -0.224717, 0.973670,
		-0.523960, -0.825174, -0.211076,
		0.850880, -0.518256, -0.086107,
		26.469692, 34.548038, 33.917133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.758511, 34.228703, 34.263828>,  <25.874077, 34.910816, 33.977409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.758511, 34.228703, 34.263828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.151281, 34.300442, 34.287998>,  <26.386944, 34.343487, 34.302502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.151281, 34.300442, 34.287998>,  <25.758511, 34.228703, 34.263828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.151281, 34.300442, 34.287998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037879, -0.499065, 0.865737,
		0.185426, -0.847802, -0.496839,
		0.981928, 0.179350, 0.060426,
		26.445860, 34.354248, 34.306126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.026548, 33.578884, 34.555550>,  <25.758511, 34.228703, 34.263828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.026548, 33.578884, 34.555550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.321873, 33.842293, 34.613853>,  <26.499067, 34.000340, 34.648834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.321873, 33.842293, 34.613853>,  <26.026548, 33.578884, 34.555550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.321873, 33.842293, 34.613853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011254, -0.228107, 0.973571,
		0.674367, -0.717158, -0.175825,
		0.738311, 0.658522, 0.145757,
		26.543365, 34.039848, 34.657581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507994, 33.216084, 34.882370>,  <26.026548, 33.578884, 34.555550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.507994, 33.216084, 34.882370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.592062, 33.601048, 34.951187>,  <26.642504, 33.832027, 34.992477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.592062, 33.601048, 34.951187>,  <26.507994, 33.216084, 34.882370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592062, 33.601048, 34.951187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251591, -0.223284, 0.941725,
		0.944738, -0.154640, -0.289061,
		0.210171, 0.962409, 0.172039,
		26.655113, 33.889771, 35.002800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154312, 33.181400, 35.227859>,  <26.507994, 33.216084, 34.882370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154312, 33.181400, 35.227859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.993345, 33.533546, 35.328266>,  <26.896765, 33.744835, 35.388512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.993345, 33.533546, 35.328266>,  <27.154312, 33.181400, 35.227859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993345, 33.533546, 35.328266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013166, -0.268609, 0.963159,
		0.915361, 0.390899, 0.096502,
		-0.402419, 0.880368, 0.251020,
		26.872620, 33.797657, 35.403572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900675, 33.172894, 35.477390>,  <27.154312, 33.181400, 35.227859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900675, 33.172894, 35.477390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.282276, 33.290470, 35.500969>,  <28.511236, 33.361015, 35.515114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.282276, 33.290470, 35.500969>,  <27.900675, 33.172894, 35.477390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282276, 33.290470, 35.500969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183813, -0.418191, -0.889566,
		-0.236834, 0.859484, -0.452987,
		0.954003, 0.293944, 0.058943,
		28.568478, 33.378654, 35.518650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050982, 33.571346, 34.898842>,  <27.900675, 33.172894, 35.477390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050982, 33.571346, 34.898842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.391247, 33.412926, 35.037128>,  <28.595406, 33.317875, 35.120098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.391247, 33.412926, 35.037128>,  <28.050982, 33.571346, 34.898842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391247, 33.412926, 35.037128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212438, -0.342557, -0.915164,
		0.480878, 0.851938, -0.207264,
		0.850662, -0.396051, 0.345712,
		28.646446, 33.294109, 35.140842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514908, 33.754288, 34.417789>,  <28.050982, 33.571346, 34.898842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514908, 33.754288, 34.417789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.698757, 33.464825, 34.623730>,  <28.809067, 33.291149, 34.747295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.698757, 33.464825, 34.623730>,  <28.514908, 33.754288, 34.417789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698757, 33.464825, 34.623730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314908, -0.409252, -0.856356,
		0.830410, 0.555730, 0.039784,
		0.459621, -0.723655, 0.514851,
		28.836643, 33.247726, 34.778187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160910, 33.764019, 34.124660>,  <28.514908, 33.754288, 34.417789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160910, 33.764019, 34.124660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.121653, 33.406425, 34.299549>,  <29.098099, 33.191868, 34.404484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.121653, 33.406425, 34.299549>,  <29.160910, 33.764019, 34.124660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121653, 33.406425, 34.299549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162364, -0.447839, -0.879249,
		0.981838, -0.015304, 0.189103,
		-0.098144, -0.893983, 0.437221,
		29.092209, 33.138229, 34.430714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622587, 33.360283, 33.720085>,  <29.160910, 33.764019, 34.124660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622587, 33.360283, 33.720085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.409309, 33.079281, 33.908634>,  <29.281342, 32.910679, 34.021763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.409309, 33.079281, 33.908634>,  <29.622587, 33.360283, 33.720085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409309, 33.079281, 33.908634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079650, -0.513024, -0.854671,
		0.842233, -0.493253, 0.217588,
		-0.533197, -0.702502, 0.471373,
		29.249350, 32.868530, 34.050045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832516, 32.726006, 33.442196>,  <29.622587, 33.360283, 33.720085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832516, 32.726006, 33.442196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.472023, 32.630333, 33.586735>,  <29.255728, 32.572929, 33.673458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.472023, 32.630333, 33.586735>,  <29.832516, 32.726006, 33.442196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472023, 32.630333, 33.586735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178946, -0.554032, -0.813036,
		0.394661, -0.797396, 0.456511,
		-0.901233, -0.239183, 0.361345,
		29.201653, 32.558578, 33.695137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723085, 32.031219, 33.358498>,  <29.832516, 32.726006, 33.442196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723085, 32.031219, 33.358498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.353861, 32.179268, 33.400391>,  <29.132326, 32.268097, 33.425526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.353861, 32.179268, 33.400391>,  <29.723085, 32.031219, 33.358498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353861, 32.179268, 33.400391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320522, -0.589579, -0.741392,
		-0.212656, -0.717920, 0.662849,
		-0.923062, 0.370119, 0.104732,
		29.076942, 32.290302, 33.431808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285946, 31.469872, 33.448689>,  <29.723085, 32.031219, 33.358498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285946, 31.469872, 33.448689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.066952, 31.761137, 33.283745>,  <28.935556, 31.935896, 33.184780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.066952, 31.761137, 33.283745>,  <29.285946, 31.469872, 33.448689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066952, 31.761137, 33.283745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335157, -0.642325, -0.689267,
		-0.766767, -0.239157, 0.595711,
		-0.547483, 0.728164, -0.412358,
		28.902706, 31.979586, 33.160038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673456, 31.096737, 33.217655>,  <29.285946, 31.469872, 33.448689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673456, 31.096737, 33.217655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.657145, 31.442190, 33.016670>,  <28.647358, 31.649462, 32.896080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.657145, 31.442190, 33.016670>,  <28.673456, 31.096737, 33.217655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657145, 31.442190, 33.016670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393111, -0.476196, -0.786575,
		-0.918586, 0.165448, 0.358924,
		-0.040781, 0.863634, -0.502466,
		28.644911, 31.701281, 32.865929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049469, 30.996283, 32.981087>,  <28.673456, 31.096737, 33.217655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049469, 30.996283, 32.981087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.243940, 31.253414, 32.744308>,  <28.360622, 31.407692, 32.602242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.243940, 31.253414, 32.744308>,  <28.049469, 30.996283, 32.981087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.243940, 31.253414, 32.744308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512809, -0.338617, -0.788901,
		-0.707571, 0.687104, 0.165019,
		0.486179, 0.642827, -0.591949,
		28.389793, 31.446262, 32.566723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622091, 31.363266, 32.483898>,  <28.049469, 30.996283, 32.981087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622091, 31.363266, 32.483898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.978075, 31.404470, 32.306198>,  <28.191666, 31.429193, 32.199577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.978075, 31.404470, 32.306198>,  <27.622091, 31.363266, 32.483898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978075, 31.404470, 32.306198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386207, -0.347792, -0.854333,
		-0.242513, 0.931895, -0.269738,
		0.889962, 0.103012, -0.444249,
		28.245064, 31.435373, 32.172924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429977, 31.694664, 31.778231>,  <27.622091, 31.363266, 32.483898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429977, 31.694664, 31.778231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.794445, 31.530592, 31.762619>,  <28.013126, 31.432150, 31.753252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.794445, 31.530592, 31.762619>,  <27.429977, 31.694664, 31.778231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794445, 31.530592, 31.762619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192772, -0.340664, -0.920210,
		0.364155, 0.845991, -0.389473,
		0.911170, -0.410179, -0.039029,
		28.067797, 31.407537, 31.750910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644144, 31.612089, 31.041714>,  <27.429977, 31.694664, 31.778231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644144, 31.612089, 31.041714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.929930, 31.386402, 31.207218>,  <28.101400, 31.250990, 31.306520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.929930, 31.386402, 31.207218>,  <27.644144, 31.612089, 31.041714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929930, 31.386402, 31.207218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068670, -0.531963, -0.843979,
		0.696294, 0.631405, -0.341324,
		0.714464, -0.564218, 0.413761,
		28.144270, 31.217136, 31.331347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226095, 31.604147, 30.632467>,  <27.644144, 31.612089, 31.041714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226095, 31.604147, 30.632467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.286497, 31.278971, 30.857437>,  <28.322739, 31.083864, 30.992418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.286497, 31.278971, 30.857437>,  <28.226095, 31.604147, 30.632467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286497, 31.278971, 30.857437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156778, -0.542053, -0.825590,
		0.976021, 0.212846, 0.045598,
		0.151007, -0.812943, 0.562425,
		28.331799, 31.035088, 31.026165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908367, 31.302212, 30.523432>,  <28.226095, 31.604147, 30.632467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908367, 31.302212, 30.523432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.644222, 31.023874, 30.636375>,  <28.485735, 30.856873, 30.704142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.644222, 31.023874, 30.636375>,  <28.908367, 31.302212, 30.523432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644222, 31.023874, 30.636375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266458, -0.568658, -0.778221,
		0.702085, -0.438670, 0.560932,
		-0.660361, -0.695842, 0.282360,
		28.446114, 30.815121, 30.721083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202471, 30.557751, 30.393108>,  <28.908367, 31.302212, 30.523432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202471, 30.557751, 30.393108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.811253, 30.486052, 30.435619>,  <28.576521, 30.443033, 30.461126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.811253, 30.486052, 30.435619>,  <29.202471, 30.557751, 30.393108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811253, 30.486052, 30.435619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064442, -0.745169, -0.663754,
		0.198170, -0.642334, 0.740362,
		-0.978047, -0.179246, 0.106277,
		28.517838, 30.432278, 30.467503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246759, 29.910767, 30.138288>,  <29.202471, 30.557751, 30.393108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246759, 29.910767, 30.138288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.870293, 30.044603, 30.119305>,  <28.644413, 30.124905, 30.107914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.870293, 30.044603, 30.119305>,  <29.246759, 29.910767, 30.138288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870293, 30.044603, 30.119305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154874, -0.551867, -0.819425,
		-0.300362, -0.763866, 0.571219,
		-0.941168, 0.334591, -0.047457,
		28.587942, 30.144981, 30.105068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898956, 29.364023, 29.872280>,  <29.246759, 29.910767, 30.138288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898956, 29.364023, 29.872280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.656767, 29.680201, 29.835184>,  <28.511454, 29.869907, 29.812925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.656767, 29.680201, 29.835184>,  <28.898956, 29.364023, 29.872280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656767, 29.680201, 29.835184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260291, -0.306796, -0.915491,
		-0.752096, -0.530168, 0.391502,
		-0.605475, 0.790442, -0.092742,
		28.475124, 29.917334, 29.807362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366955, 29.084667, 29.532850>,  <28.898956, 29.364023, 29.872280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.366955, 29.084667, 29.532850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.340750, 29.479229, 29.472565>,  <28.325027, 29.715965, 29.436394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.340750, 29.479229, 29.472565>,  <28.366955, 29.084667, 29.532850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340750, 29.479229, 29.472565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366602, -0.164270, -0.915761,
		-0.928069, -0.004740, 0.372379,
		-0.065511, 0.986404, -0.150716,
		28.321096, 29.775150, 29.427349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655424, 29.257774, 29.209566>,  <28.366955, 29.084667, 29.532850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655424, 29.257774, 29.209566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.924181, 29.543068, 29.129705>,  <28.085434, 29.714245, 29.081789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.924181, 29.543068, 29.129705>,  <27.655424, 29.257774, 29.209566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924181, 29.543068, 29.129705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214778, -0.070351, -0.974126,
		-0.708826, 0.697386, 0.105920,
		0.671890, 0.713235, -0.199650,
		28.125748, 29.757038, 29.069811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.484695, 29.526110, 28.579210>,  <27.655424, 29.257774, 29.209566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.484695, 29.526110, 28.579210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.864422, 29.644808, 28.620667>,  <28.092258, 29.716026, 28.645540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.864422, 29.644808, 28.620667>,  <27.484695, 29.526110, 28.579210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864422, 29.644808, 28.620667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096672, 0.038104, -0.994587,
		-0.299087, 0.954196, 0.007486,
		0.949316, 0.296745, 0.103641,
		28.149218, 29.733831, 28.651758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.792892, 36.482697, 47.193146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.539616, 36.177303, 47.244003>,  <39.387650, 35.994068, 47.274517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.539616, 36.177303, 47.244003>,  <39.792892, 36.482697, 47.193146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539616, 36.177303, 47.244003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297501, 0.391727, 0.870657,
		-0.714538, 0.513464, -0.475174,
		-0.633189, -0.763482, 0.127148,
		39.349659, 35.948257, 47.282146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272564, 36.865398, 47.469555>,  <39.792892, 36.482697, 47.193146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272564, 36.865398, 47.469555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.199982, 36.484222, 47.566692>,  <39.156433, 36.255516, 47.624977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.199982, 36.484222, 47.566692>,  <39.272564, 36.865398, 47.469555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199982, 36.484222, 47.566692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069915, 0.233822, 0.969762,
		-0.980910, 0.192950, 0.024196,
		-0.181458, -0.952942, 0.242848,
		39.145546, 36.198341, 47.639545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623947, 36.830780, 47.857147>,  <39.272564, 36.865398, 47.469555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623947, 36.830780, 47.857147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.814842, 36.489372, 47.940811>,  <38.929379, 36.284527, 47.991009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.814842, 36.489372, 47.940811>,  <38.623947, 36.830780, 47.857147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814842, 36.489372, 47.940811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138616, 0.161922, 0.977019,
		-0.867775, -0.495260, -0.041038,
		0.477233, -0.853522, 0.209163,
		38.958012, 36.233315, 48.003559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150566, 36.453739, 48.222122>,  <38.623947, 36.830780, 47.857147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150566, 36.453739, 48.222122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.503254, 36.295898, 48.325550>,  <38.714867, 36.201195, 48.387608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.503254, 36.295898, 48.325550>,  <38.150566, 36.453739, 48.222122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503254, 36.295898, 48.325550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221260, 0.138177, 0.965376,
		-0.416670, -0.908402, 0.034523,
		0.881720, -0.394605, 0.258568,
		38.767769, 36.177517, 48.403122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962421, 35.968552, 48.743504>,  <38.150566, 36.453739, 48.222122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962421, 35.968552, 48.743504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.351311, 36.059742, 48.764698>,  <38.584644, 36.114456, 48.777416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.351311, 36.059742, 48.764698>,  <37.962421, 35.968552, 48.743504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351311, 36.059742, 48.764698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084742, 0.131830, 0.987644,
		0.218176, -0.964700, 0.147487,
		0.972223, 0.227978, 0.052989,
		38.642979, 36.128136, 48.780594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221409, 35.555157, 49.254162>,  <37.962421, 35.968552, 48.743504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221409, 35.555157, 49.254162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.501503, 35.840122, 49.235638>,  <38.669559, 36.011101, 49.224525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.501503, 35.840122, 49.235638>,  <38.221409, 35.555157, 49.254162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501503, 35.840122, 49.235638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088128, 0.150625, 0.984655,
		0.708453, -0.685408, 0.168256,
		0.700234, 0.712410, -0.046307,
		38.711575, 36.053844, 49.221745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778446, 35.371246, 49.744934>,  <38.221409, 35.555157, 49.254162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778446, 35.371246, 49.744934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.803555, 35.768070, 49.701328>,  <38.818619, 36.006165, 49.675163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.803555, 35.768070, 49.701328>,  <38.778446, 35.371246, 49.744934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803555, 35.768070, 49.701328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207152, 0.119803, 0.970946,
		0.976293, -0.038359, 0.213026,
		0.062766, 0.992056, -0.109017,
		38.822384, 36.065685, 49.668625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985836, 35.531963, 50.379395>,  <38.778446, 35.371246, 49.744934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985836, 35.531963, 50.379395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.955067, 35.905720, 50.240261>,  <38.936607, 36.129974, 50.156780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.955067, 35.905720, 50.240261>,  <38.985836, 35.531963, 50.379395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955067, 35.905720, 50.240261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083275, 0.341628, 0.936139,
		0.993554, 0.100973, 0.051533,
		-0.076920, 0.934395, -0.347835,
		38.931992, 36.186039, 50.135910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566948, 36.020821, 50.640259>,  <38.985836, 35.531963, 50.379395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566948, 36.020821, 50.640259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.231049, 36.219734, 50.553047>,  <39.029510, 36.339085, 50.500721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.231049, 36.219734, 50.553047>,  <39.566948, 36.020821, 50.640259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231049, 36.219734, 50.553047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012454, 0.383794, 0.923335,
		0.542840, 0.778080, -0.316095,
		-0.839744, 0.497286, -0.218028,
		38.979126, 36.368919, 50.487640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626522, 36.786152, 50.842968>,  <39.566948, 36.020821, 50.640259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626522, 36.786152, 50.842968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.247814, 36.657616, 50.850643>,  <39.020588, 36.580494, 50.855247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.247814, 36.657616, 50.850643>,  <39.626522, 36.786152, 50.842968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247814, 36.657616, 50.850643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076544, 0.282611, 0.956176,
		-0.312683, 0.903808, -0.292164,
		-0.946768, -0.321344, 0.019187,
		38.963783, 36.561214, 50.856400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336403, 37.206871, 51.368694>,  <39.626522, 36.786152, 50.842968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336403, 37.206871, 51.368694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.996258, 37.001022, 51.324772>,  <38.792171, 36.877514, 51.298420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.996258, 37.001022, 51.324772>,  <39.336403, 37.206871, 51.368694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996258, 37.001022, 51.324772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239662, 0.193006, 0.951478,
		-0.468455, 0.835415, -0.287459,
		-0.850360, -0.514617, -0.109803,
		38.741150, 36.846638, 51.291832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692986, 37.596752, 51.519112>,  <39.336403, 37.206871, 51.368694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692986, 37.596752, 51.519112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.592094, 37.213097, 51.570389>,  <38.531559, 36.982903, 51.601154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.592094, 37.213097, 51.570389>,  <38.692986, 37.596752, 51.519112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592094, 37.213097, 51.570389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387548, 0.221511, 0.894841,
		-0.886672, 0.176024, -0.427583,
		-0.252228, -0.959139, 0.128190,
		38.516426, 36.925354, 51.608845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048424, 37.614178, 51.782349>,  <38.692986, 37.596752, 51.519112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048424, 37.614178, 51.782349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.182785, 37.252216, 51.886898>,  <38.263401, 37.035038, 51.949627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.182785, 37.252216, 51.886898>,  <38.048424, 37.614178, 51.782349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182785, 37.252216, 51.886898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323070, 0.149969, 0.934417,
		-0.884757, -0.398315, -0.241973,
		0.335904, -0.904906, 0.261370,
		38.283558, 36.980743, 51.965309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619457, 37.508503, 52.320518>,  <38.048424, 37.614178, 51.782349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619457, 37.508503, 52.320518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.957306, 37.303604, 52.382778>,  <38.160015, 37.180664, 52.420135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.957306, 37.303604, 52.382778>,  <37.619457, 37.508503, 52.320518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957306, 37.303604, 52.382778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188545, -0.012499, 0.981985,
		-0.501070, -0.858749, -0.107138,
		0.844618, -0.512244, 0.155650,
		38.210690, 37.149933, 52.429474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838310, 37.615887, 52.441010>,  <37.619457, 37.508503, 52.320518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838310, 37.615887, 52.441010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.601311, 37.842072, 52.670513>,  <36.459110, 37.977783, 52.808216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.601311, 37.842072, 52.670513>,  <36.838310, 37.615887, 52.441010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601311, 37.842072, 52.670513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295228, 0.510259, -0.807760,
		-0.749525, -0.647984, -0.135385,
		-0.592497, 0.565467, 0.573755,
		36.423561, 38.011711, 52.842640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258942, 37.480946, 52.135471>,  <36.838310, 37.615887, 52.441010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258942, 37.480946, 52.135471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.228252, 37.823792, 52.339222>,  <36.209839, 38.029499, 52.461472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.228252, 37.823792, 52.339222>,  <36.258942, 37.480946, 52.135471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228252, 37.823792, 52.339222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225033, 0.482819, -0.846313,
		-0.971326, -0.179557, 0.155837,
		-0.076720, 0.857115, 0.509381,
		36.205235, 38.080925, 52.492035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591877, 37.797943, 51.990036>,  <36.258942, 37.480946, 52.135471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591877, 37.797943, 51.990036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823326, 38.096474, 52.121609>,  <35.962196, 38.275593, 52.200554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823326, 38.096474, 52.121609>,  <35.591877, 37.797943, 51.990036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823326, 38.096474, 52.121609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260202, 0.551149, -0.792799,
		-0.772975, 0.373143, 0.513103,
		0.578623, 0.746324, 0.328931,
		35.996914, 38.320370, 52.220287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047791, 38.314095, 51.849983>,  <35.591877, 37.797943, 51.990036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047791, 38.314095, 51.849983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404896, 38.488632, 51.894859>,  <35.619160, 38.593353, 51.921783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404896, 38.488632, 51.894859>,  <35.047791, 38.314095, 51.849983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404896, 38.488632, 51.894859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151106, 0.524583, -0.837842,
		-0.424440, 0.731039, 0.534260,
		0.892759, 0.436344, 0.112189,
		35.672722, 38.619534, 51.928516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961170, 39.044312, 51.754269>,  <35.047791, 38.314095, 51.849983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961170, 39.044312, 51.754269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.338703, 38.942871, 51.669552>,  <35.565224, 38.882008, 51.618721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.338703, 38.942871, 51.669552>,  <34.961170, 39.044312, 51.754269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338703, 38.942871, 51.669552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118523, 0.338478, -0.933480,
		0.308423, 0.906155, 0.289410,
		0.943837, -0.253605, -0.211794,
		35.621853, 38.866791, 51.606014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135887, 39.458267, 51.298347>,  <34.961170, 39.044312, 51.754269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135887, 39.458267, 51.298347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.435860, 39.198692, 51.246983>,  <35.615841, 39.042946, 51.216164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.435860, 39.198692, 51.246983>,  <35.135887, 39.458267, 51.298347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435860, 39.198692, 51.246983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047933, 0.246911, -0.967852,
		0.659781, 0.719664, 0.216271,
		0.749928, -0.648937, -0.128411,
		35.660839, 39.004013, 51.208458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624599, 39.808723, 50.973656>,  <35.135887, 39.458267, 51.298347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624599, 39.808723, 50.973656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.714695, 39.426292, 50.898621>,  <35.768753, 39.196835, 50.853600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.714695, 39.426292, 50.898621>,  <35.624599, 39.808723, 50.973656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714695, 39.426292, 50.898621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098921, 0.213984, -0.971816,
		0.969269, 0.200334, 0.142773,
		0.225238, -0.956074, -0.187591,
		35.782265, 39.139469, 50.842342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251717, 39.861156, 50.530621>,  <35.624599, 39.808723, 50.973656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251717, 39.861156, 50.530621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.099171, 39.494930, 50.479553>,  <36.007641, 39.275196, 50.448914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.099171, 39.494930, 50.479553>,  <36.251717, 39.861156, 50.530621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099171, 39.494930, 50.479553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075281, 0.106891, -0.991417,
		0.921353, -0.387705, 0.028160,
		-0.381367, -0.915565, -0.127671,
		35.984760, 39.220261, 50.441254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595215, 39.657169, 49.928230>,  <36.251717, 39.861156, 50.530621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595215, 39.657169, 49.928230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.302494, 39.387688, 49.969376>,  <36.126862, 39.225998, 49.994061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.302494, 39.387688, 49.969376>,  <36.595215, 39.657169, 49.928230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302494, 39.387688, 49.969376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021243, -0.128305, -0.991507,
		0.681182, -0.727776, 0.079582,
		-0.731806, -0.673706, 0.102859,
		36.082951, 39.185577, 50.000233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814369, 39.075691, 49.472004>,  <36.595215, 39.657169, 49.928230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814369, 39.075691, 49.472004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416451, 39.037586, 49.486443>,  <36.177700, 39.014721, 49.495106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416451, 39.037586, 49.486443>,  <36.814369, 39.075691, 49.472004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416451, 39.037586, 49.486443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018046, -0.183901, -0.982779,
		0.100264, -0.978317, 0.181225,
		-0.994797, -0.095267, 0.036093,
		36.118011, 39.009007, 49.497269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634716, 38.521080, 48.974556>,  <36.814369, 39.075691, 49.472004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634716, 38.521080, 48.974556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.286880, 38.715939, 49.006817>,  <36.078178, 38.832851, 49.026173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.286880, 38.715939, 49.006817>,  <36.634716, 38.521080, 48.974556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286880, 38.715939, 49.006817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204585, -0.206795, -0.956755,
		-0.449399, -0.848485, 0.279489,
		-0.869589, 0.487144, 0.080654,
		36.026005, 38.862083, 49.031013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254997, 38.202236, 48.523983>,  <36.634716, 38.521080, 48.974556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254997, 38.202236, 48.523983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.035507, 38.531246, 48.583794>,  <35.903812, 38.728653, 48.619682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.035507, 38.531246, 48.583794>,  <36.254997, 38.202236, 48.523983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035507, 38.531246, 48.583794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354535, -0.066971, -0.932641,
		-0.757104, -0.564777, 0.328362,
		-0.548725, 0.822522, 0.149529,
		35.870892, 38.778004, 48.628651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623825, 38.128605, 48.145817>,  <36.254997, 38.202236, 48.523983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623825, 38.128605, 48.145817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.662529, 38.519482, 48.221424>,  <35.685753, 38.754009, 48.266788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.662529, 38.519482, 48.221424>,  <35.623825, 38.128605, 48.145817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662529, 38.519482, 48.221424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232914, 0.206867, -0.950240,
		-0.967672, 0.047919, 0.247618,
		0.096759, 0.977195, 0.189018,
		35.691555, 38.812641, 48.278130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062321, 38.507248, 47.793438>,  <35.623825, 38.128605, 48.145817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062321, 38.507248, 47.793438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.346218, 38.784031, 47.846306>,  <35.516556, 38.950100, 47.878025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.346218, 38.784031, 47.846306>,  <35.062321, 38.507248, 47.793438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346218, 38.784031, 47.846306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014876, 0.172849, -0.984836,
		-0.704307, 0.700943, 0.112384,
		0.709740, 0.691955, 0.132166,
		35.559139, 38.991619, 47.885956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382198, 38.987751, 48.128616>,  <35.062321, 38.507248, 47.793438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382198, 38.987751, 48.128616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.001060, 38.972595, 48.008186>,  <33.772377, 38.963501, 47.935928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.001060, 38.972595, 48.008186>,  <34.382198, 38.987751, 48.128616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001060, 38.972595, 48.008186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301842, 0.016279, 0.953219,
		-0.031216, 0.999150, -0.026948,
		-0.952847, -0.037890, -0.301077,
		33.715206, 38.961227, 47.917862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979042, 39.504162, 48.402477>,  <34.382198, 38.987751, 48.128616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979042, 39.504162, 48.402477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.701912, 39.229156, 48.315456>,  <33.535633, 39.064156, 48.263245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.701912, 39.229156, 48.315456>,  <33.979042, 39.504162, 48.402477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701912, 39.229156, 48.315456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352490, 0.059696, 0.933909,
		-0.629085, 0.723717, -0.283699,
		-0.692822, -0.687510, -0.217549,
		33.494064, 39.022903, 48.250191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287289, 39.781284, 48.628944>,  <33.979042, 39.504162, 48.402477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287289, 39.781284, 48.628944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.264915, 39.383450, 48.593933>,  <33.251492, 39.144749, 48.572926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.264915, 39.383450, 48.593933>,  <33.287289, 39.781284, 48.628944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264915, 39.383450, 48.593933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380309, -0.059830, 0.922922,
		-0.923167, 0.084907, -0.374905,
		-0.055932, -0.994591, -0.087524,
		33.248135, 39.085072, 48.567677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578045, 39.626060, 48.870323>,  <33.287289, 39.781284, 48.628944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578045, 39.626060, 48.870323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.807526, 39.300140, 48.903732>,  <32.945213, 39.104588, 48.923779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.807526, 39.300140, 48.903732>,  <32.578045, 39.626060, 48.870323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807526, 39.300140, 48.903732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305977, -0.118612, 0.944621,
		-0.759769, -0.567482, -0.317356,
		0.573698, -0.814798, 0.083519,
		32.979633, 39.055702, 48.928787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189583, 39.178707, 49.366398>,  <32.578045, 39.626060, 48.870323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189583, 39.178707, 49.366398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.566170, 39.043869, 49.366570>,  <32.792122, 38.962967, 49.366673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.566170, 39.043869, 49.366570>,  <32.189583, 39.178707, 49.366398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566170, 39.043869, 49.366570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118974, -0.331084, 0.936071,
		-0.315400, -0.881335, -0.351811,
		0.941471, -0.337093, 0.000432,
		32.848610, 38.942741, 49.366699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124668, 38.524128, 49.686756>,  <32.189583, 39.178707, 49.366398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124668, 38.524128, 49.686756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.516552, 38.593639, 49.726704>,  <32.751682, 38.635345, 49.750671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.516552, 38.593639, 49.726704>,  <32.124668, 38.524128, 49.686756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516552, 38.593639, 49.726704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026772, -0.380351, 0.924455,
		0.198636, -0.908369, -0.367980,
		0.979708, 0.173778, 0.099870,
		32.810463, 38.645771, 49.756664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476841, 37.928085, 50.147675>,  <32.124668, 38.524128, 49.686756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476841, 37.928085, 50.147675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.711575, 38.250877, 50.174259>,  <32.852413, 38.444553, 50.190208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.711575, 38.250877, 50.174259>,  <32.476841, 37.928085, 50.147675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711575, 38.250877, 50.174259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079079, -0.138807, 0.987157,
		0.805840, -0.574037, -0.145271,
		0.586829, 0.806978, 0.066462,
		32.887623, 38.492970, 50.194199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742695, 37.181328, 50.414436>,  <32.476841, 37.928085, 50.147675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742695, 37.181328, 50.414436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.551804, 36.830982, 50.385857>,  <32.437267, 36.620773, 50.368710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.551804, 36.830982, 50.385857>,  <32.742695, 37.181328, 50.414436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551804, 36.830982, 50.385857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236797, 0.206472, -0.949366,
		0.846272, -0.436148, -0.305938,
		-0.477232, -0.875868, -0.071452,
		32.408634, 36.568222, 50.364422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929005, 36.941090, 49.820618>,  <32.742695, 37.181328, 50.414436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929005, 36.941090, 49.820618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.628777, 36.684479, 49.883980>,  <32.448639, 36.530514, 49.921997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.628777, 36.684479, 49.883980>,  <32.929005, 36.941090, 49.820618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628777, 36.684479, 49.883980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172231, -0.041510, -0.984182,
		0.637953, -0.765977, -0.079335,
		-0.750568, -0.641526, 0.158406,
		32.403606, 36.492020, 49.931503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063232, 36.259407, 49.447056>,  <32.929005, 36.941090, 49.820618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063232, 36.259407, 49.447056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.667416, 36.290131, 49.495880>,  <32.429924, 36.308563, 49.525177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.667416, 36.290131, 49.495880>,  <33.063232, 36.259407, 49.447056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667416, 36.290131, 49.495880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124111, -0.022463, -0.992014,
		-0.073459, -0.996792, 0.031762,
		-0.989545, 0.076815, 0.122063,
		32.370552, 36.313171, 49.532497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722042, 35.767067, 49.044296>,  <33.063232, 36.259407, 49.447056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722042, 35.767067, 49.044296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.443871, 36.048534, 49.102577>,  <32.276970, 36.217415, 49.137547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.443871, 36.048534, 49.102577>,  <32.722042, 35.767067, 49.044296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443871, 36.048534, 49.102577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305471, -0.105952, -0.946288,
		-0.650438, -0.702582, 0.288633,
		-0.695427, 0.703671, 0.145703,
		32.235241, 36.259636, 49.146290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222328, 35.525761, 48.586758>,  <32.722042, 35.767067, 49.044296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222328, 35.525761, 48.586758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.113300, 35.902672, 48.664551>,  <32.047882, 36.128819, 48.711227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.113300, 35.902672, 48.664551>,  <32.222328, 35.525761, 48.586758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113300, 35.902672, 48.664551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346994, 0.092260, -0.933318,
		-0.897385, -0.321882, 0.301816,
		-0.272573, 0.942274, 0.194484,
		32.031528, 36.185352, 48.722897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494110, 35.578766, 48.394699>,  <32.222328, 35.525761, 48.586758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494110, 35.578766, 48.394699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.677067, 35.934006, 48.376514>,  <31.786840, 36.147152, 48.365604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.677067, 35.934006, 48.376514>,  <31.494110, 35.578766, 48.394699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677067, 35.934006, 48.376514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263511, 0.086531, -0.960768,
		-0.849327, 0.451426, 0.273603,
		0.457391, 0.888103, -0.045462,
		31.814283, 36.200436, 48.362877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017767, 36.138439, 48.040112>,  <31.494110, 35.578766, 48.394699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017767, 36.138439, 48.040112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.376150, 36.314278, 48.014778>,  <31.591181, 36.419781, 47.999580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.376150, 36.314278, 48.014778>,  <31.017767, 36.138439, 48.040112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376150, 36.314278, 48.014778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171162, 0.210180, -0.962563,
		-0.409832, 0.873256, 0.263555,
		0.895958, 0.439600, -0.063329,
		31.644938, 36.446159, 47.995781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.509956, 33.238380, 52.234833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.598541, 33.601540, 52.092464>,  <37.651691, 33.819435, 52.007042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.598541, 33.601540, 52.092464>,  <37.509956, 33.238380, 52.234833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598541, 33.601540, 52.092464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425704, -0.238359, -0.872904,
		-0.877343, 0.344832, 0.333707,
		0.221463, 0.907896, -0.355919,
		37.664982, 33.873909, 51.985687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877281, 33.495705, 51.782394>,  <37.509956, 33.238380, 52.234833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877281, 33.495705, 51.782394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.207031, 33.678181, 51.648357>,  <37.404881, 33.787666, 51.567936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.207031, 33.678181, 51.648357>,  <36.877281, 33.495705, 51.782394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207031, 33.678181, 51.648357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344232, -0.065898, -0.936569,
		-0.449337, 0.887438, 0.102711,
		0.824379, 0.456192, -0.335095,
		37.454346, 33.815037, 51.547829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609238, 33.899311, 51.250294>,  <36.877281, 33.495705, 51.782394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609238, 33.899311, 51.250294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.004414, 33.931831, 51.197590>,  <37.241520, 33.951344, 51.165970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.004414, 33.931831, 51.197590>,  <36.609238, 33.899311, 51.250294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004414, 33.931831, 51.197590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147953, 0.245084, -0.958146,
		-0.045609, 0.966087, 0.254158,
		0.987942, 0.081303, -0.131758,
		37.300797, 33.956223, 51.158062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780743, 34.498257, 50.857315>,  <36.609238, 33.899311, 51.250294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780743, 34.498257, 50.857315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.087349, 34.247135, 50.803181>,  <37.271313, 34.096462, 50.770702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.087349, 34.247135, 50.803181>,  <36.780743, 34.498257, 50.857315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087349, 34.247135, 50.803181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072590, 0.124679, -0.989538,
		0.638113, 0.768318, 0.049996,
		0.766513, -0.627808, -0.135331,
		37.317303, 34.058792, 50.762581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319603, 34.971111, 50.468010>,  <36.780743, 34.498257, 50.857315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319603, 34.971111, 50.468010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.392208, 34.579819, 50.427788>,  <37.435772, 34.345043, 50.403656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.392208, 34.579819, 50.427788>,  <37.319603, 34.971111, 50.468010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392208, 34.579819, 50.427788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023019, 0.106448, -0.994052,
		0.983120, 0.178116, 0.041839,
		0.181510, -0.978235, -0.100551,
		37.446663, 34.286346, 50.397621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915436, 34.908146, 50.113232>,  <37.319603, 34.971111, 50.468010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915436, 34.908146, 50.113232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.691036, 34.582253, 50.054581>,  <37.556396, 34.386719, 50.019390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.691036, 34.582253, 50.054581>,  <37.915436, 34.908146, 50.113232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691036, 34.582253, 50.054581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062818, 0.134713, -0.988891,
		0.825431, -0.563975, -0.024394,
		-0.560996, -0.814730, -0.146624,
		37.522736, 34.337833, 50.010593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013309, 34.768124, 49.314484>,  <37.915436, 34.908146, 50.113232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013309, 34.768124, 49.314484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.746868, 34.486237, 49.412193>,  <37.587002, 34.317104, 49.470821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.746868, 34.486237, 49.412193>,  <38.013309, 34.768124, 49.314484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746868, 34.486237, 49.412193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120552, -0.221483, -0.967684,
		0.736049, -0.674030, 0.062576,
		-0.666107, -0.704719, 0.244278,
		37.547035, 34.274822, 49.485477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217388, 34.155434, 48.994099>,  <38.013309, 34.768124, 49.314484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217388, 34.155434, 48.994099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.827126, 34.114399, 49.071632>,  <37.592968, 34.089779, 49.118153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.827126, 34.114399, 49.071632>,  <38.217388, 34.155434, 48.994099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827126, 34.114399, 49.071632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130332, -0.439578, -0.888698,
		0.176377, -0.892326, 0.415506,
		-0.975656, -0.102592, 0.193830,
		37.534428, 34.083622, 49.129780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020176, 33.468727, 48.716908>,  <38.217388, 34.155434, 48.994099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020176, 33.468727, 48.716908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.674480, 33.665108, 48.760838>,  <37.467064, 33.782936, 48.787193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.674480, 33.665108, 48.760838>,  <38.020176, 33.468727, 48.716908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674480, 33.665108, 48.760838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355166, -0.440816, -0.824341,
		-0.356297, -0.751433, 0.555338,
		-0.864239, 0.490947, 0.109822,
		37.415211, 33.812393, 48.793785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523701, 32.946190, 48.489544>,  <38.020176, 33.468727, 48.716908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523701, 32.946190, 48.489544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.377605, 33.317421, 48.460506>,  <37.289948, 33.540161, 48.443085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.377605, 33.317421, 48.460506>,  <37.523701, 32.946190, 48.489544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377605, 33.317421, 48.460506> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220939, -0.162169, -0.961710,
		-0.904315, -0.335217, 0.264280,
		-0.365240, 0.928079, -0.072589,
		37.268032, 33.595844, 48.438728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906460, 32.799488, 48.311527>,  <37.523701, 32.946190, 48.489544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906460, 32.799488, 48.311527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.958290, 33.178104, 48.193367>,  <36.989388, 33.405273, 48.122471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.958290, 33.178104, 48.193367>,  <36.906460, 32.799488, 48.311527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958290, 33.178104, 48.193367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369535, -0.230358, -0.900210,
		-0.920139, 0.225804, 0.319933,
		0.129572, 0.946545, -0.295404,
		36.997162, 33.462067, 48.104744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278267, 33.005394, 48.025833>,  <36.906460, 32.799488, 48.311527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278267, 33.005394, 48.025833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.557575, 33.251434, 47.879375>,  <36.725163, 33.399059, 47.791500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.557575, 33.251434, 47.879375>,  <36.278267, 33.005394, 48.025833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557575, 33.251434, 47.879375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369477, -0.128397, -0.920326,
		-0.613107, 0.777922, 0.137611,
		0.698274, 0.615103, -0.366145,
		36.767056, 33.435966, 47.769531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535366, 33.207867, 47.957752>,  <36.278267, 33.005394, 48.025833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535366, 33.207867, 47.957752> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.183273, 33.024883, 48.008221>,  <34.972015, 32.915092, 48.038502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.183273, 33.024883, 48.008221>,  <35.535366, 33.207867, 47.957752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183273, 33.024883, 48.008221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041472, 0.339020, 0.939865,
		-0.472721, 0.822070, -0.317389,
		-0.880236, -0.457456, 0.126169,
		34.919201, 32.887646, 48.046070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066856, 33.731606, 48.277832>,  <35.535366, 33.207867, 47.957752>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066856, 33.731606, 48.277832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.932690, 33.363182, 48.356972>,  <34.852192, 33.142128, 48.404457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.932690, 33.363182, 48.356972>,  <35.066856, 33.731606, 48.277832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932690, 33.363182, 48.356972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043810, 0.225042, 0.973364,
		-0.941052, 0.317810, -0.115834,
		-0.335412, -0.921061, 0.197852,
		34.832066, 33.086864, 48.416328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545135, 33.849731, 48.685974>,  <35.066856, 33.731606, 48.277832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545135, 33.849731, 48.685974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.609680, 33.459705, 48.746922>,  <34.648407, 33.225689, 48.783489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.609680, 33.459705, 48.746922>,  <34.545135, 33.849731, 48.685974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609680, 33.459705, 48.746922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099522, 0.137523, 0.985486,
		-0.981864, -0.174185, -0.074849,
		0.161363, -0.975063, 0.152365,
		34.658089, 33.167187, 48.792629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140408, 33.798347, 49.221638>,  <34.545135, 33.849731, 48.685974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140408, 33.798347, 49.221638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.364529, 33.467251, 49.233685>,  <34.499001, 33.268593, 49.240913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.364529, 33.467251, 49.233685>,  <34.140408, 33.798347, 49.221638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364529, 33.467251, 49.233685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101950, -0.032841, 0.994247,
		-0.821989, -0.560151, -0.102789,
		0.560304, -0.827740, 0.030113,
		34.532619, 33.218929, 49.242718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853081, 33.393845, 49.829578>,  <34.140408, 33.798347, 49.221638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853081, 33.393845, 49.829578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.202427, 33.212154, 49.759258>,  <34.412037, 33.103138, 49.717064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.202427, 33.212154, 49.759258>,  <33.853081, 33.393845, 49.829578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202427, 33.212154, 49.759258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197216, -0.000238, 0.980360,
		-0.445349, -0.890886, 0.089373,
		0.873367, -0.454228, -0.175803,
		34.464436, 33.075886, 49.706516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935215, 32.763611, 50.293938>,  <33.853081, 33.393845, 49.829578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935215, 32.763611, 50.293938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.287113, 32.925121, 50.193527>,  <34.498253, 33.022026, 50.133282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.287113, 32.925121, 50.193527>,  <33.935215, 32.763611, 50.293938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287113, 32.925121, 50.193527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249305, 0.057803, 0.966698,
		0.404836, -0.913031, -0.049810,
		0.879747, 0.403773, -0.251025,
		34.551037, 33.046253, 50.118221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389069, 32.336956, 50.567307>,  <33.935215, 32.763611, 50.293938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389069, 32.336956, 50.567307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.521172, 32.712303, 50.526546>,  <34.600433, 32.937511, 50.502090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.521172, 32.712303, 50.526546>,  <34.389069, 32.336956, 50.567307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521172, 32.712303, 50.526546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297550, -0.001047, 0.954706,
		0.895763, -0.345624, -0.279559,
		0.330262, 0.938373, -0.101902,
		34.620251, 32.993816, 50.495975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647701, 32.482498, 51.255959>,  <34.389069, 32.336956, 50.567307>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647701, 32.482498, 51.255959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.709599, 32.846230, 51.101467>,  <34.746738, 33.064468, 51.008774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.709599, 32.846230, 51.101467>,  <34.647701, 32.482498, 51.255959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709599, 32.846230, 51.101467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057865, 0.381922, 0.922382,
		0.986258, -0.165085, 0.006483,
		0.154747, 0.909331, -0.386226,
		34.756023, 33.119030, 50.985600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245014, 32.886086, 51.628086>,  <34.647701, 32.482498, 51.255959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245014, 32.886086, 51.628086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.011375, 33.167007, 51.465313>,  <34.871193, 33.335560, 51.367649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.011375, 33.167007, 51.465313>,  <35.245014, 32.886086, 51.628086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011375, 33.167007, 51.465313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041832, 0.474627, 0.879192,
		0.810603, 0.530559, -0.247851,
		-0.584100, 0.702308, -0.406929,
		34.836147, 33.377701, 51.343235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553658, 33.627941, 51.775417>,  <35.245014, 32.886086, 51.628086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553658, 33.627941, 51.775417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.161850, 33.673306, 51.708870>,  <34.926765, 33.700523, 51.668941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.161850, 33.673306, 51.708870>,  <35.553658, 33.627941, 51.775417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161850, 33.673306, 51.708870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083163, 0.524645, 0.847249,
		0.183372, 0.843733, -0.504469,
		-0.979519, 0.113409, -0.166373,
		34.867992, 33.707329, 51.658958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423885, 34.263954, 51.995197>,  <35.553658, 33.627941, 51.775417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423885, 34.263954, 51.995197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.075367, 34.067757, 51.988842>,  <34.866257, 33.950039, 51.985031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.075367, 34.067757, 51.988842>,  <35.423885, 34.263954, 51.995197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075367, 34.067757, 51.988842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263045, 0.439449, 0.858890,
		-0.414302, 0.752528, -0.511914,
		-0.871299, -0.490496, -0.015885,
		34.813976, 33.920609, 51.984077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977272, 34.785717, 52.268456>,  <35.423885, 34.263954, 51.995197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977272, 34.785717, 52.268456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.828419, 34.419937, 52.332077>,  <34.739109, 34.200470, 52.370251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.828419, 34.419937, 52.332077>,  <34.977272, 34.785717, 52.268456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828419, 34.419937, 52.332077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278278, 0.273392, 0.920771,
		-0.885484, 0.298385, -0.356209,
		-0.372129, -0.914453, 0.159050,
		34.716782, 34.145603, 52.379791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461472, 34.930019, 52.741611>,  <34.977272, 34.785717, 52.268456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461472, 34.930019, 52.741611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.480740, 34.531200, 52.765507>,  <34.492302, 34.291908, 52.779846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.480740, 34.531200, 52.765507>,  <34.461472, 34.930019, 52.741611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480740, 34.531200, 52.765507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258339, 0.045340, 0.964990,
		-0.964853, -0.061917, -0.255393,
		0.048170, -0.997051, 0.059742,
		34.495190, 34.232086, 52.783428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988079, 34.857132, 53.209328>,  <34.461472, 34.930019, 52.741611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988079, 34.857132, 53.209328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.170994, 34.501453, 53.203487>,  <34.280743, 34.288044, 53.199982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.170994, 34.501453, 53.203487>,  <33.988079, 34.857132, 53.209328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170994, 34.501453, 53.203487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046887, 0.007709, 0.998871,
		-0.888082, -0.457456, 0.045217,
		0.457288, -0.889199, -0.014603,
		34.308182, 34.234695, 53.199108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774601, 35.360466, 52.655762>,  <33.988079, 34.857132, 53.209328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774601, 35.360466, 52.655762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.428005, 35.531746, 52.758396>,  <33.220047, 35.634514, 52.819977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.428005, 35.531746, 52.758396>,  <33.774601, 35.360466, 52.655762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428005, 35.531746, 52.758396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265885, 0.039140, -0.963210,
		-0.422488, -0.902837, 0.079937,
		-0.866492, 0.428199, 0.256587,
		33.168056, 35.660206, 52.835373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275776, 34.915791, 52.304447>,  <33.774601, 35.360466, 52.655762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275776, 34.915791, 52.304447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.146389, 35.284073, 52.391781>,  <33.068756, 35.505043, 52.444180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.146389, 35.284073, 52.391781>,  <33.275776, 34.915791, 52.304447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146389, 35.284073, 52.391781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443827, 0.056159, -0.894351,
		-0.835697, -0.386192, 0.390470,
		-0.323462, 0.920708, 0.218334,
		33.049351, 35.560284, 52.457283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613621, 34.926750, 52.013195>,  <33.275776, 34.915791, 52.304447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613621, 34.926750, 52.013195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.707294, 35.312859, 52.059521>,  <32.763496, 35.544525, 52.087315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.707294, 35.312859, 52.059521>,  <32.613621, 34.926750, 52.013195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707294, 35.312859, 52.059521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411294, 0.206304, -0.887849,
		-0.880906, 0.160286, 0.445323,
		0.234182, 0.965270, 0.115810,
		32.777550, 35.602440, 52.094265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967842, 35.321278, 51.792355>,  <32.613621, 34.926750, 52.013195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967842, 35.321278, 51.792355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.263935, 35.589703, 51.775703>,  <32.441589, 35.750759, 51.765713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.263935, 35.589703, 51.775703>,  <31.967842, 35.321278, 51.792355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263935, 35.589703, 51.775703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321409, 0.298796, -0.898564,
		-0.590555, 0.678524, 0.436863,
		0.740231, 0.671063, -0.041628,
		32.486004, 35.791023, 51.763214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646456, 36.065708, 51.683903>,  <31.967842, 35.321278, 51.792355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646456, 36.065708, 51.683903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.029732, 36.050377, 51.570484>,  <32.259697, 36.041180, 51.502434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.029732, 36.050377, 51.570484>,  <31.646456, 36.065708, 51.683903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029732, 36.050377, 51.570484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250679, 0.365318, -0.896495,
		0.137948, 0.930093, 0.340436,
		0.958191, -0.038330, -0.283550,
		32.317188, 36.038879, 51.485420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843861, 36.795502, 51.473167>,  <31.646456, 36.065708, 51.683903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843861, 36.795502, 51.473167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.064697, 36.510239, 51.300377>,  <32.197201, 36.339081, 51.196705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.064697, 36.510239, 51.300377>,  <31.843861, 36.795502, 51.473167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064697, 36.510239, 51.300377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207633, 0.384171, -0.899612,
		0.807517, 0.586359, 0.064021,
		0.552091, -0.713159, -0.431972,
		32.230324, 36.296291, 51.170784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308289, 37.182472, 50.977112>,  <31.843861, 36.795502, 51.473167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308289, 37.182472, 50.977112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.326767, 36.797249, 50.870991>,  <32.337856, 36.566116, 50.807316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.326767, 36.797249, 50.870991>,  <32.308289, 37.182472, 50.977112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326767, 36.797249, 50.870991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019856, 0.264651, -0.964140,
		0.998735, 0.049810, -0.006896,
		0.046199, -0.963057, -0.265305,
		32.340626, 36.508331, 50.791401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591267, 38.032776, 50.937210>,  <32.308289, 37.182472, 50.977112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591267, 38.032776, 50.937210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.790550, 38.344395, 50.784962>,  <32.910118, 38.531364, 50.693611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.790550, 38.344395, 50.784962>,  <32.591267, 38.032776, 50.937210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790550, 38.344395, 50.784962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187741, 0.331643, 0.924536,
		0.846489, -0.532068, 0.018967,
		0.498206, 0.779048, -0.380623,
		32.940014, 38.578110, 50.670776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272869, 38.039711, 51.261684>,  <32.591267, 38.032776, 50.937210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272869, 38.039711, 51.261684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.173145, 38.408096, 51.141899>,  <33.113312, 38.629128, 51.070030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.173145, 38.408096, 51.141899>,  <33.272869, 38.039711, 51.261684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173145, 38.408096, 51.141899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131426, 0.338540, 0.931728,
		0.959464, 0.192934, -0.205440,
		-0.249311, 0.920960, -0.299460,
		33.098351, 38.684383, 51.052059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794407, 38.435852, 51.443687>,  <33.272869, 38.039711, 51.261684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794407, 38.435852, 51.443687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.487000, 38.690399, 51.417091>,  <33.302555, 38.843128, 51.401134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.487000, 38.690399, 51.417091>,  <33.794407, 38.435852, 51.443687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487000, 38.690399, 51.417091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270353, 0.417160, 0.867690,
		0.579906, 0.648858, -0.492638,
		-0.768517, 0.636365, -0.066493,
		33.256443, 38.881310, 51.397144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097343, 39.024876, 51.652103>,  <33.794407, 38.435852, 51.443687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097343, 39.024876, 51.652103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.705093, 39.101421, 51.668861>,  <33.469742, 39.147346, 51.678917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.705093, 39.101421, 51.668861>,  <34.097343, 39.024876, 51.652103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705093, 39.101421, 51.668861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130875, 0.480857, 0.866977,
		0.145762, 0.855662, -0.496584,
		-0.980625, 0.191363, 0.041894,
		33.410908, 39.158829, 51.681431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084644, 39.653603, 51.882294>,  <34.097343, 39.024876, 51.652103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084644, 39.653603, 51.882294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.709301, 39.525803, 51.935051>,  <33.484093, 39.449123, 51.966705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.709301, 39.525803, 51.935051>,  <34.084644, 39.653603, 51.882294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709301, 39.525803, 51.935051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063510, 0.215699, 0.974392,
		-0.339771, 0.922709, -0.182111,
		-0.938362, -0.319504, 0.131890,
		33.427792, 39.429951, 51.974617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742313, 40.120049, 52.357559>,  <34.084644, 39.653603, 51.882294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742313, 40.120049, 52.357559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.531464, 39.780567, 52.374722>,  <33.404953, 39.576878, 52.385017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.531464, 39.780567, 52.374722>,  <33.742313, 40.120049, 52.357559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531464, 39.780567, 52.374722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010250, 0.044132, 0.998973,
		-0.849723, 0.527028, -0.014564,
		-0.527129, -0.848702, 0.042902,
		33.373325, 39.525955, 52.387592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343979, 40.214626, 52.934654>,  <33.742313, 40.120049, 52.357559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343979, 40.214626, 52.934654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.325302, 39.816204, 52.904449>,  <33.314098, 39.577152, 52.886326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.325302, 39.816204, 52.904449>,  <33.343979, 40.214626, 52.934654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325302, 39.816204, 52.904449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102745, -0.079979, 0.991487,
		-0.993611, 0.038532, 0.106074,
		-0.046688, -0.996051, -0.075509,
		33.311295, 39.517387, 52.881798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941399, 40.008198, 53.419117>,  <33.343979, 40.214626, 52.934654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941399, 40.008198, 53.419117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.157196, 39.677120, 53.357319>,  <33.286674, 39.478474, 53.320240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.157196, 39.677120, 53.357319>,  <32.941399, 40.008198, 53.419117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157196, 39.677120, 53.357319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244779, -0.021393, 0.969343,
		-0.805626, -0.560769, 0.191061,
		0.539490, -0.827696, -0.154499,
		33.319042, 39.428810, 53.310970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836758, 39.435085, 54.068619>,  <32.941399, 40.008198, 53.419117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836758, 39.435085, 54.068619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.185318, 39.341339, 53.896233>,  <33.394455, 39.285091, 53.792801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.185318, 39.341339, 53.896233>,  <32.836758, 39.435085, 54.068619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185318, 39.341339, 53.896233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378289, -0.238303, 0.894488,
		-0.312337, -0.942488, -0.119000,
		0.871403, -0.234366, -0.430964,
		33.446739, 39.271030, 53.766945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.389328, 37.796989, 37.604527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714378, 37.954613, 37.776272>,  <35.909409, 38.049187, 37.879318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714378, 37.954613, 37.776272>,  <35.389328, 37.796989, 37.604527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714378, 37.954613, 37.776272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479302, 0.032812, 0.877036,
		0.331515, -0.918500, 0.215537,
		0.812630, 0.394058, 0.429361,
		35.958168, 38.072830, 37.905079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540852, 37.338348, 38.135590>,  <35.389328, 37.796989, 37.604527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540852, 37.338348, 38.135590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731853, 37.675117, 38.236111>,  <35.846455, 37.877178, 38.296421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731853, 37.675117, 38.236111>,  <35.540852, 37.338348, 38.135590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731853, 37.675117, 38.236111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455786, -0.007163, 0.890061,
		0.751163, -0.539549, 0.380317,
		0.477507, 0.841924, 0.251299,
		35.875107, 37.927696, 38.311501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880810, 37.243656, 38.829052>,  <35.540852, 37.338348, 38.135590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880810, 37.243656, 38.829052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856556, 37.640820, 38.788132>,  <35.842003, 37.879116, 38.763580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856556, 37.640820, 38.788132>,  <35.880810, 37.243656, 38.829052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856556, 37.640820, 38.788132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452836, 0.063972, 0.889296,
		0.889530, 0.100246, 0.445744,
		-0.060633, 0.992904, -0.102300,
		35.838367, 37.938690, 38.757442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153313, 37.488148, 39.491722>,  <35.880810, 37.243656, 38.829052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153313, 37.488148, 39.491722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908436, 37.742958, 39.304348>,  <35.761509, 37.895844, 39.191925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908436, 37.742958, 39.304348>,  <36.153313, 37.488148, 39.491722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908436, 37.742958, 39.304348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496053, 0.151930, 0.854897,
		0.615758, 0.755724, 0.222988,
		-0.612188, 0.637023, -0.468431,
		35.724781, 37.934067, 39.163818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171726, 38.155380, 39.902786>,  <36.153313, 37.488148, 39.491722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171726, 38.155380, 39.902786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833965, 38.146873, 39.688671>,  <35.631310, 38.141769, 39.560204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833965, 38.146873, 39.688671>,  <36.171726, 38.155380, 39.902786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833965, 38.146873, 39.688671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515872, 0.301675, 0.801791,
		0.144430, 0.953174, -0.265706,
		-0.844403, -0.021267, -0.535286,
		35.580643, 38.140491, 39.528084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878445, 38.647232, 40.178486>,  <36.171726, 38.155380, 39.902786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878445, 38.647232, 40.178486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564915, 38.494148, 39.982876>,  <35.376797, 38.402298, 39.865509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564915, 38.494148, 39.982876>,  <35.878445, 38.647232, 40.178486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564915, 38.494148, 39.982876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585950, 0.195070, 0.786518,
		-0.205616, 0.903039, -0.377151,
		-0.783827, -0.382712, -0.489026,
		35.329765, 38.379333, 39.836166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313869, 39.198517, 40.217342>,  <35.878445, 38.647232, 40.178486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313869, 39.198517, 40.217342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167969, 38.831165, 40.155972>,  <35.080429, 38.610756, 40.119148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167969, 38.831165, 40.155972>,  <35.313869, 39.198517, 40.217342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167969, 38.831165, 40.155972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614247, 0.113503, 0.780908,
		-0.699754, 0.379080, -0.605511,
		-0.364754, -0.918377, -0.153425,
		35.058544, 38.555653, 40.109943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641937, 39.337852, 40.152618>,  <35.313869, 39.198517, 40.217342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641937, 39.337852, 40.152618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675827, 38.948166, 40.236263>,  <34.696159, 38.714355, 40.286449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675827, 38.948166, 40.236263>,  <34.641937, 39.337852, 40.152618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675827, 38.948166, 40.236263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562466, 0.126468, 0.817091,
		-0.822468, -0.186842, -0.537248,
		0.084722, -0.974216, 0.209109,
		34.701244, 38.655903, 40.298996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963600, 39.262928, 40.431870>,  <34.641937, 39.337852, 40.152618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963600, 39.262928, 40.431870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182957, 38.943401, 40.530796>,  <34.314568, 38.751686, 40.590153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182957, 38.943401, 40.530796>,  <33.963600, 39.262928, 40.431870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182957, 38.943401, 40.530796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427889, -0.013954, 0.903723,
		-0.718459, -0.601412, -0.349457,
		0.548386, -0.798817, 0.247313,
		34.347473, 38.703754, 40.604988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460426, 38.747211, 40.758244>,  <33.963600, 39.262928, 40.431870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460426, 38.747211, 40.758244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815258, 38.621136, 40.893150>,  <34.028156, 38.545490, 40.974094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815258, 38.621136, 40.893150>,  <33.460426, 38.747211, 40.758244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815258, 38.621136, 40.893150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339215, 0.050462, 0.939355,
		-0.313098, -0.947685, -0.062155,
		0.887076, -0.315194, 0.337268,
		34.081379, 38.526577, 40.994331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314285, 38.089699, 41.237724>,  <33.460426, 38.747211, 40.758244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314285, 38.089699, 41.237724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659149, 38.271233, 41.327812>,  <33.866066, 38.380154, 41.381863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659149, 38.271233, 41.327812>,  <33.314285, 38.089699, 41.237724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659149, 38.271233, 41.327812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194754, -0.113503, 0.974263,
		0.467714, -0.883829, -0.009472,
		0.862157, 0.453832, 0.225216,
		33.917797, 38.407383, 41.395378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530357, 37.843273, 41.880520>,  <33.314285, 38.089699, 41.237724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530357, 37.843273, 41.880520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759468, 38.171127, 41.885147>,  <33.896935, 38.367840, 41.887924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759468, 38.171127, 41.885147>,  <33.530357, 37.843273, 41.880520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759468, 38.171127, 41.885147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135099, 0.080470, 0.987559,
		0.808503, -0.567212, 0.156823,
		0.572775, 0.819631, 0.011570,
		33.931301, 38.417015, 41.888618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562710, 37.114254, 42.243015>,  <33.530357, 37.843273, 41.880520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562710, 37.114254, 42.243015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232033, 36.892635, 42.282230>,  <33.033627, 36.759666, 42.305759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232033, 36.892635, 42.282230>,  <33.562710, 37.114254, 42.243015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232033, 36.892635, 42.282230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013613, -0.154503, -0.987898,
		0.562487, -0.818025, 0.120184,
		-0.826694, -0.554044, 0.098042,
		32.984024, 36.726421, 42.311642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673866, 36.616291, 41.720604>,  <33.562710, 37.114254, 42.243015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673866, 36.616291, 41.720604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287506, 36.619331, 41.824131>,  <33.055691, 36.621155, 41.886246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287506, 36.619331, 41.824131>,  <33.673866, 36.616291, 41.720604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287506, 36.619331, 41.824131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246678, -0.330784, -0.910896,
		0.078687, -0.943676, 0.321379,
		-0.965898, 0.007602, 0.258813,
		32.997738, 36.621613, 41.901775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447235, 35.885559, 41.540497>,  <33.673866, 36.616291, 41.720604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447235, 35.885559, 41.540497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134823, 36.132591, 41.577568>,  <32.947376, 36.280811, 41.599812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134823, 36.132591, 41.577568>,  <33.447235, 35.885559, 41.540497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134823, 36.132591, 41.577568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341965, -0.298773, -0.890951,
		-0.522541, -0.727554, 0.444541,
		-0.781032, 0.617576, 0.092677,
		32.900513, 36.317863, 41.605370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797825, 35.544586, 41.635521>,  <33.447235, 35.885559, 41.540497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797825, 35.544586, 41.635521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697319, 35.893967, 41.468697>,  <32.637016, 36.103596, 41.368603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697319, 35.893967, 41.468697>,  <32.797825, 35.544586, 41.635521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697319, 35.893967, 41.468697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392460, -0.485816, -0.780998,
		-0.884782, -0.032559, 0.464866,
		-0.251267, 0.873455, -0.417063,
		32.621941, 36.156002, 41.343578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235550, 35.367764, 41.304821>,  <32.797825, 35.544586, 41.635521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235550, 35.367764, 41.304821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329296, 35.715103, 41.129986>,  <32.385544, 35.923508, 41.025085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329296, 35.715103, 41.129986>,  <32.235550, 35.367764, 41.304821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329296, 35.715103, 41.129986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189207, -0.400269, -0.896652,
		-0.953559, 0.292840, 0.070490,
		0.234361, 0.868349, -0.437088,
		32.399605, 35.975609, 40.998859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747694, 35.319576, 40.785530>,  <32.235550, 35.367764, 41.304821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747694, 35.319576, 40.785530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017872, 35.594139, 40.677738>,  <32.179977, 35.758877, 40.613064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017872, 35.594139, 40.677738>,  <31.747694, 35.319576, 40.785530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017872, 35.594139, 40.677738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134503, -0.244636, -0.960241,
		-0.725040, 0.684836, -0.072915,
		0.675445, 0.686406, -0.269483,
		32.220505, 35.800060, 40.596893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387470, 35.779591, 40.235031>,  <31.747694, 35.319576, 40.785530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387470, 35.779591, 40.235031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780548, 35.829815, 40.180550>,  <32.016396, 35.859951, 40.147861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780548, 35.829815, 40.180550>,  <31.387470, 35.779591, 40.235031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780548, 35.829815, 40.180550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131025, -0.048637, -0.990185,
		-0.130952, 0.990893, -0.031344,
		0.982692, 0.125560, -0.136201,
		32.075356, 35.867481, 40.139690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442751, 36.375034, 39.825939>,  <31.387470, 35.779591, 40.235031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442751, 36.375034, 39.825939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781607, 36.171547, 39.764545>,  <31.984921, 36.049454, 39.727707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781607, 36.171547, 39.764545>,  <31.442751, 36.375034, 39.825939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781607, 36.171547, 39.764545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088739, 0.149353, -0.984794,
		0.523911, 0.847876, 0.081379,
		0.847138, -0.508723, -0.153488,
		32.035748, 36.018929, 39.718498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907162, 36.668530, 39.313515>,  <31.442751, 36.375034, 39.825939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907162, 36.668530, 39.313515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013031, 36.283009, 39.300694>,  <32.076553, 36.051697, 39.292999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013031, 36.283009, 39.300694>,  <31.907162, 36.668530, 39.313515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013031, 36.283009, 39.300694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146194, -0.007244, -0.989229,
		0.953192, 0.266509, -0.142820,
		0.264673, -0.963805, -0.032057,
		32.092434, 35.993866, 39.291077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223904, 36.513065, 38.592602>,  <31.907162, 36.668530, 39.313515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223904, 36.513065, 38.592602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215748, 36.134418, 38.721283>,  <32.210854, 35.907230, 38.798492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215748, 36.134418, 38.721283>,  <32.223904, 36.513065, 38.592602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215748, 36.134418, 38.721283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043795, -0.320619, -0.946195,
		0.998832, -0.033384, -0.034919,
		-0.020392, -0.946620, 0.321706,
		32.209629, 35.850433, 38.817795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714321, 36.179363, 38.171257>,  <32.223904, 36.513065, 38.592602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714321, 36.179363, 38.171257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459511, 35.899078, 38.299755>,  <32.306625, 35.730907, 38.376854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459511, 35.899078, 38.299755>,  <32.714321, 36.179363, 38.171257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459511, 35.899078, 38.299755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058108, -0.371914, -0.926447,
		0.768648, -0.608839, 0.196203,
		-0.637028, -0.700710, 0.321249,
		32.268402, 35.688866, 38.396130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874912, 35.642490, 37.765560>,  <32.714321, 36.179363, 38.171257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874912, 35.642490, 37.765560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527607, 35.523163, 37.924118>,  <32.319225, 35.451569, 38.019253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527607, 35.523163, 37.924118>,  <32.874912, 35.642490, 37.765560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527607, 35.523163, 37.924118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247455, -0.432102, -0.867210,
		0.429985, -0.851056, 0.301359,
		-0.868262, -0.298315, 0.396395,
		32.267128, 35.433670, 38.043037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781620, 34.902340, 37.533310>,  <32.874912, 35.642490, 37.765560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781620, 34.902340, 37.533310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416729, 35.036972, 37.626736>,  <32.197796, 35.117752, 37.682793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416729, 35.036972, 37.626736>,  <32.781620, 34.902340, 37.533310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416729, 35.036972, 37.626736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376174, -0.462335, -0.802957,
		-0.162270, -0.820343, 0.548367,
		-0.912229, 0.336577, 0.233568,
		32.143059, 35.137947, 37.696808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403332, 34.305031, 37.541328>,  <32.781620, 34.902340, 37.533310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403332, 34.305031, 37.541328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168369, 34.618847, 37.461880>,  <32.027393, 34.807137, 37.414211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168369, 34.618847, 37.461880>,  <32.403332, 34.305031, 37.541328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168369, 34.618847, 37.461880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329569, -0.456049, -0.826682,
		-0.739148, -0.420138, 0.526446,
		-0.587405, 0.784540, -0.198623,
		31.992147, 34.854210, 37.402294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217789, 33.707005, 37.238171>,  <32.403332, 34.305031, 37.541328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217789, 33.707005, 37.238171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327499, 33.322525, 37.249977>,  <32.393326, 33.091839, 37.257061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327499, 33.322525, 37.249977>,  <32.217789, 33.707005, 37.238171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327499, 33.322525, 37.249977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204143, -0.028206, 0.978535,
		-0.939733, -0.274415, -0.203958,
		0.274278, -0.961198, 0.029513,
		32.409782, 33.034164, 37.258831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637726, 33.242989, 37.563759>,  <32.217789, 33.707005, 37.238171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637726, 33.242989, 37.563759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003418, 33.090393, 37.618378>,  <32.222836, 32.998837, 37.651150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003418, 33.090393, 37.618378>,  <31.637726, 33.242989, 37.563759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003418, 33.090393, 37.618378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236215, -0.227999, 0.944574,
		-0.329217, -0.895812, -0.298558,
		0.914231, -0.381494, 0.136543,
		32.277687, 32.975945, 37.659340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594809, 32.946392, 38.177414>,  <31.637726, 33.242989, 37.563759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594809, 32.946392, 38.177414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983109, 32.853054, 38.200031>,  <32.216087, 32.797050, 38.213600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983109, 32.853054, 38.200031>,  <31.594809, 32.946392, 38.177414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983109, 32.853054, 38.200031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100442, -0.180782, 0.978381,
		-0.218088, -0.955439, -0.198932,
		0.970747, -0.233354, 0.056539,
		32.274334, 32.783051, 38.216995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697390, 32.268261, 38.538616>,  <31.594809, 32.946392, 38.177414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697390, 32.268261, 38.538616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066181, 32.422558, 38.552242>,  <32.287457, 32.515137, 38.560417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066181, 32.422558, 38.552242>,  <31.697390, 32.268261, 38.538616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066181, 32.422558, 38.552242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072794, -0.259043, 0.963119,
		0.380341, -0.885494, -0.266911,
		0.921977, 0.385743, 0.034066,
		32.342773, 32.538280, 38.562462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207657, 31.781849, 38.807941>,  <31.697390, 32.268261, 38.538616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207657, 31.781849, 38.807941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338989, 32.147320, 38.903767>,  <32.417789, 32.366604, 38.961262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338989, 32.147320, 38.903767>,  <32.207657, 31.781849, 38.807941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338989, 32.147320, 38.903767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204334, -0.316323, 0.926384,
		0.922196, -0.255209, -0.290554,
		0.328331, 0.913678, 0.239564,
		32.437489, 32.421425, 38.975636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871227, 31.618784, 39.102959>,  <32.207657, 31.781849, 38.807941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871227, 31.618784, 39.102959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765903, 31.985882, 39.221893>,  <32.702709, 32.206142, 39.293255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765903, 31.985882, 39.221893>,  <32.871227, 31.618784, 39.102959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765903, 31.985882, 39.221893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407176, -0.173694, 0.896682,
		0.874573, 0.357171, -0.327949,
		-0.263306, 0.917747, 0.297340,
		32.686913, 32.261208, 39.311096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520782, 31.920074, 39.424114>,  <32.871227, 31.618784, 39.102959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520782, 31.920074, 39.424114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196762, 32.119465, 39.547623>,  <33.002350, 32.239101, 39.621727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196762, 32.119465, 39.547623>,  <33.520782, 31.920074, 39.424114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196762, 32.119465, 39.547623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290147, -0.116852, 0.949821,
		0.509546, 0.858991, -0.049976,
		-0.810048, 0.498478, 0.308775,
		32.953747, 32.269009, 39.640255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775642, 32.497036, 39.877193>,  <33.520782, 31.920074, 39.424114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775642, 32.497036, 39.877193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387714, 32.466072, 39.969685>,  <33.154957, 32.447495, 40.025181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387714, 32.466072, 39.969685>,  <33.775642, 32.497036, 39.877193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387714, 32.466072, 39.969685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239384, -0.121767, 0.963259,
		-0.046407, 0.989536, 0.136621,
		-0.969815, -0.077407, 0.231228,
		33.096771, 32.442848, 40.039055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838066, 32.664650, 40.542412>,  <33.775642, 32.497036, 39.877193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838066, 32.664650, 40.542412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462254, 32.528469, 40.527573>,  <33.236767, 32.446762, 40.518669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462254, 32.528469, 40.527573>,  <33.838066, 32.664650, 40.542412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462254, 32.528469, 40.527573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025025, -0.176284, 0.984021,
		-0.341551, 0.923589, 0.174144,
		-0.939530, -0.340451, -0.037097,
		33.180393, 32.426334, 40.516445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472359, 33.006393, 41.129387>,  <33.838066, 32.664650, 40.542412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472359, 33.006393, 41.129387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279877, 32.673061, 41.020573>,  <33.164387, 32.473061, 40.955284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279877, 32.673061, 41.020573>,  <33.472359, 33.006393, 41.129387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279877, 32.673061, 41.020573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186246, -0.206057, 0.960652,
		-0.856597, 0.512933, -0.056050,
		-0.481201, -0.833331, -0.272039,
		33.135517, 32.423061, 40.938961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771656, 33.090725, 41.475555>,  <33.472359, 33.006393, 41.129387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771656, 33.090725, 41.475555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853622, 32.713936, 41.369194>,  <32.902802, 32.487862, 41.305378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853622, 32.713936, 41.369194>,  <32.771656, 33.090725, 41.475555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853622, 32.713936, 41.369194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131266, -0.295662, 0.946231,
		-0.969937, -0.158996, -0.184235,
		0.204918, -0.941968, -0.265902,
		32.915096, 32.431347, 41.289425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162655, 32.731083, 41.737198>,  <32.771656, 33.090725, 41.475555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162655, 32.731083, 41.737198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476124, 32.482933, 41.724571>,  <32.664204, 32.334045, 41.716995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476124, 32.482933, 41.724571>,  <32.162655, 32.731083, 41.737198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476124, 32.482933, 41.724571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135967, -0.220898, 0.965773,
		-0.606111, -0.752558, -0.257462,
		0.783672, -0.620372, -0.031566,
		32.711227, 32.296822, 41.715103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922876, 32.111565, 41.943680>,  <32.162655, 32.731083, 41.737198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922876, 32.111565, 41.943680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318447, 32.107075, 42.002876>,  <32.555790, 32.104382, 42.038395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318447, 32.107075, 42.002876>,  <31.922876, 32.111565, 41.943680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318447, 32.107075, 42.002876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145334, -0.275427, 0.950273,
		0.030091, -0.961256, -0.274008,
		0.988925, -0.011228, 0.147992,
		32.615124, 32.103706, 42.047276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028572, 31.510765, 42.298325>,  <31.922876, 32.111565, 41.943680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028572, 31.510765, 42.298325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366985, 31.712620, 42.367096>,  <32.570034, 31.833733, 42.408360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366985, 31.712620, 42.367096>,  <32.028572, 31.510765, 42.298325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366985, 31.712620, 42.367096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045537, -0.252919, 0.966415,
		0.531175, -0.825452, -0.190999,
		0.846037, 0.504638, 0.171933,
		32.620796, 31.864012, 42.418674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410149, 31.079821, 42.842442>,  <32.028572, 31.510765, 42.298325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410149, 31.079821, 42.842442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577824, 31.442827, 42.831928>,  <32.678429, 31.660631, 42.825623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577824, 31.442827, 42.831928>,  <32.410149, 31.079821, 42.842442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577824, 31.442827, 42.831928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347529, -0.133650, 0.928096,
		0.838750, -0.398183, -0.371414,
		0.419191, 0.907518, -0.026281,
		32.703583, 31.715082, 42.824043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952038, 30.981647, 43.146324>,  <32.410149, 31.079821, 42.842442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952038, 30.981647, 43.146324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912697, 31.377966, 43.183517>,  <32.889091, 31.615757, 43.205833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912697, 31.377966, 43.183517>,  <32.952038, 30.981647, 43.146324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912697, 31.377966, 43.183517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391747, -0.047346, 0.918854,
		0.914801, 0.126803, -0.383485,
		-0.098357, 0.990797, 0.092987,
		32.883190, 31.675205, 43.211414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496082, 31.213249, 43.527191>,  <32.952038, 30.981647, 43.146324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496082, 31.213249, 43.527191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270737, 31.542881, 43.550888>,  <33.135529, 31.740660, 43.565105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270737, 31.542881, 43.550888>,  <33.496082, 31.213249, 43.527191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270737, 31.542881, 43.550888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310400, 0.144655, 0.939535,
		0.765681, 0.547694, -0.337289,
		-0.563368, 0.824079, 0.059244,
		33.101727, 31.790104, 43.568661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891876, 31.771420, 43.776676>,  <33.496082, 31.213249, 43.527191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891876, 31.771420, 43.776676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529190, 31.920015, 43.856529>,  <33.311577, 32.009174, 43.904442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529190, 31.920015, 43.856529>,  <33.891876, 31.771420, 43.776676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529190, 31.920015, 43.856529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265705, 0.135598, 0.954471,
		0.327508, 0.918481, -0.221656,
		-0.906719, 0.371491, 0.199636,
		33.257175, 32.031464, 43.916420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041618, 32.428165, 44.128700>,  <33.891876, 31.771420, 43.776676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041618, 32.428165, 44.128700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667946, 32.312340, 44.212090>,  <33.443745, 32.242844, 44.262123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667946, 32.312340, 44.212090>,  <34.041618, 32.428165, 44.128700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667946, 32.312340, 44.212090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155652, 0.195027, 0.968368,
		-0.321063, 0.937079, -0.137119,
		-0.934179, -0.289564, 0.208474,
		33.387691, 32.225471, 44.274632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724674, 32.951958, 44.568081>,  <34.041618, 32.428165, 44.128700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724674, 32.951958, 44.568081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516109, 32.626606, 44.671257>,  <33.390968, 32.431393, 44.733162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516109, 32.626606, 44.671257>,  <33.724674, 32.951958, 44.568081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516109, 32.626606, 44.671257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002156, 0.303536, 0.952818,
		-0.853300, 0.496259, -0.160022,
		-0.521416, -0.813384, 0.257937,
		33.359684, 32.382591, 44.748638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300224, 33.187626, 45.111683>,  <33.724674, 32.951958, 44.568081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300224, 33.187626, 45.111683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297874, 32.788681, 45.140644>,  <33.296463, 32.549316, 45.158020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297874, 32.788681, 45.140644>,  <33.300224, 33.187626, 45.111683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297874, 32.788681, 45.140644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385434, 0.064551, 0.920474,
		-0.922716, 0.033314, 0.384037,
		-0.005875, -0.997358, 0.072403,
		33.296112, 32.489475, 45.162365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135815, 33.177700, 45.804127>,  <33.300224, 33.187626, 45.111683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135815, 33.177700, 45.804127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249004, 32.803852, 45.717957>,  <33.316917, 32.579544, 45.666256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249004, 32.803852, 45.717957>,  <33.135815, 33.177700, 45.804127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249004, 32.803852, 45.717957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364173, -0.103086, 0.925608,
		-0.887301, -0.340377, 0.311193,
		0.282976, -0.934621, -0.215425,
		33.333897, 32.523464, 45.653328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831348, 32.797569, 46.354202>,  <33.135815, 33.177700, 45.804127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831348, 32.797569, 46.354202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151894, 32.616978, 46.197235>,  <33.344219, 32.508625, 46.103054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151894, 32.616978, 46.197235>,  <32.831348, 32.797569, 46.354202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151894, 32.616978, 46.197235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438599, -0.002613, 0.898679,
		-0.406758, -0.892279, 0.195924,
		0.801360, -0.451477, -0.392415,
		33.392303, 32.481533, 46.079510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151169, 32.329777, 46.856247>,  <32.831348, 32.797569, 46.354202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151169, 32.329777, 46.856247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449909, 32.379353, 46.594910>,  <33.629154, 32.409100, 46.438107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449909, 32.379353, 46.594910>,  <33.151169, 32.329777, 46.856247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449909, 32.379353, 46.594910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651094, 0.063543, 0.756332,
		0.135261, -0.990252, -0.033245,
		0.746847, 0.123947, -0.653342,
		33.673965, 32.416534, 46.398907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679352, 31.803892, 47.077892>,  <33.151169, 32.329777, 46.856247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679352, 31.803892, 47.077892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845051, 32.106304, 46.875183>,  <33.944469, 32.287750, 46.753559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845051, 32.106304, 46.875183>,  <33.679352, 31.803892, 47.077892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845051, 32.106304, 46.875183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660174, 0.133710, 0.739116,
		0.626554, -0.640734, -0.443722,
		0.414247, 0.756029, -0.506773,
		33.969326, 32.333115, 46.723152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472137, 31.686129, 47.122166>,  <33.679352, 31.803892, 47.077892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472137, 31.686129, 47.122166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429253, 32.074177, 47.035110>,  <34.403522, 32.307007, 46.982876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429253, 32.074177, 47.035110>,  <34.472137, 31.686129, 47.122166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429253, 32.074177, 47.035110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694705, 0.229695, 0.681635,
		0.711260, -0.078119, -0.698574,
		-0.107210, 0.970123, -0.217643,
		34.397091, 32.365215, 46.969818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161713, 31.988682, 47.066513>,  <34.472137, 31.686129, 47.122166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161713, 31.988682, 47.066513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884968, 32.265930, 47.147427>,  <34.718922, 32.432278, 47.195976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884968, 32.265930, 47.147427>,  <35.161713, 31.988682, 47.066513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884968, 32.265930, 47.147427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454415, 0.200271, 0.867986,
		0.561106, 0.692443, -0.453523,
		-0.691858, 0.693120, 0.202283,
		34.677410, 32.473866, 47.208111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579506, 32.443367, 47.490192>,  <35.161713, 31.988682, 47.066513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579506, 32.443367, 47.490192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197575, 32.552044, 47.538349>,  <34.968418, 32.617249, 47.567245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197575, 32.552044, 47.538349>,  <35.579506, 32.443367, 47.490192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197575, 32.552044, 47.538349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194196, 0.263792, 0.944829,
		0.224940, 0.925527, -0.304636,
		-0.954825, 0.271689, 0.120396,
		34.911129, 32.633549, 47.574467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998192, 33.105137, 47.362659>,  <35.579506, 32.443367, 47.490192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998192, 33.105137, 47.362659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363102, 33.264587, 47.325035>,  <36.582047, 33.360260, 47.302460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363102, 33.264587, 47.325035>,  <35.998192, 33.105137, 47.362659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363102, 33.264587, 47.325035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006873, -0.214729, -0.976649,
		-0.409520, 0.891620, -0.193152,
		0.912275, 0.398630, -0.094064,
		36.636784, 33.384178, 47.296818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891205, 33.594986, 46.906784>,  <35.998192, 33.105137, 47.362659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891205, 33.594986, 46.906784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280663, 33.506199, 46.885826>,  <36.514339, 33.452927, 46.873249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280663, 33.506199, 46.885826>,  <35.891205, 33.594986, 46.906784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280663, 33.506199, 46.885826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040573, 0.057500, -0.997521,
		0.224427, 0.973358, 0.046979,
		0.973646, -0.221964, -0.052397,
		36.572758, 33.439610, 46.870106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238014, 33.957630, 46.347626>,  <35.891205, 33.594986, 46.906784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238014, 33.957630, 46.347626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561413, 33.727058, 46.395065>,  <36.755451, 33.588715, 46.423527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561413, 33.727058, 46.395065>,  <36.238014, 33.957630, 46.347626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561413, 33.727058, 46.395065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136179, -0.012806, -0.990601,
		0.572529, 0.817047, 0.068144,
		0.808496, -0.576428, 0.118597,
		36.803963, 33.554131, 46.430645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852551, 34.213760, 45.958935>,  <36.238014, 33.957630, 46.347626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852551, 34.213760, 45.958935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901176, 33.820717, 46.015091>,  <36.930351, 33.584892, 46.048782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901176, 33.820717, 46.015091>,  <36.852551, 34.213760, 45.958935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901176, 33.820717, 46.015091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304065, -0.097771, -0.947621,
		0.944863, 0.157889, 0.286889,
		0.121569, -0.982605, 0.140389,
		36.937649, 33.525936, 46.057209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587196, 33.973438, 45.741962>,  <36.852551, 34.213760, 45.958935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587196, 33.973438, 45.741962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309540, 33.685539, 45.746544>,  <37.142948, 33.512798, 45.749294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309540, 33.685539, 45.746544>,  <37.587196, 33.973438, 45.741962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309540, 33.685539, 45.746544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147042, -0.157349, -0.976535,
		0.704665, -0.676165, 0.215056,
		-0.694137, -0.719751, 0.011454,
		37.101299, 33.469612, 45.749981>
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
