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
	<24.018980, 35.060223, 35.179523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.354397, 34.903545, 35.331005>,  <24.555647, 34.809540, 35.421894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.354397, 34.903545, 35.331005>,  <24.018980, 35.060223, 35.179523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.354397, 34.903545, 35.331005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544786, 0.593651, -0.592273,
		0.007168, 0.702962, 0.711191,
		0.838544, -0.391693, 0.378709,
		24.605961, 34.786037, 35.444618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.556604, 35.587593, 35.538986>,  <24.018980, 35.060223, 35.179523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.556604, 35.587593, 35.538986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.735661, 35.268600, 35.377178>,  <24.843094, 35.077206, 35.280094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.735661, 35.268600, 35.377178>,  <24.556604, 35.587593, 35.538986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.735661, 35.268600, 35.377178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502077, 0.598491, -0.624281,
		0.739957, 0.076352, 0.668307,
		0.447641, -0.797483, -0.404523,
		24.869953, 35.029354, 35.255821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.349379, 35.677189, 35.503242>,  <24.556604, 35.587593, 35.538986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.349379, 35.677189, 35.503242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.212339, 35.410404, 35.238579>,  <25.130116, 35.250336, 35.079781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.212339, 35.410404, 35.238579>,  <25.349379, 35.677189, 35.503242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.212339, 35.410404, 35.238579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464321, 0.492045, -0.736408,
		0.816720, -0.559514, 0.141109,
		-0.342599, -0.666960, -0.661657,
		25.109560, 35.210316, 35.040081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899157, 35.340870, 35.241272>,  <25.349379, 35.677189, 35.503242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.899157, 35.340870, 35.241272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604263, 35.393322, 34.976158>,  <25.427326, 35.424793, 34.817089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604263, 35.393322, 34.976158>,  <25.899157, 35.340870, 35.241272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.604263, 35.393322, 34.976158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656221, 0.372466, -0.656234,
		0.160811, -0.918734, -0.360648,
		-0.737234, 0.131135, -0.662789,
		25.383093, 35.432663, 34.777321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.071548, 34.921028, 34.566666>,  <25.899157, 35.340870, 35.241272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.071548, 34.921028, 34.566666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858622, 35.258438, 34.538082>,  <25.730865, 35.460884, 34.520931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858622, 35.258438, 34.538082>,  <26.071548, 34.921028, 34.566666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.858622, 35.258438, 34.538082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733007, 0.417048, -0.537375,
		-0.423486, -0.338435, -0.840310,
		-0.532317, 0.843524, -0.071461,
		25.698927, 35.511494, 34.516644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.863289, 34.686035, 34.863846>,  <26.071548, 34.921028, 34.566666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.863289, 34.686035, 34.863846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233105, 34.662762, 34.713196>,  <27.454994, 34.648796, 34.622807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233105, 34.662762, 34.713196>,  <26.863289, 34.686035, 34.863846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233105, 34.662762, 34.713196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176079, 0.941681, 0.286764,
		0.337974, -0.331440, 0.880864,
		0.924537, -0.058183, -0.376623,
		27.510466, 34.645306, 34.600208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257086, 35.096725, 35.342136>,  <26.863289, 34.686035, 34.863846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257086, 35.096725, 35.342136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495136, 35.043282, 35.025158>,  <27.637966, 35.011215, 34.834972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495136, 35.043282, 35.025158>,  <27.257086, 35.096725, 35.342136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495136, 35.043282, 35.025158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457853, 0.866765, 0.197708,
		0.660450, -0.480486, 0.577009,
		0.595127, -0.133610, -0.792447,
		27.673674, 35.003201, 34.787422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833408, 35.466270, 35.638924>,  <27.257086, 35.096725, 35.342136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833408, 35.466270, 35.638924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.879850, 35.447792, 35.242058>,  <27.907715, 35.436703, 35.003941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.879850, 35.447792, 35.242058>,  <27.833408, 35.466270, 35.638924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879850, 35.447792, 35.242058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399484, 0.916731, 0.004060,
		0.909358, -0.396825, 0.124892,
		0.116103, -0.046201, -0.992162,
		27.914680, 35.433933, 34.944408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514635, 35.686344, 35.506767>,  <27.833408, 35.466270, 35.638924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514635, 35.686344, 35.506767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.338964, 35.735806, 35.150826>,  <28.233562, 35.765484, 34.937260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.338964, 35.735806, 35.150826>,  <28.514635, 35.686344, 35.506767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338964, 35.735806, 35.150826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492670, 0.861416, -0.123445,
		0.751267, -0.492617, -0.439234,
		-0.439174, 0.123657, -0.889851,
		28.207212, 35.772903, 34.883869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067448, 35.911213, 35.028076>,  <28.514635, 35.686344, 35.506767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067448, 35.911213, 35.028076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706076, 36.017193, 34.893250>,  <28.489252, 36.080780, 34.812351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706076, 36.017193, 34.893250>,  <29.067448, 35.911213, 35.028076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706076, 36.017193, 34.893250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323496, 0.937207, -0.130357,
		0.281367, -0.226809, -0.932411,
		-0.903428, 0.264953, -0.337071,
		28.435047, 36.096680, 34.792130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133362, 36.162708, 34.332542>,  <29.067448, 35.911213, 35.028076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133362, 36.162708, 34.332542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797958, 36.336628, 34.463909>,  <28.596716, 36.440979, 34.542728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797958, 36.336628, 34.463909>,  <29.133362, 36.162708, 34.332542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797958, 36.336628, 34.463909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357669, 0.893891, -0.270244,
		-0.411070, -0.109137, -0.905047,
		-0.838507, 0.434797, 0.328417,
		28.546406, 36.467068, 34.562435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872791, 36.663868, 33.790607>,  <29.133362, 36.162708, 34.332542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872791, 36.663868, 33.790607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690489, 36.754692, 34.134869>,  <28.581108, 36.809185, 34.341427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690489, 36.754692, 34.134869>,  <28.872791, 36.663868, 33.790607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690489, 36.754692, 34.134869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302902, 0.948771, -0.089909,
		-0.836981, 0.219718, -0.501186,
		-0.455756, 0.227062, 0.860656,
		28.553762, 36.822811, 34.393066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319843, 37.059357, 33.585022>,  <28.872791, 36.663868, 33.790607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319843, 37.059357, 33.585022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415598, 37.135017, 33.965950>,  <28.473051, 37.180416, 34.194508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415598, 37.135017, 33.965950>,  <28.319843, 37.059357, 33.585022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415598, 37.135017, 33.965950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013083, 0.981378, -0.191639,
		-0.970836, 0.033417, 0.237404,
		0.239387, 0.189156, 0.952320,
		28.487413, 37.191765, 34.251648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171686, 37.735081, 33.570530>,  <28.319843, 37.059357, 33.585022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171686, 37.735081, 33.570530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362986, 37.707539, 33.920738>,  <28.477764, 37.691013, 34.130863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362986, 37.707539, 33.920738>,  <28.171686, 37.735081, 33.570530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362986, 37.707539, 33.920738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161272, 0.986854, -0.010486,
		-0.863291, 0.146212, 0.483064,
		0.478247, -0.068852, 0.875522,
		28.506460, 37.686882, 34.183395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796150, 38.114754, 34.106308>,  <28.171686, 37.735081, 33.570530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796150, 38.114754, 34.106308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182829, 38.077202, 34.201546>,  <28.414835, 38.054672, 34.258690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182829, 38.077202, 34.201546>,  <27.796150, 38.114754, 34.106308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182829, 38.077202, 34.201546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083938, 0.995136, 0.051570,
		-0.241776, -0.029867, 0.969872,
		0.966695, -0.093877, 0.238093,
		28.472837, 38.049038, 34.272972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933651, 38.562817, 34.644989>,  <27.796150, 38.114754, 34.106308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933651, 38.562817, 34.644989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292068, 38.491650, 34.482285>,  <28.507118, 38.448948, 34.384663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292068, 38.491650, 34.482285>,  <27.933651, 38.562817, 34.644989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292068, 38.491650, 34.482285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255750, 0.955757, 0.145331,
		0.362906, -0.234251, 0.901901,
		0.896042, -0.177920, -0.406759,
		28.560881, 38.438274, 34.360256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388515, 38.949184, 35.056961>,  <27.933651, 38.562817, 34.644989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388515, 38.949184, 35.056961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619802, 38.877693, 34.738537>,  <28.758575, 38.834797, 34.547482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619802, 38.877693, 34.738537>,  <28.388515, 38.949184, 35.056961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619802, 38.877693, 34.738537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454205, 0.881049, 0.132100,
		0.677761, -0.437959, 0.590620,
		0.578220, -0.178731, -0.796064,
		28.793268, 38.824074, 34.499718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961424, 39.284931, 35.243134>,  <28.388515, 38.949184, 35.056961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961424, 39.284931, 35.243134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065588, 39.202560, 34.865822>,  <29.128086, 39.153137, 34.639435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065588, 39.202560, 34.865822>,  <28.961424, 39.284931, 35.243134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065588, 39.202560, 34.865822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479110, 0.875775, -0.058924,
		0.838237, -0.436591, 0.326722,
		0.260409, -0.205928, -0.943282,
		29.143711, 39.140781, 34.582836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664164, 39.426746, 35.181873>,  <28.961424, 39.284931, 35.243134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664164, 39.426746, 35.181873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525948, 39.451885, 34.807354>,  <29.443018, 39.466969, 34.582642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525948, 39.451885, 34.807354>,  <29.664164, 39.426746, 35.181873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525948, 39.451885, 34.807354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521688, 0.842227, -0.135994,
		0.780027, -0.535447, -0.323812,
		-0.345541, 0.062849, -0.936297,
		29.422285, 39.470741, 34.526466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216759, 39.590664, 34.849171>,  <29.664164, 39.426746, 35.181873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216759, 39.590664, 34.849171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923601, 39.704315, 34.601902>,  <29.747707, 39.772507, 34.453541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923601, 39.704315, 34.601902>,  <30.216759, 39.590664, 34.849171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923601, 39.704315, 34.601902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484015, 0.856290, -0.180270,
		0.478118, -0.431325, -0.765089,
		-0.732893, 0.284125, -0.618175,
		29.703733, 39.789551, 34.416451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563644, 39.997025, 34.549488>,  <30.216759, 39.590664, 34.849171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563644, 39.997025, 34.549488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192343, 40.071831, 34.420887>,  <29.969561, 40.116714, 34.343727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192343, 40.071831, 34.420887>,  <30.563644, 39.997025, 34.549488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192343, 40.071831, 34.420887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290259, 0.904737, -0.311770,
		0.232571, -0.382722, -0.894111,
		-0.928256, 0.187015, -0.321505,
		29.913866, 40.127934, 34.324436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650373, 40.182919, 33.849556>,  <30.563644, 39.997025, 34.549488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650373, 40.182919, 33.849556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.297421, 40.315277, 33.983368>,  <30.085649, 40.394691, 34.063656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.297421, 40.315277, 33.983368>,  <30.650373, 40.182919, 33.849556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297421, 40.315277, 33.983368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267472, 0.937653, -0.221961,
		-0.387118, -0.106377, -0.915873,
		-0.882382, 0.330895, 0.334529,
		30.032705, 40.414547, 34.083725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359449, 40.667545, 33.304104>,  <30.650373, 40.182919, 33.849556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359449, 40.667545, 33.304104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183922, 40.761093, 33.651146>,  <30.078606, 40.817223, 33.859371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183922, 40.761093, 33.651146>,  <30.359449, 40.667545, 33.304104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183922, 40.761093, 33.651146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240924, 0.960807, -0.137133,
		-0.865676, 0.148852, -0.477963,
		-0.438817, 0.233866, 0.867610,
		30.052277, 40.831253, 33.911430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974314, 41.248241, 33.107948>,  <30.359449, 40.667545, 33.304104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974314, 41.248241, 33.107948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076139, 41.237469, 33.494621>,  <30.137234, 41.231007, 33.726624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076139, 41.237469, 33.494621>,  <29.974314, 41.248241, 33.107948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076139, 41.237469, 33.494621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141640, 0.989870, -0.009726,
		-0.956628, 0.139396, 0.255797,
		0.254562, -0.026927, 0.966681,
		30.152508, 41.229389, 33.784626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473467, 41.653553, 33.590500>,  <29.974314, 41.248241, 33.107948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473467, 41.653553, 33.590500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864752, 41.644436, 33.673042>,  <30.099524, 41.638966, 33.722569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864752, 41.644436, 33.673042>,  <29.473467, 41.653553, 33.590500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864752, 41.644436, 33.673042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074792, 0.965898, -0.247885,
		-0.193666, 0.257918, 0.946558,
		0.978212, -0.022788, 0.206352,
		30.158216, 41.637600, 33.734947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600185, 42.213726, 34.125530>,  <29.473467, 41.653553, 33.590500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600185, 42.213726, 34.125530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878687, 42.111275, 33.857315>,  <30.045788, 42.049805, 33.696384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878687, 42.111275, 33.857315>,  <29.600185, 42.213726, 34.125530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878687, 42.111275, 33.857315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133157, 0.964043, -0.229977,
		0.705335, 0.070835, 0.705326,
		0.696256, -0.256130, -0.670541,
		30.087564, 42.034435, 33.656151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187168, 42.665298, 34.468967>,  <29.600185, 42.213726, 34.125530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187168, 42.665298, 34.468967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012047, 42.624237, 34.826244>,  <29.906973, 42.599602, 35.040611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012047, 42.624237, 34.826244>,  <30.187168, 42.665298, 34.468967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012047, 42.624237, 34.826244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842784, -0.392849, 0.367947,
		0.313118, 0.913856, 0.258506,
		-0.437804, -0.102654, 0.893191,
		29.880705, 42.593441, 35.094200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935001, 42.769505, 33.705513>,  <30.187168, 42.665298, 34.468967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935001, 42.769505, 33.705513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081572, 43.136665, 33.766418>,  <30.169514, 43.356964, 33.802959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081572, 43.136665, 33.766418>,  <29.935001, 42.769505, 33.705513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081572, 43.136665, 33.766418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877115, -0.286159, -0.385724,
		-0.310487, 0.274890, -0.909963,
		0.366425, 0.917905, 0.152261,
		30.191500, 43.412037, 33.812096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262161, 42.863182, 33.027641>,  <29.935001, 42.769505, 33.705513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262161, 42.863182, 33.027641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420517, 43.086273, 33.319454>,  <30.515530, 43.220127, 33.494541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420517, 43.086273, 33.319454>,  <30.262161, 42.863182, 33.027641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420517, 43.086273, 33.319454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909631, -0.347069, -0.228286,
		0.125876, 0.753979, -0.644725,
		0.395887, 0.557726, 0.729530,
		30.539284, 43.253590, 33.538315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751751, 43.406467, 32.810829>,  <30.262161, 42.863182, 33.027641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751751, 43.406467, 32.810829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844711, 43.238106, 33.161560>,  <30.900488, 43.137089, 33.371998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844711, 43.238106, 33.161560>,  <30.751751, 43.406467, 32.810829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844711, 43.238106, 33.161560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835549, -0.375049, -0.401492,
		0.497843, 0.825942, 0.264522,
		0.232400, -0.420902, 0.876831,
		30.914431, 43.111835, 33.424610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401712, 43.566647, 33.005932>,  <30.751751, 43.406467, 32.810829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401712, 43.566647, 33.005932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322018, 43.226646, 33.200996>,  <31.274200, 43.022648, 33.318035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322018, 43.226646, 33.200996>,  <31.401712, 43.566647, 33.005932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322018, 43.226646, 33.200996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965465, -0.255509, -0.050908,
		0.167873, 0.460676, 0.871548,
		-0.199236, -0.849996, 0.487659,
		31.262247, 42.971649, 33.347294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018726, 43.456272, 33.321827>,  <31.401712, 43.566647, 33.005932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018726, 43.456272, 33.321827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837042, 43.100407, 33.303089>,  <31.728031, 42.886887, 33.291847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837042, 43.100407, 33.303089>,  <32.018726, 43.456272, 33.321827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837042, 43.100407, 33.303089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890856, -0.453072, -0.033194,
		0.008308, -0.056808, 0.998351,
		-0.454211, -0.889662, -0.046844,
		31.700779, 42.833508, 33.289036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415497, 43.016010, 33.789001>,  <32.018726, 43.456272, 33.321827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415497, 43.016010, 33.789001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187405, 42.777916, 33.562538>,  <32.050549, 42.635059, 33.426662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187405, 42.777916, 33.562538>,  <32.415497, 43.016010, 33.789001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187405, 42.777916, 33.562538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663988, -0.739759, 0.108981,
		-0.483687, -0.313774, 0.817064,
		-0.570235, -0.595233, -0.566154,
		32.016335, 42.599346, 33.392693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151516, 43.057270, 33.883858>,  <32.415497, 43.016010, 33.789001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151516, 43.057270, 33.883858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533199, 42.942844, 33.848873>,  <33.762211, 42.874187, 33.827881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533199, 42.942844, 33.848873>,  <33.151516, 43.057270, 33.883858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533199, 42.942844, 33.848873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269201, -0.948686, 0.165907,
		-0.130435, -0.134765, -0.982255,
		0.954211, -0.286065, -0.087463,
		33.819462, 42.857025, 33.822636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189648, 42.386208, 33.492493>,  <33.151516, 43.057270, 33.883858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189648, 42.386208, 33.492493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522598, 42.423626, 33.710995>,  <33.722370, 42.446079, 33.842098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522598, 42.423626, 33.710995>,  <33.189648, 42.386208, 33.492493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522598, 42.423626, 33.710995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188140, -0.879421, 0.437290,
		0.521298, -0.466763, -0.714409,
		0.832377, 0.093549, 0.546257,
		33.772312, 42.451691, 33.874870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688320, 41.737900, 33.372990>,  <33.189648, 42.386208, 33.492493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688320, 41.737900, 33.372990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655277, 41.922386, 33.726364>,  <33.635452, 42.033077, 33.938389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655277, 41.922386, 33.726364>,  <33.688320, 41.737900, 33.372990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655277, 41.922386, 33.726364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364465, -0.839038, 0.403956,
		0.927546, -0.288613, 0.237403,
		-0.082603, 0.461213, 0.883436,
		33.630497, 42.060749, 33.991394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095539, 41.382702, 33.923389>,  <33.688320, 41.737900, 33.372990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095539, 41.382702, 33.923389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766518, 41.566738, 34.057091>,  <33.569107, 41.677162, 34.137310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766518, 41.566738, 34.057091>,  <34.095539, 41.382702, 33.923389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766518, 41.566738, 34.057091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318424, -0.859596, 0.399626,
		0.471186, 0.222279, 0.853566,
		-0.822551, 0.460094, 0.334251,
		33.519753, 41.704765, 34.157368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939983, 41.009991, 34.520142>,  <34.095539, 41.382702, 33.923389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939983, 41.009991, 34.520142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602062, 41.204094, 34.429962>,  <33.399307, 41.320557, 34.375854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602062, 41.204094, 34.429962>,  <33.939983, 41.009991, 34.520142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602062, 41.204094, 34.429962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534223, -0.788652, 0.304359,
		-0.030112, 0.377566, 0.925493,
		-0.844807, 0.485254, -0.225452,
		33.348621, 41.349670, 34.362328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534775, 40.779034, 35.129490>,  <33.939983, 41.009991, 34.520142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534775, 40.779034, 35.129490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303051, 40.928310, 34.839626>,  <33.164017, 41.017876, 34.665707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303051, 40.928310, 34.839626>,  <33.534775, 40.779034, 35.129490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303051, 40.928310, 34.839626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655755, -0.741424, 0.142394,
		-0.484137, 0.557688, 0.674237,
		-0.579307, 0.373196, -0.724658,
		33.129257, 41.040268, 34.622231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933655, 40.636330, 35.421101>,  <33.534775, 40.779034, 35.129490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933655, 40.636330, 35.421101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828823, 40.707058, 35.041618>,  <32.765923, 40.749496, 34.813927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828823, 40.707058, 35.041618>,  <32.933655, 40.636330, 35.421101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828823, 40.707058, 35.041618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709855, -0.701307, 0.065386,
		-0.653774, 0.690582, 0.309316,
		-0.262080, 0.176822, -0.948709,
		32.750198, 40.760105, 34.757008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281788, 40.676815, 35.318062>,  <32.933655, 40.636330, 35.421101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281788, 40.676815, 35.318062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319073, 40.625809, 34.923084>,  <32.341442, 40.595203, 34.686096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319073, 40.625809, 34.923084>,  <32.281788, 40.676815, 35.318062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319073, 40.625809, 34.923084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511222, -0.857178, 0.062435,
		-0.854379, 0.498985, -0.145091,
		0.093215, -0.127517, -0.987446,
		32.347038, 40.587555, 34.626850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651657, 40.456814, 35.077538>,  <32.281788, 40.676815, 35.318062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651657, 40.456814, 35.077538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953325, 40.309437, 34.860107>,  <32.134327, 40.221008, 34.729649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953325, 40.309437, 34.860107>,  <31.651657, 40.456814, 35.077538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953325, 40.309437, 34.860107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384779, -0.918720, 0.088875,
		-0.532136, 0.142128, -0.834644,
		0.754173, -0.368447, -0.543572,
		32.179577, 40.198902, 34.697037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354254, 40.133953, 34.374760>,  <31.651657, 40.456814, 35.077538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354254, 40.133953, 34.374760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710539, 39.959637, 34.426479>,  <31.924311, 39.855049, 34.457512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710539, 39.959637, 34.426479>,  <31.354254, 40.133953, 34.374760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710539, 39.959637, 34.426479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428706, -0.899913, -0.079791,
		0.151130, 0.015639, -0.988390,
		0.890713, -0.435788, 0.129300,
		31.977753, 39.828899, 34.465271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502346, 39.581257, 33.776802>,  <31.354254, 40.133953, 34.374760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502346, 39.581257, 33.776802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759083, 39.499836, 34.072533>,  <31.913124, 39.450985, 34.249973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759083, 39.499836, 34.072533>,  <31.502346, 39.581257, 33.776802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759083, 39.499836, 34.072533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266097, -0.963339, -0.034219,
		0.719189, -0.174770, -0.672475,
		0.641841, -0.203554, 0.739328,
		31.951635, 39.438770, 34.294331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846966, 39.028549, 33.580101>,  <31.502346, 39.581257, 33.776802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846966, 39.028549, 33.580101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899326, 39.026371, 33.976654>,  <31.930742, 39.025063, 34.214584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899326, 39.026371, 33.976654>,  <31.846966, 39.028549, 33.580101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899326, 39.026371, 33.976654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261458, -0.964773, 0.029221,
		0.956298, -0.263029, -0.127715,
		0.130902, -0.005448, 0.991381,
		31.938597, 39.024738, 34.274067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061707, 38.400352, 33.671478>,  <31.846966, 39.028549, 33.580101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061707, 38.400352, 33.671478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000343, 38.492664, 34.055813>,  <31.963524, 38.548050, 34.286415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000343, 38.492664, 34.055813>,  <32.061707, 38.400352, 33.671478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000343, 38.492664, 34.055813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111067, -0.970213, 0.215294,
		0.981900, -0.073688, 0.174475,
		-0.153413, 0.230775, 0.960837,
		31.954319, 38.561897, 34.344063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478127, 37.940750, 33.999802>,  <32.061707, 38.400352, 33.671478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478127, 37.940750, 33.999802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183086, 38.051311, 34.246231>,  <32.006062, 38.117649, 34.394089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183086, 38.051311, 34.246231>,  <32.478127, 37.940750, 33.999802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183086, 38.051311, 34.246231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242917, -0.959915, 0.139835,
		0.630029, -0.046513, 0.775177,
		-0.737600, 0.276404, 0.616074,
		31.961807, 38.134232, 34.431053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480221, 37.478935, 34.547096>,  <32.478127, 37.940750, 33.999802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480221, 37.478935, 34.547096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111645, 37.628471, 34.589413>,  <31.890499, 37.718193, 34.614803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111645, 37.628471, 34.589413>,  <32.480221, 37.478935, 34.547096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111645, 37.628471, 34.589413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374193, -0.927190, 0.017272,
		0.104543, -0.023671, 0.994238,
		-0.921439, 0.373842, 0.105789,
		31.835213, 37.740623, 34.621151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146980, 37.078793, 35.048466>,  <32.480221, 37.478935, 34.547096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146980, 37.078793, 35.048466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840816, 37.263687, 34.869366>,  <31.657118, 37.374622, 34.761906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840816, 37.263687, 34.869366>,  <32.146980, 37.078793, 35.048466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840816, 37.263687, 34.869366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470876, -0.876521, -0.099934,
		-0.438658, 0.134346, 0.888555,
		-0.765411, 0.462237, -0.447753,
		31.611193, 37.402359, 34.735039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515549, 36.797897, 35.336449>,  <32.146980, 37.078793, 35.048466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515549, 36.797897, 35.336449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409454, 36.975731, 34.994225>,  <31.345798, 37.082432, 34.788891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409454, 36.975731, 34.994225>,  <31.515549, 36.797897, 35.336449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409454, 36.975731, 34.994225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623122, -0.756182, -0.199769,
		-0.735778, 0.480135, 0.477600,
		-0.265237, 0.444589, -0.855565,
		31.329884, 37.109108, 34.737556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679623, 36.841480, 35.314083>,  <31.515549, 36.797897, 35.336449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679623, 36.841480, 35.314083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860901, 36.836216, 34.957558>,  <30.969667, 36.833057, 34.743641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860901, 36.836216, 34.957558>,  <30.679623, 36.841480, 35.314083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860901, 36.836216, 34.957558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540118, -0.799499, -0.262818,
		-0.709145, 0.600523, -0.369440,
		0.453196, -0.013165, -0.891314,
		30.996861, 36.832268, 34.690163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153650, 36.788906, 34.862194>,  <30.679623, 36.841480, 35.314083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153650, 36.788906, 34.862194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475578, 36.672672, 34.655186>,  <30.668736, 36.602932, 34.530979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475578, 36.672672, 34.655186>,  <30.153650, 36.788906, 34.862194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475578, 36.672672, 34.655186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506705, -0.790438, -0.344177,
		-0.309058, 0.539231, -0.783398,
		0.804818, -0.290581, -0.517523,
		30.717024, 36.585499, 34.499928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895576, 36.516205, 34.210594>,  <30.153650, 36.788906, 34.862194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895576, 36.516205, 34.210594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278824, 36.402138, 34.200111>,  <30.508772, 36.333698, 34.193821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278824, 36.402138, 34.200111>,  <29.895576, 36.516205, 34.210594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278824, 36.402138, 34.200111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241626, -0.755900, -0.608467,
		0.153702, 0.589317, -0.793147,
		0.958119, -0.285168, -0.026211,
		30.566259, 36.316589, 34.192249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139004, 36.436646, 33.487465>,  <29.895576, 36.516205, 34.210594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139004, 36.436646, 33.487465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365698, 36.195789, 33.712406>,  <30.501715, 36.051277, 33.847370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365698, 36.195789, 33.712406>,  <30.139004, 36.436646, 33.487465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365698, 36.195789, 33.712406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261959, -0.778824, -0.569922,
		0.781144, 0.175682, -0.599124,
		0.566737, -0.602137, 0.562352,
		30.535719, 36.015148, 33.881111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339630, 35.940968, 33.054234>,  <30.139004, 36.436646, 33.487465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339630, 35.940968, 33.054234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423927, 35.755966, 33.398716>,  <30.474504, 35.644966, 33.605404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423927, 35.755966, 33.398716>,  <30.339630, 35.940968, 33.054234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423927, 35.755966, 33.398716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175596, -0.884572, -0.432086,
		0.961641, -0.060165, -0.267631,
		0.210742, -0.462506, 0.861206,
		30.487150, 35.617214, 33.657078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823982, 35.449394, 32.879730>,  <30.339630, 35.940968, 33.054234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823982, 35.449394, 32.879730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634445, 35.350201, 33.217720>,  <30.520723, 35.290684, 33.420513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634445, 35.350201, 33.217720>,  <30.823982, 35.449394, 32.879730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634445, 35.350201, 33.217720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140072, -0.926089, -0.350341,
		0.869398, -0.284363, 0.404086,
		-0.473844, -0.247985, 0.844971,
		30.492292, 35.275806, 33.471210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091806, 34.850986, 33.130074>,  <30.823982, 35.449394, 32.879730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091806, 34.850986, 33.130074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722345, 34.863358, 33.282864>,  <30.500668, 34.870781, 33.374538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722345, 34.863358, 33.282864>,  <31.091806, 34.850986, 33.130074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722345, 34.863358, 33.282864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265274, -0.770936, -0.579040,
		0.276571, -0.636161, 0.720283,
		-0.923655, 0.030927, 0.381975,
		30.445250, 34.872635, 33.397457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691181, 35.160191, 33.395779>,  <31.091806, 34.850986, 33.130074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691181, 35.160191, 33.395779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953651, 35.375286, 33.184017>,  <32.111134, 35.504345, 33.056961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953651, 35.375286, 33.184017>,  <31.691181, 35.160191, 33.395779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953651, 35.375286, 33.184017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493610, 0.836518, 0.237880,
		0.570773, 0.105228, 0.814337,
		0.656176, 0.537741, -0.529404,
		32.150505, 35.536610, 33.025196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323683, 35.095337, 34.003212>,  <31.691181, 35.160191, 33.395779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323683, 35.095337, 34.003212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640493, 34.910923, 33.843143>,  <31.830580, 34.800274, 33.747101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640493, 34.910923, 33.843143>,  <31.323683, 35.095337, 34.003212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640493, 34.910923, 33.843143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423231, -0.057740, 0.904180,
		-0.439968, -0.885500, 0.149395,
		0.792025, -0.461038, -0.400175,
		31.878101, 34.772610, 33.723091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631502, 34.466808, 34.361614>,  <31.323683, 35.095337, 34.003212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631502, 34.466808, 34.361614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939962, 34.628258, 34.164673>,  <32.125038, 34.725128, 34.046509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939962, 34.628258, 34.164673>,  <31.631502, 34.466808, 34.361614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939962, 34.628258, 34.164673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521869, 0.042211, 0.851980,
		0.364665, -0.913949, -0.178089,
		0.771150, 0.403627, -0.492355,
		32.171307, 34.749344, 34.016968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245377, 34.072144, 34.432056>,  <31.631502, 34.466808, 34.361614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245377, 34.072144, 34.432056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341705, 34.459175, 34.401604>,  <32.399502, 34.691395, 34.383331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341705, 34.459175, 34.401604>,  <32.245377, 34.072144, 34.432056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341705, 34.459175, 34.401604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481199, -0.050914, 0.875131,
		0.842882, -0.247387, -0.477859,
		0.240826, 0.967578, -0.076128,
		32.413952, 34.749447, 34.378765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960918, 34.024132, 34.611294>,  <32.245377, 34.072144, 34.432056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960918, 34.024132, 34.611294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786854, 34.383026, 34.641212>,  <32.682415, 34.598362, 34.659164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786854, 34.383026, 34.641212>,  <32.960918, 34.024132, 34.611294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786854, 34.383026, 34.641212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492412, 0.167620, 0.854069,
		0.753766, 0.408493, -0.514753,
		-0.435164, 0.897239, 0.074801,
		32.656303, 34.652199, 34.663654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447018, 34.540813, 34.776180>,  <32.960918, 34.024132, 34.611294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447018, 34.540813, 34.776180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085163, 34.658085, 34.899906>,  <32.868050, 34.728447, 34.974140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085163, 34.658085, 34.899906>,  <33.447018, 34.540813, 34.776180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085163, 34.658085, 34.899906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354735, 0.115738, 0.927776,
		0.236205, 0.949026, -0.208701,
		-0.904638, 0.293179, 0.309315,
		32.813770, 34.746040, 34.992702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506924, 35.116631, 35.342812>,  <33.447018, 34.540813, 34.776180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506924, 35.116631, 35.342812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187908, 34.885567, 35.412369>,  <32.996498, 34.746929, 35.454102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187908, 34.885567, 35.412369>,  <33.506924, 35.116631, 35.342812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187908, 34.885567, 35.412369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156667, 0.080034, 0.984403,
		-0.582566, 0.812345, 0.026670,
		-0.797541, -0.577658, 0.173893,
		32.948647, 34.712269, 35.464535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909988, 35.485851, 35.727795>,  <33.506924, 35.116631, 35.342812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909988, 35.485851, 35.727795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922199, 35.089230, 35.778225>,  <32.929523, 34.851257, 35.808483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922199, 35.089230, 35.778225>,  <32.909988, 35.485851, 35.727795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922199, 35.089230, 35.778225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072765, 0.128000, 0.989101,
		-0.996882, -0.021017, 0.076057,
		0.030523, -0.991552, 0.126072,
		32.931355, 34.791763, 35.816048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460022, 35.287987, 36.244549>,  <32.909988, 35.485851, 35.727795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460022, 35.287987, 36.244549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723618, 34.989906, 36.203751>,  <32.881775, 34.811058, 36.179272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723618, 34.989906, 36.203751>,  <32.460022, 35.287987, 36.244549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723618, 34.989906, 36.203751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222351, 0.063471, 0.972898,
		-0.718536, -0.663807, 0.207524,
		0.658989, -0.745206, -0.101992,
		32.921314, 34.766346, 36.173153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286144, 34.714436, 36.607964>,  <32.460022, 35.287987, 36.244549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286144, 34.714436, 36.607964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683979, 34.746716, 36.581776>,  <32.922680, 34.766083, 36.566063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683979, 34.746716, 36.581776>,  <32.286144, 34.714436, 36.607964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683979, 34.746716, 36.581776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059078, 0.079213, 0.995106,
		0.085510, -0.993584, 0.074016,
		0.994584, 0.080719, -0.065472,
		32.982353, 34.770924, 36.562134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602745, 34.312237, 37.080746>,  <32.286144, 34.714436, 36.607964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602745, 34.312237, 37.080746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871197, 34.602043, 37.017929>,  <33.032269, 34.775925, 36.980240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871197, 34.602043, 37.017929>,  <32.602745, 34.312237, 37.080746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871197, 34.602043, 37.017929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132644, 0.091059, 0.986972,
		0.729375, -0.683219, -0.034990,
		0.671132, 0.724514, -0.157040,
		33.072536, 34.819397, 36.970818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295860, 34.184776, 37.565815>,  <32.602745, 34.312237, 37.080746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295860, 34.184776, 37.565815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266865, 34.562969, 37.438812>,  <33.249470, 34.789886, 37.362610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266865, 34.562969, 37.438812>,  <33.295860, 34.184776, 37.565815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266865, 34.562969, 37.438812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263323, 0.325193, 0.908246,
		0.961981, -0.017771, -0.272539,
		-0.072487, 0.945481, -0.317509,
		33.245117, 34.846615, 37.343559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954189, 34.335541, 37.694267>,  <33.295860, 34.184776, 37.565815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954189, 34.335541, 37.694267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721272, 34.660702, 37.689781>,  <33.581520, 34.855797, 37.687088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721272, 34.660702, 37.689781>,  <33.954189, 34.335541, 37.694267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721272, 34.660702, 37.689781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272079, 0.207856, 0.939558,
		0.766100, 0.544046, -0.342207,
		-0.582292, 0.812902, -0.011215,
		33.546585, 34.904572, 37.686417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334015, 34.702049, 38.062527>,  <33.954189, 34.335541, 37.694267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334015, 34.702049, 38.062527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981411, 34.890869, 38.066833>,  <33.769848, 35.004162, 38.069420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981411, 34.890869, 38.066833>,  <34.334015, 34.702049, 38.062527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981411, 34.890869, 38.066833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201449, 0.355364, 0.912762,
		0.427040, 0.806776, -0.408349,
		-0.881508, 0.472047, 0.010769,
		33.716957, 35.032482, 38.070065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470608, 35.226902, 38.386200>,  <34.334015, 34.702049, 38.062527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470608, 35.226902, 38.386200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073570, 35.220406, 38.434345>,  <33.835346, 35.216507, 38.463234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073570, 35.220406, 38.434345>,  <34.470608, 35.226902, 38.386200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073570, 35.220406, 38.434345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096565, 0.495583, 0.863176,
		-0.073670, 0.868409, -0.490346,
		-0.992596, -0.016240, 0.120368,
		33.775791, 35.215534, 38.470455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337177, 35.869781, 38.575108>,  <34.470608, 35.226902, 38.386200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337177, 35.869781, 38.575108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024143, 35.650005, 38.692184>,  <33.836323, 35.518139, 38.762428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024143, 35.650005, 38.692184>,  <34.337177, 35.869781, 38.575108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024143, 35.650005, 38.692184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051639, 0.411242, 0.910062,
		-0.620396, 0.727317, -0.293460,
		-0.782587, -0.549445, 0.292690,
		33.789368, 35.485172, 38.779991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946247, 36.328125, 39.082443>,  <34.337177, 35.869781, 38.575108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946247, 36.328125, 39.082443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842278, 35.950127, 39.161858>,  <33.779896, 35.723328, 39.209507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842278, 35.950127, 39.161858>,  <33.946247, 36.328125, 39.082443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842278, 35.950127, 39.161858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223543, 0.258902, 0.939680,
		-0.939398, 0.199862, -0.278542,
		-0.259921, -0.945000, 0.198535,
		33.764301, 35.666626, 39.221416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390732, 36.379665, 39.523224>,  <33.946247, 36.328125, 39.082443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390732, 36.379665, 39.523224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537891, 36.009983, 39.564194>,  <33.626186, 35.788174, 39.588776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537891, 36.009983, 39.564194>,  <33.390732, 36.379665, 39.523224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537891, 36.009983, 39.564194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160013, 0.045589, 0.986062,
		-0.915996, -0.379158, -0.131114,
		0.367895, -0.924208, 0.102429,
		33.648258, 35.732719, 39.594921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000404, 36.117302, 39.944519>,  <33.390732, 36.379665, 39.523224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000404, 36.117302, 39.944519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326260, 35.890034, 39.991093>,  <33.521770, 35.753674, 40.019035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326260, 35.890034, 39.991093>,  <33.000404, 36.117302, 39.944519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326260, 35.890034, 39.991093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025301, 0.165747, 0.985844,
		-0.579424, -0.806047, 0.120648,
		0.814634, -0.568169, 0.116431,
		33.570648, 35.719582, 40.026024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919731, 35.763752, 40.501686>,  <33.000404, 36.117302, 39.944519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919731, 35.763752, 40.501686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316116, 35.718430, 40.472965>,  <33.553947, 35.691238, 40.455734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316116, 35.718430, 40.472965>,  <32.919731, 35.763752, 40.501686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316116, 35.718430, 40.472965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086534, 0.130977, 0.987602,
		-0.102493, -0.984890, 0.139598,
		0.990963, -0.113302, -0.071802,
		33.613403, 35.684441, 40.451424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107536, 35.290985, 41.039230>,  <32.919731, 35.763752, 40.501686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107536, 35.290985, 41.039230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434734, 35.494804, 40.932465>,  <33.631054, 35.617096, 40.868404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434734, 35.494804, 40.932465>,  <33.107536, 35.290985, 41.039230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434734, 35.494804, 40.932465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219396, 0.152565, 0.963633,
		0.531738, -0.846809, 0.013005,
		0.817998, 0.509547, -0.266912,
		33.680134, 35.647667, 40.852390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542278, 34.945267, 41.455696>,  <33.107536, 35.290985, 41.039230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542278, 34.945267, 41.455696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650936, 35.320004, 41.367580>,  <33.716133, 35.544846, 41.314713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650936, 35.320004, 41.367580>,  <33.542278, 34.945267, 41.455696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650936, 35.320004, 41.367580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130565, 0.190901, 0.972887,
		0.953499, -0.293044, -0.070462,
		0.271648, 0.936847, -0.220285,
		33.732430, 35.601059, 41.301495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095688, 35.103725, 41.871822>,  <33.542278, 34.945267, 41.455696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095688, 35.103725, 41.871822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941914, 35.460388, 41.776196>,  <33.849648, 35.674385, 41.718819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941914, 35.460388, 41.776196>,  <34.095688, 35.103725, 41.871822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941914, 35.460388, 41.776196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099065, 0.297317, 0.949626,
		0.917820, 0.341389, -0.202632,
		-0.384437, 0.891660, -0.239064,
		33.826584, 35.727886, 41.704475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463215, 35.596081, 42.322937>,  <34.095688, 35.103725, 41.871822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463215, 35.596081, 42.322937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165382, 35.819553, 42.176807>,  <33.986683, 35.953636, 42.089130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165382, 35.819553, 42.176807>,  <34.463215, 35.596081, 42.322937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165382, 35.819553, 42.176807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087772, 0.460592, 0.883262,
		0.661732, 0.689729, -0.293913,
		-0.744585, 0.558685, -0.365327,
		33.942005, 35.987160, 42.067211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546387, 36.251930, 42.647259>,  <34.463215, 35.596081, 42.322937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546387, 36.251930, 42.647259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164581, 36.273232, 42.529915>,  <33.935497, 36.286011, 42.459507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164581, 36.273232, 42.529915>,  <34.546387, 36.251930, 42.647259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164581, 36.273232, 42.529915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253510, 0.372962, 0.892542,
		0.156942, 0.926317, -0.342499,
		-0.954517, 0.053250, -0.293364,
		33.878227, 36.289207, 42.441906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419281, 36.876465, 42.772461>,  <34.546387, 36.251930, 42.647259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419281, 36.876465, 42.772461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063580, 36.694427, 42.754032>,  <33.850159, 36.585205, 42.742973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063580, 36.694427, 42.754032>,  <34.419281, 36.876465, 42.772461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063580, 36.694427, 42.754032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251384, 0.402076, 0.880421,
		-0.382146, 0.794498, -0.471950,
		-0.889252, -0.455090, -0.046073,
		33.796803, 36.557899, 42.740211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906010, 37.470036, 42.953667>,  <34.419281, 36.876465, 42.772461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906010, 37.470036, 42.953667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743160, 37.109894, 43.015129>,  <33.645451, 36.893810, 43.052006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743160, 37.109894, 43.015129>,  <33.906010, 37.470036, 42.953667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743160, 37.109894, 43.015129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227851, 0.263029, 0.937496,
		-0.884496, 0.346667, -0.312233,
		-0.407125, -0.900354, 0.153660,
		33.621021, 36.839787, 43.061226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198704, 37.548595, 43.189659>,  <33.906010, 37.470036, 42.953667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198704, 37.548595, 43.189659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281204, 37.175316, 43.307369>,  <33.330704, 36.951347, 43.377995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281204, 37.175316, 43.307369>,  <33.198704, 37.548595, 43.189659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281204, 37.175316, 43.307369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217425, 0.249511, 0.943648,
		-0.954037, -0.258610, -0.151440,
		0.206251, -0.933202, 0.294271,
		33.343079, 36.895355, 43.395649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623692, 37.419632, 43.646648>,  <33.198704, 37.548595, 43.189659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623692, 37.419632, 43.646648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903309, 37.144402, 43.724506>,  <33.071079, 36.979263, 43.771221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903309, 37.144402, 43.724506>,  <32.623692, 37.419632, 43.646648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903309, 37.144402, 43.724506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259144, 0.009927, 0.965788,
		-0.666470, -0.725568, -0.171372,
		0.699044, -0.688079, 0.194642,
		33.113022, 36.937977, 43.782898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349327, 36.969597, 44.191380>,  <32.623692, 37.419632, 43.646648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349327, 36.969597, 44.191380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745632, 36.925957, 44.223583>,  <32.983418, 36.899773, 44.242905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745632, 36.925957, 44.223583>,  <32.349327, 36.969597, 44.191380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745632, 36.925957, 44.223583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074366, 0.059234, 0.995470,
		-0.113373, -0.992264, 0.050574,
		0.990766, -0.109099, 0.080507,
		33.042862, 36.893227, 44.247734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376583, 36.486973, 44.646229>,  <32.349327, 36.969597, 44.191380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376583, 36.486973, 44.646229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740501, 36.650623, 44.674213>,  <32.958851, 36.748814, 44.691006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740501, 36.650623, 44.674213>,  <32.376583, 36.486973, 44.646229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740501, 36.650623, 44.674213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032901, -0.096940, 0.994746,
		0.413758, -0.907314, -0.074734,
		0.909792, 0.409125, 0.069961,
		33.013439, 36.773361, 44.695202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655247, 36.006344, 45.106747>,  <32.376583, 36.486973, 44.646229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655247, 36.006344, 45.106747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848820, 36.356358, 45.111225>,  <32.964962, 36.566364, 45.113911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848820, 36.356358, 45.111225>,  <32.655247, 36.006344, 45.106747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848820, 36.356358, 45.111225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017970, -0.002849, 0.999835,
		0.874922, -0.484052, 0.014346,
		0.483931, 0.875035, 0.011191,
		32.993999, 36.618870, 45.114582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987133, 35.907631, 45.755154>,  <32.655247, 36.006344, 45.106747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987133, 35.907631, 45.755154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077164, 36.288998, 45.674809>,  <33.131180, 36.517818, 45.626602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077164, 36.288998, 45.674809>,  <32.987133, 35.907631, 45.755154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077164, 36.288998, 45.674809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035218, 0.198058, 0.979557,
		0.973705, -0.227545, 0.011000,
		0.225072, 0.953413, -0.200864,
		33.144684, 36.575020, 45.614548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545650, 36.106258, 46.230362>,  <32.987133, 35.907631, 45.755154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545650, 36.106258, 46.230362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435429, 36.467236, 46.097897>,  <33.369293, 36.683823, 46.018417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435429, 36.467236, 46.097897>,  <33.545650, 36.106258, 46.230362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435429, 36.467236, 46.097897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242659, 0.398650, 0.884418,
		0.930153, 0.163347, -0.328836,
		-0.275557, 0.902439, -0.331168,
		33.352760, 36.737968, 45.998547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128132, 36.698124, 46.240784>,  <33.545650, 36.106258, 46.230362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128132, 36.698124, 46.240784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765301, 36.857891, 46.293964>,  <33.547604, 36.953751, 46.325874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765301, 36.857891, 46.293964>,  <34.128132, 36.698124, 46.240784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765301, 36.857891, 46.293964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252703, 0.264044, 0.930818,
		0.336677, 0.877922, -0.340442,
		-0.907078, 0.399416, 0.132956,
		33.493179, 36.977715, 46.333851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350945, 37.031288, 46.783092>,  <34.128132, 36.698124, 46.240784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350945, 37.031288, 46.783092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952705, 37.067142, 46.772141>,  <33.713760, 37.088657, 46.765568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952705, 37.067142, 46.772141>,  <34.350945, 37.031288, 46.783092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952705, 37.067142, 46.772141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007057, 0.363023, 0.931753,
		0.093461, 0.927459, -0.362057,
		-0.995598, 0.089638, -0.027384,
		33.654026, 37.094032, 46.763924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174660, 37.814598, 47.058434>,  <34.350945, 37.031288, 46.783092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174660, 37.814598, 47.058434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911247, 37.518215, 47.111073>,  <33.753201, 37.340385, 47.142654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911247, 37.518215, 47.111073>,  <34.174660, 37.814598, 47.058434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911247, 37.518215, 47.111073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043129, 0.137416, 0.989574,
		-0.751314, 0.657344, -0.058537,
		-0.658534, -0.740956, 0.131593,
		33.713688, 37.295929, 47.150551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665081, 38.036701, 47.572121>,  <34.174660, 37.814598, 47.058434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665081, 38.036701, 47.572121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691128, 37.637764, 47.559093>,  <33.706757, 37.398399, 47.551277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691128, 37.637764, 47.559093>,  <33.665081, 38.036701, 47.572121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691128, 37.637764, 47.559093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041755, -0.029885, 0.998681,
		-0.997004, -0.066390, 0.039698,
		0.065116, -0.997346, -0.032567,
		33.710663, 37.338562, 47.549324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412388, 37.764790, 48.193771>,  <33.665081, 38.036701, 47.572121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412388, 37.764790, 48.193771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576954, 37.428253, 48.053551>,  <33.675694, 37.226334, 47.969418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576954, 37.428253, 48.053551>,  <33.412388, 37.764790, 48.193771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576954, 37.428253, 48.053551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280895, -0.248851, 0.926915,
		-0.867084, -0.479817, 0.133947,
		0.411416, -0.841338, -0.350553,
		33.700378, 37.175850, 47.948383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406059, 37.308998, 48.745304>,  <33.412388, 37.764790, 48.193771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406059, 37.308998, 48.745304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677917, 37.120525, 48.520424>,  <33.841034, 37.007442, 48.385494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677917, 37.120525, 48.520424>,  <33.406059, 37.308998, 48.745304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677917, 37.120525, 48.520424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532178, -0.210747, 0.819983,
		-0.504842, -0.856489, 0.107518,
		0.679648, -0.471181, -0.562199,
		33.881813, 36.979172, 48.351765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305393, 36.581787, 48.911747>,  <33.406059, 37.308998, 48.745304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305393, 36.581787, 48.911747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667645, 36.635113, 48.750717>,  <33.884995, 36.667110, 48.654099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667645, 36.635113, 48.750717>,  <33.305393, 36.581787, 48.911747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667645, 36.635113, 48.750717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423077, -0.348982, 0.836192,
		-0.029012, -0.927598, -0.372451,
		0.905629, 0.133316, -0.402570,
		33.939335, 36.675106, 48.629948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612839, 35.904270, 49.002865>,  <33.305393, 36.581787, 48.911747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612839, 35.904270, 49.002865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903873, 36.175720, 48.962696>,  <34.078495, 36.338589, 48.938595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903873, 36.175720, 48.962696>,  <33.612839, 35.904270, 49.002865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903873, 36.175720, 48.962696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469278, -0.385577, 0.794423,
		0.500391, -0.625142, -0.599004,
		0.727590, 0.678622, -0.100426,
		34.122150, 36.379307, 48.932568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174683, 35.520626, 49.161404>,  <33.612839, 35.904270, 49.002865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174683, 35.520626, 49.161404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311813, 35.896229, 49.172283>,  <34.394093, 36.121590, 49.178810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311813, 35.896229, 49.172283>,  <34.174683, 35.520626, 49.161404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311813, 35.896229, 49.172283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654787, -0.259619, 0.709826,
		0.673590, -0.225541, -0.703852,
		0.342828, 0.939005, 0.027195,
		34.414661, 36.177929, 49.180443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938702, 35.446815, 49.328045>,  <34.174683, 35.520626, 49.161404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938702, 35.446815, 49.328045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789207, 35.799236, 49.444019>,  <34.699509, 36.010689, 49.513603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789207, 35.799236, 49.444019>,  <34.938702, 35.446815, 49.328045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789207, 35.799236, 49.444019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534725, -0.050753, 0.843500,
		0.757885, 0.470285, -0.452154,
		-0.373737, 0.881054, 0.289938,
		34.677086, 36.063553, 49.531002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529018, 35.746902, 49.481632>,  <34.938702, 35.446815, 49.328045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529018, 35.746902, 49.481632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264011, 35.993229, 49.652206>,  <35.105007, 36.141026, 49.754551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264011, 35.993229, 49.652206>,  <35.529018, 35.746902, 49.481632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264011, 35.993229, 49.652206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604953, 0.104183, 0.789416,
		0.441705, 0.780974, -0.441561,
		-0.662517, 0.615812, 0.426435,
		35.065258, 36.177971, 49.780136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807964, 36.302338, 49.704472>,  <35.529018, 35.746902, 49.481632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807964, 36.302338, 49.704472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482563, 36.268837, 49.934673>,  <35.287323, 36.248737, 50.072796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482563, 36.268837, 49.934673>,  <35.807964, 36.302338, 49.704472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482563, 36.268837, 49.934673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567443, 0.102462, 0.817013,
		-0.127390, 0.991205, -0.035831,
		-0.813499, -0.083747, 0.575505,
		35.238514, 36.243713, 50.107327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765827, 36.909760, 50.084652>,  <35.807964, 36.302338, 49.704472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765827, 36.909760, 50.084652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565147, 36.634487, 50.294300>,  <35.444740, 36.469322, 50.420090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565147, 36.634487, 50.294300>,  <35.765827, 36.909760, 50.084652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565147, 36.634487, 50.294300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660592, 0.086383, 0.745759,
		-0.558494, 0.720376, 0.411270,
		-0.501700, -0.688183, 0.524119,
		35.414639, 36.428032, 50.451534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851807, 37.091995, 50.762039>,  <35.765827, 36.909760, 50.084652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851807, 37.091995, 50.762039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697327, 36.728630, 50.826080>,  <35.604641, 36.510609, 50.864506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697327, 36.728630, 50.826080>,  <35.851807, 37.091995, 50.762039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697327, 36.728630, 50.826080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607210, -0.119707, 0.785472,
		-0.694369, 0.400563, 0.597830,
		-0.386195, -0.908416, 0.160106,
		35.581467, 36.456104, 50.874111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525639, 37.106434, 51.380100>,  <35.851807, 37.091995, 50.762039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525639, 37.106434, 51.380100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639847, 36.731625, 51.299633>,  <35.708374, 36.506741, 51.251354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639847, 36.731625, 51.299633>,  <35.525639, 37.106434, 51.380100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639847, 36.731625, 51.299633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427584, -0.063304, 0.901757,
		-0.857699, -0.343490, 0.382580,
		0.285525, -0.937020, -0.201166,
		35.725506, 36.450520, 51.239285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113281, 36.612885, 51.742168>,  <35.525639, 37.106434, 51.380100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113281, 36.612885, 51.742168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502510, 36.522045, 51.726364>,  <35.736046, 36.467541, 51.716881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502510, 36.522045, 51.726364>,  <35.113281, 36.612885, 51.742168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502510, 36.522045, 51.726364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089819, 0.215686, 0.972323,
		-0.212287, -0.949688, 0.230275,
		0.973071, -0.227095, -0.039513,
		35.794430, 36.453918, 51.714512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383499, 36.077587, 52.179985>,  <35.113281, 36.612885, 51.742168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383499, 36.077587, 52.179985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626678, 36.391171, 52.129696>,  <35.772587, 36.579319, 52.099522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626678, 36.391171, 52.129696>,  <35.383499, 36.077587, 52.179985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626678, 36.391171, 52.129696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037226, 0.186315, 0.981785,
		0.793101, -0.592197, 0.142454,
		0.607952, 0.783957, -0.125722,
		35.809063, 36.626358, 52.091980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094879, 35.996098, 52.480244>,  <35.383499, 36.077587, 52.179985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094879, 35.996098, 52.480244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941444, 36.365353, 52.490662>,  <35.849384, 36.586906, 52.496910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941444, 36.365353, 52.490662>,  <36.094879, 35.996098, 52.480244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941444, 36.365353, 52.490662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095412, 0.011568, 0.995371,
		0.918563, 0.384294, -0.092516,
		-0.383586, 0.923138, 0.026041,
		35.826370, 36.642296, 52.498474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422913, 36.327682, 52.950294>,  <36.094879, 35.996098, 52.480244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422913, 36.327682, 52.950294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038673, 36.431435, 52.910336>,  <35.808132, 36.493687, 52.886360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038673, 36.431435, 52.910336>,  <36.422913, 36.327682, 52.950294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038673, 36.431435, 52.910336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141010, -0.145030, 0.979328,
		0.239526, 0.954825, 0.175889,
		-0.960595, 0.259376, -0.099902,
		35.750496, 36.509247, 52.880363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003258, 36.034435, 53.410759>,  <36.422913, 36.327682, 52.950294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003258, 36.034435, 53.410759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892254, 35.767105, 53.686825>,  <35.825653, 35.606709, 53.852467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892254, 35.767105, 53.686825>,  <36.003258, 36.034435, 53.410759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892254, 35.767105, 53.686825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379296, -0.736243, -0.560429,
		0.882679, 0.106253, 0.457807,
		-0.277510, -0.668324, 0.690168,
		35.809002, 35.566608, 53.893875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570751, 35.740971, 53.429798>,  <36.003258, 36.034435, 53.410759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570751, 35.740971, 53.429798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288605, 35.499599, 53.578575>,  <36.119316, 35.354778, 53.667843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288605, 35.499599, 53.578575>,  <36.570751, 35.740971, 53.429798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288605, 35.499599, 53.578575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271463, -0.714666, -0.644639,
		0.654806, -0.353736, 0.667907,
		-0.705363, -0.603426, 0.371942,
		36.076996, 35.318573, 53.690159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978867, 35.136368, 53.580585>,  <36.570751, 35.740971, 53.429798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978867, 35.136368, 53.580585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587055, 35.062061, 53.549564>,  <36.351967, 35.017479, 53.530952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587055, 35.062061, 53.549564>,  <36.978867, 35.136368, 53.580585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587055, 35.062061, 53.549564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188963, -0.715698, -0.672361,
		0.069397, -0.673252, 0.736149,
		-0.979529, -0.185765, -0.077553,
		36.293198, 35.006332, 53.526299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739342, 34.323997, 53.497478>,  <36.978867, 35.136368, 53.580585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739342, 34.323997, 53.497478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457123, 34.544479, 53.319324>,  <36.287792, 34.676769, 53.212433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457123, 34.544479, 53.319324>,  <36.739342, 34.323997, 53.497478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457123, 34.544479, 53.319324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080821, -0.686980, -0.722168,
		-0.704040, -0.473526, 0.529246,
		-0.705546, 0.551209, -0.445390,
		36.245457, 34.709843, 53.185707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092617, 33.913300, 53.503975>,  <36.739342, 34.323997, 53.497478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092617, 33.913300, 53.503975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129135, 34.128120, 53.168537>,  <36.151047, 34.257011, 52.967274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129135, 34.128120, 53.168537>,  <36.092617, 33.913300, 53.503975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129135, 34.128120, 53.168537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198620, -0.815370, -0.543803,
		-0.975815, 0.216210, 0.032227,
		0.091299, 0.537052, -0.838594,
		36.156525, 34.289238, 52.916958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768433, 33.617054, 52.928940>,  <36.092617, 33.913300, 53.503975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768433, 33.617054, 52.928940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643978, 33.911777, 52.688835>,  <35.569305, 34.088612, 52.544773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643978, 33.911777, 52.688835>,  <35.768433, 33.617054, 52.928940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643978, 33.911777, 52.688835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380718, -0.675347, -0.631633,
		-0.870773, 0.032002, 0.490643,
		-0.311141, 0.736805, -0.600258,
		35.550636, 34.132820, 52.508759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047421, 33.441429, 52.649822>,  <35.768433, 33.617054, 52.928940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047421, 33.441429, 52.649822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189152, 33.722160, 52.402634>,  <35.274193, 33.890598, 52.254322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189152, 33.722160, 52.402634>,  <35.047421, 33.441429, 52.649822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189152, 33.722160, 52.402634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110344, -0.624847, -0.772910,
		-0.928587, 0.342054, -0.143960,
		0.354330, 0.701830, -0.617969,
		35.295452, 33.932709, 52.217243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544380, 33.495548, 52.108467>,  <35.047421, 33.441429, 52.649822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544380, 33.495548, 52.108467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874935, 33.655640, 51.950024>,  <35.073269, 33.751694, 51.854958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874935, 33.655640, 51.950024>,  <34.544380, 33.495548, 52.108467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874935, 33.655640, 51.950024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176217, -0.484301, -0.856972,
		-0.534825, 0.777989, -0.329690,
		0.826383, 0.400233, -0.396111,
		35.122849, 33.775711, 51.831192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416485, 33.490555, 51.415886>,  <34.544380, 33.495548, 52.108467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416485, 33.490555, 51.415886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815716, 33.513729, 51.424698>,  <35.055256, 33.527634, 51.429985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815716, 33.513729, 51.424698>,  <34.416485, 33.490555, 51.415886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815716, 33.513729, 51.424698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043336, -0.398088, -0.916323,
		-0.044316, 0.915516, -0.399833,
		0.998077, 0.057935, 0.022033,
		35.115139, 33.531109, 51.431309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645996, 33.684364, 50.658226>,  <34.416485, 33.490555, 51.415886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645996, 33.684364, 50.658226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964970, 33.531384, 50.844913>,  <35.156353, 33.439594, 50.956928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964970, 33.531384, 50.844913>,  <34.645996, 33.684364, 50.658226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964970, 33.531384, 50.844913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400467, -0.243136, -0.883465,
		0.451359, 0.891412, -0.040726,
		0.797434, -0.382451, 0.466723,
		35.204201, 33.416649, 50.984932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181973, 33.848598, 50.260715>,  <34.645996, 33.684364, 50.658226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181973, 33.848598, 50.260715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351406, 33.556255, 50.474789>,  <35.453068, 33.380848, 50.603233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351406, 33.556255, 50.474789>,  <35.181973, 33.848598, 50.260715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351406, 33.556255, 50.474789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298768, -0.445025, -0.844210,
		0.855168, 0.517490, 0.029852,
		0.423586, -0.730860, 0.535181,
		35.478481, 33.336998, 50.635342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883114, 33.814762, 50.117382>,  <35.181973, 33.848598, 50.260715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883114, 33.814762, 50.117382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758385, 33.452732, 50.233040>,  <35.683548, 33.235516, 50.302433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758385, 33.452732, 50.233040>,  <35.883114, 33.814762, 50.117382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758385, 33.452732, 50.233040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157377, -0.349310, -0.923696,
		0.937016, -0.242526, 0.251361,
		-0.311823, -0.905077, 0.289141,
		35.664837, 33.181210, 50.319782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209194, 33.346882, 49.672775>,  <35.883114, 33.814762, 50.117382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209194, 33.346882, 49.672775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980843, 33.081955, 49.866863>,  <35.843834, 32.923000, 49.983318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980843, 33.081955, 49.866863>,  <36.209194, 33.346882, 49.672775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980843, 33.081955, 49.866863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134755, -0.507389, -0.851115,
		0.809903, -0.551267, 0.200405,
		-0.570875, -0.662315, 0.485222,
		35.809582, 32.883259, 50.012428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483746, 32.693325, 49.557182>,  <36.209194, 33.346882, 49.672775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483746, 32.693325, 49.557182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092285, 32.649940, 49.627018>,  <35.857410, 32.623909, 49.668919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092285, 32.649940, 49.627018>,  <36.483746, 32.693325, 49.557182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092285, 32.649940, 49.627018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085383, -0.558128, -0.825350,
		0.186959, -0.822636, 0.536952,
		-0.978650, -0.108460, 0.174587,
		35.798691, 32.617401, 49.679394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382195, 32.021599, 49.471745>,  <36.483746, 32.693325, 49.557182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382195, 32.021599, 49.471745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032223, 32.201820, 49.400757>,  <35.822239, 32.309952, 49.358162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032223, 32.201820, 49.400757>,  <36.382195, 32.021599, 49.471745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032223, 32.201820, 49.400757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089877, -0.511215, -0.854740,
		-0.475828, -0.731891, 0.487773,
		-0.874934, 0.450549, -0.177471,
		35.769745, 32.336987, 49.347515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035454, 31.615095, 49.061825>,  <36.382195, 32.021599, 49.471745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035454, 31.615095, 49.061825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773731, 31.913769, 49.013908>,  <35.616699, 32.092972, 48.985157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773731, 31.913769, 49.013908>,  <36.035454, 31.615095, 49.061825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773731, 31.913769, 49.013908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157720, -0.289665, -0.944044,
		-0.739601, -0.598798, 0.307296,
		-0.654305, 0.746683, -0.119794,
		35.577438, 32.137775, 48.977970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513470, 31.283443, 48.662720>,  <36.035454, 31.615095, 49.061825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513470, 31.283443, 48.662720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497665, 31.680210, 48.614479>,  <35.488182, 31.918270, 48.585537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497665, 31.680210, 48.614479>,  <35.513470, 31.283443, 48.662720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497665, 31.680210, 48.614479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079487, -0.123432, -0.989164,
		-0.996053, -0.029493, 0.083720,
		-0.039507, 0.991915, -0.120600,
		35.485813, 31.977785, 48.578300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861401, 31.411211, 48.241379>,  <35.513470, 31.283443, 48.662720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861401, 31.411211, 48.241379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120949, 31.714836, 48.220238>,  <35.276676, 31.897011, 48.207554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120949, 31.714836, 48.220238>,  <34.861401, 31.411211, 48.241379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120949, 31.714836, 48.220238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064719, -0.014156, -0.997803,
		-0.758141, 0.650866, 0.039940,
		0.648871, 0.759060, -0.052856,
		35.315609, 31.942554, 48.204380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492962, 31.944031, 47.836349>,  <34.861401, 31.411211, 48.241379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492962, 31.944031, 47.836349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884777, 32.020294, 47.810570>,  <35.119865, 32.066051, 47.795101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884777, 32.020294, 47.810570>,  <34.492962, 31.944031, 47.836349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884777, 32.020294, 47.810570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108060, 0.228110, -0.967620,
		-0.169785, 0.954785, 0.244045,
		0.979539, 0.190659, -0.064445,
		35.178638, 32.077492, 47.791237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577686, 32.484962, 47.387211>,  <34.492962, 31.944031, 47.836349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577686, 32.484962, 47.387211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945911, 32.331516, 47.357796>,  <35.166847, 32.239449, 47.340149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945911, 32.331516, 47.357796>,  <34.577686, 32.484962, 47.387211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945911, 32.331516, 47.357796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027295, 0.250973, -0.967609,
		0.389649, 0.888734, 0.241507,
		0.920559, -0.383620, -0.073534,
		35.222080, 32.216431, 47.335735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850208, 33.013142, 46.922695>,  <34.577686, 32.484962, 47.387211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850208, 33.013142, 46.922695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092476, 32.695000, 46.913147>,  <35.237839, 32.504112, 46.907417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092476, 32.695000, 46.913147>,  <34.850208, 33.013142, 46.922695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092476, 32.695000, 46.913147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050893, 0.068659, -0.996341,
		0.794086, 0.602240, 0.082063,
		0.605671, -0.795357, -0.023872,
		35.274178, 32.456394, 46.905987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312145, 33.252087, 46.444530>,  <34.850208, 33.013142, 46.922695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312145, 33.252087, 46.444530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311985, 32.853531, 46.478481>,  <35.311890, 32.614395, 46.498852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311985, 32.853531, 46.478481>,  <35.312145, 33.252087, 46.444530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311985, 32.853531, 46.478481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154635, -0.083797, -0.984412,
		0.987972, -0.013516, -0.154044,
		-0.000397, -0.996391, 0.084879,
		35.311867, 32.554615, 46.503944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836281, 32.867958, 45.964611>,  <35.312145, 33.252087, 46.444530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836281, 32.867958, 45.964611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545010, 32.603844, 46.038120>,  <35.370247, 32.445374, 46.082226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545010, 32.603844, 46.038120>,  <35.836281, 32.867958, 45.964611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545010, 32.603844, 46.038120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122197, -0.138769, -0.982757,
		0.674408, -0.738078, 0.020363,
		-0.728177, -0.660291, 0.183778,
		35.326557, 32.405758, 46.093254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975098, 32.305244, 45.417480>,  <35.836281, 32.867958, 45.964611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975098, 32.305244, 45.417480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609287, 32.221046, 45.555660>,  <35.389801, 32.170528, 45.638569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609287, 32.221046, 45.555660>,  <35.975098, 32.305244, 45.417480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609287, 32.221046, 45.555660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301304, -0.215351, -0.928892,
		0.269921, -0.953580, 0.133520,
		-0.914526, -0.210497, 0.345445,
		35.334930, 32.157898, 45.659294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890324, 31.695398, 45.163795>,  <35.975098, 32.305244, 45.417480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890324, 31.695398, 45.163795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542542, 31.872940, 45.250553>,  <35.333874, 31.979465, 45.302608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542542, 31.872940, 45.250553>,  <35.890324, 31.695398, 45.163795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542542, 31.872940, 45.250553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392220, -0.353274, -0.849330,
		-0.300349, -0.823527, 0.481243,
		-0.869456, 0.443848, 0.216898,
		35.281704, 32.006096, 45.315620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391140, 31.346298, 44.886692>,  <35.890324, 31.695398, 45.163795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391140, 31.346298, 44.886692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163929, 31.668856, 44.952507>,  <35.027603, 31.862391, 44.991997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163929, 31.668856, 44.952507>,  <35.391140, 31.346298, 44.886692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163929, 31.668856, 44.952507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571395, -0.242520, -0.784023,
		-0.592326, -0.539366, 0.598526,
		-0.568030, 0.806392, 0.164540,
		34.993519, 31.910774, 45.001869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741306, 31.028070, 44.949638>,  <35.391140, 31.346298, 44.886692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741306, 31.028070, 44.949638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723927, 31.411375, 44.836609>,  <34.713497, 31.641357, 44.768791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723927, 31.411375, 44.836609>,  <34.741306, 31.028070, 44.949638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723927, 31.411375, 44.836609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442313, -0.272058, -0.854602,
		-0.895808, 0.087852, 0.435672,
		-0.043449, 0.958262, -0.282570,
		34.710892, 31.698854, 44.751839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088139, 31.142445, 44.654507>,  <34.741306, 31.028070, 44.949638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088139, 31.142445, 44.654507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289097, 31.454350, 44.505070>,  <34.409672, 31.641493, 44.415409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289097, 31.454350, 44.505070>,  <34.088139, 31.142445, 44.654507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289097, 31.454350, 44.505070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516254, -0.076086, -0.853049,
		-0.693600, 0.621435, 0.364331,
		0.502394, 0.779762, -0.373592,
		34.439816, 31.688278, 44.392994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647682, 31.385302, 44.208824>,  <34.088139, 31.142445, 44.654507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647682, 31.385302, 44.208824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966053, 31.596714, 44.090733>,  <34.157074, 31.723562, 44.019878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966053, 31.596714, 44.090733>,  <33.647682, 31.385302, 44.208824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966053, 31.596714, 44.090733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417538, 0.126126, -0.899863,
		-0.438369, 0.839492, 0.321069,
		0.795924, 0.528530, -0.295230,
		34.204830, 31.755274, 44.002163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384243, 31.986298, 43.854431>,  <33.647682, 31.385302, 44.208824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384243, 31.986298, 43.854431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743847, 31.906223, 43.698631>,  <33.959610, 31.858179, 43.605152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743847, 31.906223, 43.698631>,  <33.384243, 31.986298, 43.854431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743847, 31.906223, 43.698631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356389, 0.182432, -0.916355,
		0.254497, 0.962624, 0.092664,
		0.899010, -0.200185, -0.389496,
		34.013550, 31.846169, 43.581783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419662, 32.398029, 43.149994>,  <33.384243, 31.986298, 43.854431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419662, 32.398029, 43.149994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729202, 32.147118, 43.114941>,  <33.914925, 31.996571, 43.093906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729202, 32.147118, 43.114941>,  <33.419662, 32.398029, 43.149994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729202, 32.147118, 43.114941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081640, 0.038423, -0.995921,
		0.628088, 0.777847, -0.021477,
		0.773848, -0.627279, -0.087636,
		33.961357, 31.958935, 43.088650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863457, 32.689728, 42.739136>,  <33.419662, 32.398029, 43.149994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863457, 32.689728, 42.739136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986710, 32.311646, 42.695984>,  <34.060661, 32.084797, 42.670094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986710, 32.311646, 42.695984>,  <33.863457, 32.689728, 42.739136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986710, 32.311646, 42.695984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060461, 0.093711, -0.993762,
		0.949422, 0.312729, -0.028273,
		0.308128, -0.945208, -0.107879,
		34.079147, 32.028084, 42.663620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270107, 32.619591, 42.155792>,  <33.863457, 32.689728, 42.739136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270107, 32.619591, 42.155792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167171, 32.234932, 42.193752>,  <34.105408, 32.004135, 42.216530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167171, 32.234932, 42.193752>,  <34.270107, 32.619591, 42.155792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167171, 32.234932, 42.193752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122461, -0.064963, -0.990345,
		0.958529, -0.266481, -0.101047,
		-0.257344, -0.961648, 0.094903,
		34.089970, 31.946438, 42.222221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663998, 32.213188, 41.636692>,  <34.270107, 32.619591, 42.155792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663998, 32.213188, 41.636692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339024, 31.996994, 41.724163>,  <34.144039, 31.867277, 41.776646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339024, 31.996994, 41.724163>,  <34.663998, 32.213188, 41.636692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339024, 31.996994, 41.724163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205133, -0.086104, -0.974939,
		0.545768, -0.836937, -0.040917,
		-0.812439, -0.540484, 0.218676,
		34.095291, 31.834848, 41.789764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602104, 31.664757, 41.143177>,  <34.663998, 32.213188, 41.636692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602104, 31.664757, 41.143177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226322, 31.675007, 41.279865>,  <34.000854, 31.681156, 41.361877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226322, 31.675007, 41.279865>,  <34.602104, 31.664757, 41.143177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226322, 31.675007, 41.279865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342457, -0.105856, -0.933551,
		0.012253, -0.994051, 0.108221,
		-0.939454, 0.025622, 0.341716,
		33.944485, 31.682693, 41.382381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318092, 31.137037, 40.807198>,  <34.602104, 31.664757, 41.143177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318092, 31.137037, 40.807198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006477, 31.356445, 40.928673>,  <33.819508, 31.488091, 41.001556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006477, 31.356445, 40.928673>,  <34.318092, 31.137037, 40.807198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006477, 31.356445, 40.928673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466128, -0.182759, -0.865635,
		-0.419318, -0.815918, 0.398058,
		-0.779035, 0.548522, 0.303688,
		33.772766, 31.521002, 41.019779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731003, 30.822470, 40.540684>,  <34.318092, 31.137037, 40.807198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731003, 30.822470, 40.540684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568340, 31.177324, 40.627968>,  <33.470741, 31.390238, 40.680340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568340, 31.177324, 40.627968>,  <33.731003, 30.822470, 40.540684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568340, 31.177324, 40.627968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354692, 0.066803, -0.932594,
		-0.841917, -0.456643, 0.287496,
		-0.406657, 0.887139, 0.218210,
		33.446342, 31.443466, 40.693432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056282, 30.974518, 40.583870>,  <33.731003, 30.822470, 40.540684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056282, 30.974518, 40.583870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142895, 31.338650, 40.442780>,  <33.194862, 31.557129, 40.358124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142895, 31.338650, 40.442780>,  <33.056282, 30.974518, 40.583870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142895, 31.338650, 40.442780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428999, -0.235823, -0.871979,
		-0.876968, 0.340131, 0.339467,
		0.216533, 0.910329, -0.352725,
		33.207855, 31.611748, 40.336964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631378, 31.187246, 39.946316>,  <33.056282, 30.974518, 40.583870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631378, 31.187246, 39.946316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906071, 31.477869, 39.955387>,  <33.070885, 31.652243, 39.960831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906071, 31.477869, 39.955387>,  <32.631378, 31.187246, 39.946316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906071, 31.477869, 39.955387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195267, 0.214431, -0.957021,
		-0.700192, 0.652790, 0.289129,
		0.686732, 0.726557, 0.022674,
		33.112091, 31.695837, 39.962189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342625, 31.764366, 39.550026>,  <32.631378, 31.187246, 39.946316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342625, 31.764366, 39.550026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720558, 31.891930, 39.579933>,  <32.947319, 31.968468, 39.597878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720558, 31.891930, 39.579933>,  <32.342625, 31.764366, 39.550026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720558, 31.891930, 39.579933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043884, 0.349452, -0.935926,
		-0.324603, 0.881011, 0.344168,
		0.944832, 0.318908, 0.074771,
		33.004009, 31.987602, 39.602364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313869, 32.381924, 39.224388>,  <32.342625, 31.764366, 39.550026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313869, 32.381924, 39.224388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704910, 32.298939, 39.238594>,  <32.939533, 32.249149, 39.247116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704910, 32.298939, 39.238594>,  <32.313869, 32.381924, 39.224388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704910, 32.298939, 39.238594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127038, 0.447072, -0.885431,
		0.167815, 0.870107, 0.463412,
		0.977599, -0.207460, 0.035511,
		32.998192, 32.236702, 39.249249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736675, 33.028568, 39.192112>,  <32.313869, 32.381924, 39.224388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736675, 33.028568, 39.192112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987164, 32.752602, 39.046856>,  <33.137455, 32.587021, 38.959702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987164, 32.752602, 39.046856>,  <32.736675, 33.028568, 39.192112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987164, 32.752602, 39.046856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089179, 0.526103, -0.845732,
		0.774531, 0.497227, 0.390981,
		0.626217, -0.689913, -0.363141,
		33.175030, 32.545628, 38.937912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258671, 33.431858, 38.939377>,  <32.736675, 33.028568, 39.192112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258671, 33.431858, 38.939377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279488, 33.076649, 38.756638>,  <33.291977, 32.863522, 38.646996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279488, 33.076649, 38.756638>,  <33.258671, 33.431858, 38.939377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279488, 33.076649, 38.756638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126750, 0.459637, -0.879016,
		0.990569, -0.012163, 0.136475,
		0.052038, -0.888023, -0.456844,
		33.295097, 32.810242, 38.619583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766495, 33.523476, 38.274376>,  <33.258671, 33.431858, 38.939377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766495, 33.523476, 38.274376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591877, 33.170589, 38.203804>,  <33.487106, 32.958858, 38.161461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591877, 33.170589, 38.203804>,  <33.766495, 33.523476, 38.274376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591877, 33.170589, 38.203804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127785, 0.133310, -0.982802,
		0.890560, -0.451585, 0.054537,
		-0.436548, -0.882213, -0.176426,
		33.460911, 32.905926, 38.150875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164928, 33.160683, 37.813751>,  <33.766495, 33.523476, 38.274376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164928, 33.160683, 37.813751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797150, 33.005806, 37.786331>,  <33.576481, 32.912880, 37.769878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797150, 33.005806, 37.786331>,  <34.164928, 33.160683, 37.813751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797150, 33.005806, 37.786331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021523, 0.124521, -0.991984,
		0.392620, -0.913554, -0.106157,
		-0.919449, -0.387188, -0.068552,
		33.521317, 32.889648, 37.765766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845741, 33.113667, 37.612312>,  <34.164928, 33.160683, 37.813751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845741, 33.113667, 37.612312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150143, 32.938778, 37.420597>,  <35.332783, 32.833847, 37.305569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150143, 32.938778, 37.420597>,  <34.845741, 33.113667, 37.612312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150143, 32.938778, 37.420597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216163, -0.525684, 0.822758,
		-0.611680, -0.729723, -0.305535,
		0.761000, -0.437219, -0.479289,
		35.378445, 32.807613, 37.276810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811459, 32.408581, 37.694271>,  <34.845741, 33.113667, 37.612312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811459, 32.408581, 37.694271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191055, 32.517757, 37.631123>,  <35.418812, 32.583263, 37.593235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191055, 32.517757, 37.631123>,  <34.811459, 32.408581, 37.694271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191055, 32.517757, 37.631123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292829, -0.577270, 0.762241,
		0.116913, -0.769587, -0.627748,
		0.948990, 0.272939, -0.157867,
		35.475754, 32.599640, 37.583763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207779, 31.794937, 37.877914>,  <34.811459, 32.408581, 37.694271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207779, 31.794937, 37.877914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459724, 32.105511, 37.886154>,  <35.610893, 32.291855, 37.891098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459724, 32.105511, 37.886154>,  <35.207779, 31.794937, 37.877914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459724, 32.105511, 37.886154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345080, -0.303497, 0.888149,
		0.695838, -0.552307, -0.459093,
		0.629865, 0.776432, 0.020595,
		35.648685, 32.338440, 37.892334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009792, 31.591375, 38.015945>,  <35.207779, 31.794937, 37.877914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009792, 31.591375, 38.015945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971512, 31.971855, 38.133286>,  <35.948544, 32.200142, 38.203690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971512, 31.971855, 38.133286>,  <36.009792, 31.591375, 38.015945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971512, 31.971855, 38.133286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432259, -0.225757, 0.873033,
		0.896657, 0.210354, -0.389560,
		-0.095700, 0.951202, 0.293354,
		35.942802, 32.257217, 38.221291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702915, 31.747835, 38.389137>,  <36.009792, 31.591375, 38.015945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702915, 31.747835, 38.389137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426403, 32.017071, 38.494267>,  <36.260494, 32.178612, 38.557343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426403, 32.017071, 38.494267>,  <36.702915, 31.747835, 38.389137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426403, 32.017071, 38.494267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165900, -0.206161, 0.964352,
		0.703280, 0.710244, 0.030850,
		-0.691285, 0.673091, 0.262819,
		36.219017, 32.218998, 38.573112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025841, 32.053665, 38.883385>,  <36.702915, 31.747835, 38.389137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025841, 32.053665, 38.883385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645046, 32.158707, 38.946331>,  <36.416569, 32.221733, 38.984100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645046, 32.158707, 38.946331>,  <37.025841, 32.053665, 38.883385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645046, 32.158707, 38.946331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096194, -0.231421, 0.968086,
		0.290646, 0.936740, 0.195047,
		-0.951983, 0.262608, 0.157371,
		36.359451, 32.237488, 38.993542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006374, 32.661484, 39.382877>,  <37.025841, 32.053665, 38.883385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006374, 32.661484, 39.382877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667805, 32.453747, 39.429935>,  <36.464661, 32.329105, 39.458172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667805, 32.453747, 39.429935>,  <37.006374, 32.661484, 39.382877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667805, 32.453747, 39.429935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150969, -0.022167, 0.988290,
		-0.510654, 0.854278, 0.097167,
		-0.846429, -0.519343, 0.117650,
		36.413876, 32.297943, 39.465229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680531, 32.856270, 40.033436>,  <37.006374, 32.661484, 39.382877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680531, 32.856270, 40.033436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499527, 32.510281, 39.946671>,  <36.390926, 32.302685, 39.894611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499527, 32.510281, 39.946671>,  <36.680531, 32.856270, 40.033436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499527, 32.510281, 39.946671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038862, -0.223887, 0.973840,
		-0.890912, 0.449102, 0.067696,
		-0.452510, -0.864975, -0.216917,
		36.363773, 32.250790, 39.881596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097694, 32.770721, 40.564930>,  <36.680531, 32.856270, 40.033436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097694, 32.770721, 40.564930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162037, 32.408272, 40.408436>,  <36.200642, 32.190804, 40.314541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162037, 32.408272, 40.408436>,  <36.097694, 32.770721, 40.564930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162037, 32.408272, 40.408436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097288, -0.379908, 0.919894,
		-0.982172, -0.186029, 0.027046,
		0.160852, -0.906125, -0.391233,
		36.210293, 32.136433, 40.291065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670807, 32.278236, 41.026054>,  <36.097694, 32.770721, 40.564930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670807, 32.278236, 41.026054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968166, 32.082397, 40.843777>,  <36.146580, 31.964893, 40.734409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968166, 32.082397, 40.843777>,  <35.670807, 32.278236, 41.026054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968166, 32.082397, 40.843777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318161, -0.340438, 0.884802,
		-0.588335, -0.802741, -0.097308,
		0.743394, -0.489601, -0.455693,
		36.191185, 31.935518, 40.707069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722607, 31.671209, 41.472115>,  <35.670807, 32.278236, 41.026054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722607, 31.671209, 41.472115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066483, 31.674175, 41.267811>,  <36.272808, 31.675955, 41.145229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066483, 31.674175, 41.267811>,  <35.722607, 31.671209, 41.472115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066483, 31.674175, 41.267811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490810, -0.289079, 0.821912,
		-0.141554, -0.957277, -0.252159,
		0.859691, 0.007417, -0.510762,
		36.324390, 31.676399, 41.114582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117577, 31.093328, 41.699116>,  <35.722607, 31.671209, 41.472115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117577, 31.093328, 41.699116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402000, 31.315319, 41.526421>,  <36.572655, 31.448513, 41.422802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402000, 31.315319, 41.526421>,  <36.117577, 31.093328, 41.699116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402000, 31.315319, 41.526421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635632, -0.244836, 0.732139,
		0.300615, -0.795020, -0.526853,
		0.711057, 0.554977, -0.431739,
		36.615318, 31.481812, 41.396900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703548, 30.658058, 41.696114>,  <36.117577, 31.093328, 41.699116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703548, 30.658058, 41.696114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841232, 31.032997, 41.674580>,  <36.923843, 31.257961, 41.661659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841232, 31.032997, 41.674580>,  <36.703548, 30.658058, 41.696114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841232, 31.032997, 41.674580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661492, -0.201421, 0.722397,
		0.666296, -0.284262, -0.689380,
		0.344206, 0.937350, -0.053831,
		36.944492, 31.314201, 41.658432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424976, 30.528063, 41.676113>,  <36.703548, 30.658058, 41.696114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424976, 30.528063, 41.676113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359085, 30.901762, 41.802635>,  <37.319550, 31.125980, 41.878548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359085, 30.901762, 41.802635>,  <37.424976, 30.528063, 41.676113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359085, 30.901762, 41.802635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537727, -0.183775, 0.822846,
		0.826870, 0.305631, -0.472097,
		-0.164728, 0.934246, 0.316305,
		37.309666, 31.182035, 41.897526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070450, 30.914597, 41.872078>,  <37.424976, 30.528063, 41.676113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070450, 30.914597, 41.872078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782089, 31.092077, 42.085030>,  <37.609074, 31.198566, 42.212803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782089, 31.092077, 42.085030>,  <38.070450, 30.914597, 41.872078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782089, 31.092077, 42.085030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557326, -0.085441, 0.825886,
		0.411935, 0.892092, -0.185693,
		-0.720900, 0.443703, 0.532382,
		37.565819, 31.225187, 42.244743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377884, 31.399366, 42.289551>,  <38.070450, 30.914597, 41.872078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377884, 31.399366, 42.289551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045376, 31.353184, 42.507050>,  <37.845871, 31.325474, 42.637550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045376, 31.353184, 42.507050>,  <38.377884, 31.399366, 42.289551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045376, 31.353184, 42.507050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508549, 0.236998, 0.827774,
		-0.224440, 0.964625, -0.138293,
		-0.831267, -0.115457, 0.543751,
		37.795998, 31.318546, 42.670174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450588, 31.899977, 42.965691>,  <38.377884, 31.399366, 42.289551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450588, 31.899977, 42.965691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139614, 31.665194, 43.056087>,  <37.953030, 31.524324, 43.110325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139614, 31.665194, 43.056087>,  <38.450588, 31.899977, 42.965691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139614, 31.665194, 43.056087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147239, 0.179489, 0.972679,
		-0.611485, 0.789472, -0.053118,
		-0.777436, -0.586957, 0.225996,
		37.906384, 31.489107, 43.123886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994164, 32.336086, 43.300655>,  <38.450588, 31.899977, 42.965691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994164, 32.336086, 43.300655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856014, 31.977142, 43.410542>,  <37.773125, 31.761778, 43.476475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856014, 31.977142, 43.410542>,  <37.994164, 32.336086, 43.300655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856014, 31.977142, 43.410542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195265, 0.217612, 0.956304,
		-0.917927, 0.383924, 0.100065,
		-0.345372, -0.897356, 0.274719,
		37.752403, 31.707935, 43.492958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493572, 32.487686, 43.770241>,  <37.994164, 32.336086, 43.300655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493572, 32.487686, 43.770241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611477, 32.108521, 43.818542>,  <37.682220, 31.881021, 43.847523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611477, 32.108521, 43.818542>,  <37.493572, 32.487686, 43.770241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611477, 32.108521, 43.818542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026085, 0.134301, 0.990597,
		-0.955216, -0.288837, 0.064313,
		0.294758, -0.947912, 0.120752,
		37.699905, 31.824146, 43.854767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009583, 32.116318, 44.163368>,  <37.493572, 32.487686, 43.770241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009583, 32.116318, 44.163368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339890, 31.895452, 44.209351>,  <37.538074, 31.762932, 44.236942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339890, 31.895452, 44.209351>,  <37.009583, 32.116318, 44.163368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339890, 31.895452, 44.209351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097932, 0.060357, 0.993361,
		-0.555441, -0.831545, -0.004234,
		0.825770, -0.552168, 0.114959,
		37.587620, 31.729803, 44.243839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862232, 31.444199, 44.593208>,  <37.009583, 32.116318, 44.163368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862232, 31.444199, 44.593208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255817, 31.498873, 44.639065>,  <37.491966, 31.531677, 44.666580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255817, 31.498873, 44.639065>,  <36.862232, 31.444199, 44.593208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255817, 31.498873, 44.639065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136767, 0.165358, 0.976704,
		0.114539, -0.976717, 0.181399,
		0.983959, 0.136680, 0.114642,
		37.551006, 31.539879, 44.673458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035931, 31.056707, 45.283543>,  <36.862232, 31.444199, 44.593208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035931, 31.056707, 45.283543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349682, 31.295027, 45.214516>,  <37.537933, 31.438019, 45.173100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349682, 31.295027, 45.214516>,  <37.035931, 31.056707, 45.283543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349682, 31.295027, 45.214516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000270, 0.278537, 0.960425,
		0.620288, -0.753286, 0.218639,
		0.784374, 0.595799, -0.172570,
		37.584995, 31.473766, 45.162746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348877, 30.882927, 45.855640>,  <37.035931, 31.056707, 45.283543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348877, 30.882927, 45.855640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526745, 31.214479, 45.719860>,  <37.633465, 31.413410, 45.638393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526745, 31.214479, 45.719860>,  <37.348877, 30.882927, 45.855640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526745, 31.214479, 45.719860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059120, 0.350991, 0.934511,
		0.893743, -0.435614, 0.107071,
		0.444667, 0.828882, -0.339449,
		37.660145, 31.463144, 45.618027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977730, 31.015680, 46.260658>,  <37.348877, 30.882927, 45.855640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977730, 31.015680, 46.260658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903519, 31.376926, 46.105759>,  <37.858994, 31.593674, 46.012821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903519, 31.376926, 46.105759>,  <37.977730, 31.015680, 46.260658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903519, 31.376926, 46.105759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255995, 0.424903, 0.868288,
		0.948707, 0.061960, -0.310025,
		-0.185529, 0.903116, -0.387247,
		37.847858, 31.647861, 45.989586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580406, 31.439327, 46.391617>,  <37.977730, 31.015680, 46.260658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580406, 31.439327, 46.391617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260910, 31.672338, 46.331383>,  <38.069214, 31.812145, 46.295242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260910, 31.672338, 46.331383>,  <38.580406, 31.439327, 46.391617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260910, 31.672338, 46.331383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107031, 0.383844, 0.917174,
		0.592080, 0.716466, -0.368940,
		-0.798740, 0.582529, -0.150582,
		38.021290, 31.847097, 46.286209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845661, 32.131882, 46.510509>,  <38.580406, 31.439327, 46.391617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845661, 32.131882, 46.510509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450928, 32.180431, 46.553272>,  <38.214088, 32.209560, 46.578930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450928, 32.180431, 46.553272>,  <38.845661, 32.131882, 46.510509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450928, 32.180431, 46.553272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155607, 0.532138, 0.832235,
		0.044122, 0.837913, -0.544018,
		-0.986833, 0.121373, 0.106906,
		38.154877, 32.216843, 46.585342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719486, 32.831963, 46.499100>,  <38.845661, 32.131882, 46.510509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719486, 32.831963, 46.499100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434662, 32.638096, 46.702301>,  <38.263767, 32.521774, 46.824223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434662, 32.638096, 46.702301>,  <38.719486, 32.831963, 46.499100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434662, 32.638096, 46.702301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171384, 0.581657, 0.795175,
		-0.680879, 0.653276, -0.331111,
		-0.712062, -0.484670, 0.507999,
		38.221043, 32.492695, 46.854702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380383, 33.342945, 46.814449>,  <38.719486, 32.831963, 46.499100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380383, 33.342945, 46.814449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249035, 33.032005, 47.029072>,  <38.170227, 32.845440, 47.157845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249035, 33.032005, 47.029072>,  <38.380383, 33.342945, 46.814449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249035, 33.032005, 47.029072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031525, 0.558724, 0.828754,
		-0.944023, 0.289053, -0.158963,
		-0.328370, -0.777352, 0.536561,
		38.150524, 32.798801, 47.190041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867035, 33.564041, 47.305748>,  <38.380383, 33.342945, 46.814449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867035, 33.564041, 47.305748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924740, 33.201748, 47.465164>,  <37.959362, 32.984371, 47.560814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924740, 33.201748, 47.465164>,  <37.867035, 33.564041, 47.305748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924740, 33.201748, 47.465164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045923, 0.396187, 0.917020,
		-0.988473, -0.150598, 0.015562,
		0.144267, -0.905735, 0.398536,
		37.968021, 32.930027, 47.584724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362846, 33.497341, 47.867886>,  <37.867035, 33.564041, 47.305748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362846, 33.497341, 47.867886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665398, 33.242886, 47.928837>,  <37.846928, 33.090214, 47.965408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665398, 33.242886, 47.928837>,  <37.362846, 33.497341, 47.867886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665398, 33.242886, 47.928837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008068, 0.242007, 0.970241,
		-0.654084, -0.732641, 0.188182,
		0.756379, -0.636137, 0.152382,
		37.892311, 33.052044, 47.974552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198555, 32.992275, 48.341446>,  <37.362846, 33.497341, 47.867886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198555, 32.992275, 48.341446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596722, 33.030464, 48.339405>,  <37.835621, 33.053379, 48.338181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596722, 33.030464, 48.339405>,  <37.198555, 32.992275, 48.341446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596722, 33.030464, 48.339405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019693, 0.256987, 0.966214,
		0.093556, -0.961688, 0.257690,
		0.995420, 0.095470, -0.005104,
		37.895348, 33.059105, 48.337875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315849, 32.768791, 49.003567>,  <37.198555, 32.992275, 48.341446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315849, 32.768791, 49.003567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684227, 32.904041, 48.926067>,  <37.905254, 32.985191, 48.879570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684227, 32.904041, 48.926067>,  <37.315849, 32.768791, 49.003567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684227, 32.904041, 48.926067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130842, 0.200023, 0.971016,
		0.367079, -0.919599, 0.139969,
		0.920941, 0.338126, -0.193746,
		37.960510, 33.005478, 48.867943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785809, 32.565033, 49.560753>,  <37.315849, 32.768791, 49.003567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785809, 32.565033, 49.560753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958725, 32.871593, 49.370697>,  <38.062473, 33.055531, 49.256664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958725, 32.871593, 49.370697>,  <37.785809, 32.565033, 49.560753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958725, 32.871593, 49.370697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012312, 0.521855, 0.852945,
		0.901651, -0.374569, 0.216157,
		0.432290, 0.766397, -0.475143,
		38.088413, 33.101513, 49.228153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520271, 32.796188, 49.913475>,  <37.785809, 32.565033, 49.560753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520271, 32.796188, 49.913475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346130, 33.099785, 49.719818>,  <38.241646, 33.281944, 49.603626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346130, 33.099785, 49.719818>,  <38.520271, 32.796188, 49.913475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346130, 33.099785, 49.719818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086669, 0.570617, 0.816630,
		0.896077, 0.313565, -0.314202,
		-0.435355, 0.758995, -0.484140,
		38.215523, 33.327484, 49.574577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980999, 33.356861, 50.055199>,  <38.520271, 32.796188, 49.913475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980999, 33.356861, 50.055199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678326, 33.585106, 49.927555>,  <38.496723, 33.722054, 49.850967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678326, 33.585106, 49.927555>,  <38.980999, 33.356861, 50.055199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678326, 33.585106, 49.927555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141544, 0.619501, 0.772130,
		0.638278, 0.539088, -0.549532,
		-0.756681, 0.570616, -0.319109,
		38.451321, 33.756290, 49.831821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257542, 34.027569, 49.889977>,  <38.980999, 33.356861, 50.055199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257542, 34.027569, 49.889977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864006, 34.089771, 49.925461>,  <38.627884, 34.127094, 49.946751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864006, 34.089771, 49.925461>,  <39.257542, 34.027569, 49.889977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864006, 34.089771, 49.925461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178301, 0.806362, 0.563905,
		0.016162, 0.570611, -0.821061,
		-0.983843, 0.155510, 0.088708,
		38.568851, 34.136425, 49.952072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257755, 34.749596, 49.783642>,  <39.257542, 34.027569, 49.889977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257755, 34.749596, 49.783642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931633, 34.628963, 49.981358>,  <38.735962, 34.556583, 50.099987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931633, 34.628963, 49.981358>,  <39.257755, 34.749596, 49.783642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931633, 34.628963, 49.981358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124366, 0.742525, 0.658172,
		-0.565520, 0.598083, -0.567876,
		-0.815304, -0.301585, 0.494294,
		38.687042, 34.538486, 50.129646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811932, 35.409523, 49.949772>,  <39.257755, 34.749596, 49.783642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811932, 35.409523, 49.949772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719143, 35.109573, 50.197605>,  <38.663467, 34.929604, 50.346306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719143, 35.109573, 50.197605>,  <38.811932, 35.409523, 49.949772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719143, 35.109573, 50.197605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141332, 0.604212, 0.784190,
		-0.962399, 0.269479, -0.034181,
		-0.231975, -0.749873, 0.619579,
		38.649551, 34.884613, 50.383480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987911, 36.114899, 50.398739>,  <38.811932, 35.409523, 49.949772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987911, 36.114899, 50.398739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020691, 36.492298, 50.270302>,  <39.040359, 36.718739, 50.193241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020691, 36.492298, 50.270302>,  <38.987911, 36.114899, 50.398739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020691, 36.492298, 50.270302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034442, -0.319299, -0.947028,
		-0.996041, 0.088668, 0.006329,
		0.081950, 0.943497, -0.321089,
		39.045277, 36.775349, 50.173977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336678, 36.339741, 50.039845>,  <38.987911, 36.114899, 50.398739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336678, 36.339741, 50.039845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633274, 36.566372, 49.896080>,  <38.811234, 36.702351, 49.809822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633274, 36.566372, 49.896080>,  <38.336678, 36.339741, 50.039845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633274, 36.566372, 49.896080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334196, -0.152629, -0.930063,
		-0.581810, 0.809750, 0.076175,
		0.741492, 0.566577, -0.359416,
		38.855721, 36.736343, 49.788254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969959, 36.875587, 49.580177>,  <38.336678, 36.339741, 50.039845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969959, 36.875587, 49.580177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354008, 36.833080, 49.476738>,  <38.584438, 36.807575, 49.414673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354008, 36.833080, 49.476738>,  <37.969959, 36.875587, 49.580177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354008, 36.833080, 49.476738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279412, -0.332448, -0.900782,
		0.009751, 0.937116, -0.348883,
		0.960122, -0.106266, -0.258600,
		38.642044, 36.801201, 49.399158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046288, 37.165127, 48.921318>,  <37.969959, 36.875587, 49.580177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046288, 37.165127, 48.921318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359604, 36.922676, 48.976555>,  <38.547592, 36.777206, 49.009697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359604, 36.922676, 48.976555>,  <38.046288, 37.165127, 48.921318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359604, 36.922676, 48.976555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015784, -0.241461, -0.970282,
		0.621457, 0.757832, -0.198701,
		0.783289, -0.606125, 0.138096,
		38.594589, 36.740837, 49.017982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540192, 37.278492, 48.388882>,  <38.046288, 37.165127, 48.921318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540192, 37.278492, 48.388882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690903, 36.928417, 48.510265>,  <38.781330, 36.718372, 48.583096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690903, 36.928417, 48.510265>,  <38.540192, 37.278492, 48.388882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690903, 36.928417, 48.510265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171225, -0.256150, -0.951351,
		0.910340, 0.410409, 0.053342,
		0.376780, -0.875186, 0.303456,
		38.803936, 36.665863, 48.601303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137096, 37.259628, 48.034534>,  <38.540192, 37.278492, 48.388882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137096, 37.259628, 48.034534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040012, 36.888931, 48.149246>,  <38.981762, 36.666512, 48.218075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040012, 36.888931, 48.149246>,  <39.137096, 37.259628, 48.034534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040012, 36.888931, 48.149246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251001, -0.225561, -0.941340,
		0.937065, -0.300453, -0.177867,
		-0.242708, -0.926742, 0.286780,
		38.967201, 36.610909, 48.235279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543625, 36.899380, 47.544746>,  <39.137096, 37.259628, 48.034534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543625, 36.899380, 47.544746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280834, 36.645145, 47.706936>,  <39.123161, 36.492603, 47.804249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280834, 36.645145, 47.706936>,  <39.543625, 36.899380, 47.544746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280834, 36.645145, 47.706936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249348, -0.324370, -0.912474,
		0.711481, -0.700579, 0.054621,
		-0.656978, -0.635589, 0.405471,
		39.083740, 36.454468, 47.828579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720737, 36.181511, 47.380756>,  <39.543625, 36.899380, 47.544746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720737, 36.181511, 47.380756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328148, 36.219055, 47.447575>,  <39.092594, 36.241581, 47.487667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328148, 36.219055, 47.447575>,  <39.720737, 36.181511, 47.380756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328148, 36.219055, 47.447575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191596, -0.492671, -0.848862,
		0.002622, -0.865138, 0.501527,
		-0.981470, 0.093865, 0.167048,
		39.033707, 36.247215, 47.497688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463417, 35.538998, 47.197842>,  <39.720737, 36.181511, 47.380756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463417, 35.538998, 47.197842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132675, 35.763893, 47.203495>,  <38.934231, 35.898830, 47.206886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132675, 35.763893, 47.203495>,  <39.463417, 35.538998, 47.197842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132675, 35.763893, 47.203495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272883, -0.379090, -0.884209,
		-0.491782, -0.734966, 0.466878,
		-0.826852, 0.562241, 0.014130,
		38.884621, 35.932564, 47.207733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982456, 35.109146, 46.854420>,  <39.463417, 35.538998, 47.197842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982456, 35.109146, 46.854420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860065, 35.489380, 46.833393>,  <38.786633, 35.717522, 46.820778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860065, 35.489380, 46.833393>,  <38.982456, 35.109146, 46.854420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860065, 35.489380, 46.833393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384577, -0.173921, -0.906560,
		-0.870908, -0.257166, 0.418789,
		-0.305973, 0.950587, -0.052569,
		38.768272, 35.774555, 46.817623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335201, 35.017937, 46.646950>,  <38.982456, 35.109146, 46.854420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335201, 35.017937, 46.646950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451546, 35.393112, 46.571396>,  <38.521351, 35.618217, 46.526062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451546, 35.393112, 46.571396>,  <38.335201, 35.017937, 46.646950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451546, 35.393112, 46.571396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367841, -0.072627, -0.927048,
		-0.883230, 0.339120, 0.323887,
		0.290858, 0.937935, -0.188889,
		38.538803, 35.674492, 46.514729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722778, 35.265339, 46.376312>,  <38.335201, 35.017937, 46.646950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722778, 35.265339, 46.376312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987415, 35.543888, 46.265057>,  <38.146198, 35.711018, 46.198303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987415, 35.543888, 46.265057>,  <37.722778, 35.265339, 46.376312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987415, 35.543888, 46.265057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120287, -0.267558, -0.956004,
		-0.740149, 0.665945, -0.093252,
		0.661596, 0.696369, -0.278138,
		38.185894, 35.752800, 46.181614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406857, 35.639320, 45.839352>,  <37.722778, 35.265339, 46.376312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406857, 35.639320, 45.839352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806576, 35.628456, 45.829094>,  <38.046410, 35.621937, 45.822941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806576, 35.628456, 45.829094>,  <37.406857, 35.639320, 45.839352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806576, 35.628456, 45.829094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033725, -0.360917, -0.931988,
		0.016061, 0.932202, -0.361581,
		0.999302, -0.027163, -0.025642,
		38.106365, 35.620308, 45.821400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558865, 36.087849, 45.292023>,  <37.406857, 35.639320, 45.839352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558865, 36.087849, 45.292023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877426, 35.855728, 45.360130>,  <38.068562, 35.716457, 45.400997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877426, 35.855728, 45.360130>,  <37.558865, 36.087849, 45.292023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877426, 35.855728, 45.360130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053049, -0.213434, -0.975516,
		0.602432, 0.785939, -0.139195,
		0.796405, -0.580298, 0.170273,
		38.116348, 35.681637, 45.411213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835754, 36.163563, 44.667133>,  <37.558865, 36.087849, 45.292023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835754, 36.163563, 44.667133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047291, 35.857113, 44.813221>,  <38.174213, 35.673244, 44.900871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047291, 35.857113, 44.813221>,  <37.835754, 36.163563, 44.667133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047291, 35.857113, 44.813221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078042, -0.384595, -0.919780,
		0.845123, 0.514923, -0.143602,
		0.528845, -0.766120, 0.365216,
		38.205944, 35.627277, 44.922787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395908, 36.153053, 44.239357>,  <37.835754, 36.163563, 44.667133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395908, 36.153053, 44.239357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382706, 35.792717, 44.412518>,  <38.374783, 35.576515, 44.516415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382706, 35.792717, 44.412518>,  <38.395908, 36.153053, 44.239357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382706, 35.792717, 44.412518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090718, -0.434046, -0.896312,
		0.995329, 0.009684, 0.096051,
		-0.033010, -0.900839, 0.432897,
		38.372803, 35.522465, 44.542385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004681, 35.744339, 44.017342>,  <38.395908, 36.153053, 44.239357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004681, 35.744339, 44.017342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699661, 35.511292, 44.129822>,  <38.516647, 35.371464, 44.197308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699661, 35.511292, 44.129822>,  <39.004681, 35.744339, 44.017342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699661, 35.511292, 44.129822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013812, -0.449230, -0.893309,
		0.646782, -0.677309, 0.350608,
		-0.762550, -0.582619, 0.281198,
		38.470898, 35.336506, 44.214180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251049, 35.032291, 43.854416>,  <39.004681, 35.744339, 44.017342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251049, 35.032291, 43.854416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853806, 35.018024, 43.899082>,  <38.615459, 35.009464, 43.925880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853806, 35.018024, 43.899082>,  <39.251049, 35.032291, 43.854416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853806, 35.018024, 43.899082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065817, -0.618626, -0.782924,
		0.097004, -0.784876, 0.612013,
		-0.993106, -0.035666, 0.111667,
		38.555874, 35.007324, 43.932583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007717, 34.365276, 43.767361>,  <39.251049, 35.032291, 43.854416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007717, 34.365276, 43.767361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664249, 34.559101, 43.700573>,  <38.458168, 34.675396, 43.660500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664249, 34.559101, 43.700573>,  <39.007717, 34.365276, 43.767361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664249, 34.559101, 43.700573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194315, -0.609250, -0.768802,
		-0.474260, -0.627704, 0.617304,
		-0.858673, 0.484564, -0.166970,
		38.406647, 34.704472, 43.650482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456913, 33.887360, 43.954460>,  <39.007717, 34.365276, 43.767361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456913, 33.887360, 43.954460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324696, 34.153225, 43.686443>,  <38.245365, 34.312744, 43.525635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324696, 34.153225, 43.686443>,  <38.456913, 33.887360, 43.954460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324696, 34.153225, 43.686443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144278, -0.737190, -0.660102,
		-0.932696, -0.121523, 0.339573,
		-0.330547, 0.664668, -0.670041,
		38.225533, 34.352627, 43.485432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821831, 33.607384, 43.500420>,  <38.456913, 33.887360, 43.954460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821831, 33.607384, 43.500420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969250, 33.917992, 43.295998>,  <38.057701, 34.104359, 43.173344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969250, 33.917992, 43.295998>,  <37.821831, 33.607384, 43.500420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969250, 33.917992, 43.295998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048252, -0.533037, -0.844715,
		-0.928355, 0.335980, -0.158982,
		0.368550, 0.776524, -0.511059,
		38.079815, 34.150948, 43.142681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497189, 33.528996, 42.773502>,  <37.821831, 33.607384, 43.500420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497189, 33.528996, 42.773502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760700, 33.824207, 42.715099>,  <37.918808, 34.001335, 42.680058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760700, 33.824207, 42.715099>,  <37.497189, 33.528996, 42.773502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760700, 33.824207, 42.715099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006375, -0.199536, -0.979870,
		-0.752309, 0.644587, -0.136155,
		0.658780, 0.738033, -0.146004,
		37.958336, 34.045616, 42.671299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118546, 33.937618, 42.196320>,  <37.497189, 33.528996, 42.773502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118546, 33.937618, 42.196320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508995, 34.020206, 42.223324>,  <37.743263, 34.069759, 42.239529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508995, 34.020206, 42.223324>,  <37.118546, 33.937618, 42.196320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508995, 34.020206, 42.223324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104929, -0.176010, -0.978780,
		-0.190209, 0.962491, -0.193472,
		0.976120, 0.206473, 0.067514,
		37.801830, 34.082150, 42.243580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349007, 34.369850, 41.646011>,  <37.118546, 33.937618, 42.196320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349007, 34.369850, 41.646011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679871, 34.173874, 41.756111>,  <37.878391, 34.056290, 41.822170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679871, 34.173874, 41.756111>,  <37.349007, 34.369850, 41.646011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679871, 34.173874, 41.756111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246666, -0.123559, -0.961191,
		0.504932, 0.862958, 0.018647,
		0.827164, -0.489936, 0.275251,
		37.928020, 34.026894, 41.838688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839989, 34.646309, 41.165928>,  <37.349007, 34.369850, 41.646011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839989, 34.646309, 41.165928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979305, 34.292114, 41.288960>,  <38.062893, 34.079597, 41.362778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979305, 34.292114, 41.288960>,  <37.839989, 34.646309, 41.165928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979305, 34.292114, 41.288960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259789, -0.224093, -0.939304,
		0.900669, 0.407056, 0.151990,
		0.348289, -0.885487, 0.307582,
		38.083794, 34.026466, 41.381233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399754, 34.595173, 40.849796>,  <37.839989, 34.646309, 41.165928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399754, 34.595173, 40.849796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316639, 34.216442, 40.948051>,  <38.266769, 33.989204, 41.007004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316639, 34.216442, 40.948051>,  <38.399754, 34.595173, 40.849796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316639, 34.216442, 40.948051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234425, -0.292001, -0.927244,
		0.949668, -0.135089, 0.282635,
		-0.207790, -0.946830, 0.245635,
		38.254303, 33.932392, 41.021744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924812, 34.199219, 40.611305>,  <38.399754, 34.595173, 40.849796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924812, 34.199219, 40.611305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632015, 33.934319, 40.675304>,  <38.456337, 33.775379, 40.713703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632015, 33.934319, 40.675304>,  <38.924812, 34.199219, 40.611305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632015, 33.934319, 40.675304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307066, -0.530321, -0.790234,
		0.608186, -0.529320, 0.591549,
		-0.731997, -0.662254, 0.159998,
		38.412415, 33.735641, 40.723305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192272, 33.512421, 40.524292>,  <38.924812, 34.199219, 40.611305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192272, 33.512421, 40.524292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799789, 33.445827, 40.485283>,  <38.564301, 33.405872, 40.461880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799789, 33.445827, 40.485283>,  <39.192272, 33.512421, 40.524292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799789, 33.445827, 40.485283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170507, -0.511670, -0.842093,
		0.090296, -0.842898, 0.530443,
		-0.981210, -0.166482, -0.097518,
		38.505424, 33.395882, 40.456028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169300, 32.785492, 40.365227>,  <39.192272, 33.512421, 40.524292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169300, 32.785492, 40.365227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842995, 32.973621, 40.230572>,  <38.647213, 33.086498, 40.149776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842995, 32.973621, 40.230572>,  <39.169300, 32.785492, 40.365227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842995, 32.973621, 40.230572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115749, -0.437508, -0.891734,
		-0.566689, -0.766408, 0.302462,
		-0.815761, 0.470326, -0.336642,
		38.598267, 33.114719, 40.129578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880333, 32.290253, 39.983040>,  <39.169300, 32.785492, 40.365227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880333, 32.290253, 39.983040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696846, 32.624287, 39.861572>,  <38.586754, 32.824707, 39.788692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696846, 32.624287, 39.861572>,  <38.880333, 32.290253, 39.983040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696846, 32.624287, 39.861572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036590, -0.323700, -0.945452,
		-0.887827, -0.444809, 0.117933,
		-0.458721, 0.835082, -0.303665,
		38.559231, 32.874813, 39.770473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537537, 32.060646, 39.526680>,  <38.880333, 32.290253, 39.983040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537537, 32.060646, 39.526680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541649, 32.454689, 39.458019>,  <38.544117, 32.691113, 39.416821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541649, 32.454689, 39.458019>,  <38.537537, 32.060646, 39.526680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541649, 32.454689, 39.458019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106555, -0.171765, -0.979358,
		-0.994254, -0.008225, -0.106734,
		0.010278, 0.985104, -0.171654,
		38.544731, 32.750221, 39.406525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116295, 32.137070, 38.888432>,  <38.537537, 32.060646, 39.526680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116295, 32.137070, 38.888432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299103, 32.492847, 38.886383>,  <38.408787, 32.706314, 38.885155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299103, 32.492847, 38.886383>,  <38.116295, 32.137070, 38.888432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299103, 32.492847, 38.886383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177107, -0.096645, -0.979435,
		-0.871645, 0.446715, -0.201695,
		0.457021, 0.889441, -0.005124,
		38.436211, 32.759678, 38.884846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855129, 32.420387, 38.296867>,  <38.116295, 32.137070, 38.888432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855129, 32.420387, 38.296867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187515, 32.630287, 38.370777>,  <38.386948, 32.756226, 38.415123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187515, 32.630287, 38.370777>,  <37.855129, 32.420387, 38.296867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187515, 32.630287, 38.370777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239363, -0.037409, -0.970209,
		-0.502201, 0.850437, -0.156690,
		0.830963, 0.524746, 0.184777,
		38.436806, 32.787712, 38.426208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838009, 33.055618, 37.905880>,  <37.855129, 32.420387, 38.296867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838009, 33.055618, 37.905880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227707, 33.001720, 37.978207>,  <38.461525, 32.969379, 38.021603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227707, 33.001720, 37.978207>,  <37.838009, 33.055618, 37.905880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227707, 33.001720, 37.978207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200405, 0.149743, -0.968202,
		0.103387, 0.979500, 0.172890,
		0.974243, -0.134748, 0.180815,
		38.519981, 32.961296, 38.032452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235600, 33.359421, 37.361614>,  <37.838009, 33.055618, 37.905880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235600, 33.359421, 37.361614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543304, 33.163940, 37.526249>,  <38.727928, 33.046650, 37.625031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543304, 33.163940, 37.526249>,  <38.235600, 33.359421, 37.361614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543304, 33.163940, 37.526249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467556, -0.008477, -0.883923,
		0.435466, 0.872408, 0.221976,
		0.769260, -0.488705, 0.411591,
		38.774082, 33.017330, 37.649727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828060, 33.730885, 37.214436>,  <38.235600, 33.359421, 37.361614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828060, 33.730885, 37.214436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921581, 33.348309, 37.284351>,  <38.977695, 33.118763, 37.326302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921581, 33.348309, 37.284351>,  <38.828060, 33.730885, 37.214436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921581, 33.348309, 37.284351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391897, -0.071816, -0.917202,
		0.889805, 0.282943, 0.358037,
		0.233803, -0.956444, 0.174787,
		38.991722, 33.061375, 37.336788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547855, 33.617718, 37.015411>,  <38.828060, 33.730885, 37.214436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547855, 33.617718, 37.015411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381908, 33.253777, 37.012478>,  <39.282341, 33.035412, 37.010719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381908, 33.253777, 37.012478>,  <39.547855, 33.617718, 37.015411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381908, 33.253777, 37.012478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477326, -0.210774, -0.853074,
		0.774625, -0.357414, 0.521739,
		-0.414869, -0.909851, -0.007332,
		39.257446, 32.980820, 37.010277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108185, 33.155087, 36.850338>,  <39.547855, 33.617718, 37.015411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108185, 33.155087, 36.850338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767262, 32.961899, 36.770023>,  <39.562706, 32.845985, 36.721836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767262, 32.961899, 36.770023>,  <40.108185, 33.155087, 36.850338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767262, 32.961899, 36.770023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362712, -0.269186, -0.892177,
		0.376845, -0.833235, 0.404607,
		-0.852307, -0.482968, -0.200783,
		39.511570, 32.817009, 36.709789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427902, 32.585125, 36.607513>,  <40.108185, 33.155087, 36.850338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427902, 32.585125, 36.607513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047249, 32.562111, 36.486794>,  <39.818855, 32.548302, 36.414360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047249, 32.562111, 36.486794>,  <40.427902, 32.585125, 36.607513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047249, 32.562111, 36.486794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304027, -0.318028, -0.898012,
		-0.044315, -0.946334, 0.320138,
		-0.951632, -0.057535, -0.301804,
		39.761761, 32.544849, 36.396252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273636, 31.977251, 36.301353>,  <40.427902, 32.585125, 36.607513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273636, 31.977251, 36.301353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022491, 32.251106, 36.153267>,  <39.871803, 32.415421, 36.064415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022491, 32.251106, 36.153267>,  <40.273636, 31.977251, 36.301353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022491, 32.251106, 36.153267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314984, -0.211457, -0.925241,
		-0.711742, -0.697534, -0.082885,
		-0.627860, 0.684640, -0.370215,
		39.834133, 32.456497, 36.042202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799736, 31.622971, 35.789051>,  <40.273636, 31.977251, 36.301353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799736, 31.622971, 35.789051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885101, 32.008583, 35.725685>,  <39.936321, 32.239952, 35.687664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885101, 32.008583, 35.725685>,  <39.799736, 31.622971, 35.789051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885101, 32.008583, 35.725685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526704, -0.250104, -0.812423,
		-0.822822, 0.089947, -0.561136,
		0.213418, 0.964032, -0.158416,
		39.949127, 32.297794, 35.678162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766445, 31.839399, 35.089756>,  <39.799736, 31.622971, 35.789051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766445, 31.839399, 35.089756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037903, 32.092316, 35.239235>,  <40.200779, 32.244064, 35.328922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037903, 32.092316, 35.239235>,  <39.766445, 31.839399, 35.089756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037903, 32.092316, 35.239235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593567, -0.172498, -0.786081,
		-0.432571, 0.755282, -0.492373,
		0.678646, 0.632292, 0.373693,
		40.241497, 32.282001, 35.351341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000317, 32.361877, 34.625530>,  <39.766445, 31.839399, 35.089756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000317, 32.361877, 34.625530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310932, 32.287762, 34.866413>,  <40.497303, 32.243294, 35.010944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310932, 32.287762, 34.866413>,  <40.000317, 32.361877, 34.625530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310932, 32.287762, 34.866413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570028, -0.200590, -0.796763,
		0.268426, 0.961994, -0.050148,
		0.776540, -0.185286, 0.602208,
		40.543896, 32.232178, 35.047077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552074, 32.785538, 34.408298>,  <40.000317, 32.361877, 34.625530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552074, 32.785538, 34.408298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708740, 32.461914, 34.583584>,  <40.802738, 32.267742, 34.688755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708740, 32.461914, 34.583584>,  <40.552074, 32.785538, 34.408298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708740, 32.461914, 34.583584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688497, -0.058241, -0.722897,
		0.610386, 0.584839, 0.534222,
		0.391664, -0.809056, 0.438209,
		40.826241, 32.219196, 34.715046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283421, 32.953911, 34.584743>,  <40.552074, 32.785538, 34.408298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283421, 32.953911, 34.584743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227543, 32.558174, 34.568275>,  <41.194016, 32.320732, 34.558395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227543, 32.558174, 34.568275>,  <41.283421, 32.953911, 34.584743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227543, 32.558174, 34.568275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864371, -0.101557, -0.492492,
		0.483060, -0.104389, 0.869342,
		-0.139698, -0.989338, -0.041172,
		41.185635, 32.261372, 34.555923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966633, 32.707909, 34.752205>,  <41.283421, 32.953911, 34.584743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966633, 32.707909, 34.752205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754787, 32.451347, 34.530174>,  <41.627682, 32.297409, 34.396954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754787, 32.451347, 34.530174>,  <41.966633, 32.707909, 34.752205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754787, 32.451347, 34.530174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816309, -0.207535, -0.539044,
		0.230547, -0.738600, 0.633497,
		-0.529611, -0.641404, -0.555079,
		41.595905, 32.258926, 34.363651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265118, 32.879654, 34.043613>,  <41.966633, 32.707909, 34.752205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265118, 32.879654, 34.043613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600166, 33.055744, 34.172977>,  <42.801193, 33.161400, 34.250595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600166, 33.055744, 34.172977>,  <42.265118, 32.879654, 34.043613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600166, 33.055744, 34.172977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110604, 0.716462, -0.688803,
		-0.534940, 0.541185, 0.648813,
		0.837619, 0.440229, 0.323407,
		42.851452, 33.187813, 34.270000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224140, 33.652386, 34.148434>,  <42.265118, 32.879654, 34.043613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224140, 33.652386, 34.148434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615444, 33.598434, 34.085434>,  <42.850227, 33.566063, 34.047634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615444, 33.598434, 34.085434>,  <42.224140, 33.652386, 34.148434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615444, 33.598434, 34.085434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067634, 0.510455, -0.857241,
		0.196021, 0.849260, 0.490237,
		0.978264, -0.134881, -0.157499,
		42.908924, 33.557972, 34.038185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357361, 34.272198, 33.965595>,  <42.224140, 33.652386, 34.148434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357361, 34.272198, 33.965595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698612, 34.103600, 33.842625>,  <42.903362, 34.002441, 33.768841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698612, 34.103600, 33.842625>,  <42.357361, 34.272198, 33.965595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698612, 34.103600, 33.842625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000720, 0.590237, -0.807230,
		0.521700, 0.688449, 0.503852,
		0.853129, -0.421495, -0.307431,
		42.954552, 33.977150, 33.750397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568615, 34.810146, 33.548347>,  <42.357361, 34.272198, 33.965595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568615, 34.810146, 33.548347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776157, 34.476612, 33.472969>,  <42.900684, 34.276493, 33.427742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776157, 34.476612, 33.472969>,  <42.568615, 34.810146, 33.548347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776157, 34.476612, 33.472969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086462, 0.270494, -0.958831,
		0.850478, 0.481203, 0.212442,
		0.518856, -0.833833, -0.188443,
		42.931816, 34.226463, 33.416435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156441, 35.033947, 33.211342>,  <42.568615, 34.810146, 33.548347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156441, 35.033947, 33.211342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069130, 34.658695, 33.103806>,  <43.016743, 34.433544, 33.039284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069130, 34.658695, 33.103806>,  <43.156441, 35.033947, 33.211342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069130, 34.658695, 33.103806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081993, 0.256876, -0.962960,
		0.972437, -0.232231, 0.020851,
		-0.218273, -0.938127, -0.268838,
		43.003647, 34.377258, 33.023155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591225, 34.941460, 32.650284>,  <43.156441, 35.033947, 33.211342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591225, 34.941460, 32.650284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282715, 34.689903, 32.611027>,  <43.097610, 34.538971, 32.587475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282715, 34.689903, 32.611027>,  <43.591225, 34.941460, 32.650284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282715, 34.689903, 32.611027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015298, 0.172455, -0.984899,
		0.636318, -0.758127, -0.142631,
		-0.771275, -0.628890, -0.098138,
		43.051331, 34.501236, 32.581585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765614, 34.378124, 32.036793>,  <43.591225, 34.941460, 32.650284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765614, 34.378124, 32.036793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.368286, 34.409973, 32.070206>,  <43.129890, 34.429085, 32.090256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.368286, 34.409973, 32.070206>,  <43.765614, 34.378124, 32.036793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.368286, 34.409973, 32.070206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085381, -0.020072, -0.996146,
		-0.077638, -0.996623, 0.026736,
		-0.993319, 0.079622, 0.083534,
		43.070290, 34.433861, 32.095264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490784, 33.779793, 31.648132>,  <43.765614, 34.378124, 32.036793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490784, 33.779793, 31.648132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215195, 34.068394, 31.675741>,  <43.049843, 34.241554, 31.692307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215195, 34.068394, 31.675741>,  <43.490784, 33.779793, 31.648132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215195, 34.068394, 31.675741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160600, -0.059106, -0.985248,
		-0.706775, -0.689889, 0.156594,
		-0.688967, 0.721498, 0.069022,
		43.008503, 34.284843, 31.696447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973244, 33.407318, 31.350803>,  <43.490784, 33.779793, 31.648132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973244, 33.407318, 31.350803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864960, 33.791451, 31.324011>,  <42.799992, 34.021931, 31.307936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864960, 33.791451, 31.324011>,  <42.973244, 33.407318, 31.350803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.864960, 33.791451, 31.324011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167905, -0.115615, -0.979000,
		-0.947906, -0.253775, 0.192541,
		-0.270706, 0.960329, -0.066982,
		42.783749, 34.079548, 31.303917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406464, 33.414364, 30.920168>,  <42.973244, 33.407318, 31.350803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406464, 33.414364, 30.920168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547981, 33.788342, 30.909561>,  <42.632893, 34.012730, 30.903196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547981, 33.788342, 30.909561>,  <42.406464, 33.414364, 30.920168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547981, 33.788342, 30.909561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217149, 0.054529, -0.974614,
		-0.909765, 0.350576, 0.222315,
		0.353799, 0.934946, -0.026519,
		42.654121, 34.068825, 30.901606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876030, 33.924664, 30.753683>,  <42.406464, 33.414364, 30.920168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876030, 33.924664, 30.753683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233974, 34.068069, 30.647333>,  <42.448742, 34.154114, 30.583523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233974, 34.068069, 30.647333>,  <41.876030, 33.924664, 30.753683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233974, 34.068069, 30.647333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293417, 0.023635, -0.955692,
		-0.336344, 0.933225, 0.126344,
		0.894862, 0.358513, -0.265875,
		42.502434, 34.175625, 30.567570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720001, 34.239281, 30.166321>,  <41.876030, 33.924664, 30.753683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720001, 34.239281, 30.166321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119576, 34.256355, 30.159363>,  <42.359322, 34.266602, 30.155188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119576, 34.256355, 30.159363>,  <41.720001, 34.239281, 30.166321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119576, 34.256355, 30.159363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023328, 0.142647, -0.989499,
		-0.039756, 0.988853, 0.143491,
		0.998937, 0.042686, -0.017397,
		42.419258, 34.269161, 30.154144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887375, 34.866695, 29.741875>,  <41.720001, 34.239281, 30.166321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887375, 34.866695, 29.741875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234829, 34.668514, 29.742657>,  <42.443302, 34.549606, 29.743126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234829, 34.668514, 29.742657>,  <41.887375, 34.866695, 29.741875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234829, 34.668514, 29.742657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087793, 0.150032, -0.984776,
		0.487613, 0.855582, 0.173820,
		0.868635, -0.495449, 0.001957,
		42.495419, 34.519878, 29.743244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404728, 35.292793, 29.362518>,  <41.887375, 34.866695, 29.741875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404728, 35.292793, 29.362518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504852, 34.905807, 29.347816>,  <42.564926, 34.673615, 29.338995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504852, 34.905807, 29.347816>,  <42.404728, 35.292793, 29.362518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504852, 34.905807, 29.347816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226260, 0.095369, -0.969387,
		0.941355, 0.234336, 0.242771,
		0.250315, -0.967466, -0.036755,
		42.579948, 34.615566, 29.336790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624012, 35.261658, 28.795881>,  <42.404728, 35.292793, 29.362518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624012, 35.261658, 28.795881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698650, 34.878159, 28.881664>,  <42.743435, 34.648060, 28.933134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698650, 34.878159, 28.881664>,  <42.624012, 35.261658, 28.795881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698650, 34.878159, 28.881664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200280, -0.176585, -0.963694,
		0.961806, 0.222772, 0.159068,
		0.186595, -0.958744, 0.214458,
		42.754627, 34.590534, 28.946001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224041, 35.029659, 28.517942>,  <42.624012, 35.261658, 28.795881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.224041, 35.029659, 28.517942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987930, 34.708523, 28.551462>,  <42.846264, 34.515842, 28.571575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987930, 34.708523, 28.551462>,  <43.224041, 35.029659, 28.517942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987930, 34.708523, 28.551462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122019, -0.191371, -0.973904,
		0.797923, -0.564651, 0.210923,
		-0.590280, -0.802837, 0.083801,
		42.810844, 34.467670, 28.576603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634186, 34.451996, 28.293955>,  <43.224041, 35.029659, 28.517942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634186, 34.451996, 28.293955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251911, 34.350376, 28.234451>,  <43.022549, 34.289406, 28.198750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251911, 34.350376, 28.234451>,  <43.634186, 34.451996, 28.293955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251911, 34.350376, 28.234451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168414, -0.057341, -0.984047,
		0.241468, -0.965490, 0.097585,
		-0.955683, -0.254050, -0.148756,
		42.965206, 34.274162, 28.189825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662476, 33.841251, 27.836079>,  <43.634186, 34.451996, 28.293955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662476, 33.841251, 27.836079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290890, 33.981709, 27.789230>,  <43.067936, 34.065983, 27.761122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290890, 33.981709, 27.789230>,  <43.662476, 33.841251, 27.836079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290890, 33.981709, 27.789230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101447, -0.062773, -0.992858,
		-0.355989, -0.934215, 0.022691,
		-0.928968, 0.351144, -0.117120,
		43.012199, 34.087051, 27.754095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247211, 33.338074, 27.409744>,  <43.662476, 33.841251, 27.836079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247211, 33.338074, 27.409744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059792, 33.689049, 27.368635>,  <42.947338, 33.899635, 27.343969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059792, 33.689049, 27.368635>,  <43.247211, 33.338074, 27.409744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059792, 33.689049, 27.368635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094148, -0.165267, -0.981745,
		-0.878407, -0.450319, 0.160044,
		-0.468548, 0.877439, -0.102775,
		42.919228, 33.952282, 27.337803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675568, 33.132256, 26.991388>,  <43.247211, 33.338074, 27.409744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675568, 33.132256, 26.991388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685116, 33.532063, 26.983498>,  <42.690845, 33.771946, 26.978764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685116, 33.532063, 26.983498>,  <42.675568, 33.132256, 26.991388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685116, 33.532063, 26.983498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360383, -0.009802, -0.932753,
		-0.932499, 0.029378, 0.359976,
		0.023874, 0.999520, -0.019728,
		42.692280, 33.831917, 26.977579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973316, 33.300423, 26.765181>,  <42.675568, 33.132256, 26.991388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973316, 33.300423, 26.765181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229473, 33.596874, 26.684557>,  <42.383167, 33.774746, 26.636183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229473, 33.596874, 26.684557>,  <41.973316, 33.300423, 26.765181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229473, 33.596874, 26.684557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280549, -0.018578, -0.959660,
		-0.714978, 0.671103, 0.196026,
		0.640389, 0.741131, -0.201560,
		42.421589, 33.819214, 26.624088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563496, 33.816528, 26.524767>,  <41.973316, 33.300423, 26.765181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563496, 33.816528, 26.524767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934517, 33.849213, 26.378906>,  <42.157131, 33.868824, 26.291389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934517, 33.849213, 26.378906>,  <41.563496, 33.816528, 26.524767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934517, 33.849213, 26.378906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362726, -0.037815, -0.931128,
		-0.089872, 0.995939, -0.005437,
		0.927552, 0.081710, -0.364651,
		42.212784, 33.873726, 26.269510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319115, 34.146675, 25.898872>,  <41.563496, 33.816528, 26.524767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319115, 34.146675, 25.898872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685623, 33.991989, 25.857098>,  <41.905529, 33.899178, 25.832033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685623, 33.991989, 25.857098>,  <41.319115, 34.146675, 25.898872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685623, 33.991989, 25.857098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131617, -0.044402, -0.990306,
		0.378327, 0.921130, -0.091582,
		0.916267, -0.386714, -0.104438,
		41.960503, 33.875977, 25.825766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461365, 33.674534, 25.446154>,  <41.319115, 34.146675, 25.898872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461365, 33.674534, 25.446154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229366, 33.389355, 25.288511>,  <41.090168, 33.218246, 25.193926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229366, 33.389355, 25.288511>,  <41.461365, 33.674534, 25.446154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229366, 33.389355, 25.288511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665146, 0.693768, -0.276162,
		0.470305, 0.101965, -0.876593,
		-0.579994, -0.712944, -0.394105,
		41.055367, 33.175472, 25.170280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053047, 33.148415, 25.441202>,  <41.461365, 33.674534, 25.446154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053047, 33.148415, 25.441202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269871, 32.821590, 25.519775>,  <42.399967, 32.625496, 25.566919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269871, 32.821590, 25.519775>,  <42.053047, 33.148415, 25.441202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269871, 32.821590, 25.519775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462956, -0.485440, -0.741633,
		0.701312, 0.311072, -0.641401,
		0.542063, -0.817057, 0.196432,
		42.432491, 32.576473, 25.578705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311352, 32.888775, 24.833408>,  <42.053047, 33.148415, 25.441202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311352, 32.888775, 24.833408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335564, 32.581230, 25.088028>,  <42.350090, 32.396706, 25.240799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335564, 32.581230, 25.088028>,  <42.311352, 32.888775, 24.833408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335564, 32.581230, 25.088028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348418, -0.613879, -0.708349,
		0.935383, -0.178909, -0.305041,
		0.060529, -0.768859, 0.636547,
		42.353722, 32.350571, 25.278992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.754379, 32.283203, 24.603861>,  <42.311352, 32.888775, 24.833408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.754379, 32.283203, 24.603861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469711, 32.139156, 24.845135>,  <42.298908, 32.052727, 24.989899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469711, 32.139156, 24.845135>,  <42.754379, 32.283203, 24.603861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469711, 32.139156, 24.845135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380650, -0.523975, -0.761942,
		0.590446, -0.771857, 0.235819,
		-0.711673, -0.360121, 0.603187,
		42.256210, 32.031120, 25.026091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.751610, 31.761442, 24.112638>,  <42.754379, 32.283203, 24.603861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.751610, 31.761442, 24.112638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080860, 31.574049, 23.984272>,  <43.278412, 31.461613, 23.907253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080860, 31.574049, 23.984272>,  <42.751610, 31.761442, 24.112638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080860, 31.574049, 23.984272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502748, 0.338469, 0.795414,
		-0.264018, -0.816066, 0.514131,
		0.823128, -0.468481, -0.320914,
		43.327797, 31.433504, 23.887999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948723, 31.105770, 24.379341>,  <42.751610, 31.761442, 24.112638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948723, 31.105770, 24.379341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277069, 31.316137, 24.290270>,  <43.474075, 31.442358, 24.236828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277069, 31.316137, 24.290270>,  <42.948723, 31.105770, 24.379341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277069, 31.316137, 24.290270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152136, 0.174449, 0.972842,
		0.550484, -0.832451, 0.063188,
		0.820867, 0.525920, -0.222678,
		43.523331, 31.473913, 24.223467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.430492, 30.975016, 24.908491>,  <42.948723, 31.105770, 24.379341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.430492, 30.975016, 24.908491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548069, 31.317251, 24.738050>,  <43.618614, 31.522593, 24.635786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548069, 31.317251, 24.738050>,  <43.430492, 30.975016, 24.908491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548069, 31.317251, 24.738050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310710, 0.336052, 0.889116,
		0.903912, -0.393742, -0.167061,
		0.293942, 0.855591, -0.426101,
		43.636250, 31.573929, 24.610220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.240540, 31.116814, 25.023897>,  <43.430492, 30.975016, 24.908491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.240540, 31.116814, 25.023897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.976418, 31.416693, 25.006229>,  <43.817944, 31.596621, 24.995628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.976418, 31.416693, 25.006229>,  <44.240540, 31.116814, 25.023897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.976418, 31.416693, 25.006229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217465, 0.247166, 0.944255,
		0.718822, 0.613892, -0.326238,
		-0.660305, 0.749697, -0.044168,
		43.778324, 31.641602, 24.992979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690289, 31.768787, 25.135715>,  <44.240540, 31.116814, 25.023897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690289, 31.768787, 25.135715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.312683, 31.765488, 25.267641>,  <44.086121, 31.763508, 25.346796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.312683, 31.765488, 25.267641>,  <44.690289, 31.768787, 25.135715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.312683, 31.765488, 25.267641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311554, 0.306559, 0.899419,
		-0.108528, 0.951816, -0.286825,
		-0.944010, -0.008251, 0.329813,
		44.029480, 31.763012, 25.366585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.576164, 32.394733, 25.420834>,  <44.690289, 31.768787, 25.135715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.576164, 32.394733, 25.420834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356995, 32.102230, 25.583334>,  <44.225491, 31.926729, 25.680834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356995, 32.102230, 25.583334>,  <44.576164, 32.394733, 25.420834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356995, 32.102230, 25.583334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281703, 0.295981, 0.912710,
		-0.787668, 0.614540, 0.043821,
		-0.547926, -0.731256, 0.406253,
		44.192616, 31.882853, 25.705210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081738, 32.727165, 25.925180>,  <44.576164, 32.394733, 25.420834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081738, 32.727165, 25.925180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.112484, 32.348320, 26.049799>,  <44.130932, 32.121010, 26.124569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.112484, 32.348320, 26.049799>,  <44.081738, 32.727165, 25.925180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.112484, 32.348320, 26.049799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345986, 0.318389, 0.882566,
		-0.935086, 0.039953, 0.352162,
		0.076863, -0.947118, 0.311545,
		44.135544, 32.064186, 26.143263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884308, 32.833637, 26.513300>,  <44.081738, 32.727165, 25.925180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884308, 32.833637, 26.513300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067593, 32.478737, 26.534550>,  <44.177563, 32.265797, 26.547300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067593, 32.478737, 26.534550>,  <43.884308, 32.833637, 26.513300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067593, 32.478737, 26.534550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369734, 0.244617, 0.896359,
		-0.808293, -0.391081, 0.440135,
		0.458214, -0.887253, 0.053126,
		44.205055, 32.212563, 26.550488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.826916, 32.646259, 27.231285>,  <43.884308, 32.833637, 26.513300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.826916, 32.646259, 27.231285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109505, 32.394688, 27.101454>,  <44.279057, 32.243744, 27.023556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109505, 32.394688, 27.101454>,  <43.826916, 32.646259, 27.231285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.109505, 32.394688, 27.101454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489198, 0.102524, 0.866126,
		-0.511454, -0.770674, 0.380100,
		0.706470, -0.628928, -0.324576,
		44.321445, 32.206009, 27.004082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827000, 32.114929, 27.669344>,  <43.826916, 32.646259, 27.231285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.827000, 32.114929, 27.669344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180908, 32.074074, 27.487467>,  <44.393253, 32.049561, 27.378340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180908, 32.074074, 27.487467>,  <43.827000, 32.114929, 27.669344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.180908, 32.074074, 27.487467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459842, 0.032940, 0.887390,
		-0.075662, -0.994224, 0.076113,
		0.884771, -0.102142, -0.454694,
		44.446339, 32.043430, 27.351059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199127, 31.563829, 28.054161>,  <43.827000, 32.114929, 27.669344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199127, 31.563829, 28.054161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.444042, 31.818731, 27.866966>,  <44.590992, 31.971672, 27.754650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.444042, 31.818731, 27.866966>,  <44.199127, 31.563829, 28.054161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.444042, 31.818731, 27.866966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530140, 0.108226, 0.840975,
		0.586564, -0.763015, -0.271570,
		0.612285, 0.637256, -0.467986,
		44.627728, 32.009907, 27.726570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.797417, 31.451246, 28.408182>,  <44.199127, 31.563829, 28.054161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.797417, 31.451246, 28.408182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.850418, 31.797363, 28.214808>,  <44.882221, 32.005032, 28.098782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.850418, 31.797363, 28.214808>,  <44.797417, 31.451246, 28.408182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.850418, 31.797363, 28.214808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504208, 0.361074, 0.784475,
		0.853356, -0.347702, -0.388442,
		0.132507, 0.865292, -0.483438,
		44.890171, 32.056950, 28.069777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470497, 31.531292, 28.463491>,  <44.797417, 31.451246, 28.408182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.470497, 31.531292, 28.463491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.318253, 31.893991, 28.390888>,  <45.226906, 32.111610, 28.347326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.318253, 31.893991, 28.390888>,  <45.470497, 31.531292, 28.463491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.318253, 31.893991, 28.390888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292903, 0.304381, 0.906399,
		0.877124, 0.291818, -0.381439,
		-0.380607, 0.906749, -0.181506,
		45.204071, 32.166016, 28.336437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.026112, 32.131088, 28.597628>,  <45.470497, 31.531292, 28.463491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.026112, 32.131088, 28.597628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.659981, 32.289722, 28.625614>,  <45.440304, 32.384903, 28.642406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.659981, 32.289722, 28.625614>,  <46.026112, 32.131088, 28.597628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.659981, 32.289722, 28.625614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257576, 0.442984, 0.858732,
		0.309568, 0.804042, -0.507626,
		-0.915326, 0.396588, 0.069968,
		45.385384, 32.408699, 28.646605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.188686, 32.765747, 28.912664>,  <46.026112, 32.131088, 28.597628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.188686, 32.765747, 28.912664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.797096, 32.728706, 28.985371>,  <45.562141, 32.706482, 29.028996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.797096, 32.728706, 28.985371>,  <46.188686, 32.765747, 28.912664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.797096, 32.728706, 28.985371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136399, 0.365425, 0.920793,
		-0.151692, 0.926223, -0.345110,
		-0.978971, -0.092604, 0.181768,
		45.503407, 32.700924, 29.039902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.088028, 33.366146, 29.366659>,  <46.188686, 32.765747, 28.912664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.088028, 33.366146, 29.366659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759392, 33.139690, 29.393421>,  <45.562210, 33.003819, 29.409479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759392, 33.139690, 29.393421>,  <46.088028, 33.366146, 29.366659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.759392, 33.139690, 29.393421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185995, 0.377145, 0.907286,
		-0.538880, 0.732975, -0.415158,
		-0.821592, -0.566136, 0.066906,
		45.512913, 32.969849, 29.413492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.477318, 33.786194, 29.557447>,  <46.088028, 33.366146, 29.366659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.477318, 33.786194, 29.557447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.411736, 33.409111, 29.673674>,  <45.372387, 33.182861, 29.743410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.411736, 33.409111, 29.673674>,  <45.477318, 33.786194, 29.557447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.411736, 33.409111, 29.673674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106136, 0.309700, 0.944892,
		-0.980742, 0.124078, -0.150831,
		-0.163953, -0.942704, 0.290567,
		45.362549, 33.126301, 29.760843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.894039, 33.827290, 29.875746>,  <45.477318, 33.786194, 29.557447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.894039, 33.827290, 29.875746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.033100, 33.476093, 30.007366>,  <45.116535, 33.265377, 30.086338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.033100, 33.476093, 30.007366>,  <44.894039, 33.827290, 29.875746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.033100, 33.476093, 30.007366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266137, 0.244103, 0.932515,
		-0.899059, -0.411765, -0.148802,
		0.347654, -0.877988, 0.329049,
		45.137398, 33.212696, 30.106081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442848, 33.715202, 30.416330>,  <44.894039, 33.827290, 29.875746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442848, 33.715202, 30.416330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.738487, 33.458000, 30.496599>,  <44.915871, 33.303677, 30.544762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.738487, 33.458000, 30.496599>,  <44.442848, 33.715202, 30.416330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.738487, 33.458000, 30.496599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190026, 0.086775, 0.977937,
		-0.646235, -0.760928, -0.058052,
		0.739102, -0.643008, 0.200673,
		44.960217, 33.265099, 30.556801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.230389, 33.278473, 31.026613>,  <44.442848, 33.715202, 30.416330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.230389, 33.278473, 31.026613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.629246, 33.267906, 30.998327>,  <44.868561, 33.261566, 30.981356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.629246, 33.267906, 30.998327>,  <44.230389, 33.278473, 31.026613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.629246, 33.267906, 30.998327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072240, 0.062166, 0.995448,
		-0.021903, -0.997716, 0.063897,
		0.997146, -0.026419, -0.070713,
		44.928391, 33.259983, 30.977114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421616, 32.819355, 31.551916>,  <44.230389, 33.278473, 31.026613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421616, 32.819355, 31.551916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.762608, 33.014194, 31.476017>,  <44.967205, 33.131100, 31.430477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.762608, 33.014194, 31.476017>,  <44.421616, 32.819355, 31.551916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.762608, 33.014194, 31.476017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186297, 0.056060, 0.980893,
		0.488433, -0.871544, -0.042955,
		0.852483, 0.487103, -0.189748,
		45.018353, 33.160324, 31.419092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.912556, 32.588459, 31.996866>,  <44.421616, 32.819355, 31.551916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.912556, 32.588459, 31.996866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059380, 32.938946, 31.871956>,  <45.147472, 33.149239, 31.797009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059380, 32.938946, 31.871956>,  <44.912556, 32.588459, 31.996866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.059380, 32.938946, 31.871956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313729, 0.199427, 0.928333,
		0.875694, -0.438726, -0.201691,
		0.367061, 0.876213, -0.312278,
		45.169498, 33.201809, 31.778273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.683910, 32.604282, 32.260170>,  <44.912556, 32.588459, 31.996866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.683910, 32.604282, 32.260170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.530048, 32.969730, 32.207497>,  <45.437729, 33.188999, 32.175892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.530048, 32.969730, 32.207497>,  <45.683910, 32.604282, 32.260170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.530048, 32.969730, 32.207497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272491, 0.248689, 0.929464,
		0.881923, 0.321644, -0.344612,
		-0.384658, 0.913619, -0.131679,
		45.414650, 33.243816, 32.167992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.222675, 33.017746, 32.571690>,  <45.683910, 32.604282, 32.260170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.222675, 33.017746, 32.571690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.905003, 33.260201, 32.554420>,  <45.714397, 33.405674, 32.544060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.905003, 33.260201, 32.554420>,  <46.222675, 33.017746, 32.571690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.905003, 33.260201, 32.554420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184620, 0.308365, 0.933181,
		0.578952, 0.733148, -0.356805,
		-0.794185, 0.606140, -0.043175,
		45.666748, 33.442043, 32.541470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.439018, 33.663895, 32.874359>,  <46.222675, 33.017746, 32.571690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.439018, 33.663895, 32.874359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.040680, 33.681892, 32.906010>,  <45.801678, 33.692692, 32.924999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.040680, 33.681892, 32.906010>,  <46.439018, 33.663895, 32.874359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.040680, 33.681892, 32.906010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090701, 0.416932, 0.904401,
		0.007697, 0.907823, -0.419282,
		-0.995848, 0.044990, 0.079131,
		45.741924, 33.695389, 32.929749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.376854, 34.265385, 33.088959>,  <46.439018, 33.663895, 32.874359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.376854, 34.265385, 33.088959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.036964, 34.090145, 33.206280>,  <45.833031, 33.985001, 33.276672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.036964, 34.090145, 33.206280>,  <46.376854, 34.265385, 33.088959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.036964, 34.090145, 33.206280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115849, 0.387569, 0.914532,
		-0.514335, 0.811083, -0.278575,
		-0.849728, -0.438103, 0.293304,
		45.782047, 33.958714, 33.294270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.108795, 34.547157, 33.081867>,  <46.376854, 34.265385, 33.088959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.108795, 34.547157, 33.081867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.429329, 34.681400, 33.279953>,  <47.621647, 34.761948, 33.398804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.429329, 34.681400, 33.279953>,  <47.108795, 34.547157, 33.081867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.429329, 34.681400, 33.279953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539578, 0.048035, 0.840564,
		0.258313, -0.940776, 0.219578,
		0.801330, 0.335608, 0.495214,
		47.669727, 34.782082, 33.428516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.032677, 34.236069, 33.642845>,  <47.108795, 34.547157, 33.081867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.032677, 34.236069, 33.642845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.261684, 34.549988, 33.737762>,  <47.399090, 34.738338, 33.794712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.261684, 34.549988, 33.737762>,  <47.032677, 34.236069, 33.642845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.261684, 34.549988, 33.737762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442584, 0.052194, 0.895207,
		0.690172, -0.617549, 0.377222,
		0.572523, 0.784798, 0.237294,
		47.433441, 34.785427, 33.808952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.542305, 34.137802, 34.250656>,  <47.032677, 34.236069, 33.642845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.542305, 34.137802, 34.250656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.392483, 34.508255, 34.232841>,  <47.302589, 34.730526, 34.222153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.392483, 34.508255, 34.232841>,  <47.542305, 34.137802, 34.250656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.392483, 34.508255, 34.232841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456944, -0.142577, 0.877994,
		0.806792, 0.349205, 0.476595,
		-0.374552, 0.926136, -0.044538,
		47.280117, 34.786095, 34.219479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.627254, 34.786808, 34.683544>,  <47.542305, 34.137802, 34.250656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.627254, 34.786808, 34.683544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.835819, 34.896591, 35.006729>,  <47.960957, 34.962460, 35.200642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.835819, 34.896591, 35.006729>,  <47.627254, 34.786808, 34.683544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.835819, 34.896591, 35.006729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512062, -0.858064, -0.038976,
		0.682586, 0.434049, -0.587943,
		0.521410, 0.274459, 0.807963,
		47.992241, 34.978928, 35.249119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.078449, 38.479294, 43.503838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.700722, 38.349022, 43.485088>,  <36.474087, 38.270859, 43.473839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.700722, 38.349022, 43.485088>,  <37.078449, 38.479294, 43.503838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700722, 38.349022, 43.485088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214065, -0.499896, -0.839214,
		0.249887, -0.802517, 0.541777,
		-0.944316, -0.325684, -0.046873,
		36.417427, 38.251316, 43.471027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162220, 38.118221, 42.946171>,  <37.078449, 38.479294, 43.503838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162220, 38.118221, 42.946171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.790287, 38.023331, 43.058689>,  <36.567127, 37.966396, 43.126202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.790287, 38.023331, 43.058689>,  <37.162220, 38.118221, 42.946171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790287, 38.023331, 43.058689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154183, -0.442937, -0.883196,
		0.334118, -0.864598, 0.375281,
		-0.929835, -0.237229, 0.281299,
		36.511337, 37.952164, 43.143078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992245, 37.278774, 42.955173>,  <37.162220, 38.118221, 42.946171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992245, 37.278774, 42.955173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.682922, 37.522846, 42.886269>,  <36.497330, 37.669289, 42.844925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.682922, 37.522846, 42.886269>,  <36.992245, 37.278774, 42.955173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682922, 37.522846, 42.886269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185963, -0.478022, -0.858436,
		-0.606147, -0.631801, 0.483129,
		-0.773307, 0.610183, -0.172260,
		36.450932, 37.705902, 42.834591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562962, 36.877583, 42.665188>,  <36.992245, 37.278774, 42.955173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562962, 36.877583, 42.665188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.381481, 37.226845, 42.593914>,  <36.272594, 37.436401, 42.551151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.381481, 37.226845, 42.593914>,  <36.562962, 36.877583, 42.665188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381481, 37.226845, 42.593914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206999, -0.297733, -0.931937,
		-0.866779, -0.385938, 0.315825,
		-0.453702, 0.873159, -0.178180,
		36.245369, 37.488792, 42.540459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968300, 36.660892, 42.391304>,  <36.562962, 36.877583, 42.665188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968300, 36.660892, 42.391304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.034782, 37.035667, 42.268322>,  <36.074673, 37.260532, 42.194530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.034782, 37.035667, 42.268322>,  <35.968300, 36.660892, 42.391304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034782, 37.035667, 42.268322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163974, -0.281193, -0.945538,
		-0.972362, 0.207572, 0.106896,
		0.166209, 0.936933, -0.307458,
		36.084644, 37.316746, 42.176086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422226, 36.727364, 41.990635>,  <35.968300, 36.660892, 42.391304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422226, 36.727364, 41.990635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.665173, 37.028564, 41.889362>,  <35.810940, 37.209286, 41.828598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.665173, 37.028564, 41.889362>,  <35.422226, 36.727364, 41.990635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665173, 37.028564, 41.889362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255461, -0.116652, -0.959756,
		-0.752230, 0.647599, 0.121511,
		0.607363, 0.752999, -0.253186,
		35.847382, 37.254463, 41.813408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972439, 37.072773, 41.414505>,  <35.422226, 36.727364, 41.990635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972439, 37.072773, 41.414505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.353294, 37.192635, 41.390369>,  <35.581806, 37.264553, 41.375889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.353294, 37.192635, 41.390369>,  <34.972439, 37.072773, 41.414505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353294, 37.192635, 41.390369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079509, 0.052170, -0.995468,
		-0.295151, 0.952619, 0.073498,
		0.952137, 0.299657, -0.060344,
		35.638935, 37.282532, 41.372265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014324, 37.621731, 40.924938>,  <34.972439, 37.072773, 41.414505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014324, 37.621731, 40.924938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.378517, 37.457111, 40.941208>,  <35.597031, 37.358337, 40.950970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.378517, 37.457111, 40.941208>,  <35.014324, 37.621731, 40.924938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378517, 37.457111, 40.941208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023145, -0.047499, -0.998603,
		0.412908, 0.910148, -0.033721,
		0.910478, -0.411551, 0.040678,
		35.651661, 37.333645, 40.953411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430058, 37.914398, 40.413380>,  <35.014324, 37.621731, 40.924938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430058, 37.914398, 40.413380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.572472, 37.548897, 40.491657>,  <35.657921, 37.329597, 40.538624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.572472, 37.548897, 40.491657>,  <35.430058, 37.914398, 40.413380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572472, 37.548897, 40.491657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008476, -0.206246, -0.978463,
		0.934435, 0.350023, -0.065685,
		0.356032, -0.913754, 0.195690,
		35.679283, 37.274769, 40.550365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931931, 37.878193, 39.938801>,  <35.430058, 37.914398, 40.413380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931931, 37.878193, 39.938801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.864754, 37.498817, 40.046322>,  <35.824448, 37.271191, 40.110832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.864754, 37.498817, 40.046322>,  <35.931931, 37.878193, 39.938801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864754, 37.498817, 40.046322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167441, -0.296156, -0.940348,
		0.971472, -0.112918, 0.208546,
		-0.167944, -0.948442, 0.268800,
		35.814369, 37.214287, 40.126961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450150, 37.544903, 39.632832>,  <35.931931, 37.878193, 39.938801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450150, 37.544903, 39.632832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.193699, 37.252422, 39.726044>,  <36.039829, 37.076935, 39.781971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.193699, 37.252422, 39.726044>,  <36.450150, 37.544903, 39.632832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193699, 37.252422, 39.726044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221055, -0.466727, -0.856330,
		0.734913, -0.497500, 0.460866,
		-0.641122, -0.731204, 0.233029,
		36.001362, 37.033062, 39.795952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781929, 36.935215, 39.533623>,  <36.450150, 37.544903, 39.632832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781929, 36.935215, 39.533623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.403137, 36.807354, 39.546589>,  <36.175861, 36.730637, 39.554371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.403137, 36.807354, 39.546589>,  <36.781929, 36.935215, 39.533623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403137, 36.807354, 39.546589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154797, -0.542330, -0.825782,
		0.281548, -0.776980, 0.563057,
		-0.946979, -0.319657, 0.032418,
		36.119045, 36.711456, 39.556313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831413, 36.299095, 39.321365>,  <36.781929, 36.935215, 39.533623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831413, 36.299095, 39.321365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.446632, 36.393841, 39.266903>,  <36.215763, 36.450687, 39.234226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.446632, 36.393841, 39.266903>,  <36.831413, 36.299095, 39.321365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446632, 36.393841, 39.266903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022698, -0.427360, -0.903796,
		-0.272263, -0.872502, 0.405725,
		-0.961955, 0.236861, -0.136158,
		36.158047, 36.464901, 39.226055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546555, 35.711651, 39.101864>,  <36.831413, 36.299095, 39.321365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546555, 35.711651, 39.101864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.324482, 36.015606, 38.966599>,  <36.191238, 36.197979, 38.885441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.324482, 36.015606, 38.966599>,  <36.546555, 35.711651, 39.101864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324482, 36.015606, 38.966599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008518, -0.401363, -0.915880,
		-0.831689, -0.511356, 0.216354,
		-0.555176, 0.759884, -0.338165,
		36.157928, 36.243572, 38.865150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008957, 35.390610, 38.776020>,  <36.546555, 35.711651, 39.101864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008957, 35.390610, 38.776020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.012756, 35.755196, 38.611511>,  <36.015038, 35.973946, 38.512806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.012756, 35.755196, 38.611511>,  <36.008957, 35.390610, 38.776020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012756, 35.755196, 38.611511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006195, -0.411334, -0.911463,
		-0.999936, 0.006112, -0.009555,
		0.009501, 0.911464, -0.411270,
		36.015606, 36.028633, 38.488129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461632, 35.356174, 38.256561>,  <36.008957, 35.390610, 38.776020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461632, 35.356174, 38.256561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.664192, 35.687172, 38.159557>,  <35.785728, 35.885769, 38.101353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.664192, 35.687172, 38.159557>,  <35.461632, 35.356174, 38.256561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664192, 35.687172, 38.159557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051491, -0.251718, -0.966430,
		-0.860760, 0.501888, -0.084862,
		0.506400, 0.827494, -0.242512,
		35.816113, 35.935421, 38.086803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029213, 35.752190, 37.703445>,  <35.461632, 35.356174, 38.256561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029213, 35.752190, 37.703445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.397255, 35.906609, 37.676964>,  <35.618080, 35.999260, 37.661076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.397255, 35.906609, 37.676964>,  <35.029213, 35.752190, 37.703445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397255, 35.906609, 37.676964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074700, 0.007041, -0.997181,
		-0.384491, 0.922453, 0.035316,
		0.920101, 0.386046, -0.066200,
		35.673286, 36.022423, 37.657104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037357, 36.314663, 37.156822>,  <35.029213, 35.752190, 37.703445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037357, 36.314663, 37.156822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.420025, 36.202911, 37.189659>,  <35.649624, 36.135860, 37.209362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.420025, 36.202911, 37.189659>,  <35.037357, 36.314663, 37.156822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420025, 36.202911, 37.189659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050177, -0.119528, -0.991562,
		0.286829, 0.952713, -0.100330,
		0.956667, -0.279374, 0.082089,
		35.707024, 36.119099, 37.214287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402885, 36.629284, 36.590218>,  <35.037357, 36.314663, 37.156822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402885, 36.629284, 36.590218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.628891, 36.326042, 36.720467>,  <35.764496, 36.144096, 36.798618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.628891, 36.326042, 36.720467>,  <35.402885, 36.629284, 36.590218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628891, 36.326042, 36.720467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095451, -0.331950, -0.938455,
		0.819541, 0.561322, -0.115194,
		0.565014, -0.758107, 0.325626,
		35.798397, 36.098610, 36.818153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982666, 36.598286, 36.161911>,  <35.402885, 36.629284, 36.590218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982666, 36.598286, 36.161911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.986313, 36.239555, 36.338821>,  <35.988503, 36.024315, 36.444969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.986313, 36.239555, 36.338821>,  <35.982666, 36.598286, 36.161911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986313, 36.239555, 36.338821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282338, -0.421993, -0.861515,
		0.959272, 0.132731, 0.249360,
		0.009121, -0.896830, 0.442281,
		35.989048, 35.970505, 36.471504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637791, 36.511478, 36.132439>,  <35.982666, 36.598286, 36.161911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637791, 36.511478, 36.132439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.434444, 36.168262, 36.161636>,  <36.312439, 35.962334, 36.179153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.434444, 36.168262, 36.161636>,  <36.637791, 36.511478, 36.132439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434444, 36.168262, 36.161636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218627, -0.210588, -0.952814,
		0.832928, -0.468417, 0.294647,
		-0.508363, -0.858043, 0.072996,
		36.281937, 35.910851, 36.183537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988644, 35.913254, 35.979183>,  <36.637791, 36.511478, 36.132439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988644, 35.913254, 35.979183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.603416, 35.832912, 35.907455>,  <36.372280, 35.784706, 35.864418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.603416, 35.832912, 35.907455>,  <36.988644, 35.913254, 35.979183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603416, 35.832912, 35.907455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203069, -0.104483, -0.973574,
		0.176811, -0.974033, 0.141411,
		-0.963069, -0.200855, -0.179322,
		36.314495, 35.772655, 35.853661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231758, 35.169708, 36.188301>,  <36.988644, 35.913254, 35.979183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231758, 35.169708, 36.188301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.612427, 35.062862, 36.127682>,  <37.840828, 34.998756, 36.091309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.612427, 35.062862, 36.127682>,  <37.231758, 35.169708, 36.188301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612427, 35.062862, 36.127682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178032, 0.077740, 0.980949,
		-0.250245, -0.960524, 0.121538,
		0.951673, -0.267116, -0.151550,
		37.897930, 34.982727, 36.082218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244457, 34.643719, 36.676250>,  <37.231758, 35.169708, 36.188301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244457, 34.643719, 36.676250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.618549, 34.764072, 36.601624>,  <37.843006, 34.836285, 36.556847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.618549, 34.764072, 36.601624>,  <37.244457, 34.643719, 36.676250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618549, 34.764072, 36.601624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169398, 0.082410, 0.982096,
		0.310877, -0.950092, 0.026102,
		0.935232, 0.300889, -0.186563,
		37.899120, 34.854340, 36.545654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638004, 34.314907, 37.095131>,  <37.244457, 34.643719, 36.676250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638004, 34.314907, 37.095131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.870728, 34.624443, 36.994991>,  <38.010361, 34.810165, 36.934906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.870728, 34.624443, 36.994991>,  <37.638004, 34.314907, 37.095131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870728, 34.624443, 36.994991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226081, 0.141802, 0.963732,
		0.781272, -0.617306, -0.092449,
		0.581808, 0.773838, -0.250348,
		38.045269, 34.856594, 36.919888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306950, 34.206009, 37.442360>,  <37.638004, 34.314907, 37.095131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306950, 34.206009, 37.442360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.320763, 34.593819, 37.345345>,  <38.329052, 34.826504, 37.287136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.320763, 34.593819, 37.345345>,  <38.306950, 34.206009, 37.442360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320763, 34.593819, 37.345345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439046, 0.203289, 0.875164,
		0.897801, -0.136709, -0.418646,
		0.034537, 0.969528, -0.242535,
		38.331123, 34.884678, 37.272583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954346, 34.464340, 37.828243>,  <38.306950, 34.206009, 37.442360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954346, 34.464340, 37.828243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.770313, 34.799587, 37.711021>,  <38.659893, 35.000736, 37.640686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.770313, 34.799587, 37.711021>,  <38.954346, 34.464340, 37.828243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770313, 34.799587, 37.711021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374469, 0.482440, 0.791849,
		0.805047, 0.254572, -0.535810,
		-0.460079, 0.838120, -0.293058,
		38.632290, 35.051022, 37.623104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323177, 34.948166, 38.046505>,  <38.954346, 34.464340, 37.828243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323177, 34.948166, 38.046505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.996914, 35.170639, 37.982819>,  <38.801155, 35.304123, 37.944607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.996914, 35.170639, 37.982819>,  <39.323177, 34.948166, 38.046505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996914, 35.170639, 37.982819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137653, 0.453888, 0.880362,
		0.561912, 0.696162, -0.446780,
		-0.815663, 0.556187, -0.159216,
		38.752216, 35.337494, 37.935055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521652, 35.671360, 38.023930>,  <39.323177, 34.948166, 38.046505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521652, 35.671360, 38.023930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.140522, 35.645775, 38.142612>,  <38.911846, 35.630424, 38.213821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.140522, 35.645775, 38.142612>,  <39.521652, 35.671360, 38.023930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140522, 35.645775, 38.142612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215723, 0.544968, 0.810230,
		-0.213519, 0.836014, -0.505461,
		-0.952824, -0.063960, 0.296708,
		38.854675, 35.626587, 38.231625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321739, 36.371906, 38.187531>,  <39.521652, 35.671360, 38.023930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321739, 36.371906, 38.187531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064053, 36.133446, 38.379192>,  <38.909439, 35.990368, 38.494190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064053, 36.133446, 38.379192>,  <39.321739, 36.371906, 38.187531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064053, 36.133446, 38.379192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153522, 0.512936, 0.844587,
		-0.749277, 0.617658, -0.238920,
		-0.644217, -0.596150, 0.479155,
		38.870789, 35.954601, 38.522938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297588, 36.742424, 38.747444>,  <39.321739, 36.371906, 38.187531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297588, 36.742424, 38.747444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.083637, 36.417233, 38.839508>,  <38.955265, 36.222118, 38.894745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.083637, 36.417233, 38.839508>,  <39.297588, 36.742424, 38.747444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083637, 36.417233, 38.839508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024375, 0.287130, 0.957581,
		-0.844577, 0.506581, -0.173396,
		-0.534880, -0.812977, 0.230155,
		38.923172, 36.173340, 38.908554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809761, 37.032742, 39.253628>,  <39.297588, 36.742424, 38.747444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809761, 37.032742, 39.253628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.850647, 36.642132, 39.329468>,  <38.875179, 36.407764, 39.374973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.850647, 36.642132, 39.329468>,  <38.809761, 37.032742, 39.253628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850647, 36.642132, 39.329468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154257, 0.172734, 0.972814,
		-0.982729, -0.128684, -0.132980,
		0.102216, -0.976526, 0.189602,
		38.881313, 36.349174, 39.386349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174072, 36.696339, 39.735294>,  <38.809761, 37.032742, 39.253628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174072, 36.696339, 39.735294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.517380, 36.497581, 39.786629>,  <38.723366, 36.378326, 39.817429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.517380, 36.497581, 39.786629>,  <38.174072, 36.696339, 39.735294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517380, 36.497581, 39.786629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193571, -0.081835, 0.977667,
		-0.475297, -0.863942, -0.166422,
		0.858267, -0.496897, 0.128338,
		38.774860, 36.348511, 39.825130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018242, 36.153072, 40.274979>,  <38.174072, 36.696339, 39.735294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018242, 36.153072, 40.274979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.417179, 36.168621, 40.250343>,  <38.656540, 36.177952, 40.235561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.417179, 36.168621, 40.250343>,  <38.018242, 36.153072, 40.274979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417179, 36.168621, 40.250343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063377, -0.046657, 0.996898,
		0.035884, -0.998154, -0.048997,
		0.997344, 0.038878, -0.061585,
		38.716381, 36.180283, 40.231869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308815, 35.696507, 40.760582>,  <38.018242, 36.153072, 40.274979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308815, 35.696507, 40.760582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.621376, 35.939049, 40.701599>,  <38.808914, 36.084572, 40.666210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.621376, 35.939049, 40.701599>,  <38.308815, 35.696507, 40.760582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621376, 35.939049, 40.701599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113298, 0.094520, 0.989055,
		0.613655, -0.789557, 0.005159,
		0.781403, 0.606355, -0.147458,
		38.855797, 36.120956, 40.657360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704453, 35.505356, 41.329880>,  <38.308815, 35.696507, 40.760582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704453, 35.505356, 41.329880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.857365, 35.852543, 41.203072>,  <38.949112, 36.060856, 41.126987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.857365, 35.852543, 41.203072>,  <38.704453, 35.505356, 41.329880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857365, 35.852543, 41.203072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180346, 0.266400, 0.946840,
		0.906277, -0.419131, -0.054694,
		0.382279, 0.867963, -0.317021,
		38.972050, 36.112930, 41.107964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282280, 35.535812, 41.683071>,  <38.704453, 35.505356, 41.329880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282280, 35.535812, 41.683071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.228558, 35.918602, 41.580185>,  <39.196323, 36.148277, 41.518456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.228558, 35.918602, 41.580185>,  <39.282280, 35.535812, 41.683071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228558, 35.918602, 41.580185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170487, 0.278009, 0.945328,
		0.976164, 0.083112, -0.200490,
		-0.134306, 0.956976, -0.257213,
		39.188267, 36.205696, 41.503021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857510, 35.964737, 41.891144>,  <39.282280, 35.535812, 41.683071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857510, 35.964737, 41.891144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.536358, 36.202141, 41.868778>,  <39.343666, 36.344585, 41.855358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.536358, 36.202141, 41.868778>,  <39.857510, 35.964737, 41.891144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536358, 36.202141, 41.868778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226798, 0.390837, 0.892081,
		0.551314, 0.703553, -0.448403,
		-0.802879, 0.593514, -0.055910,
		39.295494, 36.380196, 41.852005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137733, 36.592934, 42.157555>,  <39.857510, 35.964737, 41.891144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137733, 36.592934, 42.157555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.746151, 36.673973, 42.147812>,  <39.511200, 36.722599, 42.141964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.746151, 36.673973, 42.147812>,  <40.137733, 36.592934, 42.157555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746151, 36.673973, 42.147812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079401, 0.488156, 0.869137,
		0.187980, 0.848915, -0.493971,
		-0.978958, 0.202603, -0.024359,
		39.452465, 36.734753, 42.140503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185440, 37.299744, 42.339470>,  <40.137733, 36.592934, 42.157555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185440, 37.299744, 42.339470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.812046, 37.177750, 42.414921>,  <39.588009, 37.104553, 42.460190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.812046, 37.177750, 42.414921>,  <40.185440, 37.299744, 42.339470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812046, 37.177750, 42.414921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065377, 0.372448, 0.925748,
		-0.352595, 0.876508, -0.327737,
		-0.933490, -0.304987, 0.188627,
		39.531998, 37.086254, 42.471508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.325657, 38.118828, 42.355152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.204140, 37.778118, 42.525887>,  <39.131229, 37.573692, 42.628326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.204140, 37.778118, 42.525887>,  <39.325657, 38.118828, 42.355152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204140, 37.778118, 42.525887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155219, 0.486270, 0.859912,
		-0.940010, 0.194981, -0.279937,
		-0.303792, -0.851777, 0.426834,
		39.113003, 37.522587, 42.653938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791893, 38.271080, 42.568813>,  <39.325657, 38.118828, 42.355152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791893, 38.271080, 42.568813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909920, 37.963032, 42.795036>,  <38.980736, 37.778202, 42.930771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909920, 37.963032, 42.795036>,  <38.791893, 38.271080, 42.568813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909920, 37.963032, 42.795036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142239, 0.549911, 0.823022,
		-0.944831, -0.323288, 0.052717,
		0.295063, -0.770119, 0.565557,
		38.998440, 37.731995, 42.964703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307190, 38.301472, 43.134220>,  <38.791893, 38.271080, 42.568813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307190, 38.301472, 43.134220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.575310, 38.039883, 43.274517>,  <38.736179, 37.882927, 43.358696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.575310, 38.039883, 43.274517>,  <38.307190, 38.301472, 43.134220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575310, 38.039883, 43.274517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017182, 0.486184, 0.873688,
		-0.741893, -0.579605, 0.337124,
		0.670298, -0.653975, 0.350738,
		38.776398, 37.843689, 43.379738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969433, 37.902325, 43.732204>,  <38.307190, 38.301472, 43.134220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969433, 37.902325, 43.732204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.367332, 37.885624, 43.769588>,  <38.606071, 37.875603, 43.792019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.367332, 37.885624, 43.769588>,  <37.969433, 37.902325, 43.732204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367332, 37.885624, 43.769588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081702, 0.226269, 0.970632,
		-0.061672, -0.973170, 0.221669,
		0.994747, -0.041750, 0.093465,
		38.665756, 37.873100, 43.797626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133476, 37.476601, 44.344097>,  <37.969433, 37.902325, 43.732204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133476, 37.476601, 44.344097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.465034, 37.695099, 44.295845>,  <38.663971, 37.826199, 44.266895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.465034, 37.695099, 44.295845>,  <38.133476, 37.476601, 44.344097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465034, 37.695099, 44.295845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014789, 0.236957, 0.971408,
		0.559206, -0.803413, 0.204492,
		0.828897, 0.546241, -0.120626,
		38.713703, 37.858971, 44.259659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582726, 37.187328, 44.832218>,  <38.133476, 37.476601, 44.344097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582726, 37.187328, 44.832218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.722286, 37.552498, 44.747517>,  <38.806023, 37.771599, 44.696697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.722286, 37.552498, 44.747517>,  <38.582726, 37.187328, 44.832218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722286, 37.552498, 44.747517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064497, 0.202027, 0.977254,
		0.934939, -0.354619, 0.011606,
		0.348898, 0.912924, -0.211754,
		38.826954, 37.826374, 44.683990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145172, 37.286213, 45.167805>,  <38.582726, 37.187328, 44.832218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145172, 37.286213, 45.167805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.038853, 37.661900, 45.080875>,  <38.975060, 37.887310, 45.028717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.038853, 37.661900, 45.080875>,  <39.145172, 37.286213, 45.167805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038853, 37.661900, 45.080875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032086, 0.233930, 0.971724,
		0.963495, 0.251309, -0.092313,
		-0.265798, 0.939213, -0.217327,
		38.959114, 37.943665, 45.015678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540531, 37.646236, 45.555683>,  <39.145172, 37.286213, 45.167805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540531, 37.646236, 45.555683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.239746, 37.897831, 45.476757>,  <39.059277, 38.048786, 45.429401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.239746, 37.897831, 45.476757>,  <39.540531, 37.646236, 45.555683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239746, 37.897831, 45.476757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045056, 0.249582, 0.967305,
		0.657668, 0.736264, -0.159336,
		-0.751960, 0.628986, -0.197315,
		39.014160, 38.086525, 45.417561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738426, 38.253841, 45.797680>,  <39.540531, 37.646236, 45.555683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738426, 38.253841, 45.797680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.342701, 38.312160, 45.797661>,  <39.105267, 38.347153, 45.797649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.342701, 38.312160, 45.797661>,  <39.738426, 38.253841, 45.797680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342701, 38.312160, 45.797661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088394, 0.600042, 0.795070,
		0.115948, 0.786570, -0.606518,
		-0.989314, 0.145800, -0.000045,
		39.045906, 38.355900, 45.797646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792881, 38.848431, 46.009445>,  <39.738426, 38.253841, 45.797680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792881, 38.848431, 46.009445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.407494, 38.749695, 46.051006>,  <39.176262, 38.690453, 46.075943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.407494, 38.749695, 46.051006>,  <39.792881, 38.848431, 46.009445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407494, 38.749695, 46.051006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078693, 0.631749, 0.771168,
		-0.255995, 0.734821, -0.628096,
		-0.963470, -0.246841, 0.103899,
		39.118454, 38.675644, 46.082176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468197, 39.467079, 45.984585>,  <39.792881, 38.848431, 46.009445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468197, 39.467079, 45.984585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.224213, 39.214020, 46.175457>,  <39.077824, 39.062183, 46.289982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.224213, 39.214020, 46.175457>,  <39.468197, 39.467079, 45.984585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224213, 39.214020, 46.175457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128791, 0.673313, 0.728054,
		-0.781897, 0.382627, -0.492173,
		-0.609959, -0.632651, 0.477182,
		39.041225, 39.024223, 46.318611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941078, 39.931053, 46.236439>,  <39.468197, 39.467079, 45.984585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941078, 39.931053, 46.236439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.918270, 39.584999, 46.435757>,  <38.904587, 39.377369, 46.555347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.918270, 39.584999, 46.435757>,  <38.941078, 39.931053, 46.236439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918270, 39.584999, 46.435757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179581, 0.499853, 0.847288,
		-0.982089, -0.041175, -0.183862,
		-0.057017, -0.865131, 0.498294,
		38.901165, 39.325459, 46.585243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412971, 40.057289, 46.732948>,  <38.941078, 39.931053, 46.236439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412971, 40.057289, 46.732948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.626106, 39.746056, 46.866013>,  <38.753986, 39.559315, 46.945850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.626106, 39.746056, 46.866013>,  <38.412971, 40.057289, 46.732948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626106, 39.746056, 46.866013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051838, 0.362368, 0.930592,
		-0.844630, -0.513097, 0.152748,
		0.532835, -0.778088, 0.332665,
		38.785957, 39.512630, 46.965813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955494, 39.910885, 47.166901>,  <38.412971, 40.057289, 46.732948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955494, 39.910885, 47.166901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.299370, 39.742649, 47.282860>,  <38.505695, 39.641708, 47.352436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.299370, 39.742649, 47.282860>,  <37.955494, 39.910885, 47.166901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299370, 39.742649, 47.282860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245507, 0.157470, 0.956520,
		-0.447954, -0.893480, 0.032116,
		0.859688, -0.420592, 0.289895,
		38.557278, 39.616470, 47.369827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655380, 39.533405, 47.722149>,  <37.955494, 39.910885, 47.166901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655380, 39.533405, 47.722149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.050587, 39.563423, 47.776104>,  <38.287712, 39.581432, 47.808475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.050587, 39.563423, 47.776104>,  <37.655380, 39.533405, 47.722149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050587, 39.563423, 47.776104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133691, -0.020756, 0.990806,
		0.077155, -0.996964, -0.010475,
		0.988015, 0.075045, 0.134887,
		38.346992, 39.585938, 47.816570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822311, 39.056198, 48.325634>,  <37.655380, 39.533405, 47.722149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822311, 39.056198, 48.325634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.138088, 39.301674, 48.320560>,  <38.327557, 39.448959, 48.317516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.138088, 39.301674, 48.320560>,  <37.822311, 39.056198, 48.325634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138088, 39.301674, 48.320560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059761, -0.056285, 0.996624,
		0.610905, -0.787538, -0.081109,
		0.789445, 0.613690, -0.012679,
		38.374924, 39.485783, 48.316757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378258, 38.732540, 48.809673>,  <37.822311, 39.056198, 48.325634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378258, 38.732540, 48.809673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.485558, 39.114063, 48.755562>,  <38.549938, 39.342976, 48.723095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.485558, 39.114063, 48.755562>,  <38.378258, 38.732540, 48.809673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485558, 39.114063, 48.755562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223849, 0.074864, 0.971744,
		0.936980, -0.290955, -0.193426,
		0.268254, 0.953803, -0.135276,
		38.566032, 39.400204, 48.714977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826508, 38.866371, 49.242012>,  <38.378258, 38.732540, 48.809673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826508, 38.866371, 49.242012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.726105, 39.246792, 49.169914>,  <38.665863, 39.475044, 49.126656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.726105, 39.246792, 49.169914>,  <38.826508, 38.866371, 49.242012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726105, 39.246792, 49.169914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184222, 0.229736, 0.955659,
		0.950293, 0.206674, -0.232871,
		-0.251009, 0.951056, -0.180243,
		38.650803, 39.532108, 49.115841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371624, 39.221416, 49.472794>,  <38.826508, 38.866371, 49.242012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371624, 39.221416, 49.472794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.072735, 39.486267, 49.450016>,  <38.893402, 39.645176, 49.436352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.072735, 39.486267, 49.450016>,  <39.371624, 39.221416, 49.472794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072735, 39.486267, 49.450016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034589, 0.046815, 0.998304,
		0.663671, 0.747927, -0.012079,
		-0.747225, 0.662128, -0.056940,
		38.848568, 39.684906, 49.432934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431343, 39.720207, 50.033848>,  <39.371624, 39.221416, 49.472794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431343, 39.720207, 50.033848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.044064, 39.711555, 49.934143>,  <38.811695, 39.706364, 49.874321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.044064, 39.711555, 49.934143>,  <39.431343, 39.720207, 50.033848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044064, 39.711555, 49.934143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247897, -0.051753, 0.967403,
		-0.033828, 0.998425, 0.044744,
		-0.968195, -0.021633, -0.249258,
		38.753605, 39.705067, 49.859367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118717, 40.123894, 50.633148>,  <39.431343, 39.720207, 50.033848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118717, 40.123894, 50.633148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.823093, 39.922192, 50.454475>,  <38.645718, 39.801170, 50.347271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.823093, 39.922192, 50.454475>,  <39.118717, 40.123894, 50.633148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823093, 39.922192, 50.454475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472115, -0.085272, 0.877403,
		-0.480521, 0.859337, -0.175043,
		-0.739058, -0.504251, -0.446681,
		38.601376, 39.770916, 50.320473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496685, 40.411377, 50.895214>,  <39.118717, 40.123894, 50.633148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496685, 40.411377, 50.895214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.396969, 40.048546, 50.759529>,  <38.337139, 39.830849, 50.678116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.396969, 40.048546, 50.759529>,  <38.496685, 40.411377, 50.895214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396969, 40.048546, 50.759529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445914, -0.203419, 0.871654,
		-0.859660, 0.368554, -0.353768,
		-0.249288, -0.907077, -0.339215,
		38.322182, 39.776424, 50.657764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885201, 40.149117, 51.209270>,  <38.496685, 40.411377, 50.895214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885201, 40.149117, 51.209270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.101631, 39.830631, 51.100994>,  <38.231491, 39.639538, 51.036026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.101631, 39.830631, 51.100994>,  <37.885201, 40.149117, 51.209270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101631, 39.830631, 51.100994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454844, -0.547810, 0.702155,
		-0.707356, -0.256797, -0.658561,
		0.541078, -0.796216, -0.270694,
		38.263954, 39.591766, 51.019787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516758, 39.425282, 51.374672>,  <37.885201, 40.149117, 51.209270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516758, 39.425282, 51.374672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.913521, 39.376453, 51.388687>,  <38.151577, 39.347157, 51.397095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.913521, 39.376453, 51.388687>,  <37.516758, 39.425282, 51.374672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913521, 39.376453, 51.388687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092732, -0.507644, 0.856562,
		-0.086774, -0.852876, -0.514853,
		0.991903, -0.122070, 0.035038,
		38.211090, 39.339832, 51.399200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212505, 38.723854, 51.378197>,  <37.516758, 39.425282, 51.374672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212505, 38.723854, 51.378197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.815727, 38.736488, 51.427261>,  <36.577660, 38.744068, 51.456699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.815727, 38.736488, 51.427261>,  <37.212505, 38.723854, 51.378197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815727, 38.736488, 51.427261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125783, -0.131994, -0.983238,
		-0.014859, -0.990747, 0.134903,
		-0.991947, 0.031578, 0.122658,
		36.518143, 38.745964, 51.464058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929314, 38.086620, 51.020279>,  <37.212505, 38.723854, 51.378197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929314, 38.086620, 51.020279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638508, 38.361115, 51.029491>,  <36.464024, 38.525810, 51.035019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638508, 38.361115, 51.029491>,  <36.929314, 38.086620, 51.020279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638508, 38.361115, 51.029491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149704, -0.125681, -0.980711,
		-0.670103, -0.716439, 0.194104,
		-0.727015, 0.686235, 0.023035,
		36.420403, 38.566986, 51.036404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337059, 37.825150, 50.752380>,  <36.929314, 38.086620, 51.020279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337059, 37.825150, 50.752380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.260113, 38.217331, 50.735870>,  <36.213943, 38.452641, 50.725964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.260113, 38.217331, 50.735870>,  <36.337059, 37.825150, 50.752380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260113, 38.217331, 50.735870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357675, -0.109219, -0.927437,
		-0.913819, -0.163644, 0.371694,
		-0.192365, 0.980455, -0.041275,
		36.202404, 38.511467, 50.723488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631805, 37.835491, 50.465260>,  <36.337059, 37.825150, 50.752380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631805, 37.835491, 50.465260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.782021, 38.200249, 50.399010>,  <35.872150, 38.419102, 50.359261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.782021, 38.200249, 50.399010>,  <35.631805, 37.835491, 50.465260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782021, 38.200249, 50.399010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409892, 0.003135, -0.912129,
		-0.831242, 0.410423, 0.374953,
		0.375534, 0.911890, -0.165623,
		35.894680, 38.473816, 50.349323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123482, 38.051693, 49.871979>,  <35.631805, 37.835491, 50.465260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123482, 38.051693, 49.871979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.437138, 38.299927, 49.871414>,  <35.625332, 38.448868, 49.871075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.437138, 38.299927, 49.871414>,  <35.123482, 38.051693, 49.871979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437138, 38.299927, 49.871414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040797, -0.053826, -0.997717,
		-0.619242, 0.782292, -0.067525,
		0.784140, 0.620583, -0.001416,
		35.672379, 38.486103, 49.870991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995010, 38.516331, 49.353607>,  <35.123482, 38.051693, 49.871979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995010, 38.516331, 49.353607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.391647, 38.521873, 49.405071>,  <35.629631, 38.525200, 49.435951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.391647, 38.521873, 49.405071>,  <34.995010, 38.516331, 49.353607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391647, 38.521873, 49.405071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128371, 0.020331, -0.991518,
		-0.016359, 0.999697, 0.018381,
		0.991591, 0.013861, 0.128665,
		35.689125, 38.526031, 49.443672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228638, 39.105141, 48.975574>,  <34.995010, 38.516331, 49.353607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228638, 39.105141, 48.975574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.546883, 38.867546, 49.023193>,  <35.737831, 38.724991, 49.051765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.546883, 38.867546, 49.023193>,  <35.228638, 39.105141, 48.975574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546883, 38.867546, 49.023193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124199, -0.032406, -0.991728,
		0.592932, 0.803821, 0.047990,
		0.795617, -0.593987, 0.119049,
		35.785568, 38.689350, 49.058907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491379, 39.239765, 48.418919>,  <35.228638, 39.105141, 48.975574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491379, 39.239765, 48.418919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.694351, 38.916702, 48.539055>,  <35.816135, 38.722862, 48.611137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.694351, 38.916702, 48.539055>,  <35.491379, 39.239765, 48.418919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694351, 38.916702, 48.539055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208493, -0.223109, -0.952236,
		0.836092, 0.545808, 0.055180,
		0.507427, -0.807661, 0.300337,
		35.846581, 38.674404, 48.629154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096592, 39.351192, 48.061604>,  <35.491379, 39.239765, 48.418919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096592, 39.351192, 48.061604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.053162, 38.966942, 48.163906>,  <36.027103, 38.736393, 48.225288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.053162, 38.966942, 48.163906>,  <36.096592, 39.351192, 48.061604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053162, 38.966942, 48.163906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332678, -0.277558, -0.901270,
		0.936769, -0.012774, 0.349715,
		-0.108579, -0.960624, 0.255758,
		36.020588, 38.678753, 48.240635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699017, 39.133495, 47.851379>,  <36.096592, 39.351192, 48.061604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699017, 39.133495, 47.851379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.439213, 38.831253, 47.885315>,  <36.283329, 38.649906, 47.905678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.439213, 38.831253, 47.885315>,  <36.699017, 39.133495, 47.851379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439213, 38.831253, 47.885315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156505, -0.242050, -0.957558,
		0.744073, -0.608664, 0.275470,
		-0.649509, -0.755605, 0.084844,
		36.244362, 38.604572, 47.910767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994434, 38.439960, 47.721939>,  <36.699017, 39.133495, 47.851379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994434, 38.439960, 47.721939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.600395, 38.401306, 47.665028>,  <36.363972, 38.378113, 47.630878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.600395, 38.401306, 47.665028>,  <36.994434, 38.439960, 47.721939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600395, 38.401306, 47.665028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154768, -0.137174, -0.978381,
		0.075027, -0.985822, 0.150086,
		-0.985098, -0.096634, -0.142282,
		36.304867, 38.372314, 47.622341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996655, 37.884644, 47.278992>,  <36.994434, 38.439960, 47.721939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996655, 37.884644, 47.278992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.649685, 38.074368, 47.218849>,  <36.441505, 38.188202, 47.182766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.649685, 38.074368, 47.218849>,  <36.996655, 37.884644, 47.278992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649685, 38.074368, 47.218849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079561, -0.166066, -0.982900,
		-0.491173, -0.864550, 0.106313,
		-0.867421, 0.474315, -0.150352,
		36.389458, 38.216663, 47.173744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753807, 37.454433, 46.827274>,  <36.996655, 37.884644, 47.278992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753807, 37.454433, 46.827274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.536533, 37.786045, 46.774128>,  <36.406170, 37.985012, 46.742241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.536533, 37.786045, 46.774128>,  <36.753807, 37.454433, 46.827274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536533, 37.786045, 46.774128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015384, -0.168048, -0.985659,
		-0.839472, -0.533351, 0.104035,
		-0.543185, 0.829033, -0.132866,
		36.373577, 38.034756, 46.734268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505775, 37.257057, 46.277794>,  <36.753807, 37.454433, 46.827274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505775, 37.257057, 46.277794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.432098, 37.649151, 46.306660>,  <36.387890, 37.884407, 46.323978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.432098, 37.649151, 46.306660>,  <36.505775, 37.257057, 46.277794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432098, 37.649151, 46.306660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059732, 0.084452, -0.994636,
		-0.981073, -0.178896, -0.074107,
		-0.184195, 0.980237, 0.072167,
		36.376839, 37.943222, 46.328308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041561, 37.406662, 45.761745>,  <36.505775, 37.257057, 46.277794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041561, 37.406662, 45.761745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.166653, 37.783108, 45.813141>,  <36.241707, 38.008976, 45.843979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.166653, 37.783108, 45.813141>,  <36.041561, 37.406662, 45.761745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166653, 37.783108, 45.813141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161502, 0.185989, -0.969188,
		-0.936013, 0.282338, 0.210155,
		0.312725, 0.941113, 0.128490,
		36.260471, 38.065441, 45.851688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616356, 37.984505, 45.541725>,  <36.041561, 37.406662, 45.761745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616356, 37.984505, 45.541725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.991421, 38.122742, 45.527023>,  <36.216461, 38.205685, 45.518200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.991421, 38.122742, 45.527023>,  <35.616356, 37.984505, 45.541725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991421, 38.122742, 45.527023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133850, 0.261488, -0.955881,
		-0.320738, 0.901214, 0.291445,
		0.937663, 0.345597, -0.036758,
		36.272720, 38.226421, 45.515995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488216, 38.537617, 45.185303>,  <35.616356, 37.984505, 45.541725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488216, 38.537617, 45.185303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.878376, 38.458237, 45.146923>,  <36.112473, 38.410610, 45.123894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.878376, 38.458237, 45.146923>,  <35.488216, 38.537617, 45.185303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878376, 38.458237, 45.146923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095945, 0.009663, -0.995340,
		0.198454, 0.980063, -0.009615,
		0.975403, -0.198451, -0.095950,
		36.170998, 38.398701, 45.118137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798416, 39.159721, 44.756710>,  <35.488216, 38.537617, 45.185303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798416, 39.159721, 44.756710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.025543, 38.831463, 44.731026>,  <36.161819, 38.634510, 44.715614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.025543, 38.831463, 44.731026>,  <35.798416, 39.159721, 44.756710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025543, 38.831463, 44.731026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069145, 0.030173, -0.997150,
		0.820243, 0.570643, -0.039610,
		0.567821, -0.820644, -0.064207,
		36.195889, 38.585270, 44.711765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957596, 39.192070, 44.033428>,  <35.798416, 39.159721, 44.756710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957596, 39.192070, 44.033428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.120541, 38.839779, 44.130074>,  <36.218307, 38.628403, 44.188061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.120541, 38.839779, 44.130074>,  <35.957596, 39.192070, 44.033428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120541, 38.839779, 44.130074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156135, -0.193501, -0.968596,
		0.899821, 0.432294, 0.058687,
		0.407363, -0.880726, 0.241613,
		36.242748, 38.575562, 44.202557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625431, 39.095978, 43.660378>,  <35.957596, 39.192070, 44.033428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625431, 39.095978, 43.660378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.450283, 38.747398, 43.748787>,  <36.345196, 38.538250, 43.801830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.450283, 38.747398, 43.748787>,  <36.625431, 39.095978, 43.660378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450283, 38.747398, 43.748787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016419, -0.253551, -0.967183,
		0.898889, -0.419871, 0.125330,
		-0.437870, -0.871447, 0.221020,
		36.318924, 38.485966, 43.815094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.466507, 34.145412, 25.887625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.093418, 34.098488, 26.024017>,  <42.869564, 34.070335, 26.105854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.093418, 34.098488, 26.024017>,  <43.466507, 34.145412, 25.887625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093418, 34.098488, 26.024017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305428, 0.245662, 0.919980,
		-0.191686, 0.962231, -0.193305,
		-0.932722, -0.117307, 0.340982,
		42.813602, 34.063297, 26.126312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239582, 34.761196, 26.310575>,  <43.466507, 34.145412, 25.887625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.239582, 34.761196, 26.310575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.986012, 34.468338, 26.410261>,  <42.833870, 34.292625, 26.470072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.986012, 34.468338, 26.410261>,  <43.239582, 34.761196, 26.310575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986012, 34.468338, 26.410261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215617, 0.142150, 0.966076,
		-0.742730, 0.666154, 0.067750,
		-0.633925, -0.732142, 0.249213,
		42.795834, 34.248695, 26.485025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764153, 35.108364, 26.787804>,  <43.239582, 34.761196, 26.310575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764153, 35.108364, 26.787804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.764332, 34.712608, 26.845913>,  <42.764439, 34.475155, 26.880779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.764332, 34.712608, 26.845913>,  <42.764153, 35.108364, 26.787804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764332, 34.712608, 26.845913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095923, 0.144647, 0.984823,
		-0.995389, 0.013490, 0.094970,
		0.000452, -0.989391, 0.145274,
		42.764469, 34.415791, 26.889496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282024, 35.058437, 27.279444>,  <42.764153, 35.108364, 26.787804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282024, 35.058437, 27.279444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.466133, 34.703465, 27.289450>,  <42.576599, 34.490482, 27.295454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.466133, 34.703465, 27.289450>,  <42.282024, 35.058437, 27.279444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466133, 34.703465, 27.289450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160999, -0.055725, 0.985380,
		-0.873060, -0.457566, -0.168524,
		0.460268, -0.887428, 0.025016,
		42.604214, 34.437237, 27.296955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810577, 34.611797, 27.668026>,  <42.282024, 35.058437, 27.279444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810577, 34.611797, 27.668026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.175438, 34.448360, 27.680853>,  <42.394356, 34.350300, 27.688549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.175438, 34.448360, 27.680853>,  <41.810577, 34.611797, 27.668026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175438, 34.448360, 27.680853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092067, -0.128039, 0.987486,
		-0.399370, -0.903693, -0.154409,
		0.912155, -0.408588, 0.032066,
		42.449085, 34.325783, 27.690472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735371, 33.986271, 28.030212>,  <41.810577, 34.611797, 27.668026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735371, 33.986271, 28.030212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.116844, 34.094383, 28.083040>,  <42.345726, 34.159252, 28.114737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.116844, 34.094383, 28.083040>,  <41.735371, 33.986271, 28.030212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116844, 34.094383, 28.083040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100147, -0.128724, 0.986611,
		0.283665, -0.954137, -0.095693,
		0.953679, 0.270283, 0.132068,
		42.402946, 34.175468, 28.122662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170204, 33.406292, 28.284300>,  <41.735371, 33.986271, 28.030212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170204, 33.406292, 28.284300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.357059, 33.741379, 28.397446>,  <42.469173, 33.942432, 28.465334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.357059, 33.741379, 28.397446>,  <42.170204, 33.406292, 28.284300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357059, 33.741379, 28.397446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059249, -0.348855, 0.935302,
		0.882198, -0.420154, -0.212597,
		0.467136, 0.837717, 0.282866,
		42.497200, 33.992695, 28.482306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485310, 33.289864, 29.002769>,  <42.170204, 33.406292, 28.284300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485310, 33.289864, 29.002769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.579586, 33.678452, 28.992266>,  <42.636154, 33.911606, 28.985964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.579586, 33.678452, 28.992266>,  <42.485310, 33.289864, 29.002769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579586, 33.678452, 28.992266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064147, 0.011410, 0.997875,
		0.969708, -0.236878, -0.059627,
		0.235695, 0.971472, -0.026259,
		42.650295, 33.969894, 28.984388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942856, 33.376865, 29.483490>,  <42.485310, 33.289864, 29.002769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942856, 33.376865, 29.483490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.826283, 33.754261, 29.420368>,  <42.756336, 33.980698, 29.382496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.826283, 33.754261, 29.420368>,  <42.942856, 33.376865, 29.483490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.826283, 33.754261, 29.420368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085988, 0.190134, 0.977986,
		0.952718, 0.271450, -0.136540,
		-0.291435, 0.943485, -0.157802,
		42.738853, 34.037308, 29.373028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499275, 33.717178, 29.731821>,  <42.942856, 33.376865, 29.483490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499275, 33.717178, 29.731821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.171589, 33.946304, 29.742973>,  <42.974979, 34.083778, 29.749664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.171589, 33.946304, 29.742973>,  <43.499275, 33.717178, 29.731821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171589, 33.946304, 29.742973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166681, 0.191302, 0.967275,
		0.548735, 0.797049, -0.252194,
		-0.819211, 0.572814, 0.027879,
		42.925827, 34.118149, 29.751337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718109, 34.263306, 30.067915>,  <43.499275, 33.717178, 29.731821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718109, 34.263306, 30.067915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.319557, 34.254597, 30.100775>,  <43.080425, 34.249371, 30.120491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.319557, 34.254597, 30.100775>,  <43.718109, 34.263306, 30.067915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.319557, 34.254597, 30.100775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074712, 0.236289, 0.968806,
		-0.040506, 0.971439, -0.233807,
		-0.996382, -0.021774, 0.082149,
		43.020641, 34.248066, 30.125420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586853, 34.896671, 30.457630>,  <43.718109, 34.263306, 30.067915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586853, 34.896671, 30.457630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.265930, 34.658058, 30.466171>,  <43.073376, 34.514889, 30.471296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.265930, 34.658058, 30.466171>,  <43.586853, 34.896671, 30.457630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265930, 34.658058, 30.466171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138484, 0.220808, 0.965435,
		-0.580629, 0.771616, -0.259766,
		-0.802304, -0.596533, 0.021351,
		43.025238, 34.479099, 30.472576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239120, 35.214119, 30.984081>,  <43.586853, 34.896671, 30.457630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.239120, 35.214119, 30.984081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.043159, 34.867874, 30.942698>,  <42.925583, 34.660126, 30.917868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.043159, 34.867874, 30.942698>,  <43.239120, 35.214119, 30.984081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043159, 34.867874, 30.942698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312137, 0.063361, 0.947922,
		-0.813979, 0.496687, -0.301232,
		-0.489907, -0.865614, -0.103460,
		42.896187, 34.608189, 30.911659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506695, 35.319263, 31.358633>,  <43.239120, 35.214119, 30.984081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.506695, 35.319263, 31.358633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.603939, 34.931961, 31.335373>,  <42.662285, 34.699581, 31.321417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.603939, 34.931961, 31.335373>,  <42.506695, 35.319263, 31.358633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603939, 34.931961, 31.335373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118665, -0.089185, 0.988921,
		-0.962713, -0.233515, -0.136580,
		0.243109, -0.968254, -0.058149,
		42.676872, 34.641483, 31.317928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939449, 34.945660, 31.784107>,  <42.506695, 35.319263, 31.358633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939449, 34.945660, 31.784107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.288303, 34.750107, 31.776428>,  <42.497616, 34.632774, 31.771820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.288303, 34.750107, 31.776428>,  <41.939449, 34.945660, 31.784107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288303, 34.750107, 31.776428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089580, -0.198137, 0.976072,
		-0.480988, -0.849551, -0.216597,
		0.872139, -0.488882, -0.019199,
		42.549946, 34.603443, 31.770668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798302, 34.263538, 32.145267>,  <41.939449, 34.945660, 31.784107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798302, 34.263538, 32.145267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.191780, 34.335136, 32.152164>,  <42.427868, 34.378094, 32.156303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.191780, 34.335136, 32.152164>,  <41.798302, 34.263538, 32.145267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191780, 34.335136, 32.152164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067078, -0.454220, 0.888361,
		0.166846, -0.872722, -0.458823,
		0.983699, 0.178997, 0.017244,
		42.486889, 34.388836, 32.157337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068130, 33.662373, 32.386135>,  <41.798302, 34.263538, 32.145267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068130, 33.662373, 32.386135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.368042, 33.919319, 32.449623>,  <42.547989, 34.073486, 32.487717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.368042, 33.919319, 32.449623>,  <42.068130, 33.662373, 32.386135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368042, 33.919319, 32.449623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291896, -0.536370, 0.791899,
		0.593823, -0.547421, -0.589664,
		0.749781, 0.642368, 0.158719,
		42.592976, 34.112030, 32.497238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687489, 33.223392, 32.541656>,  <42.068130, 33.662373, 32.386135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.687489, 33.223392, 32.541656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.771542, 33.579861, 32.702484>,  <42.821972, 33.793743, 32.798981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.771542, 33.579861, 32.702484>,  <42.687489, 33.223392, 32.541656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.771542, 33.579861, 32.702484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441581, -0.453420, 0.774220,
		0.872268, 0.014858, -0.488802,
		0.210130, 0.891173, 0.402065,
		42.834579, 33.847214, 32.823105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.283092, 33.112022, 32.854298>,  <42.687489, 33.223392, 32.541656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.283092, 33.112022, 32.854298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.169739, 33.458050, 33.019875>,  <43.101727, 33.665665, 33.119221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.169739, 33.458050, 33.019875>,  <43.283092, 33.112022, 32.854298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169739, 33.458050, 33.019875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356102, -0.305859, 0.882973,
		0.890442, 0.397625, -0.221378,
		-0.283382, 0.865069, 0.413945,
		43.084724, 33.717571, 33.144058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.947102, 33.303577, 33.271599>,  <43.283092, 33.112022, 32.854298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.947102, 33.303577, 33.271599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.625797, 33.486752, 33.423950>,  <43.433014, 33.596657, 33.515362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.625797, 33.486752, 33.423950>,  <43.947102, 33.303577, 33.271599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.625797, 33.486752, 33.423950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322023, -0.204062, 0.924478,
		0.501078, 0.865246, 0.016448,
		-0.803258, 0.457939, 0.380880,
		43.384819, 33.624134, 33.538216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198448, 33.826607, 33.779633>,  <43.947102, 33.303577, 33.271599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198448, 33.826607, 33.779633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.831577, 33.682232, 33.847176>,  <43.611454, 33.595608, 33.887703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.831577, 33.682232, 33.847176>,  <44.198448, 33.826607, 33.779633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.831577, 33.682232, 33.847176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256186, -0.209513, 0.943649,
		-0.305220, 0.908751, 0.284627,
		-0.917175, -0.360939, 0.168862,
		43.556423, 33.573952, 33.897835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705223, 33.381168, 33.646702>,  <44.198448, 33.826607, 33.779633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705223, 33.381168, 33.646702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.029621, 33.584866, 33.531498>,  <45.224262, 33.707085, 33.462376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.029621, 33.584866, 33.531498>,  <44.705223, 33.381168, 33.646702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.029621, 33.584866, 33.531498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045322, -0.436127, -0.898743,
		-0.583289, 0.741934, -0.330618,
		0.810999, 0.509243, -0.288014,
		45.272923, 33.737637, 33.445095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.492409, 33.741585, 33.018387>,  <44.705223, 33.381168, 33.646702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.492409, 33.741585, 33.018387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.892109, 33.752060, 33.007023>,  <45.131931, 33.758347, 33.000206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.892109, 33.752060, 33.007023>,  <44.492409, 33.741585, 33.018387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892109, 33.752060, 33.007023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026422, -0.073332, -0.996957,
		-0.028193, 0.996963, -0.072585,
		0.999253, 0.026189, -0.028410,
		45.191883, 33.759918, 32.998501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.686630, 34.280315, 32.574661>,  <44.492409, 33.741585, 33.018387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.686630, 34.280315, 32.574661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.977028, 34.005409, 32.564922>,  <45.151268, 33.840466, 32.559078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.977028, 34.005409, 32.564922>,  <44.686630, 34.280315, 32.574661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977028, 34.005409, 32.564922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053791, -0.021453, -0.998322,
		0.685591, 0.726088, -0.052543,
		0.725997, -0.687267, -0.024348,
		45.194828, 33.799229, 32.557617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.044319, 34.468075, 31.939682>,  <44.686630, 34.280315, 32.574661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.044319, 34.468075, 31.939682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.181911, 34.098751, 32.008003>,  <45.264465, 33.877155, 32.048996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.181911, 34.098751, 32.008003>,  <45.044319, 34.468075, 31.939682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.181911, 34.098751, 32.008003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028036, -0.171723, -0.984746,
		0.938559, 0.343518, -0.033182,
		0.343977, -0.923312, 0.170803,
		45.285103, 33.821758, 32.059246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.679111, 34.379791, 31.547037>,  <45.044319, 34.468075, 31.939682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.679111, 34.379791, 31.547037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.493889, 34.030212, 31.606091>,  <45.382755, 33.820465, 31.641523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.493889, 34.030212, 31.606091>,  <45.679111, 34.379791, 31.547037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.493889, 34.030212, 31.606091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022482, -0.154932, -0.987669,
		0.886042, -0.460668, 0.052095,
		-0.463059, -0.873946, 0.147633,
		45.354973, 33.768028, 31.650381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.082188, 33.945145, 31.179266>,  <45.679111, 34.379791, 31.547037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.082188, 33.945145, 31.179266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.761929, 33.718552, 31.257303>,  <45.569775, 33.582596, 31.304125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.761929, 33.718552, 31.257303>,  <46.082188, 33.945145, 31.179266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.761929, 33.718552, 31.257303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073905, -0.416515, -0.906120,
		0.594560, -0.711064, 0.375347,
		-0.800647, -0.566483, 0.195092,
		45.521736, 33.548607, 31.315830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.246677, 33.339867, 30.919950>,  <46.082188, 33.945145, 31.179266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.246677, 33.339867, 30.919950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.850342, 33.286884, 30.930449>,  <45.612541, 33.255096, 30.936747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.850342, 33.286884, 30.930449>,  <46.246677, 33.339867, 30.919950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.850342, 33.286884, 30.930449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032221, -0.420688, -0.906633,
		0.131127, -0.897484, 0.421102,
		-0.990841, -0.132453, 0.026246,
		45.553089, 33.247150, 30.938322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.120285, 32.621548, 30.700308>,  <46.246677, 33.339867, 30.919950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.120285, 32.621548, 30.700308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.765644, 32.804276, 30.671320>,  <45.552860, 32.913914, 30.653927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.765644, 32.804276, 30.671320>,  <46.120285, 32.621548, 30.700308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.765644, 32.804276, 30.671320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132420, -0.400817, -0.906538,
		-0.443174, -0.794141, 0.415857,
		-0.886601, 0.456822, -0.072472,
		45.499664, 32.941322, 30.649578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.597393, 32.115551, 30.519142>,  <46.120285, 32.621548, 30.700308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.597393, 32.115551, 30.519142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.444702, 32.459015, 30.382330>,  <45.353088, 32.665092, 30.300243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.444702, 32.459015, 30.382330>,  <45.597393, 32.115551, 30.519142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.444702, 32.459015, 30.382330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114281, -0.411060, -0.904417,
		-0.917184, -0.306150, 0.255040,
		-0.381724, 0.858663, -0.342030,
		45.330185, 32.716614, 30.279720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.137497, 31.866652, 30.055613>,  <45.597393, 32.115551, 30.519142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.137497, 31.866652, 30.055613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.191616, 32.251137, 29.959476>,  <45.224087, 32.481827, 29.901794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.191616, 32.251137, 29.959476>,  <45.137497, 31.866652, 30.055613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.191616, 32.251137, 29.959476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104802, -0.227327, -0.968163,
		-0.985246, 0.156180, 0.069980,
		0.135299, 0.961213, -0.240341,
		45.232204, 32.539501, 29.887375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.547791, 32.151428, 29.748402>,  <45.137497, 31.866652, 30.055613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.547791, 32.151428, 29.748402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.865883, 32.358650, 29.622404>,  <45.056740, 32.482983, 29.546804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.865883, 32.358650, 29.622404>,  <44.547791, 32.151428, 29.748402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865883, 32.358650, 29.622404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289183, -0.132541, -0.948054,
		-0.532895, 0.845015, 0.044412,
		0.795234, 0.518056, -0.314995,
		45.104454, 32.514069, 29.527906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.230690, 32.739716, 29.251480>,  <44.547791, 32.151428, 29.748402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.230690, 32.739716, 29.251480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.620907, 32.691532, 29.177929>,  <44.855038, 32.662621, 29.133799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.620907, 32.691532, 29.177929>,  <44.230690, 32.739716, 29.251480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.620907, 32.691532, 29.177929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199851, -0.137625, -0.970113,
		0.091550, 0.983132, -0.158333,
		0.975540, -0.120457, -0.183880,
		44.913570, 32.655396, 29.122765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322224, 33.132759, 28.685844>,  <44.230690, 32.739716, 29.251480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322224, 33.132759, 28.685844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.638409, 32.887753, 28.685829>,  <44.828117, 32.740749, 28.685820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.638409, 32.887753, 28.685829>,  <44.322224, 33.132759, 28.685844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.638409, 32.887753, 28.685829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170647, -0.220166, -0.960420,
		0.588262, 0.759180, -0.278556,
		0.790460, -0.612513, -0.000037,
		44.875546, 32.703999, 28.685818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671303, 33.339577, 28.110256>,  <44.322224, 33.132759, 28.685844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671303, 33.339577, 28.110256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.822575, 32.977985, 28.190052>,  <44.913338, 32.761028, 28.237930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.822575, 32.977985, 28.190052>,  <44.671303, 33.339577, 28.110256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.822575, 32.977985, 28.190052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069919, -0.242771, -0.967561,
		0.923087, 0.351965, -0.155017,
		0.378181, -0.903982, 0.199490,
		44.936028, 32.706791, 28.249899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.111206, 33.268730, 27.572054>,  <44.671303, 33.339577, 28.110256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.111206, 33.268730, 27.572054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.026627, 32.910725, 27.729151>,  <44.975880, 32.695923, 27.823408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.026627, 32.910725, 27.729151>,  <45.111206, 33.268730, 27.572054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.026627, 32.910725, 27.729151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152909, -0.366586, -0.917733,
		0.965354, -0.254106, -0.059341,
		-0.211448, -0.895011, 0.392740,
		44.963192, 32.642220, 27.846973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.534512, 32.732807, 27.163750>,  <45.111206, 33.268730, 27.572054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.534512, 32.732807, 27.163750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.252651, 32.510929, 27.340734>,  <45.083534, 32.377804, 27.446926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.252651, 32.510929, 27.340734>,  <45.534512, 32.732807, 27.163750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.252651, 32.510929, 27.340734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127683, -0.514275, -0.848067,
		0.697968, -0.654090, 0.291561,
		-0.704655, -0.554696, 0.442464,
		45.041256, 32.344521, 27.473475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.606319, 32.153687, 26.795240>,  <45.534512, 32.732807, 27.163750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.606319, 32.153687, 26.795240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.254925, 32.098335, 26.978159>,  <45.044090, 32.065125, 27.087910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.254925, 32.098335, 26.978159>,  <45.606319, 32.153687, 26.795240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.254925, 32.098335, 26.978159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366045, -0.420184, -0.830336,
		0.307049, -0.896826, 0.318471,
		-0.878483, -0.138379, 0.457295,
		44.991379, 32.056820, 27.115347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.324036, 31.466606, 26.678225>,  <45.606319, 32.153687, 26.795240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.324036, 31.466606, 26.678225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.999023, 31.675070, 26.782681>,  <44.804016, 31.800148, 26.845354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.999023, 31.675070, 26.782681>,  <45.324036, 31.466606, 26.678225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.999023, 31.675070, 26.782681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515053, -0.432068, -0.740296,
		-0.272980, -0.736012, 0.619490,
		-0.812528, 0.521156, 0.261140,
		44.755264, 31.831417, 26.861023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.800953, 30.988268, 26.720135>,  <45.324036, 31.466606, 26.678225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.800953, 30.988268, 26.720135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.609959, 31.337805, 26.683470>,  <44.495361, 31.547527, 26.661470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.609959, 31.337805, 26.683470>,  <44.800953, 30.988268, 26.720135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.609959, 31.337805, 26.683470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567494, -0.386362, -0.727100,
		-0.670787, -0.295164, 0.680384,
		-0.477488, 0.873844, -0.091663,
		44.466713, 31.599958, 26.655972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182350, 30.785519, 26.448254>,  <44.800953, 30.988268, 26.720135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182350, 30.785519, 26.448254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.155582, 31.176111, 26.366270>,  <44.139523, 31.410467, 26.317080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.155582, 31.176111, 26.366270>,  <44.182350, 30.785519, 26.448254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.155582, 31.176111, 26.366270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490305, -0.211087, -0.845603,
		-0.868978, 0.043905, 0.492899,
		-0.066918, 0.976481, -0.204957,
		44.135506, 31.469055, 26.304783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508591, 30.918194, 26.279753>,  <44.182350, 30.785519, 26.448254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508591, 30.918194, 26.279753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.730328, 31.209017, 26.117718>,  <43.863369, 31.383511, 26.020496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.730328, 31.209017, 26.117718>,  <43.508591, 30.918194, 26.279753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730328, 31.209017, 26.117718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348605, -0.239135, -0.906250,
		-0.755766, 0.643586, 0.120894,
		0.554340, 0.727057, -0.405087,
		43.896629, 31.427134, 25.996191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.007122, 36.193916, 40.162457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607376, 36.197380, 40.176334>,  <39.367531, 36.199459, 40.184662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607376, 36.197380, 40.176334>,  <40.007122, 36.193916, 40.162457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607376, 36.197380, 40.176334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035376, -0.380871, -0.923951,
		0.005210, -0.924588, 0.380934,
		-0.999361, 0.008662, 0.034693,
		39.307568, 36.199978, 40.186741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704216, 35.472507, 39.940289>,  <40.007122, 36.193916, 40.162457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704216, 35.472507, 39.940289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427399, 35.758209, 39.898491>,  <39.261307, 35.929630, 39.873413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427399, 35.758209, 39.898491>,  <39.704216, 35.472507, 39.940289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427399, 35.758209, 39.898491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252679, -0.375292, -0.891801,
		-0.676188, -0.590760, 0.440196,
		-0.692042, 0.714253, -0.104495,
		39.219788, 35.972485, 39.867142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128448, 35.089622, 39.595970>,  <39.704216, 35.472507, 39.940289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128448, 35.089622, 39.595970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030212, 35.472878, 39.537102>,  <38.971272, 35.702831, 39.501781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030212, 35.472878, 39.537102>,  <39.128448, 35.089622, 39.595970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030212, 35.472878, 39.537102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395360, -0.237620, -0.887258,
		-0.885084, -0.159721, 0.437167,
		-0.245594, 0.958137, -0.147167,
		38.956535, 35.760319, 39.492950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436535, 35.021149, 39.517529>,  <39.128448, 35.089622, 39.595970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436535, 35.021149, 39.517529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585976, 35.341953, 39.331112>,  <38.675640, 35.534435, 39.219261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585976, 35.341953, 39.331112>,  <38.436535, 35.021149, 39.517529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585976, 35.341953, 39.331112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375499, -0.328654, -0.866595,
		-0.848189, 0.498759, 0.178371,
		0.373599, 0.802014, -0.466044,
		38.698055, 35.582558, 39.191299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935059, 35.285599, 39.095818>,  <38.436535, 35.021149, 39.517529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935059, 35.285599, 39.095818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234295, 35.480202, 38.915295>,  <38.413837, 35.596962, 38.806980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234295, 35.480202, 38.915295>,  <37.935059, 35.285599, 39.095818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234295, 35.480202, 38.915295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376873, -0.248292, -0.892367,
		-0.546198, 0.837653, -0.002393,
		0.748088, 0.486507, -0.451305,
		38.458721, 35.626152, 38.779903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568420, 35.547024, 38.453178>,  <37.935059, 35.285599, 39.095818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568420, 35.547024, 38.453178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963181, 35.591888, 38.406807>,  <38.200039, 35.618809, 38.378983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963181, 35.591888, 38.406807>,  <37.568420, 35.547024, 38.453178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963181, 35.591888, 38.406807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089768, -0.215227, -0.972430,
		-0.134020, 0.970102, -0.202340,
		0.986905, 0.112161, -0.115928,
		38.259251, 35.625538, 38.372028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745216, 36.129974, 37.953766>,  <37.568420, 35.547024, 38.453178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745216, 36.129974, 37.953766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047523, 35.868057, 37.950737>,  <38.228909, 35.710907, 37.948921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047523, 35.868057, 37.950737>,  <37.745216, 36.129974, 37.953766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047523, 35.868057, 37.950737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170329, -0.185406, -0.967788,
		0.632297, 0.732715, -0.251655,
		0.755770, -0.654793, -0.007571,
		38.274254, 35.671619, 37.948467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870583, 36.068066, 37.322338>,  <37.745216, 36.129974, 37.953766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870583, 36.068066, 37.322338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087746, 35.755795, 37.446136>,  <38.218044, 35.568432, 37.520416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087746, 35.755795, 37.446136>,  <37.870583, 36.068066, 37.322338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087746, 35.755795, 37.446136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036446, -0.346290, -0.937419,
		0.838998, 0.520216, -0.159552,
		0.542912, -0.780678, 0.309497,
		38.250618, 35.521591, 37.538986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478439, 36.173698, 36.927567>,  <37.870583, 36.068066, 37.322338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478439, 36.173698, 36.927567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422295, 35.797417, 37.051098>,  <38.388611, 35.571648, 37.125217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422295, 35.797417, 37.051098>,  <38.478439, 36.173698, 36.927567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422295, 35.797417, 37.051098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074816, -0.300950, -0.950701,
		0.987270, -0.156543, -0.028139,
		-0.140357, -0.940704, 0.308830,
		38.380188, 35.515205, 37.143745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962505, 35.797371, 36.602322>,  <38.478439, 36.173698, 36.927567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962505, 35.797371, 36.602322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675777, 35.535904, 36.699387>,  <38.503742, 35.379025, 36.757626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675777, 35.535904, 36.699387>,  <38.962505, 35.797371, 36.602322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675777, 35.535904, 36.699387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010577, -0.358182, -0.933592,
		0.697177, -0.666651, 0.263666,
		-0.716820, -0.653668, 0.242665,
		38.460732, 35.339802, 36.772186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159115, 35.220451, 36.280914>,  <38.962505, 35.797371, 36.602322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159115, 35.220451, 36.280914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774559, 35.138653, 36.354580>,  <38.543827, 35.089573, 36.398781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774559, 35.138653, 36.354580>,  <39.159115, 35.220451, 36.280914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774559, 35.138653, 36.354580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079637, -0.433840, -0.897463,
		0.263425, -0.877476, 0.400803,
		-0.961387, -0.204496, 0.184164,
		38.486141, 35.077305, 36.409828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079197, 34.528439, 35.994740>,  <39.159115, 35.220451, 36.280914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079197, 34.528439, 35.994740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709682, 34.679714, 36.018684>,  <38.487972, 34.770481, 36.033051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709682, 34.679714, 36.018684>,  <39.079197, 34.528439, 35.994740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709682, 34.679714, 36.018684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194816, -0.329635, -0.923790,
		-0.329635, -0.865050, 0.378191,
		0.923790, -0.378191, -0.059866,
		38.432545, 34.793171, 36.036644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600842, 34.027779, 35.508873>,  <39.079197, 34.528439, 35.994740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600842, 34.027779, 35.508873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437180, 34.388470, 35.564693>,  <38.338982, 34.604885, 35.598186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437180, 34.388470, 35.564693>,  <38.600842, 34.027779, 35.508873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437180, 34.388470, 35.564693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314322, 0.004292, -0.949307,
		-0.856617, -0.432280, 0.281677,
		-0.409158, 0.901729, 0.139552,
		38.314434, 34.658989, 35.606560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001965, 33.660870, 35.958996>,  <38.600842, 34.027779, 35.508873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001965, 33.660870, 35.958996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833355, 33.875153, 36.251663>,  <38.732189, 34.003723, 36.427265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833355, 33.875153, 36.251663>,  <39.001965, 33.660870, 35.958996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833355, 33.875153, 36.251663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902741, 0.171456, 0.394540,
		0.085907, 0.826816, -0.555873,
		-0.421520, 0.535703, 0.731671,
		38.706898, 34.035862, 36.471165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927940, 33.055946, 35.587933>,  <39.001965, 33.660870, 35.958996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927940, 33.055946, 35.587933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132095, 32.750767, 35.746628>,  <39.254589, 32.567657, 35.841846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132095, 32.750767, 35.746628>,  <38.927940, 33.055946, 35.587933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132095, 32.750767, 35.746628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252431, 0.308107, 0.917251,
		-0.822058, -0.568306, -0.035338,
		0.510391, -0.762954, 0.396740,
		39.285213, 32.521881, 35.865650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511147, 32.681515, 36.015839>,  <38.927940, 33.055946, 35.587933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511147, 32.681515, 36.015839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884712, 32.612148, 36.140888>,  <39.108852, 32.570530, 36.215916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884712, 32.612148, 36.140888>,  <38.511147, 32.681515, 36.015839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884712, 32.612148, 36.140888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284552, 0.168780, 0.943686,
		-0.216416, -0.970278, 0.108280,
		0.933914, -0.173417, 0.312621,
		39.164886, 32.560123, 36.234676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486214, 32.097202, 36.523720>,  <38.511147, 32.681515, 36.015839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486214, 32.097202, 36.523720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809582, 32.326912, 36.575363>,  <39.003601, 32.464737, 36.606350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809582, 32.326912, 36.575363>,  <38.486214, 32.097202, 36.523720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809582, 32.326912, 36.575363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206308, 0.071017, 0.975907,
		0.551266, -0.815579, 0.175888,
		0.808420, 0.574271, 0.129111,
		39.052109, 32.499195, 36.614098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855030, 31.730669, 37.021580>,  <38.486214, 32.097202, 36.523720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855030, 31.730669, 37.021580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950390, 32.119061, 37.029182>,  <39.007607, 32.352097, 37.033745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950390, 32.119061, 37.029182>,  <38.855030, 31.730669, 37.021580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950390, 32.119061, 37.029182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056283, -0.005726, 0.998398,
		0.969535, -0.239088, 0.053284,
		0.238400, 0.970981, 0.019008,
		39.021912, 32.410355, 37.034885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195679, 31.808517, 37.615002>,  <38.855030, 31.730669, 37.021580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195679, 31.808517, 37.615002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155190, 32.193390, 37.513844>,  <39.130894, 32.424313, 37.453148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155190, 32.193390, 37.513844>,  <39.195679, 31.808517, 37.615002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155190, 32.193390, 37.513844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203672, 0.228777, 0.951934,
		0.973792, 0.147870, 0.172811,
		-0.101227, 0.962183, -0.252899,
		39.124821, 32.482044, 37.437973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671429, 32.229675, 38.059807>,  <39.195679, 31.808517, 37.615002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671429, 32.229675, 38.059807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378769, 32.466160, 37.924065>,  <39.203175, 32.608051, 37.842621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378769, 32.466160, 37.924065>,  <39.671429, 32.229675, 38.059807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378769, 32.466160, 37.924065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156574, 0.338763, 0.927752,
		0.663458, 0.731922, -0.155287,
		-0.731648, 0.591211, -0.339355,
		39.159275, 32.643524, 37.822258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714207, 32.812916, 38.415428>,  <39.671429, 32.229675, 38.059807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714207, 32.812916, 38.415428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341923, 32.865967, 38.279079>,  <39.118553, 32.897797, 38.197269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341923, 32.865967, 38.279079>,  <39.714207, 32.812916, 38.415428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341923, 32.865967, 38.279079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245892, 0.463041, 0.851546,
		0.270776, 0.876358, -0.398343,
		-0.930708, 0.132629, -0.340870,
		39.062710, 32.905754, 38.176819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510437, 33.465290, 38.508480>,  <39.714207, 32.812916, 38.415428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510437, 33.465290, 38.508480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173038, 33.250481, 38.504120>,  <38.970600, 33.121593, 38.501503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173038, 33.250481, 38.504120>,  <39.510437, 33.465290, 38.508480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173038, 33.250481, 38.504120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348105, 0.531084, 0.772511,
		-0.409073, 0.655401, -0.634908,
		-0.843494, -0.537028, -0.010896,
		38.919991, 33.089371, 38.500851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120392, 33.867558, 38.975861>,  <39.510437, 33.465290, 38.508480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120392, 33.867558, 38.975861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921658, 33.520557, 38.966068>,  <38.802418, 33.312359, 38.960194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921658, 33.520557, 38.966068>,  <39.120392, 33.867558, 38.975861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921658, 33.520557, 38.966068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488695, 0.256349, 0.833944,
		-0.717169, 0.426300, -0.551306,
		-0.496837, -0.867499, -0.024485,
		38.772606, 33.260307, 38.958721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450489, 34.031799, 39.141979>,  <39.120392, 33.867558, 38.975861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450489, 34.031799, 39.141979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494812, 33.642868, 39.224247>,  <38.521404, 33.409508, 39.273605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494812, 33.642868, 39.224247>,  <38.450489, 34.031799, 39.141979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494812, 33.642868, 39.224247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476992, 0.129521, 0.869312,
		-0.871895, -0.194425, -0.449442,
		0.110803, -0.972329, 0.205667,
		38.528053, 33.351170, 39.285946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795750, 33.822231, 39.339092>,  <38.450489, 34.031799, 39.141979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795750, 33.822231, 39.339092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054352, 33.555256, 39.486908>,  <38.209511, 33.395069, 39.575596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054352, 33.555256, 39.486908>,  <37.795750, 33.822231, 39.339092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054352, 33.555256, 39.486908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451979, 0.055140, 0.890323,
		-0.614613, -0.742620, -0.266020,
		0.646503, -0.667439, 0.369538,
		38.248302, 33.355022, 39.597771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412640, 33.466751, 39.778900>,  <37.795750, 33.822231, 39.339092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412640, 33.466751, 39.778900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785862, 33.369354, 39.884823>,  <38.009796, 33.310917, 39.948376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785862, 33.369354, 39.884823>,  <37.412640, 33.466751, 39.778900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785862, 33.369354, 39.884823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187996, 0.297566, 0.936009,
		-0.306709, -0.923128, 0.231869,
		0.933053, -0.243492, 0.264811,
		38.065777, 33.296307, 39.964268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282169, 33.130535, 40.395512>,  <37.412640, 33.466751, 39.778900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282169, 33.130535, 40.395512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669319, 33.231102, 40.397224>,  <37.901608, 33.291443, 40.398254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669319, 33.231102, 40.397224>,  <37.282169, 33.130535, 40.395512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669319, 33.231102, 40.397224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092356, 0.339588, 0.936029,
		0.233876, -0.906350, 0.351896,
		0.967870, 0.251414, 0.004286,
		37.959679, 33.306526, 40.398510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398228, 32.944782, 40.976273>,  <37.282169, 33.130535, 40.395512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398228, 32.944782, 40.976273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675556, 33.212734, 40.870022>,  <37.841953, 33.373505, 40.806271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675556, 33.212734, 40.870022>,  <37.398228, 32.944782, 40.976273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675556, 33.212734, 40.870022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078479, 0.436609, 0.896222,
		0.716339, -0.600526, 0.355284,
		0.693325, 0.669881, -0.265632,
		37.883553, 33.413700, 40.790333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551746, 32.174625, 40.899204>,  <37.398228, 32.944782, 40.976273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551746, 32.174625, 40.899204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256622, 31.945545, 41.042118>,  <37.079548, 31.808098, 41.127869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256622, 31.945545, 41.042118>,  <37.551746, 32.174625, 40.899204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256622, 31.945545, 41.042118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562944, 0.229986, -0.793851,
		0.372466, -0.786844, -0.492083,
		-0.737809, -0.572698, 0.357287,
		37.035278, 31.773737, 41.149303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414753, 31.756374, 40.400558>,  <37.551746, 32.174625, 40.899204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414753, 31.756374, 40.400558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084782, 31.755045, 40.626648>,  <36.886799, 31.754248, 40.762302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084782, 31.755045, 40.626648>,  <37.414753, 31.756374, 40.400558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084782, 31.755045, 40.626648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559776, 0.143389, -0.816144,
		-0.078336, -0.989661, -0.120145,
		-0.824933, -0.003321, 0.565221,
		36.837303, 31.754047, 40.796215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006207, 31.195538, 40.077309>,  <37.414753, 31.756374, 40.400558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006207, 31.195538, 40.077309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784534, 31.458279, 40.281826>,  <36.651531, 31.615923, 40.404537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784534, 31.458279, 40.281826>,  <37.006207, 31.195538, 40.077309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784534, 31.458279, 40.281826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501188, 0.227114, -0.835003,
		-0.664598, -0.719000, 0.203345,
		-0.554184, 0.656855, 0.511293,
		36.618279, 31.655334, 40.435215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345757, 30.989916, 39.727390>,  <37.006207, 31.195538, 40.077309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345757, 30.989916, 39.727390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321381, 31.349936, 39.899994>,  <36.306755, 31.565947, 40.003555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321381, 31.349936, 39.899994>,  <36.345757, 30.989916, 39.727390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321381, 31.349936, 39.899994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497208, 0.347485, -0.795009,
		-0.865489, -0.262994, 0.426337,
		-0.060937, 0.900050, 0.431507,
		36.303101, 31.619951, 40.029446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684605, 31.209139, 39.547817>,  <36.345757, 30.989916, 39.727390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684605, 31.209139, 39.547817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906269, 31.527975, 39.643776>,  <36.039268, 31.719276, 39.701351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906269, 31.527975, 39.643776>,  <35.684605, 31.209139, 39.547817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906269, 31.527975, 39.643776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313968, 0.467059, -0.826607,
		-0.770929, 0.382752, 0.509087,
		0.554159, 0.797093, 0.239898,
		36.072517, 31.767103, 39.715744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288002, 31.690248, 39.467419>,  <35.684605, 31.209139, 39.547817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288002, 31.690248, 39.467419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630833, 31.896313, 39.469776>,  <35.836529, 32.019951, 39.471191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630833, 31.896313, 39.469776>,  <35.288002, 31.690248, 39.467419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630833, 31.896313, 39.469776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312225, 0.528475, -0.789449,
		-0.409806, 0.674776, 0.613788,
		0.857073, 0.515161, 0.005890,
		35.887955, 32.050861, 39.471542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097858, 32.442383, 39.275089>,  <35.288002, 31.690248, 39.467419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097858, 32.442383, 39.275089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480988, 32.374924, 39.182026>,  <35.710865, 32.334446, 39.126186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480988, 32.374924, 39.182026>,  <35.097858, 32.442383, 39.275089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480988, 32.374924, 39.182026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142271, 0.425126, -0.893883,
		0.249662, 0.889283, 0.383202,
		0.957825, -0.168650, -0.232657,
		35.768333, 32.324329, 39.112228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410824, 33.134705, 38.981480>,  <35.097858, 32.442383, 39.275089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410824, 33.134705, 38.981480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661045, 32.853249, 38.846680>,  <35.811180, 32.684376, 38.765800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661045, 32.853249, 38.846680>,  <35.410824, 33.134705, 38.981480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661045, 32.853249, 38.846680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025872, 0.450428, -0.892438,
		0.779751, 0.549550, 0.299972,
		0.625555, -0.703640, -0.337004,
		35.848713, 32.642159, 38.745579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798206, 33.519634, 38.591541>,  <35.410824, 33.134705, 38.981480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798206, 33.519634, 38.591541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858570, 33.144470, 38.466606>,  <35.894791, 32.919373, 38.391644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858570, 33.144470, 38.466606>,  <35.798206, 33.519634, 38.591541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858570, 33.144470, 38.466606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003645, 0.315427, -0.948943,
		0.988540, 0.144346, 0.044183,
		0.150913, -0.937907, -0.312339,
		35.903843, 32.863098, 38.372906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194969, 33.529922, 38.011436>,  <35.798206, 33.519634, 38.591541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194969, 33.529922, 38.011436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056553, 33.156334, 37.975773>,  <35.973503, 32.932182, 37.954376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056553, 33.156334, 37.975773>,  <36.194969, 33.529922, 38.011436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056553, 33.156334, 37.975773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057699, 0.073664, -0.995613,
		0.936443, -0.349670, 0.028398,
		-0.346043, -0.933973, -0.089158,
		35.952740, 32.876141, 37.949024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595627, 33.196835, 37.521473>,  <36.194969, 33.529922, 38.011436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595627, 33.196835, 37.521473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252018, 32.992073, 37.519344>,  <36.045853, 32.869217, 37.518066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252018, 32.992073, 37.519344>,  <36.595627, 33.196835, 37.521473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252018, 32.992073, 37.519344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148457, 0.259041, -0.954389,
		0.489936, -0.819054, -0.298519,
		-0.859025, -0.511907, -0.005319,
		35.994312, 32.838501, 37.517750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605598, 32.811787, 36.911743>,  <36.595627, 33.196835, 37.521473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605598, 32.811787, 36.911743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231220, 32.848289, 37.047787>,  <36.006592, 32.870193, 37.129414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231220, 32.848289, 37.047787>,  <36.605598, 32.811787, 36.911743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231220, 32.848289, 37.047787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315954, 0.208822, -0.925509,
		-0.155485, -0.973686, -0.166612,
		-0.935948, 0.091261, 0.340109,
		35.950436, 32.875668, 37.149818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.827236, 31.491982, 44.841488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.439377, 31.549814, 44.762623>,  <38.206661, 31.584515, 44.715302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.439377, 31.549814, 44.762623>,  <38.827236, 31.491982, 44.841488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439377, 31.549814, 44.762623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091434, -0.533471, -0.840862,
		-0.226755, -0.833370, 0.504061,
		-0.969651, 0.144581, -0.197165,
		38.148483, 31.593189, 44.703472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596592, 30.899784, 44.371311>,  <38.827236, 31.491982, 44.841488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596592, 30.899784, 44.371311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.281910, 31.146048, 44.353184>,  <38.093102, 31.293806, 44.342308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.281910, 31.146048, 44.353184>,  <38.596592, 30.899784, 44.371311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281910, 31.146048, 44.353184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187890, -0.308723, -0.932409,
		-0.588036, -0.725020, 0.358552,
		-0.786709, 0.615659, -0.045317,
		38.045898, 31.330746, 44.339588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068733, 30.567766, 44.058281>,  <38.596592, 30.899784, 44.371311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068733, 30.567766, 44.058281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.975399, 30.949137, 43.981831>,  <37.919399, 31.177959, 43.935963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.975399, 30.949137, 43.981831>,  <38.068733, 30.567766, 44.058281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975399, 30.949137, 43.981831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167659, -0.233054, -0.957902,
		-0.957833, -0.191473, 0.214232,
		-0.233340, 0.953428, -0.191124,
		37.905396, 31.235165, 43.924492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372681, 30.531624, 43.912827>,  <38.068733, 30.567766, 44.058281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372681, 30.531624, 43.912827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.490742, 30.888695, 43.776588>,  <37.561577, 31.102938, 43.694843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.490742, 30.888695, 43.776588>,  <37.372681, 30.531624, 43.912827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490742, 30.888695, 43.776588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309670, -0.247860, -0.917970,
		-0.903874, 0.376416, 0.203279,
		0.295153, 0.892679, -0.340599,
		37.579288, 31.156498, 43.674408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892590, 30.759642, 43.430878>,  <37.372681, 30.531624, 43.912827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892590, 30.759642, 43.430878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.203407, 31.000759, 43.358391>,  <37.389896, 31.145430, 43.314899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.203407, 31.000759, 43.358391>,  <36.892590, 30.759642, 43.430878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203407, 31.000759, 43.358391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197474, -0.039909, -0.979495,
		-0.597666, 0.796898, 0.088025,
		0.777045, 0.602794, -0.181219,
		37.436520, 31.181597, 43.304024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570530, 31.303938, 43.146896>,  <36.892590, 30.759642, 43.430878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570530, 31.303938, 43.146896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.949135, 31.298656, 43.017937>,  <37.176296, 31.295486, 42.940559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.949135, 31.298656, 43.017937>,  <36.570530, 31.303938, 43.146896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949135, 31.298656, 43.017937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319892, 0.092420, -0.942935,
		0.042248, 0.995632, 0.083252,
		0.946511, -0.013205, -0.322400,
		37.233089, 31.294695, 42.921215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654675, 31.930738, 42.775867>,  <36.570530, 31.303938, 43.146896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654675, 31.930738, 42.775867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.953243, 31.716131, 42.618389>,  <37.132385, 31.587366, 42.523903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.953243, 31.716131, 42.618389>,  <36.654675, 31.930738, 42.775867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953243, 31.716131, 42.618389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243132, 0.330849, -0.911825,
		0.619466, 0.776329, 0.116509,
		0.746424, -0.536518, -0.393700,
		37.177170, 31.555176, 42.500278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066833, 32.348549, 42.416092>,  <36.654675, 31.930738, 42.775867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066833, 32.348549, 42.416092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.129833, 31.995724, 42.238480>,  <37.167633, 31.784029, 42.131912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.129833, 31.995724, 42.238480>,  <37.066833, 32.348549, 42.416092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129833, 31.995724, 42.238480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350207, 0.370528, -0.860270,
		0.923335, 0.290998, -0.250544,
		0.157503, -0.882060, -0.444031,
		37.177086, 31.731106, 42.105270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367214, 32.475903, 41.784134>,  <37.066833, 32.348549, 42.416092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367214, 32.475903, 41.784134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.249554, 32.100979, 41.709381>,  <37.178959, 31.876024, 41.664528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.249554, 32.100979, 41.709381>,  <37.367214, 32.475903, 41.784134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249554, 32.100979, 41.709381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393629, 0.296989, -0.869973,
		0.870937, -0.182340, -0.456312,
		-0.294151, -0.937310, -0.186885,
		37.161308, 31.819786, 41.653316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021885, 32.633465, 41.308708>,  <37.367214, 32.475903, 41.784134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021885, 32.633465, 41.308708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.104874, 33.016521, 41.228836>,  <38.154667, 33.246357, 41.180912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.104874, 33.016521, 41.228836>,  <38.021885, 32.633465, 41.308708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104874, 33.016521, 41.228836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008228, 0.202407, 0.979267,
		0.978206, -0.204815, 0.034115,
		0.207474, 0.957644, -0.199681,
		38.167114, 33.303814, 41.168930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585518, 32.862663, 41.783787>,  <38.021885, 32.633465, 41.308708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585518, 32.862663, 41.783787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.453297, 33.220844, 41.664520>,  <38.373962, 33.435753, 41.592960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.453297, 33.220844, 41.664520>,  <38.585518, 32.862663, 41.783787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453297, 33.220844, 41.664520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124132, 0.271936, 0.954276,
		0.935589, 0.352451, 0.021264,
		-0.330553, 0.895449, -0.298171,
		38.354130, 33.489479, 41.575069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025684, 33.427650, 42.099968>,  <38.585518, 32.862663, 41.783787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025684, 33.427650, 42.099968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.683395, 33.616646, 42.015591>,  <38.478024, 33.730045, 41.964966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.683395, 33.616646, 42.015591>,  <39.025684, 33.427650, 42.099968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683395, 33.616646, 42.015591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022497, 0.373299, 0.927438,
		0.516951, 0.798372, -0.308809,
		-0.855719, 0.472493, -0.210939,
		38.426678, 33.758392, 41.952309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066086, 34.193146, 42.323357>,  <39.025684, 33.427650, 42.099968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066086, 34.193146, 42.323357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.668388, 34.171940, 42.286102>,  <38.429771, 34.159218, 42.263748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.668388, 34.171940, 42.286102>,  <39.066086, 34.193146, 42.323357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668388, 34.171940, 42.286102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107095, 0.459093, 0.881909,
		-0.003997, 0.886805, -0.462127,
		-0.994241, -0.053016, -0.093138,
		38.370117, 34.156036, 42.258160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864567, 34.908367, 42.542358>,  <39.066086, 34.193146, 42.323357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864567, 34.908367, 42.542358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.576401, 34.631977, 42.566212>,  <38.403503, 34.466141, 42.580524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.576401, 34.631977, 42.566212>,  <38.864567, 34.908367, 42.542358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576401, 34.631977, 42.566212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267105, 0.355770, 0.895590,
		-0.640049, 0.629266, -0.440865,
		-0.720412, -0.690979, 0.059630,
		38.360279, 34.424683, 42.584099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275749, 35.241238, 42.461777>,  <38.864567, 34.908367, 42.542358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275749, 35.241238, 42.461777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.203300, 34.904179, 42.664612>,  <38.159832, 34.701942, 42.786312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.203300, 34.904179, 42.664612>,  <38.275749, 35.241238, 42.461777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203300, 34.904179, 42.664612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303497, 0.538337, 0.786183,
		-0.935460, -0.011503, -0.353246,
		-0.181122, -0.842651, 0.507084,
		38.148964, 34.651382, 42.816738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598812, 35.185009, 42.699013>,  <38.275749, 35.241238, 42.461777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598812, 35.185009, 42.699013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.820087, 34.951027, 42.936268>,  <37.952850, 34.810638, 43.078621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.820087, 34.951027, 42.936268>,  <37.598812, 35.185009, 42.699013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820087, 34.951027, 42.936268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284272, 0.536713, 0.794436,
		-0.783056, -0.608081, 0.130614,
		0.553184, -0.584958, 0.593137,
		37.986042, 34.775539, 43.114208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305519, 35.286488, 43.315250>,  <37.598812, 35.185009, 42.699013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305519, 35.286488, 43.315250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.636639, 35.096321, 43.434402>,  <37.835312, 34.982224, 43.505894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.636639, 35.096321, 43.434402>,  <37.305519, 35.286488, 43.315250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636639, 35.096321, 43.434402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087106, 0.415607, 0.905364,
		-0.554224, -0.775405, 0.302627,
		0.827797, -0.475413, 0.297881,
		37.884979, 34.953697, 43.523766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214161, 34.796101, 43.960049>,  <37.305519, 35.286488, 43.315250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214161, 34.796101, 43.960049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.608486, 34.862335, 43.970993>,  <37.845081, 34.902077, 43.977558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.608486, 34.862335, 43.970993>,  <37.214161, 34.796101, 43.960049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608486, 34.862335, 43.970993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074313, 0.284490, 0.955795,
		0.150478, -0.944271, 0.292760,
		0.985816, 0.165581, 0.027362,
		37.904232, 34.912010, 43.979202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495499, 34.548244, 44.552448>,  <37.214161, 34.796101, 43.960049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495499, 34.548244, 44.552448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.793892, 34.796017, 44.454613>,  <37.972927, 34.944679, 44.395912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.793892, 34.796017, 44.454613>,  <37.495499, 34.548244, 44.552448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793892, 34.796017, 44.454613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093467, 0.266259, 0.959359,
		0.659377, -0.738524, 0.140728,
		0.745980, 0.619426, -0.244593,
		38.017685, 34.981846, 44.381233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127529, 34.340328, 45.099823>,  <37.495499, 34.548244, 44.552448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127529, 34.340328, 45.099823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.192207, 34.701916, 44.941483>,  <38.231014, 34.918869, 44.846478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.192207, 34.701916, 44.941483>,  <38.127529, 34.340328, 45.099823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192207, 34.701916, 44.941483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375602, 0.314561, 0.871765,
		0.912566, -0.289645, -0.288667,
		0.161699, 0.903967, -0.395849,
		38.240719, 34.973106, 44.822727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682899, 34.592545, 45.440273>,  <38.127529, 34.340328, 45.099823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682899, 34.592545, 45.440273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.584843, 34.949677, 45.289139>,  <38.526009, 35.163956, 45.198460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.584843, 34.949677, 45.289139>,  <38.682899, 34.592545, 45.440273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584843, 34.949677, 45.289139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060672, 0.403089, 0.913147,
		0.967588, 0.200923, -0.152982,
		-0.245138, 0.892832, -0.377834,
		38.511303, 35.217525, 45.175789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262836, 35.097435, 45.585083>,  <38.682899, 34.592545, 45.440273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262836, 35.097435, 45.585083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.916355, 35.286922, 45.521492>,  <38.708466, 35.400616, 45.483337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.916355, 35.286922, 45.521492>,  <39.262836, 35.097435, 45.585083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916355, 35.286922, 45.521492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050740, 0.399895, 0.915155,
		0.497102, 0.784647, -0.370429,
		-0.866207, 0.473721, -0.158976,
		38.656494, 35.429039, 45.473801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439018, 35.761398, 45.802876>,  <39.262836, 35.097435, 45.585083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439018, 35.761398, 45.802876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.045994, 35.687019, 45.802128>,  <38.810181, 35.642391, 45.801678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.045994, 35.687019, 45.802128>,  <39.439018, 35.761398, 45.802876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045994, 35.687019, 45.802128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010652, 0.046242, 0.998874,
		-0.185647, 0.981472, -0.047416,
		-0.982559, -0.185943, -0.001870,
		38.751225, 35.631237, 45.801567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.568226, 37.769341, 45.831917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.824986, 37.466782, 45.882236>,  <32.979042, 37.285248, 45.912430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.824986, 37.466782, 45.882236>,  <32.568226, 37.769341, 45.831917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824986, 37.466782, 45.882236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192183, -0.000119, -0.981359,
		0.742314, 0.654111, 0.145291,
		0.641901, -0.756398, 0.125798,
		33.017555, 37.239861, 45.919975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117470, 37.874802, 45.372009>,  <32.568226, 37.769341, 45.831917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117470, 37.874802, 45.372009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.139240, 37.484306, 45.455914>,  <33.152302, 37.250008, 45.506256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.139240, 37.484306, 45.455914>,  <33.117470, 37.874802, 45.372009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139240, 37.484306, 45.455914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354183, -0.177534, -0.918170,
		0.933591, 0.124267, 0.336104,
		0.054428, -0.976238, 0.209757,
		33.155567, 37.191437, 45.518841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772102, 37.659599, 45.059174>,  <33.117470, 37.874802, 45.372009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772102, 37.659599, 45.059174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.566425, 37.317474, 45.084629>,  <33.443020, 37.112198, 45.099903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.566425, 37.317474, 45.084629>,  <33.772102, 37.659599, 45.059174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566425, 37.317474, 45.084629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268293, -0.230881, -0.935261,
		0.814634, -0.463826, 0.348191,
		-0.514189, -0.855312, 0.063642,
		33.412170, 37.060883, 45.103722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230030, 37.171803, 44.879917>,  <33.772102, 37.659599, 45.059174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230030, 37.171803, 44.879917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.853409, 37.054329, 44.813911>,  <33.627438, 36.983845, 44.774307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.853409, 37.054329, 44.813911>,  <34.230030, 37.171803, 44.879917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853409, 37.054329, 44.813911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216755, -0.153196, -0.964131,
		0.257871, -0.943547, 0.207900,
		-0.941552, -0.293684, -0.165014,
		33.570942, 36.966225, 44.764408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313168, 36.626152, 44.436050>,  <34.230030, 37.171803, 44.879917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313168, 36.626152, 44.436050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.926285, 36.706264, 44.373566>,  <33.694157, 36.754333, 44.336075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.926285, 36.706264, 44.373566>,  <34.313168, 36.626152, 44.436050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926285, 36.706264, 44.373566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116635, -0.196126, -0.973618,
		-0.225648, -0.959905, 0.166332,
		-0.967202, 0.200295, -0.156213,
		33.636124, 36.766350, 44.326702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009911, 35.986572, 44.200459>,  <34.313168, 36.626152, 44.436050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009911, 35.986572, 44.200459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.757160, 36.269924, 44.074650>,  <33.605511, 36.439938, 43.999165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.757160, 36.269924, 44.074650>,  <34.009911, 35.986572, 44.200459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757160, 36.269924, 44.074650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022305, -0.422255, -0.906203,
		-0.774750, -0.565591, 0.282612,
		-0.631874, 0.708384, -0.314526,
		33.567596, 36.482441, 43.980293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538155, 35.658295, 43.782467>,  <34.009911, 35.986572, 44.200459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538155, 35.658295, 43.782467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.480156, 36.039696, 43.676777>,  <33.445358, 36.268536, 43.613361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.480156, 36.039696, 43.676777>,  <33.538155, 35.658295, 43.782467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480156, 36.039696, 43.676777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078035, -0.277236, -0.957627,
		-0.986350, -0.118233, 0.114605,
		-0.144996, 0.953499, -0.264226,
		33.436657, 36.325745, 43.597507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917339, 35.704506, 43.278507>,  <33.538155, 35.658295, 43.782467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917339, 35.704506, 43.278507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.143368, 36.030048, 43.224346>,  <33.278984, 36.225372, 43.191849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.143368, 36.030048, 43.224346>,  <32.917339, 35.704506, 43.278507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143368, 36.030048, 43.224346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083259, -0.107031, -0.990764,
		-0.820830, 0.571126, 0.007280,
		0.565071, 0.813855, -0.135405,
		33.312889, 36.274204, 43.183723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582340, 36.135155, 42.776802>,  <32.917339, 35.704506, 43.278507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582340, 36.135155, 42.776802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.966354, 36.244976, 42.755089>,  <33.196762, 36.310867, 42.742062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.966354, 36.244976, 42.755089>,  <32.582340, 36.135155, 42.776802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966354, 36.244976, 42.755089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010297, -0.159188, -0.987195,
		-0.279677, 0.948304, -0.149999,
		0.960039, 0.274551, -0.054286,
		33.254368, 36.327343, 42.738804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636330, 36.499104, 42.108688>,  <32.582340, 36.135155, 42.776802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636330, 36.499104, 42.108688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.016647, 36.414845, 42.199566>,  <33.244839, 36.364288, 42.254093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.016647, 36.414845, 42.199566>,  <32.636330, 36.499104, 42.108688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016647, 36.414845, 42.199566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239674, 0.035408, -0.970208,
		0.196329, 0.976920, 0.084153,
		0.950795, -0.210649, 0.227191,
		33.301888, 36.351650, 42.267723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083950, 36.902588, 41.739906>,  <32.636330, 36.499104, 42.108688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083950, 36.902588, 41.739906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.337234, 36.606186, 41.829308>,  <33.489204, 36.428345, 41.882950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.337234, 36.606186, 41.829308>,  <33.083950, 36.902588, 41.739906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337234, 36.606186, 41.829308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280649, -0.049291, -0.958544,
		0.721301, 0.669689, 0.176751,
		0.633214, -0.741004, 0.223502,
		33.527199, 36.383884, 41.896358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698612, 37.010986, 41.292362>,  <33.083950, 36.902588, 41.739906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698612, 37.010986, 41.292362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.721764, 36.630363, 41.413155>,  <33.735653, 36.401989, 41.485630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.721764, 36.630363, 41.413155>,  <33.698612, 37.010986, 41.292362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721764, 36.630363, 41.413155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317956, -0.269163, -0.909096,
		0.946337, 0.148631, 0.286975,
		0.057877, -0.951557, 0.301977,
		33.739128, 36.344898, 41.503746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373787, 36.704479, 40.992062>,  <33.698612, 37.010986, 41.292362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373787, 36.704479, 40.992062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.162663, 36.376522, 41.080784>,  <34.035988, 36.179749, 41.134018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.162663, 36.376522, 41.080784>,  <34.373787, 36.704479, 40.992062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162663, 36.376522, 41.080784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225401, -0.386987, -0.894112,
		0.818908, -0.421926, 0.389060,
		-0.527810, -0.819890, 0.221804,
		34.004318, 36.130554, 41.147324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812653, 36.272907, 40.705036>,  <34.373787, 36.704479, 40.992062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812653, 36.272907, 40.705036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.475201, 36.063831, 40.754166>,  <34.272732, 35.938385, 40.783646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.475201, 36.063831, 40.754166>,  <34.812653, 36.272907, 40.705036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475201, 36.063831, 40.754166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045385, -0.297356, -0.953687,
		0.535010, -0.798981, 0.274579,
		-0.843626, -0.522694, 0.122827,
		34.222115, 35.907024, 40.791012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521420, 36.008312, 40.591568>,  <34.812653, 36.272907, 40.705036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521420, 36.008312, 40.591568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.644844, 36.359001, 40.443970>,  <35.718899, 36.569412, 40.355412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.644844, 36.359001, 40.443970>,  <35.521420, 36.008312, 40.591568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644844, 36.359001, 40.443970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300958, 0.278009, 0.912214,
		0.902338, -0.392524, -0.178073,
		0.308560, 0.876719, -0.368992,
		35.737411, 36.622017, 40.333271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236790, 36.165714, 40.875912>,  <35.521420, 36.008312, 40.591568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236790, 36.165714, 40.875912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.087151, 36.516373, 40.754887>,  <35.997368, 36.726768, 40.682270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.087151, 36.516373, 40.754887>,  <36.236790, 36.165714, 40.875912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087151, 36.516373, 40.754887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205700, 0.396562, 0.894665,
		0.904289, 0.272456, -0.328679,
		-0.374099, 0.876645, -0.302562,
		35.974922, 36.779366, 40.664120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749687, 36.634853, 41.050232>,  <36.236790, 36.165714, 40.875912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749687, 36.634853, 41.050232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.417809, 36.854778, 41.011654>,  <36.218681, 36.986732, 40.988506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.417809, 36.854778, 41.011654>,  <36.749687, 36.634853, 41.050232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417809, 36.854778, 41.011654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268578, 0.544658, 0.794489,
		0.489351, 0.633285, -0.599571,
		-0.829700, 0.549816, -0.096442,
		36.168900, 37.019722, 40.982719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903011, 37.320774, 41.228508>,  <36.749687, 36.634853, 41.050232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903011, 37.320774, 41.228508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.505035, 37.333687, 41.266556>,  <36.266251, 37.341434, 41.289387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.505035, 37.333687, 41.266556>,  <36.903011, 37.320774, 41.228508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505035, 37.333687, 41.266556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097330, 0.544007, 0.833417,
		-0.024846, 0.838460, -0.544397,
		-0.994942, 0.032279, 0.095124,
		36.206554, 37.343369, 41.295094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755238, 38.085754, 41.419346>,  <36.903011, 37.320774, 41.228508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755238, 38.085754, 41.419346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.468140, 37.830601, 41.531021>,  <36.295879, 37.677509, 41.598026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.468140, 37.830601, 41.531021>,  <36.755238, 38.085754, 41.419346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468140, 37.830601, 41.531021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028739, 0.427753, 0.903439,
		-0.695711, 0.640417, -0.325351,
		-0.717747, -0.637882, 0.279187,
		36.252815, 37.639236, 41.614777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292282, 38.553757, 41.776432>,  <36.755238, 38.085754, 41.419346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292282, 38.553757, 41.776432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.218391, 38.180840, 41.900826>,  <36.174057, 37.957088, 41.975464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.218391, 38.180840, 41.900826>,  <36.292282, 38.553757, 41.776432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218391, 38.180840, 41.900826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303072, 0.355050, 0.884356,
		-0.934891, 0.069116, -0.348139,
		-0.184730, -0.932289, 0.310986,
		36.162971, 37.901154, 41.994122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710236, 38.636738, 42.173702>,  <36.292282, 38.553757, 41.776432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710236, 38.636738, 42.173702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.891022, 38.294140, 42.273418>,  <35.999493, 38.088581, 42.333248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.891022, 38.294140, 42.273418>,  <35.710236, 38.636738, 42.173702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891022, 38.294140, 42.273418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271320, 0.134233, 0.953083,
		-0.849771, -0.498400, -0.171714,
		0.451967, -0.856492, 0.249294,
		36.026611, 38.037193, 42.348206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308243, 38.333500, 42.685001>,  <35.710236, 38.636738, 42.173702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308243, 38.333500, 42.685001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.663048, 38.152580, 42.722172>,  <35.875931, 38.044029, 42.744473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.663048, 38.152580, 42.722172>,  <35.308243, 38.333500, 42.685001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663048, 38.152580, 42.722172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008468, 0.217146, 0.976103,
		-0.461673, -0.865026, 0.196440,
		0.887010, -0.452303, 0.092925,
		35.929150, 38.016888, 42.750050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249546, 38.010441, 43.199516>,  <35.308243, 38.333500, 42.685001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249546, 38.010441, 43.199516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.647594, 37.982685, 43.171478>,  <35.886425, 37.966030, 43.154655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.647594, 37.982685, 43.171478>,  <35.249546, 38.010441, 43.199516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647594, 37.982685, 43.171478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086641, 0.275340, 0.957434,
		-0.047135, -0.958839, 0.280010,
		0.995123, -0.069389, -0.070097,
		35.946133, 37.961868, 43.150448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331459, 37.662682, 43.798603>,  <35.249546, 38.010441, 43.199516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331459, 37.662682, 43.798603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.674751, 37.829258, 43.678593>,  <35.880726, 37.929203, 43.606586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.674751, 37.829258, 43.678593>,  <35.331459, 37.662682, 43.798603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674751, 37.829258, 43.678593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160903, 0.336775, 0.927735,
		0.487392, -0.844485, 0.222023,
		0.858231, 0.416446, -0.300021,
		35.932220, 37.954193, 43.588585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883522, 37.349197, 44.212151>,  <35.331459, 37.662682, 43.798603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883522, 37.349197, 44.212151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.996651, 37.707870, 44.075939>,  <36.064529, 37.923077, 43.994213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.996651, 37.707870, 44.075939>,  <35.883522, 37.349197, 44.212151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996651, 37.707870, 44.075939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209374, 0.288752, 0.934230,
		0.936041, -0.335522, -0.106077,
		0.282824, 0.896687, -0.340533,
		36.081497, 37.976875, 43.973778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559444, 37.361916, 44.508003>,  <35.883522, 37.349197, 44.212151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559444, 37.361916, 44.508003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.481968, 37.740490, 44.404663>,  <36.435482, 37.967636, 44.342659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.481968, 37.740490, 44.404663>,  <36.559444, 37.361916, 44.508003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481968, 37.740490, 44.404663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339990, 0.311770, 0.887246,
		0.920266, 0.084018, -0.382167,
		-0.193693, 0.946436, -0.258346,
		36.423859, 38.024422, 44.327160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182175, 37.713108, 44.643295>,  <36.559444, 37.361916, 44.508003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182175, 37.713108, 44.643295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.877796, 37.970718, 44.674774>,  <36.695171, 38.125286, 44.693661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.877796, 37.970718, 44.674774>,  <37.182175, 37.713108, 44.643295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877796, 37.970718, 44.674774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430604, 0.410560, 0.803754,
		0.485329, 0.645500, -0.589734,
		-0.760944, 0.644027, 0.078698,
		36.649513, 38.163925, 44.698383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468605, 38.379932, 44.823841>,  <37.182175, 37.713108, 44.643295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468605, 38.379932, 44.823841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.085354, 38.377209, 44.938347>,  <36.855404, 38.375576, 45.007050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.085354, 38.377209, 44.938347>,  <37.468605, 38.379932, 44.823841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085354, 38.377209, 44.938347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279640, 0.192892, 0.940529,
		-0.061624, 0.981196, -0.182911,
		-0.958125, -0.006810, 0.286268,
		36.797916, 38.375164, 45.024227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046921, 38.851025, 45.022808>,  <37.468605, 38.379932, 44.823841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046921, 38.851025, 45.022808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.348404, 38.617924, 45.144348>,  <38.529293, 38.478062, 45.217274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.348404, 38.617924, 45.144348>,  <38.046921, 38.851025, 45.022808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348404, 38.617924, 45.144348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197459, -0.240175, -0.950434,
		0.626844, 0.776348, -0.065953,
		0.753709, -0.582751, 0.303850,
		38.574516, 38.443100, 45.235504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544823, 39.114010, 44.709606>,  <38.046921, 38.851025, 45.022808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544823, 39.114010, 44.709606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.667675, 38.746822, 44.810005>,  <38.741386, 38.526508, 44.870243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.667675, 38.746822, 44.810005>,  <38.544823, 39.114010, 44.709606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667675, 38.746822, 44.810005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326530, -0.146082, -0.933830,
		0.893894, 0.368768, 0.254879,
		0.307133, -0.917971, 0.250996,
		38.759815, 38.471432, 44.885303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205738, 39.030968, 44.378559>,  <38.544823, 39.114010, 44.709606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205738, 39.030968, 44.378559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.070030, 38.663712, 44.460457>,  <38.988605, 38.443359, 44.509598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.070030, 38.663712, 44.460457>,  <39.205738, 39.030968, 44.378559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070030, 38.663712, 44.460457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263657, -0.301744, -0.916207,
		0.902984, -0.256860, 0.344447,
		-0.339271, -0.918136, 0.204747,
		38.968250, 38.388271, 44.521881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739262, 38.528488, 44.109287>,  <39.205738, 39.030968, 44.378559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739262, 38.528488, 44.109287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.395424, 38.328251, 44.150291>,  <39.189121, 38.208107, 44.174892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.395424, 38.328251, 44.150291>,  <39.739262, 38.528488, 44.109287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395424, 38.328251, 44.150291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221593, -0.545960, -0.807975,
		0.460433, -0.671813, 0.580231,
		-0.859592, -0.500594, 0.102509,
		39.137547, 38.178074, 44.181046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997593, 37.873703, 44.040714>,  <39.739262, 38.528488, 44.109287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997593, 37.873703, 44.040714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.607052, 37.859344, 43.955437>,  <39.372726, 37.850731, 43.904270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.607052, 37.859344, 43.955437>,  <39.997593, 37.873703, 44.040714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607052, 37.859344, 43.955437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204339, -0.475259, -0.855789,
		-0.070602, -0.879114, 0.471354,
		-0.976351, -0.035895, -0.213192,
		39.314148, 37.848576, 43.891479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827950, 37.183372, 43.804413>,  <39.997593, 37.873703, 44.040714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827950, 37.183372, 43.804413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.507561, 37.385590, 43.676117>,  <39.315327, 37.506920, 43.599140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.507561, 37.385590, 43.676117>,  <39.827950, 37.183372, 43.804413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507561, 37.385590, 43.676117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045566, -0.585652, -0.809281,
		-0.596971, -0.633592, 0.492124,
		-0.800968, 0.505541, -0.320747,
		39.267269, 37.537251, 43.579895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363491, 36.713249, 43.617744>,  <39.827950, 37.183372, 43.804413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363491, 36.713249, 43.617744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.264114, 37.045860, 43.419010>,  <39.204491, 37.245426, 43.299770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.264114, 37.045860, 43.419010>,  <39.363491, 36.713249, 43.617744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264114, 37.045860, 43.419010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043069, -0.521892, -0.851924,
		-0.967690, -0.190253, 0.165471,
		-0.248439, 0.831525, -0.496835,
		39.189583, 37.295319, 43.269958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929031, 36.362179, 43.185101>,  <39.363491, 36.713249, 43.617744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929031, 36.362179, 43.185101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.006199, 36.727619, 43.041931>,  <39.052502, 36.946884, 42.956028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.006199, 36.727619, 43.041931>,  <38.929031, 36.362179, 43.185101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006199, 36.727619, 43.041931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011370, -0.362671, -0.931848,
		-0.981148, 0.183844, -0.059580,
		0.192923, 0.913603, -0.357924,
		39.064075, 37.001701, 42.934555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379101, 36.563511, 42.684330>,  <38.929031, 36.362179, 43.185101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379101, 36.563511, 42.684330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.729034, 36.737728, 42.599506>,  <38.938995, 36.842258, 42.548611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.729034, 36.737728, 42.599506>,  <38.379101, 36.563511, 42.684330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729034, 36.737728, 42.599506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147300, -0.177862, -0.972968,
		-0.461484, 0.882423, -0.091445,
		0.874834, 0.435540, -0.212062,
		38.991486, 36.868389, 42.535889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196632, 37.106758, 42.188473>,  <38.379101, 36.563511, 42.684330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196632, 37.106758, 42.188473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.574986, 36.977921, 42.172710>,  <38.801998, 36.900616, 42.163254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.574986, 36.977921, 42.172710>,  <38.196632, 37.106758, 42.188473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574986, 36.977921, 42.172710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145148, -0.311360, -0.939142,
		0.290228, 0.894040, -0.341263,
		0.945886, -0.322099, -0.039403,
		38.858749, 36.881290, 42.160889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310169, 37.152466, 41.491043>,  <38.196632, 37.106758, 42.188473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310169, 37.152466, 41.491043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.645206, 36.960999, 41.596352>,  <38.846230, 36.846119, 41.659534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.645206, 36.960999, 41.596352>,  <38.310169, 37.152466, 41.491043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645206, 36.960999, 41.596352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143995, -0.271427, -0.951626,
		0.526973, 0.834987, -0.158420,
		0.837595, -0.478670, 0.263268,
		38.896484, 36.817398, 41.675331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791401, 37.384838, 41.146416>,  <38.310169, 37.152466, 41.491043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791401, 37.384838, 41.146416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.928383, 37.022877, 41.247513>,  <39.010571, 36.805698, 41.308170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.928383, 37.022877, 41.247513>,  <38.791401, 37.384838, 41.146416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928383, 37.022877, 41.247513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024939, -0.277665, -0.960354,
		0.939205, 0.322571, -0.117654,
		0.342450, -0.904903, 0.252740,
		39.031116, 36.751404, 41.323334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465363, 37.271713, 40.831074>,  <38.791401, 37.384838, 41.146416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465363, 37.271713, 40.831074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.335560, 36.902969, 40.915794>,  <39.257679, 36.681721, 40.966629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.335560, 36.902969, 40.915794>,  <39.465363, 37.271713, 40.831074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335560, 36.902969, 40.915794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099443, -0.255931, -0.961566,
		0.940641, -0.290973, 0.174725,
		-0.324508, -0.921864, 0.211804,
		39.238209, 36.626411, 40.979336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929703, 36.818851, 40.515709>,  <39.465363, 37.271713, 40.831074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929703, 36.818851, 40.515709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.578186, 36.631157, 40.550438>,  <39.367275, 36.518539, 40.571274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.578186, 36.631157, 40.550438>,  <39.929703, 36.818851, 40.515709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578186, 36.631157, 40.550438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011197, -0.161618, -0.986790,
		0.477066, -0.868160, 0.136775,
		-0.878796, -0.469232, 0.086824,
		39.314548, 36.490387, 40.576485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.803036, 41.234478, 34.672356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.910990, 41.252796, 34.287636>,  <30.975761, 41.263786, 34.056805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.910990, 41.252796, 34.287636>,  <30.803036, 41.234478, 34.672356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910990, 41.252796, 34.287636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942573, 0.191555, 0.273610,
		0.196769, -0.980413, 0.008530,
		0.269885, 0.045798, -0.961802,
		30.991955, 41.266537, 33.999096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203846, 41.253384, 35.130772>,  <30.803036, 41.234478, 34.672356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203846, 41.253384, 35.130772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.154770, 41.275505, 34.734409>,  <30.125324, 41.288776, 34.496593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.154770, 41.275505, 34.734409>,  <30.203846, 41.253384, 35.130772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154770, 41.275505, 34.734409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387999, -0.921653, -0.003399,
		-0.913457, 0.384053, 0.134534,
		-0.122689, 0.055304, -0.990903,
		30.117964, 41.292095, 34.437138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467598, 41.241428, 34.977436>,  <30.203846, 41.253384, 35.130772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467598, 41.241428, 34.977436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.673706, 41.098389, 34.665894>,  <29.797371, 41.012566, 34.478970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.673706, 41.098389, 34.665894>,  <29.467598, 41.241428, 34.977436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673706, 41.098389, 34.665894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552952, -0.833046, 0.016667,
		-0.654783, 0.422082, -0.626981,
		0.515270, -0.357604, -0.778856,
		29.828287, 40.991108, 34.432236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022655, 40.722172, 34.860374>,  <29.467598, 41.241428, 34.977436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022655, 40.722172, 34.860374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.294798, 40.645226, 34.577499>,  <29.458084, 40.599060, 34.407776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.294798, 40.645226, 34.577499>,  <29.022655, 40.722172, 34.860374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294798, 40.645226, 34.577499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419734, -0.893285, -0.160827,
		-0.600783, 0.406249, -0.688492,
		0.680355, -0.192361, -0.707187,
		29.498905, 40.587517, 34.365345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705626, 40.489887, 34.201065>,  <29.022655, 40.722172, 34.860374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705626, 40.489887, 34.201065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.087986, 40.375454, 34.174515>,  <29.317402, 40.306793, 34.158585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.087986, 40.375454, 34.174515>,  <28.705626, 40.489887, 34.201065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087986, 40.375454, 34.174515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292945, -0.912824, -0.284492,
		0.020794, 0.291392, -0.956378,
		0.955903, -0.286082, -0.066380,
		29.374758, 40.289631, 34.154602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883102, 40.145977, 33.491009>,  <28.705626, 40.489887, 34.201065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883102, 40.145977, 33.491009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.119205, 40.023308, 33.789684>,  <29.260866, 39.949707, 33.968891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.119205, 40.023308, 33.789684>,  <28.883102, 40.145977, 33.491009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119205, 40.023308, 33.789684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297482, -0.942557, -0.151957,
		0.750402, -0.132434, -0.647579,
		0.590256, -0.306672, 0.746693,
		29.296282, 39.931305, 34.013691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787519, 39.489697, 33.350258>,  <28.883102, 40.145977, 33.491009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787519, 39.489697, 33.350258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.982031, 39.501541, 33.699577>,  <29.098738, 39.508648, 33.909168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.982031, 39.501541, 33.699577>,  <28.787519, 39.489697, 33.350258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982031, 39.501541, 33.699577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011349, -0.999127, 0.040202,
		0.873730, -0.029460, -0.485518,
		0.486278, 0.029615, 0.873302,
		29.127914, 39.510426, 33.961567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223331, 38.978119, 33.284229>,  <28.787519, 39.489697, 33.350258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223331, 38.978119, 33.284229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.236601, 39.027615, 33.680935>,  <29.244562, 39.057312, 33.918957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.236601, 39.027615, 33.680935>,  <29.223331, 38.978119, 33.284229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236601, 39.027615, 33.680935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073881, -0.989288, 0.125902,
		0.996715, -0.077449, -0.023678,
		0.033175, 0.123739, 0.991760,
		29.246553, 39.064735, 33.978462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570644, 38.443871, 33.558266>,  <29.223331, 38.978119, 33.284229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570644, 38.443871, 33.558266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.340992, 38.578575, 33.856785>,  <29.203201, 38.659397, 34.035896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.340992, 38.578575, 33.856785>,  <29.570644, 38.443871, 33.558266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.340992, 38.578575, 33.856785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137573, -0.938216, 0.317529,
		0.807123, 0.079633, 0.584989,
		-0.574131, 0.336764, 0.746300,
		29.168753, 38.679604, 34.080673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778904, 38.145969, 34.183697>,  <29.570644, 38.443871, 33.558266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778904, 38.145969, 34.183697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.402662, 38.259102, 34.258820>,  <29.176918, 38.326981, 34.303894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.402662, 38.259102, 34.258820>,  <29.778904, 38.145969, 34.183697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402662, 38.259102, 34.258820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136971, -0.822285, 0.552347,
		0.310651, 0.493816, 0.812184,
		-0.940604, 0.282832, 0.187805,
		29.120481, 38.343952, 34.315163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634579, 37.958488, 34.922894>,  <29.778904, 38.145969, 34.183697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634579, 37.958488, 34.922894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.302456, 37.963230, 34.700020>,  <29.103182, 37.966076, 34.566296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.302456, 37.963230, 34.700020>,  <29.634579, 37.958488, 34.922894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.302456, 37.963230, 34.700020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288312, -0.864727, 0.411247,
		-0.476936, 0.502103, 0.721405,
		-0.830306, 0.011851, -0.557181,
		29.053364, 37.966785, 34.532864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207674, 37.540234, 35.263729>,  <29.634579, 37.958488, 34.922894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207674, 37.540234, 35.263729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.984219, 37.601772, 34.937721>,  <28.850145, 37.638695, 34.742119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.984219, 37.601772, 34.937721>,  <29.207674, 37.540234, 35.263729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984219, 37.601772, 34.937721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584367, -0.770340, 0.255128,
		-0.588590, 0.618794, 0.520246,
		-0.558638, 0.153849, -0.815018,
		28.816628, 37.647926, 34.693214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598940, 37.466022, 35.519566>,  <29.207674, 37.540234, 35.263729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598940, 37.466022, 35.519566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.608364, 37.383541, 35.128277>,  <28.614019, 37.334053, 34.893501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.608364, 37.383541, 35.128277>,  <28.598940, 37.466022, 35.519566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608364, 37.383541, 35.128277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538610, -0.826962, 0.161347,
		-0.842225, 0.523081, -0.130548,
		0.023560, -0.206205, -0.978225,
		28.615433, 37.321678, 34.834808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965708, 37.409893, 35.321449>,  <28.598940, 37.466022, 35.519566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965708, 37.409893, 35.321449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.164038, 37.211826, 35.036079>,  <28.283035, 37.092987, 34.864857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.164038, 37.211826, 35.036079>,  <27.965708, 37.409893, 35.321449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164038, 37.211826, 35.036079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514096, -0.829460, 0.218408,
		-0.699903, 0.258476, -0.665827,
		0.495824, -0.495164, -0.713423,
		28.312784, 37.063278, 34.822052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468811, 36.997192, 34.972099>,  <27.965708, 37.409893, 35.321449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468811, 36.997192, 34.972099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.818043, 36.830105, 34.871506>,  <28.027582, 36.729855, 34.811150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.818043, 36.830105, 34.871506>,  <27.468811, 36.997192, 34.972099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818043, 36.830105, 34.871506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415134, -0.907369, 0.065923,
		-0.255727, 0.046843, -0.965614,
		0.873080, -0.417717, -0.251485,
		28.079967, 36.704788, 34.796059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228594, 36.387009, 34.462566>,  <27.468811, 36.997192, 34.972099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228594, 36.387009, 34.462566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.612158, 36.309364, 34.545330>,  <27.842297, 36.262775, 34.594986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.612158, 36.309364, 34.545330>,  <27.228594, 36.387009, 34.462566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612158, 36.309364, 34.545330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155186, -0.969394, -0.190244,
		0.237502, 0.150318, -0.959686,
		0.958911, -0.194114, 0.206906,
		27.899832, 36.251129, 34.607403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509588, 35.966080, 33.802807>,  <27.228594, 36.387009, 34.462566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509588, 35.966080, 33.802807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.725399, 35.899452, 34.132938>,  <27.854885, 35.859474, 34.331017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.725399, 35.899452, 34.132938>,  <27.509588, 35.966080, 33.802807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725399, 35.899452, 34.132938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096658, -0.986008, -0.135816,
		0.836401, -0.006498, -0.548079,
		0.539528, -0.166573, 0.825326,
		27.887257, 35.849480, 34.380535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983101, 35.468365, 33.598278>,  <27.509588, 35.966080, 33.802807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983101, 35.468365, 33.598278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.979385, 35.454151, 33.998009>,  <27.977156, 35.445621, 34.237846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.979385, 35.454151, 33.998009>,  <27.983101, 35.468365, 33.598278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979385, 35.454151, 33.998009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230908, -0.972282, -0.036717,
		0.972931, -0.231094, 0.000821,
		-0.009284, -0.035533, 0.999325,
		27.976599, 35.443493, 34.297806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348703, 35.019436, 33.725552>,  <27.983101, 35.468365, 33.598278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348703, 35.019436, 33.725552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.151047, 35.017536, 34.073299>,  <28.032454, 35.016396, 34.281948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.151047, 35.017536, 34.073299>,  <28.348703, 35.019436, 33.725552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151047, 35.017536, 34.073299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119060, -0.990194, -0.073083,
		0.861190, -0.139620, 0.488731,
		-0.494142, -0.004750, 0.869368,
		28.002804, 35.016109, 34.334110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707602, 34.536518, 34.177711>,  <28.348703, 35.019436, 33.725552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707602, 34.536518, 34.177711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.319040, 34.585224, 34.259243>,  <28.085903, 34.614449, 34.308163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.319040, 34.585224, 34.259243>,  <28.707602, 34.536518, 34.177711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319040, 34.585224, 34.259243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163327, -0.965788, -0.201440,
		0.172327, -0.228970, 0.958058,
		-0.971405, 0.121763, 0.203829,
		28.027618, 34.621754, 34.320393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350525, 34.846012, 34.059666>,  <28.707602, 34.536518, 34.177711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350525, 34.846012, 34.059666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.691511, 34.836884, 33.850750>,  <29.896103, 34.831406, 33.725403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.691511, 34.836884, 33.850750>,  <29.350525, 34.846012, 34.059666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691511, 34.836884, 33.850750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417834, 0.630172, 0.654445,
		0.314194, -0.776120, 0.546736,
		0.852465, -0.022822, -0.522286,
		29.947250, 34.830036, 33.694065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931698, 34.759537, 34.519478>,  <29.350525, 34.846012, 34.059666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931698, 34.759537, 34.519478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.085913, 34.950218, 34.203472>,  <30.178442, 35.064625, 34.013870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.085913, 34.950218, 34.203472>,  <29.931698, 34.759537, 34.519478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085913, 34.950218, 34.203472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605564, 0.515280, 0.606448,
		0.696171, -0.712210, -0.090014,
		0.385536, 0.476701, -0.790012,
		30.201572, 35.093227, 33.966469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672155, 35.008507, 34.764450>,  <29.931698, 34.759537, 34.519478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672155, 35.008507, 34.764450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.627388, 35.206863, 34.419991>,  <30.600529, 35.325878, 34.213314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.627388, 35.206863, 34.419991>,  <30.672155, 35.008507, 34.764450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627388, 35.206863, 34.419991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539516, 0.758066, 0.366412,
		0.834504, -0.423594, -0.352379,
		-0.111917, 0.495887, -0.861145,
		30.593813, 35.355629, 34.161648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330059, 35.360458, 34.666153>,  <30.672155, 35.008507, 34.764450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330059, 35.360458, 34.666153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.088335, 35.551029, 34.410706>,  <30.943300, 35.665371, 34.257439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.088335, 35.551029, 34.410706>,  <31.330059, 35.360458, 34.666153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088335, 35.551029, 34.410706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514538, 0.845333, 0.143742,
		0.608326, -0.241728, -0.755981,
		-0.604309, 0.476423, -0.638617,
		30.907042, 35.693954, 34.219120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756811, 35.773731, 34.223721>,  <31.330059, 35.360458, 34.666153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756811, 35.773731, 34.223721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.387852, 35.927711, 34.211075>,  <31.166477, 36.020100, 34.203487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.387852, 35.927711, 34.211075>,  <31.756811, 35.773731, 34.223721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387852, 35.927711, 34.211075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356096, 0.879243, 0.316429,
		0.149602, 0.280617, -0.948089,
		-0.922396, 0.384949, -0.031610,
		31.111134, 36.043198, 34.201591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795010, 36.355953, 33.764469>,  <31.756811, 35.773731, 34.223721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795010, 36.355953, 33.764469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.462191, 36.407097, 33.980377>,  <31.262499, 36.437782, 34.109921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.462191, 36.407097, 33.980377>,  <31.795010, 36.355953, 33.764469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462191, 36.407097, 33.980377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220919, 0.968953, 0.111019,
		-0.508813, 0.211618, -0.834462,
		-0.832048, 0.127861, 0.539766,
		31.212576, 36.445454, 34.142307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333950, 36.852287, 33.436035>,  <31.795010, 36.355953, 33.764469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333950, 36.852287, 33.436035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.239662, 36.860535, 33.824677>,  <31.183090, 36.865482, 34.057861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.239662, 36.860535, 33.824677>,  <31.333950, 36.852287, 33.436035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239662, 36.860535, 33.824677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418323, 0.904563, 0.082288,
		-0.877179, 0.425840, -0.221849,
		-0.235718, 0.020623, 0.971603,
		31.168947, 36.866722, 34.116158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979456, 37.508846, 33.513798>,  <31.333950, 36.852287, 33.436035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979456, 37.508846, 33.513798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.084553, 37.387291, 33.880100>,  <31.147612, 37.314358, 34.099884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.084553, 37.387291, 33.880100>,  <30.979456, 37.508846, 33.513798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084553, 37.387291, 33.880100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344547, 0.916081, 0.205142,
		-0.901252, 0.261623, 0.345397,
		0.262741, -0.303890, 0.915761,
		31.163376, 37.296124, 34.154827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620148, 37.941040, 34.060932>,  <30.979456, 37.508846, 33.513798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620148, 37.941040, 34.060932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.924446, 37.775818, 34.261192>,  <31.107025, 37.676685, 34.381348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.924446, 37.775818, 34.261192>,  <30.620148, 37.941040, 34.060932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924446, 37.775818, 34.261192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275704, 0.903964, 0.326859,
		-0.587580, -0.110625, 0.801568,
		0.760748, -0.413051, 0.500652,
		31.152670, 37.651901, 34.411388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688564, 38.391296, 34.707832>,  <30.620148, 37.941040, 34.060932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688564, 38.391296, 34.707832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.027082, 38.178413, 34.698540>,  <31.230192, 38.050682, 34.692963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.027082, 38.178413, 34.698540>,  <30.688564, 38.391296, 34.707832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027082, 38.178413, 34.698540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512162, 0.800869, 0.310321,
		-0.146551, -0.274521, 0.950348,
		0.846294, -0.532210, -0.023231,
		31.280972, 38.018749, 34.691570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012058, 38.481884, 35.310272>,  <30.688564, 38.391296, 34.707832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012058, 38.481884, 35.310272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.304701, 38.389282, 35.053787>,  <31.480286, 38.333721, 34.899895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.304701, 38.389282, 35.053787>,  <31.012058, 38.481884, 35.310272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304701, 38.389282, 35.053787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401897, 0.906213, 0.131368,
		0.550664, -0.353812, 0.756033,
		0.731606, -0.231508, -0.641215,
		31.524183, 38.319828, 34.861423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571590, 38.851231, 35.602352>,  <31.012058, 38.481884, 35.310272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571590, 38.851231, 35.602352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.648539, 38.780704, 35.216209>,  <31.694708, 38.738388, 34.984524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.648539, 38.780704, 35.216209>,  <31.571590, 38.851231, 35.602352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648539, 38.780704, 35.216209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511983, 0.857262, -0.054549,
		0.837178, -0.483750, 0.255185,
		0.192372, -0.176317, -0.965352,
		31.706251, 38.727810, 34.926605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211266, 38.950207, 35.572018>,  <31.571590, 38.851231, 35.602352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211266, 38.950207, 35.572018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.130032, 38.974365, 35.181099>,  <32.081291, 38.988861, 34.946548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.130032, 38.974365, 35.181099>,  <32.211266, 38.950207, 35.572018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130032, 38.974365, 35.181099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518494, 0.853310, -0.055008,
		0.830614, -0.517894, -0.204613,
		-0.203087, 0.060401, -0.977296,
		32.069107, 38.992485, 34.887909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851879, 39.065170, 35.212311>,  <32.211266, 38.950207, 35.572018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851879, 39.065170, 35.212311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.576199, 39.187786, 34.949699>,  <32.410789, 39.261356, 34.792133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.576199, 39.187786, 34.949699>,  <32.851879, 39.065170, 35.212311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576199, 39.187786, 34.949699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522710, 0.837829, -0.157531,
		0.501772, -0.451746, -0.737665,
		-0.689201, 0.306541, -0.656532,
		32.369438, 39.279747, 34.752739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241554, 39.399578, 34.685318>,  <32.851879, 39.065170, 35.212311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241554, 39.399578, 34.685318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.867489, 39.538803, 34.659039>,  <32.643047, 39.622337, 34.643272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.867489, 39.538803, 34.659039>,  <33.241554, 39.399578, 34.685318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867489, 39.538803, 34.659039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348356, 0.870161, -0.348523,
		-0.064143, -0.348812, -0.934995,
		-0.935165, 0.348066, -0.065696,
		32.586941, 39.643223, 34.639328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352474, 39.862240, 34.204224>,  <33.241554, 39.399578, 34.685318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352474, 39.862240, 34.204224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.975475, 39.946377, 34.308113>,  <32.749275, 39.996861, 34.370449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.975475, 39.946377, 34.308113>,  <33.352474, 39.862240, 34.204224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975475, 39.946377, 34.308113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092970, 0.911443, -0.400785,
		-0.321030, -0.353591, -0.878586,
		-0.942495, 0.210346, 0.259727,
		32.692726, 40.009480, 34.386032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007385, 40.197914, 33.626774>,  <33.352474, 39.862240, 34.204224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007385, 40.197914, 33.626774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.804947, 40.306526, 33.954224>,  <32.683483, 40.371693, 34.150692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.804947, 40.306526, 33.954224>,  <33.007385, 40.197914, 33.626774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804947, 40.306526, 33.954224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145389, 0.962425, -0.229348,
		-0.850136, 0.002947, -0.526554,
		-0.506093, 0.271533, 0.818621,
		32.653118, 40.387985, 34.199810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698425, 40.875179, 33.416603>,  <33.007385, 40.197914, 33.626774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698425, 40.875179, 33.416603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.648056, 40.873409, 33.813416>,  <32.617832, 40.872345, 34.051502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.648056, 40.873409, 33.813416>,  <32.698425, 40.875179, 33.416603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648056, 40.873409, 33.813416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373609, 0.926152, 0.051558,
		-0.918999, 0.377124, -0.114973,
		-0.125926, -0.004427, 0.992030,
		32.610279, 40.872082, 34.111023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405510, 41.581459, 33.641098>,  <32.698425, 40.875179, 33.416603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405510, 41.581459, 33.641098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.622803, 41.411987, 33.931034>,  <32.753178, 41.310303, 34.104996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.622803, 41.411987, 33.931034>,  <32.405510, 41.581459, 33.641098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622803, 41.411987, 33.931034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468176, 0.869509, 0.157367,
		-0.696927, 0.253864, 0.670706,
		0.543235, -0.423682, 0.724837,
		32.785774, 41.284882, 34.148487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350479, 42.117809, 34.109024>,  <32.405510, 41.581459, 33.641098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350479, 42.117809, 34.109024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.653828, 41.865643, 34.175293>,  <32.835835, 41.714340, 34.215054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.653828, 41.865643, 34.175293>,  <32.350479, 42.117809, 34.109024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653828, 41.865643, 34.175293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600349, 0.774538, 0.199178,
		-0.253885, -0.051590, 0.965858,
		0.758369, -0.630420, 0.165672,
		32.881340, 41.676517, 34.224995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614868, 42.446327, 34.716022>,  <32.350479, 42.117809, 34.109024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614868, 42.446327, 34.716022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.881050, 42.202785, 34.543293>,  <33.040760, 42.056660, 34.439655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.881050, 42.202785, 34.543293>,  <32.614868, 42.446327, 34.716022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881050, 42.202785, 34.543293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674118, 0.738620, -0.002584,
		0.320524, -0.289378, 0.901956,
		0.665455, -0.608853, -0.431820,
		33.080685, 42.020130, 34.413746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140076, 42.559963, 35.093479>,  <32.614868, 42.446327, 34.716022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140076, 42.559963, 35.093479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.297630, 42.406643, 34.759312>,  <33.392162, 42.314651, 34.558811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.297630, 42.406643, 34.759312>,  <33.140076, 42.559963, 35.093479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297630, 42.406643, 34.759312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629881, 0.774495, -0.058372,
		0.669405, -0.503224, 0.546500,
		0.393888, -0.383305, -0.835422,
		33.415798, 42.291653, 34.508686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.152752, 36.615395, 45.935902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.850044, 36.359272, 45.988541>,  <38.668419, 36.205601, 46.020126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.850044, 36.359272, 45.988541>,  <39.152752, 36.615395, 45.935902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850044, 36.359272, 45.988541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050485, 0.143471, 0.988366,
		-0.651735, 0.754604, -0.076249,
		-0.756765, -0.640303, 0.131601,
		38.623016, 36.167179, 46.028023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752762, 36.930393, 46.498055>,  <39.152752, 36.615395, 45.935902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752762, 36.930393, 46.498055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.660034, 36.541733, 46.479511>,  <38.604397, 36.308537, 46.468384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.660034, 36.541733, 46.479511>,  <38.752762, 36.930393, 46.498055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660034, 36.541733, 46.479511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123623, -0.017844, 0.992169,
		-0.964871, 0.235738, -0.115982,
		-0.231822, -0.971653, -0.046360,
		38.590488, 36.250237, 46.465603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098442, 36.870338, 46.762482>,  <38.752762, 36.930393, 46.498055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098442, 36.870338, 46.762482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.295784, 36.523155, 46.785282>,  <38.414188, 36.314846, 46.798962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.295784, 36.523155, 46.785282>,  <38.098442, 36.870338, 46.762482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295784, 36.523155, 46.785282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120799, 0.133263, 0.983691,
		-0.861399, -0.478423, 0.170595,
		0.493355, -0.867959, 0.056999,
		38.443790, 36.262768, 46.802383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848553, 36.650135, 47.377151>,  <38.098442, 36.870338, 46.762482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848553, 36.650135, 47.377151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.174706, 36.431629, 47.300465>,  <38.370396, 36.300526, 47.254452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.174706, 36.431629, 47.300465>,  <37.848553, 36.650135, 47.377151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174706, 36.431629, 47.300465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210472, -0.028787, 0.977176,
		-0.539315, -0.837118, 0.091501,
		0.815378, -0.546264, -0.191715,
		38.419319, 36.267750, 47.242950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770912, 36.034637, 47.725872>,  <37.848553, 36.650135, 47.377151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770912, 36.034637, 47.725872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.153526, 36.135624, 47.667488>,  <38.383095, 36.196217, 47.632458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.153526, 36.135624, 47.667488>,  <37.770912, 36.034637, 47.725872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153526, 36.135624, 47.667488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165929, -0.059575, 0.984336,
		0.239816, -0.965770, -0.098876,
		0.956533, 0.252466, -0.145962,
		38.440487, 36.211365, 47.623699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123013, 35.672077, 48.195728>,  <37.770912, 36.034637, 47.725872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123013, 35.672077, 48.195728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.415813, 35.924606, 48.093277>,  <38.591492, 36.076126, 48.031807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.415813, 35.924606, 48.093277>,  <38.123013, 35.672077, 48.195728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415813, 35.924606, 48.093277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368199, -0.050261, 0.928388,
		0.573243, -0.773886, -0.269245,
		0.731999, 0.631328, -0.256132,
		38.635414, 36.114006, 48.016438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690395, 35.364147, 48.537647>,  <38.123013, 35.672077, 48.195728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690395, 35.364147, 48.537647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.772049, 35.744503, 48.444576>,  <38.821041, 35.972717, 48.388733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.772049, 35.744503, 48.444576>,  <38.690395, 35.364147, 48.537647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772049, 35.744503, 48.444576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254562, 0.177946, 0.950544,
		0.945265, -0.253272, -0.205735,
		0.204136, 0.950889, -0.232679,
		38.833290, 36.029770, 48.374771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312939, 35.489719, 48.892132>,  <38.690395, 35.364147, 48.537647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312939, 35.489719, 48.892132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.134785, 35.841640, 48.825691>,  <39.027893, 36.052792, 48.785828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.134785, 35.841640, 48.825691>,  <39.312939, 35.489719, 48.892132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134785, 35.841640, 48.825691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192477, 0.275261, 0.941905,
		0.874406, 0.387539, -0.291937,
		-0.445384, 0.879798, -0.166097,
		39.001171, 36.105579, 48.775864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715618, 36.048599, 49.063644>,  <39.312939, 35.489719, 48.892132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715618, 36.048599, 49.063644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.368809, 36.247852, 49.059189>,  <39.160721, 36.367405, 49.056515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.368809, 36.247852, 49.059189>,  <39.715618, 36.048599, 49.063644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368809, 36.247852, 49.059189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304491, 0.547407, 0.779507,
		0.394396, 0.672463, -0.626295,
		-0.867028, 0.498135, -0.011136,
		39.108700, 36.397293, 49.055847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879265, 36.743397, 48.990543>,  <39.715618, 36.048599, 49.063644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879265, 36.743397, 48.990543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.503403, 36.745991, 49.127365>,  <39.277885, 36.747547, 49.209457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.503403, 36.745991, 49.127365>,  <39.879265, 36.743397, 48.990543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503403, 36.745991, 49.127365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284400, 0.570527, 0.770464,
		-0.190158, 0.821253, -0.537943,
		-0.939658, 0.006481, 0.342055,
		39.221504, 36.747936, 49.229980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834263, 37.413937, 49.330063>,  <39.879265, 36.743397, 48.990543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834263, 37.413937, 49.330063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.533195, 37.214787, 49.502392>,  <39.352554, 37.095299, 49.605789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.533195, 37.214787, 49.502392>,  <39.834263, 37.413937, 49.330063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533195, 37.214787, 49.502392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025953, 0.631409, 0.775015,
		-0.657886, 0.594512, -0.462322,
		-0.752670, -0.497873, 0.430824,
		39.307396, 37.065426, 49.631638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332230, 37.937321, 49.682526>,  <39.834263, 37.413937, 49.330063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332230, 37.937321, 49.682526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.242500, 37.579014, 49.836033>,  <39.188663, 37.364029, 49.928135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.242500, 37.579014, 49.836033>,  <39.332230, 37.937321, 49.682526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242500, 37.579014, 49.836033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008766, 0.395640, 0.918364,
		-0.974475, 0.202646, -0.096604,
		-0.224323, -0.895770, 0.383765,
		39.175205, 37.310284, 49.951164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770290, 38.093578, 50.194897>,  <39.332230, 37.937321, 49.682526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770290, 38.093578, 50.194897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.956818, 37.754215, 50.295097>,  <39.068733, 37.550598, 50.355217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.956818, 37.754215, 50.295097>,  <38.770290, 38.093578, 50.194897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956818, 37.754215, 50.295097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200949, 0.174180, 0.963992,
		-0.861491, -0.499866, -0.089263,
		0.466319, -0.848408, 0.250502,
		39.096714, 37.499695, 50.370247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318977, 38.556492, 50.660278>,  <38.770290, 38.093578, 50.194897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318977, 38.556492, 50.660278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.103203, 38.890926, 50.700214>,  <37.973736, 39.091587, 50.724178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.103203, 38.890926, 50.700214>,  <38.318977, 38.556492, 50.660278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103203, 38.890926, 50.700214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303507, 0.303672, -0.903143,
		-0.785423, -0.456886, -0.417570,
		-0.539438, 0.836085, 0.099843,
		37.941372, 39.141750, 50.730167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924194, 38.693672, 50.108864>,  <38.318977, 38.556492, 50.660278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924194, 38.693672, 50.108864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.032551, 39.042553, 50.271774>,  <38.097565, 39.251881, 50.369522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.032551, 39.042553, 50.271774>,  <37.924194, 38.693672, 50.108864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032551, 39.042553, 50.271774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315105, 0.319444, -0.893680,
		-0.909576, 0.370423, -0.188303,
		0.270888, 0.872205, 0.407281,
		38.113815, 39.304214, 50.393959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633961, 39.216087, 49.653549>,  <37.924194, 38.693672, 50.108864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633961, 39.216087, 49.653549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.934677, 39.378433, 49.861431>,  <38.115105, 39.475842, 49.986160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.934677, 39.378433, 49.861431>,  <37.633961, 39.216087, 49.653549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934677, 39.378433, 49.861431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361652, 0.405243, -0.839634,
		-0.551381, 0.819179, 0.157876,
		0.751789, 0.405862, 0.519701,
		38.160213, 39.500191, 50.017342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595810, 39.861332, 49.413681>,  <37.633961, 39.216087, 49.653549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595810, 39.861332, 49.413681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.964123, 39.789448, 49.552174>,  <38.185108, 39.746319, 49.635269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.964123, 39.789448, 49.552174>,  <37.595810, 39.861332, 49.413681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964123, 39.789448, 49.552174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379960, 0.212252, -0.900322,
		0.088307, 0.960549, 0.263719,
		0.920778, -0.179708, 0.346227,
		38.240356, 39.735535, 49.656040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899387, 40.534683, 49.340061>,  <37.595810, 39.861332, 49.413681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899387, 40.534683, 49.340061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.153023, 40.226105, 49.361229>,  <38.305206, 40.040958, 49.373928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.153023, 40.226105, 49.361229>,  <37.899387, 40.534683, 49.340061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153023, 40.226105, 49.361229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369061, 0.241794, -0.897401,
		0.679500, 0.588565, 0.438030,
		0.634093, -0.771444, 0.052918,
		38.343250, 39.994671, 49.377106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386326, 40.727695, 48.917969>,  <37.899387, 40.534683, 49.340061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386326, 40.727695, 48.917969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.470020, 40.342125, 48.983772>,  <38.520237, 40.110783, 49.023254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.470020, 40.342125, 48.983772>,  <38.386326, 40.727695, 48.917969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470020, 40.342125, 48.983772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275690, -0.103256, -0.955685,
		0.938197, 0.245321, 0.244140,
		0.209241, -0.963927, 0.164508,
		38.532791, 40.052948, 49.033123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027935, 40.652641, 48.571342>,  <38.386326, 40.727695, 48.917969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027935, 40.652641, 48.571342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.871758, 40.285622, 48.601433>,  <38.778049, 40.065411, 48.619488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.871758, 40.285622, 48.601433>,  <39.027935, 40.652641, 48.571342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871758, 40.285622, 48.601433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263432, -0.189648, -0.945853,
		0.882133, -0.349484, 0.315758,
		-0.390443, -0.917549, 0.075229,
		38.754623, 40.010357, 48.624001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414520, 40.281700, 48.242157>,  <39.027935, 40.652641, 48.571342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414520, 40.281700, 48.242157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.093834, 40.043785, 48.265751>,  <38.901421, 39.901035, 48.279907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.093834, 40.043785, 48.265751>,  <39.414520, 40.281700, 48.242157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093834, 40.043785, 48.265751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222191, -0.388194, -0.894392,
		0.554869, -0.703943, 0.443378,
		-0.801718, -0.594785, 0.058987,
		38.853317, 39.865349, 48.283447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649582, 39.631725, 48.088486>,  <39.414520, 40.281700, 48.242157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649582, 39.631725, 48.088486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.257359, 39.635662, 48.010090>,  <39.022026, 39.638023, 47.963055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.257359, 39.635662, 48.010090>,  <39.649582, 39.631725, 48.088486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257359, 39.635662, 48.010090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189014, -0.221057, -0.956769,
		-0.052742, -0.975211, 0.214899,
		-0.980557, 0.009843, -0.195988,
		38.963192, 39.638615, 47.951294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765366, 38.936382, 47.592403>,  <39.649582, 39.631725, 48.088486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765366, 38.936382, 47.592403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.408340, 39.109371, 47.541340>,  <39.194126, 39.213165, 47.510700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.408340, 39.109371, 47.541340>,  <39.765366, 38.936382, 47.592403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408340, 39.109371, 47.541340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113345, -0.489195, -0.864778,
		-0.436438, -0.757403, 0.485657,
		-0.892567, 0.432469, -0.127656,
		39.140572, 39.239113, 47.503044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342144, 38.468143, 47.421379>,  <39.765366, 38.936382, 47.592403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342144, 38.468143, 47.421379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.129539, 38.786770, 47.306160>,  <39.001976, 38.977947, 47.237026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.129539, 38.786770, 47.306160>,  <39.342144, 38.468143, 47.421379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129539, 38.786770, 47.306160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261815, -0.477905, -0.838486,
		-0.805572, -0.370251, 0.462567,
		-0.531513, 0.796568, -0.288050,
		38.970085, 39.025742, 47.219746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724976, 38.189320, 47.224342>,  <39.342144, 38.468143, 47.421379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724976, 38.189320, 47.224342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.792412, 38.531982, 47.029320>,  <38.832874, 38.737579, 46.912308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.792412, 38.531982, 47.029320>,  <38.724976, 38.189320, 47.224342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792412, 38.531982, 47.029320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188015, -0.457608, -0.869049,
		-0.967589, 0.238180, 0.083917,
		0.168589, 0.856659, -0.487558,
		38.842987, 38.788979, 46.883053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137402, 38.262138, 46.832214>,  <38.724976, 38.189320, 47.224342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137402, 38.262138, 46.832214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.432030, 38.484951, 46.678753>,  <38.608807, 38.618637, 46.586678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.432030, 38.484951, 46.678753>,  <38.137402, 38.262138, 46.832214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432030, 38.484951, 46.678753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113486, -0.457401, -0.881989,
		-0.666774, 0.693184, -0.273693,
		0.736568, 0.557028, -0.383650,
		38.653000, 38.652058, 46.563660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882557, 38.356926, 46.236481>,  <38.137402, 38.262138, 46.832214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882557, 38.356926, 46.236481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.263336, 38.469193, 46.187454>,  <38.491802, 38.536552, 46.158039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.263336, 38.469193, 46.187454>,  <37.882557, 38.356926, 46.236481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263336, 38.469193, 46.187454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003935, -0.411367, -0.911461,
		-0.306239, 0.867180, -0.392704,
		0.951947, 0.280670, -0.122564,
		38.548920, 38.553394, 46.150684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817600, 38.275383, 45.561012>,  <37.882557, 38.356926, 46.236481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817600, 38.275383, 45.561012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.204086, 38.332848, 45.646603>,  <38.435978, 38.367325, 45.697956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.204086, 38.332848, 45.646603>,  <37.817600, 38.275383, 45.561012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204086, 38.332848, 45.646603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237960, -0.178394, -0.954752,
		-0.098987, 0.973415, -0.206553,
		0.966218, 0.143659, 0.213975,
		38.493950, 38.375946, 45.710796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337967, 38.842827, 45.440998>,  <37.817600, 38.275383, 45.561012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337967, 38.842827, 45.440998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.017513, 38.604549, 45.464088>,  <36.825241, 38.461582, 45.477943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.017513, 38.604549, 45.464088>,  <37.337967, 38.842827, 45.440998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017513, 38.604549, 45.464088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074016, -0.002896, 0.997253,
		-0.593890, 0.803206, 0.046411,
		-0.801134, -0.595694, 0.057730,
		36.777172, 38.425842, 45.481407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010315, 39.137749, 46.026657>,  <37.337967, 38.842827, 45.440998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010315, 39.137749, 46.026657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.772911, 38.822437, 45.961720>,  <36.630470, 38.633251, 45.922756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.772911, 38.822437, 45.961720>,  <37.010315, 39.137749, 46.026657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772911, 38.822437, 45.961720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173986, -0.071274, 0.982166,
		-0.785795, 0.611171, -0.094849,
		-0.593511, -0.788283, -0.162342,
		36.594856, 38.585953, 45.913017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314491, 39.234989, 46.306011>,  <37.010315, 39.137749, 46.026657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314491, 39.234989, 46.306011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.352501, 38.837036, 46.319775>,  <36.375309, 38.598267, 46.328033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.352501, 38.837036, 46.319775>,  <36.314491, 39.234989, 46.306011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352501, 38.837036, 46.319775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354733, -0.001550, 0.934966,
		-0.930126, -0.101050, -0.353064,
		0.095026, -0.994880, 0.034404,
		36.381008, 38.538570, 46.330097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768623, 39.168419, 46.664215>,  <36.314491, 39.234989, 46.306011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768623, 39.168419, 46.664215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.936192, 38.805454, 46.677563>,  <36.036732, 38.587677, 46.685574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.936192, 38.805454, 46.677563>,  <35.768623, 39.168419, 46.664215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936192, 38.805454, 46.677563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252852, -0.081275, 0.964085,
		-0.872109, -0.412311, -0.263488,
		0.418918, -0.907411, 0.033372,
		36.061867, 38.533230, 46.687576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241161, 38.854305, 47.075199>,  <35.768623, 39.168419, 46.664215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241161, 38.854305, 47.075199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.580067, 38.645290, 47.113361>,  <35.783409, 38.519882, 47.136257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.580067, 38.645290, 47.113361>,  <35.241161, 38.854305, 47.075199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580067, 38.645290, 47.113361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149400, -0.062064, 0.986827,
		-0.509734, -0.850353, -0.130652,
		0.847261, -0.522539, 0.095407,
		35.834244, 38.488529, 47.141983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048626, 38.339882, 47.427757>,  <35.241161, 38.854305, 47.075199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048626, 38.339882, 47.427757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.444317, 38.323967, 47.484119>,  <35.681732, 38.314419, 47.517937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.444317, 38.323967, 47.484119>,  <35.048626, 38.339882, 47.427757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444317, 38.323967, 47.484119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136856, 0.090692, 0.986431,
		-0.052025, -0.995084, 0.084270,
		0.989224, -0.039786, 0.140902,
		35.741085, 38.312031, 47.526390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154118, 37.818039, 47.912659>,  <35.048626, 38.339882, 47.427757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154118, 37.818039, 47.912659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.478775, 38.051666, 47.908672>,  <35.673569, 38.191845, 47.906281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.478775, 38.051666, 47.908672>,  <35.154118, 37.818039, 47.912659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478775, 38.051666, 47.908672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000735, 0.018087, 0.999836,
		0.584158, -0.811499, 0.015110,
		0.811640, 0.584073, -0.009970,
		35.722267, 38.226887, 47.905682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032864, 37.084568, 48.035576>,  <35.154118, 37.818039, 47.912659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032864, 37.084568, 48.035576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.718952, 36.933689, 48.232288>,  <34.530605, 36.843163, 48.350315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.718952, 36.933689, 48.232288>,  <35.032864, 37.084568, 48.035576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718952, 36.933689, 48.232288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486739, -0.116109, -0.865796,
		0.383680, -0.918824, -0.092479,
		-0.784777, -0.377202, 0.491777,
		34.483521, 36.820530, 48.379822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862656, 36.519997, 47.671825>,  <35.032864, 37.084568, 48.035576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862656, 36.519997, 47.671825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.536465, 36.634338, 47.873138>,  <34.340752, 36.702942, 47.993927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.536465, 36.634338, 47.873138>,  <34.862656, 36.519997, 47.671825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536465, 36.634338, 47.873138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539821, -0.061940, -0.839498,
		-0.208799, -0.956270, 0.204820,
		-0.815473, 0.285852, 0.503281,
		34.291824, 36.720093, 48.024124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376717, 36.190186, 47.424324>,  <34.862656, 36.519997, 47.671825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376717, 36.190186, 47.424324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.167812, 36.486572, 47.593185>,  <34.042469, 36.664402, 47.694504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.167812, 36.486572, 47.593185>,  <34.376717, 36.190186, 47.424324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167812, 36.486572, 47.593185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718888, -0.116234, -0.685339,
		-0.458743, -0.661409, 0.593374,
		-0.522259, 0.740964, 0.422157,
		34.011135, 36.708862, 47.719833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664314, 36.088974, 47.299347>,  <34.376717, 36.190186, 47.424324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664314, 36.088974, 47.299347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.672962, 36.470074, 47.420544>,  <33.678150, 36.698734, 47.493263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.672962, 36.470074, 47.420544>,  <33.664314, 36.088974, 47.299347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672962, 36.470074, 47.420544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663134, 0.240466, -0.708823,
		-0.748188, -0.185600, 0.636998,
		0.021619, 0.952748, 0.302991,
		33.679447, 36.755898, 47.511440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921959, 36.341209, 47.281628>,  <33.664314, 36.088974, 47.299347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921959, 36.341209, 47.281628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.161301, 36.660439, 47.253178>,  <33.304905, 36.851974, 47.236107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.161301, 36.660439, 47.253178>,  <32.921959, 36.341209, 47.281628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161301, 36.660439, 47.253178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541356, 0.337240, -0.770196,
		-0.590686, 0.499351, 0.633829,
		0.598351, 0.798071, -0.071124,
		33.340805, 36.899860, 47.231842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454391, 36.898346, 47.076302>,  <32.921959, 36.341209, 47.281628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454391, 36.898346, 47.076302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.828667, 36.968529, 46.953857>,  <33.053230, 37.010639, 46.880390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.828667, 36.968529, 46.953857>,  <32.454391, 36.898346, 47.076302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828667, 36.968529, 46.953857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341434, 0.231523, -0.910945,
		-0.088963, 0.956876, 0.276542,
		0.935686, 0.175461, -0.306112,
		33.109371, 37.021168, 46.862022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347717, 37.367611, 46.596806>,  <32.454391, 36.898346, 47.076302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347717, 37.367611, 46.596806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.707340, 37.212959, 46.514622>,  <32.923115, 37.120171, 46.465309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.707340, 37.212959, 46.514622>,  <32.347717, 37.367611, 46.596806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707340, 37.212959, 46.514622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194756, 0.067140, -0.978551,
		0.392127, 0.919790, -0.014935,
		0.899059, -0.386625, -0.205462,
		32.977058, 37.096973, 46.452984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.199547, 34.045189, 51.273148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.324715, 34.326279, 51.017567>,  <38.399815, 34.494934, 50.864220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.324715, 34.326279, 51.017567>,  <38.199547, 34.045189, 51.273148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324715, 34.326279, 51.017567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398646, -0.513430, -0.759915,
		-0.862068, 0.492507, 0.119478,
		0.312920, 0.702728, -0.638948,
		38.418591, 34.537098, 50.825882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631065, 34.166679, 50.816135>,  <38.199547, 34.045189, 51.273148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631065, 34.166679, 50.816135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.958336, 34.274628, 50.613060>,  <38.154697, 34.339397, 50.491215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.958336, 34.274628, 50.613060>,  <37.631065, 34.166679, 50.816135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958336, 34.274628, 50.613060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293431, -0.563365, -0.772346,
		-0.494449, 0.780891, -0.381746,
		0.818180, 0.269870, -0.507693,
		38.203789, 34.355587, 50.460751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311928, 34.150749, 50.128361>,  <37.631065, 34.166679, 50.816135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311928, 34.150749, 50.128361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.709869, 34.167439, 50.091434>,  <37.948635, 34.177452, 50.069279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.709869, 34.167439, 50.091434>,  <37.311928, 34.150749, 50.128361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709869, 34.167439, 50.091434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056787, -0.524977, -0.849220,
		-0.083898, 0.850093, -0.519906,
		0.994855, 0.041724, -0.092319,
		38.008327, 34.179955, 50.063740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426540, 34.371838, 49.416183>,  <37.311928, 34.150749, 50.128361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426540, 34.371838, 49.416183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.762238, 34.188339, 49.532955>,  <37.963657, 34.078239, 49.603020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.762238, 34.188339, 49.532955>,  <37.426540, 34.371838, 49.416183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762238, 34.188339, 49.532955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059804, -0.455749, -0.888097,
		0.540453, 0.762791, -0.355051,
		0.839246, -0.458742, 0.291929,
		38.014011, 34.050716, 49.620533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938080, 34.365608, 48.836758>,  <37.426540, 34.371838, 49.416183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938080, 34.365608, 48.836758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.060734, 34.063244, 49.068127>,  <38.134327, 33.881824, 49.206947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.060734, 34.063244, 49.068127>,  <37.938080, 34.365608, 48.836758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060734, 34.063244, 49.068127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115553, -0.573643, -0.810914,
		0.944788, 0.315492, -0.088551,
		0.306633, -0.755909, 0.578427,
		38.152725, 33.836472, 49.241653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510387, 34.166389, 48.561165>,  <37.938080, 34.365608, 48.836758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510387, 34.166389, 48.561165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.385445, 33.844910, 48.763752>,  <38.310478, 33.652023, 48.885303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.385445, 33.844910, 48.763752>,  <38.510387, 34.166389, 48.561165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385445, 33.844910, 48.763752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087064, -0.555117, -0.827203,
		0.945967, -0.214286, 0.243366,
		-0.312355, -0.803696, 0.506466,
		38.291737, 33.603802, 48.915691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111736, 33.638103, 48.529709>,  <38.510387, 34.166389, 48.561165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111736, 33.638103, 48.529709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.750221, 33.484592, 48.605476>,  <38.533314, 33.392487, 48.650936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.750221, 33.484592, 48.605476>,  <39.111736, 33.638103, 48.529709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750221, 33.484592, 48.605476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111536, -0.638507, -0.761491,
		0.413189, -0.667100, 0.619881,
		-0.903789, -0.383779, 0.189418,
		38.479084, 33.369457, 48.662300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151730, 33.009884, 48.441490>,  <39.111736, 33.638103, 48.529709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151730, 33.009884, 48.441490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.752800, 33.029022, 48.419361>,  <38.513443, 33.040504, 48.406082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.752800, 33.029022, 48.419361>,  <39.151730, 33.009884, 48.441490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752800, 33.029022, 48.419361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019389, -0.556362, -0.830714,
		-0.070526, -0.829561, 0.553944,
		-0.997321, 0.047846, -0.055322,
		38.453602, 33.043377, 48.402763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883648, 32.224197, 48.235119>,  <39.151730, 33.009884, 48.441490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883648, 32.224197, 48.235119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.570103, 32.456833, 48.148113>,  <38.381977, 32.596416, 48.095909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.570103, 32.456833, 48.148113>,  <38.883648, 32.224197, 48.235119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570103, 32.456833, 48.148113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187171, -0.555322, -0.810299,
		-0.592055, -0.594449, 0.544152,
		-0.783861, 0.581591, -0.217517,
		38.334946, 32.631310, 48.082859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268429, 31.805285, 48.129261>,  <38.883648, 32.224197, 48.235119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268429, 31.805285, 48.129261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.147404, 32.154278, 47.975780>,  <38.074787, 32.363674, 47.883690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.147404, 32.154278, 47.975780>,  <38.268429, 31.805285, 48.129261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147404, 32.154278, 47.975780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208119, -0.453335, -0.866703,
		-0.930129, -0.182380, 0.318744,
		-0.302567, 0.872482, -0.383704,
		38.056633, 32.416023, 47.860668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589062, 31.749905, 47.850033>,  <38.268429, 31.805285, 48.129261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589062, 31.749905, 47.850033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.710426, 32.079994, 47.659477>,  <37.783245, 32.278049, 47.545143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.710426, 32.079994, 47.659477>,  <37.589062, 31.749905, 47.850033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710426, 32.079994, 47.659477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392013, -0.347584, -0.851770,
		-0.868487, 0.445185, 0.218039,
		0.303409, 0.825225, -0.476390,
		37.801449, 32.327560, 47.516560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083775, 31.981569, 47.425983>,  <37.589062, 31.749905, 47.850033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083775, 31.981569, 47.425983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.404602, 32.159779, 47.266884>,  <37.597099, 32.266705, 47.171425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.404602, 32.159779, 47.266884>,  <37.083775, 31.981569, 47.425983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404602, 32.159779, 47.266884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278794, -0.309664, -0.909055,
		-0.528171, 0.840011, -0.124162,
		0.802065, 0.445521, -0.397746,
		37.645222, 32.293434, 47.147560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440800, 32.357456, 47.724411>,  <37.083775, 31.981569, 47.425983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440800, 32.357456, 47.724411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.049759, 32.274536, 47.738987>,  <35.815136, 32.224785, 47.747734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.049759, 32.274536, 47.738987>,  <36.440800, 32.357456, 47.724411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049759, 32.274536, 47.738987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004645, 0.151831, 0.988396,
		-0.210426, 0.966423, -0.147467,
		-0.977599, -0.207300, 0.036439,
		35.756481, 32.212345, 47.749920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057323, 32.953156, 47.995605>,  <36.440800, 32.357456, 47.724411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057323, 32.953156, 47.995605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.832329, 32.630783, 48.069450>,  <35.697330, 32.437359, 48.113758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.832329, 32.630783, 48.069450>,  <36.057323, 32.953156, 47.995605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832329, 32.630783, 48.069450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041594, 0.250585, 0.967201,
		-0.825759, 0.536360, -0.174473,
		-0.562488, -0.805932, 0.184613,
		35.663582, 32.389004, 48.124836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610432, 33.270565, 48.489262>,  <36.057323, 32.953156, 47.995605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610432, 33.270565, 48.489262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.553513, 32.874802, 48.500694>,  <35.519360, 32.637344, 48.507553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.553513, 32.874802, 48.500694>,  <35.610432, 33.270565, 48.489262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553513, 32.874802, 48.500694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297617, 0.070311, 0.952093,
		-0.944021, 0.126975, -0.304470,
		-0.142299, -0.989411, 0.028585,
		35.510822, 32.577980, 48.509270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918510, 33.209908, 48.837994>,  <35.610432, 33.270565, 48.489262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918510, 33.209908, 48.837994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.127487, 32.870548, 48.872131>,  <35.252872, 32.666935, 48.892612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.127487, 32.870548, 48.872131>,  <34.918510, 33.209908, 48.837994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127487, 32.870548, 48.872131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190284, -0.018441, 0.981556,
		-0.831174, -0.529040, -0.171071,
		0.522437, -0.848396, 0.085340,
		35.284218, 32.616028, 48.897732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564545, 32.852959, 49.238548>,  <34.918510, 33.209908, 48.837994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564545, 32.852959, 49.238548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.929352, 32.699780, 49.297291>,  <35.148235, 32.607872, 49.332535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.929352, 32.699780, 49.297291>,  <34.564545, 32.852959, 49.238548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929352, 32.699780, 49.297291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084293, 0.175407, 0.980881,
		-0.401386, -0.906963, 0.127695,
		0.912022, -0.382948, 0.146857,
		35.202957, 32.584896, 49.341347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543327, 32.363182, 49.774197>,  <34.564545, 32.852959, 49.238548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543327, 32.363182, 49.774197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.927963, 32.469471, 49.746681>,  <35.158745, 32.533245, 49.730171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.927963, 32.469471, 49.746681>,  <34.543327, 32.363182, 49.774197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927963, 32.469471, 49.746681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038711, 0.116818, 0.992399,
		0.271735, -0.956947, 0.102045,
		0.961593, 0.265719, -0.068788,
		35.216442, 32.549187, 49.726044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846943, 32.038147, 50.429737>,  <34.543327, 32.363182, 49.774197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846943, 32.038147, 50.429737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.137119, 32.292122, 50.323460>,  <35.311226, 32.444508, 50.259693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.137119, 32.292122, 50.323460>,  <34.846943, 32.038147, 50.429737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137119, 32.292122, 50.323460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017367, 0.369018, 0.929260,
		0.688070, -0.678734, 0.256672,
		0.725437, 0.634938, -0.265698,
		35.354752, 32.482605, 50.243752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443382, 31.984571, 50.830513>,  <34.846943, 32.038147, 50.429737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443382, 31.984571, 50.830513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.484196, 32.353397, 50.681175>,  <35.508686, 32.574692, 50.591572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.484196, 32.353397, 50.681175>,  <35.443382, 31.984571, 50.830513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484196, 32.353397, 50.681175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079275, 0.366574, 0.927006,
		0.991617, -0.124185, -0.035693,
		0.102036, 0.922064, -0.373346,
		35.514805, 32.630016, 50.569172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979450, 32.309727, 51.245041>,  <35.443382, 31.984571, 50.830513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979450, 32.309727, 51.245041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.822647, 32.632034, 51.067471>,  <35.728565, 32.825420, 50.960930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.822647, 32.632034, 51.067471>,  <35.979450, 32.309727, 51.245041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822647, 32.632034, 51.067471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073789, 0.508527, 0.857878,
		0.917000, 0.303535, -0.258802,
		-0.392004, 0.805771, -0.443922,
		35.705048, 32.873764, 50.934296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286797, 32.984768, 51.640282>,  <35.979450, 32.309727, 51.245041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286797, 32.984768, 51.640282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.964470, 33.098404, 51.432453>,  <35.771072, 33.166584, 51.307755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.964470, 33.098404, 51.432453>,  <36.286797, 32.984768, 51.640282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964470, 33.098404, 51.432453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254633, 0.625916, 0.737151,
		0.534622, 0.726308, -0.432037,
		-0.805818, 0.284086, -0.519570,
		35.722725, 33.183628, 51.276581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361507, 33.601604, 51.675823>,  <36.286797, 32.984768, 51.640282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361507, 33.601604, 51.675823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.975319, 33.598576, 51.571671>,  <35.743607, 33.596760, 51.509178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.975319, 33.598576, 51.571671>,  <36.361507, 33.601604, 51.675823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975319, 33.598576, 51.571671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171218, 0.771768, 0.612420,
		0.196321, 0.635859, -0.746419,
		-0.965475, -0.007569, -0.260385,
		35.685677, 33.596306, 51.493557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266006, 34.260357, 51.386398>,  <36.361507, 33.601604, 51.675823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266006, 34.260357, 51.386398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.925407, 34.108150, 51.530712>,  <35.721050, 34.016827, 51.617302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.925407, 34.108150, 51.530712>,  <36.266006, 34.260357, 51.386398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925407, 34.108150, 51.530712> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081880, 0.776091, 0.625283,
		-0.517931, 0.502884, -0.691993,
		-0.851495, -0.380514, 0.360785,
		35.669960, 33.993996, 51.638947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729767, 34.884399, 51.436661>,  <36.266006, 34.260357, 51.386398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729767, 34.884399, 51.436661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.615711, 34.585964, 51.677341>,  <35.547276, 34.406902, 51.821751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.615711, 34.585964, 51.677341>,  <35.729767, 34.884399, 51.436661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615711, 34.585964, 51.677341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137781, 0.653148, 0.744590,
		-0.948531, 0.129411, -0.289037,
		-0.285142, -0.746091, 0.601700,
		35.530170, 34.362137, 51.857853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267700, 35.237122, 51.730976>,  <35.729767, 34.884399, 51.436661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267700, 35.237122, 51.730976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.363651, 34.927006, 51.964687>,  <35.421223, 34.740936, 52.104912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.363651, 34.927006, 51.964687>,  <35.267700, 35.237122, 51.730976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363651, 34.927006, 51.964687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090589, 0.581346, 0.808598,
		-0.966567, -0.246893, 0.069218,
		0.239877, -0.775294, 0.584275,
		35.435616, 34.694416, 52.139969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129356, 35.281658, 50.986519>,  <35.267700, 35.237122, 51.730976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129356, 35.281658, 50.986519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.226692, 35.669231, 51.004169>,  <35.285095, 35.901775, 51.014759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.226692, 35.669231, 51.004169>,  <35.129356, 35.281658, 50.986519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226692, 35.669231, 51.004169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577917, 0.181373, -0.795686,
		-0.778973, 0.168120, 0.604100,
		0.243338, 0.968937, 0.044125,
		35.299694, 35.959911, 51.017406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542511, 35.666946, 51.024307>,  <35.129356, 35.281658, 50.986519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542511, 35.666946, 51.024307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.815392, 35.913998, 50.867771>,  <34.979118, 36.062229, 50.773849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.815392, 35.913998, 50.867771>,  <34.542511, 35.666946, 51.024307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815392, 35.913998, 50.867771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648885, 0.264738, -0.713346,
		-0.336978, 0.740576, 0.581372,
		0.682198, 0.617625, -0.391337,
		35.020050, 36.099285, 50.750370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217567, 36.291344, 50.855629>,  <34.542511, 35.666946, 51.024307>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217567, 36.291344, 50.855629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.536251, 36.283253, 50.614021>,  <34.727463, 36.278397, 50.469055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.536251, 36.283253, 50.614021>,  <34.217567, 36.291344, 50.855629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536251, 36.283253, 50.614021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547706, 0.398326, -0.735768,
		0.255480, 0.917021, 0.306272,
		0.796711, -0.020227, -0.604023,
		34.775265, 36.277184, 50.432816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125729, 36.875507, 50.360825>,  <34.217567, 36.291344, 50.855629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125729, 36.875507, 50.360825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.426769, 36.705078, 50.160004>,  <34.607395, 36.602821, 50.039513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.426769, 36.705078, 50.160004>,  <34.125729, 36.875507, 50.360825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426769, 36.705078, 50.160004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378863, 0.343414, -0.859377,
		0.538566, 0.836977, 0.097032,
		0.752602, -0.426070, -0.502051,
		34.652550, 36.577255, 50.009388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457073, 37.350132, 49.836044>,  <34.125729, 36.875507, 50.360825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457073, 37.350132, 49.836044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.512432, 36.968166, 49.730980>,  <34.545647, 36.738987, 49.667942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.512432, 36.968166, 49.730980>,  <34.457073, 37.350132, 49.836044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512432, 36.968166, 49.730980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217850, 0.229361, -0.948649,
		0.966119, 0.188513, -0.176284,
		0.138400, -0.954912, -0.262658,
		34.553951, 36.681694, 49.652184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861301, 37.382977, 49.315388>,  <34.457073, 37.350132, 49.836044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861301, 37.382977, 49.315388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.717480, 37.010983, 49.284813>,  <34.631187, 36.787785, 49.266468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.717480, 37.010983, 49.284813>,  <34.861301, 37.382977, 49.315388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717480, 37.010983, 49.284813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258499, 0.177980, -0.949474,
		0.896605, -0.321628, -0.304394,
		-0.359553, -0.929989, -0.076437,
		34.609615, 36.731987, 49.261883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144581, 37.232914, 48.715736>,  <34.861301, 37.382977, 49.315388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144581, 37.232914, 48.715736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.850792, 36.968025, 48.775093>,  <34.674519, 36.809093, 48.810707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.850792, 36.968025, 48.775093>,  <35.144581, 37.232914, 48.715736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850792, 36.968025, 48.775093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205728, 0.008892, -0.978569,
		0.646708, -0.749257, -0.142768,
		-0.734469, -0.662220, 0.148392,
		34.630451, 36.769360, 48.819611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827202, 37.400990, 48.511131>,  <35.144581, 37.232914, 48.715736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827202, 37.400990, 48.511131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.905277, 37.786739, 48.439705>,  <35.952122, 38.018188, 48.396851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.905277, 37.786739, 48.439705>,  <35.827202, 37.400990, 48.511131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905277, 37.786739, 48.439705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091679, 0.163330, 0.982302,
		0.976471, -0.208108, -0.056532,
		0.195191, 0.964373, -0.178566,
		35.963833, 38.076050, 48.386135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489582, 37.585026, 48.860897>,  <35.827202, 37.400990, 48.511131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489582, 37.585026, 48.860897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.301422, 37.934414, 48.810665>,  <36.188526, 38.144047, 48.780525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.301422, 37.934414, 48.810665>,  <36.489582, 37.585026, 48.860897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301422, 37.934414, 48.810665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163468, 0.226089, 0.960293,
		0.867183, 0.431190, -0.249136,
		-0.470396, 0.873475, -0.125575,
		36.160305, 38.196457, 48.772991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890862, 38.096775, 49.200436>,  <36.489582, 37.585026, 48.860897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890862, 38.096775, 49.200436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.536079, 38.276772, 49.158829>,  <36.323212, 38.384769, 49.133865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.536079, 38.276772, 49.158829>,  <36.890862, 38.096775, 49.200436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536079, 38.276772, 49.158829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052715, 0.322385, 0.945140,
		0.458837, 0.832813, -0.309662,
		-0.886955, 0.449989, -0.104021,
		36.269993, 38.411770, 49.127621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977295, 38.748684, 49.589798>,  <36.890862, 38.096775, 49.200436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977295, 38.748684, 49.589798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.582180, 38.702160, 49.548344>,  <36.345112, 38.674244, 49.523472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.582180, 38.702160, 49.548344>,  <36.977295, 38.748684, 49.589798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582180, 38.702160, 49.548344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131406, 0.264745, 0.955323,
		-0.083678, 0.957278, -0.276797,
		-0.987791, -0.116312, -0.103638,
		36.285843, 38.667267, 49.517254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714783, 39.333755, 49.763981>,  <36.977295, 38.748684, 49.589798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714783, 39.333755, 49.763981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.404301, 39.084927, 49.805038>,  <36.218014, 38.935631, 49.829674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.404301, 39.084927, 49.805038>,  <36.714783, 39.333755, 49.763981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404301, 39.084927, 49.805038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030638, 0.125395, 0.991634,
		-0.629739, 0.772853, -0.078272,
		-0.776202, -0.622072, 0.102645,
		36.171440, 38.898304, 49.835831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320137, 39.710663, 50.165554>,  <36.714783, 39.333755, 49.763981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320137, 39.710663, 50.165554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.182800, 39.340565, 50.230091>,  <36.100399, 39.118504, 50.268814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.182800, 39.340565, 50.230091>,  <36.320137, 39.710663, 50.165554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182800, 39.340565, 50.230091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082802, 0.200937, 0.976098,
		-0.935553, 0.321778, -0.145603,
		-0.343344, -0.925248, 0.161343,
		36.079796, 39.062992, 50.278496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749260, 39.784946, 50.657681>,  <36.320137, 39.710663, 50.165554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749260, 39.784946, 50.657681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.884136, 39.408504, 50.667717>,  <35.965061, 39.182640, 50.673740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.884136, 39.408504, 50.667717>,  <35.749260, 39.784946, 50.657681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884136, 39.408504, 50.667717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000182, 0.026586, 0.999647,
		-0.941436, -0.337079, 0.008794,
		0.337193, -0.941101, 0.025091,
		35.985294, 39.126175, 50.675243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443733, 39.458023, 51.154652>,  <35.749260, 39.784946, 50.657681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443733, 39.458023, 51.154652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.748695, 39.203129, 51.109653>,  <35.931675, 39.050190, 51.082653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.748695, 39.203129, 51.109653>,  <35.443733, 39.458023, 51.154652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748695, 39.203129, 51.109653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054002, -0.110590, 0.992398,
		-0.644837, -0.762689, -0.049903,
		0.762409, -0.637240, -0.112499,
		35.977417, 39.011955, 51.075905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177689, 38.844959, 51.574059>,  <35.443733, 39.458023, 51.154652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177689, 38.844959, 51.574059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.576023, 38.838867, 51.538094>,  <35.815022, 38.835213, 51.516514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.576023, 38.838867, 51.538094>,  <35.177689, 38.844959, 51.574059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576023, 38.838867, 51.538094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088043, -0.096482, 0.991433,
		-0.023777, -0.995218, -0.094738,
		0.995833, -0.015232, -0.089916,
		35.874771, 38.834297, 51.511120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.273808, 35.084202, 35.823883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647839, 35.223949, 35.847782>,  <35.872257, 35.307796, 35.862122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647839, 35.223949, 35.847782>,  <35.273808, 35.084202, 35.823883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647839, 35.223949, 35.847782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070549, 0.018253, 0.997341,
		0.347349, -0.936807, 0.041716,
		0.935078, 0.349369, 0.059751,
		35.928364, 35.328758, 35.865707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700207, 34.709625, 36.345264>,  <35.273808, 35.084202, 35.823883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700207, 34.709625, 36.345264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905399, 35.048691, 36.291138>,  <36.028515, 35.252132, 36.258663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905399, 35.048691, 36.291138>,  <35.700207, 34.709625, 36.345264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905399, 35.048691, 36.291138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027408, 0.173729, 0.984412,
		0.857961, -0.501278, 0.112353,
		0.512983, 0.847667, -0.135314,
		36.059296, 35.302990, 36.250542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139359, 34.733551, 36.878365>,  <35.700207, 34.709625, 36.345264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139359, 34.733551, 36.878365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119427, 35.117542, 36.768120>,  <36.107468, 35.347939, 36.701973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119427, 35.117542, 36.768120>,  <36.139359, 34.733551, 36.878365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119427, 35.117542, 36.768120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019378, 0.274971, 0.961257,
		0.998570, 0.053238, 0.004902,
		-0.049828, 0.959978, -0.275610,
		36.104477, 35.405537, 36.685436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575443, 35.146824, 37.299511>,  <36.139359, 34.733551, 36.878365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575443, 35.146824, 37.299511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351543, 35.446552, 37.157974>,  <36.217201, 35.626389, 37.073051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351543, 35.446552, 37.157974>,  <36.575443, 35.146824, 37.299511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351543, 35.446552, 37.157974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035540, 0.404899, 0.913671,
		0.827897, 0.524005, -0.200013,
		-0.559753, 0.749317, -0.353837,
		36.183617, 35.671349, 37.051823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936966, 35.747467, 37.398598>,  <36.575443, 35.146824, 37.299511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936966, 35.747467, 37.398598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553829, 35.854214, 37.356022>,  <36.323948, 35.918262, 37.330475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553829, 35.854214, 37.356022>,  <36.936966, 35.747467, 37.398598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553829, 35.854214, 37.356022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052678, 0.527314, 0.848036,
		0.282435, 0.806675, -0.519139,
		-0.957839, 0.266862, -0.106438,
		36.266476, 35.934273, 37.324089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936169, 36.409386, 37.599155>,  <36.936966, 35.747467, 37.398598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936169, 36.409386, 37.599155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547638, 36.315834, 37.616241>,  <36.314518, 36.259705, 37.626495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547638, 36.315834, 37.616241>,  <36.936169, 36.409386, 37.599155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547638, 36.315834, 37.616241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061562, 0.420969, 0.904984,
		-0.229638, 0.876405, -0.423297,
		-0.971327, -0.233877, 0.042717,
		36.256241, 36.245670, 37.629055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466835, 37.030869, 37.749722>,  <36.936169, 36.409386, 37.599155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466835, 37.030869, 37.749722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262867, 36.703857, 37.856777>,  <36.140488, 36.507648, 37.921009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262867, 36.703857, 37.856777>,  <36.466835, 37.030869, 37.749722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262867, 36.703857, 37.856777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202754, 0.416583, 0.886199,
		-0.835988, 0.397623, -0.378180,
		-0.509917, -0.817529, 0.267638,
		36.109894, 36.458599, 37.937069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892925, 37.242317, 37.972126>,  <36.466835, 37.030869, 37.749722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892925, 37.242317, 37.972126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901089, 36.878857, 38.138947>,  <35.905987, 36.660778, 38.239037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901089, 36.878857, 38.138947>,  <35.892925, 37.242317, 37.972126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901089, 36.878857, 38.138947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424184, 0.369861, 0.826602,
		-0.905346, -0.193775, -0.377889,
		0.020408, -0.908655, 0.417048,
		35.907211, 36.606258, 38.264061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478359, 37.261116, 38.494995>,  <35.892925, 37.242317, 37.972126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478359, 37.261116, 38.494995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651577, 36.919167, 38.609303>,  <35.755508, 36.713997, 38.677887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651577, 36.919167, 38.609303>,  <35.478359, 37.261116, 38.494995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651577, 36.919167, 38.609303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255502, 0.187613, 0.948430,
		-0.864403, -0.483724, -0.137178,
		0.433042, -0.854876, 0.285766,
		35.781490, 36.662704, 38.695034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995010, 36.880329, 38.884895>,  <35.478359, 37.261116, 38.494995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995010, 36.880329, 38.884895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359516, 36.762844, 39.000362>,  <35.578220, 36.692352, 39.069641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359516, 36.762844, 39.000362>,  <34.995010, 36.880329, 38.884895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359516, 36.762844, 39.000362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257594, 0.140376, 0.956002,
		-0.321314, -0.945530, 0.052261,
		0.911264, -0.293714, 0.288667,
		35.632896, 36.674728, 39.086964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927433, 36.368942, 39.363487>,  <34.995010, 36.880329, 38.884895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927433, 36.368942, 39.363487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299015, 36.499065, 39.434166>,  <35.521965, 36.577137, 39.476574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299015, 36.499065, 39.434166>,  <34.927433, 36.368942, 39.363487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299015, 36.499065, 39.434166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205159, 0.055075, 0.977178,
		0.308149, -0.944004, 0.117901,
		0.928953, 0.325305, 0.176699,
		35.577702, 36.596657, 39.487175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058331, 36.170219, 39.964794>,  <34.927433, 36.368942, 39.363487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058331, 36.170219, 39.964794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363178, 36.427181, 39.932587>,  <35.546089, 36.581360, 39.913261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363178, 36.427181, 39.932587>,  <35.058331, 36.170219, 39.964794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363178, 36.427181, 39.932587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094762, 0.233710, 0.967677,
		0.640462, -0.729857, 0.238991,
		0.762121, 0.642408, -0.080520,
		35.591816, 36.619904, 39.908432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954353, 35.576801, 40.343796>,  <35.058331, 36.170219, 39.964794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954353, 35.576801, 40.343796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559963, 35.637280, 40.372078>,  <34.323330, 35.673569, 40.389050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559963, 35.637280, 40.372078>,  <34.954353, 35.576801, 40.343796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559963, 35.637280, 40.372078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124974, -0.387911, -0.913185,
		-0.110642, -0.909211, 0.401365,
		-0.985971, 0.151197, 0.070708,
		34.264172, 35.682640, 40.393291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548309, 34.902836, 40.221645>,  <34.954353, 35.576801, 40.343796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548309, 34.902836, 40.221645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251213, 35.162327, 40.155334>,  <34.072956, 35.318024, 40.115547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251213, 35.162327, 40.155334>,  <34.548309, 34.902836, 40.221645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251213, 35.162327, 40.155334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305319, -0.548486, -0.778424,
		-0.595915, -0.527552, 0.605454,
		-0.742742, 0.648731, -0.165780,
		34.028389, 35.356945, 40.105602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057014, 34.538769, 39.724606>,  <34.548309, 34.902836, 40.221645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057014, 34.538769, 39.724606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915417, 34.911716, 39.695271>,  <33.830456, 35.135483, 39.677670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915417, 34.911716, 39.695271>,  <34.057014, 34.538769, 39.724606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915417, 34.911716, 39.695271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277933, -0.179745, -0.943634,
		-0.892994, -0.313663, 0.322765,
		-0.353999, 0.932366, -0.073334,
		33.809216, 35.191425, 39.673271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320724, 34.478603, 39.486553>,  <34.057014, 34.538769, 39.724606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320724, 34.478603, 39.486553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459122, 34.836720, 39.374302>,  <33.542160, 35.051590, 39.306950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459122, 34.836720, 39.374302>,  <33.320724, 34.478603, 39.486553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459122, 34.836720, 39.374302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407804, -0.125870, -0.904352,
		-0.844976, 0.427340, 0.321551,
		0.345993, 0.895286, -0.280628,
		33.562920, 35.105305, 39.290115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756001, 34.900642, 39.212658>,  <33.320724, 34.478603, 39.486553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756001, 34.900642, 39.212658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088329, 35.047379, 39.045242>,  <33.287727, 35.135418, 38.944794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088329, 35.047379, 39.045242>,  <32.756001, 34.900642, 39.212658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088329, 35.047379, 39.045242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429868, -0.054677, -0.901235,
		-0.353491, 0.928677, 0.112265,
		0.830818, 0.366838, -0.418536,
		33.337574, 35.157429, 38.919682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515434, 35.122601, 38.579327>,  <32.756001, 34.900642, 39.212658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515434, 35.122601, 38.579327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909157, 35.177704, 38.535221>,  <33.145390, 35.210766, 38.508759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909157, 35.177704, 38.535221>,  <32.515434, 35.122601, 38.579327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909157, 35.177704, 38.535221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099961, -0.079603, -0.991802,
		-0.145404, 0.987262, -0.064584,
		0.984310, 0.137756, -0.110262,
		33.204449, 35.219032, 38.502144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574085, 35.556416, 37.987103>,  <32.515434, 35.122601, 38.579327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574085, 35.556416, 37.987103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945267, 35.412319, 38.025322>,  <33.167976, 35.325863, 38.048252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945267, 35.412319, 38.025322>,  <32.574085, 35.556416, 37.987103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945267, 35.412319, 38.025322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085816, -0.042953, -0.995385,
		0.362679, 0.931871, -0.008944,
		0.927955, -0.360237, 0.095548,
		33.223652, 35.304249, 38.053986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991871, 36.051079, 37.621223>,  <32.574085, 35.556416, 37.987103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991871, 36.051079, 37.621223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144302, 35.681694, 37.639133>,  <33.235760, 35.460064, 37.649879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144302, 35.681694, 37.639133>,  <32.991871, 36.051079, 37.621223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144302, 35.681694, 37.639133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007054, -0.045520, -0.998939,
		0.924517, 0.380986, -0.010832,
		0.381074, -0.923460, 0.044772,
		33.258625, 35.404655, 37.652565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374016, 36.012447, 36.895954>,  <32.991871, 36.051079, 37.621223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374016, 36.012447, 36.895954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363708, 35.647434, 37.059231>,  <33.357525, 35.428429, 37.157196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363708, 35.647434, 37.059231>,  <33.374016, 36.012447, 36.895954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363708, 35.647434, 37.059231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035249, -0.408906, -0.911895,
		0.999046, -0.009106, 0.042701,
		-0.025764, -0.912531, 0.408195,
		33.355980, 35.373676, 37.181690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978226, 35.670391, 36.601383>,  <33.374016, 36.012447, 36.895954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978226, 35.670391, 36.601383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686024, 35.425056, 36.721500>,  <33.510704, 35.277855, 36.793571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686024, 35.425056, 36.721500>,  <33.978226, 35.670391, 36.601383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686024, 35.425056, 36.721500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029698, -0.410783, -0.911249,
		0.682260, -0.674591, 0.281865,
		-0.730506, -0.613338, 0.300295,
		33.466873, 35.241055, 36.811588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250217, 34.866329, 36.555534>,  <33.978226, 35.670391, 36.601383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250217, 34.866329, 36.555534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850357, 34.865654, 36.544971>,  <33.610439, 34.865250, 36.538631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850357, 34.865654, 36.544971>,  <34.250217, 34.866329, 36.555534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850357, 34.865654, 36.544971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023884, -0.487296, -0.872910,
		-0.011396, -0.873235, 0.487166,
		-0.999650, -0.001688, -0.026409,
		33.550461, 34.865147, 36.537048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059734, 34.168659, 36.601700>,  <34.250217, 34.866329, 36.555534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059734, 34.168659, 36.601700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843601, 34.426693, 36.385586>,  <33.713921, 34.581512, 36.255917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843601, 34.426693, 36.385586>,  <34.059734, 34.168659, 36.601700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843601, 34.426693, 36.385586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173614, -0.542805, -0.821719,
		-0.823345, -0.537804, 0.181302,
		-0.540335, 0.645081, -0.540286,
		33.681499, 34.620216, 36.223499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514072, 33.840374, 36.288528>,  <34.059734, 34.168659, 36.601700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514072, 33.840374, 36.288528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645348, 34.146908, 36.067612>,  <33.724113, 34.330830, 35.935062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645348, 34.146908, 36.067612>,  <33.514072, 33.840374, 36.288528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645348, 34.146908, 36.067612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110594, -0.611823, -0.783225,
		-0.938115, 0.195968, -0.285547,
		0.328191, 0.766335, -0.552287,
		33.743805, 34.376808, 35.901924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400795, 33.813114, 36.957542>,  <33.514072, 33.840374, 36.288528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400795, 33.813114, 36.957542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146622, 33.527760, 36.839359>,  <32.994118, 33.356544, 36.768448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146622, 33.527760, 36.839359>,  <33.400795, 33.813114, 36.957542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146622, 33.527760, 36.839359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202301, -0.523089, 0.827921,
		-0.745181, 0.466319, 0.476709,
		-0.635436, -0.713389, -0.295459,
		32.955990, 33.313744, 36.750721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759182, 33.607353, 37.449169>,  <33.400795, 33.813114, 36.957542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759182, 33.607353, 37.449169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875084, 33.292072, 37.231995>,  <32.944626, 33.102905, 37.101688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875084, 33.292072, 37.231995>,  <32.759182, 33.607353, 37.449169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875084, 33.292072, 37.231995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180655, -0.512039, 0.839750,
		-0.939898, -0.341404, -0.005972,
		0.289752, -0.788200, -0.542940,
		32.962009, 33.055611, 37.069111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332539, 33.166252, 37.575333>,  <32.759182, 33.607353, 37.449169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332539, 33.166252, 37.575333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675819, 32.989491, 37.470860>,  <32.881786, 32.883434, 37.408176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675819, 32.989491, 37.470860>,  <32.332539, 33.166252, 37.575333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675819, 32.989491, 37.470860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033310, -0.459795, 0.887400,
		-0.512238, -0.770265, -0.379874,
		0.858197, -0.441907, -0.261182,
		32.933281, 32.856918, 37.392506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282913, 32.482037, 37.873695>,  <32.332539, 33.166252, 37.575333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282913, 32.482037, 37.873695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666878, 32.561558, 37.794659>,  <32.897259, 32.609272, 37.747238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666878, 32.561558, 37.794659>,  <32.282913, 32.482037, 37.873695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666878, 32.561558, 37.794659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276182, -0.550472, 0.787848,
		0.047861, -0.810837, -0.583312,
		0.959913, 0.198807, -0.197592,
		32.954853, 32.621201, 37.735382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690739, 31.877829, 37.859367>,  <32.282913, 32.482037, 37.873695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690739, 31.877829, 37.859367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922756, 32.184551, 37.969318>,  <33.061966, 32.368584, 38.035290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922756, 32.184551, 37.969318>,  <32.690739, 31.877829, 37.859367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922756, 32.184551, 37.969318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256701, -0.492318, 0.831702,
		0.773079, -0.411865, -0.482407,
		0.580047, 0.766805, 0.274874,
		33.096771, 32.414593, 38.051781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386997, 31.696644, 38.025349>,  <32.690739, 31.877829, 37.859367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386997, 31.696644, 38.025349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376026, 32.051197, 38.210201>,  <33.369442, 32.263931, 38.321114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376026, 32.051197, 38.210201>,  <33.386997, 31.696644, 38.025349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376026, 32.051197, 38.210201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468678, -0.396943, 0.789162,
		0.882943, 0.238238, -0.404541,
		-0.027429, 0.886385, 0.462135,
		33.367798, 32.317112, 38.348843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987312, 31.776337, 38.378040>,  <33.386997, 31.696644, 38.025349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987312, 31.776337, 38.378040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710785, 31.990236, 38.572411>,  <33.544868, 32.118576, 38.689034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710785, 31.990236, 38.572411>,  <33.987312, 31.776337, 38.378040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710785, 31.990236, 38.572411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239377, -0.465036, 0.852315,
		0.681748, 0.705538, 0.193480,
		-0.691316, 0.534750, 0.485927,
		33.503391, 32.150661, 38.718189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187778, 31.822361, 39.014210>,  <33.987312, 31.776337, 38.378040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187778, 31.822361, 39.014210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806759, 31.924910, 39.079849>,  <33.578148, 31.986439, 39.119232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806759, 31.924910, 39.079849>,  <34.187778, 31.822361, 39.014210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806759, 31.924910, 39.079849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101908, -0.239410, 0.965556,
		0.286826, 0.936460, 0.201923,
		-0.952547, 0.256369, 0.164101,
		33.520996, 32.001820, 39.129078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253216, 32.262245, 39.593288>,  <34.187778, 31.822361, 39.014210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253216, 32.262245, 39.593288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860512, 32.186932, 39.582737>,  <33.624889, 32.141743, 39.576405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860512, 32.186932, 39.582737>,  <34.253216, 32.262245, 39.593288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860512, 32.186932, 39.582737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017511, -0.227724, 0.973568,
		-0.189313, 0.955349, 0.226867,
		-0.981761, -0.188282, -0.026382,
		33.565983, 32.130447, 39.574821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936611, 32.692352, 39.986855>,  <34.253216, 32.262245, 39.593288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936611, 32.692352, 39.986855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686676, 32.380108, 39.992878>,  <33.536713, 32.192760, 39.996490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686676, 32.380108, 39.992878>,  <33.936611, 32.692352, 39.986855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686676, 32.380108, 39.992878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059445, 0.066797, 0.995994,
		-0.778486, 0.621443, -0.088141,
		-0.624841, -0.780607, 0.015059,
		33.499222, 32.145927, 39.997395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296371, 32.809322, 40.401302>,  <33.936611, 32.692352, 39.986855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296371, 32.809322, 40.401302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367897, 32.415901, 40.411499>,  <33.410812, 32.179848, 40.417618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367897, 32.415901, 40.411499>,  <33.296371, 32.809322, 40.401302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367897, 32.415901, 40.411499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058464, 0.036482, 0.997623,
		-0.982145, -0.176895, 0.064026,
		0.178810, -0.983553, 0.025488,
		33.421539, 32.120834, 40.419144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210903, 32.640774, 41.068066>,  <33.296371, 32.809322, 40.401302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210903, 32.640774, 41.068066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280949, 32.273132, 40.926880>,  <33.322975, 32.052547, 40.842167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280949, 32.273132, 40.926880>,  <33.210903, 32.640774, 41.068066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280949, 32.273132, 40.926880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017109, -0.355612, 0.934477,
		-0.984400, -0.169678, -0.046547,
		0.175113, -0.919102, -0.352968,
		33.333481, 31.997402, 40.820988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763920, 32.271908, 41.477879>,  <33.210903, 32.640774, 41.068066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763920, 32.271908, 41.477879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062042, 32.041851, 41.342983>,  <33.240917, 31.903816, 41.262047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062042, 32.041851, 41.342983>,  <32.763920, 32.271908, 41.477879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062042, 32.041851, 41.342983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261749, -0.212791, 0.941386,
		-0.613193, -0.789892, -0.008051,
		0.745306, -0.575144, -0.337235,
		33.285633, 31.869308, 41.241814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761009, 31.697565, 41.946423>,  <32.763920, 32.271908, 41.477879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761009, 31.697565, 41.946423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114616, 31.687683, 41.759701>,  <33.326778, 31.681755, 41.647667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114616, 31.687683, 41.759701>,  <32.761009, 31.697565, 41.946423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114616, 31.687683, 41.759701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463087, -0.090002, 0.881732,
		-0.063794, -0.995635, -0.068124,
		0.884014, -0.024702, -0.466807,
		33.379822, 31.680273, 41.619659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067223, 31.117487, 42.253571>,  <32.761009, 31.697565, 41.946423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067223, 31.117487, 42.253571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357925, 31.352270, 42.110847>,  <33.532345, 31.493139, 42.025215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357925, 31.352270, 42.110847>,  <33.067223, 31.117487, 42.253571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357925, 31.352270, 42.110847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350449, 0.129919, 0.927527,
		0.590775, -0.799125, -0.111280,
		0.726753, 0.586958, -0.356805,
		33.575951, 31.528358, 42.003807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713234, 30.750942, 42.454582>,  <33.067223, 31.117487, 42.253571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713234, 30.750942, 42.454582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830330, 31.126236, 42.380798>,  <33.900585, 31.351412, 42.336529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830330, 31.126236, 42.380798>,  <33.713234, 30.750942, 42.454582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830330, 31.126236, 42.380798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535548, -0.001065, 0.844504,
		0.792145, -0.346003, -0.502780,
		0.292737, 0.938233, -0.184458,
		33.918152, 31.407705, 42.325462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439213, 30.782896, 42.782616>,  <33.713234, 30.750942, 42.454582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439213, 30.782896, 42.782616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354362, 31.171633, 42.741577>,  <34.303452, 31.404875, 42.716953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354362, 31.171633, 42.741577>,  <34.439213, 30.782896, 42.782616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354362, 31.171633, 42.741577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254448, 0.156288, 0.954374,
		0.943536, 0.176339, -0.280435,
		-0.212122, 0.971843, -0.102594,
		34.290726, 31.463186, 42.710800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980473, 31.173227, 43.102440>,  <34.439213, 30.782896, 42.782616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980473, 31.173227, 43.102440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661850, 31.414093, 43.080894>,  <34.470676, 31.558613, 43.067966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661850, 31.414093, 43.080894>,  <34.980473, 31.173227, 43.102440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661850, 31.414093, 43.080894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247644, 0.406263, 0.879558,
		0.551522, 0.687275, -0.472733,
		-0.796552, 0.602166, -0.053863,
		34.422886, 31.594742, 43.064735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298923, 31.702627, 43.296043>,  <34.980473, 31.173227, 43.102440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298923, 31.702627, 43.296043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909077, 31.762407, 43.362717>,  <34.675167, 31.798275, 43.402721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909077, 31.762407, 43.362717>,  <35.298923, 31.702627, 43.296043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909077, 31.762407, 43.362717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208113, 0.330416, 0.920605,
		0.082508, 0.931928, -0.353132,
		-0.974619, 0.149448, 0.166685,
		34.616692, 31.807241, 43.412724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250847, 32.387867, 43.519402>,  <35.298923, 31.702627, 43.296043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250847, 32.387867, 43.519402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943260, 32.173164, 43.658298>,  <34.758709, 32.044342, 43.741638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943260, 32.173164, 43.658298>,  <35.250847, 32.387867, 43.519402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943260, 32.173164, 43.658298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110566, 0.423324, 0.899206,
		-0.629651, 0.729856, -0.266176,
		-0.768970, -0.536757, 0.347243,
		34.712570, 32.012138, 43.762470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133583, 32.729057, 44.116047>,  <35.250847, 32.387867, 43.519402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133583, 32.729057, 44.116047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906563, 32.407944, 44.189163>,  <34.770351, 32.215275, 44.233032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906563, 32.407944, 44.189163>,  <35.133583, 32.729057, 44.116047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906563, 32.407944, 44.189163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081125, 0.166406, 0.982715,
		-0.819330, 0.572573, -0.029318,
		-0.567554, -0.802788, 0.182791,
		34.736298, 32.167107, 44.243999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519642, 32.965450, 44.438343>,  <35.133583, 32.729057, 44.116047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519642, 32.965450, 44.438343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586632, 32.585659, 44.544502>,  <34.626827, 32.357784, 44.608200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586632, 32.585659, 44.544502>,  <34.519642, 32.965450, 44.438343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586632, 32.585659, 44.544502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041336, 0.262205, 0.964126,
		-0.985009, -0.172438, 0.004665,
		0.167475, -0.949481, 0.265402,
		34.636875, 32.300816, 44.624123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446636, 33.083191, 45.127052>,  <34.519642, 32.965450, 44.438343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446636, 33.083191, 45.127052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592365, 32.713844, 45.078629>,  <34.679802, 32.492237, 45.049576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592365, 32.713844, 45.078629>,  <34.446636, 33.083191, 45.127052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592365, 32.713844, 45.078629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166353, -0.063373, 0.984028,
		-0.916293, -0.378646, 0.130517,
		0.364326, -0.923370, -0.121057,
		34.701664, 32.436832, 45.042313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077232, 32.602406, 45.634365>,  <34.446636, 33.083191, 45.127052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077232, 32.602406, 45.634365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428097, 32.425430, 45.559700>,  <34.638615, 32.319244, 45.514900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428097, 32.425430, 45.559700>,  <34.077232, 32.602406, 45.634365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428097, 32.425430, 45.559700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182249, -0.052902, 0.981828,
		-0.444274, -0.895236, 0.034231,
		0.877158, -0.442440, -0.186658,
		34.691246, 32.292698, 45.503704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142643, 31.937340, 46.097984>,  <34.077232, 32.602406, 45.634365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142643, 31.937340, 46.097984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510464, 32.032642, 45.972980>,  <34.731155, 32.089825, 45.897980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510464, 32.032642, 45.972980>,  <34.142643, 31.937340, 46.097984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510464, 32.032642, 45.972980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338418, -0.075885, 0.937931,
		0.199752, -0.968233, -0.150411,
		0.919550, 0.238256, -0.312509,
		34.786327, 32.104118, 45.879227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587994, 31.415134, 46.386444>,  <34.142643, 31.937340, 46.097984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587994, 31.415134, 46.386444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798977, 31.741264, 46.290916>,  <34.925568, 31.936941, 46.233601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798977, 31.741264, 46.290916>,  <34.587994, 31.415134, 46.386444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798977, 31.741264, 46.290916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494759, -0.066266, 0.866500,
		0.690652, -0.575202, -0.438341,
		0.527460, 0.815323, -0.238820,
		34.957214, 31.985861, 46.219269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259129, 31.242210, 46.470768>,  <34.587994, 31.415134, 46.386444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259129, 31.242210, 46.470768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277168, 31.641069, 46.494984>,  <35.287994, 31.880384, 46.509514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277168, 31.641069, 46.494984>,  <35.259129, 31.242210, 46.470768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277168, 31.641069, 46.494984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639846, -0.075371, 0.764798,
		0.767178, 0.004239, -0.641420,
		0.045102, 0.997146, 0.060535,
		35.290699, 31.940214, 46.513145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806084, 31.372118, 46.863628>,  <35.259129, 31.242210, 46.470768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806084, 31.372118, 46.863628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686913, 31.753529, 46.881634>,  <35.615410, 31.982374, 46.892437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686913, 31.753529, 46.881634>,  <35.806084, 31.372118, 46.863628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686913, 31.753529, 46.881634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494902, 0.113969, 0.861442,
		0.816277, 0.278926, -0.505857,
		-0.297931, 0.953526, 0.045011,
		35.597534, 32.039585, 46.895138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403725, 31.832397, 47.138687>,  <35.806084, 31.372118, 46.863628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403725, 31.832397, 47.138687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032730, 31.958822, 47.218559>,  <35.810135, 32.034679, 47.266483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032730, 31.958822, 47.218559>,  <36.403725, 31.832397, 47.138687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032730, 31.958822, 47.218559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190113, -0.061167, 0.979855,
		0.321911, 0.946764, -0.003356,
		-0.927486, 0.316064, 0.199683,
		35.754486, 32.053642, 47.278465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855198, 32.283291, 46.695190>,  <36.403725, 31.832397, 47.138687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855198, 32.283291, 46.695190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252853, 32.250465, 46.667046>,  <37.491447, 32.230770, 46.650158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252853, 32.250465, 46.667046>,  <36.855198, 32.283291, 46.695190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252853, 32.250465, 46.667046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094770, -0.348622, -0.932460,
		0.051989, 0.933664, -0.354356,
		0.994141, -0.082060, -0.070359,
		37.551094, 32.225849, 46.645939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968384, 32.638847, 46.106266>,  <36.855198, 32.283291, 46.695190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968384, 32.638847, 46.106266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272362, 32.387722, 46.173611>,  <37.454746, 32.237049, 46.214020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272362, 32.387722, 46.173611>,  <36.968384, 32.638847, 46.106266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272362, 32.387722, 46.173611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106063, -0.135783, -0.985045,
		0.641281, 0.766433, -0.036599,
		0.759940, -0.627809, 0.168365,
		37.500343, 32.199379, 46.224121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491089, 32.833481, 45.627434>,  <36.968384, 32.638847, 46.106266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491089, 32.833481, 45.627434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591351, 32.458393, 45.723640>,  <37.651508, 32.233341, 45.781364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591351, 32.458393, 45.723640>,  <37.491089, 32.833481, 45.627434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591351, 32.458393, 45.723640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146671, -0.208797, -0.966898,
		0.956901, 0.277634, 0.085201,
		0.250654, -0.937723, 0.240519,
		37.666546, 32.177078, 45.795795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019928, 32.640141, 45.117664>,  <37.491089, 32.833481, 45.627434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019928, 32.640141, 45.117664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939236, 32.283741, 45.280354>,  <37.890820, 32.069901, 45.377968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939236, 32.283741, 45.280354>,  <38.019928, 32.640141, 45.117664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939236, 32.283741, 45.280354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212634, -0.445192, -0.869822,
		0.956082, -0.088987, 0.279266,
		-0.201729, -0.891002, 0.406719,
		37.878716, 32.016441, 45.402370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628582, 32.192440, 44.887283>,  <38.019928, 32.640141, 45.117664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628582, 32.192440, 44.887283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296505, 31.988127, 44.976616>,  <38.097260, 31.865540, 45.030216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296505, 31.988127, 44.976616>,  <38.628582, 32.192440, 44.887283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296505, 31.988127, 44.976616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025572, -0.435089, -0.900024,
		0.556886, -0.741485, 0.374271,
		-0.830196, -0.510782, 0.223333,
		38.047447, 31.834892, 45.043617>
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
