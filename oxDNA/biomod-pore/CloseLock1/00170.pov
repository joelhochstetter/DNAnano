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
	<24.689676, 34.802494, 35.210590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.379293, 34.921146, 34.987915>,  <24.193064, 34.992340, 34.854309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.379293, 34.921146, 34.987915>,  <24.689676, 34.802494, 35.210590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.379293, 34.921146, 34.987915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135948, 0.783143, 0.606799,
		0.615964, 0.546529, -0.567357,
		-0.775955, 0.296635, -0.556687,
		24.146507, 35.010136, 34.820908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.926178, 34.862431, 34.628784>,  <24.689676, 34.802494, 35.210590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.926178, 34.862431, 34.628784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.001455, 34.476788, 34.703697>,  <25.046621, 34.245399, 34.748646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.001455, 34.476788, 34.703697>,  <24.926178, 34.862431, 34.628784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.001455, 34.476788, 34.703697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028313, -0.195934, -0.980208,
		0.981724, 0.179168, -0.064170,
		0.188195, -0.964110, 0.187281,
		25.057915, 34.187553, 34.759880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.627928, 34.494144, 34.299507>,  <24.926178, 34.862431, 34.628784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.627928, 34.494144, 34.299507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.296322, 34.273010, 34.333241>,  <25.097359, 34.140331, 34.353481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.296322, 34.273010, 34.333241>,  <25.627928, 34.494144, 34.299507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.296322, 34.273010, 34.333241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009416, -0.136979, -0.990529,
		0.559149, -0.821957, 0.108352,
		-0.829014, -0.552833, 0.084331,
		25.047617, 34.107159, 34.358540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765963, 33.810074, 34.125053>,  <25.627928, 34.494144, 34.299507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.765963, 33.810074, 34.125053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388239, 33.917793, 34.049419>,  <25.161604, 33.982426, 34.004040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388239, 33.917793, 34.049419>,  <25.765963, 33.810074, 34.125053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.388239, 33.917793, 34.049419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157964, -0.133081, -0.978436,
		-0.288660, -0.953816, 0.083130,
		-0.944311, 0.269304, -0.189084,
		25.104946, 33.998585, 33.992695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.096138, 33.312393, 34.572285>,  <25.765963, 33.810074, 34.125053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.096138, 33.312393, 34.572285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909113, 33.048641, 34.807777>,  <25.796898, 32.890392, 34.949074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909113, 33.048641, 34.807777>,  <26.096138, 33.312393, 34.572285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909113, 33.048641, 34.807777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865381, -0.477270, 0.152737,
		0.180274, 0.580894, 0.793765,
		-0.467564, -0.659375, 0.588734,
		25.768845, 32.850830, 34.984398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561401, 33.530376, 35.225330>,  <26.096138, 33.312393, 34.572285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561401, 33.530376, 35.225330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.928797, 33.678497, 35.169819>,  <27.149233, 33.767368, 35.136513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.928797, 33.678497, 35.169819>,  <26.561401, 33.530376, 35.225330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.928797, 33.678497, 35.169819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183794, 0.710469, 0.679304,
		0.350144, -0.598426, 0.720615,
		0.918487, 0.370299, -0.138779,
		27.204344, 33.789589, 35.128185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976618, 33.446255, 35.775654>,  <26.561401, 33.530376, 35.225330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976618, 33.446255, 35.775654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098795, 33.774948, 35.583210>,  <27.172100, 33.972164, 35.467743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098795, 33.774948, 35.583210>,  <26.976618, 33.446255, 35.775654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098795, 33.774948, 35.583210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222734, 0.552893, 0.802932,
		0.925795, -0.138089, 0.351903,
		0.305441, 0.821731, -0.481108,
		27.190428, 34.021469, 35.438877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527590, 33.752422, 36.124031>,  <26.976618, 33.446255, 35.775654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527590, 33.752422, 36.124031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400557, 34.070877, 35.917999>,  <27.324337, 34.261951, 35.794380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400557, 34.070877, 35.917999>,  <27.527590, 33.752422, 36.124031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.400557, 34.070877, 35.917999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023365, 0.536461, 0.843601,
		0.947943, 0.279948, -0.151769,
		-0.317582, 0.796140, -0.515076,
		27.305283, 34.309719, 35.763477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.940294, 34.268929, 36.443962>,  <27.527590, 33.752422, 36.124031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.940294, 34.268929, 36.443962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634537, 34.425312, 36.238884>,  <27.451082, 34.519142, 36.115837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634537, 34.425312, 36.238884>,  <27.940294, 34.268929, 36.443962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634537, 34.425312, 36.238884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204796, 0.606771, 0.768041,
		0.611360, 0.692083, -0.383745,
		-0.764394, 0.390960, -0.512691,
		27.405218, 34.542599, 36.085075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867817, 34.895943, 36.727695>,  <27.940294, 34.268929, 36.443962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867817, 34.895943, 36.727695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525728, 34.913818, 36.521160>,  <27.320475, 34.924541, 36.397240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525728, 34.913818, 36.521160>,  <27.867817, 34.895943, 36.727695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525728, 34.913818, 36.521160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368125, 0.648899, 0.665893,
		0.364806, 0.759561, -0.538501,
		-0.855219, 0.044686, -0.516336,
		27.269163, 34.927223, 36.366261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669796, 35.596760, 36.448460>,  <27.867817, 34.895943, 36.727695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669796, 35.596760, 36.448460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319948, 35.402935, 36.454590>,  <27.110039, 35.286640, 36.458267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319948, 35.402935, 36.454590>,  <27.669796, 35.596760, 36.448460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319948, 35.402935, 36.454590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401408, 0.741529, 0.537592,
		-0.271865, 0.464036, -0.843066,
		-0.874620, -0.484567, 0.015328,
		27.057562, 35.257565, 36.459187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291227, 36.123638, 36.277130>,  <27.669796, 35.596760, 36.448460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.291227, 36.123638, 36.277130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.103407, 35.835312, 36.481071>,  <26.990715, 35.662315, 36.603436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.103407, 35.835312, 36.481071>,  <27.291227, 36.123638, 36.277130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.103407, 35.835312, 36.481071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174581, 0.641870, 0.746676,
		-0.865473, 0.261591, -0.427231,
		-0.469550, -0.720814, 0.509853,
		26.962542, 35.619068, 36.634026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826744, 36.495930, 36.632977>,  <27.291227, 36.123638, 36.277130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826744, 36.495930, 36.632977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820829, 36.154594, 36.841434>,  <26.817282, 35.949791, 36.966511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820829, 36.154594, 36.841434>,  <26.826744, 36.495930, 36.632977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820829, 36.154594, 36.841434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253970, 0.507313, 0.823488,
		-0.967099, -0.120180, -0.224223,
		-0.014785, -0.853341, 0.521144,
		26.816395, 35.898594, 36.997776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301695, 36.597492, 37.141079>,  <26.826744, 36.495930, 36.632977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301695, 36.597492, 37.141079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469505, 36.263035, 37.282421>,  <26.570192, 36.062359, 37.367226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469505, 36.263035, 37.282421>,  <26.301695, 36.597492, 37.141079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.469505, 36.263035, 37.282421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204090, 0.292422, 0.934257,
		-0.884502, -0.464064, -0.047969,
		0.419528, -0.836143, 0.353359,
		26.595364, 36.012192, 37.388428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.869289, 36.265869, 37.665665>,  <26.301695, 36.597492, 37.141079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.869289, 36.265869, 37.665665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243935, 36.154133, 37.750259>,  <26.468721, 36.087090, 37.801014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243935, 36.154133, 37.750259>,  <25.869289, 36.265869, 37.665665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243935, 36.154133, 37.750259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172557, 0.157553, 0.972317,
		-0.304933, -0.947177, 0.099362,
		0.936611, -0.279345, 0.211485,
		26.524918, 36.070328, 37.813705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763996, 35.854416, 38.358292>,  <25.869289, 36.265869, 37.665665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.763996, 35.854416, 38.358292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.149374, 35.956245, 38.324913>,  <26.380602, 36.017342, 38.304886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.149374, 35.956245, 38.324913>,  <25.763996, 35.854416, 38.358292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.149374, 35.956245, 38.324913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026999, 0.402157, 0.915172,
		0.266538, -0.879466, 0.394330,
		0.963446, 0.254574, -0.083445,
		26.438408, 36.032619, 38.299881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.006941, 35.911007, 39.029488>,  <25.763996, 35.854416, 38.358292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.006941, 35.911007, 39.029488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301832, 36.095528, 38.832027>,  <26.478767, 36.206242, 38.713551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301832, 36.095528, 38.832027>,  <26.006941, 35.911007, 39.029488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.301832, 36.095528, 38.832027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155912, 0.594770, 0.788631,
		0.657409, -0.658368, 0.366558,
		0.737228, 0.461303, -0.493655,
		26.523001, 36.233917, 38.683929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.636675, 35.907837, 39.492794>,  <26.006941, 35.911007, 39.029488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.636675, 35.907837, 39.492794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664391, 36.205994, 39.227585>,  <26.681019, 36.384888, 39.068459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664391, 36.205994, 39.227585>,  <26.636675, 35.907837, 39.492794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664391, 36.205994, 39.227585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208108, 0.639196, 0.740351,
		0.975649, -0.189277, -0.110833,
		0.069288, 0.745387, -0.663021,
		26.685177, 36.429611, 39.028679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116251, 36.438667, 39.781200>,  <26.636675, 35.907837, 39.492794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116251, 36.438667, 39.781200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.932203, 36.643635, 39.491177>,  <26.821775, 36.766617, 39.317162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.932203, 36.643635, 39.491177>,  <27.116251, 36.438667, 39.781200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.932203, 36.643635, 39.491177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214047, 0.856575, 0.469536,
		0.861671, 0.060844, -0.503807,
		-0.460117, 0.512423, -0.725062,
		26.794168, 36.797363, 39.273659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.554209, 36.973766, 39.642826>,  <27.116251, 36.438667, 39.781200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.554209, 36.973766, 39.642826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210604, 37.124001, 39.503670>,  <27.004440, 37.214142, 39.420177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210604, 37.124001, 39.503670>,  <27.554209, 36.973766, 39.642826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210604, 37.124001, 39.503670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228056, 0.889126, 0.396793,
		0.458349, 0.261512, -0.849428,
		-0.859015, 0.375587, -0.347891,
		26.952900, 37.236675, 39.399303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760952, 37.544296, 39.237465>,  <27.554209, 36.973766, 39.642826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760952, 37.544296, 39.237465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373028, 37.621628, 39.296921>,  <27.140274, 37.668026, 39.332592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373028, 37.621628, 39.296921>,  <27.760952, 37.544296, 39.237465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373028, 37.621628, 39.296921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226910, 0.938691, 0.259557,
		-0.089343, 0.285448, -0.954221,
		-0.969809, 0.193333, 0.148636,
		27.082085, 37.679626, 39.341511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756048, 38.282322, 39.127899>,  <27.760952, 37.544296, 39.237465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756048, 38.282322, 39.127899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390162, 38.214539, 39.274639>,  <27.170630, 38.173870, 39.362682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390162, 38.214539, 39.274639>,  <27.756048, 38.282322, 39.127899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390162, 38.214539, 39.274639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032274, 0.874294, 0.484322,
		-0.402809, 0.454856, -0.794261,
		-0.914715, -0.169455, 0.366854,
		27.115747, 38.163704, 39.384697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187820, 38.841938, 38.924271>,  <27.756048, 38.282322, 39.127899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187820, 38.841938, 38.924271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094118, 38.657448, 39.266590>,  <27.037897, 38.546753, 39.471981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094118, 38.657448, 39.266590>,  <27.187820, 38.841938, 38.924271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094118, 38.657448, 39.266590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130994, 0.887240, 0.442319,
		-0.963309, -0.008488, -0.268260,
		-0.234257, -0.461230, 0.855798,
		27.023842, 38.519077, 39.523331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658209, 39.175896, 39.145100>,  <27.187820, 38.841938, 38.924271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658209, 39.175896, 39.145100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759201, 38.986938, 39.482880>,  <26.819796, 38.873566, 39.685547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759201, 38.986938, 39.482880>,  <26.658209, 39.175896, 39.145100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759201, 38.986938, 39.482880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292482, 0.794640, 0.531978,
		-0.922338, -0.381300, 0.062465,
		0.252480, -0.472395, 0.844451,
		26.834946, 38.845219, 39.736214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098000, 39.227009, 39.687302>,  <26.658209, 39.175896, 39.145100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098000, 39.227009, 39.687302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438681, 39.171452, 39.889416>,  <26.643089, 39.138119, 40.010685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438681, 39.171452, 39.889416>,  <26.098000, 39.227009, 39.687302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.438681, 39.171452, 39.889416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190547, 0.816147, 0.545524,
		-0.488153, -0.560905, 0.668650,
		0.851704, -0.138890, 0.505283,
		26.694191, 39.129784, 40.041000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834482, 39.410740, 40.273502>,  <26.098000, 39.227009, 39.687302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834482, 39.410740, 40.273502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231958, 39.454128, 40.284904>,  <26.470444, 39.480160, 40.291744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231958, 39.454128, 40.284904>,  <25.834482, 39.410740, 40.273502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231958, 39.454128, 40.284904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109265, 0.878974, 0.464183,
		0.025295, -0.464369, 0.885281,
		0.993690, 0.108472, 0.028505,
		26.530066, 39.486671, 40.293457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161026, 39.349518, 40.992554>,  <25.834482, 39.410740, 40.273502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161026, 39.349518, 40.992554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374622, 39.572754, 40.738503>,  <26.502781, 39.706696, 40.586071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374622, 39.572754, 40.738503>,  <26.161026, 39.349518, 40.992554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.374622, 39.572754, 40.738503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356554, 0.829776, 0.429351,
		0.766631, -0.002812, 0.642081,
		0.533991, 0.558091, -0.635130,
		26.534819, 39.740181, 40.547962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588909, 39.739300, 41.365417>,  <26.161026, 39.349518, 40.992554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.588909, 39.739300, 41.365417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.507671, 39.956596, 41.039558>,  <26.458929, 40.086975, 40.844044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.507671, 39.956596, 41.039558>,  <26.588909, 39.739300, 41.365417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.507671, 39.956596, 41.039558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396675, 0.715005, 0.575688,
		0.895210, 0.440069, 0.070275,
		-0.203095, 0.543238, -0.814644,
		26.446743, 40.119568, 40.795166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755880, 40.373749, 41.650406>,  <26.588909, 39.739300, 41.365417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755880, 40.373749, 41.650406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522505, 40.449955, 41.334610>,  <26.382479, 40.495678, 41.145130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522505, 40.449955, 41.334610>,  <26.755880, 40.373749, 41.650406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522505, 40.449955, 41.334610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196072, 0.910300, 0.364568,
		0.788132, 0.367501, -0.493751,
		-0.583441, 0.190517, -0.789494,
		26.347473, 40.507111, 41.097763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851894, 41.055855, 41.210831>,  <26.755880, 40.373749, 41.650406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851894, 41.055855, 41.210831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465290, 40.954716, 41.193260>,  <26.233328, 40.894032, 41.182716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465290, 40.954716, 41.193260>,  <26.851894, 41.055855, 41.210831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.465290, 40.954716, 41.193260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256589, 0.948918, 0.183621,
		-0.004742, 0.188743, -0.982015,
		-0.966509, -0.252845, -0.043930,
		26.175337, 40.878860, 41.180080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362801, 41.424366, 40.732594>,  <26.851894, 41.055855, 41.210831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362801, 41.424366, 40.732594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163446, 41.297771, 41.055443>,  <26.043833, 41.221813, 41.249153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163446, 41.297771, 41.055443>,  <26.362801, 41.424366, 40.732594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.163446, 41.297771, 41.055443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340787, 0.927561, 0.153283,
		-0.797166, -0.198663, -0.570140,
		-0.498388, -0.316488, 0.807122,
		26.013929, 41.202824, 41.297581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131357, 41.465729, 40.079567>,  <26.362801, 41.424366, 40.732594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131357, 41.465729, 40.079567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430151, 41.730968, 40.098816>,  <26.609426, 41.890110, 40.110363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430151, 41.730968, 40.098816>,  <26.131357, 41.465729, 40.079567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430151, 41.730968, 40.098816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617101, -0.718460, 0.320940,
		0.247387, -0.210042, -0.945876,
		0.746985, 0.663098, 0.048121,
		26.654247, 41.929897, 40.113251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712685, 41.420113, 39.592381>,  <26.131357, 41.465729, 40.079567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712685, 41.420113, 39.592381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810566, 41.526825, 39.965248>,  <26.869295, 41.590851, 40.188969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810566, 41.526825, 39.965248>,  <26.712685, 41.420113, 39.592381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810566, 41.526825, 39.965248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447212, -0.884086, 0.135620,
		0.860303, 0.383693, -0.335648,
		0.244705, 0.266780, 0.932174,
		26.883978, 41.606857, 40.244900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509041, 41.481712, 39.729603>,  <26.712685, 41.420113, 39.592381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509041, 41.481712, 39.729603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293547, 41.363213, 40.045071>,  <27.164249, 41.292114, 40.234352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293547, 41.363213, 40.045071>,  <27.509041, 41.481712, 39.729603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.293547, 41.363213, 40.045071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576092, -0.812603, 0.088286,
		0.614721, 0.501909, 0.608445,
		-0.538736, -0.296249, 0.788670,
		27.131926, 41.274338, 40.281673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269632, 41.831608, 39.078033>,  <27.509041, 41.481712, 39.729603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.269632, 41.831608, 39.078033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617592, 42.017864, 39.143097>,  <27.826368, 42.129616, 39.182133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617592, 42.017864, 39.143097>,  <27.269632, 41.831608, 39.078033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617592, 42.017864, 39.143097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473946, -0.697821, -0.537048,
		-0.136564, 0.544268, -0.827721,
		0.869900, 0.465637, 0.162657,
		27.878561, 42.157555, 39.191895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444016, 41.882801, 38.398838>,  <27.269632, 41.831608, 39.078033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444016, 41.882801, 38.398838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748901, 41.924534, 38.654381>,  <27.931833, 41.949574, 38.807709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748901, 41.924534, 38.654381>,  <27.444016, 41.882801, 38.398838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748901, 41.924534, 38.654381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578620, -0.552288, -0.600148,
		0.290221, 0.827099, -0.481330,
		0.762215, 0.104332, 0.638861,
		27.977566, 41.955833, 38.846039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078814, 42.209694, 38.073429>,  <27.444016, 41.882801, 38.398838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078814, 42.209694, 38.073429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160118, 41.913155, 38.329269>,  <28.208900, 41.735233, 38.482773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160118, 41.913155, 38.329269>,  <28.078814, 42.209694, 38.073429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160118, 41.913155, 38.329269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346135, -0.556653, -0.755201,
		0.915902, 0.374891, 0.143460,
		0.203260, -0.741346, 0.639602,
		28.221096, 41.690750, 38.521149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715525, 41.887486, 37.887577>,  <28.078814, 42.209694, 38.073429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715525, 41.887486, 37.887577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562021, 41.624065, 38.146511>,  <28.469919, 41.466011, 38.301872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562021, 41.624065, 38.146511>,  <28.715525, 41.887486, 37.887577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562021, 41.624065, 38.146511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161267, -0.738027, -0.655217,
		0.909243, -0.147051, 0.389426,
		-0.383757, -0.658553, 0.647331,
		28.446894, 41.426498, 38.340710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120134, 41.315727, 37.780251>,  <28.715525, 41.887486, 37.887577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120134, 41.315727, 37.780251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803310, 41.149117, 37.958755>,  <28.613216, 41.049152, 38.065857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803310, 41.149117, 37.958755>,  <29.120134, 41.315727, 37.780251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803310, 41.149117, 37.958755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055414, -0.777086, -0.626951,
		0.607921, -0.471855, 0.638581,
		-0.792061, -0.416523, 0.446259,
		28.565691, 41.024158, 38.092632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277571, 40.599247, 37.797344>,  <29.120134, 41.315727, 37.780251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.277571, 40.599247, 37.797344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.882635, 40.624660, 37.855480>,  <28.645674, 40.639908, 37.890362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.882635, 40.624660, 37.855480>,  <29.277571, 40.599247, 37.797344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882635, 40.624660, 37.855480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137779, -0.797528, -0.587338,
		0.078594, -0.599927, 0.796185,
		-0.987340, 0.063537, 0.145338,
		28.586433, 40.643723, 37.899082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001724, 39.948299, 38.045876>,  <29.277571, 40.599247, 37.797344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001724, 39.948299, 38.045876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688105, 40.130825, 37.877571>,  <28.499933, 40.240341, 37.776588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688105, 40.130825, 37.877571>,  <29.001724, 39.948299, 38.045876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688105, 40.130825, 37.877571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244741, -0.850245, -0.466031,
		-0.570409, -0.262414, 0.778314,
		-0.784050, 0.456314, -0.420764,
		28.452890, 40.267719, 37.751343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314762, 39.486671, 38.173290>,  <29.001724, 39.948299, 38.045876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314762, 39.486671, 38.173290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229183, 39.743088, 37.878456>,  <28.177835, 39.896938, 37.701553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229183, 39.743088, 37.878456>,  <28.314762, 39.486671, 38.173290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229183, 39.743088, 37.878456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425383, -0.740397, -0.520443,
		-0.879361, 0.202197, 0.431092,
		-0.213947, 0.641037, -0.737088,
		28.164999, 39.935398, 37.657330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560427, 39.357239, 37.962166>,  <28.314762, 39.486671, 38.173290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560427, 39.357239, 37.962166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719566, 39.546158, 37.647549>,  <27.815050, 39.659508, 37.458778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719566, 39.546158, 37.647549>,  <27.560427, 39.357239, 37.962166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719566, 39.546158, 37.647549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229747, -0.778711, -0.583803,
		-0.888218, 0.412973, -0.201302,
		0.397851, 0.472296, -0.786544,
		27.838923, 39.687847, 37.411587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.098406, 39.294514, 37.367737>,  <27.560427, 39.357239, 37.962166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.098406, 39.294514, 37.367737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.456442, 39.379578, 37.210976>,  <27.671263, 39.430618, 37.116917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.456442, 39.379578, 37.210976>,  <27.098406, 39.294514, 37.367737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.456442, 39.379578, 37.210976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139852, -0.700686, -0.699629,
		-0.423388, 0.681039, -0.597435,
		0.895089, 0.212662, -0.391907,
		27.724968, 39.443375, 37.093403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992241, 39.205524, 36.637318>,  <27.098406, 39.294514, 37.367737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992241, 39.205524, 36.637318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390854, 39.199368, 36.670025>,  <27.630022, 39.195671, 36.689648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390854, 39.199368, 36.670025>,  <26.992241, 39.205524, 36.637318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390854, 39.199368, 36.670025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032246, -0.834462, -0.550121,
		0.076701, 0.550850, -0.831072,
		0.996533, -0.015396, 0.081767,
		27.689814, 39.194748, 36.694553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247360, 39.113895, 35.926807>,  <26.992241, 39.205524, 36.637318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247360, 39.113895, 35.926807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547266, 39.006874, 36.168888>,  <27.727209, 38.942661, 36.314137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547266, 39.006874, 36.168888>,  <27.247360, 39.113895, 35.926807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547266, 39.006874, 36.168888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326243, -0.646248, -0.689876,
		0.575692, 0.714687, -0.397244,
		0.749763, -0.267558, 0.605201,
		27.772196, 38.926605, 36.350449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825768, 39.015141, 35.514362>,  <27.247360, 39.113895, 35.926807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825768, 39.015141, 35.514362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892019, 38.796822, 35.842915>,  <27.931770, 38.665829, 36.040047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892019, 38.796822, 35.842915>,  <27.825768, 39.015141, 35.514362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892019, 38.796822, 35.842915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345246, -0.748091, -0.566714,
		0.923781, 0.377445, 0.064526,
		0.165632, -0.545797, 0.821384,
		27.941710, 38.633083, 36.089329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515701, 38.775307, 35.458008>,  <27.825768, 39.015141, 35.514362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515701, 38.775307, 35.458008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307215, 38.538322, 35.703712>,  <28.182123, 38.396133, 35.851135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307215, 38.538322, 35.703712>,  <28.515701, 38.775307, 35.458008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307215, 38.538322, 35.703712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134790, -0.767880, -0.626252,
		0.842714, -0.243616, 0.480089,
		-0.521216, -0.592462, 0.614266,
		28.150850, 38.360584, 35.887993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055611, 38.234722, 35.688801>,  <28.515701, 38.775307, 35.458008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055611, 38.234722, 35.688801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684719, 38.103912, 35.761795>,  <28.462185, 38.025425, 35.805592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684719, 38.103912, 35.761795>,  <29.055611, 38.234722, 35.688801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684719, 38.103912, 35.761795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229912, -0.881734, -0.411929,
		0.295617, -0.339996, 0.892756,
		-0.927228, -0.327029, 0.182486,
		28.406551, 38.005802, 35.816540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124582, 37.578518, 36.089447>,  <29.055611, 38.234722, 35.688801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124582, 37.578518, 36.089447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758966, 37.583233, 35.927265>,  <28.539597, 37.586060, 35.829956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758966, 37.583233, 35.927265>,  <29.124582, 37.578518, 36.089447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758966, 37.583233, 35.927265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138345, -0.930586, -0.338924,
		-0.381309, -0.365882, 0.848960,
		-0.914037, 0.011785, -0.405459,
		28.484755, 37.586769, 35.805626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812170, 36.975689, 36.297180>,  <29.124582, 37.578518, 36.089447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812170, 36.975689, 36.297180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599207, 37.093430, 35.979713>,  <28.471430, 37.164074, 35.789234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599207, 37.093430, 35.979713>,  <28.812170, 36.975689, 36.297180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599207, 37.093430, 35.979713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160122, -0.885646, -0.435881,
		-0.831206, -0.359149, 0.424392,
		-0.532407, 0.294352, -0.793662,
		28.439486, 37.181736, 35.741615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512743, 36.387642, 36.081684>,  <28.812170, 36.975689, 36.297180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512743, 36.387642, 36.081684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468969, 36.609432, 35.751694>,  <28.442705, 36.742508, 35.553699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468969, 36.609432, 35.751694>,  <28.512743, 36.387642, 36.081684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468969, 36.609432, 35.751694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054658, -0.825343, -0.561979,
		-0.992490, -0.106590, 0.060013,
		-0.109433, 0.554479, -0.824971,
		28.436140, 36.775776, 35.504204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869242, 36.212345, 35.591858>,  <28.512743, 36.387642, 36.081684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869242, 36.212345, 35.591858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.157944, 36.393353, 35.382362>,  <28.331165, 36.501957, 35.256664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.157944, 36.393353, 35.382362>,  <27.869242, 36.212345, 35.591858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157944, 36.393353, 35.382362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077583, -0.699023, -0.710878,
		-0.687789, 0.553712, -0.469414,
		0.721753, 0.452515, -0.523739,
		28.374470, 36.529106, 35.225243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782503, 35.920181, 34.958344>,  <27.869242, 36.212345, 35.591858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782503, 35.920181, 34.958344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131039, 36.096195, 34.871502>,  <28.340160, 36.201801, 34.819397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131039, 36.096195, 34.871502>,  <27.782503, 35.920181, 34.958344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131039, 36.096195, 34.871502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304577, -0.831944, -0.463791,
		-0.384705, 0.337994, -0.858930,
		0.871341, 0.440033, -0.217108,
		28.392441, 36.228207, 34.806370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849422, 35.988136, 34.242229>,  <27.782503, 35.920181, 34.958344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849422, 35.988136, 34.242229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224005, 36.032433, 34.375370>,  <28.448753, 36.059010, 34.455254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224005, 36.032433, 34.375370>,  <27.849422, 35.988136, 34.242229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224005, 36.032433, 34.375370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316476, -0.675994, -0.665488,
		0.151308, 0.728539, -0.668085,
		0.936456, 0.110739, 0.332848,
		28.504942, 36.065655, 34.475224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299940, 35.947536, 33.619492>,  <27.849422, 35.988136, 34.242229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299940, 35.947536, 33.619492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549271, 35.857792, 33.919125>,  <28.698870, 35.803944, 34.098904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549271, 35.857792, 33.919125>,  <28.299940, 35.947536, 33.619492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549271, 35.857792, 33.919125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325712, -0.796401, -0.509566,
		0.710897, 0.561611, -0.423341,
		0.623327, -0.224362, 0.749083,
		28.736269, 35.790482, 34.143848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827229, 35.743984, 33.290043>,  <28.299940, 35.947536, 33.619492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.827229, 35.743984, 33.290043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899776, 35.575676, 33.645584>,  <28.943306, 35.474689, 33.858910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899776, 35.575676, 33.645584>,  <28.827229, 35.743984, 33.290043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899776, 35.575676, 33.645584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304148, -0.835528, -0.457588,
		0.935200, 0.353335, -0.023563,
		0.181370, -0.420770, 0.888852,
		28.954187, 35.449444, 33.912239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559666, 35.487125, 33.340153>,  <28.827229, 35.743984, 33.290043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559666, 35.487125, 33.340153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318037, 35.273762, 33.576988>,  <29.173059, 35.145744, 33.719090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318037, 35.273762, 33.576988>,  <29.559666, 35.487125, 33.340153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318037, 35.273762, 33.576988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189649, -0.817836, -0.543302,
		0.774034, -0.215906, 0.595195,
		-0.604074, -0.533412, 0.592086,
		29.136814, 35.113739, 33.754616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988565, 35.336182, 33.901123>,  <29.559666, 35.487125, 33.340153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988565, 35.336182, 33.901123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774796, 35.214710, 34.216633>,  <29.646534, 35.141827, 34.405937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774796, 35.214710, 34.216633>,  <29.988565, 35.336182, 33.901123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774796, 35.214710, 34.216633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247698, -0.948523, -0.197360,
		0.808106, 0.089904, 0.582135,
		-0.534425, -0.303681, 0.788776,
		29.614468, 35.123608, 34.453266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383030, 34.920662, 34.351784>,  <29.988565, 35.336182, 33.901123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383030, 34.920662, 34.351784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008070, 34.781670, 34.342503>,  <29.783094, 34.698277, 34.336933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008070, 34.781670, 34.342503>,  <30.383030, 34.920662, 34.351784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008070, 34.781670, 34.342503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334724, -0.880592, -0.335435,
		0.096124, -0.322204, 0.941777,
		-0.937401, -0.347479, -0.023203,
		29.726851, 34.677425, 34.335541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175671, 34.733326, 34.197350>,  <30.383030, 34.920662, 34.351784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175671, 34.733326, 34.197350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250130, 35.125988, 34.213821>,  <31.294806, 35.361588, 34.223705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250130, 35.125988, 34.213821>,  <31.175671, 34.733326, 34.197350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250130, 35.125988, 34.213821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783630, -0.173615, 0.596474,
		0.592683, -0.078765, -0.801576,
		0.186147, 0.981659, 0.041176,
		31.305973, 35.420486, 34.226173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933731, 34.917774, 33.940384>,  <31.175671, 34.733326, 34.197350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933731, 34.917774, 33.940384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785976, 35.147064, 34.232948>,  <31.697323, 35.284637, 34.408485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785976, 35.147064, 34.232948>,  <31.933731, 34.917774, 33.940384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785976, 35.147064, 34.232948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858826, -0.090029, 0.504294,
		0.354923, 0.814436, -0.459046,
		-0.369388, 0.573226, 0.731413,
		31.675159, 35.319031, 34.452374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339420, 35.445938, 34.146900>,  <31.933731, 34.917774, 33.940384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339420, 35.445938, 34.146900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142384, 35.399467, 34.491890>,  <32.024162, 35.371586, 34.698883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142384, 35.399467, 34.491890>,  <32.339420, 35.445938, 34.146900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142384, 35.399467, 34.491890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851947, 0.137874, 0.505150,
		-0.177597, 0.983613, 0.031058,
		-0.492590, -0.116173, 0.862472,
		31.994606, 35.364616, 34.750633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493870, 35.975941, 34.615330>,  <32.339420, 35.445938, 34.146900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493870, 35.975941, 34.615330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402084, 35.650642, 34.829235>,  <32.347012, 35.455463, 34.957581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402084, 35.650642, 34.829235>,  <32.493870, 35.975941, 34.615330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402084, 35.650642, 34.829235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862266, 0.085012, 0.499270,
		-0.451492, 0.575676, 0.681728,
		-0.229463, -0.813247, 0.534768,
		32.333244, 35.406670, 34.989666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670525, 36.106071, 35.370163>,  <32.493870, 35.975941, 34.615330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670525, 36.106071, 35.370163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646503, 35.707855, 35.341042>,  <32.632092, 35.468925, 35.323566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646503, 35.707855, 35.341042>,  <32.670525, 36.106071, 35.370163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646503, 35.707855, 35.341042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755858, -0.092995, 0.648098,
		-0.651975, -0.016107, 0.758069,
		-0.060057, -0.995536, -0.072805,
		32.628487, 35.409195, 35.319199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702686, 35.736504, 35.964001>,  <32.670525, 36.106071, 35.370163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702686, 35.736504, 35.964001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849171, 35.461765, 35.712879>,  <32.937061, 35.296921, 35.562206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849171, 35.461765, 35.712879>,  <32.702686, 35.736504, 35.964001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849171, 35.461765, 35.712879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734715, -0.200596, 0.648039,
		-0.571038, -0.698571, 0.431177,
		0.366209, -0.686847, -0.627799,
		32.959034, 35.255711, 35.524540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744675, 35.221500, 36.376213>,  <32.702686, 35.736504, 35.964001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744675, 35.221500, 36.376213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063904, 35.156284, 36.144180>,  <33.255440, 35.117153, 36.004959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063904, 35.156284, 36.144180>,  <32.744675, 35.221500, 36.376213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063904, 35.156284, 36.144180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577349, -0.068639, 0.813607,
		-0.172472, -0.984228, 0.039355,
		0.798074, -0.163046, -0.580081,
		33.303326, 35.107372, 35.970158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144909, 34.525589, 36.473862>,  <32.744675, 35.221500, 36.376213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144909, 34.525589, 36.473862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404488, 34.797127, 36.336433>,  <33.560234, 34.960049, 36.253979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404488, 34.797127, 36.336433>,  <33.144909, 34.525589, 36.473862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404488, 34.797127, 36.336433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537942, -0.090055, 0.838158,
		0.538039, -0.728739, -0.423620,
		0.648947, 0.678844, -0.343566,
		33.599171, 35.000778, 36.233364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908970, 34.297413, 36.685177>,  <33.144909, 34.525589, 36.473862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908970, 34.297413, 36.685177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884109, 34.690273, 36.614159>,  <33.869194, 34.925987, 36.571548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884109, 34.690273, 36.614159>,  <33.908970, 34.297413, 36.685177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884109, 34.690273, 36.614159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427540, 0.186939, 0.884457,
		0.901858, -0.020939, -0.431525,
		-0.062149, 0.982148, -0.177545,
		33.865463, 34.984917, 36.560894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581856, 34.629036, 36.663097>,  <33.908970, 34.297413, 36.685177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581856, 34.629036, 36.663097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339680, 34.941723, 36.722916>,  <34.194374, 35.129333, 36.758808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339680, 34.941723, 36.722916>,  <34.581856, 34.629036, 36.663097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339680, 34.941723, 36.722916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562818, 0.287655, 0.774913,
		0.562747, 0.553327, -0.614122,
		-0.605436, 0.781719, 0.149545,
		34.158051, 35.176239, 36.767780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000053, 35.044197, 36.888351>,  <34.581856, 34.629036, 36.663097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000053, 35.044197, 36.888351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676823, 35.258335, 36.986668>,  <34.482883, 35.386818, 37.045658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676823, 35.258335, 36.986668>,  <35.000053, 35.044197, 36.888351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676823, 35.258335, 36.986668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454899, 0.302006, 0.837770,
		0.374263, 0.788797, -0.487572,
		-0.808080, 0.535343, 0.245793,
		34.434399, 35.418938, 37.060406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266338, 35.783756, 37.146099>,  <35.000053, 35.044197, 36.888351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266338, 35.783756, 37.146099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891605, 35.741177, 37.279373>,  <34.666767, 35.715630, 37.359337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891605, 35.741177, 37.279373>,  <35.266338, 35.783756, 37.146099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891605, 35.741177, 37.279373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286818, 0.311414, 0.905956,
		-0.200200, 0.944293, -0.261210,
		-0.936833, -0.106452, 0.333185,
		34.610554, 35.709240, 37.379330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040646, 36.470295, 37.398312>,  <35.266338, 35.783756, 37.146099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040646, 36.470295, 37.398312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818230, 36.185833, 37.570396>,  <34.684780, 36.015156, 37.673645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818230, 36.185833, 37.570396>,  <35.040646, 36.470295, 37.398312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818230, 36.185833, 37.570396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125354, 0.439930, 0.889240,
		-0.821646, 0.548384, -0.155474,
		-0.556043, -0.711152, 0.430209,
		34.651417, 35.972488, 37.699459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601456, 36.794632, 37.836872>,  <35.040646, 36.470295, 37.398312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601456, 36.794632, 37.836872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581112, 36.436340, 38.013542>,  <34.568905, 36.221367, 38.119545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581112, 36.436340, 38.013542>,  <34.601456, 36.794632, 37.836872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581112, 36.436340, 38.013542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144275, 0.431023, 0.890732,
		-0.988230, 0.109026, 0.107310,
		-0.050859, -0.895730, 0.441680,
		34.565853, 36.167622, 38.146046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097416, 36.887180, 38.250484>,  <34.601456, 36.794632, 37.836872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097416, 36.887180, 38.250484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296246, 36.568302, 38.387535>,  <34.415543, 36.376976, 38.469765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296246, 36.568302, 38.387535>,  <34.097416, 36.887180, 38.250484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296246, 36.568302, 38.387535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062551, 0.360919, 0.930497,
		-0.865448, -0.483962, 0.129540,
		0.497078, -0.797194, 0.342629,
		34.445370, 36.329144, 38.490322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731693, 36.638523, 38.814972>,  <34.097416, 36.887180, 38.250484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731693, 36.638523, 38.814972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110661, 36.518135, 38.858444>,  <34.338043, 36.445900, 38.884529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110661, 36.518135, 38.858444>,  <33.731693, 36.638523, 38.814972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110661, 36.518135, 38.858444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092555, 0.067373, 0.993426,
		-0.306316, -0.951250, 0.035974,
		0.947419, -0.300973, 0.108680,
		34.394886, 36.427845, 38.891048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756645, 36.155083, 39.412964>,  <33.731693, 36.638523, 38.814972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756645, 36.155083, 39.412964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147335, 36.232128, 39.375206>,  <34.381748, 36.278355, 39.352551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147335, 36.232128, 39.375206>,  <33.756645, 36.155083, 39.412964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147335, 36.232128, 39.375206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077614, 0.092901, 0.992646,
		0.199964, -0.976868, 0.075790,
		0.976725, 0.192611, -0.094395,
		34.440353, 36.289913, 39.346886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039539, 35.714485, 39.873177>,  <33.756645, 36.155083, 39.412964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039539, 35.714485, 39.873177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336353, 35.977226, 39.819618>,  <34.514442, 36.134872, 39.787483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336353, 35.977226, 39.819618>,  <34.039539, 35.714485, 39.873177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336353, 35.977226, 39.819618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241113, -0.075145, 0.967584,
		0.625502, -0.750262, -0.214136,
		0.742032, 0.656856, -0.133895,
		34.558964, 36.174282, 39.779449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726280, 35.370209, 40.150681>,  <34.039539, 35.714485, 39.873177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726280, 35.370209, 40.150681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755764, 35.768528, 40.172440>,  <34.773453, 36.007519, 40.185497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755764, 35.768528, 40.172440>,  <34.726280, 35.370209, 40.150681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755764, 35.768528, 40.172440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240886, -0.070712, 0.967974,
		0.967750, -0.058243, -0.245085,
		0.073708, 0.995795, 0.054401,
		34.777878, 36.067268, 40.188759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262722, 35.545578, 40.634617>,  <34.726280, 35.370209, 40.150681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262722, 35.545578, 40.634617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066948, 35.894371, 40.638668>,  <34.949486, 36.103645, 40.641098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066948, 35.894371, 40.638668>,  <35.262722, 35.545578, 40.634617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066948, 35.894371, 40.638668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074733, 0.030364, 0.996741,
		0.868834, 0.488593, -0.080027,
		-0.489431, 0.871983, 0.010132,
		34.920120, 36.155968, 40.641708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687767, 36.034054, 41.020744>,  <35.262722, 35.545578, 40.634617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687767, 36.034054, 41.020744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333076, 36.218597, 41.009033>,  <35.120262, 36.329323, 41.002007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333076, 36.218597, 41.009033>,  <35.687767, 36.034054, 41.020744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333076, 36.218597, 41.009033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113511, 0.278677, 0.953653,
		0.448136, 0.842309, -0.299481,
		-0.886729, 0.461361, -0.029274,
		35.067059, 36.357006, 41.000252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830799, 36.731430, 41.199604>,  <35.687767, 36.034054, 41.020744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830799, 36.731430, 41.199604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439922, 36.676918, 41.264744>,  <35.205395, 36.644211, 41.303829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439922, 36.676918, 41.264744>,  <35.830799, 36.731430, 41.199604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439922, 36.676918, 41.264744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091630, 0.421226, 0.902315,
		-0.191563, 0.896659, -0.399132,
		-0.977194, -0.136278, 0.162852,
		35.146763, 36.636036, 41.313599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516010, 37.374352, 41.366409>,  <35.830799, 36.731430, 41.199604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516010, 37.374352, 41.366409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260975, 37.122990, 41.544662>,  <35.107952, 36.972172, 41.651615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260975, 37.122990, 41.544662>,  <35.516010, 37.374352, 41.366409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260975, 37.122990, 41.544662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024693, 0.561494, 0.827112,
		-0.769978, 0.538365, -0.342487,
		-0.637593, -0.628401, 0.445632,
		35.069698, 36.934471, 41.678352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991707, 37.783859, 41.777679>,  <35.516010, 37.374352, 41.366409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991707, 37.783859, 41.777679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970104, 37.415783, 41.932766>,  <34.957142, 37.194935, 42.025818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970104, 37.415783, 41.932766>,  <34.991707, 37.783859, 41.777679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970104, 37.415783, 41.932766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069519, 0.390809, 0.917843,
		-0.996118, 0.022618, -0.085078,
		-0.054009, -0.920194, 0.387719,
		34.953903, 37.139725, 42.049080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708397, 37.868317, 42.479187>,  <34.991707, 37.783859, 41.777679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708397, 37.868317, 42.479187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830429, 37.487385, 42.478580>,  <34.903648, 37.258827, 42.478218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830429, 37.487385, 42.478580>,  <34.708397, 37.868317, 42.479187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830429, 37.487385, 42.478580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116165, -0.038791, 0.992472,
		-0.945216, -0.302606, -0.122461,
		0.305079, -0.952326, -0.001514,
		34.921951, 37.201687, 42.478127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169300, 37.394802, 42.884846>,  <34.708397, 37.868317, 42.479187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169300, 37.394802, 42.884846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542927, 37.252163, 42.892452>,  <34.767101, 37.166580, 42.897018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542927, 37.252163, 42.892452>,  <34.169300, 37.394802, 42.884846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542927, 37.252163, 42.892452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017316, 0.007972, 0.999818,
		-0.356681, -0.934225, 0.001272,
		0.934065, -0.356595, 0.019020,
		34.823147, 37.145184, 42.898159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248123, 36.842663, 43.455456>,  <34.169300, 37.394802, 42.884846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248123, 36.842663, 43.455456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639576, 36.900097, 43.396587>,  <34.874447, 36.934559, 43.361267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639576, 36.900097, 43.396587>,  <34.248123, 36.842663, 43.455456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639576, 36.900097, 43.396587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061847, 0.477043, 0.876701,
		0.196089, -0.867071, 0.457970,
		0.978634, 0.143587, -0.147169,
		34.933167, 36.943172, 43.352436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572891, 36.656963, 44.060699>,  <34.248123, 36.842663, 43.455456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572891, 36.656963, 44.060699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852650, 36.871193, 43.871380>,  <35.020504, 36.999733, 43.757790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852650, 36.871193, 43.871380>,  <34.572891, 36.656963, 44.060699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852650, 36.871193, 43.871380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228280, 0.460129, 0.858003,
		0.677304, -0.708124, 0.199549,
		0.699391, 0.535576, -0.473297,
		35.062466, 37.031864, 43.729389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229328, 36.610893, 44.371544>,  <34.572891, 36.656963, 44.060699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229328, 36.610893, 44.371544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269176, 36.966934, 44.193649>,  <35.293087, 37.180557, 44.086914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269176, 36.966934, 44.193649>,  <35.229328, 36.610893, 44.371544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269176, 36.966934, 44.193649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319571, 0.394660, 0.861463,
		0.942311, -0.227948, -0.245134,
		0.099624, 0.890103, -0.444738,
		35.299065, 37.233967, 44.060226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871914, 36.829655, 44.603767>,  <35.229328, 36.610893, 44.371544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871914, 36.829655, 44.603767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710365, 37.172028, 44.474609>,  <35.613434, 37.377453, 44.397114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710365, 37.172028, 44.474609>,  <35.871914, 36.829655, 44.603767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710365, 37.172028, 44.474609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393499, 0.481181, 0.783342,
		0.825860, 0.189313, -0.531146,
		-0.403874, 0.855936, -0.322893,
		35.589203, 37.428810, 44.377743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371895, 37.383335, 44.660328>,  <35.871914, 36.829655, 44.603767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371895, 37.383335, 44.660328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014816, 37.563587, 44.662064>,  <35.800568, 37.671738, 44.663105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014816, 37.563587, 44.662064>,  <36.371895, 37.383335, 44.660328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014816, 37.563587, 44.662064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258244, 0.503654, 0.824404,
		0.369316, 0.737066, -0.565985,
		-0.892701, 0.450628, 0.004335,
		35.747005, 37.698776, 44.663364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520336, 38.044426, 44.756577>,  <36.371895, 37.383335, 44.660328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520336, 38.044426, 44.756577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143085, 38.022633, 44.887756>,  <35.916737, 38.009556, 44.966465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143085, 38.022633, 44.887756>,  <36.520336, 38.044426, 44.756577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143085, 38.022633, 44.887756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245004, 0.552852, 0.796447,
		-0.224700, 0.831496, -0.508059,
		-0.943124, -0.054485, 0.327946,
		35.860149, 38.006287, 44.986141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356640, 38.668457, 45.017567>,  <36.520336, 38.044426, 44.756577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356640, 38.668457, 45.017567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065464, 38.454697, 45.189388>,  <35.890759, 38.326443, 45.292480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065464, 38.454697, 45.189388>,  <36.356640, 38.668457, 45.017567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065464, 38.454697, 45.189388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032805, 0.598641, 0.800345,
		-0.684852, 0.596697, -0.418245,
		-0.727943, -0.534398, 0.429556,
		35.847080, 38.294376, 45.318256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990669, 39.091682, 45.340088>,  <36.356640, 38.668457, 45.017567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990669, 39.091682, 45.340088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901463, 38.748123, 45.524502>,  <35.847939, 38.541988, 45.635151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901463, 38.748123, 45.524502>,  <35.990669, 39.091682, 45.340088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901463, 38.748123, 45.524502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058490, 0.460303, 0.885833,
		-0.973059, 0.224521, -0.052418,
		-0.223016, -0.858901, 0.461034,
		35.834557, 38.490452, 45.662811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434399, 39.296589, 45.853817>,  <35.990669, 39.091682, 45.340088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434399, 39.296589, 45.853817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608189, 38.964088, 45.992527>,  <35.712463, 38.764587, 46.075752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608189, 38.964088, 45.992527>,  <35.434399, 39.296589, 45.853817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608189, 38.964088, 45.992527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023118, 0.395178, 0.918314,
		-0.900387, -0.390968, 0.190911,
		0.434475, -0.831251, 0.346775,
		35.738533, 38.714714, 46.096558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025486, 38.929234, 46.453960>,  <35.434399, 39.296589, 45.853817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025486, 38.929234, 46.453960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398884, 38.797653, 46.511066>,  <35.622921, 38.718704, 46.545330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398884, 38.797653, 46.511066>,  <35.025486, 38.929234, 46.453960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398884, 38.797653, 46.511066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060629, 0.247603, 0.966963,
		-0.353435, -0.911308, 0.211191,
		0.933493, -0.328954, 0.142764,
		35.678932, 38.698967, 46.553894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039829, 38.626526, 47.169590>,  <35.025486, 38.929234, 46.453960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039829, 38.626526, 47.169590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424446, 38.680588, 47.073952>,  <35.655216, 38.713024, 47.016567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424446, 38.680588, 47.073952>,  <35.039829, 38.626526, 47.169590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424446, 38.680588, 47.073952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221341, 0.134107, 0.965931,
		0.162620, -0.981706, 0.099033,
		0.961542, 0.135160, -0.239101,
		35.712910, 38.721134, 47.002220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400776, 38.244358, 47.584778>,  <35.039829, 38.626526, 47.169590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400776, 38.244358, 47.584778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679356, 38.500793, 47.455799>,  <35.846504, 38.654655, 47.378410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679356, 38.500793, 47.455799>,  <35.400776, 38.244358, 47.584778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679356, 38.500793, 47.455799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411508, 0.011336, 0.911336,
		0.587900, -0.767386, -0.255917,
		0.696445, 0.641086, -0.322450,
		35.888290, 38.693119, 47.359066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024170, 38.021336, 47.831898>,  <35.400776, 38.244358, 47.584778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024170, 38.021336, 47.831898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106640, 38.406471, 47.762115>,  <36.156120, 38.637554, 47.720245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106640, 38.406471, 47.762115>,  <36.024170, 38.021336, 47.831898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106640, 38.406471, 47.762115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389126, 0.082902, 0.917447,
		0.897816, -0.257038, -0.357573,
		0.206175, 0.962839, -0.174451,
		36.168491, 38.695324, 47.709782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625191, 38.067295, 48.148388>,  <36.024170, 38.021336, 47.831898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625191, 38.067295, 48.148388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464981, 38.433121, 48.125904>,  <36.368855, 38.652615, 48.112415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464981, 38.433121, 48.125904>,  <36.625191, 38.067295, 48.148388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464981, 38.433121, 48.125904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339866, 0.205247, 0.917804,
		0.850925, 0.348498, -0.393034,
		-0.400522, 0.914561, -0.056207,
		36.344826, 38.707489, 48.109043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039909, 38.563007, 48.508102>,  <36.625191, 38.067295, 48.148388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039909, 38.563007, 48.508102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681805, 38.741161, 48.512894>,  <36.466942, 38.848053, 48.515770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681805, 38.741161, 48.512894>,  <37.039909, 38.563007, 48.508102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681805, 38.741161, 48.512894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056329, 0.086473, 0.994660,
		0.441973, 0.891152, -0.102504,
		-0.895258, 0.445387, 0.011979,
		36.413227, 38.874779, 48.516487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020126, 39.154026, 48.985279>,  <37.039909, 38.563007, 48.508102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020126, 39.154026, 48.985279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637821, 39.039486, 48.958370>,  <36.408440, 38.970760, 48.942223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637821, 39.039486, 48.958370>,  <37.020126, 39.154026, 48.985279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637821, 39.039486, 48.958370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132972, 0.216594, 0.967164,
		-0.262379, 0.933322, -0.245089,
		-0.955759, -0.286354, -0.067276,
		36.351093, 38.953579, 48.938187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582741, 39.801010, 48.936035>,  <37.020126, 39.154026, 48.985279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582741, 39.801010, 48.936035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376842, 39.496452, 49.093681>,  <36.253304, 39.313717, 49.188267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376842, 39.496452, 49.093681>,  <36.582741, 39.801010, 48.936035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376842, 39.496452, 49.093681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014365, 0.467285, 0.883990,
		-0.857224, 0.449366, -0.251469,
		-0.514743, -0.761390, 0.394113,
		36.222420, 39.268036, 49.211914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960884, 40.030544, 49.413578>,  <36.582741, 39.801010, 48.936035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960884, 40.030544, 49.413578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016220, 39.656349, 49.543644>,  <36.049419, 39.431831, 49.621685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016220, 39.656349, 49.543644>,  <35.960884, 40.030544, 49.413578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016220, 39.656349, 49.543644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087428, 0.338575, 0.936869,
		-0.986519, -0.101175, 0.128625,
		0.138337, -0.935484, 0.325165,
		36.057720, 39.375706, 49.641193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500469, 39.858986, 50.104126>,  <35.960884, 40.030544, 49.413578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500469, 39.858986, 50.104126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828247, 39.636734, 50.047874>,  <36.024914, 39.503384, 50.014122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828247, 39.636734, 50.047874>,  <35.500469, 39.858986, 50.104126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828247, 39.636734, 50.047874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274898, 0.165718, 0.947084,
		-0.502927, -0.814745, 0.288539,
		0.819448, -0.555633, -0.140628,
		36.074081, 39.470043, 50.005688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288517, 39.252689, 49.753441>,  <35.500469, 39.858986, 50.104126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288517, 39.252689, 49.753441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539207, 38.964916, 49.873188>,  <35.689621, 38.792252, 49.945038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539207, 38.964916, 49.873188>,  <35.288517, 39.252689, 49.753441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539207, 38.964916, 49.873188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583912, -0.179187, 0.791794,
		-0.516003, -0.671045, -0.532389,
		0.626727, -0.719437, 0.299371,
		35.727226, 38.749084, 49.963001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831432, 38.954834, 50.139706>,  <35.288517, 39.252689, 49.753441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831432, 38.954834, 50.139706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178211, 38.781258, 50.237759>,  <35.386280, 38.677113, 50.296589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178211, 38.781258, 50.237759>,  <34.831432, 38.954834, 50.139706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178211, 38.781258, 50.237759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428070, -0.396438, 0.812154,
		-0.255252, -0.809029, -0.529451,
		0.866951, -0.433946, 0.245129,
		35.438297, 38.651073, 50.311298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753002, 38.185974, 50.324329>,  <34.831432, 38.954834, 50.139706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753002, 38.185974, 50.324329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064034, 38.330982, 50.529831>,  <35.250652, 38.417988, 50.653133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064034, 38.330982, 50.529831>,  <34.753002, 38.185974, 50.324329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064034, 38.330982, 50.529831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394862, -0.354336, 0.847662,
		0.489335, -0.861990, -0.132381,
		0.777583, 0.362518, 0.513756,
		35.297310, 38.439739, 50.683956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990311, 37.687996, 50.781830>,  <34.753002, 38.185974, 50.324329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990311, 37.687996, 50.781830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051380, 38.041527, 50.958710>,  <35.088020, 38.253647, 51.064838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051380, 38.041527, 50.958710>,  <34.990311, 37.687996, 50.781830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051380, 38.041527, 50.958710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270023, -0.393111, 0.878949,
		0.950673, -0.253594, 0.178637,
		0.152671, 0.883829, 0.442196,
		35.097183, 38.306675, 51.091370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148949, 37.502007, 51.405537>,  <34.990311, 37.687996, 50.781830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148949, 37.502007, 51.405537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046139, 37.887726, 51.431042>,  <34.984451, 38.119156, 51.446346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046139, 37.887726, 51.431042>,  <35.148949, 37.502007, 51.405537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046139, 37.887726, 51.431042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424201, -0.171859, 0.889111,
		0.868326, 0.201478, 0.453229,
		-0.257027, 0.964298, 0.063763,
		34.969032, 38.177017, 51.450172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345417, 37.819874, 52.022507>,  <35.148949, 37.502007, 51.405537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345417, 37.819874, 52.022507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063194, 38.075047, 51.899063>,  <34.893860, 38.228149, 51.824997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063194, 38.075047, 51.899063>,  <35.345417, 37.819874, 52.022507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063194, 38.075047, 51.899063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497987, -0.136497, 0.856374,
		0.504185, 0.757899, 0.413988,
		-0.705553, 0.637932, -0.308604,
		34.851528, 38.266426, 51.806480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686237, 37.242661, 52.214165>,  <35.345417, 37.819874, 52.022507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686237, 37.242661, 52.214165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021809, 37.384411, 52.379391>,  <36.223152, 37.469460, 52.478527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021809, 37.384411, 52.379391>,  <35.686237, 37.242661, 52.214165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021809, 37.384411, 52.379391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540288, -0.450956, -0.710442,
		-0.065490, 0.819182, -0.569783,
		0.838928, 0.354374, 0.413061,
		36.273487, 37.490723, 52.503307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091785, 37.710777, 51.854492>,  <35.686237, 37.242661, 52.214165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091785, 37.710777, 51.854492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272442, 37.433735, 52.079460>,  <36.380836, 37.267509, 52.214439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272442, 37.433735, 52.079460>,  <36.091785, 37.710777, 51.854492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272442, 37.433735, 52.079460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586041, -0.245017, -0.772349,
		0.672738, 0.678423, 0.295238,
		0.451641, -0.692610, 0.562416,
		36.407932, 37.225952, 52.248184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885521, 37.766193, 51.905571>,  <36.091785, 37.710777, 51.854492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885521, 37.766193, 51.905571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680019, 37.423904, 51.880947>,  <36.556717, 37.218529, 51.866173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680019, 37.423904, 51.880947>,  <36.885521, 37.766193, 51.905571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680019, 37.423904, 51.880947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177733, -0.035960, -0.983422,
		0.839326, -0.516177, 0.170566,
		-0.513753, -0.855727, -0.061560,
		36.525894, 37.167187, 51.862480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388561, 37.353077, 51.702480>,  <36.885521, 37.766193, 51.905571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388561, 37.353077, 51.702480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022240, 37.227337, 51.602493>,  <36.802444, 37.151894, 51.542503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022240, 37.227337, 51.602493>,  <37.388561, 37.353077, 51.702480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022240, 37.227337, 51.602493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310942, -0.161041, -0.936686,
		0.254192, -0.935548, 0.245227,
		-0.915807, -0.314350, -0.249965,
		36.747498, 37.133034, 51.527504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551704, 36.755928, 51.458687>,  <37.388561, 37.353077, 51.702480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551704, 36.755928, 51.458687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213535, 36.920712, 51.322720>,  <37.010632, 37.019581, 51.241138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213535, 36.920712, 51.322720>,  <37.551704, 36.755928, 51.458687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213535, 36.920712, 51.322720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269048, -0.221304, -0.937357,
		-0.461379, -0.883920, 0.076259,
		-0.845424, 0.411959, -0.339922,
		36.959908, 37.044300, 51.220741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113575, 36.294617, 51.086742>,  <37.551704, 36.755928, 51.458687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113575, 36.294617, 51.086742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055279, 36.665676, 50.949211>,  <37.020302, 36.888313, 50.866692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055279, 36.665676, 50.949211>,  <37.113575, 36.294617, 51.086742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055279, 36.665676, 50.949211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231091, -0.306008, -0.923556,
		-0.961955, -0.214056, -0.169774,
		-0.145741, 0.927652, -0.343833,
		37.011555, 36.943974, 50.846062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736763, 36.231678, 50.475967>,  <37.113575, 36.294617, 51.086742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736763, 36.231678, 50.475967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944801, 36.573093, 50.463444>,  <37.069622, 36.777943, 50.455929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944801, 36.573093, 50.463444>,  <36.736763, 36.231678, 50.475967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944801, 36.573093, 50.463444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482494, -0.323855, -0.813829,
		-0.704771, 0.408161, -0.580260,
		0.520094, 0.853535, -0.031308,
		37.100830, 36.829155, 50.454052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631275, 36.431793, 49.846363>,  <36.736763, 36.231678, 50.475967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631275, 36.431793, 49.846363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941139, 36.651157, 49.972317>,  <37.127056, 36.782776, 50.047890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941139, 36.651157, 49.972317>,  <36.631275, 36.431793, 49.846363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941139, 36.651157, 49.972317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520051, -0.269168, -0.810615,
		-0.359795, 0.791702, -0.493715,
		0.774658, 0.548412, 0.314880,
		37.173538, 36.815681, 50.066780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793938, 36.905624, 49.272224>,  <36.631275, 36.431793, 49.846363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793938, 36.905624, 49.272224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126118, 36.905952, 49.495060>,  <37.325428, 36.906151, 49.628761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126118, 36.905952, 49.495060>,  <36.793938, 36.905624, 49.272224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126118, 36.905952, 49.495060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556854, -0.030320, -0.830057,
		0.016208, 0.999540, -0.025638,
		0.830452, 0.000823, 0.557089,
		37.375252, 36.906200, 49.662186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252697, 37.378151, 48.829067>,  <36.793938, 36.905624, 49.272224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252697, 37.378151, 48.829067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469902, 37.147942, 49.073658>,  <37.600224, 37.009815, 49.220413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469902, 37.147942, 49.073658>,  <37.252697, 37.378151, 48.829067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469902, 37.147942, 49.073658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655354, -0.164832, -0.737117,
		0.525022, 0.800998, 0.287669,
		0.543013, -0.575528, 0.611478,
		37.632805, 36.975285, 49.257103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942417, 37.551411, 48.582237>,  <37.252697, 37.378151, 48.829067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942417, 37.551411, 48.582237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952152, 37.213791, 48.796520>,  <37.957993, 37.011219, 48.925091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952152, 37.213791, 48.796520>,  <37.942417, 37.551411, 48.582237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952152, 37.213791, 48.796520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509276, -0.450653, -0.733178,
		0.860259, 0.290664, 0.418890,
		0.024334, -0.844053, 0.535707,
		37.959454, 36.960575, 48.957233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682411, 37.362278, 48.547443>,  <37.942417, 37.551411, 48.582237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682411, 37.362278, 48.547443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514881, 37.033340, 48.701496>,  <38.414364, 36.835976, 48.793926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514881, 37.033340, 48.701496>,  <38.682411, 37.362278, 48.547443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514881, 37.033340, 48.701496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481417, -0.560699, -0.673688,
		0.769949, -0.096750, 0.630728,
		-0.418827, -0.822348, 0.385132,
		38.389233, 36.786636, 48.817036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222919, 36.885460, 48.710262>,  <38.682411, 37.362278, 48.547443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222919, 36.885460, 48.710262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879398, 36.685596, 48.664989>,  <38.673286, 36.565678, 48.637825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879398, 36.685596, 48.664989>,  <39.222919, 36.885460, 48.710262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879398, 36.685596, 48.664989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452580, -0.636400, -0.624633,
		0.240075, -0.587656, 0.772673,
		-0.858799, -0.499656, -0.113178,
		38.621758, 36.535698, 48.631035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397034, 36.143295, 48.825378>,  <39.222919, 36.885460, 48.710262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397034, 36.143295, 48.825378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064938, 36.188995, 48.607151>,  <38.865681, 36.216415, 48.476215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064938, 36.188995, 48.607151>,  <39.397034, 36.143295, 48.825378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064938, 36.188995, 48.607151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359178, -0.638819, -0.680368,
		-0.426251, -0.760827, 0.489339,
		-0.830242, 0.114248, -0.545569,
		38.815865, 36.223270, 48.443481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231876, 35.432743, 48.458584>,  <39.397034, 36.143295, 48.825378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231876, 35.432743, 48.458584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030472, 35.719498, 48.265690>,  <38.909630, 35.891552, 48.149956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030472, 35.719498, 48.265690>,  <39.231876, 35.432743, 48.458584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030472, 35.719498, 48.265690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192967, -0.450738, -0.871550,
		-0.842165, -0.531889, 0.088615,
		-0.503510, 0.716889, -0.482233,
		38.879417, 35.934563, 48.121021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918549, 35.034901, 47.881786>,  <39.231876, 35.432743, 48.458584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918549, 35.034901, 47.881786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823555, 35.404839, 47.762947>,  <38.766560, 35.626801, 47.691643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823555, 35.404839, 47.762947>,  <38.918549, 35.034901, 47.881786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823555, 35.404839, 47.762947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111463, -0.277888, -0.954125,
		-0.964976, -0.259703, -0.037092,
		-0.237481, 0.924842, -0.297103,
		38.752312, 35.682293, 47.673817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279179, 34.984280, 47.345478>,  <38.918549, 35.034901, 47.881786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279179, 34.984280, 47.345478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438419, 35.346073, 47.284248>,  <38.533962, 35.563148, 47.247509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438419, 35.346073, 47.284248>,  <38.279179, 34.984280, 47.345478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438419, 35.346073, 47.284248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117970, -0.115006, -0.986335,
		-0.909726, 0.410717, 0.060918,
		0.398099, 0.904481, -0.153076,
		38.557850, 35.617416, 47.238327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923317, 35.298023, 46.717457>,  <38.279179, 34.984280, 47.345478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923317, 35.298023, 46.717457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261749, 35.508793, 46.749683>,  <38.464809, 35.635254, 46.769020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261749, 35.508793, 46.749683>,  <37.923317, 35.298023, 46.717457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261749, 35.508793, 46.749683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086060, 0.014134, -0.996190,
		-0.526060, 0.849792, -0.033388,
		0.846082, 0.526928, 0.080568,
		38.515575, 35.666870, 46.773853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831394, 35.845947, 46.376678>,  <37.923317, 35.298023, 46.717457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831394, 35.845947, 46.376678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228210, 35.796967, 46.388443>,  <38.466301, 35.767578, 46.395504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228210, 35.796967, 46.388443>,  <37.831394, 35.845947, 46.376678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228210, 35.796967, 46.388443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022415, -0.058155, -0.998056,
		0.123921, 0.990770, -0.054947,
		0.992039, -0.122448, 0.029415,
		38.525822, 35.760231, 46.397266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083599, 36.278900, 45.802277>,  <37.831394, 35.845947, 46.376678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083599, 36.278900, 45.802277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309135, 35.960827, 45.891506>,  <38.444458, 35.769981, 45.945045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309135, 35.960827, 45.891506>,  <38.083599, 36.278900, 45.802277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309135, 35.960827, 45.891506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172656, -0.150645, -0.973394,
		0.807636, 0.587353, 0.052354,
		0.563839, -0.795187, 0.223076,
		38.478287, 35.722271, 45.958427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656502, 36.359886, 45.354935>,  <38.083599, 36.278900, 45.802277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656502, 36.359886, 45.354935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634193, 35.975513, 45.463379>,  <38.620808, 35.744888, 45.528446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634193, 35.975513, 45.463379>,  <38.656502, 36.359886, 45.354935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634193, 35.975513, 45.463379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070970, -0.274661, -0.958919,
		0.995918, -0.034242, 0.083516,
		-0.055774, -0.960931, 0.271109,
		38.617462, 35.687233, 45.544712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025139, 36.011089, 44.800598>,  <38.656502, 36.359886, 45.354935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025139, 36.011089, 44.800598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847836, 35.713692, 45.000889>,  <38.741451, 35.535252, 45.121063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847836, 35.713692, 45.000889>,  <39.025139, 36.011089, 44.800598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847836, 35.713692, 45.000889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107895, -0.510291, -0.853207,
		0.889875, -0.432220, 0.145972,
		-0.443262, -0.743498, 0.500730,
		38.714855, 35.490643, 45.151108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403744, 35.388271, 44.594059>,  <39.025139, 36.011089, 44.800598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403744, 35.388271, 44.594059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038025, 35.291023, 44.723644>,  <38.818592, 35.232674, 44.801395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038025, 35.291023, 44.723644>,  <39.403744, 35.388271, 44.594059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038025, 35.291023, 44.723644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248766, -0.294135, -0.922822,
		0.319642, -0.924326, 0.208448,
		-0.914300, -0.243117, 0.323959,
		38.763737, 35.218090, 44.820831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327568, 34.822571, 44.304371>,  <39.403744, 35.388271, 44.594059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327568, 34.822571, 44.304371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950378, 34.921803, 44.393143>,  <38.724064, 34.981342, 44.446407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950378, 34.921803, 44.393143>,  <39.327568, 34.822571, 44.304371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950378, 34.921803, 44.393143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312134, -0.427440, -0.848450,
		-0.115621, -0.869340, 0.480499,
		-0.942976, 0.248078, 0.221929,
		38.667484, 34.996227, 44.459721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946251, 34.253464, 44.201370>,  <39.327568, 34.822571, 44.304371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946251, 34.253464, 44.201370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677135, 34.549000, 44.185997>,  <38.515667, 34.726322, 44.176773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677135, 34.549000, 44.185997>,  <38.946251, 34.253464, 44.201370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677135, 34.549000, 44.185997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432534, -0.434953, -0.789766,
		-0.600225, -0.514721, 0.612203,
		-0.672788, 0.738836, -0.038435,
		38.475300, 34.770649, 44.174465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246246, 34.012833, 44.035816>,  <38.946251, 34.253464, 44.201370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246246, 34.012833, 44.035816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196362, 34.389282, 43.910126>,  <38.166431, 34.615150, 43.834709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196362, 34.389282, 43.910126>,  <38.246246, 34.012833, 44.035816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196362, 34.389282, 43.910126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519142, -0.331783, -0.787662,
		-0.845541, 0.064903, 0.529951,
		-0.124707, 0.941121, -0.314230,
		38.158951, 34.671619, 43.815857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520859, 34.152618, 43.841225>,  <38.246246, 34.012833, 44.035816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520859, 34.152618, 43.841225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708717, 34.435383, 43.629673>,  <37.821434, 34.605042, 43.502743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708717, 34.435383, 43.629673>,  <37.520859, 34.152618, 43.841225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708717, 34.435383, 43.629673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402974, -0.361361, -0.840851,
		-0.785521, 0.608026, 0.115155,
		0.469647, 0.706910, -0.528875,
		37.849613, 34.647457, 43.471012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979794, 34.324249, 43.500278>,  <37.520859, 34.152618, 43.841225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979794, 34.324249, 43.500278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290409, 34.494846, 43.314770>,  <37.476780, 34.597206, 43.203465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290409, 34.494846, 43.314770>,  <36.979794, 34.324249, 43.500278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290409, 34.494846, 43.314770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456767, -0.125937, -0.880627,
		-0.433990, 0.895679, 0.097014,
		0.776541, 0.426496, -0.463772,
		37.523373, 34.622795, 43.175636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714573, 34.914452, 43.078926>,  <36.979794, 34.324249, 43.500278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714573, 34.914452, 43.078926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075661, 34.818142, 42.936306>,  <37.292313, 34.760357, 42.850735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075661, 34.818142, 42.936306>,  <36.714573, 34.914452, 43.078926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075661, 34.818142, 42.936306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399606, -0.162166, -0.902229,
		0.159410, 0.956939, -0.242604,
		0.902720, -0.240771, -0.356548,
		37.346478, 34.745911, 42.829342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861183, 35.399837, 42.521637>,  <36.714573, 34.914452, 43.078926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861183, 35.399837, 42.521637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079834, 35.069401, 42.466824>,  <37.211025, 34.871140, 42.433937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079834, 35.069401, 42.466824>,  <36.861183, 35.399837, 42.521637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079834, 35.069401, 42.466824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192116, 0.035558, -0.980728,
		0.815041, 0.562416, -0.139268,
		0.546625, -0.826089, -0.137031,
		37.243820, 34.821575, 42.425713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945778, 35.443851, 41.882042>,  <36.861183, 35.399837, 42.521637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945778, 35.443851, 41.882042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125736, 35.087723, 41.910110>,  <37.233711, 34.874046, 41.926952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125736, 35.087723, 41.910110>,  <36.945778, 35.443851, 41.882042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125736, 35.087723, 41.910110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094620, -0.125645, -0.987553,
		0.888054, 0.437658, -0.140770,
		0.449897, -0.890320, 0.070169,
		37.260704, 34.820625, 41.931160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528416, 35.347424, 41.238850>,  <36.945778, 35.443851, 41.882042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528416, 35.347424, 41.238850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443001, 34.977428, 41.364582>,  <37.391754, 34.755432, 41.440022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443001, 34.977428, 41.364582>,  <37.528416, 35.347424, 41.238850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443001, 34.977428, 41.364582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021503, -0.317226, -0.948106,
		0.976699, -0.209213, 0.047849,
		-0.213535, -0.924985, 0.314333,
		37.378941, 34.699932, 41.458881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893028, 34.904781, 40.790367>,  <37.528416, 35.347424, 41.238850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893028, 34.904781, 40.790367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593555, 34.690517, 40.946594>,  <37.413872, 34.561958, 41.040329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593555, 34.690517, 40.946594>,  <37.893028, 34.904781, 40.790367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593555, 34.690517, 40.946594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287908, -0.267964, -0.919404,
		0.597147, -0.800789, 0.046398,
		-0.748681, -0.535661, 0.390568,
		37.368950, 34.529819, 41.063763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959709, 34.272087, 40.511410>,  <37.893028, 34.904781, 40.790367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959709, 34.272087, 40.511410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578453, 34.303707, 40.628216>,  <37.349701, 34.322681, 40.698299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578453, 34.303707, 40.628216>,  <37.959709, 34.272087, 40.511410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578453, 34.303707, 40.628216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302458, -0.269698, -0.914211,
		0.006485, -0.959695, 0.280970,
		-0.953141, 0.079053, 0.292017,
		37.292511, 34.327423, 40.715820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682007, 33.663128, 40.345375>,  <37.959709, 34.272087, 40.511410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682007, 33.663128, 40.345375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359459, 33.894329, 40.395451>,  <37.165928, 34.033051, 40.425495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359459, 33.894329, 40.395451>,  <37.682007, 33.663128, 40.345375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359459, 33.894329, 40.395451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303604, -0.222912, -0.926356,
		-0.507533, -0.784996, 0.355235,
		-0.806371, 0.578007, 0.125192,
		37.117546, 34.067730, 40.433010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024830, 33.348392, 40.084259>,  <37.682007, 33.663128, 40.345375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024830, 33.348392, 40.084259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914333, 33.732819, 40.086601>,  <36.848034, 33.963474, 40.088005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914333, 33.732819, 40.086601>,  <37.024830, 33.348392, 40.084259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914333, 33.732819, 40.086601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336849, -0.091114, -0.937140,
		-0.900124, -0.260850, 0.348905,
		-0.276243, 0.961070, 0.005853,
		36.831459, 34.021141, 40.088356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328465, 33.249405, 39.890659>,  <37.024830, 33.348392, 40.084259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328465, 33.249405, 39.890659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445423, 33.623997, 39.813183>,  <36.515598, 33.848751, 39.766697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445423, 33.623997, 39.813183>,  <36.328465, 33.249405, 39.890659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445423, 33.623997, 39.813183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506801, -0.020009, -0.861831,
		-0.810959, 0.350160, 0.468757,
		0.292400, 0.936476, -0.193688,
		36.533142, 33.904938, 39.755077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776962, 33.475769, 39.373768>,  <36.328465, 33.249405, 39.890659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776962, 33.475769, 39.373768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057404, 33.758614, 39.337009>,  <36.225670, 33.928322, 39.314957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057404, 33.758614, 39.337009>,  <35.776962, 33.475769, 39.373768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057404, 33.758614, 39.337009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186346, 0.057301, -0.980812,
		-0.688277, 0.704777, 0.171941,
		0.701106, 0.707111, -0.091893,
		36.267735, 33.970745, 39.309441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542099, 33.989243, 38.929798>,  <35.776962, 33.475769, 39.373768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542099, 33.989243, 38.929798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929684, 34.085823, 38.908577>,  <36.162235, 34.143772, 38.895844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929684, 34.085823, 38.908577>,  <35.542099, 33.989243, 38.929798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929684, 34.085823, 38.908577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072392, 0.071933, -0.994779,
		-0.236377, 0.967743, 0.087179,
		0.968961, 0.241454, -0.053053,
		36.220371, 34.158260, 38.892662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544678, 34.454319, 38.459064>,  <35.542099, 33.989243, 38.929798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544678, 34.454319, 38.459064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912498, 34.298054, 38.476086>,  <36.133190, 34.204292, 38.486298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912498, 34.298054, 38.476086>,  <35.544678, 34.454319, 38.459064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912498, 34.298054, 38.476086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025581, -0.048558, -0.998493,
		0.392143, 0.919251, -0.034658,
		0.919549, -0.390665, 0.042556,
		36.188362, 34.180855, 38.488853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076546, 34.854568, 38.008598>,  <35.544678, 34.454319, 38.459064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076546, 34.854568, 38.008598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189793, 34.475342, 38.066589>,  <36.257740, 34.247807, 38.101383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189793, 34.475342, 38.066589>,  <36.076546, 34.854568, 38.008598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189793, 34.475342, 38.066589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127321, -0.112671, -0.985441,
		0.950596, 0.297456, 0.088809,
		0.283119, -0.948064, 0.144977,
		36.274727, 34.190922, 38.110081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601479, 34.789375, 37.577980>,  <36.076546, 34.854568, 38.008598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601479, 34.789375, 37.577980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489941, 34.411518, 37.647141>,  <36.423016, 34.184803, 37.688637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489941, 34.411518, 37.647141>,  <36.601479, 34.789375, 37.577980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489941, 34.411518, 37.647141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073421, -0.200486, -0.976941,
		0.957524, -0.259725, 0.125262,
		-0.278849, -0.944642, 0.172901,
		36.406284, 34.128124, 37.699013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892643, 34.457710, 37.022270>,  <36.601479, 34.789375, 37.577980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892643, 34.457710, 37.022270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638962, 34.171284, 37.138912>,  <36.486752, 33.999428, 37.208897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638962, 34.171284, 37.138912>,  <36.892643, 34.457710, 37.022270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638962, 34.171284, 37.138912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193294, -0.512027, -0.836939,
		0.748614, -0.474424, 0.463141,
		-0.634204, -0.716066, 0.291607,
		36.448700, 33.956463, 37.226395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380764, 33.909733, 36.759823>,  <36.892643, 34.457710, 37.022270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380764, 33.909733, 36.759823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698429, 34.128201, 36.653236>,  <37.889027, 34.259281, 36.589283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698429, 34.128201, 36.653236>,  <37.380764, 33.909733, 36.759823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698429, 34.128201, 36.653236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384998, 0.791437, 0.474768,
		0.470196, -0.274454, 0.838803,
		0.794162, 0.546171, -0.266466,
		37.936676, 34.292053, 36.573296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744858, 33.437004, 37.085304>,  <37.380764, 33.909733, 36.759823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744858, 33.437004, 37.085304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844872, 33.078846, 37.232681>,  <37.904881, 32.863949, 37.321106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844872, 33.078846, 37.232681>,  <37.744858, 33.437004, 37.085304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844872, 33.078846, 37.232681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667169, -0.116446, -0.735748,
		0.701691, 0.429769, 0.568267,
		0.250030, -0.895399, 0.368438,
		37.919880, 32.810226, 37.343212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165401, 33.166603, 37.621376>,  <37.744858, 33.437004, 37.085304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165401, 33.166603, 37.621376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489540, 33.388756, 37.546654>,  <38.684021, 33.522045, 37.501820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489540, 33.388756, 37.546654>,  <38.165401, 33.166603, 37.621376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489540, 33.388756, 37.546654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128317, 0.142873, 0.981388,
		0.571731, -0.819233, 0.044511,
		0.810344, 0.555378, -0.186807,
		38.732643, 33.555370, 37.490612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711445, 32.956562, 38.111706>,  <38.165401, 33.166603, 37.621376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711445, 32.956562, 38.111706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837967, 33.314644, 37.986122>,  <38.913879, 33.529491, 37.910774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837967, 33.314644, 37.986122>,  <38.711445, 32.956562, 38.111706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837967, 33.314644, 37.986122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434795, 0.157338, 0.886678,
		0.843151, -0.416968, -0.339462,
		0.316306, 0.895200, -0.313955,
		38.932858, 33.583202, 37.891937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457348, 32.887466, 38.306606>,  <38.711445, 32.956562, 38.111706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457348, 32.887466, 38.306606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346352, 33.270344, 38.273678>,  <39.279755, 33.500072, 38.253922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346352, 33.270344, 38.273678>,  <39.457348, 32.887466, 38.306606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346352, 33.270344, 38.273678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442001, 0.203271, 0.873679,
		0.853014, 0.206054, -0.479488,
		-0.277492, 0.957195, -0.082317,
		39.263103, 33.557503, 38.248981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074436, 33.336811, 38.258533>,  <39.457348, 32.887466, 38.306606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074436, 33.336811, 38.258533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789608, 33.580608, 38.397942>,  <39.618710, 33.726887, 38.481586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789608, 33.580608, 38.397942>,  <40.074436, 33.336811, 38.258533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789608, 33.580608, 38.397942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536003, 0.151287, 0.830550,
		0.453489, 0.778221, -0.434419,
		-0.712073, 0.609495, 0.348522,
		39.575985, 33.763458, 38.502499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423508, 33.893532, 38.569592>,  <40.074436, 33.336811, 38.258533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423508, 33.893532, 38.569592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045467, 33.924297, 38.696632>,  <39.818645, 33.942757, 38.772858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045467, 33.924297, 38.696632>,  <40.423508, 33.893532, 38.569592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045467, 33.924297, 38.696632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325545, 0.306159, 0.894588,
		-0.028429, 0.948868, -0.314390,
		-0.945099, 0.076916, 0.317603,
		39.761936, 33.947372, 38.791912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373100, 34.552982, 38.853241>,  <40.423508, 33.893532, 38.569592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373100, 34.552982, 38.853241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104290, 34.297462, 39.003071>,  <39.943005, 34.144150, 39.092968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104290, 34.297462, 39.003071>,  <40.373100, 34.552982, 38.853241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104290, 34.297462, 39.003071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314208, 0.212058, 0.925367,
		-0.670560, 0.739568, 0.058208,
		-0.672029, -0.638804, 0.374576,
		39.902683, 34.105820, 39.115444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052872, 34.954521, 39.439693>,  <40.373100, 34.552982, 38.853241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052872, 34.954521, 39.439693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002861, 34.559765, 39.480526>,  <39.972855, 34.322910, 39.505024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002861, 34.559765, 39.480526>,  <40.052872, 34.954521, 39.439693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002861, 34.559765, 39.480526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339054, 0.054195, 0.939205,
		-0.932421, 0.152041, 0.327832,
		-0.125031, -0.986887, 0.102083,
		39.965351, 34.263699, 39.511150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791946, 34.985962, 40.056095>,  <40.052872, 34.954521, 39.439693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791946, 34.985962, 40.056095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901230, 34.603241, 40.016319>,  <39.966801, 34.373608, 39.992455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901230, 34.603241, 40.016319>,  <39.791946, 34.985962, 40.056095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901230, 34.603241, 40.016319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237151, -0.033190, 0.970906,
		-0.932264, -0.288841, 0.217839,
		0.273208, -0.956802, -0.099440,
		39.983192, 34.316200, 39.986488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543362, 34.678947, 40.563179>,  <39.791946, 34.985962, 40.056095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543362, 34.678947, 40.563179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840164, 34.427727, 40.469383>,  <40.018246, 34.276997, 40.413105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840164, 34.427727, 40.469383>,  <39.543362, 34.678947, 40.563179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840164, 34.427727, 40.469383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323567, 0.029170, 0.945755,
		-0.587141, -0.777627, 0.224860,
		0.742004, -0.628049, -0.234488,
		40.062767, 34.239311, 40.399036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626820, 34.184719, 41.103127>,  <39.543362, 34.678947, 40.563179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626820, 34.184719, 41.103127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972801, 34.141270, 40.907143>,  <40.180389, 34.115200, 40.789555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972801, 34.141270, 40.907143>,  <39.626820, 34.184719, 41.103127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972801, 34.141270, 40.907143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490441, -0.024071, 0.871142,
		-0.106421, -0.993792, 0.032454,
		0.864952, -0.108625, -0.489958,
		40.232288, 34.108685, 40.760155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945995, 33.606911, 41.440151>,  <39.626820, 34.184719, 41.103127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945995, 33.606911, 41.440151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222668, 33.803596, 41.228569>,  <40.388672, 33.921608, 41.101620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222668, 33.803596, 41.228569>,  <39.945995, 33.606911, 41.440151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222668, 33.803596, 41.228569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579455, 0.059298, 0.812844,
		0.431056, -0.868733, -0.243914,
		0.691681, 0.491718, -0.528953,
		40.430172, 33.951111, 41.069881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523312, 33.298664, 41.454845>,  <39.945995, 33.606911, 41.440151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523312, 33.298664, 41.454845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629711, 33.674793, 41.369965>,  <40.693550, 33.900471, 41.319035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629711, 33.674793, 41.369965>,  <40.523312, 33.298664, 41.454845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629711, 33.674793, 41.369965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430750, 0.080986, 0.898830,
		0.862378, -0.330498, -0.383503,
		0.266003, 0.940326, -0.212202,
		40.709511, 33.956890, 41.306305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220791, 33.399303, 41.591808>,  <40.523312, 33.298664, 41.454845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220791, 33.399303, 41.591808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074787, 33.771690, 41.588665>,  <40.987186, 33.995125, 41.586781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074787, 33.771690, 41.588665>,  <41.220791, 33.399303, 41.591808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074787, 33.771690, 41.588665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512960, 0.208146, 0.832795,
		0.776944, 0.299946, -0.553526,
		-0.365007, 0.930972, -0.007857,
		40.965286, 34.050983, 41.586308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835739, 33.903843, 41.773991>,  <41.220791, 33.399303, 41.591808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835739, 33.903843, 41.773991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490948, 34.081612, 41.871544>,  <41.284073, 34.188274, 41.930077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490948, 34.081612, 41.871544>,  <41.835739, 33.903843, 41.773991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490948, 34.081612, 41.871544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437090, 0.407853, 0.801629,
		0.256792, 0.797587, -0.545814,
		-0.861980, 0.444422, 0.243883,
		41.232353, 34.214939, 41.944710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028332, 34.242455, 42.395069>,  <41.835739, 33.903843, 41.773991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028332, 34.242455, 42.395069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655102, 34.383480, 42.366589>,  <41.431164, 34.468098, 42.349499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655102, 34.383480, 42.366589>,  <42.028332, 34.242455, 42.395069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655102, 34.383480, 42.366589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103082, 0.451777, 0.886156,
		0.344597, 0.819509, -0.457884,
		-0.933074, 0.352566, -0.071205,
		41.375179, 34.489250, 42.345226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014778, 35.029228, 42.580570>,  <42.028332, 34.242455, 42.395069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014778, 35.029228, 42.580570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647610, 34.877724, 42.627842>,  <41.427311, 34.786823, 42.656204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647610, 34.877724, 42.627842>,  <42.014778, 35.029228, 42.580570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647610, 34.877724, 42.627842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013894, 0.266987, 0.963600,
		-0.396524, 0.886149, -0.239810,
		-0.917919, -0.378759, 0.118179,
		41.372234, 34.764095, 42.663296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598640, 35.578693, 42.792515>,  <42.014778, 35.029228, 42.580570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598640, 35.578693, 42.792515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433651, 35.242104, 42.932106>,  <41.334656, 35.040150, 43.015862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433651, 35.242104, 42.932106>,  <41.598640, 35.578693, 42.792515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433651, 35.242104, 42.932106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197561, 0.456600, 0.867459,
		-0.889287, 0.288863, -0.354580,
		-0.412478, -0.841472, 0.348981,
		41.309906, 34.989662, 43.036800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134296, 35.880585, 43.205513>,  <41.598640, 35.578693, 42.792515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134296, 35.880585, 43.205513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090382, 35.494854, 43.301857>,  <41.064034, 35.263416, 43.359665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090382, 35.494854, 43.301857>,  <41.134296, 35.880585, 43.205513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090382, 35.494854, 43.301857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024557, 0.239619, 0.970556,
		-0.993652, 0.112471, -0.002626,
		-0.109788, -0.964330, 0.240860,
		41.057446, 35.205555, 43.374115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609657, 35.840466, 43.715584>,  <41.134296, 35.880585, 43.205513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609657, 35.840466, 43.715584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837162, 35.514404, 43.759476>,  <40.973663, 35.318768, 43.785809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837162, 35.514404, 43.759476>,  <40.609657, 35.840466, 43.715584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837162, 35.514404, 43.759476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070097, 0.180958, 0.980990,
		-0.819510, -0.550257, 0.160062,
		0.568761, -0.815151, 0.109726,
		41.007790, 35.269859, 43.792393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442898, 35.204224, 44.211906>,  <40.609657, 35.840466, 43.715584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442898, 35.204224, 44.211906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842838, 35.207306, 44.205757>,  <41.082802, 35.209156, 44.202068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842838, 35.207306, 44.205757>,  <40.442898, 35.204224, 44.211906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842838, 35.207306, 44.205757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014234, 0.130305, 0.991372,
		0.009643, -0.991444, 0.130176,
		0.999852, 0.007707, -0.015369,
		41.142796, 35.209618, 44.201145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618069, 34.856316, 44.721420>,  <40.442898, 35.204224, 44.211906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618069, 34.856316, 44.721420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920303, 35.113911, 44.673473>,  <41.101643, 35.268467, 44.644707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920303, 35.113911, 44.673473>,  <40.618069, 34.856316, 44.721420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920303, 35.113911, 44.673473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105034, 0.299729, 0.948225,
		0.646577, -0.703873, 0.294111,
		0.755583, 0.643993, -0.119868,
		41.146976, 35.307110, 44.637512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235329, 34.755238, 45.250729>,  <40.618069, 34.856316, 44.721420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235329, 34.755238, 45.250729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214916, 35.132256, 45.118668>,  <41.202667, 35.358467, 45.039429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214916, 35.132256, 45.118668>,  <41.235329, 34.755238, 45.250729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214916, 35.132256, 45.118668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228337, 0.310819, 0.922634,
		0.972244, 0.122469, 0.199356,
		-0.051031, 0.942546, -0.330156,
		41.199608, 35.415020, 45.019619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718052, 35.130512, 45.584545>,  <41.235329, 34.755238, 45.250729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718052, 35.130512, 45.584545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446495, 35.398296, 45.463932>,  <41.283562, 35.558968, 45.391563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446495, 35.398296, 45.463932>,  <41.718052, 35.130512, 45.584545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446495, 35.398296, 45.463932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002249, 0.408774, 0.912633,
		0.734232, 0.620260, -0.276009,
		-0.678895, 0.669463, -0.301530,
		41.242828, 35.599136, 45.373474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977112, 35.807167, 45.650784>,  <41.718052, 35.130512, 45.584545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977112, 35.807167, 45.650784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578819, 35.843746, 45.655903>,  <41.339844, 35.865692, 45.658974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578819, 35.843746, 45.655903>,  <41.977112, 35.807167, 45.650784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578819, 35.843746, 45.655903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049096, 0.406950, 0.912130,
		0.078204, 0.908861, -0.409701,
		-0.995728, 0.091447, 0.012796,
		41.280102, 35.871181, 45.659740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853699, 36.460987, 45.937073>,  <41.977112, 35.807167, 45.650784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853699, 36.460987, 45.937073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477459, 36.325565, 45.947304>,  <41.251717, 36.244312, 45.953442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477459, 36.325565, 45.947304>,  <41.853699, 36.460987, 45.937073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477459, 36.325565, 45.947304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211376, 0.642893, 0.736212,
		-0.265689, 0.687075, -0.676267,
		-0.940601, -0.338550, 0.025578,
		41.195278, 36.223999, 45.954979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368496, 37.078106, 45.835987>,  <41.853699, 36.460987, 45.937073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368496, 37.078106, 45.835987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153996, 36.801525, 46.029613>,  <41.025295, 36.635574, 46.145790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153996, 36.801525, 46.029613>,  <41.368496, 37.078106, 45.835987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153996, 36.801525, 46.029613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258947, 0.680618, 0.685351,
		-0.803355, 0.242173, -0.544034,
		-0.536253, -0.691456, 0.484068,
		40.993118, 36.594090, 46.174835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693512, 37.386326, 45.989029>,  <41.368496, 37.078106, 45.835987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693512, 37.386326, 45.989029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756672, 37.081120, 46.239746>,  <40.794567, 36.897995, 46.390175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756672, 37.081120, 46.239746>,  <40.693512, 37.386326, 45.989029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756672, 37.081120, 46.239746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250819, 0.582945, 0.772829,
		-0.955069, -0.279240, -0.099334,
		0.157899, -0.763020, 0.626792,
		40.804043, 36.852215, 46.427784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218452, 37.562401, 46.509697>,  <40.693512, 37.386326, 45.989029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218452, 37.562401, 46.509697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432938, 37.286003, 46.703606>,  <40.561626, 37.120163, 46.819950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432938, 37.286003, 46.703606>,  <40.218452, 37.562401, 46.509697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432938, 37.286003, 46.703606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129225, 0.500345, 0.856128,
		-0.834134, -0.521710, 0.178997,
		0.536211, -0.690995, 0.484773,
		40.593800, 37.078705, 46.849037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829327, 37.397018, 46.991657>,  <40.218452, 37.562401, 46.509697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829327, 37.397018, 46.991657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192722, 37.302807, 47.129742>,  <40.410759, 37.246281, 47.212593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192722, 37.302807, 47.129742>,  <39.829327, 37.397018, 46.991657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192722, 37.302807, 47.129742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219935, 0.432941, 0.874180,
		-0.355353, -0.870108, 0.341521,
		0.908489, -0.235530, 0.345215,
		40.465271, 37.232147, 47.233307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715321, 36.988548, 47.598404>,  <39.829327, 37.397018, 46.991657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715321, 36.988548, 47.598404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087612, 37.132801, 47.622681>,  <40.310989, 37.219353, 47.637249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087612, 37.132801, 47.622681>,  <39.715321, 36.988548, 47.598404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087612, 37.132801, 47.622681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197882, 0.357065, 0.912879,
		0.307540, -0.861656, 0.403694,
		0.930732, 0.360630, 0.060695,
		40.366833, 37.240990, 47.640888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969543, 36.717503, 48.267677>,  <39.715321, 36.988548, 47.598404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969543, 36.717503, 48.267677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206676, 37.023724, 48.167694>,  <40.348957, 37.207455, 48.107704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206676, 37.023724, 48.167694>,  <39.969543, 36.717503, 48.267677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206676, 37.023724, 48.167694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108479, 0.383464, 0.917163,
		0.797987, -0.516608, 0.310376,
		0.592832, 0.765554, -0.249958,
		40.384525, 37.253391, 48.092709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422447, 36.693886, 48.841789>,  <39.969543, 36.717503, 48.267677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422447, 36.693886, 48.841789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510120, 37.053528, 48.690224>,  <40.562725, 37.269314, 48.599285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510120, 37.053528, 48.690224>,  <40.422447, 36.693886, 48.841789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510120, 37.053528, 48.690224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164935, 0.348627, 0.922635,
		0.961643, -0.264720, -0.071881,
		0.219180, 0.899101, -0.378916,
		40.575874, 37.323257, 48.576550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969944, 36.841244, 49.164639>,  <40.422447, 36.693886, 48.841789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969944, 36.841244, 49.164639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835434, 37.196629, 49.039711>,  <40.754726, 37.409859, 48.964752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835434, 37.196629, 49.039711>,  <40.969944, 36.841244, 49.164639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835434, 37.196629, 49.039711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021422, 0.324334, 0.945700,
		0.941519, 0.324709, -0.090034,
		-0.336279, 0.888466, -0.312323,
		40.734550, 37.463169, 48.946014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464569, 37.371407, 49.433784>,  <40.969944, 36.841244, 49.164639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464569, 37.371407, 49.433784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107182, 37.538658, 49.368198>,  <40.892750, 37.639008, 49.328846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107182, 37.538658, 49.368198>,  <41.464569, 37.371407, 49.433784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107182, 37.538658, 49.368198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018051, 0.398215, 0.917114,
		0.448765, 0.816452, -0.363340,
		-0.893468, 0.418127, -0.163967,
		40.839142, 37.664097, 49.319008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449348, 38.092178, 49.772385>,  <41.464569, 37.371407, 49.433784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449348, 38.092178, 49.772385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054478, 38.033794, 49.746521>,  <40.817554, 37.998764, 49.731003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054478, 38.033794, 49.746521>,  <41.449348, 38.092178, 49.772385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054478, 38.033794, 49.746521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120650, 0.416902, 0.900909,
		-0.104541, 0.897156, -0.429165,
		-0.987175, -0.145961, -0.064658,
		40.758324, 37.990005, 49.727123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197273, 38.762665, 49.893417>,  <41.449348, 38.092178, 49.772385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197273, 38.762665, 49.893417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928459, 38.478584, 49.977306>,  <40.767170, 38.308136, 50.027637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928459, 38.478584, 49.977306>,  <41.197273, 38.762665, 49.893417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928459, 38.478584, 49.977306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140821, 0.400605, 0.905365,
		-0.727002, 0.578908, -0.369233,
		-0.672040, -0.710198, 0.209718,
		40.726849, 38.265526, 50.040222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754341, 39.302116, 50.004684>,  <41.197273, 38.762665, 49.893417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754341, 39.302116, 50.004684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781101, 39.675972, 49.864990>,  <41.797157, 39.900288, 49.781174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781101, 39.675972, 49.864990>,  <41.754341, 39.302116, 50.004684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781101, 39.675972, 49.864990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090951, -0.342851, -0.934977,
		-0.993606, 0.094314, 0.062069,
		0.066901, 0.934643, -0.349237,
		41.801170, 39.956364, 49.760220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240551, 39.409290, 49.583755>,  <41.754341, 39.302116, 50.004684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240551, 39.409290, 49.583755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515411, 39.671474, 49.458408>,  <41.680328, 39.828785, 49.383202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515411, 39.671474, 49.458408>,  <41.240551, 39.409290, 49.583755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515411, 39.671474, 49.458408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269038, -0.171087, -0.947812,
		-0.674868, 0.735594, 0.058782,
		0.687148, 0.655462, -0.313364,
		41.721558, 39.868114, 49.364399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013100, 39.663258, 48.950314>,  <41.240551, 39.409290, 49.583755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013100, 39.663258, 48.950314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400032, 39.762150, 48.927864>,  <41.632191, 39.821487, 48.914394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400032, 39.762150, 48.927864>,  <41.013100, 39.663258, 48.950314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400032, 39.762150, 48.927864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045795, -0.047340, -0.997829,
		-0.249352, 0.967799, -0.034471,
		0.967330, 0.247232, -0.056125,
		41.690231, 39.836319, 48.911026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096615, 40.220860, 48.490334>,  <41.013100, 39.663258, 48.950314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096615, 40.220860, 48.490334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465214, 40.065876, 48.479568>,  <41.686375, 39.972885, 48.473110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465214, 40.065876, 48.479568>,  <41.096615, 40.220860, 48.490334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465214, 40.065876, 48.479568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002564, 0.075353, -0.997154,
		0.388379, 0.918804, 0.070431,
		0.921496, -0.387454, -0.026909,
		41.741661, 39.949638, 48.471497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345627, 40.362717, 47.808464>,  <41.096615, 40.220860, 48.490334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345627, 40.362717, 47.808464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639679, 40.115883, 47.920750>,  <41.816109, 39.967785, 47.988121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639679, 40.115883, 47.920750>,  <41.345627, 40.362717, 47.808464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639679, 40.115883, 47.920750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180769, -0.220658, -0.958453,
		0.653385, 0.755329, -0.050663,
		0.735127, -0.617080, 0.280715,
		41.860218, 39.930759, 48.004963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915291, 40.504982, 47.247093>,  <41.345627, 40.362717, 47.808464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915291, 40.504982, 47.247093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.984215, 40.174973, 47.462364>,  <42.025570, 39.976967, 47.591526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.984215, 40.174973, 47.462364>,  <41.915291, 40.504982, 47.247093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984215, 40.174973, 47.462364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548953, -0.373222, -0.747901,
		0.817900, 0.424304, 0.388594,
		0.172305, -0.825028, 0.538182,
		42.035908, 39.927464, 47.623817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657566, 40.358662, 47.317413>,  <41.915291, 40.504982, 47.247093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.657566, 40.358662, 47.317413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450146, 40.017712, 47.344418>,  <42.325695, 39.813141, 47.360619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450146, 40.017712, 47.344418>,  <42.657566, 40.358662, 47.317413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450146, 40.017712, 47.344418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473262, -0.351874, -0.807594,
		0.712129, -0.386829, 0.585863,
		-0.518550, -0.852378, 0.067508,
		42.294582, 39.761997, 47.364670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099712, 39.932114, 46.930195>,  <42.657566, 40.358662, 47.317413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099712, 39.932114, 46.930195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751488, 39.735386, 46.936302>,  <42.542553, 39.617348, 46.939968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751488, 39.735386, 46.936302>,  <43.099712, 39.932114, 46.930195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751488, 39.735386, 46.936302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250869, -0.470319, -0.846088,
		0.423306, -0.732741, 0.532825,
		-0.870561, -0.491823, 0.015267,
		42.490318, 39.587837, 46.940884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206551, 39.245720, 46.665718>,  <43.099712, 39.932114, 46.930195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206551, 39.245720, 46.665718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812527, 39.308525, 46.637432>,  <42.576111, 39.346207, 46.620461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812527, 39.308525, 46.637432>,  <43.206551, 39.245720, 46.665718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812527, 39.308525, 46.637432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004156, -0.388846, -0.921294,
		-0.172148, -0.907825, 0.382385,
		-0.985062, 0.157010, -0.070712,
		42.517010, 39.355629, 46.616219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984158, 38.605827, 46.290680>,  <43.206551, 39.245720, 46.665718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984158, 38.605827, 46.290680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652218, 38.827904, 46.268372>,  <42.453053, 38.961151, 46.254986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652218, 38.827904, 46.268372>,  <42.984158, 38.605827, 46.290680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652218, 38.827904, 46.268372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181006, -0.362400, -0.914277,
		-0.527813, -0.748617, 0.401231,
		-0.829850, 0.555193, -0.055775,
		42.403263, 38.994461, 46.251640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399376, 38.117714, 46.137283>,  <42.984158, 38.605827, 46.290680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399376, 38.117714, 46.137283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296150, 38.492046, 46.041267>,  <42.234215, 38.716644, 45.983658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296150, 38.492046, 46.041267>,  <42.399376, 38.117714, 46.137283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296150, 38.492046, 46.041267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208916, -0.296634, -0.931860,
		-0.943269, -0.190333, 0.272061,
		-0.258066, 0.935832, -0.240042,
		42.218731, 38.772797, 45.969254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680843, 38.125977, 45.829247>,  <42.399376, 38.117714, 46.137283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680843, 38.125977, 45.829247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876663, 38.452747, 45.707287>,  <41.994156, 38.648811, 45.634109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876663, 38.452747, 45.707287>,  <41.680843, 38.125977, 45.829247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876663, 38.452747, 45.707287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272410, -0.188885, -0.943459,
		-0.828332, 0.544929, 0.130071,
		0.489550, 0.816930, -0.304904,
		42.023529, 38.697826, 45.615814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252003, 38.480545, 45.279770>,  <41.680843, 38.125977, 45.829247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252003, 38.480545, 45.279770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633450, 38.592388, 45.235168>,  <41.862316, 38.659492, 45.208408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633450, 38.592388, 45.235168>,  <41.252003, 38.480545, 45.279770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633450, 38.592388, 45.235168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074737, -0.138914, -0.987480,
		-0.291595, 0.950012, -0.111574,
		0.953618, 0.279606, -0.111508,
		41.919537, 38.676270, 45.201717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289764, 38.725075, 44.560986>,  <41.252003, 38.480545, 45.279770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289764, 38.725075, 44.560986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676975, 38.689350, 44.654747>,  <41.909302, 38.667915, 44.711002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676975, 38.689350, 44.654747>,  <41.289764, 38.725075, 44.560986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676975, 38.689350, 44.654747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221959, -0.130360, -0.966302,
		0.116856, 0.987436, -0.106369,
		0.968028, -0.089309, 0.234404,
		41.967384, 38.662556, 44.725067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673389, 39.086266, 44.059048>,  <41.289764, 38.725075, 44.560986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673389, 39.086266, 44.059048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.938820, 38.830631, 44.214603>,  <42.098076, 38.677250, 44.307938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.938820, 38.830631, 44.214603>,  <41.673389, 39.086266, 44.059048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938820, 38.830631, 44.214603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040568, -0.488329, -0.871716,
		0.747011, 0.594224, -0.298115,
		0.663573, -0.639087, 0.388893,
		42.137894, 38.638905, 44.331272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196701, 39.062195, 43.562183>,  <41.673389, 39.086266, 44.059048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196701, 39.062195, 43.562183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237263, 38.717453, 43.760948>,  <42.261600, 38.510609, 43.880207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237263, 38.717453, 43.760948>,  <42.196701, 39.062195, 43.562183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237263, 38.717453, 43.760948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088249, -0.489723, -0.867401,
		0.990923, 0.131812, 0.026397,
		0.101406, -0.861857, 0.496910,
		42.267685, 38.458897, 43.910023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.751431, 38.715508, 43.206093>,  <42.196701, 39.062195, 43.562183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.751431, 38.715508, 43.206093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575886, 38.421417, 43.412720>,  <42.470558, 38.244965, 43.536697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575886, 38.421417, 43.412720>,  <42.751431, 38.715508, 43.206093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575886, 38.421417, 43.412720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176599, -0.634252, -0.752687,
		0.881028, -0.239103, 0.408191,
		-0.438866, -0.735224, 0.516568,
		42.444225, 38.200851, 43.567692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229218, 38.161022, 43.192863>,  <42.751431, 38.715508, 43.206093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229218, 38.161022, 43.192863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869217, 38.002060, 43.264500>,  <42.653217, 37.906685, 43.307480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869217, 38.002060, 43.264500>,  <43.229218, 38.161022, 43.192863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869217, 38.002060, 43.264500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191582, -0.729681, -0.656401,
		0.391532, -0.556451, 0.732848,
		-0.900000, -0.397402, 0.179087,
		42.599216, 37.882839, 43.318226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292557, 37.524143, 43.214985>,  <43.229218, 38.161022, 43.192863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292557, 37.524143, 43.214985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898335, 37.530193, 43.147514>,  <42.661800, 37.533825, 43.107033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898335, 37.530193, 43.147514>,  <43.292557, 37.524143, 43.214985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.898335, 37.530193, 43.147514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120901, -0.634627, -0.763303,
		-0.118595, -0.772671, 0.623631,
		-0.985555, 0.015126, -0.168680,
		42.602669, 37.534733, 43.096909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022564, 36.856293, 43.237000>,  <43.292557, 37.524143, 43.214985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022564, 36.856293, 43.237000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747108, 37.049992, 43.021118>,  <42.581833, 37.166210, 42.891590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747108, 37.049992, 43.021118>,  <43.022564, 36.856293, 43.237000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747108, 37.049992, 43.021118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019730, -0.731523, -0.681532,
		-0.724827, -0.479984, 0.494208,
		-0.688648, 0.484242, -0.539697,
		42.540516, 37.195267, 42.859207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792721, 36.260010, 42.957329>,  <43.022564, 36.856293, 43.237000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792721, 36.260010, 42.957329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620205, 36.565483, 42.765171>,  <42.516693, 36.748768, 42.649876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620205, 36.565483, 42.765171>,  <42.792721, 36.260010, 42.957329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620205, 36.565483, 42.765171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229775, -0.607883, -0.760054,
		-0.872463, -0.217422, 0.437649,
		-0.431292, 0.763680, -0.480397,
		42.490818, 36.794586, 42.621052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191696, 35.995724, 42.572868>,  <42.792721, 36.260010, 42.957329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191696, 35.995724, 42.572868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299721, 36.323711, 42.370987>,  <42.364536, 36.520504, 42.249859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299721, 36.323711, 42.370987>,  <42.191696, 35.995724, 42.572868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299721, 36.323711, 42.370987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091769, -0.499870, -0.861225,
		-0.958461, 0.278896, -0.059746,
		0.270057, 0.819968, -0.504700,
		42.380737, 36.569702, 42.219578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682270, 36.115601, 41.973076>,  <42.191696, 35.995724, 42.572868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682270, 36.115601, 41.973076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995941, 36.346626, 41.882317>,  <42.184143, 36.485241, 41.827862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995941, 36.346626, 41.882317>,  <41.682270, 36.115601, 41.973076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995941, 36.346626, 41.882317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059074, -0.433470, -0.899229,
		-0.617714, 0.691755, -0.374038,
		0.784181, 0.577563, -0.226896,
		42.231194, 36.519894, 41.814247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461319, 36.536350, 41.456871>,  <41.682270, 36.115601, 41.973076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461319, 36.536350, 41.456871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859158, 36.494984, 41.460575>,  <42.097862, 36.470165, 41.462795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859158, 36.494984, 41.460575>,  <41.461319, 36.536350, 41.456871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859158, 36.494984, 41.460575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009179, -0.176382, -0.984279,
		0.103425, 0.978874, -0.176378,
		0.994595, -0.103418, 0.009257,
		42.157536, 36.463959, 41.463352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650677, 37.061966, 41.016811>,  <41.461319, 36.536350, 41.456871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650677, 37.061966, 41.016811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950783, 36.798626, 41.041080>,  <42.130848, 36.640621, 41.055641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950783, 36.798626, 41.041080>,  <41.650677, 37.061966, 41.016811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950783, 36.798626, 41.041080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099022, -0.202636, -0.974235,
		0.653679, 0.724927, -0.217222,
		0.750265, -0.658347, 0.060675,
		42.175861, 36.601124, 41.059284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795181, 37.174953, 40.327446>,  <41.650677, 37.061966, 41.016811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795181, 37.174953, 40.327446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946564, 36.827148, 40.454395>,  <42.037392, 36.618465, 40.530563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946564, 36.827148, 40.454395>,  <41.795181, 37.174953, 40.327446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946564, 36.827148, 40.454395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044928, -0.325213, -0.944573,
		0.924529, 0.371737, -0.084013,
		0.378455, -0.869510, 0.317370,
		42.060101, 36.566296, 40.549606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342693, 37.007687, 39.834251>,  <41.795181, 37.174953, 40.327446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342693, 37.007687, 39.834251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218395, 36.682224, 40.030781>,  <42.143814, 36.486946, 40.148697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218395, 36.682224, 40.030781>,  <42.342693, 37.007687, 39.834251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218395, 36.682224, 40.030781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092393, -0.540320, -0.836372,
		0.945991, -0.214505, 0.243079,
		-0.310747, -0.813660, 0.491319,
		42.125172, 36.438126, 40.178177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.863201, 36.460339, 39.744381>,  <42.342693, 37.007687, 39.834251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.863201, 36.460339, 39.744381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530079, 36.257076, 39.832211>,  <42.330204, 36.135120, 39.884907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530079, 36.257076, 39.832211>,  <42.863201, 36.460339, 39.744381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530079, 36.257076, 39.832211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147100, -0.585546, -0.797181,
		0.533659, -0.631600, 0.562397,
		-0.832809, -0.508151, 0.219573,
		42.280235, 36.104630, 39.898083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997791, 35.741421, 39.516613>,  <42.863201, 36.460339, 39.744381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997791, 35.741421, 39.516613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.602783, 35.753555, 39.578423>,  <42.365776, 35.760838, 39.615509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.602783, 35.753555, 39.578423>,  <42.997791, 35.741421, 39.516613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.602783, 35.753555, 39.578423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152151, -0.436833, -0.886582,
		0.040609, -0.899031, 0.435998,
		-0.987523, 0.030334, 0.154528,
		42.306526, 35.762657, 39.624783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.791058, 35.038288, 39.424301>,  <42.997791, 35.741421, 39.516613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.791058, 35.038288, 39.424301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475510, 35.278473, 39.371944>,  <42.286182, 35.422585, 39.340530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475510, 35.278473, 39.371944>,  <42.791058, 35.038288, 39.424301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475510, 35.278473, 39.371944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209204, -0.462639, -0.861510,
		-0.577856, -0.652237, 0.490580,
		-0.788870, 0.600460, -0.130888,
		42.238850, 35.458611, 39.332680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213581, 34.602764, 39.130028>,  <42.791058, 35.038288, 39.424301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213581, 34.602764, 39.130028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088741, 34.968517, 39.026878>,  <42.013840, 35.187969, 38.964989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088741, 34.968517, 39.026878>,  <42.213581, 34.602764, 39.130028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088741, 34.968517, 39.026878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248275, -0.340498, -0.906874,
		-0.917036, -0.219010, 0.333287,
		-0.312098, 0.914383, -0.257874,
		41.995113, 35.242832, 38.949516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618969, 34.381920, 38.752769>,  <42.213581, 34.602764, 39.130028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618969, 34.381920, 38.752769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739170, 34.743050, 38.629738>,  <41.811291, 34.959728, 38.555920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739170, 34.743050, 38.629738>,  <41.618969, 34.381920, 38.752769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739170, 34.743050, 38.629738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192764, -0.258341, -0.946626,
		-0.934099, 0.343752, 0.096401,
		0.300500, 0.902826, -0.307580,
		41.829319, 35.013897, 38.537464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255444, 34.541515, 38.126530>,  <41.618969, 34.381920, 38.752769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255444, 34.541515, 38.126530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539501, 34.823135, 38.125603>,  <41.709934, 34.992107, 38.125046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539501, 34.823135, 38.125603>,  <41.255444, 34.541515, 38.126530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539501, 34.823135, 38.125603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095460, 0.093019, -0.991077,
		-0.697556, 0.704028, 0.133266,
		0.710143, 0.704054, -0.002321,
		41.752544, 35.034351, 38.124905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972099, 35.066063, 37.703117>,  <41.255444, 34.541515, 38.126530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972099, 35.066063, 37.703117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370697, 35.092537, 37.682655>,  <41.609856, 35.108421, 37.670376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370697, 35.092537, 37.682655>,  <40.972099, 35.066063, 37.703117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370697, 35.092537, 37.682655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059487, 0.130707, -0.989635,
		-0.058815, 0.989209, 0.134186,
		0.996495, 0.066188, -0.051157,
		41.669647, 35.112392, 37.667309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100693, 35.605122, 37.297134>,  <40.972099, 35.066063, 37.703117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100693, 35.605122, 37.297134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428185, 35.376247, 37.277996>,  <41.624680, 35.238922, 37.266514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428185, 35.376247, 37.277996>,  <41.100693, 35.605122, 37.297134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428185, 35.376247, 37.277996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066295, -0.011433, -0.997735,
		0.570346, 0.820042, -0.047294,
		0.818725, -0.572189, -0.047844,
		41.673801, 35.204590, 37.263641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332939, 35.764721, 36.759518>,  <41.100693, 35.605122, 37.297134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332939, 35.764721, 36.759518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524860, 35.418602, 36.817551>,  <41.640011, 35.210930, 36.852371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524860, 35.418602, 36.817551>,  <41.332939, 35.764721, 36.759518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524860, 35.418602, 36.817551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043156, -0.141881, -0.988943,
		0.876315, 0.480757, -0.030732,
		0.479801, -0.865299, 0.145080,
		41.668800, 35.159012, 36.861076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866989, 35.758362, 36.398342>,  <41.332939, 35.764721, 36.759518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866989, 35.758362, 36.398342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799267, 35.367161, 36.447075>,  <41.758633, 35.132439, 36.476315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799267, 35.367161, 36.447075>,  <41.866989, 35.758362, 36.398342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799267, 35.367161, 36.447075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061832, -0.112837, -0.991688,
		0.983623, -0.175428, -0.041369,
		-0.169302, -0.978004, 0.121836,
		41.748478, 35.073761, 36.483627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361591, 35.438702, 36.030842>,  <41.866989, 35.758362, 36.398342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361591, 35.438702, 36.030842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.078239, 35.160728, 36.080265>,  <41.908226, 34.993946, 36.109917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.078239, 35.160728, 36.080265>,  <42.361591, 35.438702, 36.030842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078239, 35.160728, 36.080265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147286, -0.316732, -0.937010,
		0.690290, -0.645564, 0.326721,
		-0.708383, -0.694930, 0.123555,
		41.865723, 34.952248, 36.117332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668713, 34.772079, 35.772636>,  <42.361591, 35.438702, 36.030842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668713, 34.772079, 35.772636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270737, 34.748352, 35.740219>,  <42.031952, 34.734116, 35.720768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270737, 34.748352, 35.740219>,  <42.668713, 34.772079, 35.772636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270737, 34.748352, 35.740219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089287, -0.153010, -0.984183,
		0.045984, -0.986443, 0.157533,
		-0.994944, -0.059322, -0.081040,
		41.972252, 34.730556, 35.715908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651733, 34.434654, 35.073257>,  <42.668713, 34.772079, 35.772636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651733, 34.434654, 35.073257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259968, 34.421928, 35.153000>,  <42.024910, 34.414291, 35.200844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259968, 34.421928, 35.153000>,  <42.651733, 34.434654, 35.073257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259968, 34.421928, 35.153000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192015, -0.158074, -0.968578,
		0.062328, -0.986915, 0.148710,
		-0.979411, -0.031815, 0.199355,
		41.966145, 34.412384, 35.212807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291695, 33.740398, 34.865372>,  <42.651733, 34.434654, 35.073257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291695, 33.740398, 34.865372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074608, 34.075653, 34.843494>,  <41.944355, 34.276806, 34.830368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074608, 34.075653, 34.843494>,  <42.291695, 33.740398, 34.865372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074608, 34.075653, 34.843494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091597, -0.123789, -0.988072,
		-0.834905, -0.531235, 0.143953,
		-0.542718, 0.838132, -0.054693,
		41.911793, 34.327091, 34.827087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685417, 33.507015, 34.663448>,  <42.291695, 33.740398, 34.865372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685417, 33.507015, 34.663448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737583, 33.881870, 34.533981>,  <41.768883, 34.106785, 34.456303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737583, 33.881870, 34.533981>,  <41.685417, 33.507015, 34.663448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737583, 33.881870, 34.533981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247641, -0.285315, -0.925888,
		-0.960035, 0.200900, 0.194866,
		0.130413, 0.937142, -0.323664,
		41.776707, 34.163013, 34.436882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090206, 33.634216, 34.272717>,  <41.685417, 33.507015, 34.663448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090206, 33.634216, 34.272717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432610, 33.813446, 34.169586>,  <41.638054, 33.920982, 34.107708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432610, 33.813446, 34.169586>,  <41.090206, 33.634216, 34.272717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432610, 33.813446, 34.169586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141525, -0.276559, -0.950519,
		-0.497206, 0.850144, -0.173324,
		0.856012, 0.448073, -0.257824,
		41.689415, 33.947868, 34.092239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942757, 34.051807, 33.596722>,  <41.090206, 33.634216, 34.272717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942757, 34.051807, 33.596722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335827, 33.980049, 33.615356>,  <41.571667, 33.936993, 33.626537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335827, 33.980049, 33.615356>,  <40.942757, 34.051807, 33.596722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335827, 33.980049, 33.615356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009397, -0.202823, -0.979170,
		0.185109, 0.962642, -0.197623,
		0.982673, -0.179396, 0.046590,
		41.630630, 33.926231, 33.629333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063236, 34.465546, 33.032948>,  <40.942757, 34.051807, 33.596722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063236, 34.465546, 33.032948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.291843, 34.147156, 33.112747>,  <41.429008, 33.956123, 33.160625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.291843, 34.147156, 33.112747>,  <41.063236, 34.465546, 33.032948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291843, 34.147156, 33.112747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371909, -0.467960, -0.801684,
		0.731474, 0.383980, -0.563475,
		0.571514, -0.795973, 0.199495,
		41.463299, 33.908363, 33.172596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476791, 34.273731, 32.453796>,  <41.063236, 34.465546, 33.032948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476791, 34.273731, 32.453796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426399, 33.946033, 32.677570>,  <41.396164, 33.749416, 32.811836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426399, 33.946033, 32.677570>,  <41.476791, 34.273731, 32.453796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426399, 33.946033, 32.677570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407909, -0.471271, -0.781994,
		0.904289, -0.326716, -0.274805,
		-0.125983, -0.819244, 0.559436,
		41.388603, 33.700260, 32.845402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837734, 33.753803, 32.081383>,  <41.476791, 34.273731, 32.453796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837734, 33.753803, 32.081383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535202, 33.617912, 32.305004>,  <41.353683, 33.536377, 32.439178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535202, 33.617912, 32.305004>,  <41.837734, 33.753803, 32.081383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535202, 33.617912, 32.305004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459165, -0.333028, -0.823565,
		0.465969, -0.879590, 0.095890,
		-0.756333, -0.339726, 0.559058,
		41.308300, 33.515995, 32.472721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760880, 33.105778, 31.903160>,  <41.837734, 33.753803, 32.081383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760880, 33.105778, 31.903160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409634, 33.197578, 32.071083>,  <41.198887, 33.252659, 32.171837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409634, 33.197578, 32.071083>,  <41.760880, 33.105778, 31.903160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409634, 33.197578, 32.071083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464463, -0.619482, -0.632864,
		0.114820, -0.750714, 0.650573,
		-0.878118, 0.229502, 0.419807,
		41.146198, 33.266430, 32.197025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531620, 33.187668, 31.975819>,  <41.760880, 33.105778, 31.903160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531620, 33.187668, 31.975819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902649, 33.324688, 31.916138>,  <43.125267, 33.406902, 31.880329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902649, 33.324688, 31.916138>,  <42.531620, 33.187668, 31.975819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902649, 33.324688, 31.916138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368503, 0.904698, -0.213839,
		0.061733, 0.253334, 0.965407,
		0.927575, 0.342554, -0.149204,
		43.180920, 33.427456, 31.871376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687466, 33.802734, 32.448212>,  <42.531620, 33.187668, 31.975819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.687466, 33.802734, 32.448212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.931442, 33.813332, 32.131409>,  <43.077827, 33.819691, 31.941328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.931442, 33.813332, 32.131409>,  <42.687466, 33.802734, 32.448212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.931442, 33.813332, 32.131409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391120, 0.879289, -0.271801,
		0.689201, 0.475551, 0.546675,
		0.609941, 0.026490, -0.792004,
		43.114426, 33.821278, 31.893806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786743, 34.482174, 32.325035>,  <42.687466, 33.802734, 32.448212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786743, 34.482174, 32.325035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.919636, 34.344925, 31.973606>,  <42.999371, 34.262577, 31.762749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.919636, 34.344925, 31.973606>,  <42.786743, 34.482174, 32.325035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919636, 34.344925, 31.973606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186361, 0.889241, -0.417754,
		0.924605, 0.302522, 0.231487,
		0.332228, -0.343118, -0.878576,
		43.019302, 34.241989, 31.710033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221233, 35.031570, 32.125271>,  <42.786743, 34.482174, 32.325035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221233, 35.031570, 32.125271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117535, 34.827679, 31.797134>,  <43.055317, 34.705345, 31.600252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117535, 34.827679, 31.797134>,  <43.221233, 35.031570, 32.125271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117535, 34.827679, 31.797134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258438, 0.855023, -0.449606,
		0.930592, 0.095450, -0.353395,
		-0.259246, -0.509731, -0.820345,
		43.039761, 34.674759, 31.551031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522003, 35.432583, 31.460796>,  <43.221233, 35.031570, 32.125271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522003, 35.432583, 31.460796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244438, 35.178444, 31.325258>,  <43.077900, 35.025959, 31.243935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244438, 35.178444, 31.325258>,  <43.522003, 35.432583, 31.460796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244438, 35.178444, 31.325258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324863, 0.696205, -0.640126,
		0.642607, -0.334116, -0.689509,
		-0.693916, -0.635346, -0.338844,
		43.036263, 34.987839, 31.223604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636639, 35.500774, 30.772635>,  <43.522003, 35.432583, 31.460796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636639, 35.500774, 30.772635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278477, 35.336105, 30.840494>,  <43.063580, 35.237305, 30.881210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278477, 35.336105, 30.840494>,  <43.636639, 35.500774, 30.772635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278477, 35.336105, 30.840494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441593, 0.772269, -0.456722,
		0.057003, -0.483867, -0.873283,
		-0.895403, -0.411671, 0.169651,
		43.009857, 35.212605, 30.891390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.263489, 35.449249, 30.175064>,  <43.636639, 35.500774, 30.772635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.263489, 35.449249, 30.175064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995308, 35.462234, 30.471560>,  <42.834400, 35.470024, 30.649458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995308, 35.462234, 30.471560>,  <43.263489, 35.449249, 30.175064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995308, 35.462234, 30.471560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400095, 0.825523, -0.398041,
		-0.624831, -0.563435, -0.540488,
		-0.670455, 0.032461, 0.741240,
		42.794170, 35.471973, 30.693932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.866161, 35.880402, 29.900414>,  <43.263489, 35.449249, 30.175064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.866161, 35.880402, 29.900414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720654, 35.870586, 30.272879>,  <42.633347, 35.864697, 30.496359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720654, 35.870586, 30.272879>,  <42.866161, 35.880402, 29.900414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720654, 35.870586, 30.272879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506053, 0.844471, -0.175442,
		-0.782036, -0.535039, -0.319613,
		-0.363772, -0.024539, 0.931165,
		42.611523, 35.863224, 30.552229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213120, 36.243168, 29.808342>,  <42.866161, 35.880402, 29.900414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213120, 36.243168, 29.808342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280357, 36.263214, 30.202141>,  <42.320702, 36.275242, 30.438419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280357, 36.263214, 30.202141>,  <42.213120, 36.243168, 29.808342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280357, 36.263214, 30.202141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497049, 0.866765, 0.040744,
		-0.851285, -0.496192, 0.170608,
		0.168094, 0.050116, 0.984496,
		42.330784, 36.278248, 30.497490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530964, 36.468540, 30.096354>,  <42.213120, 36.243168, 29.808342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530964, 36.468540, 30.096354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809517, 36.551125, 30.371288>,  <41.976646, 36.600674, 30.536249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809517, 36.551125, 30.371288>,  <41.530964, 36.468540, 30.096354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809517, 36.551125, 30.371288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487248, 0.839181, 0.241589,
		-0.526922, -0.503141, 0.684984,
		0.696379, 0.206458, 0.687337,
		42.018429, 36.613064, 30.577490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134571, 36.583672, 30.686792>,  <41.530964, 36.468540, 30.096354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134571, 36.583672, 30.686792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478199, 36.782993, 30.733599>,  <41.684376, 36.902588, 30.761683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478199, 36.782993, 30.733599>,  <41.134571, 36.583672, 30.686792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478199, 36.782993, 30.733599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511721, 0.841470, 0.173406,
		-0.012057, -0.208848, 0.977874,
		0.859067, 0.498308, 0.117017,
		41.735920, 36.932487, 30.768703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980865, 36.985340, 31.219252>,  <41.134571, 36.583672, 30.686792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980865, 36.985340, 31.219252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.291462, 37.171562, 31.049395>,  <41.477818, 37.283295, 30.947479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.291462, 37.171562, 31.049395>,  <40.980865, 36.985340, 31.219252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291462, 37.171562, 31.049395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400443, 0.884896, 0.237916,
		0.486529, -0.014693, 0.873541,
		0.776488, 0.465557, -0.424644,
		41.524410, 37.311230, 30.922001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941936, 37.580090, 31.519854>,  <40.980865, 36.985340, 31.219252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941936, 37.580090, 31.519854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195675, 37.682697, 31.228153>,  <41.347916, 37.744263, 31.053133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195675, 37.682697, 31.228153>,  <40.941936, 37.580090, 31.519854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195675, 37.682697, 31.228153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253271, 0.960237, 0.117466,
		0.730386, 0.110185, 0.674088,
		0.634342, 0.256522, -0.729251,
		41.385979, 37.759655, 31.009378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451958, 38.120461, 31.746874>,  <40.941936, 37.580090, 31.519854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451958, 38.120461, 31.746874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422005, 38.123402, 31.348007>,  <41.404034, 38.125168, 31.108688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422005, 38.123402, 31.348007>,  <41.451958, 38.120461, 31.746874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422005, 38.123402, 31.348007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258317, 0.965696, 0.026520,
		0.963154, 0.259571, -0.070413,
		-0.074882, 0.007354, -0.997165,
		41.399540, 38.125607, 31.048857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638329, 38.778633, 31.589468>,  <41.451958, 38.120461, 31.746874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638329, 38.778633, 31.589468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491726, 38.657757, 31.237478>,  <41.403763, 38.585232, 31.026285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491726, 38.657757, 31.237478>,  <41.638329, 38.778633, 31.589468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491726, 38.657757, 31.237478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428186, 0.894461, -0.128827,
		0.826032, 0.329575, -0.457222,
		-0.366510, -0.302191, -0.879973,
		41.381775, 38.567101, 30.973486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752552, 39.302685, 31.071455>,  <41.638329, 38.778633, 31.589468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752552, 39.302685, 31.071455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443771, 39.075871, 30.956518>,  <41.258503, 38.939781, 30.887556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443771, 39.075871, 30.956518>,  <41.752552, 39.302685, 31.071455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443771, 39.075871, 30.956518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605241, 0.793815, 0.059505,
		0.194354, 0.219846, -0.955978,
		-0.771952, -0.567032, -0.287341,
		41.212185, 38.905762, 30.870316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508133, 39.688660, 30.460260>,  <41.752552, 39.302685, 31.071455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508133, 39.688660, 30.460260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206268, 39.454327, 30.578438>,  <41.025150, 39.313728, 30.649343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206268, 39.454327, 30.578438>,  <41.508133, 39.688660, 30.460260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206268, 39.454327, 30.578438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619665, 0.784386, -0.027474,
		-0.215645, -0.203808, -0.954965,
		-0.754661, -0.585834, 0.295442,
		40.979870, 39.278576, 30.667070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880440, 39.957600, 30.072109>,  <41.508133, 39.688660, 30.460260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880440, 39.957600, 30.072109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706593, 39.757717, 30.371817>,  <40.602283, 39.637787, 30.551641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706593, 39.757717, 30.371817>,  <40.880440, 39.957600, 30.072109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706593, 39.757717, 30.371817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773647, 0.633060, -0.026548,
		-0.461065, -0.591207, -0.661735,
		-0.434614, -0.499709, 0.749268,
		40.576210, 39.607803, 30.596598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151718, 39.927990, 29.924240>,  <40.880440, 39.957600, 30.072109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151718, 39.927990, 29.924240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209396, 39.901112, 30.319145>,  <40.244003, 39.884983, 30.556089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209396, 39.901112, 30.319145>,  <40.151718, 39.927990, 29.924240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209396, 39.901112, 30.319145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643458, 0.751596, 0.145140,
		-0.751777, -0.656192, 0.065140,
		0.144199, -0.067198, 0.987264,
		40.252655, 39.880951, 30.615324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385193, 39.900169, 30.115540>,  <40.151718, 39.927990, 29.924240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385193, 39.900169, 30.115540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627407, 40.010632, 30.414085>,  <39.772736, 40.076908, 30.593214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627407, 40.010632, 30.414085>,  <39.385193, 39.900169, 30.115540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627407, 40.010632, 30.414085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544638, 0.827628, 0.135652,
		-0.580252, -0.488642, 0.651565,
		0.605538, 0.276155, 0.746366,
		39.809067, 40.093479, 30.637995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959679, 40.310791, 30.580292>,  <39.385193, 39.900169, 30.115540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959679, 40.310791, 30.580292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337589, 40.424572, 30.645380>,  <39.564335, 40.492840, 30.684433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337589, 40.424572, 30.645380>,  <38.959679, 40.310791, 30.580292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337589, 40.424572, 30.645380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288531, 0.957469, 0.001497,
		-0.155374, -0.048364, 0.986671,
		0.944780, 0.284453, 0.162720,
		39.621025, 40.509907, 30.694197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887386, 40.736855, 31.077980>,  <38.959679, 40.310791, 30.580292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887386, 40.736855, 31.077980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236340, 40.816204, 30.899281>,  <39.445713, 40.863815, 30.792061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236340, 40.816204, 30.899281>,  <38.887386, 40.736855, 31.077980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236340, 40.816204, 30.899281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295024, 0.942397, -0.157635,
		0.389744, 0.269321, 0.880662,
		0.872388, 0.198379, -0.446750,
		39.498055, 40.875717, 30.765255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263203, 41.329819, 31.392029>,  <38.887386, 40.736855, 31.077980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263203, 41.329819, 31.392029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372894, 41.302151, 31.008358>,  <39.438709, 41.285549, 30.778156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372894, 41.302151, 31.008358>,  <39.263203, 41.329819, 31.392029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372894, 41.302151, 31.008358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371865, 0.912195, -0.172095,
		0.886858, 0.403876, 0.224426,
		0.274225, -0.069167, -0.959175,
		39.455162, 41.281399, 30.720606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397945, 41.980484, 30.935966>,  <39.263203, 41.329819, 31.392029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397945, 41.980484, 30.935966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348640, 41.728142, 30.629549>,  <39.319057, 41.576736, 30.445698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348640, 41.728142, 30.629549>,  <39.397945, 41.980484, 30.935966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348640, 41.728142, 30.629549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521841, 0.697793, -0.490680,
		0.844090, 0.339269, -0.415222,
		-0.123266, -0.630857, -0.766045,
		39.311661, 41.538883, 30.399736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182411, 42.553749, 31.414425>,  <39.397945, 41.980484, 30.935966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182411, 42.553749, 31.414425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538486, 42.668488, 31.272842>,  <39.752132, 42.737331, 31.187893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538486, 42.668488, 31.272842>,  <39.182411, 42.553749, 31.414425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538486, 42.668488, 31.272842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455126, -0.524749, 0.719373,
		0.020611, -0.801472, -0.597676,
		0.890188, 0.286845, -0.353955,
		39.805542, 42.754539, 31.166656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777172, 42.215137, 31.609261>,  <39.182411, 42.553749, 31.414425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777172, 42.215137, 31.609261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075962, 42.412003, 31.430464>,  <40.255238, 42.530121, 31.323187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075962, 42.412003, 31.430464>,  <39.777172, 42.215137, 31.609261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075962, 42.412003, 31.430464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662549, -0.606907, 0.438968,
		-0.055239, -0.624053, -0.779427,
		0.746979, 0.492160, -0.446990,
		40.300056, 42.559650, 31.296366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218327, 41.795345, 31.318949>,  <39.777172, 42.215137, 31.609261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218327, 41.795345, 31.318949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471054, 42.087467, 31.422842>,  <40.622692, 42.262741, 31.485178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471054, 42.087467, 31.422842>,  <40.218327, 41.795345, 31.318949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471054, 42.087467, 31.422842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702638, -0.681112, 0.205879,
		0.327260, 0.052419, -0.943479,
		0.631823, 0.730300, 0.259733,
		40.660603, 42.306557, 31.500761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796280, 41.596397, 30.993595>,  <40.218327, 41.795345, 31.318949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796280, 41.596397, 30.993595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890869, 41.831543, 31.303045>,  <40.947624, 41.972630, 31.488714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890869, 41.831543, 31.303045>,  <40.796280, 41.596397, 30.993595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890869, 41.831543, 31.303045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782540, -0.587183, 0.206995,
		0.575944, 0.556443, -0.598881,
		0.236472, 0.587867, 0.773624,
		40.961811, 42.007904, 31.535133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567585, 41.860943, 31.078430>,  <40.796280, 41.596397, 30.993595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567585, 41.860943, 31.078430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385643, 41.845993, 31.434341>,  <41.276478, 41.837025, 31.647888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385643, 41.845993, 31.434341>,  <41.567585, 41.860943, 31.078430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385643, 41.845993, 31.434341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812328, -0.426908, 0.397331,
		0.365004, 0.903522, 0.224543,
		-0.454857, -0.037375, 0.889780,
		41.249187, 41.834782, 31.701275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074841, 42.078712, 31.669746>,  <41.567585, 41.860943, 31.078430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074841, 42.078712, 31.669746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782925, 41.869858, 31.846279>,  <41.607777, 41.744545, 31.952200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782925, 41.869858, 31.846279>,  <42.074841, 42.078712, 31.669746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782925, 41.869858, 31.846279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682848, -0.525039, 0.507989,
		-0.033523, 0.672090, 0.739711,
		-0.729791, -0.522139, 0.441334,
		41.563988, 41.713215, 31.978680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211731, 42.098995, 32.439564>,  <42.074841, 42.078712, 31.669746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211731, 42.098995, 32.439564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029110, 41.775536, 32.291161>,  <41.919537, 41.581459, 32.202118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029110, 41.775536, 32.291161>,  <42.211731, 42.098995, 32.439564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029110, 41.775536, 32.291161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597442, -0.587651, 0.545645,
		-0.659257, 0.027462, 0.751416,
		-0.456556, -0.808648, -0.371006,
		41.892143, 41.532940, 32.179859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920219, 41.702297, 33.031429>,  <42.211731, 42.098995, 32.439564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920219, 41.702297, 33.031429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983391, 41.465553, 32.715263>,  <42.021294, 41.323505, 32.525562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983391, 41.465553, 32.715263>,  <41.920219, 41.702297, 33.031429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983391, 41.465553, 32.715263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412401, -0.687775, 0.597403,
		-0.897210, -0.420313, 0.135469,
		0.157924, -0.591863, -0.790416,
		42.030769, 41.287994, 32.478138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800690, 41.041191, 33.321606>,  <41.920219, 41.702297, 33.031429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800690, 41.041191, 33.321606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978428, 40.951992, 32.974545>,  <42.085072, 40.898472, 32.766308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978428, 40.951992, 32.974545>,  <41.800690, 41.041191, 33.321606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978428, 40.951992, 32.974545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456422, -0.777044, 0.433452,
		-0.770860, -0.588624, -0.243509,
		0.444358, -0.222988, -0.867653,
		42.111732, 40.885094, 32.714249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792522, 40.252056, 33.184036>,  <41.800690, 41.041191, 33.321606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792522, 40.252056, 33.184036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098423, 40.394676, 32.969360>,  <42.281963, 40.480247, 32.840557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098423, 40.394676, 32.969360>,  <41.792522, 40.252056, 33.184036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098423, 40.394676, 32.969360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562572, -0.775558, 0.286395,
		-0.314117, -0.520945, -0.793692,
		0.764751, 0.356547, -0.536685,
		42.327847, 40.501640, 32.808353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940079, 39.725296, 32.714096>,  <41.792522, 40.252056, 33.184036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940079, 39.725296, 32.714096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282341, 39.931900, 32.701008>,  <42.487698, 40.055862, 32.693153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282341, 39.931900, 32.701008>,  <41.940079, 39.725296, 32.714096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282341, 39.931900, 32.701008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505691, -0.820927, 0.265247,
		0.110139, -0.243509, -0.963625,
		0.855655, 0.516510, -0.032724,
		42.539036, 40.086853, 32.691193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385143, 39.226601, 32.473560>,  <41.940079, 39.725296, 32.714096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385143, 39.226601, 32.473560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.638531, 39.507832, 32.602806>,  <42.790562, 39.676571, 32.680351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.638531, 39.507832, 32.602806>,  <42.385143, 39.226601, 32.473560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.638531, 39.507832, 32.602806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678587, -0.705439, 0.204635,
		0.371811, 0.089630, -0.923971,
		0.633464, 0.703080, 0.323112,
		42.828571, 39.718754, 32.699741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104538, 38.977993, 32.182358>,  <42.385143, 39.226601, 32.473560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104538, 38.977993, 32.182358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.174900, 39.248833, 32.468182>,  <43.217117, 39.411335, 32.639675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.174900, 39.248833, 32.468182>,  <43.104538, 38.977993, 32.182358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174900, 39.248833, 32.468182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889282, -0.420604, 0.179637,
		0.422179, 0.603847, -0.676117,
		0.175904, 0.677098, 0.714560,
		43.227673, 39.451962, 32.682549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.777927, 39.240093, 32.064610>,  <43.104538, 38.977993, 32.182358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.777927, 39.240093, 32.064610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.691376, 39.297577, 32.450878>,  <43.639442, 39.332066, 32.682640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.691376, 39.297577, 32.450878>,  <43.777927, 39.240093, 32.064610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.691376, 39.297577, 32.450878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783286, -0.564873, 0.259578,
		0.582787, 0.812567, 0.009662,
		-0.216383, 0.143710, 0.965674,
		43.626461, 39.340691, 32.740582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443642, 39.415882, 32.374306>,  <43.777927, 39.240093, 32.064610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443642, 39.415882, 32.374306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213123, 39.286366, 32.674450>,  <44.074810, 39.208656, 32.854538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213123, 39.286366, 32.674450>,  <44.443642, 39.415882, 32.374306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.213123, 39.286366, 32.674450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757643, -0.555874, 0.342026,
		0.306362, 0.765614, 0.565666,
		-0.576298, -0.323789, 0.750360,
		44.040234, 39.189228, 32.899559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.860672, 39.320030, 32.997799>,  <44.443642, 39.415882, 32.374306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.860672, 39.320030, 32.997799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.541676, 39.084324, 33.049610>,  <44.350277, 38.942898, 33.080696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.541676, 39.084324, 33.049610>,  <44.860672, 39.320030, 32.997799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.541676, 39.084324, 33.049610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598900, -0.747183, 0.288160,
		-0.073026, 0.307375, 0.948782,
		-0.797487, -0.589269, 0.129524,
		44.302429, 38.907543, 33.088467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.921986, 38.901867, 33.640163>,  <44.860672, 39.320030, 32.997799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.921986, 38.901867, 33.640163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618813, 38.713158, 33.459961>,  <44.436909, 38.599930, 33.351837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618813, 38.713158, 33.459961>,  <44.921986, 38.901867, 33.640163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.618813, 38.713158, 33.459961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454263, -0.877363, 0.154531,
		-0.468163, -0.087525, 0.879297,
		-0.757937, -0.471778, -0.450508,
		44.391430, 38.571625, 33.324810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730469, 38.383839, 34.127018>,  <44.921986, 38.901867, 33.640163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730469, 38.383839, 34.127018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597832, 38.242729, 33.777023>,  <44.518250, 38.158062, 33.567028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597832, 38.242729, 33.777023>,  <44.730469, 38.383839, 34.127018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597832, 38.242729, 33.777023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390839, -0.895492, 0.212932,
		-0.858658, -0.271371, 0.434816,
		-0.331591, -0.352778, -0.874983,
		44.498356, 38.136894, 33.514530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351849, 37.756184, 34.269009>,  <44.730469, 38.383839, 34.127018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351849, 37.756184, 34.269009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.464989, 37.750015, 33.885391>,  <44.532875, 37.746315, 33.655220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.464989, 37.750015, 33.885391>,  <44.351849, 37.756184, 34.269009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.464989, 37.750015, 33.885391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220863, -0.971955, 0.080765,
		-0.933388, -0.234661, -0.271515,
		0.282852, -0.015418, -0.959039,
		44.549843, 37.745392, 33.597679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993233, 37.127930, 33.917709>,  <44.351849, 37.756184, 34.269009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993233, 37.127930, 33.917709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.300381, 37.213352, 33.676121>,  <44.484669, 37.264606, 33.531170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.300381, 37.213352, 33.676121>,  <43.993233, 37.127930, 33.917709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300381, 37.213352, 33.676121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276508, -0.960940, 0.011764,
		-0.577864, -0.176035, -0.796923,
		0.767865, 0.213557, -0.603967,
		44.530739, 37.277420, 33.494930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.860352, 36.841316, 33.289627>,  <43.993233, 37.127930, 33.917709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.860352, 36.841316, 33.289627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.257065, 36.891453, 33.279312>,  <44.495090, 36.921535, 33.273125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.257065, 36.891453, 33.279312>,  <43.860352, 36.841316, 33.289627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.257065, 36.891453, 33.279312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126902, -0.989294, 0.072059,
		-0.016477, -0.074739, -0.997067,
		0.991779, 0.125342, -0.025785,
		44.554600, 36.929054, 33.271576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.042053, 36.324024, 32.774742>,  <43.860352, 36.841316, 33.289627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.042053, 36.324024, 32.774742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374725, 36.398163, 32.984104>,  <44.574329, 36.442646, 33.109722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374725, 36.398163, 32.984104>,  <44.042053, 36.324024, 32.774742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374725, 36.398163, 32.984104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279573, -0.954218, -0.106333,
		0.479735, 0.234765, -0.845423,
		0.831681, 0.185346, 0.523405,
		44.624229, 36.453766, 33.141125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.593533, 36.084648, 32.358013>,  <44.042053, 36.324024, 32.774742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.593533, 36.084648, 32.358013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.737778, 36.089939, 32.731064>,  <44.824326, 36.093113, 32.954895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.737778, 36.089939, 32.731064>,  <44.593533, 36.084648, 32.358013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.737778, 36.089939, 32.731064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499997, -0.846833, -0.181319,
		0.787376, 0.531695, -0.311993,
		0.360612, 0.013229, 0.932622,
		44.845963, 36.093906, 33.010849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.133362, 35.959709, 32.175339>,  <44.593533, 36.084648, 32.358013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.133362, 35.959709, 32.175339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.095604, 35.872803, 32.563953>,  <45.072948, 35.820660, 32.797123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.095604, 35.872803, 32.563953>,  <45.133362, 35.959709, 32.175339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.095604, 35.872803, 32.563953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261141, -0.947127, -0.186431,
		0.960674, 0.236111, 0.146141,
		-0.094396, -0.217263, 0.971538,
		45.067284, 35.807625, 32.855415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.624958, 35.480358, 32.372295>,  <45.133362, 35.959709, 32.175339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.624958, 35.480358, 32.372295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372997, 35.460167, 32.682308>,  <45.221821, 35.448051, 32.868317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372997, 35.460167, 32.682308>,  <45.624958, 35.480358, 32.372295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372997, 35.460167, 32.682308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275132, -0.947679, 0.161885,
		0.726311, 0.315208, 0.610833,
		-0.629901, -0.050481, 0.775033,
		45.184029, 35.445023, 32.914818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.067543, 35.416676, 32.944199>,  <45.624958, 35.480358, 32.372295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.067543, 35.416676, 32.944199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.696026, 35.278408, 32.997639>,  <45.473114, 35.195446, 33.029705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.696026, 35.278408, 32.997639>,  <46.067543, 35.416676, 32.944199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.696026, 35.278408, 32.997639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369098, -0.895193, 0.249792,
		0.033256, 0.281319, 0.959038,
		-0.928795, -0.345672, 0.133605,
		45.417389, 35.174706, 33.037720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.116852, 35.030659, 33.431538>,  <46.067543, 35.416676, 32.944199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.116852, 35.030659, 33.431538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754452, 34.901867, 33.321629>,  <45.537014, 34.824593, 33.255684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754452, 34.901867, 33.321629>,  <46.116852, 35.030659, 33.431538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.754452, 34.901867, 33.321629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252036, -0.931875, 0.260932,
		-0.340070, 0.167151, 0.925426,
		-0.905997, -0.321976, -0.274775,
		45.482655, 34.805275, 33.239197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.954357, 34.644848, 33.942524>,  <46.116852, 35.030659, 33.431538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.954357, 34.644848, 33.942524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.734585, 34.537899, 33.625881>,  <45.602722, 34.473728, 33.435898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.734585, 34.537899, 33.625881>,  <45.954357, 34.644848, 33.942524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.734585, 34.537899, 33.625881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265566, -0.954171, 0.137960,
		-0.792212, -0.134424, 0.595256,
		-0.549431, -0.267374, -0.791604,
		45.569756, 34.457687, 33.388401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.607830, 34.254520, 33.563602>,  <45.954357, 34.644848, 33.942524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.607830, 34.254520, 33.563602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.001457, 34.257233, 33.492538>,  <47.237633, 34.258862, 33.449902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.001457, 34.257233, 33.492538>,  <46.607830, 34.254520, 33.563602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.001457, 34.257233, 33.492538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161561, -0.382989, -0.909515,
		-0.074211, 0.923728, -0.375791,
		0.984069, 0.006783, -0.177660,
		47.296677, 34.259266, 33.439240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.222282, 34.510941, 33.892609>,  <46.607830, 34.254520, 33.563602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.222282, 34.510941, 33.892609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.173038, 34.423008, 34.279705>,  <47.143494, 34.370251, 34.511963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.173038, 34.423008, 34.279705>,  <47.222282, 34.510941, 33.892609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.173038, 34.423008, 34.279705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912142, 0.359094, 0.197605,
		-0.390949, 0.907043, 0.156309,
		-0.123107, -0.219829, 0.967740,
		47.136105, 34.357059, 34.570026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.493851, 35.085556, 34.351646>,  <47.222282, 34.510941, 33.892609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.493851, 35.085556, 34.351646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.492561, 34.747807, 34.565941>,  <47.491787, 34.545155, 34.694519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.492561, 34.747807, 34.565941>,  <47.493851, 35.085556, 34.351646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.492561, 34.747807, 34.565941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928516, 0.196384, 0.315106,
		-0.371279, 0.498459, 0.783384,
		-0.003223, -0.844377, 0.535740,
		47.491596, 34.494495, 34.726662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.515671, 35.192947, 35.208565>,  <47.493851, 35.085556, 34.351646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.515671, 35.192947, 35.208565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.726299, 34.893520, 35.047386>,  <47.852676, 34.713863, 34.950680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.726299, 34.893520, 35.047386>,  <47.515671, 35.192947, 35.208565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.726299, 34.893520, 35.047386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833553, 0.361490, 0.417749,
		-0.167054, -0.555850, 0.814324,
		0.526576, -0.748569, -0.402942,
		47.884274, 34.668949, 34.926502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.649448, 38.987106, 42.651440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.255562, 39.023174, 42.711037>,  <38.019230, 39.044815, 42.746796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.255562, 39.023174, 42.711037>,  <38.649448, 38.987106, 42.651440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255562, 39.023174, 42.711037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174130, -0.523282, -0.834179,
		0.002744, -0.847376, 0.530987,
		-0.984719, 0.090172, 0.148990,
		37.960148, 39.050224, 42.755733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410927, 38.357086, 42.456932>,  <38.649448, 38.987106, 42.651440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410927, 38.357086, 42.456932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.058567, 38.545856, 42.471382>,  <37.847153, 38.659119, 42.480053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.058567, 38.545856, 42.471382>,  <38.410927, 38.357086, 42.456932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058567, 38.545856, 42.471382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297840, -0.493389, -0.817226,
		-0.367847, -0.730652, 0.575184,
		-0.880897, 0.471927, 0.036126,
		37.794296, 38.687435, 42.482220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885796, 37.823406, 42.407585>,  <38.410927, 38.357086, 42.456932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885796, 37.823406, 42.407585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.711948, 38.167099, 42.299637>,  <37.607639, 38.373314, 42.234867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.711948, 38.167099, 42.299637>,  <37.885796, 37.823406, 42.407585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711948, 38.167099, 42.299637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390344, -0.449754, -0.803339,
		-0.811629, -0.243802, 0.530866,
		-0.434615, 0.859233, -0.269867,
		37.581562, 38.424870, 42.218678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208416, 37.653809, 42.190907>,  <37.885796, 37.823406, 42.407585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208416, 37.653809, 42.190907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.263573, 38.000183, 41.998596>,  <37.296665, 38.208008, 41.883209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.263573, 38.000183, 41.998596>,  <37.208416, 37.653809, 42.190907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263573, 38.000183, 41.998596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147955, -0.461957, -0.874474,
		-0.979334, 0.191717, 0.064419,
		0.137892, 0.865933, -0.480776,
		37.304939, 38.259964, 41.854362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589203, 37.708378, 41.737514>,  <37.208416, 37.653809, 42.190907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589203, 37.708378, 41.737514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.863995, 37.973099, 41.617458>,  <37.028870, 38.131931, 41.545425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.863995, 37.973099, 41.617458>,  <36.589203, 37.708378, 41.737514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863995, 37.973099, 41.617458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188394, -0.236710, -0.953140,
		-0.701836, 0.711328, -0.037934,
		0.686975, 0.661801, -0.300142,
		37.070087, 38.171638, 41.527416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182327, 38.107544, 41.320915>,  <36.589203, 37.708378, 41.737514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182327, 38.107544, 41.320915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.573498, 38.085155, 41.240383>,  <36.808201, 38.071720, 41.192066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.573498, 38.085155, 41.240383>,  <36.182327, 38.107544, 41.320915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573498, 38.085155, 41.240383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208312, -0.337214, -0.918092,
		-0.016501, 0.939763, -0.341429,
		0.977923, -0.055975, -0.201328,
		36.866875, 38.068363, 41.179985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238117, 38.394325, 40.671860>,  <36.182327, 38.107544, 41.320915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238117, 38.394325, 40.671860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.570774, 38.177116, 40.718346>,  <36.770367, 38.046791, 40.746235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.570774, 38.177116, 40.718346>,  <36.238117, 38.394325, 40.671860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570774, 38.177116, 40.718346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070677, -0.311073, -0.947755,
		0.550799, 0.779977, -0.297080,
		0.831640, -0.543019, 0.116212,
		36.820267, 38.014210, 40.753208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640755, 38.649532, 40.095181>,  <36.238117, 38.394325, 40.671860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640755, 38.649532, 40.095181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.773167, 38.295273, 40.225437>,  <36.852615, 38.082718, 40.303593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.773167, 38.295273, 40.225437>,  <36.640755, 38.649532, 40.095181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773167, 38.295273, 40.225437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077288, -0.318493, -0.944769,
		0.940449, 0.337917, -0.036982,
		0.331032, -0.885649, 0.325643,
		36.872475, 38.029579, 40.323132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314346, 38.463673, 39.775398>,  <36.640755, 38.649532, 40.095181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314346, 38.463673, 39.775398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.199612, 38.093613, 39.874851>,  <37.130772, 37.871574, 39.934521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.199612, 38.093613, 39.874851>,  <37.314346, 38.463673, 39.775398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199612, 38.093613, 39.874851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175398, -0.305867, -0.935778,
		0.941785, -0.224808, 0.250004,
		-0.286838, -0.925152, 0.248630,
		37.113560, 37.816067, 39.949440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683838, 38.016354, 39.412106>,  <37.314346, 38.463673, 39.775398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683838, 38.016354, 39.412106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.410938, 37.745739, 39.522987>,  <37.247200, 37.583370, 39.589516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.410938, 37.745739, 39.522987>,  <37.683838, 38.016354, 39.412106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410938, 37.745739, 39.522987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263893, -0.581455, -0.769591,
		0.681835, -0.451900, 0.575228,
		-0.682247, -0.676533, 0.277203,
		37.206264, 37.542778, 39.606148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030396, 37.368195, 39.388130>,  <37.683838, 38.016354, 39.412106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030396, 37.368195, 39.388130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.637596, 37.303982, 39.348331>,  <37.401917, 37.265453, 39.324451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.637596, 37.303982, 39.348331>,  <38.030396, 37.368195, 39.388130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637596, 37.303982, 39.348331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163171, -0.455836, -0.874979,
		0.095104, -0.875468, 0.473826,
		-0.982003, -0.160529, -0.099499,
		37.342995, 37.255825, 39.318481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032711, 36.728519, 38.993382>,  <38.030396, 37.368195, 39.388130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032711, 36.728519, 38.993382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.663990, 36.880238, 38.961361>,  <37.442757, 36.971268, 38.942150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.663990, 36.880238, 38.961361>,  <38.032711, 36.728519, 38.993382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663990, 36.880238, 38.961361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070452, -0.366983, -0.927556,
		-0.381203, -0.849383, 0.365009,
		-0.921803, 0.379303, -0.080055,
		37.387447, 36.994026, 38.937344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582962, 36.101196, 38.713848>,  <38.032711, 36.728519, 38.993382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582962, 36.101196, 38.713848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.446239, 36.466068, 38.623428>,  <37.364204, 36.684990, 38.569176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.446239, 36.466068, 38.623428>,  <37.582962, 36.101196, 38.713848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446239, 36.466068, 38.623428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114652, -0.279214, -0.953359,
		-0.932749, -0.299950, 0.200021,
		-0.341809, 0.912178, -0.226047,
		37.343697, 36.739723, 38.555614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057110, 36.025871, 38.218769>,  <37.582962, 36.101196, 38.713848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057110, 36.025871, 38.218769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.147106, 36.413292, 38.176273>,  <37.201103, 36.645744, 38.150776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.147106, 36.413292, 38.176273>,  <37.057110, 36.025871, 38.218769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147106, 36.413292, 38.176273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085646, -0.128269, -0.988034,
		-0.970590, 0.213200, -0.111812,
		0.224990, 0.968552, -0.106237,
		37.214603, 36.703857, 38.144402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672466, 36.326057, 37.636677>,  <37.057110, 36.025871, 38.218769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672466, 36.326057, 37.636677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.000328, 36.553169, 37.667126>,  <37.197044, 36.689438, 37.685394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.000328, 36.553169, 37.667126>,  <36.672466, 36.326057, 37.636677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000328, 36.553169, 37.667126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159616, -0.098742, -0.982228,
		-0.550176, 0.817235, -0.171561,
		0.819652, 0.567782, 0.076119,
		37.246223, 36.723503, 37.689960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711605, 36.559464, 36.951279>,  <36.672466, 36.326057, 37.636677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711605, 36.559464, 36.951279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.073582, 36.657036, 37.090748>,  <37.290768, 36.715580, 37.174427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.073582, 36.657036, 37.090748>,  <36.711605, 36.559464, 36.951279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073582, 36.657036, 37.090748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386916, -0.130638, -0.912814,
		-0.177117, 0.960952, -0.212603,
		0.904945, 0.243935, 0.348670,
		37.345066, 36.730217, 37.195351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969807, 37.067039, 36.389214>,  <36.711605, 36.559464, 36.951279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969807, 37.067039, 36.389214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.250874, 36.892574, 36.614075>,  <37.419514, 36.787895, 36.748993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.250874, 36.892574, 36.614075>,  <36.969807, 37.067039, 36.389214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250874, 36.892574, 36.614075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552023, -0.164306, -0.817480,
		0.448922, 0.884739, 0.125321,
		0.702666, -0.436165, 0.562157,
		37.461674, 36.761726, 36.782722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508774, 37.405270, 36.062256>,  <36.969807, 37.067039, 36.389214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508774, 37.405270, 36.062256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.642826, 37.082325, 36.256516>,  <37.723259, 36.888557, 36.373070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.642826, 37.082325, 36.256516>,  <37.508774, 37.405270, 36.062256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642826, 37.082325, 36.256516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583632, -0.226752, -0.779716,
		0.739634, 0.544748, 0.395210,
		0.335134, -0.807362, 0.485646,
		37.743366, 36.840115, 36.402210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179642, 37.467068, 35.981674>,  <37.508774, 37.405270, 36.062256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179642, 37.467068, 35.981674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.107933, 37.078262, 36.042416>,  <38.064907, 36.844978, 36.078861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.107933, 37.078262, 36.042416>,  <38.179642, 37.467068, 35.981674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107933, 37.078262, 36.042416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542228, -0.226418, -0.809150,
		0.820884, -0.062719, 0.567641,
		-0.179273, -0.972009, 0.151855,
		38.054150, 36.786659, 36.087971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789677, 37.168060, 35.735603>,  <38.179642, 37.467068, 35.981674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789677, 37.168060, 35.735603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.537407, 36.858269, 35.755314>,  <38.386044, 36.672394, 35.767139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.537407, 36.858269, 35.755314>,  <38.789677, 37.168060, 35.735603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537407, 36.858269, 35.755314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441687, -0.410435, -0.797782,
		0.638091, -0.481377, 0.600929,
		-0.630676, -0.774480, 0.049277,
		38.348206, 36.625923, 35.770096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198540, 36.461803, 35.763233>,  <38.789677, 37.168060, 35.735603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198540, 36.461803, 35.763233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.834579, 36.373119, 35.622993>,  <38.616203, 36.319908, 35.538849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.834579, 36.373119, 35.622993>,  <39.198540, 36.461803, 35.763233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834579, 36.373119, 35.622993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414787, -0.475729, -0.775650,
		0.005182, -0.851191, 0.524831,
		-0.909904, -0.221712, -0.350598,
		38.561607, 36.306606, 35.517815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287613, 35.776367, 35.479389>,  <39.198540, 36.461803, 35.763233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287613, 35.776367, 35.479389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.958931, 35.925404, 35.306889>,  <38.761723, 36.014828, 35.203388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.958931, 35.925404, 35.306889>,  <39.287613, 35.776367, 35.479389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958931, 35.925404, 35.306889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290434, -0.377301, -0.879370,
		-0.490360, -0.847831, 0.201815,
		-0.821703, 0.372595, -0.431252,
		38.712421, 36.037182, 35.177513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875034, 35.497925, 35.408234>,  <39.287613, 35.776367, 35.479389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875034, 35.497925, 35.408234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.123425, 35.733593, 35.201439>,  <40.272457, 35.874992, 35.077362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.123425, 35.733593, 35.201439>,  <39.875034, 35.497925, 35.408234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123425, 35.733593, 35.201439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134278, 0.569854, 0.810701,
		0.772246, -0.572843, 0.274751,
		0.620972, 0.589167, -0.516987,
		40.309715, 35.910343, 35.046341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547676, 35.462288, 35.730888>,  <39.875034, 35.497925, 35.408234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547676, 35.462288, 35.730888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.558472, 35.816151, 35.544704>,  <40.564949, 36.028469, 35.432995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.558472, 35.816151, 35.544704>,  <40.547676, 35.462288, 35.730888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558472, 35.816151, 35.544704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211426, 0.450043, 0.867618,
		0.977021, -0.121826, -0.174893,
		0.026989, 0.884658, -0.465459,
		40.566570, 36.081547, 35.405067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146530, 35.790379, 35.952812>,  <40.547676, 35.462288, 35.730888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146530, 35.790379, 35.952812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.931767, 36.102695, 35.825005>,  <40.802906, 36.290085, 35.748318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.931767, 36.102695, 35.825005>,  <41.146530, 35.790379, 35.952812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931767, 36.102695, 35.825005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292599, 0.527578, 0.797526,
		0.791271, 0.334711, -0.511721,
		-0.536913, 0.780789, -0.319521,
		40.770691, 36.336933, 35.729149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473251, 36.368999, 36.194855>,  <41.146530, 35.790379, 35.952812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473251, 36.368999, 36.194855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.135395, 36.535149, 36.059776>,  <40.932682, 36.634838, 35.978729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.135395, 36.535149, 36.059776>,  <41.473251, 36.368999, 36.194855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135395, 36.535149, 36.059776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083482, 0.725311, 0.683341,
		0.528777, 0.548989, -0.647307,
		-0.844645, 0.415373, -0.337697,
		40.882000, 36.659760, 35.958466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683308, 37.093891, 36.139988>,  <41.473251, 36.368999, 36.194855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683308, 37.093891, 36.139988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.292675, 37.031174, 36.198906>,  <41.058296, 36.993542, 36.234257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.292675, 37.031174, 36.198906>,  <41.683308, 37.093891, 36.139988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292675, 37.031174, 36.198906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022418, 0.755115, 0.655209,
		-0.213956, 0.636566, -0.740950,
		-0.976586, -0.156797, 0.147291,
		40.999699, 36.984135, 36.243092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400974, 37.735493, 36.185478>,  <41.683308, 37.093891, 36.139988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400974, 37.735493, 36.185478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.139683, 37.507053, 36.384331>,  <40.982906, 37.369991, 36.503643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.139683, 37.507053, 36.384331>,  <41.400974, 37.735493, 36.185478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139683, 37.507053, 36.384331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020101, 0.643257, 0.765386,
		-0.756893, 0.509966, -0.408715,
		-0.653230, -0.571100, 0.497127,
		40.943714, 37.335724, 36.533470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025955, 38.224297, 36.586475>,  <41.400974, 37.735493, 36.185478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025955, 38.224297, 36.586475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.926434, 37.883034, 36.769871>,  <40.866722, 37.678276, 36.879910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.926434, 37.883034, 36.769871>,  <41.025955, 38.224297, 36.586475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926434, 37.883034, 36.769871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010452, 0.470986, 0.882079,
		-0.968498, 0.224255, -0.108265,
		-0.248802, -0.853160, 0.458493,
		40.851791, 37.627087, 36.907417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410915, 38.312710, 37.111794>,  <41.025955, 38.224297, 36.586475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410915, 38.312710, 37.111794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.578671, 37.962509, 37.207806>,  <40.679325, 37.752388, 37.265415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.578671, 37.962509, 37.207806>,  <40.410915, 38.312710, 37.111794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578671, 37.962509, 37.207806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199362, 0.169131, 0.965220,
		-0.885644, -0.452658, -0.103609,
		0.419392, -0.875497, 0.240032,
		40.704487, 37.699860, 37.279816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858147, 37.976501, 37.540989>,  <40.410915, 38.312710, 37.111794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858147, 37.976501, 37.540989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.216137, 37.809948, 37.605045>,  <40.430931, 37.710014, 37.643478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.216137, 37.809948, 37.605045>,  <39.858147, 37.976501, 37.540989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216137, 37.809948, 37.605045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108237, 0.145579, 0.983408,
		-0.432789, -0.897458, 0.085222,
		0.894974, -0.416384, 0.160143,
		40.484631, 37.685032, 37.653088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774223, 37.393387, 38.060242>,  <39.858147, 37.976501, 37.540989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774223, 37.393387, 38.060242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.127602, 37.580658, 38.052933>,  <40.339630, 37.693020, 38.048546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.127602, 37.580658, 38.052933>,  <39.774223, 37.393387, 38.060242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127602, 37.580658, 38.052933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093101, 0.213633, 0.972468,
		0.459192, -0.857421, 0.232321,
		0.883445, 0.468178, -0.018272,
		40.392635, 37.721111, 38.047451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037445, 37.210720, 38.660122>,  <39.774223, 37.393387, 38.060242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037445, 37.210720, 38.660122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.281013, 37.503750, 38.538433>,  <40.427155, 37.679569, 38.465420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.281013, 37.503750, 38.538433>,  <40.037445, 37.210720, 38.660122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281013, 37.503750, 38.538433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193916, 0.234413, 0.952600,
		0.769164, -0.639051, 0.000681,
		0.608920, 0.732574, -0.304224,
		40.463688, 37.723522, 38.447166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599606, 37.070263, 39.036930>,  <40.037445, 37.210720, 38.660122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599606, 37.070263, 39.036930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.568005, 37.452911, 38.924763>,  <40.549046, 37.682499, 38.857464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.568005, 37.452911, 38.924763>,  <40.599606, 37.070263, 39.036930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568005, 37.452911, 38.924763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134384, 0.288950, 0.947865,
		0.987775, 0.037197, -0.151382,
		-0.079000, 0.956621, -0.280419,
		40.544304, 37.739899, 38.840637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155945, 37.394581, 39.292900>,  <40.599606, 37.070263, 39.036930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155945, 37.394581, 39.292900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.912846, 37.706650, 39.233612>,  <40.766987, 37.893890, 39.198040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.912846, 37.706650, 39.233612>,  <41.155945, 37.394581, 39.292900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912846, 37.706650, 39.233612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251188, 0.365918, 0.896107,
		0.753356, 0.507378, -0.418357,
		-0.607750, 0.780174, -0.148219,
		40.730522, 37.940701, 39.189148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361439, 37.833084, 39.863506>,  <41.155945, 37.394581, 39.292900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361439, 37.833084, 39.863506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.041676, 38.031971, 39.728615>,  <40.849819, 38.151302, 39.647678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.041676, 38.031971, 39.728615>,  <41.361439, 37.833084, 39.863506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041676, 38.031971, 39.728615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083698, 0.463668, 0.882047,
		0.594931, 0.733341, -0.329043,
		-0.799407, 0.497217, -0.337229,
		40.801853, 38.181137, 39.627445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487499, 38.540131, 39.877110>,  <41.361439, 37.833084, 39.863506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487499, 38.540131, 39.877110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.092785, 38.481907, 39.905575>,  <40.855957, 38.446972, 39.922653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.092785, 38.481907, 39.905575>,  <41.487499, 38.540131, 39.877110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092785, 38.481907, 39.905575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007347, 0.478969, 0.877801,
		-0.161860, 0.865679, -0.473710,
		-0.986786, -0.145562, 0.071166,
		40.796749, 38.438240, 39.926926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295059, 39.180832, 40.209705>,  <41.487499, 38.540131, 39.877110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295059, 39.180832, 40.209705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.998600, 38.917328, 40.261452>,  <40.820724, 38.759224, 40.292500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.998600, 38.917328, 40.261452>,  <41.295059, 39.180832, 40.209705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998600, 38.917328, 40.261452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231576, 0.431734, 0.871767,
		-0.630136, 0.616150, -0.472532,
		-0.741148, -0.658759, 0.129366,
		40.776257, 38.719700, 40.300262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705883, 39.548321, 40.552723>,  <41.295059, 39.180832, 40.209705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705883, 39.548321, 40.552723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.610172, 39.168266, 40.632717>,  <40.552746, 38.940235, 40.680714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.610172, 39.168266, 40.632717>,  <40.705883, 39.548321, 40.552723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610172, 39.168266, 40.632717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284684, 0.265572, 0.921101,
		-0.928278, 0.163465, -0.334033,
		-0.239278, -0.950132, 0.199989,
		40.538387, 38.883228, 40.692715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909393, 39.526691, 40.718376>,  <40.705883, 39.548321, 40.552723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909393, 39.526691, 40.718376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.087498, 39.207458, 40.880760>,  <40.194359, 39.015919, 40.978191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.087498, 39.207458, 40.880760>,  <39.909393, 39.526691, 40.718376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087498, 39.207458, 40.880760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308577, 0.288842, 0.906284,
		-0.840551, -0.528800, -0.117662,
		0.445258, -0.798085, 0.405963,
		40.221077, 38.968033, 41.002548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.400608, 39.251045, 41.147591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.745941, 39.095726, 41.276516>,  <39.953140, 39.002533, 41.353870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.745941, 39.095726, 41.276516>,  <39.400608, 39.251045, 41.147591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745941, 39.095726, 41.276516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244300, 0.237281, 0.940221,
		-0.441563, -0.890463, 0.109991,
		0.863331, -0.388296, 0.322315,
		40.004940, 38.979237, 41.373211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308849, 38.839123, 41.727646>,  <39.400608, 39.251045, 41.147591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308849, 38.839123, 41.727646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.694675, 38.925217, 41.788692>,  <39.926170, 38.976871, 41.825321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.694675, 38.925217, 41.788692>,  <39.308849, 38.839123, 41.727646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694675, 38.925217, 41.788692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188304, 0.156394, 0.969578,
		0.184826, -0.963956, 0.191383,
		0.964562, 0.215241, 0.152612,
		39.984043, 38.989788, 41.834476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459740, 38.557659, 42.285267>,  <39.308849, 38.839123, 41.727646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459740, 38.557659, 42.285267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.771912, 38.807529, 42.274635>,  <39.959213, 38.957451, 42.268257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.771912, 38.807529, 42.274635>,  <39.459740, 38.557659, 42.285267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771912, 38.807529, 42.274635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093894, 0.159122, 0.982784,
		0.618155, -0.764497, 0.182837,
		0.780428, 0.624680, -0.026580,
		40.006039, 38.994934, 42.266663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716267, 38.482384, 42.863018>,  <39.459740, 38.557659, 42.285267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716267, 38.482384, 42.863018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.890812, 38.828812, 42.765438>,  <39.995537, 39.036667, 42.706890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.890812, 38.828812, 42.765438>,  <39.716267, 38.482384, 42.863018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890812, 38.828812, 42.765438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119617, 0.324555, 0.938273,
		0.891786, -0.380244, 0.245220,
		0.436360, 0.866071, -0.243949,
		40.021721, 39.088634, 42.692253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096191, 38.526657, 43.462925>,  <39.716267, 38.482384, 42.863018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096191, 38.526657, 43.462925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.150620, 38.885418, 43.294617>,  <40.183277, 39.100674, 43.193630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.150620, 38.885418, 43.294617>,  <40.096191, 38.526657, 43.462925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150620, 38.885418, 43.294617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043705, 0.429742, 0.901893,
		0.989734, -0.104335, 0.097676,
		0.136074, 0.896903, -0.420771,
		40.191441, 39.154488, 43.168385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700989, 38.820461, 43.785671>,  <40.096191, 38.526657, 43.462925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700989, 38.820461, 43.785671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.440365, 39.092979, 43.652218>,  <40.283989, 39.256489, 43.572147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.440365, 39.092979, 43.652218>,  <40.700989, 38.820461, 43.785671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440365, 39.092979, 43.652218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106403, 0.353379, 0.929409,
		0.751098, 0.641065, -0.157755,
		-0.651559, 0.681292, -0.333634,
		40.244896, 39.297367, 43.552128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005470, 39.458847, 44.048546>,  <40.700989, 38.820461, 43.785671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005470, 39.458847, 44.048546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.613819, 39.512119, 43.987129>,  <40.378830, 39.544083, 43.950279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.613819, 39.512119, 43.987129>,  <41.005470, 39.458847, 44.048546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613819, 39.512119, 43.987129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053200, 0.561160, 0.825996,
		0.196172, 0.816922, -0.542361,
		-0.979125, 0.133184, -0.153545,
		40.320080, 39.552074, 43.941067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769192, 40.179821, 44.258831>,  <41.005470, 39.458847, 44.048546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769192, 40.179821, 44.258831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.390388, 40.052784, 44.239578>,  <40.163109, 39.976562, 44.228027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.390388, 40.052784, 44.239578>,  <40.769192, 40.179821, 44.258831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390388, 40.052784, 44.239578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219431, 0.530203, 0.818984,
		-0.234582, 0.786144, -0.571794,
		-0.947007, -0.317588, -0.048128,
		40.106285, 39.957508, 44.225140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377586, 40.707745, 44.251198>,  <40.769192, 40.179821, 44.258831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377586, 40.707745, 44.251198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.142357, 40.418488, 44.396107>,  <40.001221, 40.244934, 44.483051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.142357, 40.418488, 44.396107>,  <40.377586, 40.707745, 44.251198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142357, 40.418488, 44.396107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321087, 0.619830, 0.716040,
		-0.742346, 0.304760, -0.596694,
		-0.588070, -0.723140, 0.362274,
		39.965935, 40.201546, 44.504787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890949, 41.074829, 44.621647>,  <40.377586, 40.707745, 44.251198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890949, 41.074829, 44.621647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.825089, 40.711235, 44.774822>,  <39.785572, 40.493080, 44.866726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.825089, 40.711235, 44.774822>,  <39.890949, 41.074829, 44.621647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825089, 40.711235, 44.774822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192467, 0.410384, 0.891370,
		-0.967391, 0.073065, -0.242521,
		-0.164655, -0.908981, 0.382939,
		39.775692, 40.438541, 44.889706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395313, 41.248287, 45.097988>,  <39.890949, 41.074829, 44.621647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395313, 41.248287, 45.097988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.501808, 40.880543, 45.213848>,  <39.565704, 40.659897, 45.283363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.501808, 40.880543, 45.213848>,  <39.395313, 41.248287, 45.097988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501808, 40.880543, 45.213848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050337, 0.286828, 0.956659,
		-0.962592, -0.269280, 0.030087,
		0.266239, -0.919357, 0.289653,
		39.581680, 40.604736, 45.300743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942284, 41.108562, 45.590572>,  <39.395313, 41.248287, 45.097988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942284, 41.108562, 45.590572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.244450, 40.851936, 45.643845>,  <39.425751, 40.697960, 45.675808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.244450, 40.851936, 45.643845>,  <38.942284, 41.108562, 45.590572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244450, 40.851936, 45.643845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055762, 0.265463, 0.962507,
		-0.652866, -0.719669, 0.236311,
		0.755418, -0.641565, 0.133182,
		39.471077, 40.659466, 45.683800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718292, 40.709614, 46.224537>,  <38.942284, 41.108562, 45.590572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718292, 40.709614, 46.224537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.112541, 40.658062, 46.180820>,  <39.349091, 40.627132, 46.154591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.112541, 40.658062, 46.180820>,  <38.718292, 40.709614, 46.224537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112541, 40.658062, 46.180820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141404, 0.274961, 0.951000,
		-0.092515, -0.952778, 0.289231,
		0.985619, -0.128880, -0.109289,
		39.408226, 40.619396, 46.148033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017818, 40.158878, 46.674309>,  <38.718292, 40.709614, 46.224537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017818, 40.158878, 46.674309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.315166, 40.416500, 46.602093>,  <39.493576, 40.571072, 46.558762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.315166, 40.416500, 46.602093>,  <39.017818, 40.158878, 46.674309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315166, 40.416500, 46.602093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121142, 0.135819, 0.983299,
		0.657816, -0.752829, 0.022942,
		0.743373, 0.644051, -0.180543,
		39.538177, 40.609715, 46.547928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409214, 40.087337, 47.332848>,  <39.017818, 40.158878, 46.674309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409214, 40.087337, 47.332848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.598087, 40.374783, 47.128635>,  <39.711411, 40.547249, 47.006107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.598087, 40.374783, 47.128635>,  <39.409214, 40.087337, 47.332848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598087, 40.374783, 47.128635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434769, 0.313969, 0.844038,
		0.766826, -0.620503, -0.164180,
		0.472180, 0.718610, -0.510535,
		39.739742, 40.590366, 46.975475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019238, 40.048729, 47.572475>,  <39.409214, 40.087337, 47.332848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019238, 40.048729, 47.572475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.993706, 40.420589, 47.427330>,  <39.978386, 40.643707, 47.340244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.993706, 40.420589, 47.427330>,  <40.019238, 40.048729, 47.572475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993706, 40.420589, 47.427330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419799, 0.354879, 0.835362,
		0.905370, -0.099012, -0.412918,
		-0.063825, 0.929655, -0.362862,
		39.974560, 40.699486, 47.318470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608944, 40.380768, 47.758369>,  <40.019238, 40.048729, 47.572475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608944, 40.380768, 47.758369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.355095, 40.677017, 47.670078>,  <40.202785, 40.854767, 47.617104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.355095, 40.677017, 47.670078>,  <40.608944, 40.380768, 47.758369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355095, 40.677017, 47.670078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299466, 0.498974, 0.813231,
		0.712441, 0.449995, -0.538454,
		-0.634624, 0.740628, -0.220731,
		40.164707, 40.899204, 47.603859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976822, 40.978214, 47.670551>,  <40.608944, 40.380768, 47.758369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976822, 40.978214, 47.670551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.608875, 41.081402, 47.788734>,  <40.388107, 41.143314, 47.859642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.608875, 41.081402, 47.788734>,  <40.976822, 40.978214, 47.670551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608875, 41.081402, 47.788734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390119, 0.523761, 0.757286,
		0.040610, 0.811865, -0.582431,
		-0.919869, 0.257970, 0.295454,
		40.332916, 41.158794, 47.877369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029030, 41.655903, 47.875992>,  <40.976822, 40.978214, 47.670551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029030, 41.655903, 47.875992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.667999, 41.567162, 48.023582>,  <40.451382, 41.513916, 48.112137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.667999, 41.567162, 48.023582>,  <41.029030, 41.655903, 47.875992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667999, 41.567162, 48.023582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176127, 0.591755, 0.786642,
		-0.392865, 0.774988, -0.495026,
		-0.902572, -0.221857, 0.368976,
		40.397228, 41.500603, 48.134274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612774, 42.298561, 48.110184>,  <41.029030, 41.655903, 47.875992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612774, 42.298561, 48.110184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.387737, 42.026978, 48.298866>,  <40.252716, 41.864029, 48.412075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.387737, 42.026978, 48.298866>,  <40.612774, 42.298561, 48.110184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387737, 42.026978, 48.298866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146442, 0.643382, 0.751408,
		-0.813663, 0.353657, -0.461388,
		-0.562590, -0.678960, 0.471705,
		40.218960, 41.823288, 48.440376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955532, 42.617489, 48.393517>,  <40.612774, 42.298561, 48.110184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955532, 42.617489, 48.393517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.061310, 42.292095, 48.600712>,  <40.124775, 42.096859, 48.725029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.061310, 42.292095, 48.600712>,  <39.955532, 42.617489, 48.393517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061310, 42.292095, 48.600712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095432, 0.512403, 0.853426,
		-0.959667, -0.275118, 0.057870,
		0.264446, -0.813482, 0.517992,
		40.140644, 42.048050, 48.756111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750893, 42.756088, 49.016376>,  <39.955532, 42.617489, 48.393517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750893, 42.756088, 49.016376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.980827, 42.441349, 49.106205>,  <40.118790, 42.252506, 49.160103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.980827, 42.441349, 49.106205>,  <39.750893, 42.756088, 49.016376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980827, 42.441349, 49.106205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242522, 0.425951, 0.871636,
		-0.781499, -0.446588, 0.435682,
		0.574841, -0.786845, 0.224573,
		40.153278, 42.205296, 49.173576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533413, 42.434353, 49.579086>,  <39.750893, 42.756088, 49.016376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533413, 42.434353, 49.579086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.929344, 42.384792, 49.551098>,  <40.166901, 42.355057, 49.534306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.929344, 42.384792, 49.551098>,  <39.533413, 42.434353, 49.579086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929344, 42.384792, 49.551098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111438, 0.369168, 0.922657,
		-0.088489, -0.921066, 0.379219,
		0.989824, -0.123905, -0.069974,
		40.226292, 42.347622, 49.530106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947678, 42.535637, 49.866001>,  <39.533413, 42.434353, 49.579086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947678, 42.535637, 49.866001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.568325, 42.555779, 49.991245>,  <38.340714, 42.567863, 50.066391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.568325, 42.555779, 49.991245>,  <38.947678, 42.535637, 49.866001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568325, 42.555779, 49.991245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243869, -0.746955, -0.618535,
		0.202732, -0.662965, 0.720678,
		-0.948382, 0.050354, 0.313108,
		38.283810, 42.570885, 50.085178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788010, 41.942986, 50.026436>,  <38.947678, 42.535637, 49.866001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788010, 41.942986, 50.026436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.426319, 42.102604, 49.965599>,  <38.209305, 42.198376, 49.929096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.426319, 42.102604, 49.965599>,  <38.788010, 41.942986, 50.026436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426319, 42.102604, 49.965599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290740, -0.836114, -0.465171,
		-0.312790, -0.376402, 0.872057,
		-0.904230, 0.399043, -0.152093,
		38.155048, 42.222317, 49.919971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299545, 41.498436, 50.133686>,  <38.788010, 41.942986, 50.026436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299545, 41.498436, 50.133686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.063244, 41.734913, 49.914051>,  <37.921463, 41.876801, 49.782272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.063244, 41.734913, 49.914051>,  <38.299545, 41.498436, 50.133686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063244, 41.734913, 49.914051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383981, -0.804525, -0.453099,
		-0.709622, -0.056834, 0.702287,
		-0.590759, 0.591194, -0.549085,
		37.886017, 41.912270, 49.749325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543674, 41.174709, 50.164379>,  <38.299545, 41.498436, 50.133686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543674, 41.174709, 50.164379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.598244, 41.408283, 49.844276>,  <37.630985, 41.548428, 49.652214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.598244, 41.408283, 49.844276>,  <37.543674, 41.174709, 50.164379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598244, 41.408283, 49.844276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380030, -0.715154, -0.586627,
		-0.914858, 0.384152, 0.124347,
		0.136427, 0.583936, -0.800254,
		37.639172, 41.583466, 49.604198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946590, 41.028309, 49.739212>,  <37.543674, 41.174709, 50.164379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946590, 41.028309, 49.739212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.175022, 41.241936, 49.489849>,  <37.312080, 41.370113, 49.340229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.175022, 41.241936, 49.489849>,  <36.946590, 41.028309, 49.739212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175022, 41.241936, 49.489849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071611, -0.724121, -0.685945,
		-0.817766, 0.436371, -0.375285,
		0.571078, 0.534068, -0.623411,
		37.346344, 41.402157, 49.302826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531006, 41.233845, 49.123661>,  <36.946590, 41.028309, 49.739212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531006, 41.233845, 49.123661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.913902, 41.251373, 49.009274>,  <37.143639, 41.261890, 48.940643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.913902, 41.251373, 49.009274>,  <36.531006, 41.233845, 49.123661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913902, 41.251373, 49.009274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220808, -0.527986, -0.820045,
		-0.186924, 0.848121, -0.495731,
		0.957237, 0.043825, -0.285965,
		37.201073, 41.264523, 48.923485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480686, 41.469559, 48.358910>,  <36.531006, 41.233845, 49.123661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480686, 41.469559, 48.358910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.837902, 41.300827, 48.421581>,  <37.052231, 41.199589, 48.459183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.837902, 41.300827, 48.421581>,  <36.480686, 41.469559, 48.358910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837902, 41.300827, 48.421581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070471, -0.474994, -0.877163,
		0.444434, 0.772296, -0.453913,
		0.893036, -0.421828, 0.156679,
		37.105812, 41.174278, 48.468586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689148, 41.419891, 47.690773>,  <36.480686, 41.469559, 48.358910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689148, 41.419891, 47.690773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.959980, 41.200909, 47.887486>,  <37.122478, 41.069519, 48.005512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.959980, 41.200909, 47.887486>,  <36.689148, 41.419891, 47.690773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959980, 41.200909, 47.887486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146238, -0.554849, -0.818998,
		0.721232, 0.626446, -0.295619,
		0.677081, -0.547456, 0.491785,
		37.163105, 41.036671, 48.035023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216862, 41.376518, 47.201672>,  <36.689148, 41.419891, 47.690773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216862, 41.376518, 47.201672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.274830, 41.086102, 47.470554>,  <37.309612, 40.911850, 47.631886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.274830, 41.086102, 47.470554>,  <37.216862, 41.376518, 47.201672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274830, 41.086102, 47.470554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293219, -0.617346, -0.730005,
		0.944998, 0.302897, 0.123423,
		0.144921, -0.726043, 0.672205,
		37.318306, 40.868290, 47.672215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919476, 41.202900, 47.061764>,  <37.216862, 41.376518, 47.201672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919476, 41.202900, 47.061764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.722298, 40.901340, 47.235497>,  <37.603992, 40.720406, 47.339737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.722298, 40.901340, 47.235497>,  <37.919476, 41.202900, 47.061764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722298, 40.901340, 47.235497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204017, -0.585434, -0.784630,
		0.845803, -0.298169, 0.442395,
		-0.492945, -0.753899, 0.434330,
		37.574413, 40.675171, 47.365795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348530, 40.574245, 47.141560>,  <37.919476, 41.202900, 47.061764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348530, 40.574245, 47.141560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.962330, 40.477257, 47.103554>,  <37.730610, 40.419064, 47.080750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.962330, 40.477257, 47.103554>,  <38.348530, 40.574245, 47.141560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962330, 40.477257, 47.103554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220696, -0.568127, -0.792796,
		0.138247, -0.786410, 0.602035,
		-0.965495, -0.242468, -0.095016,
		37.672680, 40.404518, 47.075050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338791, 39.868935, 46.875767>,  <38.348530, 40.574245, 47.141560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338791, 39.868935, 46.875767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.998650, 40.043930, 46.758808>,  <37.794563, 40.148930, 46.688633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.998650, 40.043930, 46.758808>,  <38.338791, 39.868935, 46.875767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998650, 40.043930, 46.758808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145348, -0.338768, -0.929575,
		-0.505738, -0.832968, 0.224484,
		-0.850355, 0.437494, -0.292398,
		37.743542, 40.175179, 46.671089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099072, 39.391800, 46.443523>,  <38.338791, 39.868935, 46.875767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099072, 39.391800, 46.443523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.862175, 39.695072, 46.334408>,  <37.720039, 39.877037, 46.268940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.862175, 39.695072, 46.334408>,  <38.099072, 39.391800, 46.443523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862175, 39.695072, 46.334408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001571, -0.339635, -0.940556,
		-0.805761, -0.556606, 0.202336,
		-0.592239, 0.758181, -0.272790,
		37.684502, 39.922527, 46.252571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580223, 39.165569, 46.034687>,  <38.099072, 39.391800, 46.443523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580223, 39.165569, 46.034687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.623234, 39.552025, 45.940865>,  <37.649040, 39.783897, 45.884571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.623234, 39.552025, 45.940865>,  <37.580223, 39.165569, 46.034687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623234, 39.552025, 45.940865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044828, -0.240398, -0.969639,
		-0.993191, 0.093746, -0.069159,
		0.107526, 0.966137, -0.234559,
		37.655491, 39.841866, 45.870499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259033, 39.188164, 45.544804>,  <37.580223, 39.165569, 46.034687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259033, 39.188164, 45.544804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.412037, 39.552124, 45.480591>,  <37.503838, 39.770500, 45.442062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.412037, 39.552124, 45.480591>,  <37.259033, 39.188164, 45.544804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412037, 39.552124, 45.480591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035116, -0.159301, -0.986605,
		-0.923285, 0.383020, -0.028981,
		0.382506, 0.909900, -0.160531,
		37.526791, 39.825092, 45.432430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894123, 39.552940, 45.037930>,  <37.259033, 39.188164, 45.544804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894123, 39.552940, 45.037930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.243248, 39.747906, 45.027973>,  <37.452724, 39.864887, 45.021999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.243248, 39.747906, 45.027973>,  <36.894123, 39.552940, 45.037930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243248, 39.747906, 45.027973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046828, -0.134404, -0.989820,
		-0.485800, 0.862764, -0.140134,
		0.872815, 0.487416, -0.024892,
		37.505093, 39.894131, 45.020504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807034, 40.026669, 44.460426>,  <36.894123, 39.552940, 45.037930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807034, 40.026669, 44.460426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202026, 40.002609, 44.518749>,  <37.439022, 39.988174, 44.553745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202026, 40.002609, 44.518749>,  <36.807034, 40.026669, 44.460426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202026, 40.002609, 44.518749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119270, -0.320178, -0.939820,
		0.103213, 0.945446, -0.308996,
		0.987483, -0.060148, 0.145810,
		37.498272, 39.984566, 44.562492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133804, 40.344727, 43.969868>,  <36.807034, 40.026669, 44.460426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133804, 40.344727, 43.969868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.425156, 40.098728, 44.090698>,  <37.599968, 39.951130, 44.163197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.425156, 40.098728, 44.090698>,  <37.133804, 40.344727, 43.969868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425156, 40.098728, 44.090698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157553, -0.278725, -0.947359,
		0.666815, 0.737628, -0.106123,
		0.728378, -0.614994, 0.302073,
		37.643669, 39.914230, 44.181320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718586, 40.503960, 43.530499>,  <37.133804, 40.344727, 43.969868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718586, 40.503960, 43.530499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.748676, 40.140354, 43.694469>,  <37.766731, 39.922192, 43.792854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.748676, 40.140354, 43.694469>,  <37.718586, 40.503960, 43.530499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748676, 40.140354, 43.694469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037615, -0.408214, -0.912111,
		0.996457, 0.084037, 0.003483,
		0.075229, -0.909010, 0.409929,
		37.771244, 39.867653, 43.817448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178940, 40.206364, 43.229385>,  <37.718586, 40.503960, 43.530499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178940, 40.206364, 43.229385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.007278, 39.879993, 43.384354>,  <37.904282, 39.684174, 43.477333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.007278, 39.879993, 43.384354>,  <38.178940, 40.206364, 43.229385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007278, 39.879993, 43.384354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137961, -0.483109, -0.864623,
		0.892631, -0.317611, 0.319895,
		-0.429158, -0.815922, 0.387420,
		37.878532, 39.635216, 43.500580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533173, 39.722363, 42.837757>,  <38.178940, 40.206364, 43.229385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533173, 39.722363, 42.837757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.217731, 39.518429, 42.975262>,  <38.028465, 39.396069, 43.057762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.217731, 39.518429, 42.975262>,  <38.533173, 39.722363, 42.837757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217731, 39.518429, 42.975262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222582, -0.284451, -0.932494,
		0.573200, -0.811885, 0.110840,
		-0.788606, -0.509834, 0.343759,
		37.981152, 39.365479, 43.078388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.616096, 40.906410, 31.316561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.300022, 40.752941, 31.125391>,  <40.110378, 40.660862, 31.010689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.300022, 40.752941, 31.125391>,  <40.616096, 40.906410, 31.316561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300022, 40.752941, 31.125391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400405, -0.913555, 0.071368,
		-0.463991, -0.134969, 0.875497,
		-0.790182, -0.383668, -0.477923,
		40.062969, 40.637840, 30.982014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593964, 40.322338, 31.721672>,  <40.616096, 40.906410, 31.316561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593964, 40.322338, 31.721672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.360538, 40.271637, 31.400827>,  <40.220482, 40.241219, 31.208321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.360538, 40.271637, 31.400827>,  <40.593964, 40.322338, 31.721672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360538, 40.271637, 31.400827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405388, -0.901334, -0.152504,
		-0.703642, -0.414163, 0.577370,
		-0.583565, -0.126751, -0.802113,
		40.185471, 40.233612, 31.160192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198341, 39.686676, 31.898394>,  <40.593964, 40.322338, 31.721672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198341, 39.686676, 31.898394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.221882, 39.759827, 31.505844>,  <40.236004, 39.803719, 31.270315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.221882, 39.759827, 31.505844>,  <40.198341, 39.686676, 31.898394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221882, 39.759827, 31.505844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265295, -0.950591, -0.161231,
		-0.962370, -0.250866, -0.104457,
		0.058849, 0.182876, -0.981373,
		40.239536, 39.814690, 31.211432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029785, 39.098831, 31.628254>,  <40.198341, 39.686676, 31.898394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029785, 39.098831, 31.628254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.200577, 39.257015, 31.302971>,  <40.303051, 39.351925, 31.107801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.200577, 39.257015, 31.302971>,  <40.029785, 39.098831, 31.628254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200577, 39.257015, 31.302971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360525, -0.899184, -0.247970,
		-0.829283, -0.187303, -0.526505,
		0.426980, 0.395455, -0.813206,
		40.328671, 39.375652, 31.059010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008698, 38.554436, 31.075045>,  <40.029785, 39.098831, 31.628254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008698, 38.554436, 31.075045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.320702, 38.776157, 30.958883>,  <40.507904, 38.909191, 30.889187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.320702, 38.776157, 30.958883>,  <40.008698, 38.554436, 31.075045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320702, 38.776157, 30.958883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459223, -0.822288, -0.336091,
		-0.425094, 0.128793, -0.895940,
		0.780006, 0.554306, -0.290405,
		40.554703, 38.942448, 30.871761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203007, 38.248100, 30.411491>,  <40.008698, 38.554436, 31.075045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203007, 38.248100, 30.411491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.523003, 38.437546, 30.558840>,  <40.715000, 38.551212, 30.647249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.523003, 38.437546, 30.558840>,  <40.203007, 38.248100, 30.411491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523003, 38.437546, 30.558840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576637, -0.776562, -0.253854,
		0.165833, 0.415498, -0.894349,
		0.799993, 0.473617, 0.368371,
		40.763000, 38.579632, 30.669352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707455, 38.166561, 29.884205>,  <40.203007, 38.248100, 30.411491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707455, 38.166561, 29.884205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.886711, 38.275589, 30.224764>,  <40.994263, 38.341007, 30.429100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.886711, 38.275589, 30.224764>,  <40.707455, 38.166561, 29.884205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886711, 38.275589, 30.224764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736889, -0.651835, -0.179181,
		0.506130, 0.707683, -0.492968,
		0.448137, 0.272574, 0.851397,
		41.021152, 38.357361, 30.480183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419418, 38.206825, 29.756445>,  <40.707455, 38.166561, 29.884205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419418, 38.206825, 29.756445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.373589, 38.155342, 30.150461>,  <41.346092, 38.124451, 30.386871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.373589, 38.155342, 30.150461>,  <41.419418, 38.206825, 29.756445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373589, 38.155342, 30.150461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706150, -0.707986, -0.010373,
		0.698731, 0.694399, 0.172002,
		-0.114572, -0.128707, 0.985042,
		41.339218, 38.116730, 30.445974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023033, 37.928707, 29.949907>,  <41.419418, 38.206825, 29.756445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023033, 37.928707, 29.949907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.846848, 37.884510, 30.306286>,  <41.741138, 37.857990, 30.520113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.846848, 37.884510, 30.306286>,  <42.023033, 37.928707, 29.949907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846848, 37.884510, 30.306286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666152, -0.705521, 0.241831,
		0.601859, 0.700023, 0.384361,
		-0.440462, -0.110495, 0.890946,
		41.714710, 37.851360, 30.573570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558201, 37.861050, 30.395664>,  <42.023033, 37.928707, 29.949907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558201, 37.861050, 30.395664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.250740, 37.684437, 30.580801>,  <42.066261, 37.578468, 30.691883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.250740, 37.684437, 30.580801>,  <42.558201, 37.861050, 30.395664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250740, 37.684437, 30.580801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560167, -0.813980, 0.153783,
		0.308843, 0.377474, 0.873000,
		-0.768654, -0.441531, 0.462841,
		42.020145, 37.551979, 30.719654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846195, 37.563984, 31.075716>,  <42.558201, 37.861050, 30.395664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846195, 37.563984, 31.075716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.509747, 37.368481, 30.983076>,  <42.307877, 37.251179, 30.927492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.509747, 37.368481, 30.983076>,  <42.846195, 37.563984, 31.075716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509747, 37.368481, 30.983076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472246, -0.872414, 0.126002,
		-0.263633, -0.003389, 0.964617,
		-0.841119, -0.488755, -0.231598,
		42.257412, 37.221855, 30.913597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790009, 37.032043, 31.579813>,  <42.846195, 37.563984, 31.075716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790009, 37.032043, 31.579813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.559361, 36.919273, 31.273081>,  <42.420971, 36.851612, 31.089041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.559361, 36.919273, 31.273081>,  <42.790009, 37.032043, 31.579813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.559361, 36.919273, 31.273081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393640, -0.918322, 0.041624,
		-0.715934, -0.277855, 0.640496,
		-0.576617, -0.281925, -0.766832,
		42.386375, 36.834698, 31.043032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484089, 36.444267, 31.770023>,  <42.790009, 37.032043, 31.579813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484089, 36.444267, 31.770023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.452282, 36.396175, 31.374201>,  <42.433197, 36.367321, 31.136707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.452282, 36.396175, 31.374201>,  <42.484089, 36.444267, 31.770023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452282, 36.396175, 31.374201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272477, -0.957516, 0.094438,
		-0.958871, -0.262122, 0.108899,
		-0.079519, -0.120226, -0.989557,
		42.428425, 36.360107, 31.077333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256329, 35.910259, 31.810350>,  <42.484089, 36.444267, 31.770023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256329, 35.910259, 31.810350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.354305, 35.879253, 31.423777>,  <42.413094, 35.860649, 31.191832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.354305, 35.879253, 31.423777>,  <42.256329, 35.910259, 31.810350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354305, 35.879253, 31.423777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207086, -0.969613, 0.130252,
		-0.947163, -0.232040, -0.221451,
		0.244945, -0.077510, -0.966434,
		42.427788, 35.855999, 31.133846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902607, 35.331627, 31.549700>,  <42.256329, 35.910259, 31.810350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902607, 35.331627, 31.549700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.165951, 35.354614, 31.249496>,  <42.323956, 35.368404, 31.069374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.165951, 35.354614, 31.249496>,  <41.902607, 35.331627, 31.549700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165951, 35.354614, 31.249496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304167, -0.932356, 0.195433,
		-0.688510, -0.356945, -0.631304,
		0.658359, 0.057465, -0.750507,
		42.363457, 35.371853, 31.024343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759472, 34.786747, 31.092041>,  <41.902607, 35.331627, 31.549700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759472, 34.786747, 31.092041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.138832, 34.898724, 31.032475>,  <42.366447, 34.965912, 30.996735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.138832, 34.898724, 31.032475>,  <41.759472, 34.786747, 31.092041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138832, 34.898724, 31.032475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306837, -0.928686, 0.208310,
		-0.079979, -0.243253, -0.966660,
		0.948396, 0.279946, -0.148914,
		42.423351, 34.982708, 30.987801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046780, 34.231239, 30.664110>,  <41.759472, 34.786747, 31.092041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046780, 34.231239, 30.664110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.353294, 34.441906, 30.811314>,  <42.537205, 34.568306, 30.899635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.353294, 34.441906, 30.811314>,  <42.046780, 34.231239, 30.664110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353294, 34.441906, 30.811314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459782, -0.849585, 0.258469,
		0.448781, -0.028858, -0.893176,
		0.766288, 0.526662, 0.368009,
		42.583179, 34.599903, 30.921717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681728, 33.895519, 30.490152>,  <42.046780, 34.231239, 30.664110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681728, 33.895519, 30.490152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.793045, 34.136959, 30.789007>,  <42.859837, 34.281822, 30.968321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.793045, 34.136959, 30.789007>,  <42.681728, 33.895519, 30.490152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.793045, 34.136959, 30.789007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572963, -0.728637, 0.375236,
		0.770886, 0.323656, -0.548618,
		0.278295, 0.603602, 0.747139,
		42.876534, 34.318039, 31.013149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.437908, 33.847321, 30.570074>,  <42.681728, 33.895519, 30.490152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.437908, 33.847321, 30.570074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.308365, 33.958088, 30.931944>,  <43.230640, 34.024548, 31.149065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.308365, 33.958088, 30.931944>,  <43.437908, 33.847321, 30.570074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308365, 33.958088, 30.931944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624554, -0.655682, 0.424280,
		0.710670, 0.702422, 0.039394,
		-0.323854, 0.276920, 0.904673,
		43.211208, 34.041164, 31.203346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065598, 33.887699, 30.998598>,  <43.437908, 33.847321, 30.570074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065598, 33.887699, 30.998598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.765636, 33.876240, 31.262968>,  <43.585659, 33.869366, 31.421589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.765636, 33.876240, 31.262968>,  <44.065598, 33.887699, 30.998598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765636, 33.876240, 31.262968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426435, -0.784731, 0.449833,
		0.505760, 0.619173, 0.600692,
		-0.749906, -0.028649, 0.660923,
		43.540665, 33.867645, 31.461245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372570, 33.936016, 31.678555>,  <44.065598, 33.887699, 30.998598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372570, 33.936016, 31.678555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.012630, 33.764168, 31.708738>,  <43.796665, 33.661060, 31.726849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.012630, 33.764168, 31.708738>,  <44.372570, 33.936016, 31.678555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012630, 33.764168, 31.708738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423081, -0.817526, 0.390710,
		-0.106168, 0.383506, 0.917415,
		-0.899850, -0.429622, 0.075459,
		43.742676, 33.635281, 31.731377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.924461, 34.309540, 32.268776>,  <44.372570, 33.936016, 31.678555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.924461, 34.309540, 32.268776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.093086, 34.289070, 32.630917>,  <45.194263, 34.276787, 32.848202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.093086, 34.289070, 32.630917>,  <44.924461, 34.309540, 32.268776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.093086, 34.289070, 32.630917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436742, 0.863518, 0.252176,
		-0.794695, -0.501714, 0.341677,
		0.421565, -0.051178, 0.905353,
		45.219555, 34.273716, 32.902523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.357216, 34.416489, 32.738075>,  <44.924461, 34.309540, 32.268776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.357216, 34.416489, 32.738075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.700207, 34.538715, 32.903656>,  <44.906002, 34.612053, 33.003006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.700207, 34.538715, 32.903656>,  <44.357216, 34.416489, 32.738075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700207, 34.538715, 32.903656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327583, 0.944637, -0.018731,
		-0.396758, -0.119542, 0.910106,
		0.857480, 0.305567, 0.413952,
		44.957451, 34.630386, 33.027840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.207561, 34.760571, 33.347443>,  <44.357216, 34.416489, 32.738075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.207561, 34.760571, 33.347443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.578766, 34.881931, 33.260960>,  <44.801487, 34.954746, 33.209068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.578766, 34.881931, 33.260960>,  <44.207561, 34.760571, 33.347443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.578766, 34.881931, 33.260960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284781, 0.951862, 0.113400,
		0.240209, -0.043663, 0.969739,
		0.928009, 0.303402, -0.216212,
		44.857170, 34.972954, 33.196095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.367992, 35.283276, 33.897915>,  <44.207561, 34.760571, 33.347443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.367992, 35.283276, 33.897915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.614063, 35.326504, 33.585537>,  <44.761707, 35.352440, 33.398109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.614063, 35.326504, 33.585537>,  <44.367992, 35.283276, 33.897915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.614063, 35.326504, 33.585537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153363, 0.988042, 0.015919,
		0.773329, 0.109975, 0.624394,
		0.615177, 0.108070, -0.780947,
		44.798615, 35.358925, 33.351254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.954453, 35.548325, 34.207802>,  <44.367992, 35.283276, 33.897915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.954453, 35.548325, 34.207802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.955875, 35.630817, 33.816402>,  <44.956730, 35.680313, 33.581562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.955875, 35.630817, 33.816402>,  <44.954453, 35.548325, 34.207802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.955875, 35.630817, 33.816402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015431, 0.978375, 0.206260,
		0.999875, -0.015833, 0.000301,
		0.003560, 0.206229, -0.978497,
		44.956944, 35.692688, 33.522854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.367577, 36.203461, 34.177460>,  <44.954453, 35.548325, 34.207802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.367577, 36.203461, 34.177460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.193268, 36.176548, 33.818443>,  <45.088684, 36.160400, 33.603035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.193268, 36.176548, 33.818443>,  <45.367577, 36.203461, 34.177460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193268, 36.176548, 33.818443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051660, 0.993689, -0.099571,
		0.898573, -0.089758, -0.429547,
		-0.435773, -0.067281, -0.897539,
		45.062534, 36.156364, 33.549183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.732483, 36.605373, 33.763546>,  <45.367577, 36.203461, 34.177460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.732483, 36.605373, 33.763546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.382622, 36.589287, 33.570312>,  <45.172707, 36.579636, 33.454372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.382622, 36.589287, 33.570312>,  <45.732483, 36.605373, 33.763546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.382622, 36.589287, 33.570312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042508, 0.986350, -0.159083,
		0.482884, -0.159678, -0.861003,
		-0.874652, -0.040219, -0.483080,
		45.120228, 36.577221, 33.425388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.837814, 37.178860, 33.307449>,  <45.732483, 36.605373, 33.763546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.837814, 37.178860, 33.307449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.447826, 37.090275, 33.299603>,  <45.213833, 37.037125, 33.294895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.447826, 37.090275, 33.299603>,  <45.837814, 37.178860, 33.307449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.447826, 37.090275, 33.299603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216260, 0.965128, -0.147514,
		0.051604, -0.139579, -0.988865,
		-0.974971, -0.221465, -0.019619,
		45.155334, 37.023834, 33.293716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.586063, 37.625378, 32.777443>,  <45.837814, 37.178860, 33.307449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.586063, 37.625378, 32.777443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.272675, 37.509827, 32.997524>,  <45.084641, 37.440498, 33.129574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.272675, 37.509827, 32.997524>,  <45.586063, 37.625378, 32.777443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.272675, 37.509827, 32.997524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462071, 0.862833, -0.204963,
		-0.415522, -0.414815, -0.809487,
		-0.783474, -0.288874, 0.550200,
		45.037632, 37.423164, 33.162586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.927525, 37.787296, 32.387817>,  <45.586063, 37.625378, 32.777443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.927525, 37.787296, 32.387817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.806446, 37.764297, 32.768356>,  <44.733799, 37.750496, 32.996681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.806446, 37.764297, 32.768356>,  <44.927525, 37.787296, 32.387817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806446, 37.764297, 32.768356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578982, 0.803981, -0.135625,
		-0.757071, -0.591868, -0.276651,
		-0.302695, -0.057499, 0.951352,
		44.715637, 37.747047, 33.053761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.212181, 37.882492, 32.298576>,  <44.927525, 37.787296, 32.387817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.212181, 37.882492, 32.298576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.287319, 37.939499, 32.687298>,  <44.332401, 37.973701, 32.920532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.287319, 37.939499, 32.687298>,  <44.212181, 37.882492, 32.298576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.287319, 37.939499, 32.687298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652699, 0.757467, 0.015083,
		-0.733960, -0.637128, 0.235309,
		0.187848, 0.142516, 0.971803,
		44.343674, 37.982254, 32.978840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570580, 37.784538, 32.738297>,  <44.212181, 37.882492, 32.298576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570580, 37.784538, 32.738297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.813622, 38.037022, 32.931126>,  <43.959446, 38.188511, 33.046822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.813622, 38.037022, 32.931126>,  <43.570580, 37.784538, 32.738297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813622, 38.037022, 32.931126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723446, 0.690335, 0.007941,
		-0.327776, -0.353576, 0.876097,
		0.607609, 0.631207, 0.482069,
		43.995903, 38.226383, 33.075745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218121, 38.205410, 33.265633>,  <43.570580, 37.784538, 32.738297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218121, 38.205410, 33.265633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.546638, 38.428375, 33.217022>,  <43.743748, 38.562153, 33.187855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.546638, 38.428375, 33.217022>,  <43.218121, 38.205410, 33.265633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.546638, 38.428375, 33.217022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568193, 0.818349, -0.086381,
		0.051300, 0.139994, 0.988822,
		0.821295, 0.557411, -0.121525,
		43.793026, 38.595600, 33.180565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327366, 38.683769, 33.861179>,  <43.218121, 38.205410, 33.265633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327366, 38.683769, 33.861179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.520737, 38.842720, 33.549183>,  <43.636757, 38.938091, 33.361984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.520737, 38.842720, 33.549183>,  <43.327366, 38.683769, 33.861179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520737, 38.842720, 33.549183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607795, 0.793614, 0.027614,
		0.629988, 0.460728, 0.625176,
		0.483425, 0.397375, -0.779995,
		43.665764, 38.961933, 33.315186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.390480, 39.445641, 34.018711>,  <43.327366, 38.683769, 33.861179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.390480, 39.445641, 34.018711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.443420, 39.413513, 33.623535>,  <43.475185, 39.394238, 33.386429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.443420, 39.413513, 33.623535>,  <43.390480, 39.445641, 34.018711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443420, 39.413513, 33.623535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583896, 0.799101, -0.143190,
		0.800967, 0.595808, 0.058864,
		0.132352, -0.080320, -0.987943,
		43.483128, 39.389416, 33.327152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317081, 40.086979, 33.805569>,  <43.390480, 39.445641, 34.018711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.317081, 40.086979, 33.805569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.294281, 39.902885, 33.451183>,  <43.280602, 39.792427, 33.238552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.294281, 39.902885, 33.451183>,  <43.317081, 40.086979, 33.805569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.294281, 39.902885, 33.451183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495899, 0.783248, -0.374976,
		0.866508, 0.417977, -0.272874,
		-0.056997, -0.460238, -0.885964,
		43.277184, 39.764812, 33.185394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570580, 40.551521, 33.329090>,  <43.317081, 40.086979, 33.805569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570580, 40.551521, 33.329090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.321407, 40.307522, 33.133186>,  <43.171906, 40.161121, 33.015644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.321407, 40.307522, 33.133186>,  <43.570580, 40.551521, 33.329090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321407, 40.307522, 33.133186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423537, 0.789353, -0.444452,
		0.657707, -0.069431, -0.750067,
		-0.622927, -0.610001, -0.489756,
		43.134529, 40.124523, 32.986259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664303, 40.751911, 32.565449>,  <43.570580, 40.551521, 33.329090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.664303, 40.751911, 32.565449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.322697, 40.556080, 32.635849>,  <43.117733, 40.438583, 32.678089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.322697, 40.556080, 32.635849>,  <43.664303, 40.751911, 32.565449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.322697, 40.556080, 32.635849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500156, 0.679516, -0.536751,
		0.143186, -0.546420, -0.825180,
		-0.854015, -0.489574, 0.175998,
		43.066494, 40.409206, 32.688648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251930, 40.979671, 32.081219>,  <43.664303, 40.751911, 32.565449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251930, 40.979671, 32.081219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.970528, 40.829407, 32.322536>,  <42.801685, 40.739246, 32.467327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.970528, 40.829407, 32.322536>,  <43.251930, 40.979671, 32.081219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970528, 40.829407, 32.322536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692846, 0.551552, -0.464494,
		-0.158254, -0.744761, -0.648295,
		-0.703505, -0.375661, 0.603290,
		42.759476, 40.716709, 32.503525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829491, 40.631672, 31.696598>,  <43.251930, 40.979671, 32.081219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829491, 40.631672, 31.696598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.590908, 40.714630, 32.006752>,  <42.447758, 40.764404, 32.192844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.590908, 40.714630, 32.006752>,  <42.829491, 40.631672, 31.696598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590908, 40.714630, 32.006752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634653, 0.469546, -0.613793,
		-0.491379, -0.858203, -0.148438,
		-0.596458, 0.207399, 0.775386,
		42.411972, 40.776848, 32.239368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216145, 40.370911, 31.546005>,  <42.829491, 40.631672, 31.696598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216145, 40.370911, 31.546005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.153816, 40.661690, 31.813519>,  <42.116421, 40.836155, 31.974028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.153816, 40.661690, 31.813519>,  <42.216145, 40.370911, 31.546005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153816, 40.661690, 31.813519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738171, 0.364202, -0.567856,
		-0.656373, -0.582159, 0.479860,
		-0.155816, 0.726944, 0.668785,
		42.107071, 40.879772, 32.014153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.677742, 39.025188, 38.307846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655487, 38.660648, 38.470985>,  <40.642136, 38.441925, 38.568871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655487, 38.660648, 38.470985>,  <40.677742, 39.025188, 38.307846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655487, 38.660648, 38.470985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199878, -0.410380, -0.889740,
		0.978240, 0.032019, 0.204992,
		-0.055636, -0.911352, 0.407850,
		40.638798, 38.387241, 38.593342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288979, 38.695137, 38.132584>,  <40.677742, 39.025188, 38.307846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288979, 38.695137, 38.132584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017002, 38.415813, 38.222073>,  <40.853817, 38.248219, 38.275764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017002, 38.415813, 38.222073>,  <41.288979, 38.695137, 38.132584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017002, 38.415813, 38.222073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255629, -0.511698, -0.820256,
		0.687268, -0.500533, 0.526430,
		-0.679938, -0.698307, 0.223723,
		40.813019, 38.206322, 38.289188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665588, 38.003883, 38.173229>,  <41.288979, 38.695137, 38.132584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665588, 38.003883, 38.173229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272114, 37.954132, 38.121254>,  <41.036030, 37.924282, 38.090069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272114, 37.954132, 38.121254>,  <41.665588, 38.003883, 38.173229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272114, 37.954132, 38.121254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179385, -0.625169, -0.759596,
		0.013247, -0.770515, 0.637284,
		-0.983690, -0.124382, -0.129937,
		40.977005, 37.916817, 38.082272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642281, 37.224476, 38.007637>,  <41.665588, 38.003883, 38.173229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642281, 37.224476, 38.007637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292393, 37.378437, 37.889843>,  <41.082462, 37.470814, 37.819168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292393, 37.378437, 37.889843>,  <41.642281, 37.224476, 38.007637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292393, 37.378437, 37.889843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057497, -0.520928, -0.851662,
		-0.481203, -0.761898, 0.433537,
		-0.874722, 0.384895, -0.294480,
		41.029976, 37.493908, 37.801498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275436, 36.603882, 37.699902>,  <41.642281, 37.224476, 38.007637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275436, 36.603882, 37.699902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115612, 36.945637, 37.567013>,  <41.019718, 37.150688, 37.487278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115612, 36.945637, 37.567013>,  <41.275436, 36.603882, 37.699902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115612, 36.945637, 37.567013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133586, -0.412811, -0.900967,
		-0.906919, -0.315614, 0.279079,
		-0.399565, 0.854385, -0.332225,
		40.995743, 37.201954, 37.467346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648830, 36.466740, 37.364285>,  <41.275436, 36.603882, 37.699902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648830, 36.466740, 37.364285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704205, 36.830856, 37.208229>,  <40.737431, 37.049328, 37.114597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704205, 36.830856, 37.208229>,  <40.648830, 36.466740, 37.364285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704205, 36.830856, 37.208229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364703, -0.319392, -0.874632,
		-0.920775, 0.263364, 0.287770,
		0.138436, 0.910290, -0.390138,
		40.745735, 37.103943, 37.091187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008106, 36.558640, 37.048847>,  <40.648830, 36.466740, 37.364285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008106, 36.558640, 37.048847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316261, 36.770687, 36.907158>,  <40.501156, 36.897915, 36.822144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316261, 36.770687, 36.907158>,  <40.008106, 36.558640, 37.048847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316261, 36.770687, 36.907158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296463, -0.194014, -0.935130,
		-0.564455, 0.825428, 0.007694,
		0.770389, 0.530120, -0.354221,
		40.547379, 36.929722, 36.800892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689331, 37.020706, 36.494602>,  <40.008106, 36.558640, 37.048847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689331, 37.020706, 36.494602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075592, 37.019848, 36.390675>,  <40.307350, 37.019333, 36.328320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075592, 37.019848, 36.390675>,  <39.689331, 37.020706, 36.494602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075592, 37.019848, 36.390675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247365, -0.313572, -0.916779,
		-0.079509, 0.949562, -0.303332,
		0.965655, -0.002141, -0.259820,
		40.365288, 37.019207, 36.312729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640011, 37.139606, 35.913708>,  <39.689331, 37.020706, 36.494602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640011, 37.139606, 35.913708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017090, 37.006229, 35.918465>,  <40.243336, 36.926205, 35.921318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017090, 37.006229, 35.918465>,  <39.640011, 37.139606, 35.913708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017090, 37.006229, 35.918465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153690, -0.465595, -0.871551,
		0.296149, 0.819779, -0.490161,
		0.942696, -0.333442, 0.011894,
		40.299900, 36.906197, 35.922031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995758, 37.274818, 35.228123>,  <39.640011, 37.139606, 35.913708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995758, 37.274818, 35.228123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211273, 36.974907, 35.381763>,  <40.340580, 36.794960, 35.473949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211273, 36.974907, 35.381763>,  <39.995758, 37.274818, 35.228123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211273, 36.974907, 35.381763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088398, -0.403107, -0.910873,
		0.837792, 0.524720, -0.150909,
		0.538786, -0.749782, 0.384104,
		40.372910, 36.749973, 35.496994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661037, 37.141605, 34.726818>,  <39.995758, 37.274818, 35.228123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661037, 37.141605, 34.726818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626884, 36.810913, 34.949249>,  <40.606392, 36.612495, 35.082706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626884, 36.810913, 34.949249>,  <40.661037, 37.141605, 34.726818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626884, 36.810913, 34.949249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064361, -0.561526, -0.824952,
		0.994267, -0.034647, 0.101154,
		-0.085383, -0.826733, 0.556077,
		40.601269, 36.562893, 35.116074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194328, 36.685734, 34.493046>,  <40.661037, 37.141605, 34.726818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194328, 36.685734, 34.493046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920059, 36.445580, 34.657673>,  <40.755497, 36.301487, 34.756447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920059, 36.445580, 34.657673>,  <41.194328, 36.685734, 34.493046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920059, 36.445580, 34.657673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040501, -0.595998, -0.801964,
		0.726783, -0.533216, 0.432976,
		-0.685672, -0.600389, 0.411565,
		40.714359, 36.265461, 34.781143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411228, 35.964367, 34.550995>,  <41.194328, 36.685734, 34.493046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411228, 35.964367, 34.550995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012493, 35.948235, 34.523602>,  <40.773251, 35.938557, 34.507164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012493, 35.948235, 34.523602>,  <41.411228, 35.964367, 34.550995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012493, 35.948235, 34.523602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077189, -0.696487, -0.713405,
		-0.018928, -0.716435, 0.697397,
		-0.996837, -0.040328, -0.068484,
		40.713444, 35.936138, 34.503056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209396, 35.332401, 34.072922>,  <41.411228, 35.964367, 34.550995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209396, 35.332401, 34.072922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461098, 35.087517, 34.264435>,  <41.612118, 34.940586, 34.379345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461098, 35.087517, 34.264435>,  <41.209396, 35.332401, 34.072922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461098, 35.087517, 34.264435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501315, 0.151030, 0.851982,
		-0.593904, -0.776136, -0.211874,
		0.629255, -0.612211, 0.478786,
		41.649876, 34.903854, 34.408070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958836, 35.237595, 34.822693>,  <41.209396, 35.332401, 34.072922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958836, 35.237595, 34.822693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261250, 34.975998, 34.833344>,  <41.442696, 34.819038, 34.839733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261250, 34.975998, 34.833344>,  <40.958836, 35.237595, 34.822693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261250, 34.975998, 34.833344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149075, -0.132441, 0.979916,
		-0.637333, -0.744817, -0.197624,
		0.756032, -0.653994, 0.026624,
		41.488060, 34.779800, 34.841331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741013, 34.786613, 35.326626>,  <40.958836, 35.237595, 34.822693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741013, 34.786613, 35.326626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125435, 34.680115, 35.297024>,  <41.356091, 34.616215, 35.279263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125435, 34.680115, 35.297024>,  <40.741013, 34.786613, 35.326626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125435, 34.680115, 35.297024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001983, -0.261150, 0.965296,
		-0.276346, -0.927850, -0.250452,
		0.961056, -0.266259, -0.074007,
		41.413754, 34.600239, 35.274822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730629, 34.400341, 35.814743>,  <40.741013, 34.786613, 35.326626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730629, 34.400341, 35.814743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110069, 34.514534, 35.760105>,  <41.337734, 34.583050, 35.727322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110069, 34.514534, 35.760105>,  <40.730629, 34.400341, 35.814743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110069, 34.514534, 35.760105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177032, -0.120904, 0.976751,
		0.262333, -0.950726, -0.165229,
		0.948600, 0.285485, -0.136591,
		41.394650, 34.600178, 35.719128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050835, 34.009823, 36.300789>,  <40.730629, 34.400341, 35.814743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050835, 34.009823, 36.300789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322445, 34.296467, 36.237038>,  <41.485409, 34.468452, 36.198788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322445, 34.296467, 36.237038>,  <41.050835, 34.009823, 36.300789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322445, 34.296467, 36.237038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263864, -0.035646, 0.963901,
		0.685059, -0.696564, -0.213292,
		0.679021, 0.716609, -0.159378,
		41.526150, 34.511448, 36.189224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707592, 33.803085, 36.622910>,  <41.050835, 34.009823, 36.300789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707592, 33.803085, 36.622910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737301, 34.200459, 36.588078>,  <41.755127, 34.438881, 36.567177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737301, 34.200459, 36.588078>,  <41.707592, 33.803085, 36.622910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737301, 34.200459, 36.588078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199370, 0.070770, 0.977365,
		0.977106, -0.089950, -0.192804,
		0.074270, 0.993429, -0.087084,
		41.759583, 34.498486, 36.561951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318729, 34.075325, 36.976467>,  <41.707592, 33.803085, 36.622910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318729, 34.075325, 36.976467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115688, 34.418892, 36.949345>,  <41.993866, 34.625034, 36.933071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115688, 34.418892, 36.949345>,  <42.318729, 34.075325, 36.976467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115688, 34.418892, 36.949345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397299, 0.303174, 0.866163,
		0.764523, 0.412725, -0.495139,
		-0.507601, 0.858920, -0.067808,
		41.963409, 34.676567, 36.929001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697025, 34.462776, 37.371246>,  <42.318729, 34.075325, 36.976467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.697025, 34.462776, 37.371246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397495, 34.719887, 37.306633>,  <42.217777, 34.874153, 37.267864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397495, 34.719887, 37.306633>,  <42.697025, 34.462776, 37.371246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397495, 34.719887, 37.306633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302509, 0.548342, 0.779621,
		0.589698, 0.534938, -0.605060,
		-0.748829, 0.642777, -0.161532,
		42.172848, 34.912720, 37.258175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978237, 35.052574, 37.534382>,  <42.697025, 34.462776, 37.371246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978237, 35.052574, 37.534382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581333, 35.074589, 37.578907>,  <42.343189, 35.087799, 37.605621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581333, 35.074589, 37.578907>,  <42.978237, 35.052574, 37.534382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581333, 35.074589, 37.578907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124012, 0.485290, 0.865514,
		-0.006381, 0.872619, -0.488359,
		-0.992260, 0.055040, 0.111312,
		42.283653, 35.091103, 37.612301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802540, 35.735043, 37.828968>,  <42.978237, 35.052574, 37.534382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802540, 35.735043, 37.828968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478058, 35.519875, 37.920700>,  <42.283367, 35.390774, 37.975739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478058, 35.519875, 37.920700>,  <42.802540, 35.735043, 37.828968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478058, 35.519875, 37.920700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014319, 0.410333, 0.911823,
		-0.584586, 0.736392, -0.340567,
		-0.811206, -0.537915, 0.229330,
		42.234695, 35.358501, 37.989498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374386, 36.173843, 38.238194>,  <42.802540, 35.735043, 37.828968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374386, 36.173843, 38.238194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180504, 35.835632, 38.327763>,  <42.064175, 35.632706, 38.381504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180504, 35.835632, 38.327763>,  <42.374386, 36.173843, 38.238194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180504, 35.835632, 38.327763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185430, 0.349519, 0.918396,
		-0.854794, 0.403633, -0.326202,
		-0.484709, -0.845527, 0.223921,
		42.035091, 35.581974, 38.394939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669964, 36.409824, 38.646976>,  <42.374386, 36.173843, 38.238194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669964, 36.409824, 38.646976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762455, 36.030914, 38.735699>,  <41.817951, 35.803566, 38.788933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762455, 36.030914, 38.735699>,  <41.669964, 36.409824, 38.646976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762455, 36.030914, 38.735699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070323, 0.211118, 0.974927,
		-0.970355, -0.241028, -0.017799,
		0.231227, -0.947277, 0.221809,
		41.831821, 35.746731, 38.802242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114174, 36.123348, 39.126675>,  <41.669964, 36.409824, 38.646976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114174, 36.123348, 39.126675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444527, 35.909668, 39.198830>,  <41.642738, 35.781460, 39.242123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444527, 35.909668, 39.198830>,  <41.114174, 36.123348, 39.126675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444527, 35.909668, 39.198830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089202, 0.192106, 0.977312,
		-0.556736, -0.823239, 0.111005,
		0.825886, -0.534203, 0.180387,
		41.692291, 35.749409, 39.252945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006794, 35.776772, 39.694542>,  <41.114174, 36.123348, 39.126675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006794, 35.776772, 39.694542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406616, 35.784191, 39.685196>,  <41.646511, 35.788643, 39.679588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406616, 35.784191, 39.685196>,  <41.006794, 35.776772, 39.694542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406616, 35.784191, 39.685196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019547, 0.184280, 0.982679,
		0.022534, -0.982699, 0.183835,
		0.999555, 0.018551, -0.023361,
		41.706482, 35.789757, 39.678188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222950, 35.403004, 40.242661>,  <41.006794, 35.776772, 39.694542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222950, 35.403004, 40.242661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550308, 35.609394, 40.141464>,  <41.746723, 35.733227, 40.080746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550308, 35.609394, 40.141464>,  <41.222950, 35.403004, 40.242661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550308, 35.609394, 40.141464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083298, 0.329080, 0.940621,
		0.568592, -0.790870, 0.226336,
		0.818391, 0.515976, -0.252990,
		41.795826, 35.764187, 40.065567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266922, 34.622261, 40.308754>,  <41.222950, 35.403004, 40.242661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266922, 34.622261, 40.308754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029049, 34.411366, 40.551529>,  <40.886326, 34.284828, 40.697193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029049, 34.411366, 40.551529>,  <41.266922, 34.622261, 40.308754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029049, 34.411366, 40.551529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199507, -0.634543, -0.746694,
		0.778811, -0.565137, 0.272166,
		-0.594685, -0.527235, 0.606937,
		40.850643, 34.253197, 40.733612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401077, 33.889797, 40.157303>,  <41.266922, 34.622261, 40.308754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401077, 33.889797, 40.157303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042915, 33.969006, 40.316822>,  <40.828018, 34.016529, 40.412533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042915, 33.969006, 40.316822>,  <41.401077, 33.889797, 40.157303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042915, 33.969006, 40.316822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445136, -0.418774, -0.791506,
		0.010270, -0.886237, 0.463118,
		-0.895404, 0.198022, 0.398797,
		40.774296, 34.028412, 40.436462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952541, 33.293873, 40.098652>,  <41.401077, 33.889797, 40.157303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952541, 33.293873, 40.098652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693699, 33.594193, 40.151649>,  <40.538395, 33.774384, 40.183449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693699, 33.594193, 40.151649>,  <40.952541, 33.293873, 40.098652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693699, 33.594193, 40.151649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529583, -0.317641, -0.786540,
		-0.548453, -0.579136, 0.603159,
		-0.647102, 0.750803, 0.132490,
		40.499569, 33.819435, 40.191395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372368, 33.076664, 39.733620>,  <40.952541, 33.293873, 40.098652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372368, 33.076664, 39.733620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242832, 33.443539, 39.826473>,  <40.165112, 33.663666, 39.882187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242832, 33.443539, 39.826473>,  <40.372368, 33.076664, 39.733620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242832, 33.443539, 39.826473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681043, -0.055676, -0.730124,
		-0.656739, -0.394539, 0.642676,
		-0.323844, 0.917191, 0.232133,
		40.145679, 33.718697, 39.896114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628010, 33.045094, 39.825268>,  <40.372368, 33.076664, 39.733620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628010, 33.045094, 39.825268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734066, 33.415924, 39.719269>,  <39.797699, 33.638424, 39.655670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734066, 33.415924, 39.719269>,  <39.628010, 33.045094, 39.825268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734066, 33.415924, 39.719269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715728, 0.005077, -0.698361,
		-0.646091, 0.374832, 0.664882,
		0.265143, 0.927079, -0.264997,
		39.813610, 33.694046, 39.639771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969177, 33.393299, 39.690731>,  <39.628010, 33.045094, 39.825268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969177, 33.393299, 39.690731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258503, 33.612450, 39.522610>,  <39.432098, 33.743938, 39.421738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258503, 33.612450, 39.522610>,  <38.969177, 33.393299, 39.690731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258503, 33.612450, 39.522610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560607, 0.110545, -0.820670,
		-0.403165, 0.829222, 0.387102,
		0.723311, 0.547878, -0.420300,
		39.475494, 33.776814, 39.396519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596237, 33.975754, 39.316319>,  <38.969177, 33.393299, 39.690731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596237, 33.975754, 39.316319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963017, 34.001156, 39.158749>,  <39.183083, 34.016396, 39.064205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963017, 34.001156, 39.158749>,  <38.596237, 33.975754, 39.316319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963017, 34.001156, 39.158749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398712, 0.107351, -0.910771,
		-0.015548, 0.992191, 0.123755,
		0.916944, 0.063503, -0.393929,
		39.238098, 34.020206, 39.040569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553814, 34.530380, 38.796463>,  <38.596237, 33.975754, 39.316319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553814, 34.530380, 38.796463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867840, 34.294548, 38.720497>,  <39.056255, 34.153049, 38.674919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867840, 34.294548, 38.720497>,  <38.553814, 34.530380, 38.796463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867840, 34.294548, 38.720497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232253, 0.004042, -0.972647,
		0.574219, 0.807702, -0.133758,
		0.785068, -0.589578, -0.189911,
		39.103359, 34.117676, 38.663525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757191, 34.746925, 38.181355>,  <38.553814, 34.530380, 38.796463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757191, 34.746925, 38.181355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921135, 34.382378, 38.196423>,  <39.019501, 34.163647, 38.205463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921135, 34.382378, 38.196423>,  <38.757191, 34.746925, 38.181355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921135, 34.382378, 38.196423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137218, -0.102436, -0.985230,
		0.901770, 0.398634, -0.167041,
		0.409857, -0.911371, 0.037674,
		39.044090, 34.108967, 38.207726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291267, 34.800419, 37.713196>,  <38.757191, 34.746925, 38.181355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291267, 34.800419, 37.713196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172421, 34.421658, 37.762348>,  <39.101112, 34.194401, 37.791840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172421, 34.421658, 37.762348>,  <39.291267, 34.800419, 37.713196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172421, 34.421658, 37.762348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268824, -0.040531, -0.962336,
		0.916218, -0.318960, -0.242507,
		-0.297118, -0.946901, 0.122879,
		39.083286, 34.137589, 37.799213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512043, 34.465691, 37.117863>,  <39.291267, 34.800419, 37.713196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512043, 34.465691, 37.117863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187981, 34.276733, 37.256714>,  <38.993546, 34.163361, 37.340023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187981, 34.276733, 37.256714>,  <39.512043, 34.465691, 37.117863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187981, 34.276733, 37.256714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386469, -0.014847, -0.922183,
		0.440787, -0.881263, -0.170537,
		-0.810153, -0.472394, 0.347125,
		38.944935, 34.135014, 37.360851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314182, 33.978424, 36.628071>,  <39.512043, 34.465691, 37.117863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314182, 33.978424, 36.628071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989971, 34.014286, 36.859592>,  <38.795444, 34.035805, 36.998505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989971, 34.014286, 36.859592>,  <39.314182, 33.978424, 36.628071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989971, 34.014286, 36.859592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573076, -0.325484, -0.752093,
		0.120961, -0.941287, 0.315192,
		-0.810526, 0.089655, 0.578800,
		38.746815, 34.041183, 37.033234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<42.326187, 34.923771, 43.945908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.946732, 35.017918, 44.030464>,  <41.719059, 35.074406, 44.081200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.946732, 35.017918, 44.030464>,  <42.326187, 34.923771, 43.945908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946732, 35.017918, 44.030464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302634, -0.480412, -0.823175,
		-0.092194, -0.844870, 0.526968,
		-0.948637, 0.235370, 0.211395,
		41.662140, 35.088528, 44.093884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905113, 34.275517, 43.777115>,  <42.326187, 34.923771, 43.945908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905113, 34.275517, 43.777115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.620537, 34.556606, 43.779480>,  <41.449791, 34.725262, 43.780899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.620537, 34.556606, 43.779480>,  <41.905113, 34.275517, 43.777115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620537, 34.556606, 43.779480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488710, -0.488696, -0.722730,
		-0.504995, -0.517063, 0.691105,
		-0.711437, 0.702725, 0.005905,
		41.407104, 34.767422, 43.781254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282215, 33.955887, 43.869122>,  <41.905113, 34.275517, 43.777115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282215, 33.955887, 43.869122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.198734, 34.305790, 43.694195>,  <41.148647, 34.515732, 43.589237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.198734, 34.305790, 43.694195>,  <41.282215, 33.955887, 43.869122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198734, 34.305790, 43.694195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541358, -0.475740, -0.693255,
		-0.814479, 0.092064, 0.572843,
		-0.208700, 0.874755, -0.437319,
		41.136124, 34.568218, 43.563000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601852, 33.922569, 43.474751>,  <41.282215, 33.955887, 43.869122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601852, 33.922569, 43.474751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.811741, 34.233135, 43.335125>,  <40.937672, 34.419476, 43.251350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.811741, 34.233135, 43.335125>,  <40.601852, 33.922569, 43.474751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811741, 34.233135, 43.335125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191438, -0.291917, -0.937089,
		-0.829471, 0.558531, -0.004538,
		0.524718, 0.776420, -0.349061,
		40.969158, 34.466061, 43.230408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340382, 34.006039, 42.769600>,  <40.601852, 33.922569, 43.474751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340382, 34.006039, 42.769600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.633560, 34.277962, 42.759430>,  <40.809467, 34.441116, 42.753326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.633560, 34.277962, 42.759430>,  <40.340382, 34.006039, 42.769600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633560, 34.277962, 42.759430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084206, 0.053569, -0.995007,
		-0.675052, 0.731431, 0.096507,
		0.732949, 0.679808, -0.025429,
		40.853443, 34.481903, 42.751801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089520, 34.648373, 42.381744>,  <40.340382, 34.006039, 42.769600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089520, 34.648373, 42.381744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.487343, 34.616089, 42.355385>,  <40.726036, 34.596718, 42.339569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.487343, 34.616089, 42.355385>,  <40.089520, 34.648373, 42.381744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487343, 34.616089, 42.355385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071858, -0.073323, -0.994716,
		0.075450, 0.994037, -0.078724,
		0.994557, -0.080709, -0.065897,
		40.785709, 34.591877, 42.335617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219330, 35.064461, 41.902012>,  <40.089520, 34.648373, 42.381744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219330, 35.064461, 41.902012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.518822, 34.800373, 41.925735>,  <40.698517, 34.641922, 41.939972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.518822, 34.800373, 41.925735>,  <40.219330, 35.064461, 41.902012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518822, 34.800373, 41.925735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059033, -0.022707, -0.997998,
		0.660243, 0.750730, 0.021973,
		0.748728, -0.660219, 0.059311,
		40.743439, 34.602306, 41.943527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649422, 35.305099, 41.489342>,  <40.219330, 35.064461, 41.902012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649422, 35.305099, 41.489342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.755638, 34.921028, 41.524082>,  <40.819366, 34.690586, 41.544926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.755638, 34.921028, 41.524082>,  <40.649422, 35.305099, 41.489342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755638, 34.921028, 41.524082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095319, -0.115792, -0.988689,
		0.959377, 0.254257, -0.122271,
		0.265539, -0.960180, 0.086852,
		40.835300, 34.632973, 41.550137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059566, 35.214046, 40.943150>,  <40.649422, 35.305099, 41.489342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059566, 35.214046, 40.943150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.950882, 34.845047, 41.052826>,  <40.885674, 34.623650, 41.118629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.950882, 34.845047, 41.052826>,  <41.059566, 35.214046, 40.943150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950882, 34.845047, 41.052826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162019, -0.236991, -0.957906,
		0.948643, -0.304695, -0.085069,
		-0.271708, -0.922494, 0.274187,
		40.869370, 34.568298, 41.135082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664059, 35.332352, 40.868584>,  <41.059566, 35.214046, 40.943150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664059, 35.332352, 40.868584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.785873, 35.638992, 40.642456>,  <41.858963, 35.822975, 40.506779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.785873, 35.638992, 40.642456>,  <41.664059, 35.332352, 40.868584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785873, 35.638992, 40.642456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326814, 0.473382, 0.817986,
		0.894679, -0.433860, -0.106373,
		0.304536, 0.766600, -0.565317,
		41.877235, 35.868973, 40.472862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382847, 35.419872, 41.113529>,  <41.664059, 35.332352, 40.868584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382847, 35.419872, 41.113529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.318027, 35.764896, 40.921810>,  <42.279137, 35.971912, 40.806778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.318027, 35.764896, 40.921810>,  <42.382847, 35.419872, 41.113529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318027, 35.764896, 40.921810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419874, 0.499828, 0.757547,
		0.892998, -0.078485, -0.443164,
		-0.162050, 0.862562, -0.479299,
		42.269413, 36.023666, 40.778019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041721, 35.689304, 41.188229>,  <42.382847, 35.419872, 41.113529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041721, 35.689304, 41.188229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.762306, 35.974262, 41.161270>,  <42.594658, 36.145237, 41.145096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.762306, 35.974262, 41.161270>,  <43.041721, 35.689304, 41.188229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762306, 35.974262, 41.161270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316865, 0.392388, 0.863498,
		0.641595, 0.581830, -0.499829,
		-0.698536, 0.712394, -0.067393,
		42.552746, 36.187981, 41.141052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438915, 36.388527, 41.369854>,  <43.041721, 35.689304, 41.188229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438915, 36.388527, 41.369854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.042244, 36.401627, 41.419666>,  <42.804241, 36.409485, 41.449554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.042244, 36.401627, 41.419666>,  <43.438915, 36.388527, 41.369854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042244, 36.401627, 41.419666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126677, 0.421508, 0.897933,
		-0.023082, 0.906233, -0.422148,
		-0.991675, 0.032750, 0.124528,
		42.744740, 36.411453, 41.457024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332886, 37.100658, 41.519291>,  <43.438915, 36.388527, 41.369854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332886, 37.100658, 41.519291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.977535, 36.936184, 41.600990>,  <42.764324, 36.837498, 41.650009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.977535, 36.936184, 41.600990>,  <43.332886, 37.100658, 41.519291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977535, 36.936184, 41.600990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162276, 0.697373, 0.698096,
		-0.429487, 0.587025, -0.686253,
		-0.888374, -0.411186, 0.204253,
		42.711021, 36.812828, 41.662266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764576, 37.617794, 41.567036>,  <43.332886, 37.100658, 41.519291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764576, 37.617794, 41.567036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.651215, 37.301083, 41.783466>,  <42.583199, 37.111053, 41.913326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.651215, 37.301083, 41.783466>,  <42.764576, 37.617794, 41.567036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651215, 37.301083, 41.783466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266307, 0.606995, 0.748757,
		-0.921282, 0.068110, -0.382883,
		-0.283406, -0.791782, 0.541076,
		42.566193, 37.063549, 41.945789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035648, 37.702679, 41.763737>,  <42.764576, 37.617794, 41.567036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035648, 37.702679, 41.763737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.180164, 37.451469, 42.039433>,  <42.266872, 37.300743, 42.204849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.180164, 37.451469, 42.039433>,  <42.035648, 37.702679, 41.763737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180164, 37.451469, 42.039433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363386, 0.585901, 0.724341,
		-0.858733, -0.512157, -0.016537,
		0.361288, -0.628025, 0.689244,
		42.288551, 37.263062, 42.246204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589451, 37.903759, 42.334576>,  <42.035648, 37.702679, 41.763737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589451, 37.903759, 42.334576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.884800, 37.684528, 42.491760>,  <42.062012, 37.552990, 42.586071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.884800, 37.684528, 42.491760>,  <41.589451, 37.903759, 42.334576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884800, 37.684528, 42.491760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146222, 0.438723, 0.886646,
		-0.658348, -0.712137, 0.243802,
		0.738375, -0.548072, 0.392963,
		42.106312, 37.520107, 42.609650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428909, 37.942364, 43.000259>,  <41.589451, 37.903759, 42.334576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428909, 37.942364, 43.000259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.784809, 37.767124, 43.051517>,  <41.998348, 37.661980, 43.082272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.784809, 37.767124, 43.051517>,  <41.428909, 37.942364, 43.000259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784809, 37.767124, 43.051517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029309, 0.334987, 0.941767,
		-0.455515, -0.834177, 0.310893,
		0.889745, -0.438101, 0.128143,
		42.051731, 37.635693, 43.089962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394333, 37.379528, 43.546043>,  <41.428909, 37.942364, 43.000259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394333, 37.379528, 43.546043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.756855, 37.542610, 43.501530>,  <41.974369, 37.640461, 43.474823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.756855, 37.542610, 43.501530>,  <41.394333, 37.379528, 43.546043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756855, 37.542610, 43.501530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009500, 0.282896, 0.959103,
		0.422515, -0.868184, 0.260264,
		0.906306, 0.407708, -0.111281,
		42.028748, 37.664921, 43.468147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693768, 37.402554, 44.251484>,  <41.394333, 37.379528, 43.546043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693768, 37.402554, 44.251484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.947483, 37.629303, 44.041218>,  <42.099712, 37.765354, 43.915058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.947483, 37.629303, 44.041218>,  <41.693768, 37.402554, 44.251484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947483, 37.629303, 44.041218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327086, 0.419321, 0.846868,
		0.700491, -0.709101, 0.080556,
		0.634293, 0.566874, -0.525667,
		42.137772, 37.799366, 43.883518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397530, 37.310287, 44.571495>,  <41.693768, 37.402554, 44.251484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397530, 37.310287, 44.571495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.332924, 37.658848, 44.386208>,  <42.294163, 37.867985, 44.275036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.332924, 37.658848, 44.386208>,  <42.397530, 37.310287, 44.571495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332924, 37.658848, 44.386208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236622, 0.489884, 0.839061,
		0.958084, 0.025911, -0.285315,
		-0.161513, 0.871402, -0.463219,
		42.284470, 37.920269, 44.247242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896198, 37.698524, 44.888630>,  <42.397530, 37.310287, 44.571495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896198, 37.698524, 44.888630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.675053, 37.989349, 44.725796>,  <42.542366, 38.163845, 44.628098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.675053, 37.989349, 44.725796>,  <42.896198, 37.698524, 44.888630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675053, 37.989349, 44.725796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035882, 0.508853, 0.860105,
		0.832498, 0.460915, -0.307416,
		-0.552865, 0.727067, -0.407081,
		42.509193, 38.207470, 44.603672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212875, 38.241417, 45.017776>,  <42.896198, 37.698524, 44.888630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.212875, 38.241417, 45.017776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.838116, 38.360931, 44.945164>,  <42.613262, 38.432640, 44.901596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.838116, 38.360931, 44.945164>,  <43.212875, 38.241417, 45.017776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838116, 38.360931, 44.945164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018359, 0.476474, 0.878997,
		0.349123, 0.826862, -0.440921,
		-0.936897, 0.298783, -0.181528,
		42.557045, 38.450565, 44.890705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.632664, 38.313763, 44.766945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.972420, 38.109051, 44.715374>,  <35.176273, 37.986221, 44.684429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.972420, 38.109051, 44.715374>,  <34.632664, 38.313763, 44.766945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972420, 38.109051, 44.715374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304904, -0.276439, -0.911381,
		0.430787, 0.813425, -0.390848,
		0.849386, -0.511781, -0.128930,
		35.227234, 37.955517, 44.676697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904255, 38.474205, 44.059250>,  <34.632664, 38.313763, 44.766945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904255, 38.474205, 44.059250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.110481, 38.146912, 44.160984>,  <35.234215, 37.950535, 44.222023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.110481, 38.146912, 44.160984>,  <34.904255, 38.474205, 44.059250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110481, 38.146912, 44.160984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110505, -0.357837, -0.927223,
		0.849696, 0.449936, -0.274907,
		0.515563, -0.818236, 0.254332,
		35.265148, 37.901440, 44.237282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287949, 38.326984, 43.384354>,  <34.904255, 38.474205, 44.059250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287949, 38.326984, 43.384354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.335979, 37.993557, 43.600033>,  <35.364799, 37.793499, 43.729443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.335979, 37.993557, 43.600033>,  <35.287949, 38.326984, 43.384354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335979, 37.993557, 43.600033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045541, -0.537936, -0.841755,
		0.991719, 0.125635, -0.026634,
		0.120082, -0.833571, 0.539203,
		35.372005, 37.743484, 43.761795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886089, 37.899868, 43.165257>,  <35.287949, 38.326984, 43.384354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886089, 37.899868, 43.165257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.621857, 37.641155, 43.317734>,  <35.463318, 37.485928, 43.409222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.621857, 37.641155, 43.317734>,  <35.886089, 37.899868, 43.165257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621857, 37.641155, 43.317734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108032, -0.584353, -0.804276,
		0.742940, -0.490110, 0.455886,
		-0.660582, -0.646780, 0.381192,
		35.423683, 37.447121, 43.432091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110081, 37.212883, 42.877045>,  <35.886089, 37.899868, 43.165257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110081, 37.212883, 42.877045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.748451, 37.151722, 43.036682>,  <35.531475, 37.115025, 43.132465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.748451, 37.151722, 43.036682>,  <36.110081, 37.212883, 42.877045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748451, 37.151722, 43.036682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215491, -0.643339, -0.734629,
		0.369082, -0.750157, 0.548674,
		-0.904070, -0.152904, 0.399097,
		35.477230, 37.105850, 43.156410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972340, 36.514767, 42.999069>,  <36.110081, 37.212883, 42.877045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972340, 36.514767, 42.999069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.623508, 36.703037, 42.945492>,  <35.414211, 36.816002, 42.913345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.623508, 36.703037, 42.945492>,  <35.972340, 36.514767, 42.999069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623508, 36.703037, 42.945492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152913, -0.522098, -0.839065,
		-0.464862, -0.711249, 0.527284,
		-0.872078, 0.470678, -0.133944,
		35.361885, 36.844242, 42.905308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509686, 36.097153, 42.631222>,  <35.972340, 36.514767, 42.999069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509686, 36.097153, 42.631222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.278133, 36.421162, 42.593777>,  <35.139202, 36.615566, 42.571308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.278133, 36.421162, 42.593777>,  <35.509686, 36.097153, 42.631222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278133, 36.421162, 42.593777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359591, -0.356630, -0.862270,
		-0.731843, -0.465487, 0.497722,
		-0.578878, 0.810023, -0.093612,
		35.104469, 36.664169, 42.565693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850525, 35.921741, 42.353230>,  <35.509686, 36.097153, 42.631222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850525, 35.921741, 42.353230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.855423, 36.314190, 42.276028>,  <34.858360, 36.549660, 42.229706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.855423, 36.314190, 42.276028>,  <34.850525, 35.921741, 42.353230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855423, 36.314190, 42.276028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282102, -0.181785, -0.942005,
		-0.959306, 0.065982, 0.274551,
		0.012246, 0.981122, -0.193001,
		34.859097, 36.608528, 42.218128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184311, 36.150532, 42.070396>,  <34.850525, 35.921741, 42.353230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184311, 36.150532, 42.070396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.448856, 36.418690, 41.935833>,  <34.607582, 36.579586, 41.855095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.448856, 36.418690, 41.935833>,  <34.184311, 36.150532, 42.070396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448856, 36.418690, 41.935833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267397, -0.208307, -0.940801,
		-0.700784, 0.712165, 0.041495,
		0.661362, 0.670394, -0.336409,
		34.647266, 36.619808, 41.834911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885574, 36.671486, 41.611416>,  <34.184311, 36.150532, 42.070396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885574, 36.671486, 41.611416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.273106, 36.665714, 41.512493>,  <34.505623, 36.662251, 41.453140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.273106, 36.665714, 41.512493>,  <33.885574, 36.671486, 41.611416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273106, 36.665714, 41.512493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245431, -0.191556, -0.950300,
		-0.033657, 0.981376, -0.189128,
		0.968830, -0.014434, -0.247307,
		34.563755, 36.661385, 41.438301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857788, 36.911827, 40.955879>,  <33.885574, 36.671486, 41.611416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857788, 36.911827, 40.955879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.217159, 36.737316, 40.975864>,  <34.432781, 36.632610, 40.987854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.217159, 36.737316, 40.975864>,  <33.857788, 36.911827, 40.955879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217159, 36.737316, 40.975864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040179, -0.194971, -0.979986,
		0.437287, 0.878435, -0.192696,
		0.898424, -0.436277, 0.049964,
		34.486687, 36.606434, 40.990852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348106, 37.254620, 40.463455>,  <33.857788, 36.911827, 40.955879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348106, 37.254620, 40.463455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.493542, 36.887836, 40.529171>,  <34.580803, 36.667767, 40.568600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.493542, 36.887836, 40.529171>,  <34.348106, 37.254620, 40.463455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493542, 36.887836, 40.529171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138735, -0.121097, -0.982898,
		0.921171, 0.380162, 0.083185,
		0.363587, -0.916958, 0.164293,
		34.602619, 36.612747, 40.578461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984341, 37.322826, 40.039909>,  <34.348106, 37.254620, 40.463455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984341, 37.322826, 40.039909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.928593, 36.928734, 40.079700>,  <34.895142, 36.692280, 40.103577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.928593, 36.928734, 40.079700>,  <34.984341, 37.322826, 40.039909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928593, 36.928734, 40.079700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176113, -0.123519, -0.976590,
		0.974454, -0.118590, 0.190727,
		-0.139372, -0.985231, 0.099478,
		34.886780, 36.633163, 40.109543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501320, 37.020363, 39.677376>,  <34.984341, 37.322826, 40.039909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501320, 37.020363, 39.677376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.207546, 36.750610, 39.707893>,  <35.031281, 36.588760, 39.726204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.207546, 36.750610, 39.707893>,  <35.501320, 37.020363, 39.677376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207546, 36.750610, 39.707893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055223, -0.171430, -0.983647,
		0.676431, -0.718209, 0.163145,
		-0.734432, -0.674379, 0.076299,
		34.987217, 36.548298, 39.730782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166485, 36.896072, 39.909866>,  <35.501320, 37.020363, 39.677376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166485, 36.896072, 39.909866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.511375, 37.074547, 39.813965>,  <36.718311, 37.181633, 39.756424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.511375, 37.074547, 39.813965>,  <36.166485, 36.896072, 39.909866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511375, 37.074547, 39.813965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121298, 0.277679, 0.952985,
		0.491788, -0.850769, 0.185300,
		0.862225, 0.446191, -0.239756,
		36.770042, 37.208405, 39.742039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743347, 36.683010, 40.409321>,  <36.166485, 36.896072, 39.909866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743347, 36.683010, 40.409321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.825581, 37.034252, 40.236504>,  <36.874920, 37.244999, 40.132812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.825581, 37.034252, 40.236504>,  <36.743347, 36.683010, 40.409321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825581, 37.034252, 40.236504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275800, 0.371588, 0.886486,
		0.938972, -0.301407, -0.165789,
		0.205588, 0.878109, -0.432039,
		36.887257, 37.297684, 40.106892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394981, 36.896091, 40.671566>,  <36.743347, 36.683010, 40.409321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394981, 36.896091, 40.671566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.221775, 37.234306, 40.546623>,  <37.117851, 37.437233, 40.471657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.221775, 37.234306, 40.546623>,  <37.394981, 36.896091, 40.671566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221775, 37.234306, 40.546623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351664, 0.477540, 0.805163,
		0.829955, 0.238807, -0.504128,
		-0.433020, 0.845534, -0.312357,
		37.091869, 37.487965, 40.452915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869312, 37.359077, 40.541557>,  <37.394981, 36.896091, 40.671566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869312, 37.359077, 40.541557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.552963, 37.590202, 40.622219>,  <37.363155, 37.728878, 40.670616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.552963, 37.590202, 40.622219>,  <37.869312, 37.359077, 40.541557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552963, 37.590202, 40.622219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522700, 0.466380, 0.713635,
		0.318295, 0.669797, -0.670865,
		-0.790868, 0.577808, 0.201657,
		37.315704, 37.763546, 40.682716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106998, 38.007275, 40.873524>,  <37.869312, 37.359077, 40.541557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106998, 38.007275, 40.873524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.722073, 38.068066, 40.963726>,  <37.491116, 38.104538, 41.017849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.722073, 38.068066, 40.963726>,  <38.106998, 38.007275, 40.873524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722073, 38.068066, 40.963726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270250, 0.442266, 0.855199,
		0.030234, 0.883915, -0.466670,
		-0.962315, 0.151974, 0.225507,
		37.433376, 38.113659, 41.031380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011765, 38.773640, 40.819485>,  <38.106998, 38.007275, 40.873524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011765, 38.773640, 40.819485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.702877, 38.638893, 41.034962>,  <37.517544, 38.558044, 41.164249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.702877, 38.638893, 41.034962>,  <38.011765, 38.773640, 40.819485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702877, 38.638893, 41.034962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221102, 0.652390, 0.724915,
		-0.595641, 0.678902, -0.429307,
		-0.772222, -0.336868, 0.538696,
		37.471210, 38.537834, 41.196571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660572, 39.366245, 41.261192>,  <38.011765, 38.773640, 40.819485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660572, 39.366245, 41.261192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.554089, 39.023277, 41.437359>,  <37.490200, 38.817497, 41.543060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.554089, 39.023277, 41.437359>,  <37.660572, 39.366245, 41.261192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554089, 39.023277, 41.437359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063688, 0.471553, 0.879535,
		-0.961810, 0.206088, -0.180137,
		-0.266206, -0.857418, 0.440419,
		37.474228, 38.766052, 41.569485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161312, 39.573627, 41.786449>,  <37.660572, 39.366245, 41.261192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161312, 39.573627, 41.786449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.274654, 39.214058, 41.920105>,  <37.342659, 38.998318, 42.000298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.274654, 39.214058, 41.920105>,  <37.161312, 39.573627, 41.786449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274654, 39.214058, 41.920105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040184, 0.336980, 0.940654,
		-0.958174, -0.279962, 0.059361,
		0.283351, -0.898925, 0.334135,
		37.359661, 38.944382, 42.020344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732071, 39.398117, 42.414680>,  <37.161312, 39.573627, 41.786449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732071, 39.398117, 42.414680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.069164, 39.184856, 42.444500>,  <37.271420, 39.056900, 42.462391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.069164, 39.184856, 42.444500>,  <36.732071, 39.398117, 42.414680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069164, 39.184856, 42.444500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087091, 0.271679, 0.958439,
		-0.531244, -0.801214, 0.275385,
		0.842731, -0.533149, 0.074549,
		37.321983, 39.024910, 42.466866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693394, 39.064690, 43.017063>,  <36.732071, 39.398117, 42.414680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693394, 39.064690, 43.017063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.084702, 39.058277, 42.934376>,  <37.319485, 39.054428, 42.884762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.084702, 39.058277, 42.934376>,  <36.693394, 39.064690, 43.017063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084702, 39.058277, 42.934376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199020, 0.352266, 0.914495,
		0.058157, -0.935763, 0.347802,
		0.978268, -0.016036, -0.206722,
		37.378181, 39.053467, 42.872360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951759, 38.716541, 43.466267>,  <36.693394, 39.064690, 43.017063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951759, 38.716541, 43.466267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.287865, 38.903606, 43.356548>,  <37.489529, 39.015846, 43.290718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.287865, 38.903606, 43.356548>,  <36.951759, 38.716541, 43.466267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287865, 38.903606, 43.356548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157722, 0.273199, 0.948939,
		0.518724, -0.840626, 0.155799,
		0.840267, 0.467665, -0.274300,
		37.539944, 39.043907, 43.274258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392159, 38.607853, 44.101299>,  <36.951759, 38.716541, 43.466267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392159, 38.607853, 44.101299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.567978, 38.907059, 43.902393>,  <37.673470, 39.086582, 43.783051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.567978, 38.907059, 43.902393>,  <37.392159, 38.607853, 44.101299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567978, 38.907059, 43.902393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203422, 0.456331, 0.866246,
		0.874879, -0.481914, 0.048419,
		0.439551, 0.748011, -0.497267,
		37.699844, 39.131462, 43.753212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942524, 38.686932, 44.414864>,  <37.392159, 38.607853, 44.101299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942524, 38.686932, 44.414864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.908897, 39.034729, 44.220165>,  <37.888721, 39.243408, 44.103348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.908897, 39.034729, 44.220165>,  <37.942524, 38.686932, 44.414864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908897, 39.034729, 44.220165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258785, 0.490760, 0.831977,
		0.962270, -0.056024, -0.266266,
		-0.084062, 0.869492, -0.486742,
		37.883678, 39.295578, 44.074142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493141, 39.119358, 44.631367>,  <37.942524, 38.686932, 44.414864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493141, 39.119358, 44.631367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.256924, 39.396904, 44.466537>,  <38.115192, 39.563431, 44.367641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.256924, 39.396904, 44.466537>,  <38.493141, 39.119358, 44.631367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256924, 39.396904, 44.466537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009404, 0.504670, 0.863261,
		0.806948, 0.513672, -0.291507,
		-0.590548, 0.693866, -0.412072,
		38.079758, 39.605064, 44.342915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925007, 39.473728, 44.072109>,  <38.493141, 39.119358, 44.631367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925007, 39.473728, 44.072109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.287312, 39.634949, 44.124496>,  <39.504692, 39.731682, 44.155930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.287312, 39.634949, 44.124496>,  <38.925007, 39.473728, 44.072109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287312, 39.634949, 44.124496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233330, -0.216290, -0.948038,
		-0.353780, 0.889252, -0.289950,
		0.905758, 0.403051, 0.130970,
		39.559040, 39.755863, 44.163788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078072, 39.901077, 43.556290>,  <38.925007, 39.473728, 44.072109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078072, 39.901077, 43.556290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.443310, 39.789185, 43.674950>,  <39.662453, 39.722050, 43.746143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.443310, 39.789185, 43.674950>,  <39.078072, 39.901077, 43.556290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443310, 39.789185, 43.674950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315564, 0.024099, -0.948598,
		0.258207, 0.959775, 0.110279,
		0.913098, -0.279734, 0.296648,
		39.717239, 39.705265, 43.763943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522617, 40.241302, 43.091160>,  <39.078072, 39.901077, 43.556290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522617, 40.241302, 43.091160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.743134, 39.935078, 43.223820>,  <39.875443, 39.751343, 43.303417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.743134, 39.935078, 43.223820>,  <39.522617, 40.241302, 43.091160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743134, 39.935078, 43.223820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361586, -0.139008, -0.921918,
		0.751890, 0.628162, 0.200184,
		0.551287, -0.765564, 0.331654,
		39.908520, 39.705410, 43.323315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093662, 40.405010, 42.747414>,  <39.522617, 40.241302, 43.091160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093662, 40.405010, 42.747414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.133625, 40.027748, 42.874207>,  <40.157604, 39.801392, 42.950283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.133625, 40.027748, 42.874207>,  <40.093662, 40.405010, 42.747414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133625, 40.027748, 42.874207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324380, -0.270295, -0.906487,
		0.940636, 0.193386, 0.278936,
		0.099907, -0.943156, 0.316980,
		40.163597, 39.744801, 42.969299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682938, 40.140614, 42.402882>,  <40.093662, 40.405010, 42.747414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682938, 40.140614, 42.402882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.475262, 39.813992, 42.503819>,  <40.350658, 39.618019, 42.564381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.475262, 39.813992, 42.503819>,  <40.682938, 40.140614, 42.402882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475262, 39.813992, 42.503819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451842, -0.512866, -0.729936,
		0.725454, -0.264954, 0.635229,
		-0.519187, -0.816558, 0.252344,
		40.319504, 39.569023, 42.579521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119759, 39.551636, 42.236820>,  <40.682938, 40.140614, 42.402882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119759, 39.551636, 42.236820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.759415, 39.378849, 42.254063>,  <40.543209, 39.275177, 42.264408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.759415, 39.378849, 42.254063>,  <41.119759, 39.551636, 42.236820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759415, 39.378849, 42.254063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255292, -0.607460, -0.752209,
		0.351114, -0.666629, 0.657514,
		-0.900858, -0.431969, 0.043103,
		40.489159, 39.249260, 42.266994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213642, 38.860245, 42.123447>,  <41.119759, 39.551636, 42.236820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213642, 38.860245, 42.123447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.832092, 38.913486, 42.015820>,  <40.603161, 38.945431, 41.951241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.832092, 38.913486, 42.015820>,  <41.213642, 38.860245, 42.123447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832092, 38.913486, 42.015820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147653, -0.572386, -0.806581,
		-0.261372, -0.809109, 0.526334,
		-0.953878, 0.133103, -0.269073,
		40.545929, 38.953419, 41.935097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077744, 38.309052, 41.667526>,  <41.213642, 38.860245, 42.123447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077744, 38.309052, 41.667526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.737904, 38.508194, 41.597885>,  <40.534000, 38.627678, 41.556099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.737904, 38.508194, 41.597885>,  <41.077744, 38.309052, 41.667526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737904, 38.508194, 41.597885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075648, -0.441721, -0.893957,
		-0.521972, -0.746337, 0.412949,
		-0.849602, 0.497859, -0.174107,
		40.483025, 38.657551, 41.545654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615860, 37.832806, 41.461990>,  <41.077744, 38.309052, 41.667526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615860, 37.832806, 41.461990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.501705, 38.185551, 41.311855>,  <40.433212, 38.397198, 41.221775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.501705, 38.185551, 41.311855>,  <40.615860, 37.832806, 41.461990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501705, 38.185551, 41.311855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039365, -0.402077, -0.914759,
		-0.957603, -0.246288, 0.149463,
		-0.285390, 0.881860, -0.375335,
		40.416088, 38.450108, 41.199253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168251, 37.660583, 40.920422>,  <40.615860, 37.832806, 41.461990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168251, 37.660583, 40.920422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.291080, 38.034042, 40.846653>,  <40.364780, 38.258118, 40.802391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.291080, 38.034042, 40.846653>,  <40.168251, 37.660583, 40.920422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291080, 38.034042, 40.846653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028038, -0.202575, -0.978866,
		-0.951272, 0.295415, -0.088383,
		0.307076, 0.933645, -0.184421,
		40.383202, 38.314137, 40.791328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807205, 37.797394, 40.351349>,  <40.168251, 37.660583, 40.920422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807205, 37.797394, 40.351349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.075470, 38.094025, 40.344746>,  <40.236427, 38.272003, 40.340786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.075470, 38.094025, 40.344746>,  <39.807205, 37.797394, 40.351349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075470, 38.094025, 40.344746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091001, -0.104342, -0.990369,
		-0.736159, 0.662702, -0.137463,
		0.670663, 0.741579, -0.016506,
		40.276669, 38.316498, 40.339794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557297, 38.226192, 39.899075>,  <39.807205, 37.797394, 40.351349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557297, 38.226192, 39.899075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.939247, 38.344997, 39.899208>,  <40.168419, 38.416279, 39.899288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.939247, 38.344997, 39.899208>,  <39.557297, 38.226192, 39.899075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939247, 38.344997, 39.899208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088521, -0.283511, -0.954875,
		-0.283511, 0.911815, -0.297009,
		0.954875, 0.297009, 0.000336,
		40.225708, 38.434101, 39.899307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684063, 38.742752, 39.439781>,  <39.557297, 38.226192, 39.899075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684063, 38.742752, 39.439781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.031864, 38.551483, 39.489281>,  <40.240547, 38.436722, 39.518978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.031864, 38.551483, 39.489281>,  <39.684063, 38.742752, 39.439781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031864, 38.551483, 39.489281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041358, -0.179174, -0.982948,
		0.492189, 0.859796, -0.136016,
		0.869505, -0.478171, 0.123747,
		40.292717, 38.408031, 39.526405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051346, 38.952999, 38.852097>,  <39.684063, 38.742752, 39.439781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051346, 38.952999, 38.852097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.242817, 38.625233, 38.978218>,  <40.357700, 38.428574, 39.053890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.242817, 38.625233, 38.978218>,  <40.051346, 38.952999, 38.852097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242817, 38.625233, 38.978218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315370, -0.174681, -0.932753,
		0.819393, 0.545929, 0.174804,
		0.478682, -0.819420, 0.315302,
		40.386421, 38.379406, 39.072807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.679150, 38.774822, 40.739338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.349686, 38.889427, 40.543587>,  <27.152008, 38.958191, 40.426136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.349686, 38.889427, 40.543587>,  <27.679150, 38.774822, 40.739338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.349686, 38.889427, 40.543587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016189, -0.874505, -0.484745,
		-0.566853, -0.391342, 0.724933,
		-0.823660, 0.286516, -0.489381,
		27.102589, 38.975384, 40.396774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183395, 38.204552, 40.871559>,  <27.679150, 38.774822, 40.739338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183395, 38.204552, 40.871559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.074450, 38.391533, 40.535152>,  <27.009083, 38.503719, 40.333309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.074450, 38.391533, 40.535152>,  <27.183395, 38.204552, 40.871559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.074450, 38.391533, 40.535152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158499, -0.883917, -0.439963,
		-0.949050, 0.013471, 0.314836,
		-0.272363, 0.467449, -0.841017,
		26.992741, 38.531769, 40.282848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585752, 37.857525, 40.625496>,  <27.183395, 38.204552, 40.871559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585752, 37.857525, 40.625496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.744875, 38.054676, 40.315964>,  <26.840349, 38.172966, 40.130245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.744875, 38.054676, 40.315964>,  <26.585752, 37.857525, 40.625496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744875, 38.054676, 40.315964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234793, -0.760666, -0.605193,
		-0.886917, 0.422441, -0.186874,
		0.397807, 0.492880, -0.773834,
		26.864218, 38.202541, 40.083813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150530, 37.867023, 40.181072>,  <26.585752, 37.857525, 40.625496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150530, 37.867023, 40.181072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.455511, 37.938442, 39.932301>,  <26.638500, 37.981293, 39.783039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.455511, 37.938442, 39.932301>,  <26.150530, 37.867023, 40.181072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455511, 37.938442, 39.932301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286895, -0.768244, -0.572270,
		-0.579965, 0.614755, -0.534525,
		0.762451, 0.178545, -0.621925,
		26.684246, 37.992004, 39.745724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.778250, 37.938499, 39.583317>,  <26.150530, 37.867023, 40.181072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.778250, 37.938499, 39.583317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.167072, 37.870533, 39.518524>,  <26.400366, 37.829754, 39.479649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.167072, 37.870533, 39.518524>,  <25.778250, 37.938499, 39.583317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167072, 37.870533, 39.518524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230488, -0.821751, -0.521153,
		-0.044560, 0.543925, -0.837950,
		0.972055, -0.169915, -0.161985,
		26.458689, 37.819557, 39.469929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.888233, 37.740566, 38.853737>,  <25.778250, 37.938499, 39.583317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.888233, 37.740566, 38.853737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.224384, 37.591354, 39.011021>,  <26.426075, 37.501827, 39.105392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.224384, 37.591354, 39.011021>,  <25.888233, 37.740566, 38.853737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224384, 37.591354, 39.011021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132626, -0.844954, -0.518135,
		0.525525, 0.383279, -0.759553,
		0.840377, -0.373029, 0.393211,
		26.476498, 37.479446, 39.128983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.415213, 37.524094, 38.322933>,  <25.888233, 37.740566, 38.853737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.415213, 37.524094, 38.322933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.542919, 37.291492, 38.622246>,  <26.619543, 37.151932, 38.801834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.542919, 37.291492, 38.622246>,  <26.415213, 37.524094, 38.322933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.542919, 37.291492, 38.622246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147469, -0.749502, -0.645368,
		0.936121, 0.316392, -0.153536,
		0.319265, -0.581501, 0.748283,
		26.638699, 37.117043, 38.846729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.873966, 37.241470, 38.013203>,  <26.415213, 37.524094, 38.322933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.873966, 37.241470, 38.013203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.804033, 37.001873, 38.325775>,  <26.762074, 36.858116, 38.513321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.804033, 37.001873, 38.325775>,  <26.873966, 37.241470, 38.013203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804033, 37.001873, 38.325775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044442, -0.797651, -0.601480,
		0.983595, -0.070428, 0.166074,
		-0.174831, -0.598994, 0.781435,
		26.751585, 36.822174, 38.560207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414331, 36.917412, 38.053520>,  <26.873966, 37.241470, 38.013203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414331, 36.917412, 38.053520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.128979, 36.698727, 38.228882>,  <26.957767, 36.567516, 38.334099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.128979, 36.698727, 38.228882>,  <27.414331, 36.917412, 38.053520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.128979, 36.698727, 38.228882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148345, -0.729227, -0.667998,
		0.684897, -0.411502, 0.601317,
		-0.713379, -0.546712, 0.438401,
		26.914965, 36.534714, 38.360401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742260, 36.201717, 38.123028>,  <27.414331, 36.917412, 38.053520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742260, 36.201717, 38.123028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.343342, 36.181557, 38.144440>,  <27.103991, 36.169460, 38.157288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.343342, 36.181557, 38.144440>,  <27.742260, 36.201717, 38.123028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343342, 36.181557, 38.144440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003462, -0.759396, -0.650620,
		0.073443, -0.648674, 0.757515,
		-0.997294, -0.050406, 0.053527,
		27.044153, 36.166435, 38.160500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710613, 35.582233, 37.925549>,  <27.742260, 36.201717, 38.123028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.710613, 35.582233, 37.925549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.349466, 35.747059, 37.876499>,  <27.132778, 35.845955, 37.847069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.349466, 35.747059, 37.876499>,  <27.710613, 35.582233, 37.925549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.349466, 35.747059, 37.876499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208585, -0.669258, -0.713152,
		-0.375927, -0.618305, 0.690201,
		-0.902868, 0.412059, -0.122624,
		27.078606, 35.870678, 37.839710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429703, 35.031590, 37.704479>,  <27.710613, 35.582233, 37.925549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429703, 35.031590, 37.704479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.168819, 35.325077, 37.628281>,  <27.012289, 35.501167, 37.582561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.168819, 35.325077, 37.628281>,  <27.429703, 35.031590, 37.704479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.168819, 35.325077, 37.628281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263575, -0.455118, -0.850527,
		-0.710742, -0.504510, 0.490220,
		-0.652207, 0.733715, -0.190495,
		26.973158, 35.545193, 37.571133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.842274, 34.724632, 37.497654>,  <27.429703, 35.031590, 37.704479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.842274, 34.724632, 37.497654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.827549, 35.091583, 37.339127>,  <26.818714, 35.311752, 37.244011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.827549, 35.091583, 37.339127>,  <26.842274, 34.724632, 37.497654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827549, 35.091583, 37.339127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220738, -0.394258, -0.892096,
		-0.974638, 0.054643, 0.217013,
		-0.036812, 0.917374, -0.396320,
		26.816505, 35.366795, 37.220230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.141710, 34.793476, 37.206955>,  <26.842274, 34.724632, 37.497654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.141710, 34.793476, 37.206955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.405220, 35.034973, 37.027397>,  <26.563326, 35.179871, 36.919662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.405220, 35.034973, 37.027397>,  <26.141710, 34.793476, 37.206955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405220, 35.034973, 37.027397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210911, -0.424536, -0.880503,
		-0.722171, 0.674732, -0.152338,
		0.658776, 0.603744, -0.448896,
		26.602854, 35.216095, 36.892727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.915833, 34.678619, 36.504028>,  <26.141710, 34.793476, 37.206955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.915833, 34.678619, 36.504028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.266922, 34.870087, 36.495327>,  <26.477575, 34.984966, 36.490108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.266922, 34.870087, 36.495327>,  <25.915833, 34.678619, 36.504028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.266922, 34.870087, 36.495327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161103, -0.337550, -0.927419,
		-0.451272, 0.810514, -0.373391,
		0.877724, 0.478672, -0.021751,
		26.530239, 35.013687, 36.488800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061123, 35.156723, 35.929455>,  <25.915833, 34.678619, 36.504028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061123, 35.156723, 35.929455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.430246, 35.054020, 36.044346>,  <26.651720, 34.992397, 36.113281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.430246, 35.054020, 36.044346>,  <26.061123, 35.156723, 35.929455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430246, 35.054020, 36.044346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263326, -0.123861, -0.956722,
		0.281218, 0.958507, -0.046690,
		0.922808, -0.256753, 0.287232,
		26.707088, 34.976994, 36.130516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457535, 35.184364, 35.352177>,  <26.061123, 35.156723, 35.929455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457535, 35.184364, 35.352177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.739672, 35.003510, 35.570557>,  <26.908955, 34.894997, 35.701584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.739672, 35.003510, 35.570557>,  <26.457535, 35.184364, 35.352177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.739672, 35.003510, 35.570557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325269, -0.477878, -0.815986,
		0.629834, 0.753132, -0.190003,
		0.705343, -0.452134, 0.545954,
		26.951275, 34.867870, 35.734344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033247, 35.265892, 34.972057>,  <26.457535, 35.184364, 35.352177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033247, 35.265892, 34.972057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.121532, 34.961674, 35.216305>,  <27.174503, 34.779144, 35.362854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.121532, 34.961674, 35.216305>,  <27.033247, 35.265892, 34.972057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121532, 34.961674, 35.216305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502111, -0.448122, -0.739642,
		0.836164, 0.469848, 0.282972,
		0.220714, -0.760546, 0.610619,
		27.187746, 34.733509, 35.399490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720825, 35.084930, 34.779224>,  <27.033247, 35.265892, 34.972057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720825, 35.084930, 34.779224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.573595, 34.771950, 34.980137>,  <27.485258, 34.584160, 35.100685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.573595, 34.771950, 34.980137>,  <27.720825, 35.084930, 34.779224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573595, 34.771950, 34.980137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549486, -0.618832, -0.561348,
		0.750058, 0.069381, 0.657723,
		-0.368074, -0.782453, 0.502284,
		27.463173, 34.537212, 35.130821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400669, 34.737999, 34.716290>,  <27.720825, 35.084930, 34.779224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400669, 34.737999, 34.716290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.741142, 34.820606, 34.523277>,  <28.945425, 34.870171, 34.407471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.741142, 34.820606, 34.523277>,  <28.400669, 34.737999, 34.716290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741142, 34.820606, 34.523277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010541, 0.912426, 0.409107,
		0.524764, -0.353311, 0.774464,
		0.851182, 0.206521, -0.482532,
		28.996496, 34.882565, 34.378517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111616, 34.924797, 35.096378>,  <28.400669, 34.737999, 34.716290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111616, 34.924797, 35.096378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.069986, 35.101761, 34.740078>,  <29.045008, 35.207939, 34.526299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.069986, 35.101761, 34.740078>,  <29.111616, 34.924797, 35.096378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069986, 35.101761, 34.740078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078660, 0.889150, 0.450805,
		0.991454, 0.116984, -0.057737,
		-0.104074, 0.442411, -0.890753,
		29.038765, 35.234486, 34.472851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517262, 35.528637, 35.104527>,  <29.111616, 34.924797, 35.096378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517262, 35.528637, 35.104527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.250896, 35.601646, 34.815182>,  <29.091078, 35.645451, 34.641575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.250896, 35.601646, 34.815182>,  <29.517262, 35.528637, 35.104527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250896, 35.601646, 34.815182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040167, 0.959431, 0.279069,
		0.744950, 0.214890, -0.631564,
		-0.665911, 0.182524, -0.723359,
		29.051123, 35.656403, 34.598175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702131, 36.126255, 34.844627>,  <29.517262, 35.528637, 35.104527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702131, 36.126255, 34.844627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.320559, 36.083340, 34.732555>,  <29.091616, 36.057590, 34.665310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.320559, 36.083340, 34.732555>,  <29.702131, 36.126255, 34.844627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320559, 36.083340, 34.732555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229152, 0.863344, 0.449586,
		0.193658, 0.493078, -0.848157,
		-0.953932, -0.107291, -0.280183,
		29.034378, 36.051151, 34.648499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579903, 36.830441, 34.789967>,  <29.702131, 36.126255, 34.844627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579903, 36.830441, 34.789967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.227882, 36.641209, 34.773426>,  <29.016670, 36.527672, 34.763500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.227882, 36.641209, 34.773426>,  <29.579903, 36.830441, 34.789967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227882, 36.641209, 34.773426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447383, 0.796742, 0.406263,
		-0.159244, 0.376034, -0.912820,
		-0.880051, -0.473075, -0.041355,
		28.963867, 36.499287, 34.761021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041552, 37.246323, 34.444687>,  <29.579903, 36.830441, 34.789967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041552, 37.246323, 34.444687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.843344, 36.993271, 34.682758>,  <28.724419, 36.841438, 34.825600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.843344, 36.993271, 34.682758>,  <29.041552, 37.246323, 34.444687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843344, 36.993271, 34.682758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580653, 0.750871, 0.314699,
		-0.645988, -0.189650, -0.739413,
		-0.495522, -0.632634, 0.595175,
		28.694687, 36.803482, 34.861309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412582, 37.545940, 34.446484>,  <29.041552, 37.246323, 34.444687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412582, 37.545940, 34.446484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.403273, 37.293743, 34.756824>,  <28.397686, 37.142426, 34.943027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.403273, 37.293743, 34.756824>,  <28.412582, 37.545940, 34.446484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403273, 37.293743, 34.756824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438641, 0.703810, 0.558789,
		-0.898361, -0.327313, -0.292940,
		-0.023275, -0.630490, 0.775849,
		28.396290, 37.104595, 34.989578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656549, 37.611191, 34.738461>,  <28.412582, 37.545940, 34.446484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656549, 37.611191, 34.738461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.896296, 37.474979, 35.028233>,  <28.040144, 37.393253, 35.202095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.896296, 37.474979, 35.028233>,  <27.656549, 37.611191, 34.738461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896296, 37.474979, 35.028233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536435, 0.500852, 0.679253,
		-0.594137, -0.795732, 0.117524,
		0.599365, -0.340525, 0.724433,
		28.076105, 37.372822, 35.245564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274704, 37.571735, 35.337097>,  <27.656549, 37.611191, 34.738461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274704, 37.571735, 35.337097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.644602, 37.546658, 35.487251>,  <27.866541, 37.531609, 35.577343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.644602, 37.546658, 35.487251>,  <27.274704, 37.571735, 35.337097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644602, 37.546658, 35.487251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241703, 0.665144, 0.706514,
		-0.293983, -0.744078, 0.599935,
		0.924746, -0.062697, 0.375387,
		27.922026, 37.527847, 35.599869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236570, 37.508976, 36.045975>,  <27.274704, 37.571735, 35.337097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236570, 37.508976, 36.045975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.596037, 37.663830, 35.963486>,  <27.811716, 37.756741, 35.913994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.596037, 37.663830, 35.963486>,  <27.236570, 37.508976, 36.045975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596037, 37.663830, 35.963486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125351, 0.677204, 0.725039,
		0.420343, -0.625717, 0.657107,
		0.898665, 0.387134, -0.206224,
		27.865637, 37.779968, 35.901619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.619062, 37.504330, 36.686012>,  <27.236570, 37.508976, 36.045975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.619062, 37.504330, 36.686012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.794859, 37.766098, 36.439896>,  <27.900337, 37.923157, 36.292225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.794859, 37.766098, 36.439896>,  <27.619062, 37.504330, 36.686012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794859, 37.766098, 36.439896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042310, 0.669149, 0.741923,
		0.897250, -0.352102, 0.266397,
		0.439492, 0.654419, -0.615290,
		27.926706, 37.962425, 36.255310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.018270, 37.818291, 37.089825>,  <27.619062, 37.504330, 36.686012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.018270, 37.818291, 37.089825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.997284, 38.067730, 36.777832>,  <27.984692, 38.217392, 36.590637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.997284, 38.067730, 36.777832>,  <28.018270, 37.818291, 37.089825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997284, 38.067730, 36.777832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194740, 0.772453, 0.604477,
		0.979451, -0.120179, -0.161968,
		-0.052467, 0.623597, -0.779983,
		27.981544, 38.254810, 36.543839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640238, 38.304630, 37.154282>,  <28.018270, 37.818291, 37.089825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640238, 38.304630, 37.154282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.383574, 38.498287, 36.916328>,  <28.229574, 38.614479, 36.773556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.383574, 38.498287, 36.916328>,  <28.640238, 38.304630, 37.154282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383574, 38.498287, 36.916328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081908, 0.814421, 0.574465,
		0.762603, 0.319886, -0.562236,
		-0.641660, 0.484140, -0.594878,
		28.191076, 38.643528, 36.737865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965071, 39.040272, 36.907345>,  <28.640238, 38.304630, 37.154282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965071, 39.040272, 36.907345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.571775, 39.093472, 36.857452>,  <28.335798, 39.125389, 36.827518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.571775, 39.093472, 36.857452>,  <28.965071, 39.040272, 36.907345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571775, 39.093472, 36.857452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025355, 0.777161, 0.628791,
		0.180560, 0.615088, -0.767505,
		-0.983237, 0.132995, -0.124728,
		28.276804, 39.133369, 36.820034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877495, 39.710941, 36.595844>,  <28.965071, 39.040272, 36.907345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877495, 39.710941, 36.595844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.531578, 39.616814, 36.773273>,  <28.324028, 39.560337, 36.879730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.531578, 39.616814, 36.773273>,  <28.877495, 39.710941, 36.595844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531578, 39.616814, 36.773273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031374, 0.856337, 0.515463,
		-0.501147, 0.459686, -0.733171,
		-0.864793, -0.235320, 0.443573,
		28.272141, 39.546219, 36.906345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511076, 40.303963, 36.506207>,  <28.877495, 39.710941, 36.595844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511076, 40.303963, 36.506207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.302698, 40.103897, 36.782887>,  <28.177671, 39.983856, 36.948895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.302698, 40.103897, 36.782887>,  <28.511076, 40.303963, 36.506207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302698, 40.103897, 36.782887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013759, 0.815160, 0.579073,
		-0.853480, 0.292148, -0.431535,
		-0.520945, -0.500164, 0.691702,
		28.146416, 39.953846, 36.990398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865654, 40.733189, 36.703831>,  <28.511076, 40.303963, 36.506207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865654, 40.733189, 36.703831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.973244, 40.487133, 37.000278>,  <28.037798, 40.339500, 37.178146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.973244, 40.487133, 37.000278>,  <27.865654, 40.733189, 36.703831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973244, 40.487133, 37.000278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134199, 0.785904, 0.603610,
		-0.953752, -0.062900, 0.293940,
		0.268976, -0.615141, 0.741116,
		28.053936, 40.302589, 37.222614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425167, 40.887451, 37.249207>,  <27.865654, 40.733189, 36.703831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425167, 40.887451, 37.249207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.744932, 40.712078, 37.413506>,  <27.936792, 40.606853, 37.512085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.744932, 40.712078, 37.413506>,  <27.425167, 40.887451, 37.249207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744932, 40.712078, 37.413506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030909, 0.712802, 0.700684,
		-0.599985, -0.547441, 0.583376,
		0.799414, -0.438431, 0.410750,
		27.984756, 40.580547, 37.536732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.332281, 40.929893, 37.961040>,  <27.425167, 40.887451, 37.249207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.332281, 40.929893, 37.961040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.716312, 40.818050, 37.964333>,  <27.946732, 40.750946, 37.966309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.716312, 40.818050, 37.964333>,  <27.332281, 40.929893, 37.961040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716312, 40.818050, 37.964333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181757, 0.645905, 0.741466,
		-0.212634, -0.710370, 0.670941,
		0.960079, -0.279609, 0.008226,
		28.004335, 40.734169, 37.966801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.479469, 40.678757, 38.706322>,  <27.332281, 40.929893, 37.961040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.479469, 40.678757, 38.706322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.812944, 40.785824, 38.513107>,  <28.013029, 40.850063, 38.397179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.812944, 40.785824, 38.513107>,  <27.479469, 40.678757, 38.706322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812944, 40.785824, 38.513107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109724, 0.776956, 0.619919,
		0.541227, -0.569819, 0.618369,
		0.833687, 0.267667, -0.483033,
		28.063051, 40.866123, 38.368198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049675, 40.579361, 39.226723>,  <27.479469, 40.678757, 38.706322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049675, 40.579361, 39.226723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.151138, 40.845264, 38.945652>,  <28.212017, 41.004807, 38.777008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.151138, 40.845264, 38.945652>,  <28.049675, 40.579361, 39.226723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151138, 40.845264, 38.945652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063399, 0.713449, 0.697833,
		0.965214, -0.221561, 0.138828,
		0.253659, 0.664756, -0.702678,
		28.227236, 41.044693, 38.734848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447012, 41.014137, 39.588467>,  <28.049675, 40.579361, 39.226723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.447012, 41.014137, 39.588467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.342157, 41.212700, 39.257442>,  <28.279245, 41.331837, 39.058826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.342157, 41.212700, 39.257442>,  <28.447012, 41.014137, 39.588467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342157, 41.212700, 39.257442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088604, 0.866310, 0.491586,
		0.960954, 0.055538, -0.271076,
		-0.262137, 0.496410, -0.827563,
		28.263515, 41.361622, 39.009174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995415, 41.533024, 39.570351>,  <28.447012, 41.014137, 39.588467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995415, 41.533024, 39.570351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.662724, 41.641369, 39.376499>,  <28.463108, 41.706375, 39.260189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.662724, 41.641369, 39.376499>,  <28.995415, 41.533024, 39.570351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662724, 41.641369, 39.376499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081225, 0.804154, 0.588845,
		0.549208, 0.529123, -0.646838,
		-0.831729, 0.270859, -0.484626,
		28.413204, 41.722626, 39.231110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.052483, 39.244705, 44.929585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.689720, 39.102074, 45.019360>,  <42.472061, 39.016495, 45.073223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.689720, 39.102074, 45.019360>,  <43.052483, 39.244705, 44.929585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689720, 39.102074, 45.019360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049784, 0.438267, 0.897465,
		-0.418381, 0.825090, -0.379715,
		-0.906906, -0.356578, 0.224439,
		42.417648, 38.995102, 45.086693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626499, 39.840981, 45.313686>,  <43.052483, 39.244705, 44.929585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626499, 39.840981, 45.313686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.451244, 39.487419, 45.379101>,  <42.346092, 39.275280, 45.418350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.451244, 39.487419, 45.379101>,  <42.626499, 39.840981, 45.313686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451244, 39.487419, 45.379101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134344, 0.244270, 0.960356,
		-0.888812, 0.398798, -0.225772,
		-0.438137, -0.883908, 0.163534,
		42.319805, 39.222248, 45.428162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182667, 40.114189, 45.700722>,  <42.626499, 39.840981, 45.313686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182667, 40.114189, 45.700722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.162682, 39.719021, 45.759396>,  <42.150692, 39.481918, 45.794601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.162682, 39.719021, 45.759396>,  <42.182667, 40.114189, 45.700722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162682, 39.719021, 45.759396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050915, 0.149200, 0.987495,
		-0.997452, 0.041870, -0.057755,
		-0.049963, -0.987920, 0.146688,
		42.147694, 39.422646, 45.803402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599770, 39.995075, 46.044376>,  <42.182667, 40.114189, 45.700722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599770, 39.995075, 46.044376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.842117, 39.685574, 46.118366>,  <41.987526, 39.499870, 46.162762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.842117, 39.685574, 46.118366>,  <41.599770, 39.995075, 46.044376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842117, 39.685574, 46.118366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135900, 0.128436, 0.982362,
		-0.783868, -0.620325, -0.027338,
		0.605873, -0.773758, 0.184979,
		42.023880, 39.453445, 46.173859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299080, 39.499279, 46.472988>,  <41.599770, 39.995075, 46.044376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299080, 39.499279, 46.472988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.690895, 39.438450, 46.525719>,  <41.925983, 39.401951, 46.557358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.690895, 39.438450, 46.525719>,  <41.299080, 39.499279, 46.472988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690895, 39.438450, 46.525719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120024, 0.084403, 0.989176,
		-0.161554, -0.984759, 0.064423,
		0.979538, -0.152073, 0.131831,
		41.984756, 39.392830, 46.565269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342064, 39.040894, 46.971924>,  <41.299080, 39.499279, 46.472988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342064, 39.040894, 46.971924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.714813, 39.185909, 46.966480>,  <41.938461, 39.272919, 46.963215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.714813, 39.185909, 46.966480>,  <41.342064, 39.040894, 46.971924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714813, 39.185909, 46.966480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009221, 0.013830, 0.999862,
		0.362675, -0.931867, 0.009545,
		0.931870, 0.362537, -0.013608,
		41.994373, 39.294670, 46.962399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764587, 38.601078, 47.425262>,  <41.342064, 39.040894, 46.971924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764587, 38.601078, 47.425262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.926895, 38.965675, 47.398354>,  <42.024281, 39.184433, 47.382206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.926895, 38.965675, 47.398354>,  <41.764587, 38.601078, 47.425262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926895, 38.965675, 47.398354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018775, 0.081904, 0.996463,
		0.913782, -0.403072, 0.050347,
		0.405770, 0.911496, -0.067275,
		42.048626, 39.239124, 47.378170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221104, 38.574791, 47.952663>,  <41.764587, 38.601078, 47.425262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221104, 38.574791, 47.952663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.181454, 38.965508, 47.876705>,  <42.157665, 39.199936, 47.831131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.181454, 38.965508, 47.876705>,  <42.221104, 38.574791, 47.952663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181454, 38.965508, 47.876705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010395, 0.191841, 0.981371,
		0.995021, 0.095302, -0.029169,
		-0.099122, 0.976788, -0.189895,
		42.151718, 39.258545, 47.819736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702995, 39.011353, 48.220951>,  <42.221104, 38.574791, 47.952663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702995, 39.011353, 48.220951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.414867, 39.287376, 48.192810>,  <42.241989, 39.452991, 48.175926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.414867, 39.287376, 48.192810>,  <42.702995, 39.011353, 48.220951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414867, 39.287376, 48.192810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211733, 0.315330, 0.925060,
		0.660533, 0.651446, -0.373248,
		-0.720323, 0.690061, -0.070353,
		42.198769, 39.494396, 48.171703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949005, 39.630291, 48.554760>,  <42.702995, 39.011353, 48.220951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949005, 39.630291, 48.554760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.555298, 39.698475, 48.536175>,  <42.319073, 39.739384, 48.525024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.555298, 39.698475, 48.536175>,  <42.949005, 39.630291, 48.554760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555298, 39.698475, 48.536175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028052, 0.410400, 0.911474,
		0.174437, 0.895832, -0.408726,
		-0.984269, 0.170460, -0.046459,
		42.260017, 39.749615, 48.522236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972794, 40.195190, 48.975033>,  <42.949005, 39.630291, 48.554760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972794, 40.195190, 48.975033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.589024, 40.093346, 48.926575>,  <42.358761, 40.032238, 48.897499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.589024, 40.093346, 48.926575>,  <42.972794, 40.195190, 48.975033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589024, 40.093346, 48.926575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236615, 0.493350, 0.837030,
		-0.153356, 0.831731, -0.533578,
		-0.959424, -0.254616, -0.121141,
		42.301197, 40.016960, 48.890232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563648, 40.775932, 48.963188>,  <42.972794, 40.195190, 48.975033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563648, 40.775932, 48.963188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.297844, 40.506813, 49.093281>,  <42.138363, 40.345341, 49.171337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.297844, 40.506813, 49.093281>,  <42.563648, 40.775932, 48.963188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297844, 40.506813, 49.093281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095527, 0.355168, 0.929909,
		-0.741148, 0.649002, -0.171743,
		-0.664510, -0.672794, 0.325230,
		42.098492, 40.304974, 49.190849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074844, 41.120907, 49.435482>,  <42.563648, 40.775932, 48.963188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074844, 41.120907, 49.435482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.055923, 40.731384, 49.524445>,  <42.044571, 40.497669, 49.577824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.055923, 40.731384, 49.524445>,  <42.074844, 41.120907, 49.435482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055923, 40.731384, 49.524445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195617, 0.209316, 0.958082,
		-0.979539, 0.088825, 0.180592,
		-0.047301, -0.973805, 0.222409,
		42.041733, 40.439243, 49.591167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469353, 40.892376, 49.855137>,  <42.074844, 41.120907, 49.435482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469353, 40.892376, 49.855137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.796562, 40.674301, 49.928455>,  <41.992889, 40.543457, 49.972446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.796562, 40.674301, 49.928455>,  <41.469353, 40.892376, 49.855137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796562, 40.674301, 49.928455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016755, 0.341131, 0.939866,
		-0.574936, -0.765765, 0.288189,
		0.818027, -0.545191, 0.183298,
		42.041969, 40.510742, 49.983444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147396, 41.312260, 49.327789>,  <41.469353, 40.892376, 49.855137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147396, 41.312260, 49.327789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.853745, 41.582565, 49.301247>,  <40.677555, 41.744747, 49.285320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.853745, 41.582565, 49.301247>,  <41.147396, 41.312260, 49.327789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853745, 41.582565, 49.301247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484348, -0.589646, -0.646317,
		-0.475882, -0.442341, 0.760179,
		-0.734128, 0.675761, -0.066355,
		40.633507, 41.785294, 49.281342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409435, 40.973564, 49.407528>,  <41.147396, 41.312260, 49.327789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409435, 40.973564, 49.407528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.345810, 41.309628, 49.200134>,  <40.307632, 41.511265, 49.075699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.345810, 41.309628, 49.200134>,  <40.409435, 40.973564, 49.407528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345810, 41.309628, 49.200134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484666, -0.523985, -0.700384,
		-0.860114, 0.139883, 0.490547,
		-0.159067, 0.840162, -0.518484,
		40.298088, 41.561676, 49.044590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649574, 41.052170, 49.242058>,  <40.409435, 40.973564, 49.407528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649574, 41.052170, 49.242058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.853870, 41.265827, 48.972588>,  <39.976448, 41.394020, 48.810905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.853870, 41.265827, 48.972588>,  <39.649574, 41.052170, 49.242058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853870, 41.265827, 48.972588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520351, -0.431707, -0.736793,
		-0.684383, 0.726856, 0.057452,
		0.510740, 0.534143, -0.673673,
		40.007092, 41.426071, 48.770485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221931, 41.403316, 48.706005>,  <39.649574, 41.052170, 49.242058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221931, 41.403316, 48.706005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.575417, 41.414059, 48.519100>,  <39.787506, 41.420506, 48.406956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.575417, 41.414059, 48.519100>,  <39.221931, 41.403316, 48.706005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575417, 41.414059, 48.519100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426905, -0.362985, -0.828248,
		-0.191852, 0.931408, -0.309309,
		0.883711, 0.026855, -0.467262,
		39.840530, 41.422115, 48.378922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130909, 41.614780, 48.026806>,  <39.221931, 41.403316, 48.706005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130909, 41.614780, 48.026806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.508862, 41.501724, 47.960690>,  <39.735634, 41.433891, 47.921021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.508862, 41.501724, 47.960690>,  <39.130909, 41.614780, 48.026806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508862, 41.501724, 47.960690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216649, -0.161168, -0.962854,
		0.245501, 0.945589, -0.213518,
		0.944877, -0.282640, -0.165294,
		39.792324, 41.416931, 47.911102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315502, 41.944016, 47.398613>,  <39.130909, 41.614780, 48.026806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315502, 41.944016, 47.398613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.562958, 41.631840, 47.434856>,  <39.711430, 41.444534, 47.456600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.562958, 41.631840, 47.434856>,  <39.315502, 41.944016, 47.398613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562958, 41.631840, 47.434856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237955, -0.296020, -0.925068,
		0.748777, 0.550719, -0.368837,
		0.618636, -0.780436, 0.090606,
		39.748547, 41.397709, 47.462040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906406, 41.955688, 46.826584>,  <39.315502, 41.944016, 47.398613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906406, 41.955688, 46.826584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.902317, 41.581188, 46.967052>,  <39.899864, 41.356487, 47.051334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.902317, 41.581188, 46.967052>,  <39.906406, 41.955688, 46.826584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902317, 41.581188, 46.967052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115495, -0.347737, -0.930452,
		0.993255, -0.050075, -0.104577,
		-0.010227, -0.936254, 0.351175,
		39.899250, 41.300312, 47.072407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308537, 41.640846, 46.391777>,  <39.906406, 41.955688, 46.826584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308537, 41.640846, 46.391777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.119438, 41.340961, 46.577007>,  <40.005978, 41.161030, 46.688145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.119438, 41.340961, 46.577007>,  <40.308537, 41.640846, 46.391777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119438, 41.340961, 46.577007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101432, -0.475717, -0.873731,
		0.875342, -0.460023, 0.148848,
		-0.472745, -0.749715, 0.463076,
		39.977615, 41.116047, 46.715931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669712, 41.131191, 46.285374>,  <40.308537, 41.640846, 46.391777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669712, 41.131191, 46.285374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.320450, 40.961224, 46.380913>,  <40.110893, 40.859245, 46.438236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.320450, 40.961224, 46.380913>,  <40.669712, 41.131191, 46.285374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320450, 40.961224, 46.380913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042371, -0.554313, -0.831229,
		0.485601, -0.715670, 0.502005,
		-0.873153, -0.424916, 0.238851,
		40.058502, 40.833748, 46.452568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700493, 40.548389, 45.974720>,  <40.669712, 41.131191, 46.285374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700493, 40.548389, 45.974720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.306793, 40.555592, 46.045071>,  <40.070572, 40.559914, 46.087280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.306793, 40.555592, 46.045071>,  <40.700493, 40.548389, 45.974720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306793, 40.555592, 46.045071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163664, -0.469036, -0.867882,
		0.066863, -0.882995, 0.464595,
		-0.984247, 0.018009, 0.175876,
		40.011520, 40.560993, 46.097832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419174, 39.856266, 45.775806>,  <40.700493, 40.548389, 45.974720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419174, 39.856266, 45.775806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.090874, 40.084579, 45.766281>,  <39.893894, 40.221569, 45.760567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.090874, 40.084579, 45.766281>,  <40.419174, 39.856266, 45.775806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090874, 40.084579, 45.766281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282616, -0.441899, -0.851383,
		-0.496482, -0.692044, 0.524004,
		-0.820752, 0.570789, -0.023812,
		39.844646, 40.255814, 45.759136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823391, 39.431057, 45.675938>,  <40.419174, 39.856266, 45.775806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823391, 39.431057, 45.675938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.703964, 39.792030, 45.551693>,  <39.632309, 40.008614, 45.477146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.703964, 39.792030, 45.551693>,  <39.823391, 39.431057, 45.675938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703964, 39.792030, 45.551693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192474, -0.375699, -0.906534,
		-0.934779, -0.210876, 0.285865,
		-0.298566, 0.902431, -0.310608,
		39.614395, 40.062759, 45.458511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192432, 39.359524, 45.364216>,  <39.823391, 39.431057, 45.675938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192432, 39.359524, 45.364216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.405315, 39.667019, 45.222343>,  <39.533047, 39.851517, 45.137222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.405315, 39.667019, 45.222343>,  <39.192432, 39.359524, 45.364216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405315, 39.667019, 45.222343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160728, -0.319573, -0.933831,
		-0.831217, 0.553999, -0.046521,
		0.532208, 0.768738, -0.354677,
		39.564980, 39.897640, 45.115940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187641, 39.215931, 44.733223>,  <39.192432, 39.359524, 45.364216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187641, 39.215931, 44.733223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.409378, 39.540340, 44.658455>,  <39.542419, 39.734985, 44.613594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.409378, 39.540340, 44.658455>,  <39.187641, 39.215931, 44.733223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409378, 39.540340, 44.658455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036801, -0.248249, -0.967997,
		-0.831475, 0.529722, -0.167462,
		0.554342, 0.811028, -0.186919,
		39.575680, 39.783649, 44.602379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834969, 39.881451, 44.700623>,  <39.187641, 39.215931, 44.733223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834969, 39.881451, 44.700623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.435322, 39.895809, 44.691967>,  <38.195534, 39.904423, 44.686775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.435322, 39.895809, 44.691967>,  <38.834969, 39.881451, 44.700623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435322, 39.895809, 44.691967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001708, 0.550639, 0.834742,
		0.041877, 0.833971, -0.550217,
		-0.999121, 0.035896, -0.021635,
		38.135586, 39.906578, 44.685478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656071, 40.534389, 44.900532>,  <38.834969, 39.881451, 44.700623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656071, 40.534389, 44.900532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.318165, 40.325325, 44.946487>,  <38.115421, 40.199886, 44.974060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.318165, 40.325325, 44.946487>,  <38.656071, 40.534389, 44.900532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318165, 40.325325, 44.946487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186726, 0.489084, 0.852015,
		-0.501506, 0.698299, -0.510755,
		-0.844763, -0.522662, 0.114888,
		38.064735, 40.168526, 44.980953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285404, 40.866337, 45.360470>,  <38.656071, 40.534389, 44.900532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285404, 40.866337, 45.360470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.029999, 40.558514, 45.356846>,  <37.876755, 40.373821, 45.354671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.029999, 40.558514, 45.356846>,  <38.285404, 40.866337, 45.360470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029999, 40.558514, 45.356846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266052, 0.209671, 0.940880,
		-0.722159, 0.603177, -0.338620,
		-0.638516, -0.769555, -0.009061,
		37.838444, 40.327648, 45.354126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747616, 41.120113, 45.631855>,  <38.285404, 40.866337, 45.360470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747616, 41.120113, 45.631855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.718224, 40.725071, 45.687328>,  <37.700588, 40.488045, 45.720612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.718224, 40.725071, 45.687328>,  <37.747616, 41.120113, 45.631855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718224, 40.725071, 45.687328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213048, 0.151394, 0.965241,
		-0.974275, 0.041382, -0.221532,
		-0.073482, -0.987607, 0.138684,
		37.696178, 40.428787, 45.728935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137398, 41.058247, 45.899544>,  <37.747616, 41.120113, 45.631855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137398, 41.058247, 45.899544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.295109, 40.706833, 46.007412>,  <37.389736, 40.495983, 46.072132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.295109, 40.706833, 46.007412>,  <37.137398, 41.058247, 45.899544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295109, 40.706833, 46.007412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401231, 0.099438, 0.910564,
		-0.826778, -0.467214, -0.313289,
		0.394275, -0.878535, 0.269674,
		37.413391, 40.443272, 46.088314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597336, 40.660408, 46.244209>,  <37.137398, 41.058247, 45.899544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597336, 40.660408, 46.244209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.941971, 40.511108, 46.381824>,  <37.148750, 40.421528, 46.464394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.941971, 40.511108, 46.381824>,  <36.597336, 40.660408, 46.244209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941971, 40.511108, 46.381824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339332, 0.080559, 0.937211,
		-0.377526, -0.924228, -0.057246,
		0.861584, -0.373247, 0.344033,
		37.200447, 40.399136, 46.485035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413528, 40.144821, 46.740532>,  <36.597336, 40.660408, 46.244209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413528, 40.144821, 46.740532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.790173, 40.230469, 46.844475>,  <37.016159, 40.281857, 46.906841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.790173, 40.230469, 46.844475>,  <36.413528, 40.144821, 46.740532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790173, 40.230469, 46.844475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304880, 0.214642, 0.927889,
		0.142897, -0.952935, 0.267388,
		0.941610, 0.214113, 0.259859,
		37.072655, 40.294704, 46.922432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730305, 39.553711, 46.767735>,  <36.413528, 40.144821, 46.740532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730305, 39.553711, 46.767735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.512848, 39.289944, 46.975437>,  <36.382374, 39.131683, 47.100060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.512848, 39.289944, 46.975437>,  <36.730305, 39.553711, 46.767735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512848, 39.289944, 46.975437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218707, -0.485995, -0.846154,
		0.810324, -0.573566, 0.119986,
		-0.543638, -0.659417, 0.519256,
		36.349758, 39.092117, 47.131214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962593, 38.887806, 46.566509>,  <36.730305, 39.553711, 46.767735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962593, 38.887806, 46.566509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.585903, 38.831306, 46.688625>,  <36.359890, 38.797405, 46.761894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.585903, 38.831306, 46.688625>,  <36.962593, 38.887806, 46.566509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585903, 38.831306, 46.688625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192165, -0.519004, -0.832891,
		0.276091, -0.843021, 0.461616,
		-0.941725, -0.141247, 0.305292,
		36.303387, 38.788933, 46.780212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906372, 38.229023, 46.609150>,  <36.962593, 38.887806, 46.566509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906372, 38.229023, 46.609150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.535923, 38.379211, 46.594616>,  <36.313652, 38.469322, 46.585896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.535923, 38.379211, 46.594616>,  <36.906372, 38.229023, 46.609150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535923, 38.379211, 46.594616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223537, -0.623839, -0.748904,
		-0.303854, -0.685456, 0.661682,
		-0.926123, 0.375468, -0.036331,
		36.258087, 38.491852, 46.583717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433704, 37.664356, 46.400497>,  <36.906372, 38.229023, 46.609150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433704, 37.664356, 46.400497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.221386, 37.988914, 46.302601>,  <36.093994, 38.183647, 46.243862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.221386, 37.988914, 46.302601>,  <36.433704, 37.664356, 46.400497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221386, 37.988914, 46.302601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321159, -0.459814, -0.827906,
		-0.784291, -0.360848, 0.504654,
		-0.530795, 0.811394, -0.244738,
		36.062149, 38.232334, 46.229179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696518, 37.346119, 46.257427>,  <36.433704, 37.664356, 46.400497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696518, 37.346119, 46.257427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.727280, 37.701660, 46.076752>,  <35.745739, 37.914986, 45.968346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.727280, 37.701660, 46.076752>,  <35.696518, 37.346119, 46.257427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727280, 37.701660, 46.076752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475265, -0.365568, -0.800302,
		-0.876475, 0.276222, 0.394326,
		0.076908, 0.888854, -0.451690,
		35.750351, 37.968315, 45.941246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049862, 37.471901, 45.997490>,  <35.696518, 37.346119, 46.257427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049862, 37.471901, 45.997490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.297085, 37.696064, 45.776966>,  <35.445419, 37.830563, 45.644650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.297085, 37.696064, 45.776966>,  <35.049862, 37.471901, 45.997490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297085, 37.696064, 45.776966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426440, -0.350149, -0.833993,
		-0.660419, 0.750558, 0.022568,
		0.618058, 0.560409, -0.551313,
		35.482502, 37.864185, 45.611572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668419, 37.759747, 45.461697>,  <35.049862, 37.471901, 45.997490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668419, 37.759747, 45.461697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033012, 37.830879, 45.313335>,  <35.251770, 37.873558, 45.224319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033012, 37.830879, 45.313335>,  <34.668419, 37.759747, 45.461697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033012, 37.830879, 45.313335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288030, -0.367812, -0.884168,
		-0.293657, 0.912738, -0.284034,
		0.911485, 0.177832, -0.370906,
		35.306458, 37.884228, 45.202065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.280552, 37.072166, 50.617088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.236797, 36.741016, 50.837147>,  <39.210545, 36.542328, 50.969181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.236797, 36.741016, 50.837147>,  <39.280552, 37.072166, 50.617088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236797, 36.741016, 50.837147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933143, -0.105162, -0.343781,
		0.342461, -0.550972, -0.761019,
		-0.109383, -0.827871, 0.550149,
		39.203983, 36.492657, 51.002193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806713, 37.224201, 50.086212>,  <39.280552, 37.072166, 50.617088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806713, 37.224201, 50.086212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.041592, 37.547974, 50.084389>,  <40.182518, 37.742237, 50.083294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.041592, 37.547974, 50.084389>,  <39.806713, 37.224201, 50.086212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041592, 37.547974, 50.084389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062963, -0.051288, -0.996697,
		-0.806994, 0.584966, -0.081080,
		0.587193, 0.809434, -0.004557,
		40.217751, 37.790802, 50.083023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549400, 37.742142, 49.512711>,  <39.806713, 37.224201, 50.086212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549400, 37.742142, 49.512711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.929787, 37.839729, 49.588760>,  <40.158016, 37.898281, 49.634388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.929787, 37.839729, 49.588760>,  <39.549400, 37.742142, 49.512711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929787, 37.839729, 49.588760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222809, -0.114004, -0.968173,
		-0.214532, 0.963058, -0.162773,
		0.950964, 0.243971, 0.190120,
		40.215076, 37.912922, 49.645798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655342, 38.179882, 49.059155>,  <39.549400, 37.742142, 49.512711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655342, 38.179882, 49.059155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.019367, 38.035984, 49.141491>,  <40.237782, 37.949646, 49.190891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.019367, 38.035984, 49.141491>,  <39.655342, 38.179882, 49.059155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019367, 38.035984, 49.141491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176104, -0.113952, -0.977754,
		0.375199, 0.926066, -0.040351,
		0.910062, -0.359747, 0.205838,
		40.292385, 37.928059, 49.203243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152840, 38.566853, 48.524982>,  <39.655342, 38.179882, 49.059155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152840, 38.566853, 48.524982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.325603, 38.230892, 48.656445>,  <40.429260, 38.029316, 48.735321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.325603, 38.230892, 48.656445>,  <40.152840, 38.566853, 48.524982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325603, 38.230892, 48.656445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227899, -0.250944, -0.940792,
		0.872651, 0.481234, 0.083029,
		0.431905, -0.839905, 0.328659,
		40.455173, 37.978920, 48.755043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801102, 38.468304, 48.072662>,  <40.152840, 38.566853, 48.524982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801102, 38.468304, 48.072662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.724674, 38.112373, 48.238411>,  <40.678818, 37.898815, 48.337860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.724674, 38.112373, 48.238411>,  <40.801102, 38.468304, 48.072662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724674, 38.112373, 48.238411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224692, -0.450584, -0.863995,
		0.955514, -0.071976, 0.286029,
		-0.191067, -0.889828, 0.414367,
		40.667355, 37.845425, 48.362720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358704, 38.137154, 48.014198>,  <40.801102, 38.468304, 48.072662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358704, 38.137154, 48.014198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.067730, 37.863228, 48.031464>,  <40.893147, 37.698872, 48.041824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.067730, 37.863228, 48.031464>,  <41.358704, 38.137154, 48.014198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067730, 37.863228, 48.031464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388999, -0.463399, -0.796204,
		0.565256, -0.562397, 0.603486,
		-0.727438, -0.684815, 0.043167,
		40.849499, 37.657784, 48.044415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589920, 37.496761, 47.703724>,  <41.358704, 38.137154, 48.014198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589920, 37.496761, 47.703724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.201645, 37.401558, 47.717102>,  <40.968681, 37.344437, 47.725128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.201645, 37.401558, 47.717102>,  <41.589920, 37.496761, 47.703724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201645, 37.401558, 47.717102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137731, -0.664876, -0.734146,
		0.196970, -0.708019, 0.678168,
		-0.970687, -0.238009, 0.033445,
		40.910439, 37.330154, 47.727135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599186, 36.823231, 47.651657>,  <41.589920, 37.496761, 47.703724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599186, 36.823231, 47.651657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.237438, 36.943352, 47.530380>,  <41.020390, 37.015427, 47.457615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.237438, 36.943352, 47.530380>,  <41.599186, 36.823231, 47.651657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237438, 36.943352, 47.530380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064199, -0.606652, -0.792371,
		-0.421885, -0.736064, 0.529360,
		-0.904374, 0.300305, -0.303192,
		40.966125, 37.033443, 47.439423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181664, 36.245667, 47.665264>,  <41.599186, 36.823231, 47.651657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181664, 36.245667, 47.665264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.030521, 36.492702, 47.389351>,  <40.939835, 36.640923, 47.223801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.030521, 36.492702, 47.389351>,  <41.181664, 36.245667, 47.665264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030521, 36.492702, 47.389351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096190, -0.714803, -0.692679,
		-0.920853, -0.328086, 0.210688,
		-0.377858, 0.617590, -0.689787,
		40.917164, 36.677979, 47.182415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881516, 35.780499, 47.225689>,  <41.181664, 36.245667, 47.665264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881516, 35.780499, 47.225689> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.883331, 36.113396, 47.003929>,  <40.884422, 36.313133, 46.870872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.883331, 36.113396, 47.003929>,  <40.881516, 35.780499, 47.225689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883331, 36.113396, 47.003929> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026898, -0.554305, -0.831879,
		-0.999628, -0.011132, -0.024904,
		0.004544, 0.832239, -0.554398,
		40.884693, 36.363068, 46.837608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342945, 35.686378, 46.729527>,  <40.881516, 35.780499, 47.225689>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342945, 35.686378, 46.729527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.584320, 35.957214, 46.561047>,  <40.729145, 36.119717, 46.459957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.584320, 35.957214, 46.561047>,  <40.342945, 35.686378, 46.729527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584320, 35.957214, 46.561047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178741, -0.399917, -0.898954,
		-0.777121, 0.617747, -0.120299,
		0.603435, 0.677094, -0.421200,
		40.765350, 36.160343, 46.434685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761650, 36.080151, 46.989414>,  <40.342945, 35.686378, 46.729527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761650, 36.080151, 46.989414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.388676, 35.957012, 46.913746>,  <39.164890, 35.883129, 46.868343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.388676, 35.957012, 46.913746>,  <39.761650, 36.080151, 46.989414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388676, 35.957012, 46.913746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307946, 0.403196, 0.861744,
		-0.189015, 0.861778, -0.470757,
		-0.932439, -0.307851, -0.189171,
		39.108944, 35.864658, 46.856995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289330, 36.684635, 46.977936>,  <39.761650, 36.080151, 46.989414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289330, 36.684635, 46.977936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.083530, 36.353832, 47.068581>,  <38.960049, 36.155350, 47.122967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.083530, 36.353832, 47.068581>,  <39.289330, 36.684635, 46.977936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083530, 36.353832, 47.068581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390845, 0.461398, 0.796462,
		-0.763236, 0.321209, -0.560620,
		-0.514500, -0.827004, 0.226613,
		38.929180, 36.105732, 47.136566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594719, 36.860325, 47.124413>,  <39.289330, 36.684635, 46.977936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594719, 36.860325, 47.124413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.667484, 36.511837, 47.306789>,  <38.711143, 36.302746, 47.416214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.667484, 36.511837, 47.306789>,  <38.594719, 36.860325, 47.124413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667484, 36.511837, 47.306789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353648, 0.374686, 0.857055,
		-0.917519, -0.317150, -0.239946,
		0.181911, -0.871221, 0.455942,
		38.722057, 36.250469, 47.443573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964981, 36.678070, 47.497467>,  <38.594719, 36.860325, 47.124413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964981, 36.678070, 47.497467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.243542, 36.450603, 47.672577>,  <38.410679, 36.314125, 47.777645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.243542, 36.450603, 47.672577>,  <37.964981, 36.678070, 47.497467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243542, 36.450603, 47.672577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417982, 0.174471, 0.891544,
		-0.583367, -0.803855, -0.116189,
		0.696401, -0.568662, 0.437777,
		38.452461, 36.280006, 47.803909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679665, 36.139961, 47.729237>,  <37.964981, 36.678070, 47.497467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679665, 36.139961, 47.729237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.013092, 36.185371, 47.945484>,  <38.213150, 36.212616, 48.075233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.013092, 36.185371, 47.945484>,  <37.679665, 36.139961, 47.729237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013092, 36.185371, 47.945484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552358, 0.184867, 0.812850,
		-0.007665, -0.976185, 0.216806,
		0.833572, 0.113524, 0.540620,
		38.263165, 36.219429, 48.107670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473965, 35.938400, 48.355690>,  <37.679665, 36.139961, 47.729237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473965, 35.938400, 48.355690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.835526, 36.083576, 48.446224>,  <38.052464, 36.170681, 48.500546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.835526, 36.083576, 48.446224>,  <37.473965, 35.938400, 48.355690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835526, 36.083576, 48.446224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324958, 0.238618, 0.915131,
		0.278135, -0.900740, 0.333630,
		0.903904, 0.362946, 0.226335,
		38.106697, 36.192459, 48.514126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646362, 35.715935, 49.033916>,  <37.473965, 35.938400, 48.355690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646362, 35.715935, 49.033916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.891392, 36.025562, 48.969955>,  <38.038410, 36.211338, 48.931580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.891392, 36.025562, 48.969955>,  <37.646362, 35.715935, 49.033916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891392, 36.025562, 48.969955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323153, 0.429889, 0.843070,
		0.721333, -0.464774, 0.513483,
		0.612578, 0.774067, -0.159900,
		38.075165, 36.257782, 48.921986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041523, 35.847500, 49.649700>,  <37.646362, 35.715935, 49.033916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041523, 35.847500, 49.649700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.027096, 36.181396, 49.429920>,  <38.018440, 36.381737, 49.298050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.027096, 36.181396, 49.429920>,  <38.041523, 35.847500, 49.649700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027096, 36.181396, 49.429920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231644, 0.527854, 0.817136,
		0.972132, 0.156746, 0.174327,
		-0.036064, 0.834746, -0.549453,
		38.016277, 36.431820, 49.265083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443581, 36.274853, 50.035248>,  <38.041523, 35.847500, 49.649700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443581, 36.274853, 50.035248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.198109, 36.488129, 49.802315>,  <38.050827, 36.616096, 49.662556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.198109, 36.488129, 49.802315>,  <38.443581, 36.274853, 50.035248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198109, 36.488129, 49.802315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383684, 0.443214, 0.810153,
		0.690064, 0.720602, -0.067413,
		-0.613676, 0.533192, -0.582329,
		38.014008, 36.648087, 49.627617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451443, 36.852016, 50.353973>,  <38.443581, 36.274853, 50.035248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451443, 36.852016, 50.353973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.116280, 36.880856, 50.137562>,  <37.915184, 36.898159, 50.007713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.116280, 36.880856, 50.137562>,  <38.451443, 36.852016, 50.353973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116280, 36.880856, 50.137562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474928, 0.392211, 0.787790,
		0.268996, 0.917045, -0.294396,
		-0.837905, 0.072096, -0.541034,
		37.864906, 36.902485, 49.975250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234493, 37.516556, 50.357689>,  <38.451443, 36.852016, 50.353973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234493, 37.516556, 50.357689> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.900520, 37.327011, 50.245731>,  <37.700134, 37.213284, 50.178555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.900520, 37.327011, 50.245731>,  <38.234493, 37.516556, 50.357689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900520, 37.327011, 50.245731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513609, 0.488195, 0.705600,
		-0.197710, 0.732888, -0.650989,
		-0.834935, -0.473858, -0.279896,
		37.650040, 37.184853, 50.161762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719471, 37.989746, 50.366535>,  <38.234493, 37.516556, 50.357689>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719471, 37.989746, 50.366535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.536076, 37.635117, 50.391090>,  <37.426037, 37.422337, 50.405823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.536076, 37.635117, 50.391090>,  <37.719471, 37.989746, 50.366535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536076, 37.635117, 50.391090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594043, 0.357120, 0.720818,
		-0.660984, 0.294018, -0.690400,
		-0.458489, -0.886577, 0.061391,
		37.398529, 37.369144, 50.409508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037468, 38.181412, 50.597378>,  <37.719471, 37.989746, 50.366535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037468, 38.181412, 50.597378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.025574, 37.785980, 50.656475>,  <37.018436, 37.548721, 50.691933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.025574, 37.785980, 50.656475>,  <37.037468, 38.181412, 50.597378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025574, 37.785980, 50.656475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662766, 0.130147, 0.737430,
		-0.748236, -0.075995, -0.659066,
		-0.029735, -0.988578, 0.147747,
		37.016655, 37.489407, 50.700798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325043, 37.964996, 50.737293>,  <37.037468, 38.181412, 50.597378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325043, 37.964996, 50.737293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.499649, 37.670094, 50.943558>,  <36.604412, 37.493153, 51.067318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.499649, 37.670094, 50.943558>,  <36.325043, 37.964996, 50.737293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499649, 37.670094, 50.943558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621104, 0.167722, 0.765571,
		-0.650910, -0.654464, -0.384698,
		0.436516, -0.737255, 0.515662,
		36.630604, 37.448917, 51.098255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131805, 38.132351, 50.029793>,  <36.325043, 37.964996, 50.737293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131805, 38.132351, 50.029793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.110077, 38.518497, 49.927719>,  <36.097038, 38.750187, 49.866474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.110077, 38.518497, 49.927719>,  <36.131805, 38.132351, 50.029793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110077, 38.518497, 49.927719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249223, -0.260577, -0.932731,
		-0.966921, 0.012930, 0.254747,
		-0.054321, 0.965366, -0.255180,
		36.093781, 38.808109, 49.851166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487282, 38.242588, 49.686825>,  <36.131805, 38.132351, 50.029793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487282, 38.242588, 49.686825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.731636, 38.530323, 49.554535>,  <35.878246, 38.702965, 49.475163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.731636, 38.530323, 49.554535>,  <35.487282, 38.242588, 49.686825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731636, 38.530323, 49.554535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239765, -0.230024, -0.943187,
		-0.754542, 0.655473, 0.031953,
		0.610884, 0.719336, -0.330722,
		35.914902, 38.746124, 49.455318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251137, 38.392048, 49.091450>,  <35.487282, 38.242588, 49.686825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251137, 38.392048, 49.091450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.605564, 38.570595, 49.041416>,  <35.818218, 38.677723, 49.011395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.605564, 38.570595, 49.041416>,  <35.251137, 38.392048, 49.091450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605564, 38.570595, 49.041416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068710, -0.140399, -0.987708,
		-0.458442, 0.883767, -0.093733,
		0.886064, 0.446367, -0.125088,
		35.871384, 38.704506, 49.003891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182556, 39.087891, 48.832466>,  <35.251137, 38.392048, 49.091450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182556, 39.087891, 48.832466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.567112, 39.178070, 48.895596>,  <35.797844, 39.232178, 48.933475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.567112, 39.178070, 48.895596>,  <35.182556, 39.087891, 48.832466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567112, 39.178070, 48.895596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171423, -0.041937, -0.984305,
		-0.215294, 0.973351, -0.078965,
		0.961386, 0.225451, 0.157826,
		35.855526, 39.245705, 48.942944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385475, 39.645657, 48.422478>,  <35.182556, 39.087891, 48.832466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385475, 39.645657, 48.422478> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.717316, 39.423218, 48.442596>,  <35.916420, 39.289757, 48.454666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.717316, 39.423218, 48.442596>,  <35.385475, 39.645657, 48.422478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717316, 39.423218, 48.442596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018329, -0.062905, -0.997851,
		0.558062, 0.828736, -0.041993,
		0.829597, -0.556093, 0.050295,
		35.966194, 39.256390, 48.457684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949566, 39.895271, 47.987907>,  <35.385475, 39.645657, 48.422478>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949566, 39.895271, 47.987907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.041229, 39.507526, 48.023273>,  <36.096226, 39.274879, 48.044491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.041229, 39.507526, 48.023273>,  <35.949566, 39.895271, 47.987907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041229, 39.507526, 48.023273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157257, -0.052766, -0.986147,
		0.960602, 0.239887, 0.140348,
		0.229159, -0.969366, 0.088411,
		36.109978, 39.216717, 48.049797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484459, 39.895725, 47.470390>,  <35.949566, 39.895271, 47.987907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484459, 39.895725, 47.470390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.348370, 39.527863, 47.548851>,  <36.266716, 39.307144, 47.595928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.348370, 39.527863, 47.548851>,  <36.484459, 39.895725, 47.470390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348370, 39.527863, 47.548851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000779, -0.208317, -0.978061,
		0.940346, -0.332908, 0.070157,
		-0.340219, -0.919661, 0.196149,
		36.246304, 39.251965, 47.607697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987907, 39.650177, 47.971447>,  <36.484459, 39.895725, 47.470390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987907, 39.650177, 47.971447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.182880, 39.952991, 47.797409>,  <37.299866, 40.134682, 47.692986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.182880, 39.952991, 47.797409>,  <36.987907, 39.650177, 47.971447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182880, 39.952991, 47.797409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021158, 0.487908, 0.872639,
		0.872904, -0.434558, 0.221805,
		0.487433, 0.757037, -0.435091,
		37.329109, 40.180103, 47.666882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563354, 39.812759, 48.358109>,  <36.987907, 39.650177, 47.971447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563354, 39.812759, 48.358109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.491959, 40.142868, 48.143795>,  <37.449120, 40.340935, 48.015205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.491959, 40.142868, 48.143795>,  <37.563354, 39.812759, 48.358109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491959, 40.142868, 48.143795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135935, 0.559990, 0.817271,
		0.974506, 0.073045, -0.212138,
		-0.178493, 0.825273, -0.535784,
		37.438412, 40.390450, 47.983059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764637, 40.211346, 48.796768>,  <37.563354, 39.812759, 48.358109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764637, 40.211346, 48.796768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.619980, 40.477425, 48.535469>,  <37.533188, 40.637074, 48.378689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.619980, 40.477425, 48.535469>,  <37.764637, 40.211346, 48.796768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619980, 40.477425, 48.535469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015193, 0.696368, 0.717524,
		0.932194, 0.269410, -0.241728,
		-0.361639, 0.665199, -0.653244,
		37.511490, 40.676983, 48.339497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298809, 40.733295, 48.731934>,  <37.764637, 40.211346, 48.796768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298809, 40.733295, 48.731934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.950893, 40.894688, 48.618324>,  <37.742146, 40.991524, 48.550159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.950893, 40.894688, 48.618324>,  <38.298809, 40.733295, 48.731934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950893, 40.894688, 48.618324> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118227, 0.729264, 0.673941,
		0.479049, 0.552609, -0.682009,
		-0.869790, 0.403482, -0.284020,
		37.689957, 41.015732, 48.533119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405956, 41.377361, 48.520294>,  <38.298809, 40.733295, 48.731934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405956, 41.377361, 48.520294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.024704, 41.347008, 48.637451>,  <37.795952, 41.328796, 48.707745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.024704, 41.347008, 48.637451>,  <38.405956, 41.377361, 48.520294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024704, 41.347008, 48.637451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131813, 0.767206, 0.627710,
		-0.272337, 0.636896, -0.721246,
		-0.953130, -0.075879, 0.292890,
		37.738766, 41.324245, 48.725319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057137, 42.070930, 48.474857>,  <38.405956, 41.377361, 48.520294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057137, 42.070930, 48.474857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.840939, 41.864922, 48.740974>,  <37.711220, 41.741318, 48.900646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.840939, 41.864922, 48.740974>,  <38.057137, 42.070930, 48.474857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840939, 41.864922, 48.740974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007796, 0.787650, 0.616073,
		-0.841310, 0.338172, -0.421707,
		-0.540497, -0.515021, 0.665294,
		37.678791, 41.710415, 48.940563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480576, 42.491394, 48.649494>,  <38.057137, 42.070930, 48.474857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480576, 42.491394, 48.649494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.527916, 42.227146, 48.946026>,  <37.556320, 42.068596, 49.123947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.527916, 42.227146, 48.946026>,  <37.480576, 42.491394, 48.649494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527916, 42.227146, 48.946026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064055, 0.750105, 0.658210,
		-0.990904, -0.030414, 0.131092,
		0.118351, -0.660619, 0.741333,
		37.563423, 42.028961, 49.168427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178410, 42.796810, 49.132294>,  <37.480576, 42.491394, 48.649494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178410, 42.796810, 49.132294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.398457, 42.525547, 49.327217>,  <37.530483, 42.362789, 49.444172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.398457, 42.525547, 49.327217>,  <37.178410, 42.796810, 49.132294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398457, 42.525547, 49.327217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180855, 0.666445, 0.723286,
		-0.815268, -0.309760, 0.489272,
		0.550118, -0.678159, 0.487309,
		37.563492, 42.322098, 49.473412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957462, 42.774410, 49.785942>,  <37.178410, 42.796810, 49.132294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957462, 42.774410, 49.785942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.327965, 42.625011, 49.806118>,  <37.550266, 42.535374, 49.818226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.327965, 42.625011, 49.806118>,  <36.957462, 42.774410, 49.785942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327965, 42.625011, 49.806118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204563, 0.610639, 0.765032,
		-0.316539, -0.698299, 0.642013,
		0.926260, -0.373495, 0.050445,
		37.605843, 42.512962, 49.821251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.534351, 36.443951, 34.755447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896465, 36.307678, 34.856945>,  <38.113735, 36.225914, 34.917843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896465, 36.307678, 34.856945>,  <37.534351, 36.443951, 34.755447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896465, 36.307678, 34.856945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249292, 0.057590, 0.966715,
		-0.343957, -0.938412, -0.032794,
		0.905288, -0.340684, 0.253747,
		38.168053, 36.205475, 34.933067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380981, 35.953316, 35.154499>,  <37.534351, 36.443951, 34.755447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380981, 35.953316, 35.154499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748463, 36.062679, 35.268505>,  <37.968952, 36.128296, 35.336910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748463, 36.062679, 35.268505>,  <37.380981, 35.953316, 35.154499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748463, 36.062679, 35.268505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346124, 0.209784, 0.914434,
		0.190212, -0.938746, 0.287359,
		0.918704, 0.273398, 0.285019,
		38.024075, 36.144703, 35.354008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484753, 35.659435, 35.773365>,  <37.380981, 35.953316, 35.154499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484753, 35.659435, 35.773365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775707, 35.933880, 35.778374>,  <37.950279, 36.098545, 35.781380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775707, 35.933880, 35.778374>,  <37.484753, 35.659435, 35.773365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775707, 35.933880, 35.778374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266732, 0.265879, 0.926370,
		0.632264, -0.677172, 0.376406,
		0.727390, 0.686110, 0.012518,
		37.993923, 36.139713, 35.782127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888783, 35.509342, 36.324448>,  <37.484753, 35.659435, 35.773365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888783, 35.509342, 36.324448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929409, 35.899788, 36.247616>,  <37.953785, 36.134056, 36.201519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929409, 35.899788, 36.247616>,  <37.888783, 35.509342, 36.324448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929409, 35.899788, 36.247616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325858, 0.215068, 0.920632,
		0.939947, -0.030918, 0.339917,
		0.101569, 0.976109, -0.192077,
		37.959881, 36.192619, 36.189991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333050, 35.810074, 36.932571>,  <37.888783, 35.509342, 36.324448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333050, 35.810074, 36.932571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157726, 36.127182, 36.763153>,  <38.052532, 36.317448, 36.661503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157726, 36.127182, 36.763153>,  <38.333050, 35.810074, 36.932571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157726, 36.127182, 36.763153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163664, 0.392954, 0.904876,
		0.883798, 0.465935, -0.042487,
		-0.438309, 0.792775, -0.423549,
		38.026234, 36.365013, 36.636089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590832, 36.369205, 37.272659>,  <38.333050, 35.810074, 36.932571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590832, 36.369205, 37.272659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242966, 36.510979, 37.135220>,  <38.034245, 36.596043, 37.052753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242966, 36.510979, 37.135220>,  <38.590832, 36.369205, 37.272659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242966, 36.510979, 37.135220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161806, 0.452931, 0.876740,
		0.466372, 0.818066, -0.336548,
		-0.869664, 0.354431, -0.343603,
		37.982067, 36.617310, 37.032139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544975, 36.935589, 37.659225>,  <38.590832, 36.369205, 37.272659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544975, 36.935589, 37.659225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178452, 36.921383, 37.499668>,  <37.958538, 36.912861, 37.403934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178452, 36.921383, 37.499668>,  <38.544975, 36.935589, 37.659225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178452, 36.921383, 37.499668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393859, 0.260132, 0.881593,
		0.072458, 0.964920, -0.252349,
		-0.916311, -0.035511, -0.398891,
		37.903557, 36.910728, 37.380001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136906, 37.622856, 37.769802>,  <38.544975, 36.935589, 37.659225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136906, 37.622856, 37.769802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890888, 37.307686, 37.757835>,  <37.743279, 37.118584, 37.750656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890888, 37.307686, 37.757835>,  <38.136906, 37.622856, 37.769802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890888, 37.307686, 37.757835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381162, 0.263890, 0.886046,
		-0.690242, 0.556362, -0.462631,
		-0.615046, -0.787923, -0.029916,
		37.706375, 37.071308, 37.748859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468563, 37.928509, 37.949745>,  <38.136906, 37.622856, 37.769802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468563, 37.928509, 37.949745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379105, 37.542740, 38.006119>,  <37.325428, 37.311279, 38.039944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379105, 37.542740, 38.006119>,  <37.468563, 37.928509, 37.949745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379105, 37.542740, 38.006119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391141, 0.221251, 0.893340,
		-0.892743, 0.144669, -0.426709,
		-0.223649, -0.964427, 0.140934,
		37.312012, 37.253410, 38.048401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700775, 37.884121, 38.227974>,  <37.468563, 37.928509, 37.949745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700775, 37.884121, 38.227974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910503, 37.556351, 38.320606>,  <37.036339, 37.359688, 38.376186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910503, 37.556351, 38.320606>,  <36.700775, 37.884121, 38.227974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910503, 37.556351, 38.320606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272506, 0.096193, 0.957333,
		-0.806741, -0.565055, -0.172863,
		0.524317, -0.819427, 0.231584,
		37.067799, 37.310524, 38.390083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271088, 37.608440, 38.744461>,  <36.700775, 37.884121, 38.227974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271088, 37.608440, 38.744461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615120, 37.413609, 38.805153>,  <36.821537, 37.296711, 38.841568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615120, 37.413609, 38.805153>,  <36.271088, 37.608440, 38.744461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615120, 37.413609, 38.805153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136304, 0.067203, 0.988385,
		-0.491618, -0.870769, -0.008591,
		0.860078, -0.487079, 0.151727,
		36.873142, 37.267487, 38.850670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074512, 37.152740, 39.227150>,  <36.271088, 37.608440, 38.744461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074512, 37.152740, 39.227150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473190, 37.184170, 39.235428>,  <36.712399, 37.203026, 39.240395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473190, 37.184170, 39.235428>,  <36.074512, 37.152740, 39.227150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473190, 37.184170, 39.235428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033122, 0.160377, 0.986500,
		0.074197, -0.983923, 0.162449,
		0.996693, 0.078576, 0.020691,
		36.772198, 37.207741, 39.241634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714489, 36.441296, 39.282757>,  <36.074512, 37.152740, 39.227150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714489, 36.441296, 39.282757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321270, 36.368572, 39.292194>,  <35.085339, 36.324936, 39.297855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321270, 36.368572, 39.292194>,  <35.714489, 36.441296, 39.282757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321270, 36.368572, 39.292194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056147, -0.421045, -0.905300,
		0.174528, -0.888631, 0.424116,
		-0.983050, -0.181813, 0.023591,
		35.026356, 36.314030, 39.299271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548641, 35.772751, 38.834351>,  <35.714489, 36.441296, 39.282757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548641, 35.772751, 38.834351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195339, 35.956558, 38.871681>,  <34.983360, 36.066841, 38.894081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195339, 35.956558, 38.871681>,  <35.548641, 35.772751, 38.834351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195339, 35.956558, 38.871681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210128, -0.209958, -0.954863,
		-0.419179, -0.862997, 0.282003,
		-0.883252, 0.459515, 0.093330,
		34.930363, 36.094414, 38.899681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060837, 35.276806, 38.827984>,  <35.548641, 35.772751, 38.834351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060837, 35.276806, 38.827984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845558, 35.603264, 38.743828>,  <34.716393, 35.799137, 38.693336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845558, 35.603264, 38.743828>,  <35.060837, 35.276806, 38.827984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845558, 35.603264, 38.743828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366584, -0.451448, -0.813518,
		-0.758924, -0.360705, 0.542150,
		-0.538192, 0.816142, -0.210386,
		34.684101, 35.848106, 38.680714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379589, 35.020206, 38.700603>,  <35.060837, 35.276806, 38.827984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379589, 35.020206, 38.700603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450424, 35.370586, 38.521114>,  <34.492924, 35.580814, 38.413422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450424, 35.370586, 38.521114>,  <34.379589, 35.020206, 38.700603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450424, 35.370586, 38.521114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431436, -0.340700, -0.835336,
		-0.884592, 0.341526, 0.317581,
		0.177089, 0.875947, -0.448727,
		34.503551, 35.633369, 38.386497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832851, 35.041992, 38.241772>,  <34.379589, 35.020206, 38.700603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832851, 35.041992, 38.241772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098129, 35.305077, 38.098900>,  <34.257298, 35.462929, 38.013176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098129, 35.305077, 38.098900>,  <33.832851, 35.041992, 38.241772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098129, 35.305077, 38.098900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290162, -0.213962, -0.932752,
		-0.689908, 0.722241, 0.048944,
		0.663199, 0.657715, -0.357181,
		34.297089, 35.502392, 37.991745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463909, 35.598278, 37.983093>,  <33.832851, 35.041992, 38.241772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463909, 35.598278, 37.983093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813156, 35.612297, 37.788589>,  <34.022705, 35.620708, 37.671886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813156, 35.612297, 37.788589>,  <33.463909, 35.598278, 37.983093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813156, 35.612297, 37.788589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486906, 0.012745, -0.873361,
		-0.024408, 0.999304, 0.028191,
		0.873113, 0.035044, -0.486256,
		34.075089, 35.622810, 37.642712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231640, 35.886581, 37.353848>,  <33.463909, 35.598278, 37.983093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231640, 35.886581, 37.353848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605545, 35.770668, 37.271645>,  <33.829887, 35.701118, 37.222321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605545, 35.770668, 37.271645>,  <33.231640, 35.886581, 37.353848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605545, 35.770668, 37.271645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260548, -0.165957, -0.951090,
		0.241506, 0.942594, -0.230634,
		0.934767, -0.289785, -0.205511,
		33.885975, 35.683731, 37.209991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429073, 36.272846, 36.812107>,  <33.231640, 35.886581, 37.353848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429073, 36.272846, 36.812107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682789, 35.963749, 36.821491>,  <33.835018, 35.778290, 36.827122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682789, 35.963749, 36.821491>,  <33.429073, 36.272846, 36.812107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682789, 35.963749, 36.821491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189240, -0.184619, -0.964419,
		0.749577, 0.607280, -0.263335,
		0.634288, -0.772740, 0.023464,
		33.873074, 35.731926, 36.828529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918976, 36.263203, 36.310932>,  <33.429073, 36.272846, 36.812107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918976, 36.263203, 36.310932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942318, 35.874550, 36.402603>,  <33.956326, 35.641357, 36.457603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942318, 35.874550, 36.402603>,  <33.918976, 36.263203, 36.310932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942318, 35.874550, 36.402603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080652, -0.233403, -0.969030,
		0.995032, 0.038068, -0.091985,
		0.058359, -0.971635, 0.229174,
		33.959827, 35.583061, 36.471355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416237, 35.889439, 35.878227>,  <33.918976, 36.263203, 36.310932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416237, 35.889439, 35.878227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133099, 35.630466, 35.991211>,  <33.963215, 35.475082, 36.059002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133099, 35.630466, 35.991211>,  <34.416237, 35.889439, 35.878227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133099, 35.630466, 35.991211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226210, -0.171047, -0.958943,
		0.669164, -0.742682, -0.025380,
		-0.707848, -0.647431, 0.282460,
		33.920746, 35.436237, 36.075951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524891, 35.378742, 35.377449>,  <34.416237, 35.889439, 35.878227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524891, 35.378742, 35.377449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167515, 35.309147, 35.543095>,  <33.953091, 35.267387, 35.642483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167515, 35.309147, 35.543095>,  <34.524891, 35.378742, 35.377449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167515, 35.309147, 35.543095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339629, -0.341680, -0.876303,
		0.293963, -0.923570, 0.246179,
		-0.893442, -0.173991, 0.414112,
		33.899483, 35.256950, 35.667328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325157, 34.600204, 35.245281>,  <34.524891, 35.378742, 35.377449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325157, 34.600204, 35.245281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038334, 34.877235, 35.276714>,  <33.866241, 35.043453, 35.295574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038334, 34.877235, 35.276714>,  <34.325157, 34.600204, 35.245281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038334, 34.877235, 35.276714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352270, -0.262801, -0.898243,
		-0.601447, -0.671773, 0.432415,
		-0.717055, 0.692573, 0.078585,
		33.823219, 35.085007, 35.300289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934685, 34.580936, 35.552967>,  <34.325157, 34.600204, 35.245281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934685, 34.580936, 35.552967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967056, 34.476704, 35.937790>,  <34.986481, 34.414162, 36.168682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967056, 34.476704, 35.937790>,  <34.934685, 34.580936, 35.552967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967056, 34.476704, 35.937790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552002, -0.791959, -0.260949,
		0.829906, 0.552174, 0.079751,
		0.080930, -0.260586, 0.962053,
		34.991337, 34.398529, 36.226406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546070, 34.597645, 35.880352>,  <34.934685, 34.580936, 35.552967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546070, 34.597645, 35.880352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303371, 34.292400, 35.969357>,  <35.157753, 34.109253, 36.022758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303371, 34.292400, 35.969357>,  <35.546070, 34.597645, 35.880352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303371, 34.292400, 35.969357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464135, -0.567366, -0.680202,
		0.645317, -0.309438, 0.698437,
		-0.606749, -0.763115, 0.222510,
		35.121346, 34.063465, 36.036110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859138, 34.119511, 36.124416>,  <35.546070, 34.597645, 35.880352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859138, 34.119511, 36.124416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549690, 33.950035, 35.935947>,  <35.364021, 33.848351, 35.822868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549690, 33.950035, 35.935947>,  <35.859138, 34.119511, 36.124416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549690, 33.950035, 35.935947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633462, -0.498923, -0.591441,
		0.015511, -0.756017, 0.654368,
		-0.773619, -0.423690, -0.471169,
		35.317604, 33.822929, 35.794598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351910, 33.965233, 36.699287>,  <35.859138, 34.119511, 36.124416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351910, 33.965233, 36.699287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667419, 33.730240, 36.626953>,  <35.856724, 33.589245, 36.583553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667419, 33.730240, 36.626953>,  <35.351910, 33.965233, 36.699287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667419, 33.730240, 36.626953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406638, 0.278093, 0.870235,
		-0.460955, -0.759955, 0.458244,
		0.788774, -0.587479, -0.180839,
		35.904053, 33.553997, 36.572701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300426, 33.562878, 37.195042>,  <35.351910, 33.965233, 36.699287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300426, 33.562878, 37.195042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685280, 33.562027, 37.086018>,  <35.916191, 33.561516, 37.020603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685280, 33.562027, 37.086018>,  <35.300426, 33.562878, 37.195042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685280, 33.562027, 37.086018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267550, 0.198295, 0.942919,
		0.052041, -0.980140, 0.191356,
		0.962138, -0.002127, -0.272556,
		35.973923, 33.561390, 37.004250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644524, 33.055481, 37.629105>,  <35.300426, 33.562878, 37.195042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644524, 33.055481, 37.629105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895149, 33.343056, 37.508739>,  <36.045525, 33.515602, 37.436520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895149, 33.343056, 37.508739>,  <35.644524, 33.055481, 37.629105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895149, 33.343056, 37.508739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348600, 0.086808, 0.933243,
		0.697065, -0.689633, -0.196231,
		0.626561, 0.718938, -0.300917,
		36.083118, 33.558739, 37.418465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204498, 32.893986, 37.978973>,  <35.644524, 33.055481, 37.629105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204498, 32.893986, 37.978973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266991, 33.277775, 37.885162>,  <36.304485, 33.508049, 37.828876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266991, 33.277775, 37.885162>,  <36.204498, 32.893986, 37.978973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266991, 33.277775, 37.885162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309651, 0.177896, 0.934061,
		0.937927, -0.218555, -0.269309,
		0.156235, 0.959472, -0.234529,
		36.313862, 33.565617, 37.814804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938282, 33.087421, 38.230198>,  <36.204498, 32.893986, 37.978973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938282, 33.087421, 38.230198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720860, 33.421406, 38.195835>,  <36.590405, 33.621796, 38.175217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720860, 33.421406, 38.195835>,  <36.938282, 33.087421, 38.230198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720860, 33.421406, 38.195835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465206, 0.384867, 0.797158,
		0.698660, 0.393339, -0.597628,
		-0.543560, 0.834962, -0.085907,
		36.557793, 33.671894, 38.170063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341766, 33.617073, 38.415600>,  <36.938282, 33.087421, 38.230198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341766, 33.617073, 38.415600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982231, 33.789165, 38.449043>,  <36.766510, 33.892422, 38.469109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982231, 33.789165, 38.449043>,  <37.341766, 33.617073, 38.415600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982231, 33.789165, 38.449043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271401, 0.396592, 0.876959,
		0.344134, 0.810937, -0.473237,
		-0.898840, 0.430228, 0.083608,
		36.712578, 33.918236, 38.474125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461178, 34.168385, 38.810238>,  <37.341766, 33.617073, 38.415600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461178, 34.168385, 38.810238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061508, 34.178001, 38.823364>,  <36.821709, 34.183769, 38.831242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061508, 34.178001, 38.823364>,  <37.461178, 34.168385, 38.810238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061508, 34.178001, 38.823364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040035, 0.437869, 0.898147,
		0.007221, 0.898718, -0.438469,
		-0.999172, 0.024039, 0.032818,
		36.761757, 34.185215, 38.833210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244419, 34.851074, 39.078762>,  <37.461178, 34.168385, 38.810238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244419, 34.851074, 39.078762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953545, 34.589390, 39.161911>,  <36.779022, 34.432381, 39.211800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953545, 34.589390, 39.161911>,  <37.244419, 34.851074, 39.078762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953545, 34.589390, 39.161911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000228, 0.303056, 0.952973,
		-0.686443, 0.692939, -0.220527,
		-0.727184, -0.654212, 0.207873,
		36.735390, 34.393127, 39.224274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761925, 35.239250, 39.479115>,  <37.244419, 34.851074, 39.078762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761925, 35.239250, 39.479115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696957, 34.854435, 39.566837>,  <36.657978, 34.623547, 39.619469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696957, 34.854435, 39.566837>,  <36.761925, 35.239250, 39.479115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696957, 34.854435, 39.566837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013617, 0.220049, 0.975394,
		-0.986628, 0.161409, -0.022640,
		-0.162419, -0.962043, 0.219304,
		36.648232, 34.565823, 39.632629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471920, 35.258923, 40.154770>,  <36.761925, 35.239250, 39.479115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471920, 35.258923, 40.154770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559696, 34.868923, 40.140762>,  <36.612362, 34.634926, 40.132359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559696, 34.868923, 40.140762>,  <36.471920, 35.258923, 40.154770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559696, 34.868923, 40.140762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080662, -0.017640, 0.996585,
		-0.972285, -0.221520, 0.074774,
		0.219445, -0.974996, -0.035019,
		36.625530, 34.576424, 40.130257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063866, 34.852268, 40.659718>,  <36.471920, 35.258923, 40.154770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063866, 34.852268, 40.659718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389137, 34.628307, 40.596157>,  <36.584301, 34.493931, 40.558022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389137, 34.628307, 40.596157>,  <36.063866, 34.852268, 40.659718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389137, 34.628307, 40.596157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165716, -0.038977, 0.985403,
		-0.557922, -0.827642, 0.061090,
		0.813180, -0.559902, -0.158900,
		36.633091, 34.460339, 40.548489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073467, 34.266430, 41.052475>,  <36.063866, 34.852268, 40.659718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073467, 34.266430, 41.052475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457695, 34.316185, 40.953014>,  <36.688232, 34.346039, 40.893337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457695, 34.316185, 40.953014>,  <36.073467, 34.266430, 41.052475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457695, 34.316185, 40.953014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245176, 0.042759, 0.968535,
		0.131107, -0.991312, 0.010576,
		0.960572, 0.124389, -0.248652,
		36.745869, 34.353500, 40.878418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340740, 33.834629, 41.611343>,  <36.073467, 34.266430, 41.052475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340740, 33.834629, 41.611343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649784, 34.029949, 41.449043>,  <36.835209, 34.147141, 41.351662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649784, 34.029949, 41.449043>,  <36.340740, 33.834629, 41.611343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649784, 34.029949, 41.449043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457732, 0.014447, 0.888973,
		0.439950, -0.872555, -0.212350,
		0.772610, 0.488303, -0.405752,
		36.881569, 34.176441, 41.327316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010853, 33.487656, 41.779121>,  <36.340740, 33.834629, 41.611343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010853, 33.487656, 41.779121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089130, 33.874428, 41.713699>,  <37.136097, 34.106491, 41.674446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089130, 33.874428, 41.713699>,  <37.010853, 33.487656, 41.779121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089130, 33.874428, 41.713699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609053, 0.010883, 0.793055,
		0.768609, -0.254808, -0.586782,
		0.195691, 0.966930, -0.163556,
		37.147839, 34.164505, 41.664631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746181, 33.598602, 41.917690>,  <37.010853, 33.487656, 41.779121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746181, 33.598602, 41.917690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585274, 33.963345, 41.950417>,  <37.488731, 34.182190, 41.970055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585274, 33.963345, 41.950417>,  <37.746181, 33.598602, 41.917690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585274, 33.963345, 41.950417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475098, 0.131520, 0.870049,
		0.782601, 0.388863, -0.486128,
		-0.402266, 0.911860, 0.081820,
		37.464596, 34.236904, 41.974964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273685, 34.038952, 42.163170>,  <37.746181, 33.598602, 41.917690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273685, 34.038952, 42.163170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948204, 34.261761, 42.229645>,  <37.752914, 34.395447, 42.269531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948204, 34.261761, 42.229645>,  <38.273685, 34.038952, 42.163170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948204, 34.261761, 42.229645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355555, 0.250769, 0.900386,
		0.459859, 0.791734, -0.402103,
		-0.813701, 0.557020, 0.166187,
		37.704094, 34.428867, 42.279499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602108, 34.555969, 42.432808>,  <38.273685, 34.038952, 42.163170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602108, 34.555969, 42.432808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222164, 34.616413, 42.542297>,  <37.994198, 34.652679, 42.607990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222164, 34.616413, 42.542297>,  <38.602108, 34.555969, 42.432808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222164, 34.616413, 42.542297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310750, 0.359506, 0.879880,
		0.034550, 0.920827, -0.388439,
		-0.949863, 0.151107, 0.273726,
		37.937206, 34.661747, 42.624416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564548, 35.190277, 42.611309>,  <38.602108, 34.555969, 42.432808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564548, 35.190277, 42.611309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250576, 35.023254, 42.794403>,  <38.062191, 34.923042, 42.904259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250576, 35.023254, 42.794403>,  <38.564548, 35.190277, 42.611309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250576, 35.023254, 42.794403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265813, 0.440395, 0.857552,
		-0.559661, 0.794795, -0.234690,
		-0.784935, -0.417555, 0.457739,
		38.015095, 34.897987, 42.931725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406822, 35.665993, 43.042934>,  <38.564548, 35.190277, 42.611309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406822, 35.665993, 43.042934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202213, 35.345676, 43.167564>,  <38.079449, 35.153488, 43.242344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202213, 35.345676, 43.167564>,  <38.406822, 35.665993, 43.042934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202213, 35.345676, 43.167564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087011, 0.312470, 0.945934,
		-0.854855, 0.510975, -0.090157,
		-0.511520, -0.800792, 0.311577,
		38.048756, 35.105438, 43.261036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102093, 35.919350, 43.563385>,  <38.406822, 35.665993, 43.042934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102093, 35.919350, 43.563385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114357, 35.527348, 43.642017>,  <38.121716, 35.292145, 43.689198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114357, 35.527348, 43.642017>,  <38.102093, 35.919350, 43.563385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114357, 35.527348, 43.642017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146672, 0.198952, 0.968971,
		-0.988710, -0.000881, 0.149841,
		0.030665, -0.980009, 0.196577,
		38.123558, 35.233345, 43.700989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547050, 35.728664, 44.108536>,  <38.102093, 35.919350, 43.563385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547050, 35.728664, 44.108536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823109, 35.440575, 44.136784>,  <37.988743, 35.267723, 44.153732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823109, 35.440575, 44.136784>,  <37.547050, 35.728664, 44.108536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823109, 35.440575, 44.136784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119618, 0.209771, 0.970406,
		-0.713721, -0.661269, 0.230923,
		0.690141, -0.720221, 0.070619,
		38.030151, 35.224510, 44.157970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381134, 35.372131, 44.687267>,  <37.547050, 35.728664, 44.108536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381134, 35.372131, 44.687267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760983, 35.261864, 44.627644>,  <37.988892, 35.195705, 44.591869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760983, 35.261864, 44.627644>,  <37.381134, 35.372131, 44.687267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760983, 35.261864, 44.627644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189747, 0.127217, 0.973556,
		-0.249413, -0.952798, 0.173115,
		0.949626, -0.275665, -0.149062,
		38.045872, 35.179165, 44.582924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510113, 34.907318, 45.172218>,  <37.381134, 35.372131, 44.687267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510113, 34.907318, 45.172218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874695, 35.033508, 45.066597>,  <38.093445, 35.109222, 45.003223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874695, 35.033508, 45.066597>,  <37.510113, 34.907318, 45.172218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874695, 35.033508, 45.066597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268256, 0.030883, 0.962853,
		0.311908, -0.948432, -0.056479,
		0.911456, 0.315472, -0.264055,
		38.148132, 35.128151, 44.987381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960110, 34.659157, 45.740551>,  <37.510113, 34.907318, 45.172218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960110, 34.659157, 45.740551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223480, 34.904507, 45.566078>,  <38.381500, 35.051716, 45.461395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223480, 34.904507, 45.566078>,  <37.960110, 34.659157, 45.740551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223480, 34.904507, 45.566078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319492, 0.296947, 0.899859,
		0.681472, -0.731844, -0.000451,
		0.658423, 0.613373, -0.436180,
		38.421009, 35.088520, 45.435223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660858, 34.491238, 45.947693>,  <37.960110, 34.659157, 45.740551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660858, 34.491238, 45.947693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646454, 34.874081, 45.832695>,  <38.637814, 35.103786, 45.763699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646454, 34.874081, 45.832695>,  <38.660858, 34.491238, 45.947693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646454, 34.874081, 45.832695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347292, 0.281733, 0.894436,
		0.937066, -0.067637, -0.342540,
		-0.036008, 0.957106, -0.287492,
		38.635651, 35.161213, 45.746449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310841, 34.760403, 46.270618>,  <38.660858, 34.491238, 45.947693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310841, 34.760403, 46.270618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059093, 35.056473, 46.175934>,  <38.908047, 35.234116, 46.119122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059093, 35.056473, 46.175934>,  <39.310841, 34.760403, 46.270618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059093, 35.056473, 46.175934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078253, 0.363424, 0.928331,
		0.773160, 0.565736, -0.286648,
		-0.629365, 0.740180, -0.236714,
		38.870285, 35.278526, 46.104919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760731, 35.286617, 46.426670>,  <39.310841, 34.760403, 46.270618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760731, 35.286617, 46.426670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381454, 35.413033, 46.439671>,  <39.153889, 35.488880, 46.447472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381454, 35.413033, 46.439671>,  <39.760731, 35.286617, 46.426670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381454, 35.413033, 46.439671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178373, 0.444923, 0.877626,
		0.262901, 0.837954, -0.478244,
		-0.948191, 0.316035, 0.032497,
		39.096996, 35.507843, 46.449421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058025, 35.646904, 45.896484>,  <39.760731, 35.286617, 46.426670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058025, 35.646904, 45.896484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391850, 35.864494, 45.931347>,  <40.592144, 35.995049, 45.952263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391850, 35.864494, 45.931347>,  <40.058025, 35.646904, 45.896484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391850, 35.864494, 45.931347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120983, -0.026631, -0.992297,
		-0.537466, 0.838677, -0.088037,
		0.834561, 0.543977, 0.087153,
		40.642220, 36.027687, 45.957493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972260, 36.110687, 45.464317>,  <40.058025, 35.646904, 45.896484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972260, 36.110687, 45.464317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366833, 36.073162, 45.518192>,  <40.603577, 36.050648, 45.550518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366833, 36.073162, 45.518192>,  <39.972260, 36.110687, 45.464317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366833, 36.073162, 45.518192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132707, -0.027042, -0.990786,
		0.096592, 0.995223, -0.014225,
		0.986438, -0.093814, 0.134685,
		40.662766, 36.045017, 45.558598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381134, 36.441956, 44.865295>,  <39.972260, 36.110687, 45.464317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381134, 36.441956, 44.865295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651970, 36.203407, 45.037758>,  <40.814472, 36.060280, 45.141235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651970, 36.203407, 45.037758>,  <40.381134, 36.441956, 44.865295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651970, 36.203407, 45.037758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333409, -0.273716, -0.902174,
		0.656043, 0.754603, 0.013505,
		0.677087, -0.596367, 0.431161,
		40.855095, 36.024498, 45.167107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057453, 36.664101, 44.626717>,  <40.381134, 36.441956, 44.865295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057453, 36.664101, 44.626717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114922, 36.287685, 44.749226>,  <41.149403, 36.061836, 44.822731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114922, 36.287685, 44.749226>,  <41.057453, 36.664101, 44.626717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114922, 36.287685, 44.749226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611205, -0.159025, -0.775332,
		0.778324, 0.298584, 0.552322,
		0.143669, -0.941041, 0.306269,
		41.158024, 36.005375, 44.841106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792198, 36.474213, 44.610931>,  <41.057453, 36.664101, 44.626717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792198, 36.474213, 44.610931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585266, 36.134731, 44.566994>,  <41.461105, 35.931042, 44.540630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585266, 36.134731, 44.566994>,  <41.792198, 36.474213, 44.610931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585266, 36.134731, 44.566994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633025, -0.293128, -0.716488,
		0.575890, -0.440194, 0.688897,
		-0.517329, -0.848708, -0.109844,
		41.430069, 35.880119, 44.534039>
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
