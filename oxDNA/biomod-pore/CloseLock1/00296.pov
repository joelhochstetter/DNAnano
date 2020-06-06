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
	<24.122038, 35.397255, 35.059937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.189125, 35.005779, 35.012531>,  <24.229378, 34.770893, 34.984089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.189125, 35.005779, 35.012531>,  <24.122038, 35.397255, 35.059937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.189125, 35.005779, 35.012531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874003, 0.091997, 0.477133,
		-0.456060, -0.183606, 0.870803,
		0.167716, -0.978685, -0.118516,
		24.239439, 34.712173, 34.976974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.265699, 35.162674, 35.748116>,  <24.122038, 35.397255, 35.059937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.265699, 35.162674, 35.748116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.472683, 34.945885, 35.483238>,  <24.596872, 34.815811, 35.324310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.472683, 34.945885, 35.483238>,  <24.265699, 35.162674, 35.748116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.472683, 34.945885, 35.483238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850708, 0.242284, 0.466470,
		-0.092378, -0.804710, 0.586436,
		0.517458, -0.541977, -0.662192,
		24.627920, 34.783291, 35.284580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.811445, 34.665783, 35.981461>,  <24.265699, 35.162674, 35.748116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.811445, 34.665783, 35.981461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.956890, 34.791801, 35.630795>,  <25.044157, 34.867413, 35.420395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.956890, 34.791801, 35.630795>,  <24.811445, 34.665783, 35.981461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.956890, 34.791801, 35.630795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746593, 0.464266, 0.476504,
		0.557124, -0.827771, -0.066398,
		0.363610, 0.315044, -0.876661,
		25.065973, 34.886314, 35.367798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.447372, 34.399376, 35.787254>,  <24.811445, 34.665783, 35.981461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.447372, 34.399376, 35.787254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.436352, 34.758018, 35.610466>,  <25.429739, 34.973202, 35.504391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.436352, 34.758018, 35.610466>,  <25.447372, 34.399376, 35.787254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.436352, 34.758018, 35.610466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914096, 0.201540, 0.351867,
		0.404561, -0.394312, -0.825136,
		-0.027552, 0.896605, -0.441974,
		25.428085, 35.027000, 35.477875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083323, 34.454449, 35.484051>,  <25.447372, 34.399376, 35.787254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.083323, 34.454449, 35.484051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.940674, 34.803150, 35.618435>,  <25.855085, 35.012371, 35.699066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.940674, 34.803150, 35.618435>,  <26.083323, 34.454449, 35.484051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.940674, 34.803150, 35.618435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894703, 0.215158, 0.391425,
		0.268939, 0.440178, -0.856688,
		-0.356620, 0.871751, 0.335964,
		25.833687, 35.064674, 35.719223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753302, 34.486347, 35.118088>,  <26.083323, 34.454449, 35.484051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753302, 34.486347, 35.118088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096428, 34.299847, 35.031590>,  <27.302303, 34.187946, 34.979691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096428, 34.299847, 35.031590>,  <26.753302, 34.486347, 35.118088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096428, 34.299847, 35.031590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333010, -0.824702, 0.457133,
		-0.391479, -0.320123, -0.862708,
		0.857816, -0.466249, -0.216249,
		27.353773, 34.159973, 34.966713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595722, 33.919815, 34.843719>,  <26.753302, 34.486347, 35.118088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.595722, 33.919815, 34.843719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962122, 33.842678, 34.984440>,  <27.181961, 33.796398, 35.068871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962122, 33.842678, 34.984440>,  <26.595722, 33.919815, 34.843719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962122, 33.842678, 34.984440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340157, -0.838239, 0.426203,
		0.212701, -0.510067, -0.833421,
		0.915997, -0.192840, 0.351797,
		27.236921, 33.784824, 35.089977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764599, 33.211811, 34.709568>,  <26.595722, 33.919815, 34.843719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.764599, 33.211811, 34.709568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032721, 33.292355, 34.995266>,  <27.193594, 33.340679, 35.166683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032721, 33.292355, 34.995266>,  <26.764599, 33.211811, 34.709568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032721, 33.292355, 34.995266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257522, -0.839552, 0.478367,
		0.695968, -0.504586, -0.510902,
		0.670306, 0.201360, 0.714243,
		27.233812, 33.352764, 35.209538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064524, 32.544598, 34.903824>,  <26.764599, 33.211811, 34.709568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064524, 32.544598, 34.903824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166138, 32.770203, 35.218113>,  <27.227106, 32.905567, 35.406685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166138, 32.770203, 35.218113>,  <27.064524, 32.544598, 34.903824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166138, 32.770203, 35.218113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111229, -0.789943, 0.603008,
		0.960777, -0.240581, -0.137940,
		0.254037, 0.564014, 0.785719,
		27.242350, 32.939407, 35.453827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452528, 32.118679, 35.322319>,  <27.064524, 32.544598, 34.903824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452528, 32.118679, 35.322319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333338, 32.403149, 35.577019>,  <27.261824, 32.573830, 35.729839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333338, 32.403149, 35.577019>,  <27.452528, 32.118679, 35.322319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333338, 32.403149, 35.577019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082381, -0.683719, 0.725080,
		0.951012, 0.163600, 0.262318,
		-0.297975, 0.711170, 0.636748,
		27.243946, 32.616501, 35.768044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816278, 32.036869, 35.960091>,  <27.452528, 32.118679, 35.322319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816278, 32.036869, 35.960091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527885, 32.265659, 36.116566>,  <27.354851, 32.402935, 36.210453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527885, 32.265659, 36.116566>,  <27.816278, 32.036869, 35.960091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527885, 32.265659, 36.116566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045331, -0.524384, 0.850274,
		0.691470, 0.630765, 0.352143,
		-0.720981, 0.571977, 0.391189,
		27.311590, 32.437252, 36.233921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055283, 32.243427, 36.612270>,  <27.816278, 32.036869, 35.960091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055283, 32.243427, 36.612270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659910, 32.302395, 36.626526>,  <27.422686, 32.337776, 36.635078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659910, 32.302395, 36.626526>,  <28.055283, 32.243427, 36.612270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659910, 32.302395, 36.626526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054423, -0.564078, 0.823926,
		0.141560, 0.812456, 0.565576,
		-0.988433, 0.147415, 0.035635,
		27.363380, 32.346619, 36.637215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948313, 32.507454, 37.206070>,  <28.055283, 32.243427, 36.612270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948313, 32.507454, 37.206070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581400, 32.374489, 37.118351>,  <27.361252, 32.294708, 37.065720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581400, 32.374489, 37.118351>,  <27.948313, 32.507454, 37.206070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581400, 32.374489, 37.118351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054106, -0.649598, 0.758350,
		-0.394544, 0.683756, 0.613851,
		-0.917283, -0.332416, -0.219299,
		27.306215, 32.274765, 37.052563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599092, 32.469463, 37.827545>,  <27.948313, 32.507454, 37.206070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599092, 32.469463, 37.827545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376350, 32.234203, 37.592945>,  <27.242704, 32.093048, 37.452183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376350, 32.234203, 37.592945>,  <27.599092, 32.469463, 37.827545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376350, 32.234203, 37.592945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034278, -0.721783, 0.691270,
		-0.829901, 0.364834, 0.422090,
		-0.556856, -0.588154, -0.586503,
		27.209293, 32.057758, 37.416996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049408, 32.324802, 38.238091>,  <27.599092, 32.469463, 37.827545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049408, 32.324802, 38.238091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085276, 32.039196, 37.960346>,  <27.106796, 31.867832, 37.793697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085276, 32.039196, 37.960346>,  <27.049408, 32.324802, 38.238091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085276, 32.039196, 37.960346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058527, -0.692189, 0.719340,
		-0.994251, -0.105141, -0.020278,
		0.089668, -0.714017, -0.694363,
		27.112177, 31.824991, 37.752037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.556427, 31.901051, 38.545910>,  <27.049408, 32.324802, 38.238091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.556427, 31.901051, 38.545910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788298, 31.688673, 38.298660>,  <26.927420, 31.561247, 38.150311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788298, 31.688673, 38.298660>,  <26.556427, 31.901051, 38.545910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.788298, 31.688673, 38.298660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041324, -0.776753, 0.628449,
		-0.813801, -0.338751, -0.472203,
		0.579673, -0.530945, -0.618123,
		26.962200, 31.529390, 38.113224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264460, 31.281019, 38.616062>,  <26.556427, 31.901051, 38.545910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264460, 31.281019, 38.616062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621832, 31.205650, 38.452953>,  <26.836256, 31.160429, 38.355087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621832, 31.205650, 38.452953>,  <26.264460, 31.281019, 38.616062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621832, 31.205650, 38.452953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011375, -0.897994, 0.439861,
		-0.449055, -0.397624, -0.800152,
		0.893431, -0.188420, -0.407772,
		26.889862, 31.149124, 38.330620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172853, 30.634451, 38.327477>,  <26.264460, 31.281019, 38.616062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172853, 30.634451, 38.327477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565968, 30.689693, 38.376560>,  <26.801836, 30.722839, 38.406010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565968, 30.689693, 38.376560>,  <26.172853, 30.634451, 38.327477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.565968, 30.689693, 38.376560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106934, -0.966880, 0.231750,
		0.150654, -0.214639, -0.965005,
		0.982786, 0.138106, 0.122712,
		26.860804, 30.731125, 38.413372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474459, 30.051159, 38.106243>,  <26.172853, 30.634451, 38.327477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474459, 30.051159, 38.106243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.768099, 30.208384, 38.327728>,  <26.944283, 30.302719, 38.460617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.768099, 30.208384, 38.327728>,  <26.474459, 30.051159, 38.106243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.768099, 30.208384, 38.327728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308012, -0.919469, 0.244346,
		0.605163, -0.008825, -0.796053,
		0.734102, 0.393063, 0.553710,
		26.988329, 30.326302, 38.493843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039520, 29.532789, 38.077293>,  <26.474459, 30.051159, 38.106243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039520, 29.532789, 38.077293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180269, 29.740635, 38.388725>,  <27.264719, 29.865343, 38.575584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180269, 29.740635, 38.388725>,  <27.039520, 29.532789, 38.077293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180269, 29.740635, 38.388725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488526, -0.811450, 0.320766,
		0.798453, 0.267487, -0.539373,
		0.351874, 0.519614, 0.778579,
		27.285831, 29.896519, 38.622299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762419, 29.461336, 38.068222>,  <27.039520, 29.532789, 38.077293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762419, 29.461336, 38.068222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.686293, 29.565432, 38.446861>,  <27.640617, 29.627888, 38.674046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.686293, 29.565432, 38.446861>,  <27.762419, 29.461336, 38.068222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.686293, 29.565432, 38.446861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661984, -0.678014, 0.319491,
		0.724953, 0.687440, -0.043236,
		-0.190315, 0.260238, 0.946602,
		27.629198, 29.643503, 38.730843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441313, 29.588942, 38.441990>,  <27.762419, 29.461336, 38.068222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441313, 29.588942, 38.441990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.183144, 29.517666, 38.739090>,  <28.028242, 29.474901, 38.917351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.183144, 29.517666, 38.739090>,  <28.441313, 29.588942, 38.441990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.183144, 29.517666, 38.739090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678252, -0.580915, 0.450014,
		0.351288, 0.794221, 0.495792,
		-0.645423, -0.178187, 0.742750,
		27.989517, 29.464211, 38.961914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877373, 29.571980, 38.965942>,  <28.441313, 29.588942, 38.441990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877373, 29.571980, 38.965942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552544, 29.382557, 39.102348>,  <28.357647, 29.268904, 39.184193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552544, 29.382557, 39.102348>,  <28.877373, 29.571980, 38.965942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552544, 29.382557, 39.102348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567471, -0.504550, 0.650697,
		-0.136083, 0.721925, 0.678458,
		-0.812070, -0.473554, 0.341010,
		28.308922, 29.240490, 39.204651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924047, 29.608740, 39.658516>,  <28.877373, 29.571980, 38.965942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924047, 29.608740, 39.658516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679293, 29.304073, 39.573231>,  <28.532440, 29.121273, 39.522060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679293, 29.304073, 39.573231>,  <28.924047, 29.608740, 39.658516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679293, 29.304073, 39.573231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475439, -0.569621, 0.670439,
		-0.632102, 0.308862, 0.710669,
		-0.611886, -0.761666, -0.213214,
		28.495728, 29.075573, 39.509266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841703, 29.117575, 40.263252>,  <28.924047, 29.608740, 39.658516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841703, 29.117575, 40.263252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727007, 28.867502, 39.972893>,  <28.658188, 28.717459, 39.798676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727007, 28.867502, 39.972893>,  <28.841703, 29.117575, 40.263252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727007, 28.867502, 39.972893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140651, -0.776979, 0.613613,
		-0.947626, 0.073851, 0.310725,
		-0.286743, -0.625180, -0.725898,
		28.640984, 28.679949, 39.755123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209688, 28.659815, 40.377399>,  <28.841703, 29.117575, 40.263252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209688, 28.659815, 40.377399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506556, 28.508959, 40.155788>,  <28.684675, 28.418446, 40.022820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506556, 28.508959, 40.155788>,  <28.209688, 28.659815, 40.377399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506556, 28.508959, 40.155788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169914, -0.693763, 0.699873,
		-0.648315, -0.613562, -0.450809,
		0.742170, -0.377139, -0.554030,
		28.729206, 28.395817, 39.989578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177332, 27.929361, 40.301792>,  <28.209688, 28.659815, 40.377399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177332, 27.929361, 40.301792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556675, 28.056181, 40.297840>,  <28.784281, 28.132273, 40.295471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556675, 28.056181, 40.297840>,  <28.177332, 27.929361, 40.301792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556675, 28.056181, 40.297840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172595, -0.489640, 0.854672,
		0.266139, -0.812238, -0.519075,
		0.948357, 0.317052, -0.009876,
		28.841183, 28.151297, 40.294876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.740078, 27.384459, 40.452099>,  <28.177332, 27.929361, 40.301792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.740078, 27.384459, 40.452099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397146, 27.238197, 40.307163>,  <28.191387, 27.150440, 40.220203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397146, 27.238197, 40.307163>,  <28.740078, 27.384459, 40.452099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397146, 27.238197, 40.307163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509829, -0.505831, -0.695852,
		0.071159, -0.781302, 0.620083,
		-0.857328, -0.365652, -0.362336,
		28.139948, 27.128502, 40.198463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.703657, 26.679626, 40.606316>,  <28.740078, 27.384459, 40.452099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.703657, 26.679626, 40.606316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488142, 26.777296, 40.283806>,  <28.358833, 26.835897, 40.090298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488142, 26.777296, 40.283806>,  <28.703657, 26.679626, 40.606316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488142, 26.777296, 40.283806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635290, -0.510797, -0.579217,
		-0.553276, -0.824296, 0.120089,
		-0.538788, 0.244175, -0.806279,
		28.326506, 26.850548, 40.041924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790205, 26.087330, 40.082760>,  <28.703657, 26.679626, 40.606316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790205, 26.087330, 40.082760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679880, 26.405260, 39.866547>,  <28.613686, 26.596018, 39.736816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679880, 26.405260, 39.866547>,  <28.790205, 26.087330, 40.082760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679880, 26.405260, 39.866547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579186, -0.311370, -0.753387,
		-0.767118, -0.520866, -0.374471,
		-0.275814, 0.794825, -0.540536,
		28.597136, 26.643707, 39.704384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491425, 26.063471, 39.363163>,  <28.790205, 26.087330, 40.082760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491425, 26.063471, 39.363163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716700, 26.388630, 39.422516>,  <28.851864, 26.583725, 39.458126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716700, 26.388630, 39.422516>,  <28.491425, 26.063471, 39.363163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716700, 26.388630, 39.422516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691247, -0.365075, -0.623617,
		-0.452769, 0.453778, -0.767519,
		0.563186, 0.812900, 0.148378,
		28.885654, 26.632500, 39.467030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714497, 26.350945, 38.685482>,  <28.491425, 26.063471, 39.363163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714497, 26.350945, 38.685482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976612, 26.408365, 38.982128>,  <29.133881, 26.442818, 39.160114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976612, 26.408365, 38.982128>,  <28.714497, 26.350945, 38.685482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976612, 26.408365, 38.982128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724073, -0.399088, -0.562537,
		0.215218, 0.905606, -0.365457,
		0.655286, 0.143550, 0.741615,
		29.173199, 26.451429, 39.204613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371048, 26.573868, 38.435284>,  <28.714497, 26.350945, 38.685482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371048, 26.573868, 38.435284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445745, 26.355494, 38.761986>,  <29.490564, 26.224468, 38.958008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445745, 26.355494, 38.761986>,  <29.371048, 26.573868, 38.435284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445745, 26.355494, 38.761986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831940, -0.354289, -0.427030,
		0.522497, 0.759232, 0.388025,
		0.186742, -0.545935, 0.816751,
		29.501768, 26.191713, 39.007011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139194, 26.561424, 38.596310>,  <29.371048, 26.573868, 38.435284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139194, 26.561424, 38.596310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948832, 26.235069, 38.727661>,  <29.834614, 26.039255, 38.806473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948832, 26.235069, 38.727661>,  <30.139194, 26.561424, 38.596310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948832, 26.235069, 38.727661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740668, -0.573142, -0.350599,
		0.474260, 0.076370, 0.877066,
		-0.475908, -0.815890, 0.328383,
		29.806059, 25.990303, 38.826176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511765, 26.100889, 39.066471>,  <30.139194, 26.561424, 38.596310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511765, 26.100889, 39.066471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856281, 26.268990, 38.952232>,  <31.062992, 26.369850, 38.883690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856281, 26.268990, 38.952232>,  <30.511765, 26.100889, 39.066471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856281, 26.268990, 38.952232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498126, 0.809240, -0.311450,
		0.100229, 0.410513, 0.906330,
		0.861292, 0.420250, -0.285597,
		31.114670, 26.395065, 38.866554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731451, 26.778393, 39.488125>,  <30.511765, 26.100889, 39.066471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731451, 26.778393, 39.488125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892008, 26.777994, 39.121761>,  <30.988342, 26.777756, 38.901943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892008, 26.777994, 39.121761>,  <30.731451, 26.778393, 39.488125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892008, 26.777994, 39.121761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311514, 0.940234, -0.137543,
		0.861303, 0.340526, 0.377093,
		0.401393, -0.000997, -0.915905,
		31.012426, 26.777695, 38.846989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249115, 27.340446, 39.363415>,  <30.731451, 26.778393, 39.488125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249115, 27.340446, 39.363415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120729, 27.284651, 38.988708>,  <31.043697, 27.251173, 38.763885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120729, 27.284651, 38.988708>,  <31.249115, 27.340446, 39.363415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120729, 27.284651, 38.988708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076650, 0.982024, -0.172491,
		0.943985, -0.127166, -0.304502,
		-0.320964, -0.139489, -0.936763,
		31.024441, 27.242804, 38.707680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641979, 27.744921, 38.889893>,  <31.249115, 27.340446, 39.363415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641979, 27.744921, 38.889893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340939, 27.649773, 38.644287>,  <31.160315, 27.592684, 38.496925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340939, 27.649773, 38.644287>,  <31.641979, 27.744921, 38.889893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340939, 27.649773, 38.644287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039137, 0.914665, -0.402314,
		0.657313, -0.326812, -0.679068,
		-0.752601, -0.237869, -0.614011,
		31.115158, 27.578411, 38.460083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855871, 27.961412, 38.175190>,  <31.641979, 27.744921, 38.889893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855871, 27.961412, 38.175190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458990, 27.912266, 38.166786>,  <31.220861, 27.882778, 38.161743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458990, 27.912266, 38.166786>,  <31.855871, 27.961412, 38.175190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458990, 27.912266, 38.166786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096647, 0.864724, -0.492861,
		0.078722, -0.486986, -0.869854,
		-0.992201, -0.122868, -0.021007,
		31.161329, 27.875406, 38.160484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654245, 28.172577, 37.509174>,  <31.855871, 27.961412, 38.175190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654245, 28.172577, 37.509174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306667, 28.182125, 37.706905>,  <31.098120, 28.187853, 37.825542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306667, 28.182125, 37.706905>,  <31.654245, 28.172577, 37.509174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306667, 28.182125, 37.706905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205148, 0.891609, -0.403668,
		-0.450384, -0.452177, -0.769864,
		-0.868947, 0.023869, 0.494329,
		31.045982, 28.189285, 37.855206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199070, 28.356180, 36.936440>,  <31.654245, 28.172577, 37.509174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199070, 28.356180, 36.936440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036091, 28.428783, 37.294445>,  <30.938303, 28.472345, 37.509247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036091, 28.428783, 37.294445>,  <31.199070, 28.356180, 36.936440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036091, 28.428783, 37.294445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354173, 0.871938, -0.338063,
		-0.841753, -0.454731, -0.290984,
		-0.407447, 0.181507, 0.895010,
		30.913857, 28.483236, 37.562946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503948, 28.572193, 36.821323>,  <31.199070, 28.356180, 36.936440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503948, 28.572193, 36.821323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606543, 28.710918, 37.182198>,  <30.668098, 28.794153, 37.398720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606543, 28.710918, 37.182198>,  <30.503948, 28.572193, 36.821323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606543, 28.710918, 37.182198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236198, 0.927598, -0.289435,
		-0.937243, -0.138858, 0.319833,
		0.256487, 0.346815, 0.902183,
		30.683489, 28.814962, 37.452854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979832, 29.043209, 36.931767>,  <30.503948, 28.572193, 36.821323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979832, 29.043209, 36.931767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288828, 29.118517, 37.174355>,  <30.474226, 29.163702, 37.319908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288828, 29.118517, 37.174355>,  <29.979832, 29.043209, 36.931767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288828, 29.118517, 37.174355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130653, 0.981729, -0.138342,
		-0.621438, 0.027630, 0.782976,
		0.772492, 0.188269, 0.606474,
		30.520576, 29.174997, 37.356297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691885, 29.514704, 37.332256>,  <29.979832, 29.043209, 36.931767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691885, 29.514704, 37.332256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081631, 29.588245, 37.384117>,  <30.315477, 29.632370, 37.415234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081631, 29.588245, 37.384117>,  <29.691885, 29.514704, 37.332256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081631, 29.588245, 37.384117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161804, 0.973110, -0.163940,
		-0.156308, 0.138759, 0.977913,
		0.974365, 0.183856, 0.129653,
		30.373940, 29.643402, 37.423012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740839, 30.140947, 37.702389>,  <29.691885, 29.514704, 37.332256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740839, 30.140947, 37.702389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105568, 30.126993, 37.538746>,  <30.324406, 30.118620, 37.440559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105568, 30.126993, 37.538746>,  <29.740839, 30.140947, 37.702389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105568, 30.126993, 37.538746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088949, 0.955937, -0.279771,
		0.400837, 0.291491, 0.868541,
		0.911821, -0.034887, -0.409103,
		30.379114, 30.116528, 37.416016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054962, 30.772579, 37.958397>,  <29.740839, 30.140947, 37.702389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054962, 30.772579, 37.958397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235786, 30.647104, 37.624393>,  <30.344282, 30.571819, 37.423992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235786, 30.647104, 37.624393>,  <30.054962, 30.772579, 37.958397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235786, 30.647104, 37.624393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150427, 0.895905, -0.418003,
		0.879210, 0.314571, 0.357819,
		0.452063, -0.313687, -0.835009,
		30.371405, 30.552998, 37.373890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598726, 31.281055, 37.818211>,  <30.054962, 30.772579, 37.958397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598726, 31.281055, 37.818211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565845, 31.093214, 37.466595>,  <30.546118, 30.980509, 37.255627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565845, 31.093214, 37.466595>,  <30.598726, 31.281055, 37.818211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565845, 31.093214, 37.466595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222609, 0.868393, -0.443101,
		0.971436, 0.159260, -0.175921,
		-0.082200, -0.469606, -0.879041,
		30.541185, 30.952332, 37.202881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866894, 31.733067, 37.269226>,  <30.598726, 31.281055, 37.818211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866894, 31.733067, 37.269226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625492, 31.486952, 37.066364>,  <30.480650, 31.339283, 36.944649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625492, 31.486952, 37.066364>,  <30.866894, 31.733067, 37.269226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625492, 31.486952, 37.066364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415059, 0.785491, -0.459054,
		0.680813, -0.066543, -0.729428,
		-0.603505, -0.615285, -0.507153,
		30.444441, 31.302366, 36.914219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106676, 31.713003, 36.489170>,  <30.866894, 31.733067, 37.269226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106676, 31.713003, 36.489170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720552, 31.620321, 36.537319>,  <30.488878, 31.564713, 36.566208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720552, 31.620321, 36.537319>,  <31.106676, 31.713003, 36.489170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720552, 31.620321, 36.537319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259050, 0.792092, -0.552706,
		0.032716, -0.564715, -0.824637,
		-0.965310, -0.231705, 0.120375,
		30.430960, 31.550810, 36.573433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800709, 31.902491, 35.890697>,  <31.106676, 31.713003, 36.489170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800709, 31.902491, 35.890697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490196, 31.892008, 36.142635>,  <30.303888, 31.885717, 36.293797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490196, 31.892008, 36.142635>,  <30.800709, 31.902491, 35.890697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490196, 31.892008, 36.142635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401616, 0.790682, -0.462089,
		-0.485897, -0.611666, -0.624315,
		-0.776279, -0.026207, 0.629845,
		30.257313, 31.884146, 36.331589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145525, 31.915171, 35.427593>,  <30.800709, 31.902491, 35.890697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145525, 31.915171, 35.427593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083336, 32.019554, 35.808693>,  <30.046022, 32.082184, 36.037354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083336, 32.019554, 35.808693>,  <30.145525, 31.915171, 35.427593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083336, 32.019554, 35.808693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415844, 0.857565, -0.302749,
		-0.896048, -0.443264, -0.024811,
		-0.155475, 0.260960, 0.952747,
		30.036694, 32.097843, 36.094517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516109, 32.131153, 35.335098>,  <30.145525, 31.915171, 35.427593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516109, 32.131153, 35.335098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646618, 32.276623, 35.684105>,  <29.724924, 32.363903, 35.893509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646618, 32.276623, 35.684105>,  <29.516109, 32.131153, 35.335098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646618, 32.276623, 35.684105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391528, 0.892124, -0.225435,
		-0.860379, -0.268062, 0.433463,
		0.326272, 0.363673, 0.872518,
		29.744499, 32.385723, 35.945862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897028, 32.474689, 35.717056>,  <29.516109, 32.131153, 35.335098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897028, 32.474689, 35.717056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234131, 32.645477, 35.848179>,  <29.436392, 32.747952, 35.926853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234131, 32.645477, 35.848179>,  <28.897028, 32.474689, 35.717056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234131, 32.645477, 35.848179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415822, 0.903100, -0.107253,
		-0.341836, -0.045921, 0.938637,
		0.842758, 0.426969, 0.327807,
		29.486958, 32.773567, 35.946522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691647, 33.048370, 36.097363>,  <28.897028, 32.474689, 35.717056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691647, 33.048370, 36.097363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084572, 33.112724, 36.059036>,  <29.320326, 33.151337, 36.036041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084572, 33.112724, 36.059036>,  <28.691647, 33.048370, 36.097363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084572, 33.112724, 36.059036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167943, 0.983251, -0.070803,
		0.082821, 0.085643, 0.992877,
		0.982312, 0.160883, -0.095817,
		29.379265, 33.160988, 36.030293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840073, 33.553802, 36.507965>,  <28.691647, 33.048370, 36.097363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840073, 33.553802, 36.507965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145630, 33.562908, 36.249989>,  <29.328964, 33.568371, 36.095203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145630, 33.562908, 36.249989>,  <28.840073, 33.553802, 36.507965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145630, 33.562908, 36.249989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242109, 0.936491, -0.253709,
		0.598205, 0.349952, 0.720891,
		0.763894, 0.022764, -0.644940,
		29.374798, 33.569736, 36.056507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028736, 34.199684, 36.590637>,  <28.840073, 33.553802, 36.507965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028736, 34.199684, 36.590637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.202410, 34.098103, 36.244923>,  <29.306614, 34.037155, 36.037495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.202410, 34.098103, 36.244923>,  <29.028736, 34.199684, 36.590637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202410, 34.098103, 36.244923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251579, 0.887081, -0.387035,
		0.864981, 0.385481, 0.321266,
		0.434183, -0.253954, -0.864287,
		29.332664, 34.021915, 35.985638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486908, 34.640678, 36.403011>,  <29.028736, 34.199684, 36.590637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486908, 34.640678, 36.403011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.395418, 34.481930, 36.047443>,  <29.340525, 34.386681, 35.834103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.395418, 34.481930, 36.047443>,  <29.486908, 34.640678, 36.403011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395418, 34.481930, 36.047443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075612, 0.917608, -0.390230,
		0.970550, -0.022042, -0.239889,
		-0.228726, -0.396876, -0.888917,
		29.326799, 34.362865, 35.780769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016510, 34.831261, 35.888809>,  <29.486908, 34.640678, 36.403011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016510, 34.831261, 35.888809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668665, 34.744045, 35.711617>,  <29.459957, 34.691715, 35.605301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668665, 34.744045, 35.711617>,  <30.016510, 34.831261, 35.888809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668665, 34.744045, 35.711617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062774, 0.841103, -0.537220,
		0.489727, -0.494981, -0.717747,
		-0.869613, -0.218036, -0.442983,
		29.407782, 34.678635, 35.578720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012129, 34.885368, 35.194664>,  <30.016510, 34.831261, 35.888809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012129, 34.885368, 35.194664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638775, 34.963612, 35.315018>,  <29.414762, 35.010559, 35.387230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638775, 34.963612, 35.315018>,  <30.012129, 34.885368, 35.194664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638775, 34.963612, 35.315018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036613, 0.885925, -0.462382,
		-0.357006, -0.420564, -0.834070,
		-0.933384, 0.195611, 0.300882,
		29.358759, 35.022293, 35.405281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664940, 34.710728, 35.397198>,  <30.012129, 34.885368, 35.194664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664940, 34.710728, 35.397198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926859, 35.010849, 35.360790>,  <31.084011, 35.190922, 35.338943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926859, 35.010849, 35.360790>,  <30.664940, 34.710728, 35.397198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926859, 35.010849, 35.360790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640192, -0.486586, 0.594464,
		0.401738, -0.447526, -0.798954,
		0.654798, 0.750303, -0.091022,
		31.123299, 35.235939, 35.333485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378157, 34.460354, 35.182915>,  <30.664940, 34.710728, 35.397198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378157, 34.460354, 35.182915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334911, 34.778984, 35.420830>,  <31.308964, 34.970161, 35.563580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334911, 34.778984, 35.420830>,  <31.378157, 34.460354, 35.182915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334911, 34.778984, 35.420830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461575, -0.489675, 0.739707,
		0.880488, 0.354512, -0.314741,
		-0.108114, 0.796580, 0.594787,
		31.302477, 35.017960, 35.599266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982744, 34.775253, 35.454861>,  <31.378157, 34.460354, 35.182915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982744, 34.775253, 35.454861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660080, 34.791466, 35.690712>,  <31.466482, 34.801193, 35.832222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660080, 34.791466, 35.690712>,  <31.982744, 34.775253, 35.454861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660080, 34.791466, 35.690712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546219, -0.329879, 0.769951,
		0.225713, 0.943153, 0.243960,
		-0.806659, 0.040533, 0.589626,
		31.418083, 34.803627, 35.867599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894739, 35.232880, 35.966629>,  <31.982744, 34.775253, 35.454861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894739, 35.232880, 35.966629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709566, 34.902111, 36.094311>,  <31.598461, 34.703651, 36.170921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709566, 34.902111, 36.094311>,  <31.894739, 35.232880, 35.966629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709566, 34.902111, 36.094311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608529, -0.034649, 0.792774,
		-0.644503, 0.561247, 0.519247,
		-0.462934, -0.826923, 0.319204,
		31.570686, 34.654034, 36.190071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622396, 35.209091, 36.759693>,  <31.894739, 35.232880, 35.966629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622396, 35.209091, 36.759693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718300, 34.844337, 36.626438>,  <31.775843, 34.625484, 36.546486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718300, 34.844337, 36.626438>,  <31.622396, 35.209091, 36.759693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718300, 34.844337, 36.626438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502537, -0.177027, 0.846237,
		-0.830646, -0.370308, 0.415812,
		0.239758, -0.911884, -0.333141,
		31.790228, 34.570770, 36.526497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454437, 34.693089, 37.346668>,  <31.622396, 35.209091, 36.759693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454437, 34.693089, 37.346668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700699, 34.480053, 37.114353>,  <31.848455, 34.352230, 36.974964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700699, 34.480053, 37.114353>,  <31.454437, 34.693089, 37.346668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700699, 34.480053, 37.114353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419737, -0.402138, 0.813699,
		-0.666928, -0.744735, -0.024028,
		0.615652, -0.532593, -0.580790,
		31.885395, 34.320274, 36.940117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333750, 33.907856, 37.508804>,  <31.454437, 34.693089, 37.346668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333750, 33.907856, 37.508804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688177, 34.011448, 37.355019>,  <31.900833, 34.073605, 37.262745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688177, 34.011448, 37.355019>,  <31.333750, 33.907856, 37.508804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688177, 34.011448, 37.355019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449216, -0.275012, 0.850043,
		0.114412, -0.925904, -0.360018,
		0.886067, 0.258981, -0.384466,
		31.953997, 34.089142, 37.239677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790195, 33.268024, 37.643578>,  <31.333750, 33.907856, 37.508804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790195, 33.268024, 37.643578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038387, 33.577217, 37.590668>,  <32.187302, 33.762733, 37.558922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038387, 33.577217, 37.590668>,  <31.790195, 33.268024, 37.643578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038387, 33.577217, 37.590668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704725, -0.475597, 0.526470,
		0.344043, -0.419884, -0.839840,
		0.620482, 0.772985, -0.132277,
		32.224533, 33.809113, 37.550983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462784, 32.917500, 37.617168>,  <31.790195, 33.268024, 37.643578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462784, 32.917500, 37.617168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522129, 33.304260, 37.700199>,  <32.557735, 33.536316, 37.750019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522129, 33.304260, 37.700199>,  <32.462784, 32.917500, 37.617168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522129, 33.304260, 37.700199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603319, -0.254807, 0.755698,
		0.783578, 0.013118, -0.621155,
		0.148361, 0.966903, 0.207575,
		32.566639, 33.594330, 37.762470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146042, 33.027527, 37.455017>,  <32.462784, 32.917500, 37.617168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146042, 33.027527, 37.455017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057392, 33.317612, 37.715771>,  <33.004200, 33.491661, 37.872223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057392, 33.317612, 37.715771>,  <33.146042, 33.027527, 37.455017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057392, 33.317612, 37.715771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667401, -0.374590, 0.643629,
		0.710954, 0.577715, -0.400985,
		-0.221629, 0.725209, 0.651884,
		32.990902, 33.535175, 37.911335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739822, 33.208733, 37.816540>,  <33.146042, 33.027527, 37.455017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739822, 33.208733, 37.816540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455250, 33.335861, 38.067253>,  <33.284508, 33.412136, 38.217682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455250, 33.335861, 38.067253>,  <33.739822, 33.208733, 37.816540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455250, 33.335861, 38.067253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592637, -0.208003, 0.778149,
		0.377683, 0.925055, -0.040371,
		-0.711433, 0.317819, 0.626781,
		33.241821, 33.431206, 38.255287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124134, 33.515522, 38.424503>,  <33.739822, 33.208733, 37.816540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124134, 33.515522, 38.424503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764713, 33.494362, 38.598770>,  <33.549061, 33.481667, 38.703331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764713, 33.494362, 38.598770>,  <34.124134, 33.515522, 38.424503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764713, 33.494362, 38.598770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436284, -0.215290, 0.873674,
		0.047575, 0.975116, 0.216530,
		-0.898550, -0.052904, 0.435670,
		33.495148, 33.478489, 38.729469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123695, 33.896240, 39.062984>,  <34.124134, 33.515522, 38.424503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123695, 33.896240, 39.062984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818439, 33.642899, 39.114334>,  <33.635288, 33.490894, 39.145142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818439, 33.642899, 39.114334>,  <34.123695, 33.896240, 39.062984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818439, 33.642899, 39.114334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464529, -0.399534, 0.790307,
		-0.449259, 0.662745, 0.599113,
		-0.763138, -0.633358, 0.128370,
		33.589497, 33.452892, 39.152843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899704, 34.026459, 39.750839>,  <34.123695, 33.896240, 39.062984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899704, 34.026459, 39.750839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784050, 33.660645, 39.637684>,  <33.714657, 33.441154, 39.569790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784050, 33.660645, 39.637684>,  <33.899704, 34.026459, 39.750839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784050, 33.660645, 39.637684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350842, -0.376183, 0.857552,
		-0.890680, 0.148698, 0.429625,
		-0.289133, -0.914535, -0.282890,
		33.697311, 33.386284, 39.552818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698425, 33.701508, 40.394035>,  <33.899704, 34.026459, 39.750839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698425, 33.701508, 40.394035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710625, 33.377663, 40.159565>,  <33.717945, 33.183357, 40.018883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710625, 33.377663, 40.159565>,  <33.698425, 33.701508, 40.394035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710625, 33.377663, 40.159565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288774, -0.554300, 0.780616,
		-0.956911, -0.193082, 0.216887,
		0.030502, -0.809611, -0.586173,
		33.719776, 33.134781, 39.983711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177116, 33.160381, 40.525265>,  <33.698425, 33.701508, 40.394035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177116, 33.160381, 40.525265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493370, 32.978130, 40.361652>,  <33.683121, 32.868778, 40.263485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493370, 32.978130, 40.361652>,  <33.177116, 33.160381, 40.525265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493370, 32.978130, 40.361652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062175, -0.604839, 0.793917,
		-0.609158, -0.653109, -0.449860,
		0.790608, -0.455651, -0.409050,
		33.730560, 32.841442, 40.238941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315346, 32.589954, 41.002071>,  <33.177116, 33.160381, 40.525265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315346, 32.589954, 41.002071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625488, 32.569515, 40.750290>,  <33.811573, 32.557251, 40.599220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625488, 32.569515, 40.750290>,  <33.315346, 32.589954, 41.002071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625488, 32.569515, 40.750290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503703, -0.551178, 0.665196,
		-0.380933, -0.832821, -0.401619,
		0.775353, -0.051099, -0.629457,
		33.858093, 32.554184, 40.561455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420609, 31.877804, 40.808285>,  <33.315346, 32.589954, 41.002071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420609, 31.877804, 40.808285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774483, 32.055210, 40.750835>,  <33.986805, 32.161655, 40.716366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774483, 32.055210, 40.750835>,  <33.420609, 31.877804, 40.808285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774483, 32.055210, 40.750835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420549, -0.626294, 0.656425,
		0.201183, -0.641130, -0.740592,
		0.884683, 0.443517, -0.143627,
		34.039886, 32.188267, 40.707748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899109, 31.370813, 40.572941>,  <33.420609, 31.877804, 40.808285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899109, 31.370813, 40.572941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109299, 31.671223, 40.732861>,  <34.235413, 31.851469, 40.828812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109299, 31.671223, 40.732861>,  <33.899109, 31.370813, 40.572941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109299, 31.671223, 40.732861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508440, -0.653960, 0.560201,
		0.682178, -0.091096, -0.725489,
		0.525473, 0.751024, 0.399801,
		34.266941, 31.896530, 40.852802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563591, 31.112600, 40.695633>,  <33.899109, 31.370813, 40.572941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563591, 31.112600, 40.695633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553207, 31.438255, 40.927670>,  <34.546978, 31.633648, 41.066891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553207, 31.438255, 40.927670>,  <34.563591, 31.112600, 40.695633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553207, 31.438255, 40.927670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534543, -0.479055, 0.696255,
		0.844743, 0.328162, -0.422753,
		-0.025962, 0.814135, 0.580095,
		34.545418, 31.682495, 41.101696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134602, 31.036963, 41.050411>,  <34.563591, 31.112600, 40.695633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134602, 31.036963, 41.050411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939487, 31.310503, 41.267452>,  <34.822418, 31.474628, 41.397675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939487, 31.310503, 41.267452>,  <35.134602, 31.036963, 41.050411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939487, 31.310503, 41.267452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495258, -0.295065, 0.817102,
		0.718879, 0.667295, -0.194756,
		-0.487783, 0.683852, 0.542599,
		34.793152, 31.515659, 41.430233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645752, 31.497597, 41.476818>,  <35.134602, 31.036963, 41.050411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645752, 31.497597, 41.476818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289280, 31.514389, 41.657497>,  <35.075397, 31.524464, 41.765903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289280, 31.514389, 41.657497>,  <35.645752, 31.497597, 41.476818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289280, 31.514389, 41.657497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411471, -0.344450, 0.843828,
		0.191013, 0.937865, 0.289694,
		-0.891182, 0.041981, 0.451699,
		35.021927, 31.526983, 41.793007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711800, 31.915464, 42.197460>,  <35.645752, 31.497597, 41.476818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711800, 31.915464, 42.197460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378956, 31.694330, 42.215210>,  <35.179249, 31.561649, 42.225861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378956, 31.694330, 42.215210>,  <35.711800, 31.915464, 42.197460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378956, 31.694330, 42.215210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299850, -0.381125, 0.874548,
		-0.466569, 0.741024, 0.482905,
		-0.832107, -0.552836, 0.044375,
		35.129322, 31.528479, 42.228523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554726, 31.849731, 42.920250>,  <35.711800, 31.915464, 42.197460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554726, 31.849731, 42.920250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307648, 31.572266, 42.772045>,  <35.159401, 31.405787, 42.683121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307648, 31.572266, 42.772045>,  <35.554726, 31.849731, 42.920250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307648, 31.572266, 42.772045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066993, -0.515842, 0.854060,
		-0.783558, 0.502729, 0.365105,
		-0.617697, -0.693665, -0.370513,
		35.122337, 31.364166, 42.660892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137630, 31.715015, 43.417126>,  <35.554726, 31.849731, 42.920250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137630, 31.715015, 43.417126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095032, 31.396914, 43.178387>,  <35.069473, 31.206053, 43.035141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095032, 31.396914, 43.178387>,  <35.137630, 31.715015, 43.417126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095032, 31.396914, 43.178387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139250, -0.606278, 0.782966,
		-0.984514, 0.000273, 0.175306,
		-0.106498, -0.795252, -0.596852,
		35.063084, 31.158339, 42.999332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801849, 31.146797, 43.826572>,  <35.137630, 31.715015, 43.417126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801849, 31.146797, 43.826572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987713, 30.965870, 43.522072>,  <35.099232, 30.857313, 43.339371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987713, 30.965870, 43.522072>,  <34.801849, 31.146797, 43.826572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987713, 30.965870, 43.522072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135626, -0.813195, 0.565969,
		-0.875041, -0.366228, -0.316513,
		0.464660, -0.452319, -0.761248,
		35.127110, 30.830173, 43.293697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556042, 30.437004, 43.758423>,  <34.801849, 31.146797, 43.826572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556042, 30.437004, 43.758423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928379, 30.473194, 43.616806>,  <35.151779, 30.494907, 43.531834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928379, 30.473194, 43.616806>,  <34.556042, 30.437004, 43.758423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928379, 30.473194, 43.616806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309558, -0.710090, 0.632413,
		-0.194187, -0.698273, -0.688989,
		0.930841, 0.090475, -0.354046,
		35.207630, 30.500338, 43.510593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686069, 29.797308, 43.583969>,  <34.556042, 30.437004, 43.758423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686069, 29.797308, 43.583969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020195, 30.005663, 43.654308>,  <35.220673, 30.130676, 43.696510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020195, 30.005663, 43.654308>,  <34.686069, 29.797308, 43.583969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020195, 30.005663, 43.654308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298564, -0.698388, 0.650472,
		0.461633, -0.490848, -0.738893,
		0.835317, 0.520886, 0.175849,
		35.270790, 30.161928, 43.707062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174507, 29.258854, 43.676399>,  <34.686069, 29.797308, 43.583969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174507, 29.258854, 43.676399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365288, 29.580275, 43.818848>,  <35.479755, 29.773127, 43.904316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365288, 29.580275, 43.818848>,  <35.174507, 29.258854, 43.676399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365288, 29.580275, 43.818848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350127, -0.545344, 0.761585,
		0.806179, -0.238555, -0.541449,
		0.476955, 0.803550, 0.356120,
		35.508373, 29.821339, 43.925682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873775, 29.081844, 43.902355>,  <35.174507, 29.258854, 43.676399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873775, 29.081844, 43.902355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797970, 29.426172, 44.091278>,  <35.752487, 29.632769, 44.204632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797970, 29.426172, 44.091278>,  <35.873775, 29.081844, 43.902355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797970, 29.426172, 44.091278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428721, -0.360201, 0.828525,
		0.883336, 0.359505, -0.300788,
		-0.189515, 0.860820, 0.472306,
		35.741116, 29.684418, 44.232971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472065, 29.296566, 44.315826>,  <35.873775, 29.081844, 43.902355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472065, 29.296566, 44.315826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150215, 29.469337, 44.478806>,  <35.957104, 29.573000, 44.576595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150215, 29.469337, 44.478806>,  <36.472065, 29.296566, 44.315826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150215, 29.469337, 44.478806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357155, -0.196134, 0.913221,
		0.474363, 0.880322, 0.003548,
		-0.804624, 0.431931, 0.407450,
		35.908829, 29.598917, 44.601040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734943, 29.680529, 44.842148>,  <36.472065, 29.296566, 44.315826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734943, 29.680529, 44.842148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352734, 29.618694, 44.942612>,  <36.123409, 29.581594, 45.002888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352734, 29.618694, 44.942612>,  <36.734943, 29.680529, 44.842148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352734, 29.618694, 44.942612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288206, -0.308829, 0.906400,
		-0.062553, 0.938471, 0.339646,
		-0.955523, -0.154586, 0.251155,
		36.066078, 29.572319, 45.017960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667454, 29.843538, 45.643845>,  <36.734943, 29.680529, 44.842148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667454, 29.843538, 45.643845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349186, 29.618019, 45.555260>,  <36.158226, 29.482708, 45.502110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349186, 29.618019, 45.555260>,  <36.667454, 29.843538, 45.643845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349186, 29.618019, 45.555260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013487, -0.382010, 0.924060,
		-0.605583, 0.732258, 0.311557,
		-0.795668, -0.563797, -0.221463,
		36.110485, 29.448879, 45.488819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253731, 29.861429, 46.210201>,  <36.667454, 29.843538, 45.643845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253731, 29.861429, 46.210201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094685, 29.544392, 46.025295>,  <35.999256, 29.354168, 45.914352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094685, 29.544392, 46.025295>,  <36.253731, 29.861429, 46.210201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094685, 29.544392, 46.025295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046617, -0.485706, 0.872878,
		-0.916365, 0.368623, 0.156178,
		-0.397620, -0.792595, -0.462268,
		35.975399, 29.306614, 45.886616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719025, 29.666250, 46.578491>,  <36.253731, 29.861429, 46.210201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719025, 29.666250, 46.578491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824520, 29.341137, 46.370716>,  <35.887817, 29.146069, 46.246048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824520, 29.341137, 46.370716>,  <35.719025, 29.666250, 46.578491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824520, 29.341137, 46.370716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036992, -0.529590, 0.847447,
		-0.963884, -0.242722, -0.109608,
		0.263741, -0.812785, -0.519443,
		35.903641, 29.097301, 46.214882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374031, 29.136461, 47.005623>,  <35.719025, 29.666250, 46.578491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374031, 29.136461, 47.005623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649696, 28.994211, 46.753086>,  <35.815094, 28.908861, 46.601562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649696, 28.994211, 46.753086>,  <35.374031, 29.136461, 47.005623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649696, 28.994211, 46.753086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236516, -0.713165, 0.659891,
		-0.684919, -0.604095, -0.407378,
		0.689164, -0.355620, -0.631338,
		35.856445, 28.887524, 46.563683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246140, 28.373856, 46.861382>,  <35.374031, 29.136461, 47.005623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246140, 28.373856, 46.861382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634460, 28.434530, 46.787056>,  <35.867455, 28.470934, 46.742462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634460, 28.434530, 46.787056>,  <35.246140, 28.373856, 46.861382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634460, 28.434530, 46.787056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239264, -0.667184, 0.705421,
		-0.016970, -0.729286, -0.683999,
		0.970806, 0.151685, -0.185814,
		35.925701, 28.480036, 46.731312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512634, 27.762779, 47.037125>,  <35.246140, 28.373856, 46.861382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512634, 27.762779, 47.037125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852489, 27.973457, 47.026520>,  <36.056404, 28.099863, 47.020157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852489, 27.973457, 47.026520>,  <35.512634, 27.762779, 47.037125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852489, 27.973457, 47.026520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390993, -0.595412, 0.701861,
		0.353882, -0.606695, -0.711820,
		0.849642, 0.526693, -0.026508,
		36.107384, 28.131466, 47.018566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210056, 27.494705, 46.734207>,  <35.512634, 27.762779, 47.037125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210056, 27.494705, 46.734207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290730, 27.731035, 47.046680>,  <36.339134, 27.872833, 47.234165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290730, 27.731035, 47.046680>,  <36.210056, 27.494705, 46.734207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290730, 27.731035, 47.046680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322752, -0.793116, 0.516524,
		0.924745, 0.147952, -0.350652,
		0.201687, 0.590827, 0.781182,
		36.351234, 27.908283, 47.281036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838131, 27.302111, 47.008041>,  <36.210056, 27.494705, 46.734207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838131, 27.302111, 47.008041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690437, 27.505999, 47.318874>,  <36.601822, 27.628332, 47.505375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690437, 27.505999, 47.318874>,  <36.838131, 27.302111, 47.008041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690437, 27.505999, 47.318874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330782, -0.709324, 0.622449,
		0.868476, 0.486872, 0.093300,
		-0.369233, 0.509720, 0.777080,
		36.579666, 27.658915, 47.551998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324760, 27.144516, 47.523315>,  <36.838131, 27.302111, 47.008041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324760, 27.144516, 47.523315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034527, 27.322409, 47.733356>,  <36.860386, 27.429144, 47.859383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034527, 27.322409, 47.733356>,  <37.324760, 27.144516, 47.523315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034527, 27.322409, 47.733356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262855, -0.526096, 0.808783,
		0.635949, 0.724869, 0.264828,
		-0.725587, 0.444733, 0.525105,
		36.816849, 27.455830, 47.890888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609005, 27.290031, 48.247055>,  <37.324760, 27.144516, 47.523315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609005, 27.290031, 48.247055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211414, 27.298626, 48.290054>,  <36.972862, 27.303783, 48.315853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211414, 27.298626, 48.290054>,  <37.609005, 27.290031, 48.247055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211414, 27.298626, 48.290054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081299, -0.513325, 0.854335,
		0.073538, 0.857925, 0.508485,
		-0.993973, 0.021487, 0.107497,
		36.913223, 27.305073, 48.322304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458664, 27.441334, 48.958660>,  <37.609005, 27.290031, 48.247055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458664, 27.441334, 48.958660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112293, 27.279480, 48.841053>,  <36.904472, 27.182367, 48.770489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112293, 27.279480, 48.841053>,  <37.458664, 27.441334, 48.958660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112293, 27.279480, 48.841053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049972, -0.514901, 0.855792,
		-0.497673, 0.755743, 0.425645,
		-0.865924, -0.404635, -0.294018,
		36.852516, 27.158089, 48.752846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936562, 27.600391, 49.456966>,  <37.458664, 27.441334, 48.958660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936562, 27.600391, 49.456966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766769, 27.292679, 49.265961>,  <36.664894, 27.108051, 49.151356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766769, 27.292679, 49.265961>,  <36.936562, 27.600391, 49.456966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766769, 27.292679, 49.265961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212839, -0.427830, 0.878443,
		-0.880064, 0.474518, 0.017873,
		-0.424483, -0.769282, -0.477514,
		36.639423, 27.061893, 49.122707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390968, 27.361279, 49.854500>,  <36.936562, 27.600391, 49.456966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390968, 27.361279, 49.854500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456127, 27.038702, 49.627129>,  <36.495224, 26.845156, 49.490704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456127, 27.038702, 49.627129>,  <36.390968, 27.361279, 49.854500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456127, 27.038702, 49.627129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049984, -0.582134, 0.811555,
		-0.985376, -0.103788, -0.135138,
		0.162898, -0.806441, -0.568433,
		36.504997, 26.796770, 49.456600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896584, 26.753851, 50.080875>,  <36.390968, 27.361279, 49.854500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896584, 26.753851, 50.080875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207047, 26.575207, 49.902832>,  <36.393326, 26.468021, 49.796005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207047, 26.575207, 49.902832>,  <35.896584, 26.753851, 50.080875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207047, 26.575207, 49.902832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044941, -0.664938, 0.745546,
		-0.628929, -0.598668, -0.496029,
		0.776162, -0.446604, -0.445103,
		36.439896, 26.441225, 49.769299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833572, 25.993223, 50.187489>,  <35.896584, 26.753851, 50.080875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833572, 25.993223, 50.187489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215313, 26.056379, 50.086079>,  <36.444359, 26.094273, 50.025230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215313, 26.056379, 50.086079>,  <35.833572, 25.993223, 50.187489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215313, 26.056379, 50.086079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270104, -0.818538, 0.506991,
		-0.127473, -0.552328, -0.823823,
		0.954356, 0.157890, -0.253528,
		36.501621, 26.103746, 50.010021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102844, 25.374498, 50.113888>,  <35.833572, 25.993223, 50.187489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102844, 25.374498, 50.113888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430222, 25.603817, 50.129265>,  <36.626648, 25.741407, 50.138493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430222, 25.603817, 50.129265>,  <36.102844, 25.374498, 50.113888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430222, 25.603817, 50.129265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469642, -0.706011, 0.530081,
		0.331034, -0.415788, -0.847076,
		0.818445, 0.573297, 0.038442,
		36.675755, 25.775806, 50.140797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770382, 24.999424, 49.794601>,  <36.102844, 25.374498, 50.113888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770382, 24.999424, 49.794601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809635, 25.279285, 50.077686>,  <36.833187, 25.447203, 50.247536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809635, 25.279285, 50.077686>,  <36.770382, 24.999424, 49.794601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809635, 25.279285, 50.077686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331338, -0.693543, 0.639698,
		0.938395, 0.171714, -0.299883,
		0.098136, 0.699652, 0.707712,
		36.839077, 25.489182, 50.290001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487850, 24.470041, 50.003124>,  <36.770382, 24.999424, 49.794601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487850, 24.470041, 50.003124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591724, 24.141077, 50.205593>,  <36.654049, 23.943699, 50.327072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591724, 24.141077, 50.205593>,  <36.487850, 24.470041, 50.003124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591724, 24.141077, 50.205593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962995, 0.259693, -0.072117,
		-0.072139, 0.506165, 0.859414,
		0.259687, -0.822409, 0.506168,
		36.669632, 23.894354, 50.357445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088367, 24.604664, 50.498459>,  <36.487850, 24.470041, 50.003124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088367, 24.604664, 50.498459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086647, 24.206108, 50.464531>,  <37.085613, 23.966974, 50.444176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086647, 24.206108, 50.464531>,  <37.088367, 24.604664, 50.498459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086647, 24.206108, 50.464531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999811, -0.002677, -0.019260,
		0.018964, -0.084882, 0.996211,
		-0.004301, -0.996387, -0.084816,
		37.085358, 23.907192, 50.439087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740078, 24.223753, 50.440575>,  <37.088367, 24.604664, 50.498459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740078, 24.223753, 50.440575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704327, 24.622105, 50.434425>,  <37.682877, 24.861116, 50.430737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704327, 24.622105, 50.434425>,  <37.740078, 24.223753, 50.440575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704327, 24.622105, 50.434425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710009, 0.052880, -0.702204,
		-0.698497, -0.073676, -0.711810,
		-0.089376, 0.995879, -0.015374,
		37.677513, 24.920868, 50.429813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250389, 24.197697, 50.024044>,  <37.740078, 24.223753, 50.440575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250389, 24.197697, 50.024044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579056, 24.272350, 49.808624>,  <38.776257, 24.317142, 49.679371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579056, 24.272350, 49.808624>,  <38.250389, 24.197697, 50.024044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579056, 24.272350, 49.808624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474995, -0.298044, -0.827979,
		-0.315041, 0.936129, -0.156241,
		0.821662, 0.186634, -0.538553,
		38.825554, 24.328341, 49.647057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006050, 24.720757, 49.612129>,  <38.250389, 24.197697, 50.024044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006050, 24.720757, 49.612129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336475, 24.560289, 49.453793>,  <38.534729, 24.464008, 49.358791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336475, 24.560289, 49.453793>,  <38.006050, 24.720757, 49.612129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336475, 24.560289, 49.453793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447185, -0.039100, -0.893587,
		0.343001, 0.915169, -0.211695,
		0.826061, -0.401168, -0.395838,
		38.584293, 24.439939, 49.335041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285473, 25.183659, 49.066513>,  <38.006050, 24.720757, 49.612129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285473, 25.183659, 49.066513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368408, 24.793995, 49.030678>,  <38.418171, 24.560198, 49.009174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368408, 24.793995, 49.030678>,  <38.285473, 25.183659, 49.066513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368408, 24.793995, 49.030678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427915, -0.007960, -0.903784,
		0.879715, 0.225729, -0.418507,
		0.207342, -0.974157, -0.089590,
		38.430611, 24.501747, 49.003799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751617, 24.975105, 48.389580>,  <38.285473, 25.183659, 49.066513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751617, 24.975105, 48.389580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447247, 24.771204, 48.550148>,  <38.264622, 24.648863, 48.646488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447247, 24.771204, 48.550148>,  <38.751617, 24.975105, 48.389580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447247, 24.771204, 48.550148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506673, 0.080376, -0.858383,
		0.405300, -0.856557, -0.319439,
		-0.760930, -0.509754, 0.401418,
		38.218967, 24.618279, 48.670574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619045, 24.325642, 48.111404>,  <38.751617, 24.975105, 48.389580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619045, 24.325642, 48.111404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280365, 24.513397, 48.211620>,  <38.077156, 24.626051, 48.271748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280365, 24.513397, 48.211620>,  <38.619045, 24.325642, 48.111404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280365, 24.513397, 48.211620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235062, 0.092428, -0.967576,
		-0.477324, -0.878142, 0.032076,
		-0.846704, 0.469387, 0.250536,
		38.026352, 24.654213, 48.286781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075623, 24.059912, 47.617180>,  <38.619045, 24.325642, 48.111404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075623, 24.059912, 47.617180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025063, 24.425413, 47.771622>,  <37.994728, 24.644714, 47.864285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025063, 24.425413, 47.771622>,  <38.075623, 24.059912, 47.617180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025063, 24.425413, 47.771622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176154, 0.362363, -0.915239,
		-0.976214, -0.183700, 0.115159,
		-0.126400, 0.913755, 0.386103,
		37.987141, 24.699539, 47.887451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403927, 24.419590, 47.372429>,  <38.075623, 24.059912, 47.617180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403927, 24.419590, 47.372429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674496, 24.700220, 47.462090>,  <37.836838, 24.868599, 47.515884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674496, 24.700220, 47.462090>,  <37.403927, 24.419590, 47.372429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674496, 24.700220, 47.462090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019928, 0.321663, -0.946644,
		-0.736244, 0.635865, 0.231561,
		0.676423, 0.701576, 0.224151,
		37.877422, 24.910692, 47.529335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207157, 24.997776, 47.023216>,  <37.403927, 24.419590, 47.372429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207157, 24.997776, 47.023216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579151, 25.117468, 47.108627>,  <37.802345, 25.189283, 47.159874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579151, 25.117468, 47.108627>,  <37.207157, 24.997776, 47.023216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579151, 25.117468, 47.108627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064461, 0.439113, -0.896116,
		-0.361909, 0.847136, 0.389078,
		0.929982, 0.299232, 0.213527,
		37.858147, 25.207237, 47.172684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334888, 25.505810, 46.503544>,  <37.207157, 24.997776, 47.023216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334888, 25.505810, 46.503544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706535, 25.467880, 46.646507>,  <37.929523, 25.445122, 46.732285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706535, 25.467880, 46.646507>,  <37.334888, 25.505810, 46.503544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706535, 25.467880, 46.646507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364702, 0.394572, -0.843389,
		-0.061050, 0.913959, 0.401188,
		0.929121, -0.094825, 0.357412,
		37.985271, 25.439432, 46.753731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682964, 26.191694, 46.648842>,  <37.334888, 25.505810, 46.503544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682964, 26.191694, 46.648842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928867, 25.890732, 46.554222>,  <38.076408, 25.710154, 46.497452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928867, 25.890732, 46.554222>,  <37.682964, 26.191694, 46.648842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928867, 25.890732, 46.554222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159882, 0.412571, -0.896784,
		0.772339, 0.513488, 0.373929,
		0.614760, -0.752406, -0.236547,
		38.113297, 25.665010, 46.483257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184952, 26.541756, 46.339615>,  <37.682964, 26.191694, 46.648842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184952, 26.541756, 46.339615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236958, 26.162685, 46.222992>,  <38.268162, 25.935244, 46.153019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236958, 26.162685, 46.222992>,  <38.184952, 26.541756, 46.339615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236958, 26.162685, 46.222992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209531, 0.313676, -0.926123,
		0.969119, 0.059323, 0.239352,
		0.130019, -0.947675, -0.291559,
		38.275963, 25.878384, 46.135525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894585, 26.553776, 46.057003>,  <38.184952, 26.541756, 46.339615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894585, 26.553776, 46.057003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688965, 26.247936, 45.901493>,  <38.565594, 26.064432, 45.808186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688965, 26.247936, 45.901493>,  <38.894585, 26.553776, 46.057003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688965, 26.247936, 45.901493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349497, 0.227212, -0.908970,
		0.783333, -0.603127, 0.150428,
		-0.514045, -0.764600, -0.388774,
		38.534752, 26.018557, 45.784863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351578, 26.169033, 45.589539>,  <38.894585, 26.553776, 46.057003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351578, 26.169033, 45.589539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979313, 26.083179, 45.471020>,  <38.755955, 26.031668, 45.399910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979313, 26.083179, 45.471020>,  <39.351578, 26.169033, 45.589539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979313, 26.083179, 45.471020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265303, 0.161772, -0.950497,
		0.251943, -0.963204, -0.093612,
		-0.930666, -0.214635, -0.296298,
		38.700111, 26.018789, 45.382130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448341, 25.831654, 44.929447>,  <39.351578, 26.169033, 45.589539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448341, 25.831654, 44.929447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052402, 25.888016, 44.936951>,  <38.814838, 25.921833, 44.941452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052402, 25.888016, 44.936951>,  <39.448341, 25.831654, 44.929447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052402, 25.888016, 44.936951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018462, 0.003417, -0.999824,
		-0.140948, -0.990017, -0.000780,
		-0.989845, 0.140909, 0.018759,
		38.755447, 25.930288, 44.942577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205391, 25.500076, 44.336281>,  <39.448341, 25.831654, 44.929447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205391, 25.500076, 44.336281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951958, 25.794292, 44.432240>,  <38.799896, 25.970821, 44.489815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951958, 25.794292, 44.432240>,  <39.205391, 25.500076, 44.336281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951958, 25.794292, 44.432240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164667, 0.174768, -0.970743,
		-0.755947, -0.654551, 0.010388,
		-0.633585, 0.735540, 0.239898,
		38.761883, 26.014954, 44.504208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771107, 25.348200, 43.799828>,  <39.205391, 25.500076, 44.336281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771107, 25.348200, 43.799828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679150, 25.705973, 43.953262>,  <38.623974, 25.920637, 44.045322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679150, 25.705973, 43.953262>,  <38.771107, 25.348200, 43.799828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679150, 25.705973, 43.953262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097188, 0.371071, -0.923504,
		-0.968351, -0.249587, 0.001621,
		-0.229893, 0.894434, 0.383584,
		38.610180, 25.974302, 44.068336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083839, 25.492146, 43.582157>,  <38.771107, 25.348200, 43.799828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083839, 25.492146, 43.582157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264347, 25.845127, 43.635265>,  <38.372654, 26.056915, 43.667130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264347, 25.845127, 43.635265>,  <38.083839, 25.492146, 43.582157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264347, 25.845127, 43.635265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259407, 0.272073, -0.926652,
		-0.853851, 0.383732, 0.351694,
		0.451273, 0.882455, 0.132767,
		38.399731, 26.109863, 43.675095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655010, 26.029142, 43.394756>,  <38.083839, 25.492146, 43.582157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655010, 26.029142, 43.394756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008324, 26.213852, 43.362309>,  <38.220310, 26.324678, 43.342842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008324, 26.213852, 43.362309>,  <37.655010, 26.029142, 43.394756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008324, 26.213852, 43.362309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294448, 0.411720, -0.862431,
		-0.364853, 0.785652, 0.499633,
		0.883280, 0.461776, -0.081116,
		38.273308, 26.352385, 43.337975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653313, 26.771059, 43.524075>,  <37.655010, 26.029142, 43.394756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653313, 26.771059, 43.524075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955315, 26.687531, 43.275440>,  <38.136517, 26.637413, 43.126259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955315, 26.687531, 43.275440>,  <37.653313, 26.771059, 43.524075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955315, 26.687531, 43.275440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413931, 0.583419, -0.698772,
		0.508562, 0.784867, 0.354045,
		0.755000, -0.208819, -0.621586,
		38.181816, 26.624886, 43.088966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723602, 27.450581, 43.277058>,  <37.653313, 26.771059, 43.524075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723602, 27.450581, 43.277058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930672, 27.223232, 43.021255>,  <38.054913, 27.086823, 42.867775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930672, 27.223232, 43.021255>,  <37.723602, 27.450581, 43.277058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930672, 27.223232, 43.021255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314674, 0.568587, -0.760059,
		0.795612, 0.594697, 0.115489,
		0.517671, -0.568370, -0.639509,
		38.085972, 27.052721, 42.829403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785309, 27.959860, 42.763271>,  <37.723602, 27.450581, 43.277058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785309, 27.959860, 42.763271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910286, 27.618073, 42.597252>,  <37.985271, 27.413000, 42.497639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910286, 27.618073, 42.597252>,  <37.785309, 27.959860, 42.763271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910286, 27.618073, 42.597252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252524, 0.346496, -0.903422,
		0.915758, 0.387076, -0.107514,
		0.312440, -0.854466, -0.415052,
		38.004017, 27.361732, 42.472736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175186, 28.195139, 42.186150>,  <37.785309, 27.959860, 42.763271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175186, 28.195139, 42.186150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023464, 27.832193, 42.113682>,  <37.932430, 27.614426, 42.070202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023464, 27.832193, 42.113682>,  <38.175186, 28.195139, 42.186150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023464, 27.832193, 42.113682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234715, 0.283756, -0.929726,
		0.895007, -0.310123, -0.320601,
		-0.379302, -0.907362, -0.181174,
		37.909672, 27.559984, 42.059330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328953, 28.118402, 41.520916>,  <38.175186, 28.195139, 42.186150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328953, 28.118402, 41.520916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080750, 27.805628, 41.544724>,  <37.931828, 27.617964, 41.559010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080750, 27.805628, 41.544724>,  <38.328953, 28.118402, 41.520916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080750, 27.805628, 41.544724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303715, 0.169648, -0.937538,
		0.722996, -0.599830, -0.342753,
		-0.620511, -0.781935, 0.059523,
		37.894596, 27.571047, 41.562580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293789, 27.805712, 40.884819>,  <38.328953, 28.118402, 41.520916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293789, 27.805712, 40.884819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938801, 27.711948, 41.043541>,  <37.725807, 27.655691, 41.138775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938801, 27.711948, 41.043541>,  <38.293789, 27.805712, 40.884819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938801, 27.711948, 41.043541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456731, 0.332224, -0.825242,
		0.061616, -0.913608, -0.401899,
		-0.887469, -0.234408, 0.396803,
		37.672562, 27.641626, 41.162582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964031, 27.784521, 40.262093>,  <38.293789, 27.805712, 40.884819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964031, 27.784521, 40.262093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676819, 27.735662, 40.536175>,  <37.504490, 27.706347, 40.700626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676819, 27.735662, 40.536175>,  <37.964031, 27.784521, 40.262093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676819, 27.735662, 40.536175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688694, 0.267058, -0.674077,
		-0.100653, -0.955908, -0.275879,
		-0.718032, -0.122149, 0.685208,
		37.461411, 27.699018, 40.741737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410721, 27.573956, 39.911861>,  <37.964031, 27.784521, 40.262093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410721, 27.573956, 39.911861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254288, 27.711737, 40.253250>,  <37.160427, 27.794405, 40.458084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254288, 27.711737, 40.253250>,  <37.410721, 27.573956, 39.911861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254288, 27.711737, 40.253250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823061, 0.284081, -0.491801,
		-0.411857, -0.894790, 0.172408,
		-0.391081, 0.344454, 0.853468,
		37.136963, 27.815073, 40.509289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784573, 27.241802, 39.955563>,  <37.410721, 27.573956, 39.911861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784573, 27.241802, 39.955563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747700, 27.575417, 40.173145>,  <36.725574, 27.775585, 40.303696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747700, 27.575417, 40.173145>,  <36.784573, 27.241802, 39.955563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747700, 27.575417, 40.173145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822532, 0.244099, -0.513670,
		-0.561198, -0.494773, 0.663519,
		-0.092186, 0.834036, 0.543954,
		36.720043, 27.825626, 40.336330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005203, 27.276136, 40.045532>,  <36.784573, 27.241802, 39.955563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005203, 27.276136, 40.045532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133038, 27.639086, 40.154739>,  <36.209740, 27.856855, 40.220264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133038, 27.639086, 40.154739>,  <36.005203, 27.276136, 40.045532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133038, 27.639086, 40.154739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805705, 0.411860, -0.425688,
		-0.498702, -0.083925, 0.862701,
		0.319586, 0.907374, 0.273014,
		36.228912, 27.911299, 40.236645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442055, 27.603830, 40.407333>,  <36.005203, 27.276136, 40.045532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442055, 27.603830, 40.407333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684639, 27.887968, 40.264439>,  <35.830189, 28.058451, 40.178703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684639, 27.887968, 40.264439>,  <35.442055, 27.603830, 40.407333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684639, 27.887968, 40.264439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782155, 0.452185, -0.428674,
		-0.142971, 0.539386, 0.829832,
		0.606459, 0.710345, -0.357235,
		35.866577, 28.101072, 40.157269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060184, 28.209347, 40.306931>,  <35.442055, 27.603830, 40.407333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060184, 28.209347, 40.306931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386921, 28.282053, 40.087940>,  <35.582962, 28.325676, 39.956547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386921, 28.282053, 40.087940>,  <35.060184, 28.209347, 40.306931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386921, 28.282053, 40.087940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552227, 0.520780, -0.651025,
		0.166782, 0.834116, 0.525770,
		0.816841, 0.181766, -0.547478,
		35.631973, 28.336582, 39.923698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095600, 28.901962, 40.187302>,  <35.060184, 28.209347, 40.306931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095600, 28.901962, 40.187302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314098, 28.765814, 39.881161>,  <35.445198, 28.684124, 39.697475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314098, 28.765814, 39.881161>,  <35.095600, 28.901962, 40.187302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314098, 28.765814, 39.881161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423385, 0.676203, -0.602905,
		0.722742, 0.653374, 0.225267,
		0.546249, -0.340370, -0.765350,
		35.477974, 28.663702, 39.651554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357693, 29.487093, 39.817436>,  <35.095600, 28.901962, 40.187302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357693, 29.487093, 39.817436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388340, 29.194271, 39.546665>,  <35.406727, 29.018578, 39.384201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388340, 29.194271, 39.546665>,  <35.357693, 29.487093, 39.817436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388340, 29.194271, 39.546665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561655, 0.529269, -0.635938,
		0.823817, 0.428921, -0.370612,
		0.076614, -0.732052, -0.676926,
		35.411324, 28.974655, 39.343586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479057, 29.870153, 39.240822>,  <35.357693, 29.487093, 39.817436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479057, 29.870153, 39.240822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360920, 29.506840, 39.122299>,  <35.290039, 29.288853, 39.051186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360920, 29.506840, 39.122299>,  <35.479057, 29.870153, 39.240822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360920, 29.506840, 39.122299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624017, 0.418237, -0.660062,
		0.723447, -0.010047, -0.690307,
		-0.295344, -0.908283, -0.296302,
		35.272316, 29.234356, 39.033409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632381, 29.908792, 38.617599>,  <35.479057, 29.870153, 39.240822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632381, 29.908792, 38.617599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349831, 29.627131, 38.646427>,  <35.180302, 29.458134, 38.663723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349831, 29.627131, 38.646427>,  <35.632381, 29.908792, 38.617599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349831, 29.627131, 38.646427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549239, 0.481032, -0.683334,
		0.446500, -0.522281, -0.726540,
		-0.706381, -0.704152, 0.072077,
		35.137917, 29.415884, 38.668049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485458, 29.683506, 37.942841>,  <35.632381, 29.908792, 38.617599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485458, 29.683506, 37.942841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181717, 29.590691, 38.186001>,  <34.999474, 29.535002, 38.331898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181717, 29.590691, 38.186001>,  <35.485458, 29.683506, 37.942841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181717, 29.590691, 38.186001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634230, 0.472710, -0.611799,
		-0.145400, -0.850119, -0.506119,
		-0.759349, -0.232040, 0.607903,
		34.953911, 29.521078, 38.368370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994202, 29.364241, 37.567768>,  <35.485458, 29.683506, 37.942841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994202, 29.364241, 37.567768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755363, 29.486012, 37.864632>,  <34.612061, 29.559074, 38.042751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755363, 29.486012, 37.864632>,  <34.994202, 29.364241, 37.567768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755363, 29.486012, 37.864632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707138, 0.237057, -0.666153,
		-0.378729, -0.922566, 0.073726,
		-0.597093, 0.304426, 0.742162,
		34.576237, 29.577339, 38.087280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331738, 29.072529, 37.419079>,  <34.994202, 29.364241, 37.567768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331738, 29.072529, 37.419079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273907, 29.375851, 37.673344>,  <34.239208, 29.557844, 37.825905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273907, 29.375851, 37.673344>,  <34.331738, 29.072529, 37.419079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273907, 29.375851, 37.673344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602814, 0.441938, -0.664308,
		-0.784673, -0.479234, 0.393222,
		-0.144579, 0.758304, 0.635666,
		34.230534, 29.603342, 37.864044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727757, 29.390213, 37.172436>,  <34.331738, 29.072529, 37.419079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727757, 29.390213, 37.172436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865902, 29.659285, 37.434193>,  <33.948788, 29.820726, 37.591248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865902, 29.659285, 37.434193>,  <33.727757, 29.390213, 37.172436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865902, 29.659285, 37.434193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539516, 0.712865, -0.448048,
		-0.767886, -0.198318, 0.609115,
		0.345361, 0.672677, 0.654394,
		33.969509, 29.861088, 37.630512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112358, 29.879663, 37.194946>,  <33.727757, 29.390213, 37.172436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112358, 29.879663, 37.194946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427628, 30.057497, 37.365181>,  <33.616791, 30.164198, 37.467319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427628, 30.057497, 37.365181>,  <33.112358, 29.879663, 37.194946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427628, 30.057497, 37.365181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246106, 0.861482, -0.444162,
		-0.564101, 0.245340, 0.788415,
		0.788177, 0.444586, 0.425583,
		33.664082, 30.190872, 37.492855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837818, 30.485207, 37.486073>,  <33.112358, 29.879663, 37.194946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837818, 30.485207, 37.486073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229687, 30.548920, 37.437286>,  <33.464809, 30.587147, 37.408016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229687, 30.548920, 37.437286>,  <32.837818, 30.485207, 37.486073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229687, 30.548920, 37.437286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196580, 0.883483, -0.425222,
		0.040022, 0.440553, 0.896834,
		0.979671, 0.159281, -0.121963,
		33.523586, 30.596704, 37.400696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897461, 31.205238, 37.756321>,  <32.837818, 30.485207, 37.486073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897461, 31.205238, 37.756321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211445, 31.125961, 37.521526>,  <33.399837, 31.078396, 37.380650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211445, 31.125961, 37.521526>,  <32.897461, 31.205238, 37.756321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211445, 31.125961, 37.521526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198671, 0.816892, -0.541496,
		0.586824, 0.541672, 0.601855,
		0.784963, -0.198192, -0.586986,
		33.446934, 31.066504, 37.345432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316891, 31.812006, 37.841755>,  <32.897461, 31.205238, 37.756321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316891, 31.812006, 37.841755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382671, 31.611851, 37.501740>,  <33.422138, 31.491756, 37.297729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382671, 31.611851, 37.501740>,  <33.316891, 31.812006, 37.841755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382671, 31.611851, 37.501740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312435, 0.790974, -0.526064,
		0.935597, 0.352093, -0.026265,
		0.164449, -0.500390, -0.850039,
		33.432007, 31.461733, 37.246727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822353, 32.099747, 37.387188>,  <33.316891, 31.812006, 37.841755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822353, 32.099747, 37.387188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529934, 31.917505, 37.184017>,  <33.354481, 31.808161, 37.062115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529934, 31.917505, 37.184017>,  <33.822353, 32.099747, 37.387188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529934, 31.917505, 37.184017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153013, 0.834918, -0.528677,
		0.664946, -0.308770, -0.680079,
		-0.731050, -0.455602, -0.507929,
		33.310619, 31.780825, 37.031639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410278, 32.321854, 36.896603>,  <33.822353, 32.099747, 37.387188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410278, 32.321854, 36.896603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563869, 32.547203, 36.603981>,  <34.656025, 32.682411, 36.428410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563869, 32.547203, 36.603981>,  <34.410278, 32.321854, 36.896603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563869, 32.547203, 36.603981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741615, -0.660162, -0.119132,
		-0.550059, -0.496787, -0.671295,
		0.383981, 0.563373, -0.731553,
		34.679062, 32.716213, 36.384514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519329, 31.962048, 36.217014>,  <34.410278, 32.321854, 36.896603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519329, 31.962048, 36.217014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798828, 32.245174, 36.258472>,  <34.966530, 32.415051, 36.283348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798828, 32.245174, 36.258472>,  <34.519329, 31.962048, 36.217014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798828, 32.245174, 36.258472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695347, -0.706064, 0.134033,
		0.168052, -0.021585, -0.985542,
		0.698749, 0.707818, 0.103647,
		35.008453, 32.457520, 36.289566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073597, 31.554571, 36.103569>,  <34.519329, 31.962048, 36.217014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073597, 31.554571, 36.103569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236492, 31.903015, 36.213352>,  <35.334229, 32.112080, 36.279224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236492, 31.903015, 36.213352>,  <35.073597, 31.554571, 36.103569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236492, 31.903015, 36.213352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816532, -0.481883, 0.317907,
		0.409190, 0.094645, -0.907527,
		0.407233, 0.871109, 0.274463,
		35.358662, 32.164349, 36.295692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722832, 31.563082, 35.770084>,  <35.073597, 31.554571, 36.103569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722832, 31.563082, 35.770084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743317, 31.804289, 36.088516>,  <35.755608, 31.949013, 36.279575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743317, 31.804289, 36.088516>,  <35.722832, 31.563082, 35.770084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743317, 31.804289, 36.088516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671964, -0.610507, 0.419220,
		0.738811, 0.513468, -0.436473,
		0.051214, 0.603018, 0.796081,
		35.758682, 31.985195, 36.327339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428242, 31.659054, 35.800949>,  <35.722832, 31.563082, 35.770084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428242, 31.659054, 35.800949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251385, 31.717474, 36.154938>,  <36.145271, 31.752525, 36.367332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251385, 31.717474, 36.154938>,  <36.428242, 31.659054, 35.800949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251385, 31.717474, 36.154938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707698, -0.549375, 0.444242,
		0.551063, 0.822713, 0.139545,
		-0.442146, 0.146050, 0.884972,
		36.118740, 31.761290, 36.420429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972065, 31.631754, 36.262405>,  <36.428242, 31.659054, 35.800949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972065, 31.631754, 36.262405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653481, 31.614183, 36.503639>,  <36.462330, 31.603642, 36.648380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653481, 31.614183, 36.503639>,  <36.972065, 31.631754, 36.262405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653481, 31.614183, 36.503639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552670, -0.457568, 0.696554,
		0.245358, 0.888089, 0.388713,
		-0.796464, -0.043925, 0.603088,
		36.414543, 31.601006, 36.684566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223217, 31.890297, 36.879524>,  <36.972065, 31.631754, 36.262405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223217, 31.890297, 36.879524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918434, 31.653852, 36.985367>,  <36.735565, 31.511986, 37.048874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918434, 31.653852, 36.985367>,  <37.223217, 31.890297, 36.879524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918434, 31.653852, 36.985367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563772, -0.404318, 0.720200,
		-0.318730, 0.697938, 0.641322,
		-0.761953, -0.591109, 0.264609,
		36.689850, 31.476521, 37.064751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265312, 31.942379, 37.507301>,  <37.223217, 31.890297, 36.879524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265312, 31.942379, 37.507301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079189, 31.598757, 37.421967>,  <36.967514, 31.392584, 37.370766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079189, 31.598757, 37.421967>,  <37.265312, 31.942379, 37.507301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079189, 31.598757, 37.421967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607929, -0.485336, 0.628388,
		-0.643359, 0.162702, 0.748076,
		-0.465308, -0.859056, -0.213334,
		36.939598, 31.341040, 37.357967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211861, 31.679293, 38.123085>,  <37.265312, 31.942379, 37.507301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211861, 31.679293, 38.123085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160622, 31.373709, 37.870117>,  <37.129879, 31.190357, 37.718338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160622, 31.373709, 37.870117>,  <37.211861, 31.679293, 38.123085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160622, 31.373709, 37.870117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435476, -0.616240, 0.656208,
		-0.891039, -0.191343, 0.411627,
		-0.128100, -0.763961, -0.632419,
		37.122192, 31.144520, 37.680393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947227, 31.142809, 38.548992>,  <37.211861, 31.679293, 38.123085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947227, 31.142809, 38.548992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099926, 30.978161, 38.217972>,  <37.191547, 30.879372, 38.019360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099926, 30.978161, 38.217972>,  <36.947227, 31.142809, 38.548992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099926, 30.978161, 38.217972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550157, -0.618269, 0.561311,
		-0.742694, -0.669562, -0.009569,
		0.381749, -0.411618, -0.827549,
		37.214451, 30.854675, 37.969707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855938, 30.354277, 38.605358>,  <36.947227, 31.142809, 38.548992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855938, 30.354277, 38.605358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122414, 30.418091, 38.313950>,  <37.282299, 30.456379, 38.139103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122414, 30.418091, 38.313950>,  <36.855938, 30.354277, 38.605358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122414, 30.418091, 38.313950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628111, -0.646688, 0.432749,
		-0.402088, -0.745884, -0.531020,
		0.666185, 0.159536, -0.728524,
		37.322269, 30.465952, 38.095394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977600, 29.671488, 38.500801>,  <36.855938, 30.354277, 38.605358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977600, 29.671488, 38.500801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278797, 29.864672, 38.322029>,  <37.459515, 29.980583, 38.214764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278797, 29.864672, 38.322029>,  <36.977600, 29.671488, 38.500801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278797, 29.864672, 38.322029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618290, -0.751739, 0.229359,
		-0.225205, -0.449040, -0.864665,
		0.752994, 0.482961, -0.446933,
		37.504696, 30.009560, 38.187950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374718, 29.223206, 38.006088>,  <36.977600, 29.671488, 38.500801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374718, 29.223206, 38.006088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630829, 29.516325, 38.098217>,  <37.784496, 29.692198, 38.153496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630829, 29.516325, 38.098217>,  <37.374718, 29.223206, 38.006088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630829, 29.516325, 38.098217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676705, -0.679989, 0.282286,
		0.363479, -0.024878, -0.931270,
		0.640276, 0.732800, 0.230326,
		37.822910, 29.736164, 38.167316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059788, 28.979256, 37.776932>,  <37.374718, 29.223206, 38.006088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059788, 28.979256, 37.776932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132088, 29.255835, 38.056713>,  <38.175468, 29.421782, 38.224583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132088, 29.255835, 38.056713>,  <38.059788, 28.979256, 37.776932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132088, 29.255835, 38.056713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536500, -0.665356, 0.519103,
		0.824317, 0.281431, -0.491221,
		0.180746, 0.691446, 0.699452,
		38.186310, 29.463268, 38.266548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681194, 28.748857, 37.984829>,  <38.059788, 28.979256, 37.776932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681194, 28.748857, 37.984829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607254, 29.039803, 38.249184>,  <38.562889, 29.214369, 38.407799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607254, 29.039803, 38.249184>,  <38.681194, 28.748857, 37.984829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607254, 29.039803, 38.249184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656794, -0.408813, 0.633636,
		0.731063, 0.551194, -0.402159,
		-0.184848, 0.727363, 0.660889,
		38.551800, 29.258011, 38.447449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376030, 28.977154, 38.212112>,  <38.681194, 28.748857, 37.984829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376030, 28.977154, 38.212112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118023, 29.114491, 38.485191>,  <38.963219, 29.196892, 38.649036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118023, 29.114491, 38.485191>,  <39.376030, 28.977154, 38.212112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118023, 29.114491, 38.485191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575447, -0.369594, 0.729563,
		0.502807, 0.863434, 0.040820,
		-0.645016, 0.343340, 0.682695,
		38.924519, 29.217493, 38.689999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792713, 29.262304, 38.704636>,  <39.376030, 28.977154, 38.212112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792713, 29.262304, 38.704636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450191, 29.162430, 38.885479>,  <39.244678, 29.102505, 38.993984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450191, 29.162430, 38.885479>,  <39.792713, 29.262304, 38.704636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450191, 29.162430, 38.885479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509160, -0.261274, 0.820056,
		-0.086634, 0.932412, 0.350860,
		-0.856301, -0.249689, 0.452112,
		39.193302, 29.087523, 39.021114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827072, 29.587772, 39.448288>,  <39.792713, 29.262304, 38.704636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827072, 29.587772, 39.448288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584965, 29.269379, 39.451191>,  <39.439701, 29.078342, 39.452934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584965, 29.269379, 39.451191>,  <39.827072, 29.587772, 39.448288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584965, 29.269379, 39.451191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398227, -0.294894, 0.868592,
		-0.689246, 0.528625, 0.495474,
		-0.605272, -0.795985, 0.007258,
		39.403381, 29.030582, 39.453369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645130, 29.532381, 40.126484>,  <39.827072, 29.587772, 39.448288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645130, 29.532381, 40.126484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544891, 29.180597, 39.964619>,  <39.484749, 28.969526, 39.867500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544891, 29.180597, 39.964619>,  <39.645130, 29.532381, 40.126484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544891, 29.180597, 39.964619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217668, -0.458487, 0.861632,
		-0.943305, 0.127835, 0.306324,
		-0.250592, -0.879459, -0.404667,
		39.469715, 28.916759, 39.843220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391167, 29.202755, 40.651093>,  <39.645130, 29.532381, 40.126484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391167, 29.202755, 40.651093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443226, 28.892035, 40.404633>,  <39.474461, 28.705603, 40.256756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443226, 28.892035, 40.404633>,  <39.391167, 29.202755, 40.651093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443226, 28.892035, 40.404633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278886, -0.567664, 0.774584,
		-0.951465, -0.272643, 0.142761,
		0.130145, -0.776803, -0.616149,
		39.482269, 28.658993, 40.219788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048180, 28.641600, 41.035698>,  <39.391167, 29.202755, 40.651093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048180, 28.641600, 41.035698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294292, 28.465746, 40.773964>,  <39.441959, 28.360233, 40.616924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294292, 28.465746, 40.773964>,  <39.048180, 28.641600, 41.035698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294292, 28.465746, 40.773964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294795, -0.641507, 0.708212,
		-0.731113, -0.628643, -0.265106,
		0.615280, -0.439632, -0.654335,
		39.478878, 28.333857, 40.577663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031036, 27.999937, 41.237953>,  <39.048180, 28.641600, 41.035698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031036, 27.999937, 41.237953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367355, 28.034929, 41.024258>,  <39.569145, 28.055923, 40.896042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367355, 28.034929, 41.024258>,  <39.031036, 27.999937, 41.237953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367355, 28.034929, 41.024258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475962, -0.589635, 0.652526,
		-0.257923, -0.802918, -0.537400,
		0.840795, 0.087480, -0.534239,
		39.619595, 28.061172, 40.863987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297688, 27.364128, 40.951965>,  <39.031036, 27.999937, 41.237953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297688, 27.364128, 40.951965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596550, 27.620541, 41.022205>,  <39.775867, 27.774387, 41.064350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596550, 27.620541, 41.022205>,  <39.297688, 27.364128, 40.951965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596550, 27.620541, 41.022205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307266, -0.567407, 0.763961,
		0.589359, -0.516843, -0.620909,
		0.747157, 0.641032, 0.175598,
		39.820698, 27.812851, 41.074886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881134, 26.871641, 41.180244>,  <39.297688, 27.364128, 40.951965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881134, 26.871641, 41.180244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991974, 27.236027, 41.302464>,  <40.058479, 27.454659, 41.375793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991974, 27.236027, 41.302464>,  <39.881134, 26.871641, 41.180244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991974, 27.236027, 41.302464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463377, -0.405275, 0.788057,
		0.841722, -0.076791, -0.534423,
		0.277103, 0.910964, 0.305545,
		40.075104, 27.509315, 41.394127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657719, 26.861032, 41.293823>,  <39.881134, 26.871641, 41.180244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657719, 26.861032, 41.293823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524170, 27.175579, 41.501732>,  <40.444042, 27.364307, 41.626476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524170, 27.175579, 41.501732>,  <40.657719, 26.861032, 41.293823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524170, 27.175579, 41.501732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584360, -0.260001, 0.768715,
		0.739631, 0.560384, -0.372713,
		-0.333870, 0.786364, 0.519771,
		40.424007, 27.411488, 41.657661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266644, 27.106260, 41.558174>,  <40.657719, 26.861032, 41.293823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266644, 27.106260, 41.558174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971695, 27.254789, 41.783886>,  <40.794727, 27.343906, 41.919312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971695, 27.254789, 41.783886>,  <41.266644, 27.106260, 41.558174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971695, 27.254789, 41.783886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442964, -0.364860, 0.818938,
		0.509972, 0.853813, 0.104553,
		-0.737367, 0.371323, 0.564277,
		40.750484, 27.366186, 41.953171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677498, 27.472071, 42.065426>,  <41.266644, 27.106260, 41.558174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677498, 27.472071, 42.065426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304413, 27.383795, 42.179504>,  <41.080563, 27.330830, 42.247952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304413, 27.383795, 42.179504>,  <41.677498, 27.472071, 42.065426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304413, 27.383795, 42.179504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340364, -0.277452, 0.898428,
		-0.119147, 0.935048, 0.333899,
		-0.932715, -0.220692, 0.285199,
		41.024597, 27.317587, 42.265064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611839, 27.799980, 42.705429>,  <41.677498, 27.472071, 42.065426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611839, 27.799980, 42.705429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317486, 27.530222, 42.729641>,  <41.140873, 27.368368, 42.744167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317486, 27.530222, 42.729641>,  <41.611839, 27.799980, 42.705429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317486, 27.530222, 42.729641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279518, -0.221138, 0.934327,
		-0.616718, 0.704479, 0.351238,
		-0.735886, -0.674394, 0.060534,
		41.096722, 27.327904, 42.747803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320103, 27.889158, 43.397213>,  <41.611839, 27.799980, 42.705429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320103, 27.889158, 43.397213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245884, 27.516726, 43.271572>,  <41.201351, 27.293266, 43.196186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245884, 27.516726, 43.271572>,  <41.320103, 27.889158, 43.397213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245884, 27.516726, 43.271572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388093, -0.363103, 0.847077,
		-0.902749, 0.035274, 0.428720,
		-0.185549, -0.931081, -0.314102,
		41.190220, 27.237402, 43.177341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230686, 27.606058, 44.114101>,  <41.320103, 27.889158, 43.397213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230686, 27.606058, 44.114101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264988, 27.291342, 43.869606>,  <41.285568, 27.102512, 43.722908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264988, 27.291342, 43.869606>,  <41.230686, 27.606058, 44.114101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264988, 27.291342, 43.869606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257298, -0.575196, 0.776496,
		-0.962520, -0.223856, 0.153115,
		0.085753, -0.786789, -0.611236,
		41.290714, 27.055305, 43.686234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799183, 26.986073, 44.446411>,  <41.230686, 27.606058, 44.114101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799183, 26.986073, 44.446411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074306, 26.850828, 44.189476>,  <41.239380, 26.769682, 44.035316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074306, 26.850828, 44.189476>,  <40.799183, 26.986073, 44.446411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074306, 26.850828, 44.189476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285003, -0.688049, 0.667354,
		-0.667599, -0.642082, -0.376886,
		0.687812, -0.338111, -0.642336,
		41.280651, 26.749395, 43.996777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685932, 26.208847, 44.318077>,  <40.799183, 26.986073, 44.446411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685932, 26.208847, 44.318077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063259, 26.302111, 44.223595>,  <41.289654, 26.358068, 44.166904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063259, 26.302111, 44.223595>,  <40.685932, 26.208847, 44.318077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063259, 26.302111, 44.223595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331527, -0.695698, 0.637255,
		-0.015747, -0.679441, -0.733561,
		0.943314, 0.233161, -0.236208,
		41.346252, 26.372059, 44.152733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065022, 25.499052, 44.230503>,  <40.685932, 26.208847, 44.318077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065022, 25.499052, 44.230503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365223, 25.757984, 44.283737>,  <41.545341, 25.913343, 44.315678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365223, 25.757984, 44.283737>,  <41.065022, 25.499052, 44.230503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365223, 25.757984, 44.283737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378053, -0.585701, 0.716959,
		0.542057, -0.487766, -0.684294,
		0.750500, 0.647332, 0.133081,
		41.590374, 25.952185, 44.323662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695271, 25.140373, 44.231251>,  <41.065022, 25.499052, 44.230503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695271, 25.140373, 44.231251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773418, 25.475105, 44.435814>,  <41.820309, 25.675945, 44.558552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773418, 25.475105, 44.435814>,  <41.695271, 25.140373, 44.231251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773418, 25.475105, 44.435814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350693, -0.546594, 0.760427,
		0.915884, 0.030782, -0.400261,
		0.195373, 0.836832, 0.511412,
		41.832031, 25.726154, 44.589237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489017, 25.136257, 44.493614>,  <41.695271, 25.140373, 44.231251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489017, 25.136257, 44.493614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292458, 25.408415, 44.711086>,  <42.174522, 25.571709, 44.841568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292458, 25.408415, 44.711086>,  <42.489017, 25.136257, 44.493614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292458, 25.408415, 44.711086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307353, -0.448611, 0.839216,
		0.814898, 0.579494, 0.011328,
		-0.491403, 0.680393, 0.543681,
		42.145039, 25.612534, 44.874191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959316, 25.336384, 45.041817>,  <42.489017, 25.136257, 44.493614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959316, 25.336384, 45.041817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604782, 25.455004, 45.184067>,  <42.392063, 25.526175, 45.269417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604782, 25.455004, 45.184067>,  <42.959316, 25.336384, 45.041817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604782, 25.455004, 45.184067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238736, -0.365412, 0.899711,
		0.396758, 0.882345, 0.253081,
		-0.886334, 0.296548, 0.355628,
		42.338882, 25.543968, 45.290756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025581, 25.851923, 45.617699>,  <42.959316, 25.336384, 45.041817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.025581, 25.851923, 45.617699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678349, 25.658072, 45.660728>,  <42.470009, 25.541759, 45.686546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678349, 25.658072, 45.660728>,  <43.025581, 25.851923, 45.617699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678349, 25.658072, 45.660728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266048, -0.271225, 0.925016,
		-0.419114, 0.831607, 0.364380,
		-0.868079, -0.484630, 0.107573,
		42.417923, 25.512682, 45.693001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770729, 26.017643, 46.248074>,  <43.025581, 25.851923, 45.617699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770729, 26.017643, 46.248074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534084, 25.702980, 46.177456>,  <42.392097, 25.514181, 46.135086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534084, 25.702980, 46.177456>,  <42.770729, 26.017643, 46.248074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534084, 25.702980, 46.177456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352561, -0.449364, 0.820837,
		-0.725052, 0.423369, 0.543192,
		-0.591608, -0.786658, -0.176548,
		42.356602, 25.466982, 46.124493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386471, 25.933558, 46.788185>,  <42.770729, 26.017643, 46.248074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386471, 25.933558, 46.788185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404041, 25.585451, 46.591938>,  <42.414585, 25.376587, 46.474190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404041, 25.585451, 46.591938>,  <42.386471, 25.933558, 46.788185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404041, 25.585451, 46.591938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231080, -0.468927, 0.852472,
		-0.971943, -0.150819, 0.180502,
		0.043927, -0.870265, -0.490622,
		42.417221, 25.324371, 46.444752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885880, 26.531528, 46.948845>,  <42.386471, 25.933558, 46.788185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885880, 26.531528, 46.948845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836784, 26.780293, 47.258209>,  <41.807327, 26.929550, 47.443829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836784, 26.780293, 47.258209>,  <41.885880, 26.531528, 46.948845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836784, 26.780293, 47.258209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690370, 0.506347, -0.516722,
		-0.712968, -0.597362, 0.367198,
		-0.122741, 0.621909, 0.773411,
		41.799961, 26.966866, 47.490231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146797, 26.520937, 47.053864>,  <41.885880, 26.531528, 46.948845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146797, 26.520937, 47.053864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317627, 26.849583, 47.204891>,  <41.420124, 27.046770, 47.295509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317627, 26.849583, 47.204891>,  <41.146797, 26.520937, 47.053864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317627, 26.849583, 47.204891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567378, 0.568631, -0.595602,
		-0.704053, 0.040141, 0.709013,
		0.427074, 0.821613, 0.377571,
		41.445747, 27.096067, 47.318161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586784, 26.963604, 47.165321>,  <41.146797, 26.520937, 47.053864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586784, 26.963604, 47.165321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907146, 27.202427, 47.147129>,  <41.099365, 27.345720, 47.136211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907146, 27.202427, 47.147129>,  <40.586784, 26.963604, 47.165321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907146, 27.202427, 47.147129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544207, 0.694120, -0.471207,
		-0.249764, 0.402148, 0.880849,
		0.800910, 0.597055, -0.045485,
		41.147419, 27.381544, 47.133484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407051, 27.660868, 47.454639>,  <40.586784, 26.963604, 47.165321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407051, 27.660868, 47.454639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706680, 27.705235, 47.193382>,  <40.886456, 27.731855, 47.036629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706680, 27.705235, 47.193382>,  <40.407051, 27.660868, 47.454639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706680, 27.705235, 47.193382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558005, 0.637062, -0.531772,
		0.357107, 0.762790, 0.539097,
		0.749069, 0.110919, -0.653140,
		40.931400, 27.738510, 46.997440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299152, 28.309210, 47.178009>,  <40.407051, 27.660868, 47.454639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299152, 28.309210, 47.178009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580463, 28.154919, 46.939140>,  <40.749252, 28.062344, 46.795818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580463, 28.154919, 46.939140>,  <40.299152, 28.309210, 47.178009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580463, 28.154919, 46.939140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206987, 0.692507, -0.691079,
		0.680112, 0.609628, 0.407187,
		0.703281, -0.385728, -0.597167,
		40.791447, 28.039200, 46.759991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549152, 28.983463, 46.817505>,  <40.299152, 28.309210, 47.178009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549152, 28.983463, 46.817505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640450, 28.655106, 46.608109>,  <40.695229, 28.458092, 46.482471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640450, 28.655106, 46.608109>,  <40.549152, 28.983463, 46.817505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640450, 28.655106, 46.608109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502506, 0.361202, -0.785507,
		0.833902, 0.442344, -0.330061,
		0.228245, -0.820893, -0.523488,
		40.708923, 28.408838, 46.451061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974625, 29.240211, 46.288807>,  <40.549152, 28.983463, 46.817505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974625, 29.240211, 46.288807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791420, 28.895117, 46.203106>,  <40.681496, 28.688061, 46.151684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791420, 28.895117, 46.203106>,  <40.974625, 29.240211, 46.288807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791420, 28.895117, 46.203106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458096, 0.435626, -0.774841,
		0.761820, -0.256738, -0.594740,
		-0.458015, -0.862737, -0.214258,
		40.654015, 28.636295, 46.138828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066330, 29.211061, 45.636013>,  <40.974625, 29.240211, 46.288807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066330, 29.211061, 45.636013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.785858, 28.929298, 45.680126>,  <40.617577, 28.760241, 45.706593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.785858, 28.929298, 45.680126>,  <41.066330, 29.211061, 45.636013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785858, 28.929298, 45.680126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329832, 0.183332, -0.926067,
		0.632111, -0.685710, -0.360884,
		-0.701175, -0.704408, 0.110283,
		40.575504, 28.717976, 45.713211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993572, 28.983316, 45.040524>,  <41.066330, 29.211061, 45.636013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993572, 28.983316, 45.040524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657887, 28.846249, 45.209423>,  <40.456474, 28.764008, 45.310764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657887, 28.846249, 45.209423>,  <40.993572, 28.983316, 45.040524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657887, 28.846249, 45.209423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497857, 0.171784, -0.850076,
		0.218761, -0.923616, -0.314765,
		-0.839215, -0.342672, 0.422249,
		40.406120, 28.743448, 45.336098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644211, 28.400488, 44.571342>,  <40.993572, 28.983316, 45.040524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644211, 28.400488, 44.571342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371643, 28.590382, 44.794163>,  <40.208103, 28.704317, 44.927853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371643, 28.590382, 44.794163>,  <40.644211, 28.400488, 44.571342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371643, 28.590382, 44.794163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599098, 0.075403, -0.797117,
		-0.420422, -0.876893, 0.233031,
		-0.681415, 0.474734, 0.557046,
		40.167217, 28.732801, 44.961277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016140, 28.297754, 44.269459>,  <40.644211, 28.400488, 44.571342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016140, 28.297754, 44.269459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902901, 28.589657, 44.518394>,  <39.834957, 28.764799, 44.667755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902901, 28.589657, 44.518394>,  <40.016140, 28.297754, 44.269459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902901, 28.589657, 44.518394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780737, 0.201536, -0.591467,
		-0.557052, -0.653328, 0.512695,
		-0.283095, 0.729757, 0.622343,
		39.817970, 28.808584, 44.705097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298595, 28.294617, 44.402195>,  <40.016140, 28.297754, 44.269459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298595, 28.294617, 44.402195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428902, 28.668262, 44.460587>,  <39.507084, 28.892450, 44.495621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428902, 28.668262, 44.460587>,  <39.298595, 28.294617, 44.402195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428902, 28.668262, 44.460587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737319, 0.347652, -0.579222,
		-0.591809, 0.081056, 0.801992,
		0.325764, 0.934113, 0.145979,
		39.526630, 28.948496, 44.504379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661968, 28.686848, 44.409054>,  <39.298595, 28.294617, 44.402195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661968, 28.686848, 44.409054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956879, 28.950556, 44.350018>,  <39.133827, 29.108780, 44.314598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956879, 28.950556, 44.350018>,  <38.661968, 28.686848, 44.409054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956879, 28.950556, 44.350018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546373, 0.453373, -0.704222,
		-0.397360, 0.599847, 0.694470,
		0.737280, 0.659270, -0.147588,
		39.178062, 29.148336, 44.305740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349075, 29.322580, 44.493473>,  <38.661968, 28.686848, 44.409054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349075, 29.322580, 44.493473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688164, 29.380041, 44.289227>,  <38.891617, 29.414518, 44.166679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688164, 29.380041, 44.289227>,  <38.349075, 29.322580, 44.493473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688164, 29.380041, 44.289227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503020, 0.523219, -0.687905,
		0.168347, 0.840003, 0.515804,
		0.847720, 0.143653, -0.510621,
		38.942478, 29.423138, 44.136040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351173, 29.954170, 44.143574>,  <38.349075, 29.322580, 44.493473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351173, 29.954170, 44.143574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616875, 29.794785, 43.890594>,  <38.776295, 29.699152, 43.738808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616875, 29.794785, 43.890594>,  <38.351173, 29.954170, 44.143574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616875, 29.794785, 43.890594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383488, 0.544591, -0.745894,
		0.641637, 0.738001, 0.208941,
		0.664258, -0.398466, -0.632445,
		38.816151, 29.675245, 43.700863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710526, 30.576670, 43.779301>,  <38.351173, 29.954170, 44.143574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710526, 30.576670, 43.779301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753288, 30.237890, 43.570976>,  <38.778946, 30.034622, 43.445980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753288, 30.237890, 43.570976>,  <38.710526, 30.576670, 43.779301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753288, 30.237890, 43.570976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238867, 0.486595, -0.840337,
		0.965149, 0.214242, -0.150289,
		0.106906, -0.846950, -0.520813,
		38.785358, 29.983805, 43.414734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276222, 30.710768, 43.200562>,  <38.710526, 30.576670, 43.779301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276222, 30.710768, 43.200562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035263, 30.405499, 43.107029>,  <38.890686, 30.222336, 43.050907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035263, 30.405499, 43.107029>,  <39.276222, 30.710768, 43.200562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035263, 30.405499, 43.107029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188217, 0.420510, -0.887550,
		0.775686, -0.490648, -0.396957,
		-0.602400, -0.763175, -0.233836,
		38.854542, 30.176546, 43.036877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369892, 30.670179, 42.596581>,  <39.276222, 30.710768, 43.200562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369892, 30.670179, 42.596581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042442, 30.440903, 42.611008>,  <38.845970, 30.303337, 42.619663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042442, 30.440903, 42.611008>,  <39.369892, 30.670179, 42.596581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042442, 30.440903, 42.611008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287646, 0.354843, -0.889576,
		0.497101, -0.738605, -0.455360,
		-0.818627, -0.573193, 0.036064,
		38.796856, 30.268946, 42.621826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404366, 30.269770, 41.985123>,  <39.369892, 30.670179, 42.596581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404366, 30.269770, 41.985123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024071, 30.264479, 42.109005>,  <38.795895, 30.261305, 42.183334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024071, 30.264479, 42.109005>,  <39.404366, 30.269770, 41.985123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024071, 30.264479, 42.109005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289307, 0.396644, -0.871192,
		-0.111320, -0.917877, -0.380932,
		-0.950742, -0.013225, 0.309703,
		38.738850, 30.260511, 42.201916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067852, 29.812925, 41.560802>,  <39.404366, 30.269770, 41.985123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067852, 29.812925, 41.560802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803741, 30.075762, 41.706280>,  <38.645275, 30.233463, 41.793564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803741, 30.075762, 41.706280>,  <39.067852, 29.812925, 41.560802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803741, 30.075762, 41.706280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232479, 0.281649, -0.930928,
		-0.714138, -0.699217, -0.033205,
		-0.660273, 0.657092, 0.363690,
		38.605659, 30.272890, 41.815388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580280, 29.792955, 41.049042>,  <39.067852, 29.812925, 41.560802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580280, 29.792955, 41.049042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469299, 30.119579, 41.251526>,  <38.402710, 30.315554, 41.373016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469299, 30.119579, 41.251526>,  <38.580280, 29.792955, 41.049042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469299, 30.119579, 41.251526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408555, 0.376603, -0.831416,
		-0.869543, -0.437491, 0.229123,
		-0.277448, 0.816561, 0.506212,
		38.386066, 30.364548, 41.403389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068882, 29.927650, 40.811306>,  <38.580280, 29.792955, 41.049042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068882, 29.927650, 40.811306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133415, 30.289349, 40.969448>,  <38.172134, 30.506369, 41.064335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133415, 30.289349, 40.969448>,  <38.068882, 29.927650, 40.811306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133415, 30.289349, 40.969448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312324, 0.426799, -0.848703,
		-0.936176, 0.013445, 0.351276,
		0.161335, 0.904247, 0.395360,
		38.181816, 30.560623, 41.088055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529961, 30.480284, 40.451420>,  <38.068882, 29.927650, 40.811306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529961, 30.480284, 40.451420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850208, 30.656658, 40.613693>,  <38.042358, 30.762484, 40.711056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850208, 30.656658, 40.613693>,  <37.529961, 30.480284, 40.451420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850208, 30.656658, 40.613693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044890, 0.631029, -0.774460,
		-0.597484, 0.638261, 0.485423,
		0.800623, 0.440937, 0.405681,
		38.090397, 30.788939, 40.735397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405804, 31.217319, 40.378479>,  <37.529961, 30.480284, 40.451420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405804, 31.217319, 40.378479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800476, 31.200907, 40.441437>,  <38.037281, 31.191059, 40.479210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800476, 31.200907, 40.441437>,  <37.405804, 31.217319, 40.378479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800476, 31.200907, 40.441437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146997, 0.639142, -0.754910,
		-0.069620, 0.767993, 0.636663,
		0.986684, -0.041031, 0.157390,
		38.096481, 31.188597, 40.488655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592697, 31.865520, 40.229332>,  <37.405804, 31.217319, 40.378479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592697, 31.865520, 40.229332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949131, 31.684134, 40.222042>,  <38.162991, 31.575302, 40.217670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949131, 31.684134, 40.222042>,  <37.592697, 31.865520, 40.229332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949131, 31.684134, 40.222042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246401, 0.517130, -0.819673,
		0.381118, 0.725909, 0.572542,
		0.891087, -0.453467, -0.018223,
		38.216457, 31.548094, 40.216576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051102, 32.386559, 40.224403>,  <37.592697, 31.865520, 40.229332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051102, 32.386559, 40.224403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262470, 32.078552, 40.081383>,  <38.389290, 31.893747, 39.995571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262470, 32.078552, 40.081383>,  <38.051102, 32.386559, 40.224403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262470, 32.078552, 40.081383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428018, 0.605341, -0.671090,
		0.733193, 0.201579, 0.649457,
		0.528421, -0.770018, -0.357552,
		38.420998, 31.847548, 39.974117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836712, 32.559284, 40.131699>,  <38.051102, 32.386559, 40.224403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836712, 32.559284, 40.131699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750347, 32.271618, 39.867523>,  <38.698528, 32.099018, 39.709019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750347, 32.271618, 39.867523>,  <38.836712, 32.559284, 40.131699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750347, 32.271618, 39.867523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442753, 0.530747, -0.722687,
		0.870260, -0.448447, 0.203820,
		-0.215910, -0.719168, -0.660440,
		38.685574, 32.055866, 39.669392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418705, 32.369358, 39.796833>,  <38.836712, 32.559284, 40.131699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418705, 32.369358, 39.796833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130417, 32.282391, 39.533531>,  <38.957443, 32.230209, 39.375549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130417, 32.282391, 39.533531>,  <39.418705, 32.369358, 39.796833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130417, 32.282391, 39.533531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552589, 0.393165, -0.734892,
		0.418580, -0.893393, -0.163219,
		-0.720719, -0.217418, -0.658250,
		38.914200, 32.217163, 39.336056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774826, 31.846191, 39.251637>,  <39.418705, 32.369358, 39.796833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774826, 31.846191, 39.251637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456863, 32.018200, 39.080429>,  <39.266087, 32.121407, 38.977703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456863, 32.018200, 39.080429>,  <39.774826, 31.846191, 39.251637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456863, 32.018200, 39.080429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544810, 0.195418, -0.815472,
		-0.267030, -0.881414, -0.389620,
		-0.794907, 0.430024, -0.428021,
		39.218391, 32.147205, 38.952023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896660, 31.600004, 38.576965>,  <39.774826, 31.846191, 39.251637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896660, 31.600004, 38.576965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619297, 31.881006, 38.512878>,  <39.452877, 32.049606, 38.474426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619297, 31.881006, 38.512878>,  <39.896660, 31.600004, 38.576965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619297, 31.881006, 38.512878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456206, 0.255918, -0.852281,
		-0.557728, -0.664073, -0.497943,
		-0.693409, 0.702505, -0.160221,
		39.411274, 32.091759, 38.464813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578835, 31.470898, 37.903641>,  <39.896660, 31.600004, 38.576965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578835, 31.470898, 37.903641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538071, 31.851408, 38.020046>,  <39.513615, 32.079716, 38.089890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538071, 31.851408, 38.020046>,  <39.578835, 31.470898, 37.903641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538071, 31.851408, 38.020046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537533, 0.298811, -0.788524,
		-0.837062, 0.076074, -0.541793,
		-0.101907, 0.951275, 0.291016,
		39.507500, 32.136791, 38.107349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400162, 31.985437, 37.250290>,  <39.578835, 31.470898, 37.903641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400162, 31.985437, 37.250290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527508, 32.239643, 37.531647>,  <39.603916, 32.392166, 37.700462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527508, 32.239643, 37.531647>,  <39.400162, 31.985437, 37.250290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527508, 32.239643, 37.531647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650110, 0.393660, -0.649914,
		-0.689929, 0.664193, -0.287829,
		0.318362, 0.635515, 0.703396,
		39.623016, 32.430298, 37.742664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417366, 32.672989, 36.904816>,  <39.400162, 31.985437, 37.250290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417366, 32.672989, 36.904816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653099, 32.711693, 37.225647>,  <39.794537, 32.734917, 37.418144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653099, 32.711693, 37.225647>,  <39.417366, 32.672989, 36.904816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653099, 32.711693, 37.225647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589783, 0.626974, -0.508979,
		-0.552131, 0.773008, 0.312426,
		0.589328, 0.096760, 0.802079,
		39.829899, 32.740723, 37.466270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586594, 33.486668, 36.938717>,  <39.417366, 32.672989, 36.904816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586594, 33.486668, 36.938717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847588, 33.294643, 37.173256>,  <40.004185, 33.179428, 37.313980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847588, 33.294643, 37.173256>,  <39.586594, 33.486668, 36.938717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847588, 33.294643, 37.173256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733959, 0.592912, -0.331300,
		-0.188610, 0.646525, 0.739210,
		0.652480, -0.480063, 0.586352,
		40.043331, 33.150623, 37.349163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892971, 33.962387, 37.328571>,  <39.586594, 33.486668, 36.938717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892971, 33.962387, 37.328571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167168, 33.671200, 37.323376>,  <40.331684, 33.496487, 37.320259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167168, 33.671200, 37.323376>,  <39.892971, 33.962387, 37.328571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167168, 33.671200, 37.323376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713127, 0.674896, -0.189646,
		0.146820, 0.120740, 0.981767,
		0.685488, -0.727968, -0.012986,
		40.372814, 33.452808, 37.319481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465088, 34.208191, 37.710888>,  <39.892971, 33.962387, 37.328571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465088, 34.208191, 37.710888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609032, 33.928314, 37.464008>,  <40.695396, 33.760387, 37.315880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609032, 33.928314, 37.464008>,  <40.465088, 34.208191, 37.710888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609032, 33.928314, 37.464008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797854, 0.573702, -0.185191,
		0.483663, -0.425789, 0.764705,
		0.359860, -0.699693, -0.617195,
		40.716991, 33.718407, 37.278851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135117, 34.100536, 37.883068>,  <40.465088, 34.208191, 37.710888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135117, 34.100536, 37.883068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141987, 33.916836, 37.527813>,  <41.146107, 33.806614, 37.314659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141987, 33.916836, 37.527813>,  <41.135117, 34.100536, 37.883068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141987, 33.916836, 37.527813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815959, 0.519804, -0.253010,
		0.577854, -0.720341, 0.383658,
		0.017173, -0.459252, -0.888140,
		41.147141, 33.779060, 37.261372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752781, 34.198238, 37.758770>,  <41.135117, 34.100536, 37.883068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752781, 34.198238, 37.758770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613605, 34.078201, 37.403492>,  <41.530102, 34.006180, 37.190327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613605, 34.078201, 37.403492>,  <41.752781, 34.198238, 37.758770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613605, 34.078201, 37.403492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672868, 0.579769, -0.459474,
		0.652831, -0.757504, 0.000202,
		-0.347937, -0.300095, -0.888191,
		41.509224, 33.988174, 37.137035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372959, 33.904461, 37.330166>,  <41.752781, 34.198238, 37.758770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372959, 33.904461, 37.330166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075336, 34.021572, 37.089943>,  <41.896763, 34.091839, 36.945808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075336, 34.021572, 37.089943>,  <42.372959, 33.904461, 37.330166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075336, 34.021572, 37.089943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665520, 0.404010, -0.627582,
		0.058886, -0.866635, -0.495456,
		-0.744054, 0.292780, -0.600553,
		41.852119, 34.109406, 36.909779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799980, 33.885361, 36.782043>,  <42.372959, 33.904461, 37.330166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.799980, 33.885361, 36.782043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448898, 34.045013, 36.675957>,  <42.238251, 34.140804, 36.612305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448898, 34.045013, 36.675957>,  <42.799980, 33.885361, 36.782043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448898, 34.045013, 36.675957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439566, 0.450140, -0.777274,
		-0.190848, -0.798793, -0.570531,
		-0.877701, 0.399127, -0.265214,
		42.185589, 34.164753, 36.596394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721748, 33.722980, 36.108047>,  <42.799980, 33.885361, 36.782043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721748, 33.722980, 36.108047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529331, 34.063202, 36.193047>,  <42.413879, 34.267334, 36.244045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529331, 34.063202, 36.193047>,  <42.721748, 33.722980, 36.108047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529331, 34.063202, 36.193047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648613, 0.508355, -0.566460,
		-0.589830, -0.134661, -0.796221,
		-0.481043, 0.850554, 0.212500,
		42.385017, 34.318367, 36.256798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614044, 34.048981, 35.480064>,  <42.721748, 33.722980, 36.108047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614044, 34.048981, 35.480064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639603, 34.289574, 35.798595>,  <42.654938, 34.433929, 35.989716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639603, 34.289574, 35.798595>,  <42.614044, 34.048981, 35.480064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639603, 34.289574, 35.798595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741700, 0.505252, -0.441135,
		-0.667681, 0.618822, -0.413837,
		0.063892, 0.601481, 0.796328,
		42.658772, 34.470016, 36.037495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585690, 34.855278, 35.312916>,  <42.614044, 34.048981, 35.480064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585690, 34.855278, 35.312916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807003, 34.687878, 35.601009>,  <42.939793, 34.587437, 35.773865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807003, 34.687878, 35.601009>,  <42.585690, 34.855278, 35.312916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807003, 34.687878, 35.601009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826770, 0.381372, -0.413529,
		-0.101613, 0.824264, 0.557012,
		0.553287, -0.418501, 0.720229,
		42.972988, 34.562328, 35.817078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999165, 35.520493, 35.476162>,  <42.585690, 34.855278, 35.312916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999165, 35.520493, 35.476162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.162094, 35.170044, 35.579311>,  <43.259850, 34.959774, 35.641201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.162094, 35.170044, 35.579311>,  <42.999165, 35.520493, 35.476162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.162094, 35.170044, 35.579311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894424, 0.325586, -0.306595,
		0.184654, 0.355532, 0.916242,
		0.407320, -0.876123, 0.257875,
		43.284290, 34.907207, 35.656673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400715, 35.828083, 35.987904>,  <42.999165, 35.520493, 35.476162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400715, 35.828083, 35.987904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.579247, 36.185974, 35.994274>,  <42.686367, 36.400707, 35.998096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.579247, 36.185974, 35.994274>,  <42.400715, 35.828083, 35.987904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579247, 36.185974, 35.994274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481636, 0.255184, -0.838396,
		-0.754199, 0.366531, 0.544829,
		0.446329, 0.894727, 0.015925,
		42.713146, 36.454391, 35.999050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869534, 36.397526, 35.727543>,  <42.400715, 35.828083, 35.987904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869534, 36.397526, 35.727543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260212, 36.448101, 35.658169>,  <42.494617, 36.478447, 35.616547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260212, 36.448101, 35.658169>,  <41.869534, 36.397526, 35.727543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260212, 36.448101, 35.658169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211402, 0.427160, -0.879115,
		-0.037069, 0.895292, 0.443935,
		0.976696, 0.126437, -0.173432,
		42.553223, 36.486031, 35.606140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193737, 37.088932, 35.719864>,  <41.869534, 36.397526, 35.727543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193737, 37.088932, 35.719864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408646, 36.865433, 35.467152>,  <42.537590, 36.731335, 35.315525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408646, 36.865433, 35.467152>,  <42.193737, 37.088932, 35.719864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408646, 36.865433, 35.467152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257597, 0.604571, -0.753750,
		0.803110, 0.567711, 0.180886,
		0.537270, -0.558748, -0.631777,
		42.569828, 36.697807, 35.277618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133720, 37.542461, 35.127197>,  <42.193737, 37.088932, 35.719864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133720, 37.542461, 35.127197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374462, 37.272072, 34.957104>,  <42.518909, 37.109837, 34.855045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374462, 37.272072, 34.957104>,  <42.133720, 37.542461, 35.127197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374462, 37.272072, 34.957104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227980, 0.364885, -0.902709,
		0.765370, 0.640249, 0.065500,
		0.601859, -0.675974, -0.425236,
		42.555019, 37.069279, 34.829533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424164, 37.844498, 34.505932>,  <42.133720, 37.542461, 35.127197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424164, 37.844498, 34.505932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439445, 37.449387, 34.445477>,  <42.448616, 37.212322, 34.409203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439445, 37.449387, 34.445477>,  <42.424164, 37.844498, 34.505932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439445, 37.449387, 34.445477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382881, 0.125236, -0.915269,
		0.923007, 0.092834, -0.373416,
		0.038203, -0.987774, -0.151138,
		42.450905, 37.153053, 34.400135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790382, 37.838299, 33.839493>,  <42.424164, 37.844498, 34.505932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790382, 37.838299, 33.839493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590904, 37.496273, 33.896286>,  <42.471218, 37.291058, 33.930363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590904, 37.496273, 33.896286>,  <42.790382, 37.838299, 33.839493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590904, 37.496273, 33.896286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522593, 0.165921, -0.836282,
		0.691520, -0.491251, -0.529597,
		-0.498696, -0.855069, 0.141986,
		42.441296, 37.239754, 33.938881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879364, 37.454632, 33.274166>,  <42.790382, 37.838299, 33.839493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879364, 37.454632, 33.274166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538761, 37.322315, 33.436905>,  <42.334400, 37.242928, 33.534546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538761, 37.322315, 33.436905>,  <42.879364, 37.454632, 33.274166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538761, 37.322315, 33.436905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428357, -0.008653, -0.903568,
		0.302410, -0.943665, -0.134328,
		-0.851503, -0.330788, 0.406843,
		42.283310, 37.223080, 33.558956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774563, 36.929401, 32.864441>,  <42.879364, 37.454632, 33.274166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774563, 36.929401, 32.864441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425426, 36.987949, 33.050655>,  <42.215942, 37.023079, 33.162384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425426, 36.987949, 33.050655>,  <42.774563, 36.929401, 32.864441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425426, 36.987949, 33.050655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482776, -0.119762, -0.867516,
		-0.071224, -0.981954, 0.175197,
		-0.872843, 0.146369, 0.465533,
		42.163574, 37.031860, 33.190315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205822, 36.461742, 32.472794>,  <42.774563, 36.929401, 32.864441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205822, 36.461742, 32.472794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976307, 36.704391, 32.692894>,  <41.838596, 36.849979, 32.824955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976307, 36.704391, 32.692894>,  <42.205822, 36.461742, 32.472794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976307, 36.704391, 32.692894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621284, 0.115364, -0.775047,
		-0.533638, -0.786577, 0.310689,
		-0.573792, 0.606620, 0.550250,
		41.804169, 36.886379, 32.857967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501244, 36.221298, 32.389820>,  <42.205822, 36.461742, 32.472794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501244, 36.221298, 32.389820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481556, 36.600403, 32.515881>,  <41.469746, 36.827866, 32.591518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481556, 36.600403, 32.515881>,  <41.501244, 36.221298, 32.389820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481556, 36.600403, 32.515881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365022, 0.276639, -0.888949,
		-0.929697, -0.158787, 0.332340,
		-0.049215, 0.947765, 0.315151,
		41.466793, 36.884731, 32.610424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846638, 36.464321, 32.291641>,  <41.501244, 36.221298, 32.389820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846638, 36.464321, 32.291641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072216, 36.794331, 32.277153>,  <41.207561, 36.992336, 32.268459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072216, 36.794331, 32.277153>,  <40.846638, 36.464321, 32.291641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072216, 36.794331, 32.277153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401868, 0.235846, -0.884805,
		-0.721438, 0.513536, 0.464552,
		0.563941, 0.825020, -0.036225,
		41.241398, 37.041836, 32.266285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378578, 37.074024, 32.164677>,  <40.846638, 36.464321, 32.291641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378578, 37.074024, 32.164677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753201, 37.173931, 32.066311>,  <40.977974, 37.233875, 32.007290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753201, 37.173931, 32.066311>,  <40.378578, 37.074024, 32.164677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753201, 37.173931, 32.066311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322534, 0.339423, -0.883608,
		-0.137228, 0.906867, 0.398448,
		0.936558, 0.249768, -0.245917,
		41.034168, 37.248863, 31.992537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303459, 37.672413, 31.777575>,  <40.378578, 37.074024, 32.164677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303459, 37.672413, 31.777575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682072, 37.599133, 31.671350>,  <40.909237, 37.555164, 31.607616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682072, 37.599133, 31.671350>,  <40.303459, 37.672413, 31.777575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682072, 37.599133, 31.671350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165995, 0.429272, -0.887790,
		0.276646, 0.884399, 0.375906,
		0.946527, -0.183205, -0.265562,
		40.966030, 37.544170, 31.591682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557785, 38.268524, 31.356079>,  <40.303459, 37.672413, 31.777575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557785, 38.268524, 31.356079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795963, 37.962135, 31.259138>,  <40.938869, 37.778301, 31.200974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795963, 37.962135, 31.259138>,  <40.557785, 38.268524, 31.356079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795963, 37.962135, 31.259138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268372, 0.094690, -0.958650,
		0.757248, 0.635862, -0.149183,
		0.595443, -0.765972, -0.242351,
		40.974598, 37.732342, 31.186432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898087, 38.542442, 30.704525>,  <40.557785, 38.268524, 31.356079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898087, 38.542442, 30.704525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974277, 38.149769, 30.705994>,  <41.019993, 37.914165, 30.706875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974277, 38.149769, 30.705994>,  <40.898087, 38.542442, 30.704525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974277, 38.149769, 30.705994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209638, -0.044330, -0.976774,
		0.959046, 0.185284, -0.214242,
		0.190478, -0.981685, 0.003672,
		41.031422, 37.855263, 30.707096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421131, 38.414574, 30.210011>,  <40.898087, 38.542442, 30.704525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421131, 38.414574, 30.210011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205956, 38.082912, 30.270834>,  <41.076851, 37.883915, 30.307327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205956, 38.082912, 30.270834>,  <41.421131, 38.414574, 30.210011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205956, 38.082912, 30.270834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224019, -0.033286, -0.974016,
		0.812675, -0.558022, -0.167841,
		-0.537936, -0.829158, 0.152059,
		41.044575, 37.834164, 30.316452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657948, 37.948177, 29.737749>,  <41.421131, 38.414574, 30.210011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657948, 37.948177, 29.737749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286266, 37.841679, 29.840265>,  <41.063255, 37.777779, 29.901775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286266, 37.841679, 29.840265>,  <41.657948, 37.948177, 29.737749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286266, 37.841679, 29.840265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237443, -0.101296, -0.966106,
		0.283188, -0.958566, 0.030905,
		-0.929207, -0.266251, 0.256291,
		41.007504, 37.761803, 29.917152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513660, 37.376785, 29.243105>,  <41.657948, 37.948177, 29.737749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513660, 37.376785, 29.243105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173164, 37.511639, 29.403969>,  <40.968868, 37.592552, 29.500486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173164, 37.511639, 29.403969>,  <41.513660, 37.376785, 29.243105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173164, 37.511639, 29.403969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410346, 0.050085, -0.910553,
		-0.327121, -0.940123, 0.095708,
		-0.851239, 0.337134, 0.402160,
		40.917793, 37.612778, 29.524616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942535, 36.977882, 28.935148>,  <41.513660, 37.376785, 29.243105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942535, 36.977882, 28.935148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789894, 37.324848, 29.062876>,  <40.698307, 37.533028, 29.139513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789894, 37.324848, 29.062876>,  <40.942535, 36.977882, 28.935148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789894, 37.324848, 29.062876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471586, 0.114410, -0.874366,
		-0.794974, -0.484249, 0.365403,
		-0.381606, 0.867418, 0.319318,
		40.675411, 37.585072, 29.158670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304871, 37.087196, 28.631083>,  <40.942535, 36.977882, 28.935148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304871, 37.087196, 28.631083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388538, 37.460728, 28.747168>,  <40.438740, 37.684845, 28.816818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388538, 37.460728, 28.747168>,  <40.304871, 37.087196, 28.631083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388538, 37.460728, 28.747168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398740, 0.352430, -0.846640,
		-0.892892, 0.061369, 0.446070,
		0.209166, 0.933824, 0.290211,
		40.451286, 37.740875, 28.834230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852467, 37.490471, 28.240013>,  <40.304871, 37.087196, 28.631083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852467, 37.490471, 28.240013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108105, 37.768185, 28.372385>,  <40.261490, 37.934814, 28.451809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108105, 37.768185, 28.372385>,  <39.852467, 37.490471, 28.240013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108105, 37.768185, 28.372385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079402, 0.487530, -0.869488,
		-0.765014, 0.529413, 0.366708,
		0.639100, 0.694288, 0.330931,
		40.299835, 37.976471, 28.471664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527779, 38.161049, 28.143457>,  <39.852467, 37.490471, 28.240013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527779, 38.161049, 28.143457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925476, 38.202637, 28.133041>,  <40.164093, 38.227589, 28.126791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925476, 38.202637, 28.133041>,  <39.527779, 38.161049, 28.143457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925476, 38.202637, 28.133041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071247, 0.459600, -0.885264,
		-0.080071, 0.882019, 0.464360,
		0.994240, 0.103969, -0.026041,
		40.223747, 38.233826, 28.125229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593464, 38.782990, 27.830713>,  <39.527779, 38.161049, 28.143457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593464, 38.782990, 27.830713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976799, 38.672340, 27.802235>,  <40.206799, 38.605953, 27.785149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976799, 38.672340, 27.802235>,  <39.593464, 38.782990, 27.830713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976799, 38.672340, 27.802235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039941, 0.376580, -0.925523,
		0.282829, 0.884120, 0.371940,
		0.958338, -0.276621, -0.071195,
		40.264301, 38.589355, 27.780876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890499, 39.159687, 27.191715>,  <39.593464, 38.782990, 27.830713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890499, 39.159687, 27.191715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156479, 38.882858, 27.304054>,  <40.316067, 38.716759, 27.371458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156479, 38.882858, 27.304054>,  <39.890499, 39.159687, 27.191715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156479, 38.882858, 27.304054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355070, -0.037894, -0.934071,
		0.657089, 0.720832, 0.220537,
		0.664951, -0.692073, 0.280845,
		40.355965, 38.675236, 27.388308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646927, 39.320705, 26.940279>,  <39.890499, 39.159687, 27.191715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646927, 39.320705, 26.940279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602959, 38.924484, 26.973051>,  <40.576576, 38.686752, 26.992714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602959, 38.924484, 26.973051>,  <40.646927, 39.320705, 26.940279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602959, 38.924484, 26.973051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305962, -0.112148, -0.945415,
		0.945676, -0.078858, 0.315401,
		-0.109925, -0.990558, 0.081928,
		40.569981, 38.627316, 26.997629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165913, 38.583439, 27.048412>,  <40.646927, 39.320705, 26.940279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165913, 38.583439, 27.048412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510551, 38.781944, 27.005772>,  <41.717335, 38.901047, 26.980186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510551, 38.781944, 27.005772>,  <41.165913, 38.583439, 27.048412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510551, 38.781944, 27.005772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420759, -0.815756, -0.396867,
		-0.283913, 0.297086, -0.911665,
		0.861600, 0.496267, -0.106602,
		41.769032, 38.930824, 26.973791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472389, 38.227665, 26.541380>,  <41.165913, 38.583439, 27.048412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472389, 38.227665, 26.541380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.807701, 38.433998, 26.612047>,  <42.008888, 38.557796, 26.654448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.807701, 38.433998, 26.612047>,  <41.472389, 38.227665, 26.541380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807701, 38.433998, 26.612047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538405, -0.731938, -0.417596,
		-0.086097, 0.445181, -0.891292,
		0.838276, 0.515830, 0.176670,
		42.059185, 38.588749, 26.665049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923820, 38.402748, 25.892921>,  <41.472389, 38.227665, 26.541380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923820, 38.402748, 25.892921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102581, 38.355011, 26.247557>,  <42.209839, 38.326370, 26.460337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102581, 38.355011, 26.247557>,  <41.923820, 38.402748, 25.892921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102581, 38.355011, 26.247557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376000, -0.874213, -0.307207,
		0.811729, 0.470648, -0.345814,
		0.446901, -0.119343, 0.886587,
		42.236652, 38.319210, 26.513533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.648911, 38.382362, 25.829662>,  <41.923820, 38.402748, 25.892921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.648911, 38.382362, 25.829662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515507, 38.170166, 26.141392>,  <42.435463, 38.042847, 26.328430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515507, 38.170166, 26.141392>,  <42.648911, 38.382362, 25.829662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515507, 38.170166, 26.141392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292564, -0.844080, -0.449371,
		0.896202, 0.078134, 0.436712,
		-0.333509, -0.530494, 0.779326,
		42.415455, 38.011017, 26.375189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.101135, 37.884518, 26.000177>,  <42.648911, 38.382362, 25.829662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.101135, 37.884518, 26.000177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741360, 37.759365, 26.122231>,  <42.525494, 37.684273, 26.195461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741360, 37.759365, 26.122231>,  <43.101135, 37.884518, 26.000177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741360, 37.759365, 26.122231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176177, -0.898520, -0.402025,
		0.399954, -0.307841, 0.863291,
		-0.899444, -0.312884, 0.305132,
		42.471527, 37.665501, 26.213770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814480, 37.964386, 25.246580>,  <43.101135, 37.884518, 26.000177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814480, 37.964386, 25.246580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149212, 38.063072, 25.442068>,  <43.350052, 38.122284, 25.559361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149212, 38.063072, 25.442068>,  <42.814480, 37.964386, 25.246580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149212, 38.063072, 25.442068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119254, 0.953411, -0.277102,
		-0.534318, 0.173605, 0.827264,
		0.836829, 0.246715, 0.488722,
		43.400261, 38.137085, 25.588684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443722, 37.544334, 25.373623>,  <42.814480, 37.964386, 25.246580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443722, 37.544334, 25.373623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403580, 37.213036, 25.594141>,  <43.379494, 37.014256, 25.726452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403580, 37.213036, 25.594141>,  <43.443722, 37.544334, 25.373623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.403580, 37.213036, 25.594141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358823, -0.546935, -0.756378,
		0.927995, 0.121908, 0.352086,
		-0.100359, -0.828251, 0.551297,
		43.373470, 36.964561, 25.759529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074455, 37.166309, 25.340727>,  <43.443722, 37.544334, 25.373623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074455, 37.166309, 25.340727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191887, 37.504124, 25.519865>,  <44.262348, 37.706814, 25.627348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191887, 37.504124, 25.519865>,  <44.074455, 37.166309, 25.340727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191887, 37.504124, 25.519865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052240, -0.481966, 0.874632,
		0.954506, -0.233380, -0.185615,
		0.293581, 0.844537, 0.447847,
		44.279961, 37.757484, 25.654219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.723419, 37.067551, 25.633703>,  <44.074455, 37.166309, 25.340727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.723419, 37.067551, 25.633703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.455944, 37.296566, 25.823462>,  <44.295460, 37.433975, 25.937317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.455944, 37.296566, 25.823462>,  <44.723419, 37.067551, 25.633703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455944, 37.296566, 25.823462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079222, -0.579528, 0.811092,
		0.739309, 0.579952, 0.342166,
		-0.668690, 0.572541, 0.474395,
		44.255337, 37.468327, 25.965780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.915478, 37.321579, 26.353949>,  <44.723419, 37.067551, 25.633703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.915478, 37.321579, 26.353949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515854, 37.317879, 26.370871>,  <44.276077, 37.315659, 26.381023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515854, 37.317879, 26.370871>,  <44.915478, 37.321579, 26.353949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.515854, 37.317879, 26.370871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043266, -0.253920, 0.966257,
		0.001799, 0.967181, 0.254082,
		-0.999062, -0.009255, 0.042303,
		44.216137, 37.315102, 26.383562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625538, 37.684341, 26.914791>,  <44.915478, 37.321579, 26.353949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625538, 37.684341, 26.914791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.322403, 37.441814, 26.818403>,  <44.140522, 37.296299, 26.760571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.322403, 37.441814, 26.818403>,  <44.625538, 37.684341, 26.914791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.322403, 37.441814, 26.818403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121174, -0.232108, 0.965113,
		-0.641094, 0.760596, 0.102430,
		-0.757836, -0.606316, -0.240967,
		44.095051, 37.259918, 26.746113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064209, 37.863991, 27.318630>,  <44.625538, 37.684341, 26.914791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064209, 37.863991, 27.318630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993820, 37.485207, 27.211075>,  <43.951588, 37.257935, 27.146542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993820, 37.485207, 27.211075>,  <44.064209, 37.863991, 27.318630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993820, 37.485207, 27.211075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035691, -0.279106, 0.959597,
		-0.983748, 0.159263, 0.082912,
		-0.175969, -0.946961, -0.268886,
		43.941029, 37.201118, 27.130409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.516743, 37.667263, 27.752684>,  <44.064209, 37.863991, 27.318630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.516743, 37.667263, 27.752684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656364, 37.314518, 27.625893>,  <43.740139, 37.102871, 27.549818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656364, 37.314518, 27.625893>,  <43.516743, 37.667263, 27.752684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656364, 37.314518, 27.625893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001869, -0.337598, 0.941289,
		-0.937100, -0.329154, -0.116192,
		0.349055, -0.881865, -0.316978,
		43.761082, 37.049957, 27.530800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.124161, 37.069344, 28.079168>,  <43.516743, 37.667263, 27.752684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.124161, 37.069344, 28.079168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.459393, 36.882389, 27.966616>,  <43.660530, 36.770218, 27.899084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.459393, 36.882389, 27.966616>,  <43.124161, 37.069344, 28.079168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.459393, 36.882389, 27.966616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018736, -0.490816, 0.871062,
		-0.545229, -0.735289, -0.402585,
		0.838078, -0.467386, -0.281383,
		43.710815, 36.742176, 27.882202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049412, 36.282345, 28.152227>,  <43.124161, 37.069344, 28.079168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.049412, 36.282345, 28.152227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443302, 36.351597, 28.144819>,  <43.679634, 36.393150, 28.140373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443302, 36.351597, 28.144819>,  <43.049412, 36.282345, 28.152227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443302, 36.351597, 28.144819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115734, -0.571332, 0.812518,
		0.130092, -0.802250, -0.582642,
		0.984724, 0.173133, -0.018522,
		43.738720, 36.403538, 28.139263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420712, 35.715157, 28.338995>,  <43.049412, 36.282345, 28.152227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420712, 35.715157, 28.338995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685802, 36.003719, 28.419359>,  <43.844856, 36.176857, 28.467577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685802, 36.003719, 28.419359>,  <43.420712, 35.715157, 28.338995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685802, 36.003719, 28.419359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139980, -0.382897, 0.913124,
		0.735659, -0.577031, -0.354739,
		0.662730, 0.721405, 0.200910,
		43.884621, 36.220142, 28.479631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.836510, 35.412266, 28.824228>,  <43.420712, 35.715157, 28.338995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.836510, 35.412266, 28.824228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979156, 35.784992, 28.851189>,  <44.064747, 36.008629, 28.867365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979156, 35.784992, 28.851189>,  <43.836510, 35.412266, 28.824228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979156, 35.784992, 28.851189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318372, -0.189040, 0.928926,
		0.878328, -0.309815, -0.364080,
		0.356621, 0.931815, 0.067403,
		44.086143, 36.064537, 28.871410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.521061, 35.385242, 29.110567>,  <43.836510, 35.412266, 28.824228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.521061, 35.385242, 29.110567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409767, 35.764225, 29.173697>,  <44.342991, 35.991615, 29.211575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409767, 35.764225, 29.173697>,  <44.521061, 35.385242, 29.110567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409767, 35.764225, 29.173697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393353, -0.037507, 0.918622,
		0.876277, 0.317670, -0.362250,
		-0.278231, 0.947459, 0.157823,
		44.326298, 36.048462, 29.221043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.131222, 35.728279, 29.375154>,  <44.521061, 35.385242, 29.110567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.131222, 35.728279, 29.375154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.813087, 35.941383, 29.490810>,  <44.622208, 36.069244, 29.560204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.813087, 35.941383, 29.490810>,  <45.131222, 35.728279, 29.375154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.813087, 35.941383, 29.490810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357920, 0.027786, 0.933339,
		0.489210, 0.845811, -0.212785,
		-0.795340, 0.532759, 0.289140,
		44.574486, 36.101212, 29.577553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.412231, 36.256107, 29.778873>,  <45.131222, 35.728279, 29.375154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.412231, 36.256107, 29.778873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.024559, 36.207077, 29.864355>,  <44.791958, 36.177658, 29.915644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.024559, 36.207077, 29.864355>,  <45.412231, 36.256107, 29.778873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.024559, 36.207077, 29.864355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229819, -0.137302, 0.963500,
		-0.088756, 0.982916, 0.161239,
		-0.969178, -0.122572, 0.213706,
		44.733807, 36.170307, 29.928467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.172482, 36.690899, 30.392227>,  <45.412231, 36.256107, 29.778873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.172482, 36.690899, 30.392227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885868, 36.412163, 30.379568>,  <44.713902, 36.244923, 30.371973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885868, 36.412163, 30.379568>,  <45.172482, 36.690899, 30.392227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885868, 36.412163, 30.379568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048574, 0.004583, 0.998809,
		-0.695862, 0.717215, -0.037132,
		-0.716531, -0.696837, -0.031649,
		44.670910, 36.203110, 30.370073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583866, 36.960052, 30.888117>,  <45.172482, 36.690899, 30.392227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583866, 36.960052, 30.888117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.518925, 36.568909, 30.835300>,  <44.479961, 36.334225, 30.803610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.518925, 36.568909, 30.835300>,  <44.583866, 36.960052, 30.888117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.518925, 36.568909, 30.835300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182569, -0.101737, 0.977915,
		-0.969696, 0.182876, -0.162009,
		-0.162355, -0.977858, -0.132042,
		44.470219, 36.275551, 30.795689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085732, 36.834312, 31.514545>,  <44.583866, 36.960052, 30.888117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085732, 36.834312, 31.514545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182091, 36.469646, 31.381374>,  <44.239906, 36.250847, 31.301472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182091, 36.469646, 31.381374>,  <44.085732, 36.834312, 31.514545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182091, 36.469646, 31.381374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272503, -0.392763, 0.878339,
		-0.931510, -0.120865, -0.343046,
		0.240896, -0.911662, -0.332927,
		44.254360, 36.196148, 31.281496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594372, 36.470783, 31.753078>,  <44.085732, 36.834312, 31.514545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.594372, 36.470783, 31.753078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.918076, 36.247734, 31.679153>,  <44.112297, 36.113903, 31.634798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.918076, 36.247734, 31.679153>,  <43.594372, 36.470783, 31.753078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918076, 36.247734, 31.679153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005995, -0.306744, 0.951773,
		-0.587425, -0.771337, -0.244892,
		0.809257, -0.557627, -0.184813,
		44.160854, 36.080444, 31.623709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.471638, 35.875977, 31.999020>,  <43.594372, 36.470783, 31.753078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.471638, 35.875977, 31.999020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.870945, 35.895454, 31.985788>,  <44.110527, 35.907139, 31.977850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.870945, 35.895454, 31.985788>,  <43.471638, 35.875977, 31.999020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.870945, 35.895454, 31.985788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048630, -0.365483, 0.929547,
		0.033173, -0.929543, -0.367218,
		0.998266, 0.048694, -0.033079,
		44.170425, 35.910061, 31.975864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665379, 35.395405, 32.508850>,  <43.471638, 35.875977, 31.999020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665379, 35.395405, 32.508850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020901, 35.560402, 32.428982>,  <44.234215, 35.659401, 32.381062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020901, 35.560402, 32.428982>,  <43.665379, 35.395405, 32.508850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020901, 35.560402, 32.428982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376741, -0.409599, 0.830840,
		0.260932, -0.813681, -0.519458,
		0.888809, 0.412494, -0.199670,
		44.287544, 35.684151, 32.369080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.249352, 34.869629, 32.564171>,  <43.665379, 35.395405, 32.508850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.249352, 34.869629, 32.564171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374008, 35.239616, 32.651169>,  <44.448803, 35.461609, 32.703369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374008, 35.239616, 32.651169>,  <44.249352, 34.869629, 32.564171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374008, 35.239616, 32.651169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293181, -0.311332, 0.903945,
		0.903837, -0.217945, -0.368209,
		0.311646, 0.924971, 0.217496,
		44.467503, 35.517109, 32.716419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.812077, 34.743431, 32.987652>,  <44.249352, 34.869629, 32.564171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.812077, 34.743431, 32.987652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796253, 35.137081, 33.056850>,  <44.786758, 35.373272, 33.098370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796253, 35.137081, 33.056850>,  <44.812077, 34.743431, 32.987652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.796253, 35.137081, 33.056850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296549, -0.153774, 0.942556,
		0.954198, 0.088586, -0.285760,
		-0.039555, 0.984127, 0.173001,
		44.784386, 35.432320, 33.108749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.493198, 34.970242, 33.257133>,  <44.812077, 34.743431, 32.987652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.493198, 34.970242, 33.257133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.213940, 35.222610, 33.392498>,  <45.046383, 35.374031, 33.473717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.213940, 35.222610, 33.392498>,  <45.493198, 34.970242, 33.257133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.213940, 35.222610, 33.392498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220077, -0.260664, 0.940011,
		0.681286, 0.730745, 0.043131,
		-0.698151, 0.630924, 0.338407,
		45.004494, 35.411888, 33.494019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.808399, 35.270130, 33.854973>,  <45.493198, 34.970242, 33.257133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.808399, 35.270130, 33.854973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.429546, 35.392860, 33.892479>,  <45.202232, 35.466499, 33.914982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.429546, 35.392860, 33.892479>,  <45.808399, 35.270130, 33.854973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.429546, 35.392860, 33.892479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037024, -0.185774, 0.981895,
		0.318692, 0.933458, 0.164593,
		-0.947135, 0.306828, 0.093765,
		45.145405, 35.484909, 33.920609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.165524, 35.596493, 34.333977>,  <45.808399, 35.270130, 33.854973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.165524, 35.596493, 34.333977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.953758, 35.393181, 34.605675>,  <45.826698, 35.271194, 34.768692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.953758, 35.393181, 34.605675>,  <46.165524, 35.596493, 34.333977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.953758, 35.393181, 34.605675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452726, -0.507847, -0.732892,
		0.717465, -0.695516, 0.038751,
		-0.529417, -0.508281, 0.679241,
		45.794933, 35.240696, 34.809448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.774128, 35.404877, 34.774487>,  <46.165524, 35.596493, 34.333977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.774128, 35.404877, 34.774487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.692703, 35.700871, 34.518055>,  <46.643848, 35.878468, 34.364197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.692703, 35.700871, 34.518055>,  <46.774128, 35.404877, 34.774487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.692703, 35.700871, 34.518055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672910, 0.581366, 0.457388,
		0.711164, -0.338285, -0.616286,
		-0.203560, 0.739984, -0.641083,
		46.631634, 35.922867, 34.325729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.129623, 34.969456, 35.185966>,  <46.774128, 35.404877, 34.774487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.129623, 34.969456, 35.185966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.441708, 35.148552, 35.011246>,  <47.628960, 35.256008, 34.906414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.441708, 35.148552, 35.011246>,  <47.129623, 34.969456, 35.185966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.441708, 35.148552, 35.011246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345546, 0.273584, 0.897636,
		0.521411, -0.851282, 0.058738,
		0.780210, 0.447741, -0.436806,
		47.675770, 35.282875, 34.880203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.864338, 34.631287, 35.415230>,  <47.129623, 34.969456, 35.185966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.864338, 34.631287, 35.415230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.906940, 35.013813, 35.306328>,  <47.932503, 35.243328, 35.240986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.906940, 35.013813, 35.306328>,  <47.864338, 34.631287, 35.415230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.906940, 35.013813, 35.306328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480551, 0.190202, 0.856092,
		0.870476, -0.222007, -0.439301,
		0.106503, 0.956314, -0.272252,
		47.938892, 35.300709, 35.224651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.115135, 33.140701, 44.885197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.744305, 32.990768, 44.883003>,  <36.521805, 32.900806, 44.881687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.744305, 32.990768, 44.883003>,  <37.115135, 33.140701, 44.885197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744305, 32.990768, 44.883003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045676, 0.127469, -0.990790,
		0.372084, -0.918286, -0.135295,
		-0.927075, -0.374837, -0.005486,
		36.466183, 32.878319, 44.881359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004429, 32.679115, 44.323101>,  <37.115135, 33.140701, 44.885197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004429, 32.679115, 44.323101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.615604, 32.755474, 44.377735>,  <36.382309, 32.801289, 44.410515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.615604, 32.755474, 44.377735>,  <37.004429, 32.679115, 44.323101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615604, 32.755474, 44.377735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087694, 0.244398, -0.965702,
		-0.217728, -0.950699, -0.220829,
		-0.972062, 0.190894, 0.136583,
		36.323986, 32.812744, 44.418709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675030, 32.433430, 43.776848>,  <37.004429, 32.679115, 44.323101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675030, 32.433430, 43.776848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.406116, 32.696720, 43.912365>,  <36.244770, 32.854694, 43.993675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.406116, 32.696720, 43.912365>,  <36.675030, 32.433430, 43.776848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406116, 32.696720, 43.912365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225296, 0.254025, -0.940592,
		-0.705183, -0.708669, -0.022480,
		-0.672278, 0.658225, 0.338795,
		36.204433, 32.894188, 44.014004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086102, 32.224644, 43.509933>,  <36.675030, 32.433430, 43.776848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086102, 32.224644, 43.509933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040977, 32.608826, 43.611763>,  <36.013905, 32.839333, 43.672859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040977, 32.608826, 43.611763>,  <36.086102, 32.224644, 43.509933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040977, 32.608826, 43.611763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322741, 0.206895, -0.923598,
		-0.939741, -0.186352, 0.286637,
		-0.112811, 0.960452, 0.254571,
		36.007133, 32.896961, 43.688133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439144, 32.476509, 43.260098>,  <36.086102, 32.224644, 43.509933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439144, 32.476509, 43.260098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.663555, 32.803143, 43.314404>,  <35.798203, 32.999123, 43.346985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.663555, 32.803143, 43.314404>,  <35.439144, 32.476509, 43.260098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663555, 32.803143, 43.314404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105827, 0.233411, -0.966602,
		-0.821002, 0.527927, 0.217368,
		0.561031, 0.816586, 0.135762,
		35.831863, 33.048119, 43.355133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128441, 32.931370, 42.877789>,  <35.439144, 32.476509, 43.260098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128441, 32.931370, 42.877789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.490440, 33.092972, 42.931087>,  <35.707642, 33.189934, 42.963066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.490440, 33.092972, 42.931087>,  <35.128441, 32.931370, 42.877789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490440, 33.092972, 42.931087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050569, 0.413165, -0.909251,
		-0.422394, 0.816135, 0.394345,
		0.905000, 0.404004, 0.133248,
		35.761940, 33.214172, 42.971062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047138, 33.583679, 42.641888>,  <35.128441, 32.931370, 42.877789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047138, 33.583679, 42.641888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.439682, 33.506908, 42.638004>,  <35.675209, 33.460846, 42.635674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.439682, 33.506908, 42.638004>,  <35.047138, 33.583679, 42.641888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439682, 33.506908, 42.638004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080357, 0.455730, -0.886484,
		0.174563, 0.869181, 0.462658,
		0.981362, -0.191925, -0.009708,
		35.734089, 33.449329, 42.635090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366577, 34.265102, 42.422234>,  <35.047138, 33.583679, 42.641888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366577, 34.265102, 42.422234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.672352, 34.019375, 42.344002>,  <35.855816, 33.871937, 42.297062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.672352, 34.019375, 42.344002>,  <35.366577, 34.265102, 42.422234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672352, 34.019375, 42.344002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125570, 0.439427, -0.889458,
		0.632356, 0.655372, 0.413053,
		0.764433, -0.614322, -0.195579,
		35.901680, 33.835079, 42.285328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983109, 34.718113, 42.232357>,  <35.366577, 34.265102, 42.422234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983109, 34.718113, 42.232357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.009235, 34.351910, 42.073570>,  <36.024914, 34.132187, 41.978298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.009235, 34.351910, 42.073570>,  <35.983109, 34.718113, 42.232357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009235, 34.351910, 42.073570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334387, 0.394897, -0.855711,
		0.940169, -0.076845, 0.331928,
		0.065321, -0.915506, -0.396966,
		36.028831, 34.077259, 41.954479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649845, 34.717430, 41.747829>,  <35.983109, 34.718113, 42.232357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649845, 34.717430, 41.747829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461861, 34.369122, 41.690010>,  <36.349068, 34.160137, 41.655319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461861, 34.369122, 41.690010>,  <36.649845, 34.717430, 41.747829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461861, 34.369122, 41.690010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117355, 0.100666, -0.987975,
		0.874849, -0.481276, 0.054879,
		-0.469964, -0.870770, -0.144548,
		36.320869, 34.107891, 41.646645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131111, 34.437561, 41.296257>,  <36.649845, 34.717430, 41.747829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131111, 34.437561, 41.296257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.776688, 34.260960, 41.239719>,  <36.564034, 34.154999, 41.205795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.776688, 34.260960, 41.239719>,  <37.131111, 34.437561, 41.296257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776688, 34.260960, 41.239719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073950, 0.166384, -0.983284,
		0.457646, -0.881695, -0.114775,
		-0.886054, -0.441509, -0.141346,
		36.510872, 34.128506, 41.197315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232357, 33.838749, 40.918343>,  <37.131111, 34.437561, 41.296257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232357, 33.838749, 40.918343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.853916, 33.946480, 40.846397>,  <36.626850, 34.011120, 40.803230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.853916, 33.946480, 40.846397>,  <37.232357, 33.838749, 40.918343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853916, 33.946480, 40.846397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253932, 0.272173, -0.928138,
		-0.201021, -0.923788, -0.325895,
		-0.946102, 0.269330, -0.179867,
		36.570084, 34.027279, 40.792439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985035, 33.463814, 40.246658>,  <37.232357, 33.838749, 40.918343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985035, 33.463814, 40.246658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.734131, 33.769096, 40.308708>,  <36.583588, 33.952267, 40.345936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.734131, 33.769096, 40.308708>,  <36.985035, 33.463814, 40.246658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734131, 33.769096, 40.308708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091109, 0.269718, -0.958620,
		-0.773464, -0.587169, -0.238717,
		-0.627258, 0.763207, 0.155121,
		36.545952, 33.998058, 40.355244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899025, 33.676884, 39.514759>,  <36.985035, 33.463814, 40.246658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899025, 33.676884, 39.514759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718380, 33.973385, 39.713390>,  <36.609993, 34.151283, 39.832569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718380, 33.973385, 39.713390>,  <36.899025, 33.676884, 39.514759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718380, 33.973385, 39.713390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070106, 0.525368, -0.847982,
		-0.889454, -0.417775, -0.185298,
		-0.451616, 0.741251, 0.496579,
		36.582893, 34.195759, 39.862366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186337, 33.809761, 39.143272>,  <36.899025, 33.676884, 39.514759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186337, 33.809761, 39.143272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.359333, 34.119308, 39.328346>,  <36.463131, 34.305038, 39.439388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.359333, 34.119308, 39.328346>,  <36.186337, 33.809761, 39.143272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359333, 34.119308, 39.328346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014602, 0.507077, -0.861777,
		-0.901519, 0.379468, 0.208007,
		0.432493, 0.773871, 0.462681,
		36.489082, 34.351471, 39.467152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763226, 34.455914, 39.123501>,  <36.186337, 33.809761, 39.143272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763226, 34.455914, 39.123501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.128658, 34.595409, 39.207172>,  <36.347916, 34.679108, 39.257374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.128658, 34.595409, 39.207172>,  <35.763226, 34.455914, 39.123501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128658, 34.595409, 39.207172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013899, 0.540859, -0.840999,
		-0.406424, 0.765411, 0.498964,
		0.913579, 0.348737, 0.209180,
		36.402733, 34.700031, 39.269928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779953, 35.129986, 38.831959>,  <35.763226, 34.455914, 39.123501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779953, 35.129986, 38.831959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.169109, 35.064556, 38.897358>,  <36.402603, 35.025299, 38.936600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.169109, 35.064556, 38.897358>,  <35.779953, 35.129986, 38.831959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169109, 35.064556, 38.897358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230679, 0.635565, -0.736780,
		0.016604, 0.754521, 0.656066,
		0.972888, -0.163574, 0.163500,
		36.460976, 35.015484, 38.946407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060360, 35.786774, 38.955612>,  <35.779953, 35.129986, 38.831959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060360, 35.786774, 38.955612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.352455, 35.553635, 38.813042>,  <36.527710, 35.413750, 38.727497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.352455, 35.553635, 38.813042>,  <36.060360, 35.786774, 38.955612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352455, 35.553635, 38.813042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171428, 0.661339, -0.730235,
		0.661339, 0.472141, 0.582850,
		0.730235, -0.582850, -0.356431,
		36.571526, 35.378780, 38.706112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433102, 36.241203, 38.603161>,  <36.060360, 35.786774, 38.955612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433102, 36.241203, 38.603161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.584648, 35.894035, 38.474674>,  <36.675575, 35.685734, 38.397583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.584648, 35.894035, 38.474674>,  <36.433102, 36.241203, 38.603161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584648, 35.894035, 38.474674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296893, 0.442733, -0.846074,
		0.876536, 0.225180, 0.425415,
		0.378865, -0.867918, -0.321217,
		36.698307, 35.633659, 38.378307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252949, 36.311478, 38.433697>,  <36.433102, 36.241203, 38.603161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252949, 36.311478, 38.433697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.084019, 36.009274, 38.233360>,  <36.982662, 35.827950, 38.113159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.084019, 36.009274, 38.233360>,  <37.252949, 36.311478, 38.433697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084019, 36.009274, 38.233360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102092, 0.509372, -0.854469,
		0.900677, -0.411996, -0.137988,
		-0.422325, -0.755513, -0.500841,
		36.957321, 35.782619, 38.083107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678608, 36.312202, 37.851696>,  <37.252949, 36.311478, 38.433697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678608, 36.312202, 37.851696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.370541, 36.084320, 37.736969>,  <37.185699, 35.947590, 37.668133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.370541, 36.084320, 37.736969>,  <37.678608, 36.312202, 37.851696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370541, 36.084320, 37.736969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016571, 0.467395, -0.883893,
		0.637621, -0.675997, -0.369415,
		-0.770172, -0.569710, -0.286819,
		37.139488, 35.913406, 37.650925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813427, 36.010914, 37.187325>,  <37.678608, 36.312202, 37.851696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813427, 36.010914, 37.187325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421143, 36.052513, 37.253525>,  <37.185772, 36.077473, 37.293243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421143, 36.052513, 37.253525>,  <37.813427, 36.010914, 37.187325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421143, 36.052513, 37.253525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104011, 0.439203, -0.892347,
		-0.165493, -0.892348, -0.419913,
		-0.980711, 0.104002, 0.165499,
		37.126930, 36.083714, 37.303173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114822, 35.661678, 36.496544>,  <37.813427, 36.010914, 37.187325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114822, 35.661678, 36.496544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.509476, 35.711704, 36.454742>,  <38.746265, 35.741718, 36.429661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.509476, 35.711704, 36.454742>,  <38.114822, 35.661678, 36.496544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509476, 35.711704, 36.454742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152338, -0.479752, 0.864078,
		0.057930, -0.868445, -0.492390,
		0.986629, 0.125066, -0.104505,
		38.805466, 35.749226, 36.423389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403896, 35.127972, 36.851109>,  <38.114822, 35.661678, 36.496544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403896, 35.127972, 36.851109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.741722, 35.335033, 36.796329>,  <38.944416, 35.459270, 36.763462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.741722, 35.335033, 36.796329>,  <38.403896, 35.127972, 36.851109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741722, 35.335033, 36.796329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410837, -0.462417, 0.785737,
		0.343409, -0.719867, -0.603209,
		0.844561, 0.517650, -0.136950,
		38.995090, 35.490330, 36.755245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050079, 34.664284, 36.863403>,  <38.403896, 35.127972, 36.851109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050079, 34.664284, 36.863403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.131947, 35.036697, 36.984261>,  <39.181068, 35.260143, 37.056774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.131947, 35.036697, 36.984261>,  <39.050079, 34.664284, 36.863403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131947, 35.036697, 36.984261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407450, -0.361703, 0.838544,
		0.889997, -0.048514, -0.453378,
		0.204669, 0.931031, 0.302148,
		39.193348, 35.316006, 37.074905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806564, 34.676788, 37.122406>,  <39.050079, 34.664284, 36.863403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806564, 34.676788, 37.122406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.597542, 34.975559, 37.286858>,  <39.472130, 35.154823, 37.385529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.597542, 34.975559, 37.286858>,  <39.806564, 34.676788, 37.122406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597542, 34.975559, 37.286858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320169, -0.275004, 0.906568,
		0.790206, 0.605364, -0.095439,
		-0.522557, 0.746932, 0.411128,
		39.440773, 35.199638, 37.410194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107048, 34.842045, 37.716797>,  <39.806564, 34.676788, 37.122406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107048, 34.842045, 37.716797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.803787, 35.087223, 37.805801>,  <39.621830, 35.234329, 37.859203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.803787, 35.087223, 37.805801>,  <40.107048, 34.842045, 37.716797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803787, 35.087223, 37.805801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070548, -0.262132, 0.962450,
		0.648253, 0.745379, 0.155493,
		-0.758149, 0.612942, 0.222513,
		39.576344, 35.271107, 37.872555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277927, 35.298534, 38.314201>,  <40.107048, 34.842045, 37.716797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277927, 35.298534, 38.314201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.881737, 35.247799, 38.292786>,  <39.644024, 35.217358, 38.279934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.881737, 35.247799, 38.292786>,  <40.277927, 35.298534, 38.314201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881737, 35.247799, 38.292786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021393, -0.242378, 0.969946,
		-0.136007, 0.961854, 0.237356,
		-0.990477, -0.126842, -0.053542,
		39.584595, 35.209747, 38.276722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980217, 35.712574, 38.935703>,  <40.277927, 35.298534, 38.314201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980217, 35.712574, 38.935703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.689968, 35.462429, 38.820892>,  <39.515820, 35.312340, 38.752007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.689968, 35.462429, 38.820892>,  <39.980217, 35.712574, 38.935703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689968, 35.462429, 38.820892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111505, -0.304757, 0.945881,
		-0.678994, 0.718361, 0.151408,
		-0.725626, -0.625365, -0.287029,
		39.472279, 35.274818, 38.734783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429703, 35.823772, 39.436295>,  <39.980217, 35.712574, 38.935703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429703, 35.823772, 39.436295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.342148, 35.464497, 39.283802>,  <39.289616, 35.248932, 39.192307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.342148, 35.464497, 39.283802>,  <39.429703, 35.823772, 39.436295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342148, 35.464497, 39.283802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081020, -0.406090, 0.910234,
		-0.972381, 0.168351, 0.161660,
		-0.218887, -0.898192, -0.381234,
		39.276482, 35.195038, 39.169434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816395, 35.559475, 39.819073>,  <39.429703, 35.823772, 39.436295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816395, 35.559475, 39.819073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.005924, 35.248718, 39.653214>,  <39.119644, 35.062263, 39.553699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.005924, 35.248718, 39.653214>,  <38.816395, 35.559475, 39.819073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005924, 35.248718, 39.653214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033860, -0.454436, 0.890136,
		-0.879967, -0.435810, -0.189018,
		0.473826, -0.776890, -0.414645,
		39.148071, 35.015652, 39.528820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403240, 34.889534, 39.993168>,  <38.816395, 35.559475, 39.819073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403240, 34.889534, 39.993168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.771297, 34.760139, 39.904911>,  <38.992134, 34.682503, 39.851955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.771297, 34.760139, 39.904911>,  <38.403240, 34.889534, 39.993168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771297, 34.760139, 39.904911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033344, -0.626159, 0.778982,
		-0.390149, -0.709421, -0.586945,
		0.920148, -0.323490, -0.220641,
		39.047340, 34.663094, 39.838718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358650, 34.196812, 40.041042>,  <38.403240, 34.889534, 39.993168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358650, 34.196812, 40.041042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.743755, 34.298889, 40.076729>,  <38.974819, 34.360134, 40.098141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.743755, 34.298889, 40.076729>,  <38.358650, 34.196812, 40.041042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743755, 34.298889, 40.076729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082208, -0.590769, 0.802642,
		0.257534, -0.765422, -0.589750,
		0.962766, 0.255190, 0.089220,
		39.032585, 34.375446, 40.103497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786060, 33.572945, 40.266094>,  <38.358650, 34.196812, 40.041042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786060, 33.572945, 40.266094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.037636, 33.867344, 40.366283>,  <39.188580, 34.043983, 40.426395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.037636, 33.867344, 40.366283>,  <38.786060, 33.572945, 40.266094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037636, 33.867344, 40.366283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154351, -0.433965, 0.887609,
		0.761978, -0.519592, -0.386541,
		0.628940, 0.736001, 0.250472,
		39.226318, 34.088146, 40.441425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506687, 33.334858, 40.378311>,  <38.786060, 33.572945, 40.266094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506687, 33.334858, 40.378311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.448917, 33.650520, 40.617100>,  <39.414257, 33.839920, 40.760372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.448917, 33.650520, 40.617100>,  <39.506687, 33.334858, 40.378311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448917, 33.650520, 40.617100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162171, -0.576259, 0.801015,
		0.976136, 0.212497, -0.044752,
		-0.144425, 0.789158, 0.596969,
		39.405590, 33.887268, 40.796192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770428, 33.127075, 40.980736>,  <39.506687, 33.334858, 40.378311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770428, 33.127075, 40.980736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.625927, 33.478493, 41.105740>,  <39.539227, 33.689342, 41.180740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.625927, 33.478493, 41.105740>,  <39.770428, 33.127075, 40.980736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625927, 33.478493, 41.105740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046285, -0.317833, 0.947016,
		0.931319, 0.356575, 0.074153,
		-0.361250, 0.878542, 0.312508,
		39.517551, 33.742054, 41.199493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183468, 33.259098, 41.538662>,  <39.770428, 33.127075, 40.980736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183468, 33.259098, 41.538662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.869026, 33.494686, 41.613663>,  <39.680363, 33.636040, 41.658661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.869026, 33.494686, 41.613663>,  <40.183468, 33.259098, 41.538662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869026, 33.494686, 41.613663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062860, -0.225595, 0.972191,
		0.614893, 0.776027, 0.140318,
		-0.786102, 0.588973, 0.187498,
		39.633194, 33.671379, 41.669910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230232, 33.550018, 42.279823>,  <40.183468, 33.259098, 41.538662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230232, 33.550018, 42.279823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.839912, 33.577888, 42.196922>,  <39.605721, 33.594612, 42.147182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.839912, 33.577888, 42.196922>,  <40.230232, 33.550018, 42.279823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839912, 33.577888, 42.196922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218594, -0.332220, 0.917522,
		-0.004924, 0.940624, 0.339413,
		-0.975803, 0.069676, -0.207251,
		39.547173, 33.598793, 42.134747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073673, 33.747498, 42.886456>,  <40.230232, 33.550018, 42.279823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073673, 33.747498, 42.886456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.726963, 33.639130, 42.718979>,  <39.518936, 33.574108, 42.618492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.726963, 33.639130, 42.718979>,  <40.073673, 33.747498, 42.886456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726963, 33.639130, 42.718979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332328, -0.312199, 0.889994,
		-0.371834, 0.910567, 0.180572,
		-0.866774, -0.270921, -0.418694,
		39.466930, 33.557854, 42.593372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447605, 34.011467, 43.280666>,  <40.073673, 33.747498, 42.886456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447605, 34.011467, 43.280666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.296535, 33.700222, 43.079906>,  <39.205894, 33.513477, 42.959450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.296535, 33.700222, 43.079906>,  <39.447605, 34.011467, 43.280666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296535, 33.700222, 43.079906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375720, -0.366636, 0.851124,
		-0.846283, 0.510025, -0.153881,
		-0.377677, -0.778108, -0.501904,
		39.183231, 33.466789, 42.929337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.780449, 33.973213, 43.632057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.832283, 33.625019, 43.442127>,  <38.863384, 33.416103, 43.328171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.832283, 33.625019, 43.442127>,  <38.780449, 33.973213, 43.632057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832283, 33.625019, 43.442127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260482, -0.491930, 0.830755,
		-0.956743, 0.016032, -0.290492,
		0.129584, -0.870487, -0.474827,
		38.871159, 33.363873, 43.299679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115303, 33.541122, 43.721897>,  <38.780449, 33.973213, 43.632057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115303, 33.541122, 43.721897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.414215, 33.283722, 43.655602>,  <38.593563, 33.129280, 43.615822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.414215, 33.283722, 43.655602>,  <38.115303, 33.541122, 43.721897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414215, 33.283722, 43.655602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264275, -0.516651, 0.814389,
		-0.609696, -0.564776, -0.556146,
		0.747281, -0.643506, -0.165744,
		38.638401, 33.090672, 43.605877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870197, 32.930817, 44.088482>,  <38.115303, 33.541122, 43.721897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870197, 32.930817, 44.088482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.240746, 32.812405, 43.995350>,  <38.463074, 32.741356, 43.939472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.240746, 32.812405, 43.995350>,  <37.870197, 32.930817, 44.088482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240746, 32.812405, 43.995350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037614, -0.687830, 0.724896,
		-0.374735, -0.662763, -0.648319,
		0.926368, -0.296030, -0.232825,
		38.518658, 32.723595, 43.925503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849297, 32.176983, 44.362164>,  <37.870197, 32.930817, 44.088482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849297, 32.176983, 44.362164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.226246, 32.310665, 44.355995>,  <38.452415, 32.390873, 44.352295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.226246, 32.310665, 44.355995>,  <37.849297, 32.176983, 44.362164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226246, 32.310665, 44.355995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201607, -0.530491, 0.823367,
		0.266994, -0.779029, -0.567299,
		0.942374, 0.334205, -0.015420,
		38.508957, 32.410927, 44.351368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339859, 31.590828, 44.529598>,  <37.849297, 32.176983, 44.362164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339859, 31.590828, 44.529598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.517639, 31.928825, 44.648560>,  <38.624306, 32.131622, 44.719936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.517639, 31.928825, 44.648560>,  <38.339859, 31.590828, 44.529598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517639, 31.928825, 44.648560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200730, -0.417496, 0.886230,
		0.873024, -0.334189, -0.355173,
		0.444452, 0.844994, 0.297402,
		38.650974, 32.182323, 44.737782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995541, 31.349030, 44.901257>,  <38.339859, 31.590828, 44.529598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995541, 31.349030, 44.901257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.932781, 31.734013, 44.989853>,  <38.895126, 31.965002, 45.043011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.932781, 31.734013, 44.989853>,  <38.995541, 31.349030, 44.901257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932781, 31.734013, 44.989853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164180, -0.195725, 0.966818,
		0.973872, 0.188058, -0.127307,
		-0.156900, 0.962458, 0.221486,
		38.885712, 32.022751, 45.056297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552109, 31.574743, 45.224194>,  <38.995541, 31.349030, 44.901257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552109, 31.574743, 45.224194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.267319, 31.831863, 45.337257>,  <39.096443, 31.986135, 45.405098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.267319, 31.831863, 45.337257>,  <39.552109, 31.574743, 45.224194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267319, 31.831863, 45.337257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312150, -0.070858, 0.947387,
		0.629008, 0.762751, -0.150201,
		-0.711977, 0.642799, 0.282663,
		39.053726, 32.024704, 45.422058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911541, 32.055508, 45.634750>,  <39.552109, 31.574743, 45.224194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911541, 32.055508, 45.634750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.522758, 32.058220, 45.728775>,  <39.289490, 32.059849, 45.785191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.522758, 32.058220, 45.728775>,  <39.911541, 32.055508, 45.634750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522758, 32.058220, 45.728775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234661, -0.037372, 0.971359,
		0.015374, 0.999278, 0.034733,
		-0.971956, 0.006783, 0.235066,
		39.231171, 32.060253, 45.799294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871086, 32.357254, 46.295338>,  <39.911541, 32.055508, 45.634750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871086, 32.357254, 46.295338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.492790, 32.227493, 46.302658>,  <39.265812, 32.149635, 46.307049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.492790, 32.227493, 46.302658>,  <39.871086, 32.357254, 46.295338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492790, 32.227493, 46.302658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126149, -0.314694, 0.940773,
		-0.299430, 0.892038, 0.338542,
		-0.945742, -0.324402, 0.018301,
		39.209068, 32.130173, 46.308147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520790, 32.660889, 46.857765>,  <39.871086, 32.357254, 46.295338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520790, 32.660889, 46.857765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.338348, 32.317562, 46.763725>,  <39.228886, 32.111568, 46.707302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.338348, 32.317562, 46.763725>,  <39.520790, 32.660889, 46.857765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338348, 32.317562, 46.763725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092695, -0.216919, 0.971779,
		-0.885087, 0.465022, 0.019376,
		-0.456101, -0.858313, -0.235098,
		39.201519, 32.060070, 46.693195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945091, 32.555538, 47.433979>,  <39.520790, 32.660889, 46.857765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945091, 32.555538, 47.433979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.012695, 32.211697, 47.241100>,  <39.053257, 32.005390, 47.125374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.012695, 32.211697, 47.241100>,  <38.945091, 32.555538, 47.433979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012695, 32.211697, 47.241100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082927, -0.499902, 0.862102,
		-0.982119, -0.105717, -0.155773,
		0.169010, -0.859606, -0.482196,
		39.063400, 31.953815, 47.096443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526554, 32.017227, 47.687756>,  <38.945091, 32.555538, 47.433979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526554, 32.017227, 47.687756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.841492, 31.816492, 47.544514>,  <39.030457, 31.696051, 47.458569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.841492, 31.816492, 47.544514>,  <38.526554, 32.017227, 47.687756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841492, 31.816492, 47.544514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133948, -0.427739, 0.893922,
		-0.601784, -0.751794, -0.269558,
		0.787346, -0.501841, -0.358108,
		39.077694, 31.665939, 47.437080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581242, 31.430386, 48.036148>,  <38.526554, 32.017227, 47.687756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581242, 31.430386, 48.036148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.941586, 31.406645, 47.864132>,  <39.157791, 31.392401, 47.760921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.941586, 31.406645, 47.864132>,  <38.581242, 31.430386, 48.036148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941586, 31.406645, 47.864132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345863, -0.500571, 0.793604,
		-0.262368, -0.863658, -0.430415,
		0.900856, -0.059352, -0.430041,
		39.211842, 31.388840, 47.735119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796112, 30.791807, 48.239624>,  <38.581242, 31.430386, 48.036148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796112, 30.791807, 48.239624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.131573, 30.968349, 48.111954>,  <39.332848, 31.074276, 48.035351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.131573, 30.968349, 48.111954>,  <38.796112, 30.791807, 48.239624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131573, 30.968349, 48.111954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538942, -0.587612, 0.603534,
		0.078822, -0.678170, -0.730666,
		0.838647, 0.441358, -0.319178,
		39.383167, 31.100758, 48.016201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193207, 30.277443, 48.149937>,  <38.796112, 30.791807, 48.239624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193207, 30.277443, 48.149937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.458065, 30.576012, 48.176514>,  <39.616982, 30.755152, 48.192459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.458065, 30.576012, 48.176514>,  <39.193207, 30.277443, 48.149937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458065, 30.576012, 48.176514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604101, -0.584151, 0.542060,
		0.443419, -0.318784, -0.837709,
		0.662149, 0.746421, 0.066446,
		39.656712, 30.799938, 48.196449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813278, 30.003138, 47.917809>,  <39.193207, 30.277443, 48.149937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813278, 30.003138, 47.917809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.931995, 30.317270, 48.135124>,  <40.003223, 30.505751, 48.265514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.931995, 30.317270, 48.135124>,  <39.813278, 30.003138, 47.917809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931995, 30.317270, 48.135124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609867, -0.593670, 0.524994,
		0.734832, 0.175522, -0.655144,
		0.296791, 0.785333, 0.543292,
		40.021034, 30.552870, 48.298111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582893, 30.020226, 47.956070>,  <39.813278, 30.003138, 47.917809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582893, 30.020226, 47.956070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.446613, 30.224676, 48.271709>,  <40.364845, 30.347347, 48.461094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.446613, 30.224676, 48.271709>,  <40.582893, 30.020226, 47.956070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446613, 30.224676, 48.271709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497256, -0.614346, 0.612629,
		0.797910, 0.601106, -0.044853,
		-0.340700, 0.511127, 0.789097,
		40.344402, 30.378014, 48.508438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135498, 29.992678, 48.350498>,  <40.582893, 30.020226, 47.956070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135498, 29.992678, 48.350498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.852432, 30.126398, 48.599483>,  <40.682594, 30.206631, 48.748875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.852432, 30.126398, 48.599483>,  <41.135498, 29.992678, 48.350498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852432, 30.126398, 48.599483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348628, -0.601064, 0.719153,
		0.614554, 0.725924, 0.308802,
		-0.707660, 0.334301, 0.622464,
		40.640133, 30.226688, 48.786224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545914, 30.076092, 48.960701>,  <41.135498, 29.992678, 48.350498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545914, 30.076092, 48.960701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.169144, 30.054436, 49.093277>,  <40.943081, 30.041441, 49.172821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.169144, 30.054436, 49.093277>,  <41.545914, 30.076092, 48.960701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169144, 30.054436, 49.093277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300222, -0.578019, 0.758789,
		0.150495, 0.814225, 0.560704,
		-0.941923, -0.054142, 0.331438,
		40.886566, 30.038193, 49.192707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604065, 30.207773, 49.683380>,  <41.545914, 30.076092, 48.960701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604065, 30.207773, 49.683380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.242317, 30.040009, 49.651852>,  <41.025269, 29.939350, 49.632935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.242317, 30.040009, 49.651852>,  <41.604065, 30.207773, 49.683380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242317, 30.040009, 49.651852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209501, -0.597240, 0.774218,
		-0.371792, 0.683664, 0.627992,
		-0.904367, -0.419413, -0.078821,
		40.971008, 29.914185, 49.628204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464100, 30.089497, 50.362720>,  <41.604065, 30.207773, 49.683380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464100, 30.089497, 50.362720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.229748, 29.835030, 50.161907>,  <41.089134, 29.682350, 50.041420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.229748, 29.835030, 50.161907>,  <41.464100, 30.089497, 50.362720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229748, 29.835030, 50.161907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148002, -0.693063, 0.705520,
		-0.796767, 0.339050, 0.500208,
		-0.585882, -0.636167, -0.502029,
		41.053982, 29.644180, 50.011299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980762, 29.687265, 50.821117>,  <41.464100, 30.089497, 50.362720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980762, 29.687265, 50.821117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.047726, 29.446913, 50.508472>,  <41.087902, 29.302702, 50.320885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.047726, 29.446913, 50.508472>,  <40.980762, 29.687265, 50.821117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047726, 29.446913, 50.508472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399526, -0.683438, 0.610976,
		-0.901307, -0.414555, 0.125656,
		0.167406, -0.600880, -0.781613,
		41.097946, 29.266649, 50.273987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634304, 29.099602, 50.849804>,  <40.980762, 29.687265, 50.821117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634304, 29.099602, 50.849804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.971577, 29.029991, 50.646328>,  <41.173939, 28.988226, 50.524242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.971577, 29.029991, 50.646328>,  <40.634304, 29.099602, 50.849804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971577, 29.029991, 50.646328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314849, -0.607115, 0.729576,
		-0.435798, -0.775324, -0.457114,
		0.843179, -0.174026, -0.508689,
		41.224529, 28.977783, 50.493721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292866, 28.477634, 50.559570>,  <40.634304, 29.099602, 50.849804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292866, 28.477634, 50.559570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.973640, 28.250330, 50.639748>,  <39.782104, 28.113947, 50.687855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.973640, 28.250330, 50.639748>,  <40.292866, 28.477634, 50.559570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973640, 28.250330, 50.639748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456318, 0.352700, -0.816931,
		0.393539, -0.743423, -0.540785,
		-0.798060, -0.568265, 0.200436,
		39.734222, 28.079851, 50.699879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957062, 28.263496, 49.934841>,  <40.292866, 28.477634, 50.559570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957062, 28.263496, 49.934841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.659454, 28.180235, 50.188805>,  <39.480892, 28.130278, 50.341183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.659454, 28.180235, 50.188805>,  <39.957062, 28.263496, 49.934841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659454, 28.180235, 50.188805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666460, 0.298984, -0.682964,
		-0.047668, -0.931280, -0.361173,
		-0.744015, -0.208152, 0.634913,
		39.436249, 28.117788, 50.379280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518333, 27.874121, 49.628090>,  <39.957062, 28.263496, 49.934841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518333, 27.874121, 49.628090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.282612, 28.032957, 49.909527>,  <39.141178, 28.128260, 50.078388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.282612, 28.032957, 49.909527>,  <39.518333, 27.874121, 49.628090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282612, 28.032957, 49.909527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640430, 0.301296, -0.706449,
		-0.492513, -0.866914, 0.076753,
		-0.589305, 0.397091, 0.703590,
		39.105820, 28.152084, 50.120605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938271, 27.630367, 49.395863>,  <39.518333, 27.874121, 49.628090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938271, 27.630367, 49.395863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851036, 27.932331, 49.643265>,  <38.798695, 28.113510, 49.791706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851036, 27.932331, 49.643265>,  <38.938271, 27.630367, 49.395863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851036, 27.932331, 49.643265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775400, 0.250808, -0.579525,
		-0.592616, -0.605975, 0.530661,
		-0.218083, 0.754910, 0.618506,
		38.785610, 28.158804, 49.828815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187889, 27.663630, 49.460472>,  <38.938271, 27.630367, 49.395863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187889, 27.663630, 49.460472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.317482, 28.024210, 49.575310>,  <38.395237, 28.240559, 49.644215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.317482, 28.024210, 49.575310>,  <38.187889, 27.663630, 49.460472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317482, 28.024210, 49.575310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727606, 0.431379, -0.533387,
		-0.604669, -0.036084, 0.795659,
		0.323984, 0.901449, 0.287096,
		38.414677, 28.294645, 49.661438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569756, 27.963518, 49.609825>,  <38.187889, 27.663630, 49.460472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569756, 27.963518, 49.609825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.830715, 28.265171, 49.579731>,  <37.987289, 28.446163, 49.561672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.830715, 28.265171, 49.579731>,  <37.569756, 27.963518, 49.609825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830715, 28.265171, 49.579731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677689, 0.536041, -0.503385,
		-0.339288, 0.379395, 0.860780,
		0.652396, 0.754134, -0.075240,
		38.026436, 28.491411, 49.557159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183952, 28.685097, 49.596699>,  <37.569756, 27.963518, 49.609825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183952, 28.685097, 49.596699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.529095, 28.788023, 49.422680>,  <37.736179, 28.849779, 49.318268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.529095, 28.788023, 49.422680>,  <37.183952, 28.685097, 49.596699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529095, 28.788023, 49.422680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477576, 0.696910, -0.535012,
		0.165519, 0.669406, 0.724223,
		0.862858, 0.257317, -0.435044,
		37.787952, 28.865217, 49.292168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303288, 29.468506, 49.687965>,  <37.183952, 28.685097, 49.596699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303288, 29.468506, 49.687965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.527191, 29.363482, 49.373581>,  <37.661533, 29.300467, 49.184952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.527191, 29.363482, 49.373581>,  <37.303288, 29.468506, 49.687965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527191, 29.363482, 49.373581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370986, 0.768711, -0.521012,
		0.740973, 0.583221, 0.332886,
		0.559758, -0.262559, -0.785960,
		37.695118, 29.284714, 49.137794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497944, 30.036919, 49.477924>,  <37.303288, 29.468506, 49.687965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497944, 30.036919, 49.477924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.560272, 29.793072, 49.167034>,  <37.597668, 29.646763, 48.980499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.560272, 29.793072, 49.167034>,  <37.497944, 30.036919, 49.477924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560272, 29.793072, 49.167034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366677, 0.694922, -0.618572,
		0.917207, 0.381378, -0.115250,
		0.155820, -0.609618, -0.777229,
		37.607018, 29.610186, 48.933865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757027, 30.447462, 48.950615>,  <37.497944, 30.036919, 49.477924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757027, 30.447462, 48.950615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.636364, 30.126387, 48.744820>,  <37.563969, 29.933741, 48.621342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.636364, 30.126387, 48.744820>,  <37.757027, 30.447462, 48.950615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636364, 30.126387, 48.744820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159487, 0.574504, -0.802813,
		0.939983, -0.160118, -0.301320,
		-0.301654, -0.802688, -0.514487,
		37.545868, 29.885580, 48.590473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052406, 30.452368, 48.304413>,  <37.757027, 30.447462, 48.950615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052406, 30.452368, 48.304413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.733540, 30.217825, 48.246838>,  <37.542221, 30.077099, 48.212292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.733540, 30.217825, 48.246838>,  <38.052406, 30.452368, 48.304413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733540, 30.217825, 48.246838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167247, 0.443523, -0.880520,
		0.580139, -0.677844, -0.451626,
		-0.797162, -0.586357, -0.143937,
		37.494392, 30.041918, 48.203655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079826, 30.382044, 47.608345>,  <38.052406, 30.452368, 48.304413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079826, 30.382044, 47.608345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.707794, 30.273165, 47.707020>,  <37.484573, 30.207838, 47.766224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.707794, 30.273165, 47.707020>,  <38.079826, 30.382044, 47.608345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707794, 30.273165, 47.707020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367080, 0.662775, -0.652672,
		0.014155, -0.697594, -0.716354,
		-0.930081, -0.272198, 0.246691,
		37.428768, 30.191505, 47.781029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767117, 30.255655, 47.063976>,  <38.079826, 30.382044, 47.608345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767117, 30.255655, 47.063976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.462620, 30.319551, 47.315372>,  <37.279922, 30.357889, 47.466209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.462620, 30.319551, 47.315372>,  <37.767117, 30.255655, 47.063976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462620, 30.319551, 47.315372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356939, 0.705935, -0.611759,
		-0.541394, -0.690028, -0.480369,
		-0.761241, 0.159740, 0.628487,
		37.234249, 30.367474, 47.503918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180031, 30.233681, 46.677219>,  <37.767117, 30.255655, 47.063976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180031, 30.233681, 46.677219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048309, 30.460636, 46.979115>,  <36.969276, 30.596809, 47.160252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048309, 30.460636, 46.979115>,  <37.180031, 30.233681, 46.677219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048309, 30.460636, 46.979115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525327, 0.554098, -0.645761,
		-0.784595, -0.609137, 0.115596,
		-0.329305, 0.567387, 0.754738,
		36.949516, 30.630852, 47.205536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521515, 30.464258, 46.510933>,  <37.180031, 30.233681, 46.677219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521515, 30.464258, 46.510933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.606575, 30.732048, 46.795631>,  <36.657612, 30.892721, 46.966450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.606575, 30.732048, 46.795631>,  <36.521515, 30.464258, 46.510933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606575, 30.732048, 46.795631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503648, 0.699289, -0.507280,
		-0.837329, -0.250599, 0.485881,
		0.212647, 0.669473, 0.711749,
		36.670368, 30.932890, 47.009155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912319, 30.862507, 46.645935>,  <36.521515, 30.464258, 46.510933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912319, 30.862507, 46.645935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220760, 31.093046, 46.754177>,  <36.405823, 31.231369, 46.819122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220760, 31.093046, 46.754177>,  <35.912319, 30.862507, 46.645935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220760, 31.093046, 46.754177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331121, 0.726001, -0.602728,
		-0.543841, 0.375160, 0.750661,
		0.771100, 0.576348, 0.270605,
		36.452091, 31.265951, 46.835358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624039, 31.568733, 46.652287>,  <35.912319, 30.862507, 46.645935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624039, 31.568733, 46.652287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.018604, 31.634380, 46.655285>,  <36.255344, 31.673769, 46.657082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.018604, 31.634380, 46.655285>,  <35.624039, 31.568733, 46.652287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018604, 31.634380, 46.655285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123457, 0.770575, -0.625279,
		-0.108394, 0.615857, 0.780366,
		0.986412, 0.164118, 0.007493,
		36.314529, 31.683617, 46.657532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727772, 32.290401, 46.716560>,  <35.624039, 31.568733, 46.652287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727772, 32.290401, 46.716560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.065384, 32.152466, 46.552269>,  <36.267952, 32.069706, 46.453693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.065384, 32.152466, 46.552269>,  <35.727772, 32.290401, 46.716560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065384, 32.152466, 46.552269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095122, 0.657465, -0.747456,
		0.527792, 0.669946, 0.522119,
		0.844030, -0.344837, -0.410732,
		36.318592, 32.049015, 46.429050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114162, 32.953312, 46.580273>,  <35.727772, 32.290401, 46.716560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114162, 32.953312, 46.580273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.256985, 32.660046, 46.348766>,  <36.342678, 32.484085, 46.209862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.256985, 32.660046, 46.348766>,  <36.114162, 32.953312, 46.580273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256985, 32.660046, 46.348766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081539, 0.592783, -0.801224,
		0.930516, 0.333276, 0.151876,
		0.357059, -0.733168, -0.578769,
		36.364101, 32.440094, 46.175137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388802, 33.377296, 46.107445>,  <36.114162, 32.953312, 46.580273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388802, 33.377296, 46.107445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.369987, 33.019913, 45.928776>,  <36.358700, 32.805481, 45.821575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.369987, 33.019913, 45.928776>,  <36.388802, 33.377296, 46.107445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369987, 33.019913, 45.928776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105308, 0.449112, -0.887248,
		0.993327, 0.005306, -0.115213,
		-0.047035, -0.893460, -0.446674,
		36.355877, 32.751873, 45.794773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859520, 33.358521, 45.506607>,  <36.388802, 33.377296, 46.107445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859520, 33.358521, 45.506607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.628170, 33.047466, 45.407997>,  <36.489361, 32.860836, 45.348831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.628170, 33.047466, 45.407997>,  <36.859520, 33.358521, 45.506607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628170, 33.047466, 45.407997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010036, 0.308956, -0.951023,
		0.815711, -0.547571, -0.186496,
		-0.578372, -0.777632, -0.246524,
		36.454659, 32.814178, 45.334042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.755928, 37.330864, 27.753729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.132389, 37.307640, 27.620548>,  <42.358265, 37.293705, 27.540640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.132389, 37.307640, 27.620548>,  <41.755928, 37.330864, 27.753729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132389, 37.307640, 27.620548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055601, 0.998310, -0.016910,
		0.333370, -0.002598, 0.942792,
		0.941155, -0.058057, -0.332951,
		42.414734, 37.290222, 27.520662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461700, 38.002022, 27.614483>,  <41.755928, 37.330864, 27.753729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461700, 38.002022, 27.614483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.101021, 38.167953, 27.663233>,  <40.884613, 38.267513, 27.692484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.101021, 38.167953, 27.663233>,  <41.461700, 38.002022, 27.614483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101021, 38.167953, 27.663233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043188, -0.366890, 0.929261,
		0.430203, 0.832650, 0.348740,
		-0.901698, 0.414833, 0.121877,
		40.830513, 38.292404, 27.699797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541409, 38.331295, 28.250607>,  <41.461700, 38.002022, 27.614483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541409, 38.331295, 28.250607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.143204, 38.310329, 28.219097>,  <40.904282, 38.297752, 28.200191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.143204, 38.310329, 28.219097>,  <41.541409, 38.331295, 28.250607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143204, 38.310329, 28.219097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057445, -0.326744, 0.943366,
		-0.075182, 0.943658, 0.322267,
		-0.995514, -0.052411, -0.078773,
		40.844551, 38.294605, 28.195465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243370, 38.802959, 28.740280>,  <41.541409, 38.331295, 28.250607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243370, 38.802959, 28.740280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.938725, 38.554096, 28.667767>,  <40.755939, 38.404778, 28.624258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.938725, 38.554096, 28.667767>,  <41.243370, 38.802959, 28.740280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938725, 38.554096, 28.667767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180436, -0.065092, 0.981431,
		-0.622407, 0.780180, -0.062685,
		-0.761612, -0.622160, -0.181286,
		40.710239, 38.367447, 28.613380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646076, 38.946854, 29.278601>,  <41.243370, 38.802959, 28.740280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646076, 38.946854, 29.278601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.601055, 38.576103, 29.135365>,  <40.574043, 38.353653, 29.049423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.601055, 38.576103, 29.135365>,  <40.646076, 38.946854, 29.278601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601055, 38.576103, 29.135365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235059, -0.325316, 0.915924,
		-0.965442, 0.187264, -0.181255,
		-0.112554, -0.926877, -0.358092,
		40.567287, 38.298038, 29.027937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977890, 38.602535, 29.498240>,  <40.646076, 38.946854, 29.278601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977890, 38.602535, 29.498240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.239029, 38.309570, 29.420933>,  <40.395714, 38.133789, 29.374548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.239029, 38.309570, 29.420933>,  <39.977890, 38.602535, 29.498240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239029, 38.309570, 29.420933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148717, -0.374111, 0.915382,
		-0.742743, -0.568866, -0.353162,
		0.652852, -0.732415, -0.193268,
		40.434883, 38.089848, 29.362953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858829, 38.102337, 29.999258>,  <39.977890, 38.602535, 29.498240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858829, 38.102337, 29.999258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.186668, 37.932709, 29.845152>,  <40.383369, 37.830933, 29.752687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.186668, 37.932709, 29.845152>,  <39.858829, 38.102337, 29.999258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186668, 37.932709, 29.845152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191233, -0.431392, 0.881664,
		-0.540091, -0.796281, -0.272469,
		0.819592, -0.424073, -0.385266,
		40.432545, 37.805489, 29.729572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868412, 37.301495, 30.241854>,  <39.858829, 38.102337, 29.999258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868412, 37.301495, 30.241854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.230385, 37.441536, 30.145088>,  <40.447571, 37.525558, 30.087029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.230385, 37.441536, 30.145088>,  <39.868412, 37.301495, 30.241854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230385, 37.441536, 30.145088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377600, -0.398461, 0.835851,
		0.196238, -0.847738, -0.492779,
		0.904936, 0.350099, -0.241913,
		40.501865, 37.546566, 30.072514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340534, 36.767258, 30.449854>,  <39.868412, 37.301495, 30.241854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340534, 36.767258, 30.449854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.550430, 37.105637, 30.411863>,  <40.676369, 37.308662, 30.389069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.550430, 37.105637, 30.411863>,  <40.340534, 36.767258, 30.449854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550430, 37.105637, 30.411863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470872, -0.195497, 0.860268,
		0.709172, -0.496142, -0.500918,
		0.524743, 0.845946, -0.094978,
		40.707851, 37.359421, 30.383369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129303, 36.554661, 30.605713>,  <40.340534, 36.767258, 30.449854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129303, 36.554661, 30.605713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.129013, 36.952507, 30.647154>,  <41.128841, 37.191216, 30.672018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.129013, 36.952507, 30.647154>,  <41.129303, 36.554661, 30.605713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129013, 36.952507, 30.647154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354472, -0.096621, 0.930061,
		0.935066, 0.037395, -0.352494,
		-0.000722, 0.994618, 0.103602,
		41.128796, 37.250893, 30.678234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741650, 36.775520, 30.791761>,  <41.129303, 36.554661, 30.605713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741650, 36.775520, 30.791761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.513222, 37.075176, 30.926023>,  <41.376163, 37.254971, 31.006580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.513222, 37.075176, 30.926023>,  <41.741650, 36.775520, 30.791761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513222, 37.075176, 30.926023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416605, -0.087838, 0.904834,
		0.707334, 0.656559, -0.261935,
		-0.571069, 0.749143, 0.335657,
		41.341900, 37.299919, 31.026720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175404, 37.339420, 31.125116>,  <41.741650, 36.775520, 30.791761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175404, 37.339420, 31.125116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.806385, 37.387257, 31.271872>,  <41.584972, 37.415958, 31.359924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.806385, 37.387257, 31.271872>,  <42.175404, 37.339420, 31.125116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.806385, 37.387257, 31.271872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369729, 0.001683, 0.929138,
		0.110498, 0.992822, -0.045769,
		-0.922546, 0.119590, 0.366889,
		41.529621, 37.423134, 31.381939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176697, 37.758911, 31.650454>,  <42.175404, 37.339420, 31.125116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176697, 37.758911, 31.650454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.824749, 37.593636, 31.744347>,  <41.613579, 37.494469, 31.800682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.824749, 37.593636, 31.744347>,  <42.176697, 37.758911, 31.650454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824749, 37.593636, 31.744347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289907, -0.075329, 0.954086,
		-0.376538, 0.907523, 0.186067,
		-0.879871, -0.413192, 0.234733,
		41.560787, 37.469677, 31.814766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969280, 38.124836, 32.228455>,  <42.176697, 37.758911, 31.650454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969280, 38.124836, 32.228455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.755928, 37.786766, 32.242237>,  <41.627914, 37.583923, 32.250507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.755928, 37.786766, 32.242237>,  <41.969280, 38.124836, 32.228455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755928, 37.786766, 32.242237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117619, -0.033764, 0.992485,
		-0.837656, 0.533427, 0.117418,
		-0.533383, -0.845172, 0.034458,
		41.595913, 37.533215, 32.252575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585094, 38.171253, 32.856831>,  <41.969280, 38.124836, 32.228455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585094, 38.171253, 32.856831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.556602, 37.778477, 32.786728>,  <41.539509, 37.542812, 32.744667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.556602, 37.778477, 32.786728>,  <41.585094, 38.171253, 32.856831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556602, 37.778477, 32.786728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257500, -0.187850, 0.947843,
		-0.963650, 0.022383, 0.266230,
		-0.071227, -0.981943, -0.175258,
		41.535233, 37.483894, 32.734150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128132, 37.866135, 33.437798>,  <41.585094, 38.171253, 32.856831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128132, 37.866135, 33.437798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.363621, 37.588299, 33.272411>,  <41.504913, 37.421597, 33.173180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.363621, 37.588299, 33.272411>,  <41.128132, 37.866135, 33.437798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363621, 37.588299, 33.272411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431211, -0.162781, 0.887445,
		-0.683715, -0.700748, 0.203682,
		0.588720, -0.694590, -0.413466,
		41.540237, 37.379921, 33.148373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162216, 37.270969, 33.939285>,  <41.128132, 37.866135, 33.437798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162216, 37.270969, 33.939285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.459679, 37.184002, 33.686398>,  <41.638157, 37.131821, 33.534664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.459679, 37.184002, 33.686398>,  <41.162216, 37.270969, 33.939285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459679, 37.184002, 33.686398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548471, -0.342342, 0.762877,
		-0.382304, -0.914072, -0.135333,
		0.743655, -0.217425, -0.632221,
		41.682777, 37.118774, 33.496731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304737, 36.488091, 33.885624>,  <41.162216, 37.270969, 33.939285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304737, 36.488091, 33.885624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.624714, 36.714924, 33.807133>,  <41.816700, 36.851025, 33.760036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.624714, 36.714924, 33.807133>,  <41.304737, 36.488091, 33.885624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624714, 36.714924, 33.807133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504353, -0.458196, 0.731905,
		0.325141, -0.684451, -0.652542,
		0.799945, 0.567084, -0.196227,
		41.864697, 36.885048, 33.748264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857185, 36.102242, 34.100311>,  <41.304737, 36.488091, 33.885624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857185, 36.102242, 34.100311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.033924, 36.458443, 34.056915>,  <42.139969, 36.672165, 34.030876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.033924, 36.458443, 34.056915>,  <41.857185, 36.102242, 34.100311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033924, 36.458443, 34.056915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625313, -0.219012, 0.749011,
		0.643239, -0.398787, -0.653615,
		0.441845, 0.890507, -0.108489,
		42.166477, 36.725594, 34.024368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554764, 35.871754, 34.278378>,  <41.857185, 36.102242, 34.100311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554764, 35.871754, 34.278378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.539024, 36.270851, 34.300152>,  <42.529583, 36.510307, 34.313217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.539024, 36.270851, 34.300152>,  <42.554764, 35.871754, 34.278378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539024, 36.270851, 34.300152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673578, -0.013758, 0.738988,
		0.738069, 0.065743, -0.671515,
		-0.039344, 0.997742, 0.054437,
		42.527222, 36.570175, 34.316483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216480, 36.124172, 34.241161>,  <42.554764, 35.871754, 34.278378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216480, 36.124172, 34.241161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.008194, 36.410275, 34.427608>,  <42.883224, 36.581936, 34.539474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.008194, 36.410275, 34.427608>,  <43.216480, 36.124172, 34.241161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008194, 36.410275, 34.427608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685577, 0.024965, 0.727572,
		0.508765, 0.698414, -0.503364,
		-0.520714, 0.715258, 0.466115,
		42.851978, 36.624851, 34.567444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879425, 35.790272, 34.124256>,  <43.216480, 36.124172, 34.241161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879425, 35.790272, 34.124256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.262764, 35.686565, 34.076347>,  <44.492767, 35.624344, 34.047600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.262764, 35.686565, 34.076347>,  <43.879425, 35.790272, 34.124256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.262764, 35.686565, 34.076347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148402, -0.093749, -0.984473,
		0.244008, 0.961246, -0.128319,
		0.958351, -0.259263, -0.119775,
		44.550270, 35.608788, 34.040417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.116169, 36.281906, 33.782490>,  <43.879425, 35.790272, 34.124256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.116169, 36.281906, 33.782490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.400734, 36.013577, 33.698700>,  <44.571472, 35.852577, 33.648426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.400734, 36.013577, 33.698700>,  <44.116169, 36.281906, 33.782490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.400734, 36.013577, 33.698700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015753, 0.313216, -0.949551,
		0.702597, 0.672224, 0.233394,
		0.711414, -0.670828, -0.209475,
		44.614159, 35.812328, 33.635857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604652, 36.707565, 33.403709>,  <44.116169, 36.281906, 33.782490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.604652, 36.707565, 33.403709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.649200, 36.322403, 33.305393>,  <44.675930, 36.091305, 33.246403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.649200, 36.322403, 33.305393>,  <44.604652, 36.707565, 33.403709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.649200, 36.322403, 33.305393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191817, 0.221851, -0.956027,
		0.975091, 0.153624, -0.159992,
		0.111375, -0.962903, -0.245793,
		44.682613, 36.033531, 33.231655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.054867, 36.648350, 32.818321>,  <44.604652, 36.707565, 33.403709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.054867, 36.648350, 32.818321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.866432, 36.295979, 32.800259>,  <44.753372, 36.084557, 32.789421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.866432, 36.295979, 32.800259>,  <45.054867, 36.648350, 32.818321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.866432, 36.295979, 32.800259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082554, 0.095003, -0.992048,
		0.878215, -0.463614, -0.117479,
		-0.471088, -0.880929, -0.045160,
		44.725105, 36.031700, 32.786709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.336483, 36.450211, 32.282768>,  <45.054867, 36.648350, 32.818321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.336483, 36.450211, 32.282768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.033878, 36.189766, 32.307262>,  <44.852314, 36.033501, 32.321957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.033878, 36.189766, 32.307262>,  <45.336483, 36.450211, 32.282768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.033878, 36.189766, 32.307262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001693, -0.095580, -0.995420,
		0.653978, -0.752943, 0.073410,
		-0.756511, -0.651108, 0.061233,
		44.806927, 35.994434, 32.325634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.413219, 35.917606, 31.819782>,  <45.336483, 36.450211, 32.282768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.413219, 35.917606, 31.819782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.019989, 35.940254, 31.889473>,  <44.784050, 35.953842, 31.931288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.019989, 35.940254, 31.889473>,  <45.413219, 35.917606, 31.819782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.019989, 35.940254, 31.889473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178078, -0.072066, -0.981374,
		-0.043008, -0.995792, 0.080929,
		-0.983076, 0.056619, 0.174229,
		44.725067, 35.957241, 31.941742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235497, 35.369629, 31.443670>,  <45.413219, 35.917606, 31.819782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235497, 35.369629, 31.443670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.898857, 35.581085, 31.487925>,  <44.696873, 35.707958, 31.514477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.898857, 35.581085, 31.487925>,  <45.235497, 35.369629, 31.443670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.898857, 35.581085, 31.487925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263586, -0.223229, -0.938451,
		-0.471409, -0.818965, 0.327213,
		-0.841603, 0.528644, 0.110636,
		44.646378, 35.739677, 31.521114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821999, 35.002316, 31.004379>,  <45.235497, 35.369629, 31.443670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.821999, 35.002316, 31.004379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.637424, 35.348698, 31.081533>,  <44.526680, 35.556526, 31.127825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.637424, 35.348698, 31.081533>,  <44.821999, 35.002316, 31.004379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.637424, 35.348698, 31.081533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158538, 0.133428, -0.978296,
		-0.872896, -0.481996, 0.075719,
		-0.461431, 0.865954, 0.192884,
		44.498997, 35.608482, 31.139399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.225414, 35.012207, 30.686903>,  <44.821999, 35.002316, 31.004379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.225414, 35.012207, 30.686903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.310055, 35.402142, 30.714951>,  <44.360840, 35.636101, 30.731779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.310055, 35.402142, 30.714951>,  <44.225414, 35.012207, 30.686903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310055, 35.402142, 30.714951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308282, 0.134655, -0.941717,
		-0.927462, 0.177655, 0.329018,
		0.211605, 0.974837, 0.070120,
		44.373535, 35.694592, 30.735987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.694515, 35.388840, 30.262880>,  <44.225414, 35.012207, 30.686903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.694515, 35.388840, 30.262880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.989700, 35.654034, 30.313255>,  <44.166813, 35.813152, 30.343479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.989700, 35.654034, 30.313255>,  <43.694515, 35.388840, 30.262880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989700, 35.654034, 30.313255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148193, 0.341267, -0.928211,
		-0.658370, 0.666321, 0.350092,
		0.737962, 0.662988, 0.125936,
		44.211090, 35.852928, 30.351036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467510, 36.118198, 30.224024>,  <43.694515, 35.388840, 30.262880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467510, 36.118198, 30.224024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.854408, 36.086517, 30.127562>,  <44.086548, 36.067509, 30.069685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.854408, 36.086517, 30.127562>,  <43.467510, 36.118198, 30.224024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.854408, 36.086517, 30.127562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149465, 0.590180, -0.793315,
		0.205155, 0.803378, 0.559013,
		0.967249, -0.079199, -0.241155,
		44.144585, 36.062759, 30.055216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458817, 36.702488, 29.852070>,  <43.467510, 36.118198, 30.224024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458817, 36.702488, 29.852070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.801147, 36.505863, 29.787659>,  <44.006546, 36.387890, 29.749012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.801147, 36.505863, 29.787659>,  <43.458817, 36.702488, 29.852070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.801147, 36.505863, 29.787659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087370, 0.444204, -0.891656,
		0.509832, 0.749033, 0.423109,
		0.855826, -0.491562, -0.161026,
		44.057896, 36.358395, 29.739351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.864269, 37.217182, 29.521461>,  <43.458817, 36.702488, 29.852070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.864269, 37.217182, 29.521461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.007229, 36.854195, 29.433136>,  <44.093002, 36.636402, 29.380140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.007229, 36.854195, 29.433136>,  <43.864269, 37.217182, 29.521461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007229, 36.854195, 29.433136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008673, 0.239646, -0.970821,
		0.933912, 0.345053, 0.093519,
		0.357397, -0.907473, -0.220816,
		44.114449, 36.581951, 29.366892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.271549, 37.350773, 29.004587>,  <43.864269, 37.217182, 29.521461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.271549, 37.350773, 29.004587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.235710, 36.953304, 28.977465>,  <44.214207, 36.714825, 28.961191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.235710, 36.953304, 28.977465>,  <44.271549, 37.350773, 29.004587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235710, 36.953304, 28.977465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006257, 0.067516, -0.997699,
		0.995959, -0.089812, 0.000168,
		-0.089594, -0.993668, -0.067805,
		44.208832, 36.655205, 28.957123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.811996, 37.103771, 28.650547>,  <44.271549, 37.350773, 29.004587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.811996, 37.103771, 28.650547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.543266, 36.812473, 28.596422>,  <44.382027, 36.637695, 28.563948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.543266, 36.812473, 28.596422>,  <44.811996, 37.103771, 28.650547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543266, 36.812473, 28.596422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021543, 0.201815, -0.979187,
		0.740394, -0.654930, -0.151273,
		-0.671828, -0.728243, -0.135314,
		44.341717, 36.594002, 28.555828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037289, 36.686539, 28.005833>,  <44.811996, 37.103771, 28.650547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037289, 36.686539, 28.005833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.644707, 36.635887, 28.063408>,  <44.409157, 36.605495, 28.097954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.644707, 36.635887, 28.063408>,  <45.037289, 36.686539, 28.005833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.644707, 36.635887, 28.063408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154840, 0.080885, -0.984623,
		0.113043, -0.988646, -0.098992,
		-0.981451, -0.126633, 0.143938,
		44.350273, 36.597900, 28.106590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.789886, 36.062122, 27.567713>,  <45.037289, 36.686539, 28.005833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.789886, 36.062122, 27.567713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.493256, 36.312721, 27.663692>,  <44.315277, 36.463081, 27.721279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.493256, 36.312721, 27.663692>,  <44.789886, 36.062122, 27.567713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.493256, 36.312721, 27.663692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186765, 0.150735, -0.970772,
		-0.644352, -0.764711, 0.005227,
		-0.741572, 0.626494, 0.239948,
		44.270782, 36.500671, 27.735678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306507, 35.938305, 27.117743>,  <44.789886, 36.062122, 27.567713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306507, 35.938305, 27.117743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.158852, 36.290367, 27.237112>,  <44.070259, 36.501606, 27.308733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.158852, 36.290367, 27.237112>,  <44.306507, 35.938305, 27.117743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158852, 36.290367, 27.237112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286588, 0.197649, -0.937444,
		-0.884083, -0.431573, 0.179282,
		-0.369141, 0.880159, 0.298422,
		44.048111, 36.554413, 27.326639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715153, 35.967018, 26.712393>,  <44.306507, 35.938305, 27.117743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715153, 35.967018, 26.712393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.774944, 36.337364, 26.851210>,  <43.810818, 36.559570, 26.934500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.774944, 36.337364, 26.851210>,  <43.715153, 35.967018, 26.712393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774944, 36.337364, 26.851210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399895, 0.377608, -0.835162,
		-0.904290, -0.013945, 0.426690,
		0.149475, 0.925861, 0.347044,
		43.819786, 36.615124, 26.955322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123386, 36.429386, 26.510994>,  <43.715153, 35.967018, 26.712393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123386, 36.429386, 26.510994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.426075, 36.682041, 26.578413>,  <43.607689, 36.833633, 26.618864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.426075, 36.682041, 26.578413>,  <43.123386, 36.429386, 26.510994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.426075, 36.682041, 26.578413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227371, 0.496018, -0.838015,
		-0.612925, 0.595819, 0.518963,
		0.756720, 0.631637, 0.168550,
		43.653091, 36.871532, 26.628979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.920105, 37.186413, 26.460922>,  <43.123386, 36.429386, 26.510994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.920105, 37.186413, 26.460922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.318363, 37.209568, 26.431675>,  <43.557316, 37.223461, 26.414125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.318363, 37.209568, 26.431675>,  <42.920105, 37.186413, 26.460922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318363, 37.209568, 26.431675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091232, 0.441906, -0.892410,
		-0.019349, 0.895191, 0.445262,
		0.995642, 0.057889, -0.073120,
		43.617054, 37.226936, 26.409739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.119217, 34.958149, 40.771206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841274, 34.688774, 40.670284>,  <39.674511, 34.527149, 40.609730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841274, 34.688774, 40.670284>,  <40.119217, 34.958149, 40.771206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841274, 34.688774, 40.670284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146902, 0.210520, -0.966489,
		0.703988, -0.708631, -0.047351,
		-0.694853, -0.673441, -0.252303,
		39.632820, 34.486740, 40.594593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292076, 34.581551, 40.163059>,  <40.119217, 34.958149, 40.771206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292076, 34.581551, 40.163059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895874, 34.530651, 40.142242>,  <39.658154, 34.500111, 40.129753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895874, 34.530651, 40.142242>,  <40.292076, 34.581551, 40.163059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895874, 34.530651, 40.142242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024267, 0.210784, -0.977231,
		0.135320, -0.969215, -0.205695,
		-0.990505, -0.127248, -0.052044,
		39.598724, 34.492477, 40.126629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201294, 34.354076, 39.486118>,  <40.292076, 34.581551, 40.163059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201294, 34.354076, 39.486118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837986, 34.461548, 39.614403>,  <39.620003, 34.526031, 39.691376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837986, 34.461548, 39.614403>,  <40.201294, 34.354076, 39.486118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837986, 34.461548, 39.614403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234061, 0.309069, -0.921787,
		-0.346790, -0.912298, -0.217830,
		-0.908269, 0.268681, 0.320715,
		39.565506, 34.542152, 39.710617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765251, 34.099663, 38.915401>,  <40.201294, 34.354076, 39.486118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765251, 34.099663, 38.915401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534969, 34.361862, 39.110909>,  <39.396801, 34.519180, 39.228214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534969, 34.361862, 39.110909>,  <39.765251, 34.099663, 38.915401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534969, 34.361862, 39.110909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205942, 0.462250, -0.862504,
		-0.791300, -0.597203, -0.131124,
		-0.575702, 0.655495, 0.488767,
		39.362259, 34.558510, 39.257538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079605, 34.139515, 38.545052>,  <39.765251, 34.099663, 38.915401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079605, 34.139515, 38.545052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125835, 34.478992, 38.751492>,  <39.153572, 34.682678, 38.875355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125835, 34.478992, 38.751492>,  <39.079605, 34.139515, 38.545052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125835, 34.478992, 38.751492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149680, 0.528525, -0.835618,
		-0.981957, 0.019326, 0.188116,
		0.115573, 0.848698, 0.516096,
		39.160507, 34.733601, 38.906319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496483, 34.575821, 38.317463>,  <39.079605, 34.139515, 38.545052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496483, 34.575821, 38.317463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788940, 34.801304, 38.471176>,  <38.964413, 34.936592, 38.563404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788940, 34.801304, 38.471176>,  <38.496483, 34.575821, 38.317463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788940, 34.801304, 38.471176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117960, 0.659245, -0.742618,
		-0.671953, 0.497628, 0.548494,
		0.731140, 0.563704, 0.384281,
		39.008282, 34.970417, 38.586460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269196, 35.188477, 38.258057>,  <38.496483, 34.575821, 38.317463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269196, 35.188477, 38.258057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669144, 35.189732, 38.264442>,  <38.909111, 35.190483, 38.268272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669144, 35.189732, 38.264442>,  <38.269196, 35.188477, 38.258057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669144, 35.189732, 38.264442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012084, 0.513630, -0.857927,
		-0.010891, 0.858006, 0.513524,
		0.999868, 0.003138, 0.015962,
		38.969105, 35.190674, 38.269230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417107, 35.865295, 38.117111>,  <38.269196, 35.188477, 38.258057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417107, 35.865295, 38.117111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759022, 35.674065, 38.036339>,  <38.964172, 35.559326, 37.987877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759022, 35.674065, 38.036339>,  <38.417107, 35.865295, 38.117111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759022, 35.674065, 38.036339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000796, 0.390298, -0.920688,
		0.518975, 0.786833, 0.334003,
		0.854789, -0.478080, -0.201928,
		39.015457, 35.530640, 37.975761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868790, 36.320919, 37.805653>,  <38.417107, 35.865295, 38.117111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868790, 36.320919, 37.805653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046841, 35.981773, 37.690422>,  <39.153671, 35.778286, 37.621284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046841, 35.981773, 37.690422>,  <38.868790, 36.320919, 37.805653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046841, 35.981773, 37.690422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113667, 0.372603, -0.921003,
		0.888222, 0.377222, 0.262232,
		0.445131, -0.847862, -0.288077,
		39.180382, 35.727413, 37.604000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491573, 36.477592, 37.452621>,  <38.868790, 36.320919, 37.805653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491573, 36.477592, 37.452621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419544, 36.110935, 37.309879>,  <39.376328, 35.890942, 37.224232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419544, 36.110935, 37.309879>,  <39.491573, 36.477592, 37.452621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419544, 36.110935, 37.309879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062801, 0.372762, -0.925799,
		0.981647, -0.144300, -0.124690,
		-0.180073, -0.916638, -0.356858,
		39.365524, 35.835945, 37.202824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931820, 36.445057, 36.818638>,  <39.491573, 36.477592, 37.452621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931820, 36.445057, 36.818638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661106, 36.151039, 36.802246>,  <39.498680, 35.974628, 36.792412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661106, 36.151039, 36.802246>,  <39.931820, 36.445057, 36.818638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661106, 36.151039, 36.802246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180768, 0.219884, -0.958631,
		0.713647, -0.641374, -0.281686,
		-0.676780, -0.735044, -0.040979,
		39.458073, 35.930527, 36.789951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134418, 35.893688, 36.333683>,  <39.931820, 36.445057, 36.818638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134418, 35.893688, 36.333683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735428, 35.870850, 36.350555>,  <39.496033, 35.857147, 36.360680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735428, 35.870850, 36.350555>,  <40.134418, 35.893688, 36.333683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735428, 35.870850, 36.350555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038307, -0.067359, -0.996993,
		0.059768, -0.996094, 0.065002,
		-0.997477, -0.057098, 0.042184,
		39.436184, 35.853722, 36.363209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360264, 35.578808, 36.972797>,  <40.134418, 35.893688, 36.333683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360264, 35.578808, 36.972797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615963, 35.840839, 37.133911>,  <40.769382, 35.998058, 37.230579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615963, 35.840839, 37.133911>,  <40.360264, 35.578808, 36.972797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615963, 35.840839, 37.133911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719413, -0.324394, -0.614177,
		-0.271670, 0.682383, -0.678638,
		0.639250, 0.655074, 0.402787,
		40.807739, 36.037361, 37.254745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896355, 35.757339, 36.535980>,  <40.360264, 35.578808, 36.972797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896355, 35.757339, 36.535980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091808, 35.868835, 36.866688>,  <41.209080, 35.935734, 37.065113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091808, 35.868835, 36.866688>,  <40.896355, 35.757339, 36.535980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091808, 35.868835, 36.866688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737919, -0.637626, -0.221152,
		0.465523, 0.718148, -0.517254,
		0.488635, 0.278740, 0.826765,
		41.238400, 35.952457, 37.114716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223351, 35.047352, 36.290272>,  <40.896355, 35.757339, 36.535980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223351, 35.047352, 36.290272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505630, 34.769329, 36.345230>,  <41.674999, 34.602516, 36.378204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505630, 34.769329, 36.345230>,  <41.223351, 35.047352, 36.290272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505630, 34.769329, 36.345230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663240, -0.579871, 0.473141,
		-0.249189, -0.425023, -0.870207,
		0.705703, -0.695058, 0.137395,
		41.717342, 34.560810, 36.386448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933472, 34.374763, 36.054092>,  <41.223351, 35.047352, 36.290272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933472, 34.374763, 36.054092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224094, 34.289543, 36.315392>,  <41.398468, 34.238411, 36.472172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224094, 34.289543, 36.315392>,  <40.933472, 34.374763, 36.054092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224094, 34.289543, 36.315392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594613, -0.671369, 0.442379,
		0.344321, -0.709841, -0.614466,
		0.726552, -0.213049, 0.653247,
		41.442059, 34.225628, 36.511364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955811, 33.685059, 36.014954>,  <40.933472, 34.374763, 36.054092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955811, 33.685059, 36.014954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172466, 33.752518, 36.344364>,  <41.302460, 33.792992, 36.542011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172466, 33.752518, 36.344364>,  <40.955811, 33.685059, 36.014954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172466, 33.752518, 36.344364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422333, -0.792455, 0.440057,
		0.726820, -0.586151, -0.357995,
		0.541634, 0.168649, 0.823523,
		41.334957, 33.803112, 36.591419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323761, 33.111034, 36.163063>,  <40.955811, 33.685059, 36.014954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323761, 33.111034, 36.163063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244209, 33.325890, 36.490948>,  <41.196480, 33.454803, 36.687679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244209, 33.325890, 36.490948>,  <41.323761, 33.111034, 36.163063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244209, 33.325890, 36.490948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560346, -0.748535, 0.354552,
		0.804028, -0.388811, 0.449850,
		-0.198875, 0.537141, 0.819712,
		41.184547, 33.487034, 36.736862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000355, 32.695557, 36.580166>,  <41.323761, 33.111034, 36.163063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000355, 32.695557, 36.580166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934933, 33.012554, 36.815182>,  <40.895679, 33.202755, 36.956192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934933, 33.012554, 36.815182>,  <41.000355, 32.695557, 36.580166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934933, 33.012554, 36.815182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553972, -0.566571, 0.610010,
		0.816312, -0.225710, 0.531685,
		-0.163552, 0.792497, 0.587536,
		40.885868, 33.250305, 36.991444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240330, 32.546284, 37.223225>,  <41.000355, 32.695557, 36.580166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240330, 32.546284, 37.223225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961300, 32.829208, 37.269001>,  <40.793880, 32.998962, 37.296467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961300, 32.829208, 37.269001>,  <41.240330, 32.546284, 37.223225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961300, 32.829208, 37.269001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384129, -0.504001, 0.773581,
		0.604843, 0.495670, 0.623278,
		-0.697574, 0.707314, 0.114440,
		40.752029, 33.041401, 37.303333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038700, 32.641563, 38.022961>,  <41.240330, 32.546284, 37.223225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038700, 32.641563, 38.022961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719990, 32.744942, 37.804474>,  <40.528763, 32.806969, 37.673382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719990, 32.744942, 37.804474>,  <41.038700, 32.641563, 38.022961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719990, 32.744942, 37.804474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595383, -0.490225, 0.636552,
		-0.103253, 0.832397, 0.544476,
		-0.796779, 0.258446, -0.546213,
		40.480957, 32.822475, 37.640610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534950, 32.909527, 38.504993>,  <41.038700, 32.641563, 38.022961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534950, 32.909527, 38.504993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313622, 32.840145, 38.179108>,  <40.180824, 32.798515, 37.983578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313622, 32.840145, 38.179108>,  <40.534950, 32.909527, 38.504993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313622, 32.840145, 38.179108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777928, -0.242038, 0.579867,
		-0.297769, 0.954637, -0.001008,
		-0.553318, -0.173450, -0.814711,
		40.147625, 32.788109, 37.934696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907486, 33.223049, 38.660580>,  <40.534950, 32.909527, 38.504993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907486, 33.223049, 38.660580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818806, 32.952534, 38.379589>,  <39.765598, 32.790222, 38.210995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818806, 32.952534, 38.379589>,  <39.907486, 33.223049, 38.660580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818806, 32.952534, 38.379589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842088, -0.230459, 0.487623,
		-0.491669, 0.699655, -0.518406,
		-0.221697, -0.676292, -0.702481,
		39.752296, 32.749645, 38.168846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180683, 33.391930, 38.463390>,  <39.907486, 33.223049, 38.660580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180683, 33.391930, 38.463390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280499, 33.017761, 38.363220>,  <39.340385, 32.793259, 38.303120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280499, 33.017761, 38.363220>,  <39.180683, 33.391930, 38.463390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280499, 33.017761, 38.363220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839080, -0.337960, 0.426296,
		-0.483401, 0.103752, -0.869229,
		0.249535, -0.935424, -0.250427,
		39.355358, 32.737133, 38.288094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551640, 33.011330, 38.298290>,  <39.180683, 33.391930, 38.463390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551640, 33.011330, 38.298290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818989, 32.723763, 38.374641>,  <38.979397, 32.551224, 38.420452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818989, 32.723763, 38.374641>,  <38.551640, 33.011330, 38.298290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818989, 32.723763, 38.374641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664091, -0.461147, 0.588495,
		-0.335053, -0.520098, -0.785644,
		0.668373, -0.718917, 0.190884,
		39.019501, 32.508087, 38.431908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125702, 32.482014, 38.282658>,  <38.551640, 33.011330, 38.298290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125702, 32.482014, 38.282658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457291, 32.384624, 38.484066>,  <38.656242, 32.326191, 38.604912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457291, 32.384624, 38.484066>,  <38.125702, 32.482014, 38.282658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457291, 32.384624, 38.484066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541661, -0.573782, 0.614310,
		0.139345, -0.781982, -0.607526,
		0.828967, -0.243472, 0.503522,
		38.705982, 32.311584, 38.635124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984127, 31.849625, 38.463314>,  <38.125702, 32.482014, 38.282658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984127, 31.849625, 38.463314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276630, 31.932707, 38.723194>,  <38.452133, 31.982555, 38.879124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276630, 31.932707, 38.723194>,  <37.984127, 31.849625, 38.463314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276630, 31.932707, 38.723194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400173, -0.640720, 0.655240,
		0.552375, -0.739146, -0.385416,
		0.731261, 0.207705, 0.649704,
		38.496010, 31.995018, 38.918106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311031, 31.219563, 38.791527>,  <37.984127, 31.849625, 38.463314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311031, 31.219563, 38.791527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422077, 31.492970, 39.061558>,  <38.488705, 31.657013, 39.223576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422077, 31.492970, 39.061558>,  <38.311031, 31.219563, 38.791527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422077, 31.492970, 39.061558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409069, -0.551710, 0.726828,
		0.869247, -0.477935, 0.126441,
		0.277617, 0.683516, 0.675081,
		38.505363, 31.698025, 39.264084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604229, 30.729885, 38.428284>,  <38.311031, 31.219563, 38.791527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604229, 30.729885, 38.428284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350571, 30.424192, 38.381283>,  <38.198376, 30.240776, 38.353081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350571, 30.424192, 38.381283>,  <38.604229, 30.729885, 38.428284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350571, 30.424192, 38.381283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699000, 0.631588, -0.335403,
		0.330537, -0.130562, -0.934718,
		-0.634148, -0.764231, -0.117501,
		38.160328, 30.194923, 38.346031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559391, 30.745094, 37.733192>,  <38.604229, 30.729885, 38.428284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559391, 30.745094, 37.733192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246861, 30.541325, 37.877426>,  <38.059341, 30.419062, 37.963966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246861, 30.541325, 37.877426>,  <38.559391, 30.745094, 37.733192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246861, 30.541325, 37.877426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615428, 0.532720, -0.580911,
		0.103841, -0.675792, -0.729741,
		-0.781323, -0.509426, 0.360583,
		38.012463, 30.388496, 37.985600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274849, 30.518192, 37.197979>,  <38.559391, 30.745094, 37.733192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274849, 30.518192, 37.197979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983639, 30.525194, 37.472107>,  <37.808910, 30.529394, 37.636585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983639, 30.525194, 37.472107>,  <38.274849, 30.518192, 37.197979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983639, 30.525194, 37.472107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632218, 0.369425, -0.681048,
		-0.265097, -0.929096, -0.257885,
		-0.728028, 0.017504, 0.685324,
		37.765232, 30.530445, 37.677704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716358, 30.263968, 36.875095>,  <38.274849, 30.518192, 37.197979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716358, 30.263968, 36.875095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582066, 30.475767, 37.186714>,  <37.501492, 30.602846, 37.373688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582066, 30.475767, 37.186714>,  <37.716358, 30.263968, 36.875095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582066, 30.475767, 37.186714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777735, 0.310782, -0.546391,
		-0.531428, -0.789333, 0.307471,
		-0.335728, 0.529498, 0.779049,
		37.481346, 30.634617, 37.420429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030212, 30.110497, 36.891579>,  <37.716358, 30.263968, 36.875095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030212, 30.110497, 36.891579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054321, 30.428904, 37.132484>,  <37.068787, 30.619947, 37.277027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054321, 30.428904, 37.132484>,  <37.030212, 30.110497, 36.891579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054321, 30.428904, 37.132484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859230, 0.348457, -0.374569,
		-0.508027, -0.494905, 0.704967,
		0.060275, 0.796019, 0.602262,
		37.072403, 30.667709, 37.313164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289581, 30.225801, 37.128239>,  <37.030212, 30.110497, 36.891579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289581, 30.225801, 37.128239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482006, 30.569435, 37.198154>,  <36.597462, 30.775616, 37.240105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482006, 30.569435, 37.198154>,  <36.289581, 30.225801, 37.128239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482006, 30.569435, 37.198154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792566, 0.511391, -0.332142,
		-0.374722, 0.021251, 0.926893,
		0.481063, 0.859085, 0.174787,
		36.626324, 30.827160, 37.250591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667198, 30.688513, 37.316544>,  <36.289581, 30.225801, 37.128239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667198, 30.688513, 37.316544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971542, 30.928785, 37.218346>,  <36.154148, 31.072948, 37.159428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971542, 30.928785, 37.218346>,  <35.667198, 30.688513, 37.316544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971542, 30.928785, 37.218346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648803, 0.711105, -0.270894,
		0.011854, 0.365393, 0.930778,
		0.760864, 0.600681, -0.245498,
		36.199802, 31.108990, 37.144695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448849, 31.304897, 37.575706>,  <35.667198, 30.688513, 37.316544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448849, 31.304897, 37.575706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718296, 31.398743, 37.295364>,  <35.879963, 31.455050, 37.127159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718296, 31.398743, 37.295364>,  <35.448849, 31.304897, 37.575706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718296, 31.398743, 37.295364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490300, 0.851425, -0.186228,
		0.553034, 0.469076, 0.688565,
		0.673617, 0.234613, -0.700855,
		35.920380, 31.469126, 37.085110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532101, 32.022270, 37.632488>,  <35.448849, 31.304897, 37.575706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532101, 32.022270, 37.632488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696053, 31.944084, 37.276108>,  <35.794426, 31.897171, 37.062279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696053, 31.944084, 37.276108>,  <35.532101, 32.022270, 37.632488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696053, 31.944084, 37.276108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456068, 0.801989, -0.385767,
		0.789935, 0.564452, 0.239576,
		0.409884, -0.195468, -0.890947,
		35.819019, 31.885445, 37.008823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819347, 32.714245, 37.378803>,  <35.532101, 32.022270, 37.632488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819347, 32.714245, 37.378803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802956, 32.494404, 37.045036>,  <35.793121, 32.362499, 36.844776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802956, 32.494404, 37.045036>,  <35.819347, 32.714245, 37.378803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802956, 32.494404, 37.045036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410323, 0.770705, -0.487492,
		0.911019, 0.322406, -0.257097,
		-0.040975, -0.549607, -0.834418,
		35.790665, 32.329521, 36.794712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798477, 33.233986, 36.933399>,  <35.819347, 32.714245, 37.378803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798477, 33.233986, 36.933399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688549, 32.915020, 36.718513>,  <35.622593, 32.723640, 36.589581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688549, 32.915020, 36.718513>,  <35.798477, 33.233986, 36.933399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688549, 32.915020, 36.718513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519882, 0.593248, -0.614638,
		0.808824, 0.110372, -0.577600,
		-0.274821, -0.797417, -0.537214,
		35.606102, 32.675797, 36.557350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850410, 33.463726, 36.207863>,  <35.798477, 33.233986, 36.933399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850410, 33.463726, 36.207863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605793, 33.152611, 36.265907>,  <35.459023, 32.965942, 36.300735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605793, 33.152611, 36.265907>,  <35.850410, 33.463726, 36.207863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605793, 33.152611, 36.265907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701726, 0.448446, -0.553603,
		0.365512, -0.440381, -0.820040,
		-0.611540, -0.777792, 0.145115,
		35.422333, 32.919273, 36.309441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.782967, 28.154819, 40.277245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.418022, 28.129473, 40.439030>,  <40.199055, 28.114265, 40.536098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.418022, 28.129473, 40.439030>,  <40.782967, 28.154819, 40.277245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418022, 28.129473, 40.439030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407604, 0.232901, -0.882959,
		-0.038250, -0.970434, -0.238316,
		-0.912357, -0.063365, 0.404461,
		40.144314, 28.110462, 40.560368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422749, 27.778118, 39.921703>,  <40.782967, 28.154819, 40.277245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422749, 27.778118, 39.921703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.146095, 27.996294, 40.111076>,  <39.980103, 28.127199, 40.224701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.146095, 27.996294, 40.111076>,  <40.422749, 27.778118, 39.921703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146095, 27.996294, 40.111076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415200, 0.236086, -0.878562,
		-0.590974, -0.804213, 0.063182,
		-0.691635, 0.545440, 0.473430,
		39.938606, 28.159925, 40.253105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838913, 27.684530, 39.504421>,  <40.422749, 27.778118, 39.921703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838913, 27.684530, 39.504421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.726139, 27.994452, 39.730762>,  <39.658474, 28.180405, 39.866570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.726139, 27.994452, 39.730762>,  <39.838913, 27.684530, 39.504421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726139, 27.994452, 39.730762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607427, 0.312379, -0.730378,
		-0.742660, -0.549635, 0.382565,
		-0.281936, 0.774803, 0.565855,
		39.641560, 28.226892, 39.900520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246006, 27.676340, 39.408108>,  <39.838913, 27.684530, 39.504421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246006, 27.676340, 39.408108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.302490, 28.049812, 39.539745>,  <39.336380, 28.273895, 39.618729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.302490, 28.049812, 39.539745>,  <39.246006, 27.676340, 39.408108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302490, 28.049812, 39.539745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610507, 0.343817, -0.713492,
		-0.779320, -0.100160, 0.618569,
		0.141212, 0.933679, 0.329092,
		39.344852, 28.329916, 39.638474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603966, 27.992708, 39.521866>,  <39.246006, 27.676340, 39.408108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603966, 27.992708, 39.521866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.852150, 28.305067, 39.492947>,  <39.001060, 28.492481, 39.475594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.852150, 28.305067, 39.492947>,  <38.603966, 27.992708, 39.521866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852150, 28.305067, 39.492947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697918, 0.507772, -0.505053,
		-0.357682, 0.363826, 0.860055,
		0.620463, 0.780896, -0.072300,
		39.038288, 28.539335, 39.471256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111492, 28.591240, 39.558285>,  <38.603966, 27.992708, 39.521866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111492, 28.591240, 39.558285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.441944, 28.754148, 39.402523>,  <38.640217, 28.851894, 39.309067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.441944, 28.754148, 39.402523>,  <38.111492, 28.591240, 39.558285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441944, 28.754148, 39.402523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562403, 0.553361, -0.614405,
		-0.034750, 0.726582, 0.686201,
		0.826133, 0.407272, -0.389403,
		38.689785, 28.876329, 39.285702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013496, 29.239895, 39.632179>,  <38.111492, 28.591240, 39.558285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013496, 29.239895, 39.632179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.294376, 29.233061, 39.347469>,  <38.462902, 29.228960, 39.176643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.294376, 29.233061, 39.347469>,  <38.013496, 29.239895, 39.632179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294376, 29.233061, 39.347469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545057, 0.630294, -0.552850,
		0.458076, 0.776169, 0.433277,
		0.702196, -0.017087, -0.711779,
		38.505035, 29.227936, 39.133934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168606, 29.928879, 39.462986>,  <38.013496, 29.239895, 39.632179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168606, 29.928879, 39.462986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.312546, 29.750803, 39.135006>,  <38.398911, 29.643957, 38.938217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.312546, 29.750803, 39.135006>,  <38.168606, 29.928879, 39.462986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312546, 29.750803, 39.135006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517145, 0.636297, -0.572439,
		0.776574, 0.630024, -0.001256,
		0.359851, -0.445191, -0.819946,
		38.420502, 29.617245, 38.889023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484642, 30.438063, 39.127613>,  <38.168606, 29.928879, 39.462986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484642, 30.438063, 39.127613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.402401, 30.155573, 38.856625>,  <38.353054, 29.986078, 38.694031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.402401, 30.155573, 38.856625>,  <38.484642, 30.438063, 39.127613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402401, 30.155573, 38.856625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529825, 0.662364, -0.529679,
		0.822807, 0.250039, -0.510361,
		-0.205605, -0.706226, -0.677475,
		38.340721, 29.943705, 38.653381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106674, 30.865070, 39.480286>,  <38.484642, 30.438063, 39.127613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106674, 30.865070, 39.480286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.895569, 31.170078, 39.629967>,  <38.768906, 31.353083, 39.719776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.895569, 31.170078, 39.629967>,  <39.106674, 30.865070, 39.480286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895569, 31.170078, 39.629967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238851, -0.556011, 0.796117,
		0.815115, 0.330784, 0.475572,
		-0.527766, 0.762518, 0.374205,
		38.737240, 31.398834, 39.742229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376549, 30.890291, 40.150818>,  <39.106674, 30.865070, 39.480286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376549, 30.890291, 40.150818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.008438, 31.046780, 40.148418>,  <38.787571, 31.140673, 40.146976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.008438, 31.046780, 40.148418>,  <39.376549, 30.890291, 40.150818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008438, 31.046780, 40.148418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183902, -0.418958, 0.889188,
		0.345354, 0.819403, 0.457503,
		-0.920278, 0.391220, -0.006001,
		38.732353, 31.164146, 40.146618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383408, 31.164917, 40.724262>,  <39.376549, 30.890291, 40.150818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383408, 31.164917, 40.724262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.987324, 31.188347, 40.673565>,  <38.749676, 31.202406, 40.643147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.987324, 31.188347, 40.673565>,  <39.383408, 31.164917, 40.724262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987324, 31.188347, 40.673565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139475, -0.373440, 0.917109,
		0.006390, 0.925803, 0.377952,
		-0.990205, 0.058576, -0.126740,
		38.690262, 31.205919, 40.635544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091660, 31.487650, 41.282612>,  <39.383408, 31.164917, 40.724262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091660, 31.487650, 41.282612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.786190, 31.284168, 41.123600>,  <38.602909, 31.162079, 41.028194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.786190, 31.284168, 41.123600>,  <39.091660, 31.487650, 41.282612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786190, 31.284168, 41.123600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356746, -0.180702, 0.916558,
		-0.538090, 0.841765, -0.043481,
		-0.763670, -0.508702, -0.397530,
		38.557091, 31.131557, 41.004341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573578, 31.570593, 41.709629>,  <39.091660, 31.487650, 41.282612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573578, 31.570593, 41.709629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.451153, 31.239489, 41.521530>,  <38.377697, 31.040825, 41.408669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.451153, 31.239489, 41.521530>,  <38.573578, 31.570593, 41.709629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451153, 31.239489, 41.521530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271555, -0.397524, 0.876488,
		-0.912460, 0.395958, -0.103117,
		-0.306061, -0.827763, -0.470250,
		38.359333, 30.991159, 41.380455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973663, 31.423347, 42.020420>,  <38.573578, 31.570593, 41.709629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973663, 31.423347, 42.020420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.110634, 31.092018, 41.843052>,  <38.192818, 30.893221, 41.736629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.110634, 31.092018, 41.843052>,  <37.973663, 31.423347, 42.020420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110634, 31.092018, 41.843052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061916, -0.490821, 0.869058,
		-0.937502, -0.270134, -0.219356,
		0.342427, -0.828325, -0.443420,
		38.213364, 30.843521, 41.710026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485123, 30.932056, 42.126450>,  <37.973663, 31.423347, 42.020420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485123, 30.932056, 42.126450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.843529, 30.765671, 42.064320>,  <38.058575, 30.665840, 42.027042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.843529, 30.765671, 42.064320>,  <37.485123, 30.932056, 42.126450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843529, 30.765671, 42.064320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005715, -0.360600, 0.932703,
		-0.443981, -0.834831, -0.325481,
		0.896018, -0.415963, -0.155329,
		38.112335, 30.640882, 42.017719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459213, 30.304119, 42.546761>,  <37.485123, 30.932056, 42.126450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459213, 30.304119, 42.546761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.847042, 30.281258, 42.451546>,  <38.079739, 30.267542, 42.394417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.847042, 30.281258, 42.451546>,  <37.459213, 30.304119, 42.546761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847042, 30.281258, 42.451546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192892, -0.420351, 0.886622,
		-0.150729, -0.905560, -0.396537,
		0.969574, -0.057151, -0.238034,
		38.137913, 30.264112, 42.380135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708626, 29.568581, 42.757523>,  <37.459213, 30.304119, 42.546761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708626, 29.568581, 42.757523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038910, 29.789459, 42.711430>,  <38.237080, 29.921988, 42.683773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038910, 29.789459, 42.711430>,  <37.708626, 29.568581, 42.757523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038910, 29.789459, 42.711430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416798, -0.459581, 0.784261,
		0.380107, -0.695602, -0.609636,
		0.825710, 0.552198, -0.115236,
		38.286625, 29.955118, 42.676857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230499, 29.132414, 42.674477>,  <37.708626, 29.568581, 42.757523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230499, 29.132414, 42.674477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.430119, 29.458643, 42.791641>,  <38.549889, 29.654381, 42.861938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.430119, 29.458643, 42.791641>,  <38.230499, 29.132414, 42.674477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430119, 29.458643, 42.791641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581500, -0.565772, 0.584603,
		0.642506, -0.121417, -0.756600,
		0.499044, 0.815574, 0.292908,
		38.579830, 29.703316, 42.879513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958786, 29.016375, 42.593678>,  <38.230499, 29.132414, 42.674477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958786, 29.016375, 42.593678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.903492, 29.293259, 42.877010>,  <38.870316, 29.459389, 43.047012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.903492, 29.293259, 42.877010>,  <38.958786, 29.016375, 42.593678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903492, 29.293259, 42.877010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647521, -0.478002, 0.593490,
		0.749404, 0.540705, -0.382141,
		-0.138239, 0.692208, 0.708334,
		38.862019, 29.500921, 43.089512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698994, 29.036041, 43.025463>,  <38.958786, 29.016375, 42.593678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698994, 29.036041, 43.025463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.443321, 29.282927, 43.208984>,  <39.289917, 29.431057, 43.319099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.443321, 29.282927, 43.208984>,  <39.698994, 29.036041, 43.025463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443321, 29.282927, 43.208984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400324, -0.242363, 0.883743,
		0.656654, 0.748539, -0.092172,
		-0.639176, 0.617211, 0.458807,
		39.251568, 29.468090, 43.346626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035172, 29.481232, 43.483154>,  <39.698994, 29.036041, 43.025463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035172, 29.481232, 43.483154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.682186, 29.468296, 43.670860>,  <39.470394, 29.460535, 43.783485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.682186, 29.468296, 43.670860>,  <40.035172, 29.481232, 43.483154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682186, 29.468296, 43.670860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465926, -0.197054, 0.862602,
		0.064576, 0.979859, 0.188960,
		-0.882464, -0.032338, 0.469266,
		39.417446, 29.458595, 43.811642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053974, 30.037109, 44.019470>,  <40.035172, 29.481232, 43.483154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053974, 30.037109, 44.019470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.789570, 29.753981, 44.119110>,  <39.630928, 29.584103, 44.178894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.789570, 29.753981, 44.119110>,  <40.053974, 30.037109, 44.019470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789570, 29.753981, 44.119110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491405, -0.157457, 0.856579,
		-0.567084, 0.688617, 0.451909,
		-0.661011, -0.707823, 0.249099,
		39.591267, 29.541634, 44.193840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.829304, 29.583311, 45.160801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.228718, 29.604893, 45.162498>,  <35.468365, 29.617842, 45.163517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.228718, 29.604893, 45.162498>,  <34.829304, 29.583311, 45.160801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228718, 29.604893, 45.162498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032615, 0.662474, -0.748374,
		-0.043190, 0.747139, 0.663263,
		0.998534, 0.053955, 0.004244,
		35.528278, 29.621078, 45.163773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933796, 30.346657, 44.967861>,  <34.829304, 29.583311, 45.160801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933796, 30.346657, 44.967861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.268284, 30.140333, 44.893368>,  <35.468975, 30.016539, 44.848671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.268284, 30.140333, 44.893368>,  <34.933796, 30.346657, 44.967861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268284, 30.140333, 44.893368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102249, 0.480282, -0.871134,
		0.538781, 0.709416, 0.454361,
		0.836218, -0.515808, -0.186229,
		35.519150, 29.985590, 44.837498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375412, 30.846161, 44.735977>,  <34.933796, 30.346657, 44.967861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375412, 30.846161, 44.735977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.505779, 30.489796, 44.609455>,  <35.584000, 30.275976, 44.533543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.505779, 30.489796, 44.609455>,  <35.375412, 30.846161, 44.735977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505779, 30.489796, 44.609455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052979, 0.351265, -0.934776,
		0.943911, 0.287906, 0.161685,
		0.325922, -0.890911, -0.316310,
		35.603558, 30.222523, 44.514561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992420, 30.939817, 44.315960>,  <35.375412, 30.846161, 44.735977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992420, 30.939817, 44.315960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.841541, 30.587856, 44.200375>,  <35.751015, 30.376680, 44.131023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.841541, 30.587856, 44.200375>,  <35.992420, 30.939817, 44.315960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841541, 30.587856, 44.200375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012064, 0.307313, -0.951532,
		0.926056, -0.362398, -0.105301,
		-0.377194, -0.879901, -0.288961,
		35.728382, 30.323887, 44.113686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503777, 30.748333, 43.779484>,  <35.992420, 30.939817, 44.315960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503777, 30.748333, 43.779484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.136665, 30.591133, 43.756737>,  <35.916397, 30.496813, 43.743088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.136665, 30.591133, 43.756737>,  <36.503777, 30.748333, 43.779484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136665, 30.591133, 43.756737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115529, 0.401287, -0.908637,
		0.379905, -0.827362, -0.413697,
		-0.917783, -0.392989, -0.056866,
		35.861332, 30.473234, 43.739674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420185, 30.524910, 43.031029>,  <36.503777, 30.748333, 43.779484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420185, 30.524910, 43.031029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.046356, 30.522707, 43.173325>,  <35.822060, 30.521385, 43.258701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.046356, 30.522707, 43.173325>,  <36.420185, 30.524910, 43.031029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046356, 30.522707, 43.173325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337857, 0.327098, -0.882530,
		-0.111502, -0.944974, -0.307556,
		-0.934569, -0.005506, 0.355738,
		35.765984, 30.521055, 43.280045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872044, 30.143858, 42.503353>,  <36.420185, 30.524910, 43.031029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872044, 30.143858, 42.503353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.664562, 30.395441, 42.734997>,  <35.540073, 30.546391, 42.873981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.664562, 30.395441, 42.734997>,  <35.872044, 30.143858, 42.503353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664562, 30.395441, 42.734997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483792, 0.342545, -0.805362,
		-0.704909, -0.697907, 0.126608,
		-0.518699, 0.628959, 0.579105,
		35.508953, 30.584129, 42.908730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259308, 30.216589, 42.155857>,  <35.872044, 30.143858, 42.503353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259308, 30.216589, 42.155857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.192791, 30.503550, 42.426464>,  <35.152882, 30.675726, 42.588829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.192791, 30.503550, 42.426464>,  <35.259308, 30.216589, 42.155857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192791, 30.503550, 42.426464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421604, 0.568472, -0.706463,
		-0.891401, -0.402705, 0.207926,
		-0.166296, 0.717404, 0.676519,
		35.142902, 30.718771, 42.629421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497772, 30.350058, 42.158012>,  <35.259308, 30.216589, 42.155857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497772, 30.350058, 42.158012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.701702, 30.661736, 42.303852>,  <34.824059, 30.848743, 42.391357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.701702, 30.661736, 42.303852>,  <34.497772, 30.350058, 42.158012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701702, 30.661736, 42.303852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380312, 0.584294, -0.716912,
		-0.771649, 0.226837, 0.594224,
		0.509824, 0.779196, 0.364601,
		34.854649, 30.895494, 42.413231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937778, 30.893402, 42.244080>,  <34.497772, 30.350058, 42.158012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937778, 30.893402, 42.244080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.302547, 31.057358, 42.236168>,  <34.521408, 31.155731, 42.231422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.302547, 31.057358, 42.236168>,  <33.937778, 30.893402, 42.244080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302547, 31.057358, 42.236168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323314, 0.687954, -0.649759,
		-0.252723, 0.598924, 0.759883,
		0.911921, 0.409890, -0.019779,
		34.576122, 31.180325, 42.230236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917683, 31.602961, 42.390064>,  <33.937778, 30.893402, 42.244080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917683, 31.602961, 42.390064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.275948, 31.596579, 42.212284>,  <34.490906, 31.592751, 42.105618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.275948, 31.596579, 42.212284>,  <33.917683, 31.602961, 42.390064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275948, 31.596579, 42.212284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359842, 0.561281, -0.745304,
		0.261352, 0.827472, 0.496977,
		0.895661, -0.015954, -0.444451,
		34.544647, 31.591793, 42.078949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175949, 32.280613, 42.252041>,  <33.917683, 31.602961, 42.390064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175949, 32.280613, 42.252041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.349815, 32.048313, 41.976707>,  <34.454136, 31.908934, 41.811508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.349815, 32.048313, 41.976707>,  <34.175949, 32.280613, 42.252041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349815, 32.048313, 41.976707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284694, 0.636507, -0.716805,
		0.854410, 0.507532, 0.111331,
		0.434664, -0.580750, -0.688329,
		34.480213, 31.874088, 41.770210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445637, 32.721432, 41.843357>,  <34.175949, 32.280613, 42.252041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445637, 32.721432, 41.843357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.469154, 32.398121, 41.609013>,  <34.483265, 32.204136, 41.468407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.469154, 32.398121, 41.609013>,  <34.445637, 32.721432, 41.843357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469154, 32.398121, 41.609013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263556, 0.553484, -0.790059,
		0.962851, 0.200858, -0.180485,
		0.058794, -0.808277, -0.585860,
		34.486794, 32.155640, 41.433254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007828, 32.887424, 41.299240>,  <34.445637, 32.721432, 41.843357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007828, 32.887424, 41.299240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.763405, 32.597179, 41.172688>,  <34.616753, 32.423031, 41.096756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.763405, 32.597179, 41.172688>,  <35.007828, 32.887424, 41.299240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763405, 32.597179, 41.172688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400682, 0.628219, -0.666929,
		0.682691, -0.280760, -0.674616,
		-0.611054, -0.725613, -0.316384,
		34.580090, 32.379494, 41.077774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720707, 33.026089, 41.140568>,  <35.007828, 32.887424, 41.299240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720707, 33.026089, 41.140568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.892494, 33.353081, 41.294079>,  <35.995567, 33.549274, 41.386185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.892494, 33.353081, 41.294079>,  <35.720707, 33.026089, 41.140568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892494, 33.353081, 41.294079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072312, -0.454725, 0.887691,
		0.900183, -0.353482, -0.254403,
		0.429467, 0.817481, 0.383775,
		36.021336, 33.598324, 41.409210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228497, 32.842525, 41.620338>,  <35.720707, 33.026089, 41.140568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228497, 32.842525, 41.620338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.190170, 33.225060, 41.730789>,  <36.167175, 33.454578, 41.797062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.190170, 33.225060, 41.730789>,  <36.228497, 32.842525, 41.620338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190170, 33.225060, 41.730789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025665, -0.274940, 0.961119,
		0.995068, 0.099180, 0.001800,
		-0.095819, 0.956332, 0.276129,
		36.161427, 33.511959, 41.813629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807884, 32.961990, 42.054211>,  <36.228497, 32.842525, 41.620338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807884, 32.961990, 42.054211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.508705, 33.212852, 42.141163>,  <36.329197, 33.363369, 42.193333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.508705, 33.212852, 42.141163>,  <36.807884, 32.961990, 42.054211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508705, 33.212852, 42.141163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050670, -0.272591, 0.960795,
		0.661824, 0.729636, 0.172105,
		-0.747945, 0.627156, 0.217378,
		36.284321, 33.401001, 42.206375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021072, 33.387867, 42.551659>,  <36.807884, 32.961990, 42.054211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021072, 33.387867, 42.551659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.621880, 33.400593, 42.573616>,  <36.382362, 33.408230, 42.586788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.621880, 33.400593, 42.573616>,  <37.021072, 33.387867, 42.551659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621880, 33.400593, 42.573616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047507, -0.198700, 0.978908,
		0.042050, 0.979544, 0.196789,
		-0.997985, 0.031814, 0.054891,
		36.322483, 33.410137, 42.590084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949005, 33.793625, 43.082573>,  <37.021072, 33.387867, 42.551659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949005, 33.793625, 43.082573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.585541, 33.628010, 43.060993>,  <36.367462, 33.528641, 43.048046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.585541, 33.628010, 43.060993>,  <36.949005, 33.793625, 43.082573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585541, 33.628010, 43.060993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117441, 0.129451, 0.984607,
		-0.400684, 0.901006, -0.166252,
		-0.908658, -0.414041, -0.053946,
		36.312943, 33.503796, 43.044811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588413, 34.092518, 43.582207>,  <36.949005, 33.793625, 43.082573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588413, 34.092518, 43.582207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.353630, 33.779179, 43.500378>,  <36.212761, 33.591175, 43.451283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.353630, 33.779179, 43.500378>,  <36.588413, 34.092518, 43.582207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353630, 33.779179, 43.500378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185695, -0.115682, 0.975774,
		-0.788033, 0.610727, -0.077563,
		-0.586959, -0.783345, -0.204571,
		36.177544, 33.544174, 43.439007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085533, 34.113407, 44.065960>,  <36.588413, 34.092518, 43.582207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085533, 34.113407, 44.065960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.039345, 33.732212, 43.953903>,  <36.011631, 33.503494, 43.886669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.039345, 33.732212, 43.953903>,  <36.085533, 34.113407, 44.065960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039345, 33.732212, 43.953903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278311, -0.239689, 0.930103,
		-0.953525, 0.185365, -0.237550,
		-0.115471, -0.952990, -0.280139,
		36.004704, 33.446316, 43.869862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434486, 33.832340, 44.432453>,  <36.085533, 34.113407, 44.065960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434486, 33.832340, 44.432453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.667797, 33.533092, 44.305901>,  <35.807785, 33.353542, 44.229969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.667797, 33.533092, 44.305901>,  <35.434486, 33.832340, 44.432453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667797, 33.533092, 44.305901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101302, -0.453462, 0.885500,
		-0.805931, -0.484442, -0.340281,
		0.583278, -0.748123, -0.316384,
		35.842781, 33.308655, 44.210987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143974, 33.183224, 44.660370>,  <35.434486, 33.832340, 44.432453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143974, 33.183224, 44.660370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.530857, 33.107250, 44.592922>,  <35.762985, 33.061665, 44.552452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.530857, 33.107250, 44.592922>,  <35.143974, 33.183224, 44.660370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530857, 33.107250, 44.592922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071183, -0.434590, 0.897811,
		-0.243805, -0.880373, -0.406819,
		0.967208, -0.189932, -0.168623,
		35.821018, 33.050270, 44.542336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204472, 32.481861, 44.955814>,  <35.143974, 33.183224, 44.660370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204472, 32.481861, 44.955814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.587158, 32.592743, 44.920368>,  <35.816769, 32.659271, 44.899101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.587158, 32.592743, 44.920368>,  <35.204472, 32.481861, 44.955814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587158, 32.592743, 44.920368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213323, -0.460859, 0.861454,
		0.197956, -0.843071, -0.500045,
		0.956717, 0.277201, -0.088617,
		35.874172, 32.675903, 44.893784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516747, 31.900133, 45.171623>,  <35.204472, 32.481861, 44.955814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516747, 31.900133, 45.171623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.810471, 32.168282, 45.214306>,  <35.986706, 32.329170, 45.239918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.810471, 32.168282, 45.214306>,  <35.516747, 31.900133, 45.171623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810471, 32.168282, 45.214306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359289, -0.517205, 0.776795,
		0.575933, -0.532070, -0.620647,
		0.734311, 0.670373, 0.106709,
		36.030766, 32.369392, 45.246319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207039, 31.602123, 45.128098>,  <35.516747, 31.900133, 45.171623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207039, 31.602123, 45.128098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.254494, 31.940531, 45.336010>,  <36.282967, 32.143574, 45.460758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.254494, 31.940531, 45.336010>,  <36.207039, 31.602123, 45.128098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254494, 31.940531, 45.336010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388532, -0.521294, 0.759799,
		0.913766, 0.111814, -0.390550,
		0.118635, 0.846020, 0.519784,
		36.290085, 32.194336, 45.491943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861752, 31.573408, 45.330593>,  <36.207039, 31.602123, 45.128098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861752, 31.573408, 45.330593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.700600, 31.822954, 45.598469>,  <36.603909, 31.972683, 45.759193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.700600, 31.822954, 45.598469>,  <36.861752, 31.573408, 45.330593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700600, 31.822954, 45.598469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617787, -0.354500, 0.701904,
		0.675297, 0.696506, -0.242595,
		-0.402881, 0.623866, 0.669685,
		36.579735, 32.010113, 45.799374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403889, 31.742510, 45.837948>,  <36.861752, 31.573408, 45.330593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403889, 31.742510, 45.837948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.074429, 31.837030, 46.044155>,  <36.876751, 31.893744, 46.167877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.074429, 31.837030, 46.044155>,  <37.403889, 31.742510, 45.837948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074429, 31.837030, 46.044155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398814, -0.404910, 0.822797,
		0.403166, 0.883295, 0.239265,
		-0.823653, 0.236302, 0.515516,
		36.827332, 31.907921, 46.198811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966679, 32.151863, 46.113285>,  <37.403889, 31.742510, 45.837948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966679, 32.151863, 46.113285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.356308, 32.131252, 46.025177>,  <38.590088, 32.118885, 45.972313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.356308, 32.131252, 46.025177>,  <37.966679, 32.151863, 46.113285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356308, 32.131252, 46.025177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167527, 0.490038, -0.855452,
		0.152022, 0.870177, 0.468702,
		0.974076, -0.051527, -0.220274,
		38.648529, 32.115795, 45.959095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167099, 32.854515, 45.788002>,  <37.966679, 32.151863, 46.113285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167099, 32.854515, 45.788002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.436882, 32.579807, 45.679585>,  <38.598751, 32.414982, 45.614536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.436882, 32.579807, 45.679585>,  <38.167099, 32.854515, 45.788002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436882, 32.579807, 45.679585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119033, 0.463449, -0.878092,
		0.728656, 0.559973, 0.394324,
		0.674457, -0.686765, -0.271039,
		38.639217, 32.373779, 45.598274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633698, 33.247311, 45.475990>,  <38.167099, 32.854515, 45.788002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633698, 33.247311, 45.475990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.727547, 32.883320, 45.339233>,  <38.783855, 32.664925, 45.257179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.727547, 32.883320, 45.339233>,  <38.633698, 33.247311, 45.475990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727547, 32.883320, 45.339233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245746, 0.395811, -0.884841,
		0.940511, 0.123585, 0.316489,
		0.234623, -0.909979, -0.341894,
		38.797932, 32.610325, 45.236664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252884, 33.296261, 44.992813>,  <38.633698, 33.247311, 45.475990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252884, 33.296261, 44.992813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.076088, 32.949356, 44.901157>,  <38.970009, 32.741215, 44.846165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.076088, 32.949356, 44.901157>,  <39.252884, 33.296261, 44.992813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076088, 32.949356, 44.901157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048563, 0.231939, -0.971517,
		0.895705, -0.440528, -0.060398,
		-0.441989, -0.867260, -0.229142,
		38.943493, 32.689178, 44.832417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667336, 32.911018, 44.496429>,  <39.252884, 33.296261, 44.992813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667336, 32.911018, 44.496429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.304306, 32.754757, 44.434845>,  <39.086491, 32.660999, 44.397892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.304306, 32.754757, 44.434845>,  <39.667336, 32.911018, 44.496429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304306, 32.754757, 44.434845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075815, 0.208193, -0.975145,
		0.412999, -0.896686, -0.159333,
		-0.907570, -0.390654, -0.153966,
		39.032036, 32.637562, 44.388657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756603, 32.403427, 44.006130>,  <39.667336, 32.911018, 44.496429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756603, 32.403427, 44.006130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.379791, 32.536457, 43.988338>,  <39.153706, 32.616276, 43.977665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.379791, 32.536457, 43.988338>,  <39.756603, 32.403427, 44.006130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379791, 32.536457, 43.988338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120415, 0.211365, -0.969961,
		-0.313188, -0.919085, -0.239158,
		-0.942026, 0.332579, -0.044475,
		39.097183, 32.636230, 43.974995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531528, 32.178299, 43.335323>,  <39.756603, 32.403427, 44.006130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531528, 32.178299, 43.335323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.285954, 32.482044, 43.421539>,  <39.138611, 32.664291, 43.473267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.285954, 32.482044, 43.421539>,  <39.531528, 32.178299, 43.335323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285954, 32.482044, 43.421539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072479, 0.326130, -0.942542,
		-0.786022, -0.563037, -0.255261,
		-0.613935, 0.759360, 0.215537,
		39.101772, 32.709854, 43.486202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083248, 32.154934, 42.825306>,  <39.531528, 32.178299, 43.335323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083248, 32.154934, 42.825306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.045219, 32.530418, 42.957840>,  <39.022404, 32.755711, 43.037361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.045219, 32.530418, 42.957840>,  <39.083248, 32.154934, 42.825306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045219, 32.530418, 42.957840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094267, 0.339839, -0.935748,
		-0.990997, -0.057730, -0.120799,
		-0.095073, 0.938710, 0.331337,
		39.016697, 32.812031, 43.057240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613434, 32.472279, 42.333439>,  <39.083248, 32.154934, 42.825306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613434, 32.472279, 42.333439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.778671, 32.783398, 42.522915>,  <38.877815, 32.970070, 42.636600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.778671, 32.783398, 42.522915>,  <38.613434, 32.472279, 42.333439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778671, 32.783398, 42.522915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143313, 0.458140, -0.877251,
		-0.899342, 0.430271, 0.077785,
		0.413092, 0.777801, 0.473688,
		38.902599, 33.016739, 42.665020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411686, 33.058605, 41.994061>,  <38.613434, 32.472279, 42.333439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411686, 33.058605, 41.994061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.719116, 33.216854, 42.195168>,  <38.903572, 33.311806, 42.315834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.719116, 33.216854, 42.195168>,  <38.411686, 33.058605, 41.994061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719116, 33.216854, 42.195168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255103, 0.531173, -0.807947,
		-0.586703, 0.749223, 0.307319,
		0.768572, 0.395626, 0.502770,
		38.949688, 33.335541, 42.345997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292068, 33.777500, 41.846619>,  <38.411686, 33.058605, 41.994061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292068, 33.777500, 41.846619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.672413, 33.701897, 41.944706>,  <38.900620, 33.656536, 42.003559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.672413, 33.701897, 41.944706>,  <38.292068, 33.777500, 41.846619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672413, 33.701897, 41.944706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308562, 0.643542, -0.700459,
		-0.025420, 0.741707, 0.670242,
		0.950864, -0.189006, 0.245222,
		38.957672, 33.645195, 42.018272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577263, 34.408089, 41.767452>,  <38.292068, 33.777500, 41.846619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577263, 34.408089, 41.767452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.913174, 34.191017, 41.760807>,  <39.114719, 34.060772, 41.756821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.913174, 34.191017, 41.760807>,  <38.577263, 34.408089, 41.767452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913174, 34.191017, 41.760807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422774, 0.672804, -0.607122,
		0.340649, 0.502824, 0.794435,
		0.839774, -0.542682, -0.016609,
		39.165108, 34.028214, 41.755825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063263, 34.831535, 41.782280>,  <38.577263, 34.408089, 41.767452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063263, 34.831535, 41.782280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.208057, 34.508705, 41.595695>,  <39.294933, 34.315006, 41.483746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.208057, 34.508705, 41.595695>,  <39.063263, 34.831535, 41.782280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208057, 34.508705, 41.595695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062275, 0.520217, -0.851761,
		0.930099, 0.279281, 0.238574,
		0.361991, -0.807079, -0.466461,
		39.316654, 34.266582, 41.455757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607735, 35.022797, 41.372723>,  <39.063263, 34.831535, 41.782280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607735, 35.022797, 41.372723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.524055, 34.678619, 41.186874>,  <39.473846, 34.472115, 41.075363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.524055, 34.678619, 41.186874>,  <39.607735, 35.022797, 41.372723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524055, 34.678619, 41.186874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041622, 0.466872, -0.883345,
		0.976987, -0.204135, -0.061856,
		-0.209200, -0.860441, -0.464624,
		39.461296, 34.420486, 41.047485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.183031, 27.870628, 38.884045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.264414, 28.110935, 39.193287>,  <28.313244, 28.255119, 39.378830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.264414, 28.110935, 39.193287>,  <28.183031, 27.870628, 38.884045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264414, 28.110935, 39.193287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695638, 0.644351, -0.317647,
		-0.688980, -0.473171, 0.549013,
		0.203456, 0.600767, 0.773101,
		28.325451, 28.291164, 39.425217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605419, 28.212053, 39.181767>,  <28.183031, 27.870628, 38.884045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605419, 28.212053, 39.181767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.883253, 28.477934, 39.291840>,  <28.049953, 28.637463, 39.357883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.883253, 28.477934, 39.291840>,  <27.605419, 28.212053, 39.181767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.883253, 28.477934, 39.291840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646452, 0.744523, -0.166689,
		-0.315680, -0.062113, 0.946831,
		0.694584, 0.664701, 0.275184,
		28.091629, 28.677343, 39.374393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173519, 28.586830, 39.632057>,  <27.605419, 28.212053, 39.181767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173519, 28.586830, 39.632057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.499695, 28.787561, 39.516659>,  <27.695400, 28.907999, 39.447422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.499695, 28.787561, 39.516659>,  <27.173519, 28.586830, 39.632057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499695, 28.787561, 39.516659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551440, 0.825009, -0.123588,
		0.175990, 0.259866, 0.949472,
		0.815439, 0.501827, -0.288494,
		27.744326, 28.938110, 39.430111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.980059, 29.169701, 39.682545>,  <27.173519, 28.586830, 39.632057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.980059, 29.169701, 39.682545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.324348, 29.261208, 39.500637>,  <27.530922, 29.316111, 39.391491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.324348, 29.261208, 39.500637>,  <26.980059, 29.169701, 39.682545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324348, 29.261208, 39.500637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377548, 0.886111, -0.268823,
		0.341482, 0.403082, 0.849067,
		0.860725, 0.228766, -0.454774,
		27.582565, 29.329838, 39.364204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249046, 29.823671, 39.966614>,  <26.980059, 29.169701, 39.682545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249046, 29.823671, 39.966614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.395611, 29.772694, 39.597939>,  <27.483549, 29.742107, 39.376736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.395611, 29.772694, 39.597939>,  <27.249046, 29.823671, 39.966614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395611, 29.772694, 39.597939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296787, 0.922824, -0.245588,
		0.881851, 0.363529, 0.300309,
		0.366410, -0.127444, -0.921684,
		27.505533, 29.734461, 39.321434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647266, 30.506590, 39.768673>,  <27.249046, 29.823671, 39.966614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647266, 30.506590, 39.768673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.546556, 30.330891, 39.423729>,  <27.486130, 30.225471, 39.216763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.546556, 30.330891, 39.423729>,  <27.647266, 30.506590, 39.768673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546556, 30.330891, 39.423729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030811, 0.894255, -0.446495,
		0.967296, -0.085846, -0.238684,
		-0.251774, -0.439247, -0.862364,
		27.471024, 30.199116, 39.165020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041597, 30.678995, 39.186790>,  <27.647266, 30.506590, 39.768673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041597, 30.678995, 39.186790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.713837, 30.591452, 38.974873>,  <27.517179, 30.538925, 38.847721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.713837, 30.591452, 38.974873>,  <28.041597, 30.678995, 39.186790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.713837, 30.591452, 38.974873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101329, 0.854384, -0.509667,
		0.564190, -0.471306, -0.677909,
		-0.819403, -0.218857, -0.529792,
		27.468016, 30.525795, 38.815933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171455, 30.975918, 38.569965>,  <28.041597, 30.678995, 39.186790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171455, 30.975918, 38.569965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.782684, 30.894440, 38.522858>,  <27.549421, 30.845552, 38.494595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.782684, 30.894440, 38.522858>,  <28.171455, 30.975918, 38.569965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782684, 30.894440, 38.522858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073197, 0.737443, -0.671431,
		0.223611, -0.643961, -0.731650,
		-0.971926, -0.203694, -0.117765,
		27.491106, 30.833332, 38.487530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080757, 30.875196, 37.899525>,  <28.171455, 30.975918, 38.569965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.080757, 30.875196, 37.899525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.707878, 30.964947, 38.013126>,  <27.484150, 31.018797, 38.081287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.707878, 30.964947, 38.013126>,  <28.080757, 30.875196, 37.899525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707878, 30.964947, 38.013126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052198, 0.693119, -0.718931,
		-0.358161, -0.685011, -0.634414,
		-0.932200, 0.224378, 0.284005,
		27.428219, 31.032261, 38.098328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680859, 30.845840, 37.306690>,  <28.080757, 30.875196, 37.899525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680859, 30.845840, 37.306690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.431461, 31.044367, 37.548328>,  <27.281824, 31.163483, 37.693310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.431461, 31.044367, 37.548328>,  <27.680859, 30.845840, 37.306690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431461, 31.044367, 37.548328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302944, 0.558937, -0.771890,
		-0.720752, -0.664273, -0.198136,
		-0.623491, 0.496317, 0.604092,
		27.244413, 31.193262, 37.729557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047859, 30.887735, 36.901367>,  <27.680859, 30.845840, 37.306690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047859, 30.887735, 36.901367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.055918, 31.186884, 37.166782>,  <27.060753, 31.366373, 37.326031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.055918, 31.186884, 37.166782>,  <27.047859, 30.887735, 36.901367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.055918, 31.186884, 37.166782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235355, 0.648568, -0.723855,
		-0.971700, -0.141585, 0.189082,
		0.020146, 0.747872, 0.663537,
		27.061962, 31.411245, 37.365845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433565, 31.213087, 36.760139>,  <27.047859, 30.887735, 36.901367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433565, 31.213087, 36.760139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.682304, 31.462433, 36.949757>,  <26.831547, 31.612041, 37.063526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.682304, 31.462433, 36.949757>,  <26.433565, 31.213087, 36.760139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.682304, 31.462433, 36.949757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206634, 0.714468, -0.668459,
		-0.755386, 0.317725, 0.573099,
		0.621847, 0.623367, 0.474047,
		26.868858, 31.649443, 37.091972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094316, 31.759222, 36.618431>,  <26.433565, 31.213087, 36.760139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094316, 31.759222, 36.618431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.439938, 31.918186, 36.742027>,  <26.647310, 32.013565, 36.816185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.439938, 31.918186, 36.742027>,  <26.094316, 31.759222, 36.618431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439938, 31.918186, 36.742027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096026, 0.732659, -0.673787,
		-0.494154, 0.552518, 0.671220,
		0.864055, 0.397409, 0.308991,
		26.699154, 32.037411, 36.834724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.028980, 32.471363, 36.631847>,  <26.094316, 31.759222, 36.618431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.028980, 32.471363, 36.631847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.425386, 32.417919, 36.629414>,  <26.663231, 32.385853, 36.627953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.425386, 32.417919, 36.629414>,  <26.028980, 32.471363, 36.631847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.425386, 32.417919, 36.629414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087168, 0.679732, -0.728262,
		0.101441, 0.721189, 0.685272,
		0.991015, -0.133609, -0.006088,
		26.722691, 32.377838, 36.627586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335672, 33.067505, 36.729935>,  <26.028980, 32.471363, 36.631847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335672, 33.067505, 36.729935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.630117, 32.863857, 36.551529>,  <26.806784, 32.741669, 36.444485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.630117, 32.863857, 36.551529>,  <26.335672, 33.067505, 36.729935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630117, 32.863857, 36.551529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061096, 0.706241, -0.705330,
		0.674096, 0.491953, 0.550979,
		0.736113, -0.509123, -0.446018,
		26.850952, 32.711121, 36.417725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740870, 33.568771, 36.522835>,  <26.335672, 33.067505, 36.729935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740870, 33.568771, 36.522835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.903149, 33.269054, 36.313465>,  <27.000517, 33.089226, 36.187843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.903149, 33.269054, 36.313465>,  <26.740870, 33.568771, 36.522835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.903149, 33.269054, 36.313465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408950, 0.660961, -0.629198,
		0.817416, 0.041208, 0.574572,
		0.405698, -0.749288, -0.523428,
		27.024858, 33.044270, 36.156437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494791, 33.584045, 36.508480>,  <26.740870, 33.568771, 36.522835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494791, 33.584045, 36.508480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.415802, 33.399349, 36.162579>,  <27.368408, 33.288532, 35.955036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.415802, 33.399349, 36.162579>,  <27.494791, 33.584045, 36.508480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.415802, 33.399349, 36.162579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558311, 0.672110, -0.486370,
		0.805788, -0.578846, 0.125073,
		-0.197471, -0.461741, -0.864755,
		27.356560, 33.260826, 35.903152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082556, 33.728985, 36.130413>,  <27.494791, 33.584045, 36.508480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.082556, 33.728985, 36.130413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.821472, 33.627720, 35.844791>,  <27.664822, 33.566959, 35.673416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.821472, 33.627720, 35.844791>,  <28.082556, 33.728985, 36.130413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821472, 33.627720, 35.844791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334417, 0.749445, -0.571400,
		0.679806, -0.611750, -0.404506,
		-0.652709, -0.253167, -0.714057,
		27.625660, 33.551769, 35.630573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444887, 33.719196, 35.586651>,  <28.082556, 33.728985, 36.130413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444887, 33.719196, 35.586651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.076416, 33.741615, 35.432617>,  <27.855333, 33.755066, 35.340195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.076416, 33.741615, 35.432617>,  <28.444887, 33.719196, 35.586651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076416, 33.741615, 35.432617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348249, 0.560324, -0.751504,
		0.173653, -0.826374, -0.535677,
		-0.921177, 0.056048, -0.385086,
		27.800062, 33.758430, 35.317093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488468, 33.456463, 34.868168>,  <28.444887, 33.719196, 35.586651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488468, 33.456463, 34.868168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.165009, 33.685486, 34.922226>,  <27.970934, 33.822899, 34.954662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.165009, 33.685486, 34.922226>,  <28.488468, 33.456463, 34.868168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165009, 33.685486, 34.922226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260623, 0.554617, -0.790238,
		-0.527414, -0.603801, -0.597711,
		-0.808647, 0.572560, 0.135148,
		27.922415, 33.857254, 34.962769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061811, 33.765644, 34.633842>,  <28.488468, 33.456463, 34.868168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061811, 33.765644, 34.633842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.157263, 33.939510, 34.981205>,  <29.214533, 34.043831, 35.189621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.157263, 33.939510, 34.981205>,  <29.061811, 33.765644, 34.633842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157263, 33.939510, 34.981205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304741, -0.882584, 0.358020,
		0.922057, 0.179205, -0.343068,
		0.238627, 0.434662, 0.868404,
		29.228851, 34.069908, 35.241726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715502, 33.543873, 34.853485>,  <29.061811, 33.765644, 34.633842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715502, 33.543873, 34.853485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.607700, 33.703960, 35.203842>,  <29.543020, 33.800014, 35.414059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.607700, 33.703960, 35.203842>,  <29.715502, 33.543873, 34.853485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607700, 33.703960, 35.203842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483992, -0.730037, 0.482491,
		0.832538, 0.553959, 0.003045,
		-0.269503, 0.400219, 0.875896,
		29.526850, 33.824024, 35.466610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361773, 33.573906, 35.244404>,  <29.715502, 33.543873, 34.853485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361773, 33.573906, 35.244404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.051430, 33.558716, 35.496311>,  <29.865225, 33.549603, 35.647453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.051430, 33.558716, 35.496311>,  <30.361773, 33.573906, 35.244404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051430, 33.558716, 35.496311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346161, -0.860144, 0.374600,
		0.527466, 0.508636, 0.680492,
		-0.775856, -0.037971, 0.629767,
		29.818672, 33.547325, 35.685242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657553, 33.321922, 35.822159>,  <30.361773, 33.573906, 35.244404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657553, 33.321922, 35.822159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.259886, 33.290432, 35.851650>,  <30.021286, 33.271538, 35.869347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.259886, 33.290432, 35.851650>,  <30.657553, 33.321922, 35.822159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259886, 33.290432, 35.851650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104573, -0.870953, 0.480111,
		0.026419, 0.485020, 0.874104,
		-0.994166, -0.078724, 0.073729,
		29.961636, 33.266815, 35.873768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545387, 33.180462, 36.521481>,  <30.657553, 33.321922, 35.822159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545387, 33.180462, 36.521481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.218967, 33.062702, 36.322529>,  <30.023115, 32.992046, 36.203156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.218967, 33.062702, 36.322529>,  <30.545387, 33.180462, 36.521481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218967, 33.062702, 36.322529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044090, -0.826342, 0.561440,
		-0.576295, 0.480094, 0.661358,
		-0.816052, -0.294395, -0.497384,
		29.974152, 32.974384, 36.173313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203157, 32.876873, 37.062119>,  <30.545387, 33.180462, 36.521481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203157, 32.876873, 37.062119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.040861, 32.731033, 36.726871>,  <29.943483, 32.643532, 36.525723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.040861, 32.731033, 36.726871>,  <30.203157, 32.876873, 37.062119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040861, 32.731033, 36.726871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084550, -0.928032, 0.362777,
		-0.910069, 0.076331, 0.407367,
		-0.405741, -0.364595, -0.838120,
		29.919138, 32.621655, 36.475437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614775, 32.394863, 37.271709>,  <30.203157, 32.876873, 37.062119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614775, 32.394863, 37.271709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.748177, 32.280239, 36.912453>,  <29.828218, 32.211464, 36.696899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.748177, 32.280239, 36.912453>,  <29.614775, 32.394863, 37.271709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748177, 32.280239, 36.912453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162626, -0.920915, 0.354215,
		-0.928616, -0.264193, -0.260527,
		0.333504, -0.286562, -0.898141,
		29.848228, 32.194271, 36.643009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282505, 31.773067, 37.111450>,  <29.614775, 32.394863, 37.271709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282505, 31.773067, 37.111450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.596373, 31.794626, 36.864422>,  <29.784693, 31.807562, 36.716206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.596373, 31.794626, 36.864422>,  <29.282505, 31.773067, 37.111450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596373, 31.794626, 36.864422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210776, -0.960058, 0.184018,
		-0.582982, -0.274561, -0.764688,
		0.784669, 0.053899, -0.617567,
		29.831774, 31.810797, 36.679153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180702, 31.252722, 36.559631>,  <29.282505, 31.773067, 37.111450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180702, 31.252722, 36.559631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.572950, 31.330875, 36.565445>,  <29.808298, 31.377768, 36.568935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.572950, 31.330875, 36.565445>,  <29.180702, 31.252722, 36.559631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572950, 31.330875, 36.565445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182337, -0.937244, 0.297199,
		0.071694, -0.288788, -0.954705,
		0.980619, 0.195386, 0.014538,
		29.867136, 31.389490, 36.569805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578058, 30.635113, 36.236214>,  <29.180702, 31.252722, 36.559631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578058, 30.635113, 36.236214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.826496, 30.843000, 36.470863>,  <29.975559, 30.967733, 36.611652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.826496, 30.843000, 36.470863>,  <29.578058, 30.635113, 36.236214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826496, 30.843000, 36.470863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412076, -0.853243, 0.319640,
		0.666660, 0.043209, -0.744108,
		0.621094, 0.519721, 0.586628,
		30.012825, 30.998917, 36.646851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227438, 30.371120, 36.136822>,  <29.578058, 30.635113, 36.236214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227438, 30.371120, 36.136822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.321743, 30.563007, 36.474884>,  <30.378326, 30.678139, 36.677723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.321743, 30.563007, 36.474884>,  <30.227438, 30.371120, 36.136822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321743, 30.563007, 36.474884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594701, -0.759038, 0.264939,
		0.768601, 0.440153, -0.464239,
		0.235761, 0.479716, 0.845157,
		30.392471, 30.706923, 36.728432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850513, 30.019615, 36.328999>,  <30.227438, 30.371120, 36.136822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850513, 30.019615, 36.328999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.775600, 30.218328, 36.667969>,  <30.730654, 30.337557, 36.871353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.775600, 30.218328, 36.667969>,  <30.850513, 30.019615, 36.328999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775600, 30.218328, 36.667969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355606, -0.769892, 0.529917,
		0.915680, 0.400593, -0.032472,
		-0.187281, 0.496781, 0.847428,
		30.719416, 30.367363, 36.922195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460253, 30.079748, 36.740398>,  <30.850513, 30.019615, 36.328999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460253, 30.079748, 36.740398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.146915, 30.090904, 36.988785>,  <30.958912, 30.097599, 37.137817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.146915, 30.090904, 36.988785>,  <31.460253, 30.079748, 36.740398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146915, 30.090904, 36.988785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255505, -0.896245, 0.362576,
		0.566647, 0.442681, 0.694943,
		-0.783345, 0.027891, 0.620961,
		30.911913, 30.099272, 37.175072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642487, 29.793354, 37.427670>,  <31.460253, 30.079748, 36.740398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642487, 29.793354, 37.427670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.245066, 29.758486, 37.456665>,  <31.006613, 29.737564, 37.474064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.245066, 29.758486, 37.456665>,  <31.642487, 29.793354, 37.427670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245066, 29.758486, 37.456665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110440, -0.888675, 0.445039,
		0.025623, 0.450176, 0.892572,
		-0.993553, -0.087172, 0.072488,
		30.947001, 29.732334, 37.478413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576494, 29.396126, 38.133415>,  <31.642487, 29.793354, 37.427670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576494, 29.396126, 38.133415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.244398, 29.349127, 37.915462>,  <31.045139, 29.320927, 37.784691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.244398, 29.349127, 37.915462>,  <31.576494, 29.396126, 38.133415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244398, 29.349127, 37.915462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178758, -0.869773, 0.459936,
		-0.527962, 0.479260, 0.701118,
		-0.830242, -0.117499, -0.544879,
		30.995325, 29.313877, 37.751999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104019, 29.158552, 38.602245>,  <31.576494, 29.396126, 38.133415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104019, 29.158552, 38.602245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.974293, 29.050381, 38.239658>,  <30.896458, 28.985477, 38.022106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.974293, 29.050381, 38.239658>,  <31.104019, 29.158552, 38.602245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974293, 29.050381, 38.239658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249251, -0.899972, 0.357665,
		-0.912520, 0.341935, 0.224471,
		-0.324316, -0.270427, -0.906470,
		30.876999, 28.969254, 37.967716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412605, 28.750271, 38.728374>,  <31.104019, 29.158552, 38.602245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412605, 28.750271, 38.728374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.578176, 28.669043, 38.373428>,  <30.677519, 28.620306, 38.160461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.578176, 28.669043, 38.373428>,  <30.412605, 28.750271, 38.728374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578176, 28.669043, 38.373428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228326, -0.966799, 0.114744,
		-0.881210, 0.155113, -0.446554,
		0.413929, -0.203073, -0.887369,
		30.702354, 28.608120, 38.107216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954906, 28.282143, 38.497086>,  <30.412605, 28.750271, 38.728374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954906, 28.282143, 38.497086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.301420, 28.245363, 38.300678>,  <30.509329, 28.223295, 38.182835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.301420, 28.245363, 38.300678>,  <29.954906, 28.282143, 38.497086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301420, 28.245363, 38.300678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015606, -0.977453, 0.210575,
		-0.499307, -0.190081, -0.845317,
		0.866284, -0.091950, -0.491016,
		30.561306, 28.217779, 38.153374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870329, 27.683462, 38.239353>,  <29.954906, 28.282143, 38.497086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870329, 27.683462, 38.239353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.265514, 27.738131, 38.210377>,  <30.502626, 27.770931, 38.192989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.265514, 27.738131, 38.210377>,  <29.870329, 27.683462, 38.239353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265514, 27.738131, 38.210377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147591, -0.973088, 0.176964,
		-0.046307, -0.185526, -0.981548,
		0.987964, 0.136673, -0.072443,
		30.561903, 27.779133, 38.188644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146305, 27.198803, 37.706070>,  <29.870329, 27.683462, 38.239353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146305, 27.198803, 37.706070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.480518, 27.302418, 37.899891>,  <30.681046, 27.364586, 38.016182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.480518, 27.302418, 37.899891>,  <30.146305, 27.198803, 37.706070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480518, 27.302418, 37.899891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249214, -0.964627, 0.085950,
		0.489672, 0.048942, -0.870532,
		0.835532, 0.259035, 0.484548,
		30.731178, 27.380129, 38.045254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880146, 26.992168, 37.448410>,  <30.146305, 27.198803, 37.706070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880146, 26.992168, 37.448410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.930285, 27.060783, 37.839279>,  <30.960367, 27.101954, 38.073799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.930285, 27.060783, 37.839279>,  <30.880146, 26.992168, 37.448410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930285, 27.060783, 37.839279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408210, -0.906620, 0.106792,
		0.904242, 0.385505, -0.183664,
		0.125344, 0.171539, 0.977171,
		30.967888, 27.112246, 38.132431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598650, 26.760313, 37.656239>,  <30.880146, 26.992168, 37.448410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598650, 26.760313, 37.656239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.388510, 26.755241, 37.996555>,  <31.262426, 26.752197, 38.200745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.388510, 26.755241, 37.996555>,  <31.598650, 26.760313, 37.656239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388510, 26.755241, 37.996555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352553, -0.913267, 0.204083,
		0.774413, 0.407164, 0.484254,
		-0.525348, -0.012680, 0.850793,
		31.230906, 26.751438, 38.251793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.868572, 30.084316, 44.918324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.735203, 29.732786, 44.781799>,  <39.655182, 29.521868, 44.699886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.735203, 29.732786, 44.781799>,  <39.868572, 30.084316, 44.918324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735203, 29.732786, 44.781799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339902, -0.449734, 0.825958,
		-0.879372, 0.159383, 0.448667,
		-0.333424, -0.878827, -0.341309,
		39.635174, 29.469137, 44.679405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743771, 29.757210, 45.531761>,  <39.868572, 30.084316, 44.918324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743771, 29.757210, 45.531761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.693729, 29.442495, 45.289993>,  <39.663704, 29.253668, 45.144932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.693729, 29.442495, 45.289993>,  <39.743771, 29.757210, 45.531761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693729, 29.442495, 45.289993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460038, -0.585755, 0.667275,
		-0.879042, -0.194578, 0.435229,
		-0.125101, -0.786785, -0.604417,
		39.656200, 29.206459, 45.108669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296146, 29.188744, 45.789524>,  <39.743771, 29.757210, 45.531761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296146, 29.188744, 45.789524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.550922, 29.023979, 45.528866>,  <39.703789, 28.925119, 45.372471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.550922, 29.023979, 45.528866>,  <39.296146, 29.188744, 45.789524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550922, 29.023979, 45.528866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337996, -0.610502, 0.716272,
		-0.692871, -0.676473, -0.249627,
		0.636937, -0.411912, -0.651644,
		39.742004, 28.900406, 45.333374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307468, 28.467400, 45.983112>,  <39.296146, 29.188744, 45.789524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307468, 28.467400, 45.983112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.637676, 28.545427, 45.771275>,  <39.835800, 28.592243, 45.644173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.637676, 28.545427, 45.771275>,  <39.307468, 28.467400, 45.983112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637676, 28.545427, 45.771275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535450, -0.567257, 0.625709,
		-0.178357, -0.800104, -0.572731,
		0.825519, 0.195069, -0.529591,
		39.885330, 28.603949, 45.612396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633076, 27.809702, 45.849228>,  <39.307468, 28.467400, 45.983112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633076, 27.809702, 45.849228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.920002, 28.086718, 45.818638>,  <40.092159, 28.252926, 45.800282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.920002, 28.086718, 45.818638>,  <39.633076, 27.809702, 45.849228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920002, 28.086718, 45.818638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582638, -0.536023, 0.610911,
		0.382085, -0.482776, -0.787997,
		0.717317, 0.692537, -0.076477,
		40.135197, 28.294479, 45.795696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233635, 27.462984, 45.703568>,  <39.633076, 27.809702, 45.849228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233635, 27.462984, 45.703568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.353149, 27.816576, 45.847404>,  <40.424858, 28.028730, 45.933708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.353149, 27.816576, 45.847404>,  <40.233635, 27.462984, 45.703568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353149, 27.816576, 45.847404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708954, -0.457845, 0.536434,
		0.638834, 0.094653, -0.763500,
		0.298789, 0.883979, 0.359591,
		40.442787, 28.081770, 45.955280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031837, 27.419279, 45.639206>,  <40.233635, 27.462984, 45.703568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031837, 27.419279, 45.639206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.944160, 27.719181, 45.888950>,  <40.891552, 27.899122, 46.038795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.944160, 27.719181, 45.888950>,  <41.031837, 27.419279, 45.639206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944160, 27.719181, 45.888950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722974, -0.304902, 0.619954,
		0.655181, 0.587287, -0.475218,
		-0.219196, 0.749753, 0.624359,
		40.878403, 27.944107, 46.076260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655239, 27.821112, 45.847527>,  <41.031837, 27.419279, 45.639206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655239, 27.821112, 45.847527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.366638, 27.833790, 46.124203>,  <41.193478, 27.841396, 46.290207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.366638, 27.833790, 46.124203>,  <41.655239, 27.821112, 45.847527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366638, 27.833790, 46.124203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679483, -0.159743, 0.716090,
		0.133187, 0.986650, 0.093720,
		-0.721501, 0.031693, 0.691688,
		41.150188, 27.843298, 46.331711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044647, 27.965622, 46.359688>,  <41.655239, 27.821112, 45.847527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044647, 27.965622, 46.359688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.701359, 27.896509, 46.553013>,  <41.495384, 27.855042, 46.669010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.701359, 27.896509, 46.553013>,  <42.044647, 27.965622, 46.359688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701359, 27.896509, 46.553013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513209, -0.274020, 0.813345,
		-0.008092, 0.946076, 0.323844,
		-0.858226, -0.172781, 0.483317,
		41.443890, 27.844675, 46.698009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115559, 28.214689, 46.988987>,  <42.044647, 27.965622, 46.359688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115559, 28.214689, 46.988987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.820961, 27.948738, 47.038807>,  <41.644203, 27.789167, 47.068699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.820961, 27.948738, 47.038807>,  <42.115559, 28.214689, 46.988987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820961, 27.948738, 47.038807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476543, -0.379305, 0.793117,
		-0.480085, 0.643478, 0.596200,
		-0.736495, -0.664879, 0.124546,
		41.600014, 27.749275, 47.076172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990997, 28.253241, 47.696281>,  <42.115559, 28.214689, 46.988987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990997, 28.253241, 47.696281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.822659, 27.905540, 47.592522>,  <41.721653, 27.696920, 47.530266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.822659, 27.905540, 47.592522>,  <41.990997, 28.253241, 47.696281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822659, 27.905540, 47.592522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435770, -0.444527, 0.782624,
		-0.795606, 0.216330, 0.565873,
		-0.420851, -0.869251, -0.259399,
		41.696404, 27.644766, 47.514702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488739, 27.951159, 48.279835>,  <41.990997, 28.253241, 47.696281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488739, 27.951159, 48.279835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.600998, 27.635166, 48.061783>,  <41.668354, 27.445570, 47.930950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.600998, 27.635166, 48.061783>,  <41.488739, 27.951159, 48.279835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600998, 27.635166, 48.061783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177725, -0.515362, 0.838341,
		-0.943213, -0.332161, -0.004235,
		0.280647, -0.789982, -0.545129,
		41.685192, 27.398172, 47.898243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070835, 27.483658, 48.362526>,  <41.488739, 27.951159, 48.279835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070835, 27.483658, 48.362526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.454559, 27.372974, 48.340073>,  <41.684795, 27.306564, 48.326599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.454559, 27.372974, 48.340073>,  <41.070835, 27.483658, 48.362526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454559, 27.372974, 48.340073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087220, -0.479528, 0.873181,
		-0.268534, -0.832758, -0.484152,
		0.959314, -0.276706, -0.056136,
		41.742352, 27.289963, 48.323231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048485, 27.931515, 48.911289>,  <41.070835, 27.483658, 48.362526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048485, 27.931515, 48.911289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.161617, 27.574741, 49.052406>,  <41.229496, 27.360678, 49.137077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.161617, 27.574741, 49.052406>,  <41.048485, 27.931515, 48.911289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161617, 27.574741, 49.052406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937351, -0.179012, 0.298879,
		-0.203427, -0.415221, -0.886685,
		0.282828, -0.891934, 0.352791,
		41.246468, 27.307161, 49.158245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059464, 28.530226, 49.305893>,  <41.048485, 27.931515, 48.911289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059464, 28.530226, 49.305893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.006802, 28.760893, 49.628414>,  <40.975204, 28.899294, 49.821926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.006802, 28.760893, 49.628414>,  <41.059464, 28.530226, 49.305893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006802, 28.760893, 49.628414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569652, 0.621654, -0.537627,
		-0.811272, -0.530094, 0.246653,
		-0.131659, 0.576669, 0.806300,
		40.967304, 28.933893, 49.870304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443630, 28.855659, 49.256210>,  <41.059464, 28.530226, 49.305893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443630, 28.855659, 49.256210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.595509, 29.111223, 49.523830>,  <40.686634, 29.264561, 49.684402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.595509, 29.111223, 49.523830>,  <40.443630, 28.855659, 49.256210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595509, 29.111223, 49.523830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439158, 0.761010, -0.477497,
		-0.814230, -0.112513, 0.569536,
		0.379697, 0.638909, 0.669048,
		40.709419, 29.302896, 49.724545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843052, 29.305344, 49.560719>,  <40.443630, 28.855659, 49.256210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843052, 29.305344, 49.560719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.203793, 29.478123, 49.564491>,  <40.420235, 29.581791, 49.566753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.203793, 29.478123, 49.564491>,  <39.843052, 29.305344, 49.560719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203793, 29.478123, 49.564491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378955, 0.801311, -0.462918,
		-0.207513, 0.413909, 0.886351,
		0.901849, 0.431949, 0.009430,
		40.474346, 29.607708, 49.567322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726379, 29.995407, 49.768909>,  <39.843052, 29.305344, 49.560719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726379, 29.995407, 49.768909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.068253, 29.997215, 49.561260>,  <40.273376, 29.998301, 49.436668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.068253, 29.997215, 49.561260>,  <39.726379, 29.995407, 49.768909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068253, 29.997215, 49.561260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361290, 0.723258, -0.588529,
		0.372801, 0.690562, 0.619792,
		0.854686, 0.004521, -0.519125,
		40.324657, 29.998571, 49.405521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766300, 30.671465, 49.662403>,  <39.726379, 29.995407, 49.768909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766300, 30.671465, 49.662403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.040947, 30.538797, 49.403618>,  <40.205734, 30.459196, 49.248348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.040947, 30.538797, 49.403618>,  <39.766300, 30.671465, 49.662403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040947, 30.538797, 49.403618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272900, 0.707225, -0.652195,
		0.673860, 0.624361, 0.395078,
		0.686614, -0.331671, -0.646959,
		40.246933, 30.439297, 49.209530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044834, 31.219172, 49.454727>,  <39.766300, 30.671465, 49.662403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044834, 31.219172, 49.454727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.122524, 30.957605, 49.162243>,  <40.169140, 30.800665, 48.986752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.122524, 30.957605, 49.162243>,  <40.044834, 31.219172, 49.454727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122524, 30.957605, 49.162243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243708, 0.689870, -0.681678,
		0.950201, 0.310604, -0.025372,
		0.194228, -0.653915, -0.731212,
		40.180794, 30.761431, 48.942879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458092, 31.525547, 49.035889>,  <40.044834, 31.219172, 49.454727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458092, 31.525547, 49.035889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.290462, 31.245087, 48.805141>,  <40.189884, 31.076811, 48.666695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.290462, 31.245087, 48.805141>,  <40.458092, 31.525547, 49.035889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290462, 31.245087, 48.805141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208055, 0.692595, -0.690670,
		0.883795, -0.169419, -0.436122,
		-0.419069, -0.701149, -0.576864,
		40.164742, 31.034742, 48.632084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618992, 31.698488, 48.350494>,  <40.458092, 31.525547, 49.035889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618992, 31.698488, 48.350494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.333420, 31.423943, 48.295052>,  <40.162075, 31.259216, 48.261787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.333420, 31.423943, 48.295052>,  <40.618992, 31.698488, 48.350494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333420, 31.423943, 48.295052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305471, 0.483408, -0.820369,
		0.630075, -0.543344, -0.554782,
		-0.713928, -0.686363, -0.138607,
		40.119240, 31.218033, 48.253471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519459, 31.632023, 47.651802>,  <40.618992, 31.698488, 48.350494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519459, 31.632023, 47.651802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.169228, 31.471628, 47.759556>,  <39.959087, 31.375391, 47.824207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.169228, 31.471628, 47.759556>,  <40.519459, 31.632023, 47.651802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169228, 31.471628, 47.759556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405392, 0.306648, -0.861176,
		0.262707, -0.863239, -0.431050,
		-0.875581, -0.400981, 0.269391,
		39.906555, 31.351332, 47.840374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262371, 31.317535, 47.047626>,  <40.519459, 31.632023, 47.651802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262371, 31.317535, 47.047626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.935936, 31.299463, 47.278088>,  <39.740074, 31.288620, 47.416367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.935936, 31.299463, 47.278088>,  <40.262371, 31.317535, 47.047626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935936, 31.299463, 47.278088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577444, 0.104422, -0.809725,
		-0.023579, -0.993506, -0.111307,
		-0.816090, -0.045181, 0.576157,
		39.691109, 31.285910, 47.450935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890045, 30.728447, 46.905827>,  <40.262371, 31.317535, 47.047626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890045, 30.728447, 46.905827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.650707, 31.025997, 47.024910>,  <39.507103, 31.204527, 47.096359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.650707, 31.025997, 47.024910>,  <39.890045, 30.728447, 46.905827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650707, 31.025997, 47.024910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370914, 0.072188, -0.925857,
		-0.710212, -0.664410, 0.232719,
		-0.598349, 0.743874, 0.297708,
		39.471203, 31.249159, 47.114223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303276, 30.752907, 46.578621>,  <39.890045, 30.728447, 46.905827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303276, 30.752907, 46.578621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.244965, 31.108004, 46.753281>,  <39.209976, 31.321062, 46.858078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.244965, 31.108004, 46.753281>,  <39.303276, 30.752907, 46.578621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244965, 31.108004, 46.753281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390688, 0.353831, -0.849804,
		-0.908907, -0.294477, 0.295249,
		-0.145779, 0.887742, 0.436648,
		39.201229, 31.374327, 46.884274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646881, 30.933401, 46.390255>,  <39.303276, 30.752907, 46.578621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646881, 30.933401, 46.390255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.825085, 31.280621, 46.477905>,  <38.932007, 31.488953, 46.530495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.825085, 31.280621, 46.477905>,  <38.646881, 30.933401, 46.390255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825085, 31.280621, 46.477905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401672, 0.412542, -0.817599,
		-0.800114, 0.276229, 0.532461,
		0.445507, 0.868047, 0.219128,
		38.958736, 31.541035, 46.543644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138733, 31.465315, 46.217937>,  <38.646881, 30.933401, 46.390255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138733, 31.465315, 46.217937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.487999, 31.658607, 46.243439>,  <38.697559, 31.774584, 46.258739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.487999, 31.658607, 46.243439>,  <38.138733, 31.465315, 46.217937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487999, 31.658607, 46.243439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186714, 0.452425, -0.872038,
		-0.450239, 0.749533, 0.485269,
		0.873168, 0.483232, 0.063751,
		38.749950, 31.803577, 46.262566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644463, 31.776979, 46.691837>,  <38.138733, 31.465315, 46.217937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644463, 31.776979, 46.691837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.244934, 31.757648, 46.690498>,  <37.005215, 31.746050, 46.689697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.244934, 31.757648, 46.690498>,  <37.644463, 31.776979, 46.691837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244934, 31.757648, 46.690498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028643, -0.644854, 0.763769,
		-0.039068, 0.762776, 0.645481,
		-0.998826, -0.048327, -0.003345,
		36.945286, 31.743151, 46.689495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407661, 31.985216, 47.354973>,  <37.644463, 31.776979, 46.691837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407661, 31.985216, 47.354973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.117279, 31.761774, 47.194496>,  <36.943050, 31.627708, 47.098209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.117279, 31.761774, 47.194496>,  <37.407661, 31.985216, 47.354973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117279, 31.761774, 47.194496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110456, -0.670465, 0.733673,
		-0.678817, 0.488298, 0.548427,
		-0.725952, -0.558607, -0.401188,
		36.899494, 31.594193, 47.074139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894440, 31.823221, 47.890137>,  <37.407661, 31.985216, 47.354973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894440, 31.823221, 47.890137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.823864, 31.542877, 47.613686>,  <36.781517, 31.374670, 47.447815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.823864, 31.542877, 47.613686>,  <36.894440, 31.823221, 47.890137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823864, 31.542877, 47.613686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084742, -0.710357, 0.698722,
		-0.980657, 0.064715, 0.184728,
		-0.176441, -0.700860, -0.691132,
		36.770931, 31.332619, 47.406345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556728, 31.292280, 48.204773>,  <36.894440, 31.823221, 47.890137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556728, 31.292280, 48.204773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.665333, 31.083868, 47.881092>,  <36.730495, 30.958820, 47.686882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.665333, 31.083868, 47.881092>,  <36.556728, 31.292280, 48.204773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665333, 31.083868, 47.881092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054515, -0.831109, 0.553430,
		-0.960890, -0.194377, -0.197252,
		0.271512, -0.521032, -0.809201,
		36.746788, 30.927559, 47.638332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357925, 30.592133, 48.442417>,  <36.556728, 31.292280, 48.204773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357925, 30.592133, 48.442417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.617825, 30.535265, 48.143723>,  <36.773766, 30.501144, 47.964508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.617825, 30.535265, 48.143723>,  <36.357925, 30.592133, 48.442417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617825, 30.535265, 48.143723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220443, -0.904898, 0.364093,
		-0.727481, -0.401182, -0.556619,
		0.649751, -0.142168, -0.746734,
		36.812748, 30.492615, 47.919701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224548, 29.979168, 48.254807>,  <36.357925, 30.592133, 48.442417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224548, 29.979168, 48.254807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.598804, 30.037355, 48.126171>,  <36.823357, 30.072268, 48.048992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.598804, 30.037355, 48.126171>,  <36.224548, 29.979168, 48.254807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598804, 30.037355, 48.126171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290335, -0.835309, 0.466866,
		-0.200708, -0.530186, -0.823784,
		0.935640, 0.145469, -0.321585,
		36.879498, 30.080996, 48.029697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431278, 29.292246, 48.105404>,  <36.224548, 29.979168, 48.254807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431278, 29.292246, 48.105404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.761551, 29.514940, 48.141830>,  <36.959713, 29.648558, 48.163685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.761551, 29.514940, 48.141830>,  <36.431278, 29.292246, 48.105404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761551, 29.514940, 48.141830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430589, -0.726248, 0.535871,
		0.364473, -0.403248, -0.839375,
		0.825683, 0.556736, 0.091064,
		37.009254, 29.681961, 48.169151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566509, 29.080648, 47.414913>,  <36.431278, 29.292246, 48.105404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566509, 29.080648, 47.414913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.625637, 28.685202, 47.426102>,  <36.661114, 28.447933, 47.432816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.625637, 28.685202, 47.426102>,  <36.566509, 29.080648, 47.414913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625637, 28.685202, 47.426102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137751, -0.048587, -0.989275,
		0.979374, 0.142386, -0.143366,
		0.147824, -0.988618, 0.027971,
		36.669983, 28.388617, 47.434494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142910, 28.891933, 47.055435>,  <36.566509, 29.080648, 47.414913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142910, 28.891933, 47.055435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.825172, 28.650047, 47.032345>,  <36.634529, 28.504915, 47.018490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.825172, 28.650047, 47.032345>,  <37.142910, 28.891933, 47.055435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825172, 28.650047, 47.032345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118530, 0.247500, -0.961610,
		0.595789, -0.757009, -0.268278,
		-0.794347, -0.604716, -0.057729,
		36.586868, 28.468632, 47.015026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148338, 28.737288, 46.297447>,  <37.142910, 28.891933, 47.055435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148338, 28.737288, 46.297447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.787460, 28.641741, 46.441105>,  <36.570934, 28.584414, 46.527298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.787460, 28.641741, 46.441105>,  <37.148338, 28.737288, 46.297447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787460, 28.641741, 46.441105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398467, 0.142817, -0.905995,
		0.165112, -0.960495, -0.224027,
		-0.902198, -0.238858, 0.359144,
		36.516800, 28.570082, 46.548847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806339, 28.242773, 45.863007>,  <37.148338, 28.737288, 46.297447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806339, 28.242773, 45.863007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.522453, 28.450079, 46.053879>,  <36.352119, 28.574463, 46.168404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.522453, 28.450079, 46.053879>,  <36.806339, 28.242773, 45.863007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522453, 28.450079, 46.053879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459767, 0.172468, -0.871131,
		-0.533776, -0.837649, 0.115878,
		-0.709717, 0.518265, 0.477182,
		36.309540, 28.605558, 46.197033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140846, 28.012552, 45.592640>,  <36.806339, 28.242773, 45.863007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140846, 28.012552, 45.592640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.085247, 28.365164, 45.773125>,  <36.051888, 28.576731, 45.881416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.085247, 28.365164, 45.773125>,  <36.140846, 28.012552, 45.592640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085247, 28.365164, 45.773125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360667, 0.379277, -0.852096,
		-0.922280, -0.281174, 0.265220,
		-0.138995, 0.881527, 0.451210,
		36.043549, 28.629622, 45.908489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612980, 28.307535, 45.190117>,  <36.140846, 28.012552, 45.592640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612980, 28.307535, 45.190117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.723469, 28.609447, 45.428112>,  <35.789761, 28.790594, 45.570908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.723469, 28.609447, 45.428112>,  <35.612980, 28.307535, 45.190117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723469, 28.609447, 45.428112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352288, 0.655498, -0.667994,
		-0.894201, -0.025092, 0.446963,
		0.276222, 0.754780, 0.594987,
		35.806335, 28.835882, 45.606609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066288, 28.748255, 45.269444>,  <35.612980, 28.307535, 45.190117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066288, 28.748255, 45.269444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.383015, 28.981852, 45.340977>,  <35.573051, 29.122009, 45.383896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.383015, 28.981852, 45.340977>,  <35.066288, 28.748255, 45.269444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383015, 28.981852, 45.340977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280440, 0.607757, -0.742957,
		-0.542570, 0.538131, 0.645006,
		0.791815, 0.583992, 0.178838,
		35.620560, 29.157049, 45.394627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<42.214302, 24.205248, 45.786171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.241196, 24.527920, 46.021030>,  <42.257332, 24.721523, 46.161945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.241196, 24.527920, 46.021030>,  <42.214302, 24.205248, 45.786171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241196, 24.527920, 46.021030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418620, 0.556988, -0.717301,
		-0.905669, -0.197566, 0.375141,
		0.067235, 0.806679, 0.587152,
		42.261368, 24.769924, 46.197178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577827, 24.520376, 45.768063>,  <42.214302, 24.205248, 45.786171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577827, 24.520376, 45.768063> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.841812, 24.800840, 45.876007>,  <42.000202, 24.969118, 45.940773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.841812, 24.800840, 45.876007>,  <41.577827, 24.520376, 45.768063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841812, 24.800840, 45.876007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363808, 0.612520, -0.701757,
		-0.657339, 0.364956, 0.659327,
		0.659961, 0.701161, 0.269860,
		42.039799, 25.011189, 45.956966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163292, 25.225370, 45.777138>,  <41.577827, 24.520376, 45.768063>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163292, 25.225370, 45.777138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.550346, 25.324148, 45.756336>,  <41.782578, 25.383415, 45.743855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.550346, 25.324148, 45.756336>,  <41.163292, 25.225370, 45.777138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550346, 25.324148, 45.756336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211250, 0.679890, -0.702227,
		-0.138056, 0.690484, 0.710051,
		0.967633, 0.246945, -0.052002,
		41.840637, 25.398232, 45.740734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247650, 25.957256, 45.868046>,  <41.163292, 25.225370, 45.777138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247650, 25.957256, 45.868046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.578403, 25.822044, 45.688271>,  <41.776855, 25.740917, 45.580406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.578403, 25.822044, 45.688271>,  <41.247650, 25.957256, 45.868046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578403, 25.822044, 45.688271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091406, 0.707777, -0.700497,
		0.554891, 0.620313, 0.554353,
		0.826886, -0.338028, -0.449440,
		41.826469, 25.720636, 45.553440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625900, 26.560631, 45.560570>,  <41.247650, 25.957256, 45.868046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625900, 26.560631, 45.560570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.778370, 26.256353, 45.350407>,  <41.869850, 26.073786, 45.224308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.778370, 26.256353, 45.350407>,  <41.625900, 26.560631, 45.560570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778370, 26.256353, 45.350407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065594, 0.544624, -0.836111,
		0.922173, 0.353169, 0.157700,
		0.381176, -0.760695, -0.525403,
		41.892723, 26.028145, 45.192787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142029, 26.847729, 45.091969>,  <41.625900, 26.560631, 45.560570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142029, 26.847729, 45.091969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.063095, 26.492722, 44.925419>,  <42.015736, 26.279716, 44.825489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.063095, 26.492722, 44.925419>,  <42.142029, 26.847729, 45.091969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063095, 26.492722, 44.925419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104323, 0.441327, -0.891262,
		0.974769, -0.132441, -0.179679,
		-0.197337, -0.887519, -0.416375,
		42.003895, 26.226465, 44.800507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548424, 26.803595, 44.454315>,  <42.142029, 26.847729, 45.091969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548424, 26.803595, 44.454315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.235867, 26.555672, 44.425278>,  <42.048332, 26.406918, 44.407856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.235867, 26.555672, 44.425278>,  <42.548424, 26.803595, 44.454315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235867, 26.555672, 44.425278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231726, 0.396196, -0.888443,
		0.579426, -0.677397, -0.453209,
		-0.781389, -0.619807, -0.072596,
		42.001450, 26.369730, 44.403500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508591, 26.617979, 43.704903>,  <42.548424, 26.803595, 44.454315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508591, 26.617979, 43.704903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.154495, 26.537474, 43.872635>,  <41.942036, 26.489170, 43.973274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.154495, 26.537474, 43.872635>,  <42.508591, 26.617979, 43.704903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154495, 26.537474, 43.872635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463847, 0.315038, -0.828008,
		0.034539, -0.927494, -0.372239,
		-0.885241, -0.201261, 0.419334,
		41.888924, 26.477095, 43.998436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157341, 26.147924, 43.189823>,  <42.508591, 26.617979, 43.704903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157341, 26.147924, 43.189823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.891270, 26.334480, 43.423065>,  <41.731628, 26.446415, 43.563011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.891270, 26.334480, 43.423065>,  <42.157341, 26.147924, 43.189823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891270, 26.334480, 43.423065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527919, 0.258518, -0.808993,
		-0.528052, -0.845959, 0.074256,
		-0.665179, 0.466392, 0.583109,
		41.691715, 26.474398, 43.598000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464062, 25.946779, 42.948734>,  <42.157341, 26.147924, 43.189823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464062, 25.946779, 42.948734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.423183, 26.279202, 43.167423>,  <41.398659, 26.478655, 43.298637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.423183, 26.279202, 43.167423>,  <41.464062, 25.946779, 42.948734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423183, 26.279202, 43.167423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619703, 0.376737, -0.688504,
		-0.778155, -0.409165, 0.476507,
		-0.102194, 0.831056, 0.546720,
		41.392525, 26.528519, 43.331440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760090, 26.094404, 42.808239>,  <41.464062, 25.946779, 42.948734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760090, 26.094404, 42.808239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.875725, 26.452696, 42.943356>,  <40.945107, 26.667671, 43.024426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.875725, 26.452696, 42.943356>,  <40.760090, 26.094404, 42.808239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875725, 26.452696, 42.943356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664879, 0.441731, -0.602336,
		-0.688740, -0.050459, 0.723250,
		0.289089, 0.895727, 0.337787,
		40.962452, 26.721415, 43.044693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110855, 26.516127, 42.920712>,  <40.760090, 26.094404, 42.808239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110855, 26.516127, 42.920712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.412304, 26.768024, 42.845371>,  <40.593174, 26.919163, 42.800167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.412304, 26.768024, 42.845371>,  <40.110855, 26.516127, 42.920712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412304, 26.768024, 42.845371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596661, 0.535179, -0.597980,
		-0.275775, 0.563030, 0.779067,
		0.753621, 0.629747, -0.188349,
		40.638390, 26.956949, 42.788868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472076, 26.852446, 43.375256>,  <40.110855, 26.516127, 42.920712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472076, 26.852446, 43.375256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.094864, 26.719397, 43.378014>,  <38.868534, 26.639568, 43.379669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.094864, 26.719397, 43.378014>,  <39.472076, 26.852446, 43.375256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094864, 26.719397, 43.378014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083642, -0.216979, 0.972586,
		-0.322006, 0.917760, 0.232440,
		-0.943036, -0.332621, 0.006894,
		38.811954, 26.619610, 43.380081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002560, 27.314569, 43.880856>,  <39.472076, 26.852446, 43.375256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002560, 27.314569, 43.880856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.864334, 26.941872, 43.836235>,  <38.781399, 26.718254, 43.809464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.864334, 26.941872, 43.836235>,  <39.002560, 27.314569, 43.880856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864334, 26.941872, 43.836235> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115622, -0.075697, 0.990405,
		-0.931246, 0.355143, -0.081572,
		-0.345560, -0.931742, -0.111555,
		38.760666, 26.662350, 43.802769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497837, 27.182737, 44.531433>,  <39.002560, 27.314569, 43.880856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497837, 27.182737, 44.531433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.508518, 26.813017, 44.379143>,  <38.514927, 26.591185, 44.287769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.508518, 26.813017, 44.379143>,  <38.497837, 27.182737, 44.531433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508518, 26.813017, 44.379143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200594, -0.378067, 0.903785,
		-0.979310, 0.052238, -0.195505,
		0.026703, -0.924303, -0.380724,
		38.516529, 26.535727, 44.264927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966747, 26.925596, 44.846401>,  <38.497837, 27.182737, 44.531433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966747, 26.925596, 44.846401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.159504, 26.599316, 44.718395>,  <38.275158, 26.403547, 44.641594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.159504, 26.599316, 44.718395>,  <37.966747, 26.925596, 44.846401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159504, 26.599316, 44.718395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069794, -0.399788, 0.913947,
		-0.873447, -0.418088, -0.249586,
		0.481892, -0.815703, -0.320013,
		38.304073, 26.354605, 44.622391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493862, 26.324280, 44.939465>,  <37.966747, 26.925596, 44.846401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493862, 26.324280, 44.939465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.870369, 26.190918, 44.918064>,  <38.096272, 26.110901, 44.905224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.870369, 26.190918, 44.918064>,  <37.493862, 26.324280, 44.939465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870369, 26.190918, 44.918064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146174, -0.545141, 0.825502,
		-0.304388, -0.769197, -0.561858,
		0.941266, -0.333402, -0.053498,
		38.152748, 26.090897, 44.902016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558914, 25.613344, 44.986084>,  <37.493862, 26.324280, 44.939465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558914, 25.613344, 44.986084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.904533, 25.758213, 45.125942>,  <38.111904, 25.845135, 45.209858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.904533, 25.758213, 45.125942>,  <37.558914, 25.613344, 44.986084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904533, 25.758213, 45.125942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081339, -0.584989, 0.806953,
		0.496794, -0.725686, -0.476000,
		0.864048, 0.362172, 0.349645,
		38.163750, 25.866865, 45.230835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867680, 25.019680, 45.316891>,  <37.558914, 25.613344, 44.986084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867680, 25.019680, 45.316891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.083397, 25.326038, 45.456928>,  <38.212830, 25.509853, 45.540951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.083397, 25.326038, 45.456928>,  <37.867680, 25.019680, 45.316891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083397, 25.326038, 45.456928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009373, -0.410242, 0.911929,
		0.842064, -0.495081, -0.214063,
		0.539296, 0.765896, 0.350091,
		38.245186, 25.555807, 45.561954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433216, 24.710037, 45.717941>,  <37.867680, 25.019680, 45.316891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433216, 24.710037, 45.717941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.345078, 25.078630, 45.845890>,  <38.292194, 25.299786, 45.922657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.345078, 25.078630, 45.845890>,  <38.433216, 24.710037, 45.717941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345078, 25.078630, 45.845890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094018, -0.306339, 0.947268,
		0.970881, 0.238798, -0.019137,
		-0.220343, 0.921484, 0.319870,
		38.278976, 25.355076, 45.941853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837963, 24.626350, 46.244701>,  <38.433216, 24.710037, 45.717941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837963, 24.626350, 46.244701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.627377, 24.958086, 46.319572>,  <38.501026, 25.157127, 46.364494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.627377, 24.958086, 46.319572>,  <38.837963, 24.626350, 46.244701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627377, 24.958086, 46.319572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028944, -0.237510, 0.970954,
		0.849706, 0.505752, 0.149044,
		-0.526462, 0.829339, 0.187175,
		38.469437, 25.206888, 46.375725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111717, 24.873947, 46.882889>,  <38.837963, 24.626350, 46.244701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111717, 24.873947, 46.882889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.750664, 25.045164, 46.864822>,  <38.534031, 25.147894, 46.853981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.750664, 25.045164, 46.864822>,  <39.111717, 24.873947, 46.882889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750664, 25.045164, 46.864822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096394, -0.098765, 0.990431,
		0.419486, 0.898346, 0.130409,
		-0.902629, 0.428042, -0.045165,
		38.479874, 25.173576, 46.851273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085629, 25.312256, 47.399254>,  <39.111717, 24.873947, 46.882889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085629, 25.312256, 47.399254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.695675, 25.277853, 47.317085>,  <38.461700, 25.257212, 47.267784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.695675, 25.277853, 47.317085>,  <39.085629, 25.312256, 47.399254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695675, 25.277853, 47.317085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205395, -0.009307, 0.978635,
		-0.086080, 0.996251, -0.008592,
		-0.974886, -0.086006, -0.205426,
		38.403210, 25.252050, 47.255459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751949, 25.851027, 47.853104>,  <39.085629, 25.312256, 47.399254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751949, 25.851027, 47.853104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.487064, 25.571140, 47.745869>,  <38.328133, 25.403210, 47.681526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.487064, 25.571140, 47.745869>,  <38.751949, 25.851027, 47.853104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487064, 25.571140, 47.745869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222487, -0.158032, 0.962042,
		-0.715522, 0.696725, -0.051027,
		-0.662215, -0.699715, -0.268088,
		38.288399, 25.361225, 47.665443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123360, 26.002056, 48.200832>,  <38.751949, 25.851027, 47.853104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123360, 26.002056, 48.200832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.110016, 25.610161, 48.121838>,  <38.102009, 25.375023, 48.074440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.110016, 25.610161, 48.121838>,  <38.123360, 26.002056, 48.200832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110016, 25.610161, 48.121838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191097, -0.187697, 0.963458,
		-0.981004, 0.069877, -0.180964,
		-0.033357, -0.979738, -0.197485,
		38.100010, 25.316238, 48.062592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581944, 25.763720, 48.629074>,  <38.123360, 26.002056, 48.200832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581944, 25.763720, 48.629074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.829739, 25.456631, 48.563549>,  <37.978416, 25.272377, 48.524235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.829739, 25.456631, 48.563549>,  <37.581944, 25.763720, 48.629074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829739, 25.456631, 48.563549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111008, -0.120902, 0.986438,
		-0.777115, -0.629274, 0.010325,
		0.619491, -0.767722, -0.163810,
		38.015587, 25.226315, 48.514404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258076, 25.720387, 49.341496>,  <37.581944, 25.763720, 48.629074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258076, 25.720387, 49.341496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.925182, 25.918478, 49.441204>,  <36.725445, 26.037333, 49.501030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.925182, 25.918478, 49.441204>,  <37.258076, 25.720387, 49.341496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925182, 25.918478, 49.441204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015621, 0.428479, -0.903417,
		-0.554206, -0.755747, -0.348858,
		-0.832233, 0.495230, 0.249271,
		36.675514, 26.067047, 49.515984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694164, 25.715664, 48.669357>,  <37.258076, 25.720387, 49.341496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694164, 25.715664, 48.669357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.647717, 26.035046, 48.905655>,  <36.619846, 26.226675, 49.047436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.647717, 26.035046, 48.905655>,  <36.694164, 25.715664, 48.669357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647717, 26.035046, 48.905655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206496, 0.562369, -0.800687,
		-0.971533, -0.214961, 0.099577,
		-0.116118, 0.798456, 0.590748,
		36.612881, 26.274582, 49.082878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092197, 26.049425, 48.425636>,  <36.694164, 25.715664, 48.669357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092197, 26.049425, 48.425636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.292789, 26.330635, 48.627338>,  <36.413147, 26.499361, 48.748360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.292789, 26.330635, 48.627338>,  <36.092197, 26.049425, 48.425636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292789, 26.330635, 48.627338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152553, 0.645561, -0.748317,
		-0.851612, 0.298343, 0.430986,
		0.501483, 0.703024, 0.504254,
		36.443233, 26.541542, 48.778614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715935, 26.692511, 48.634769>,  <36.092197, 26.049425, 48.425636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715935, 26.692511, 48.634769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.100479, 26.799665, 48.609402>,  <36.331207, 26.863958, 48.594181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.100479, 26.799665, 48.609402>,  <35.715935, 26.692511, 48.634769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100479, 26.799665, 48.609402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253770, 0.773084, -0.581327,
		-0.106703, 0.574959, 0.811195,
		0.961361, 0.267886, -0.063417,
		36.388889, 26.880032, 48.590378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645691, 27.427511, 48.439663>,  <35.715935, 26.692511, 48.634769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645691, 27.427511, 48.439663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.042797, 27.390451, 48.409122>,  <36.281063, 27.368216, 48.390797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.042797, 27.390451, 48.409122>,  <35.645691, 27.427511, 48.439663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042797, 27.390451, 48.409122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023396, 0.773092, -0.633862,
		0.117755, 0.627491, 0.769668,
		0.992767, -0.092647, -0.076355,
		36.340626, 27.362658, 48.386215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885704, 28.076906, 48.519611>,  <35.645691, 27.427511, 48.439663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885704, 28.076906, 48.519611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.173920, 27.864237, 48.341557>,  <36.346851, 27.736635, 48.234726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.173920, 27.864237, 48.341557>,  <35.885704, 28.076906, 48.519611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173920, 27.864237, 48.341557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017185, 0.655443, -0.755049,
		0.693197, 0.536396, 0.481412,
		0.720543, -0.531671, -0.445133,
		36.390083, 27.704735, 48.208015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487316, 28.609627, 48.395885>,  <35.885704, 28.076906, 48.519611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487316, 28.609627, 48.395885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.470314, 28.296368, 48.147736>,  <36.460114, 28.108412, 47.998844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.470314, 28.296368, 48.147736>,  <36.487316, 28.609627, 48.395885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470314, 28.296368, 48.147736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104746, 0.621011, -0.776771,
		0.993590, 0.031966, -0.108427,
		-0.042504, -0.783150, -0.620379,
		36.457561, 28.061422, 47.961620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051544, 28.816862, 48.053986>,  <36.487316, 28.609627, 48.395885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051544, 28.816862, 48.053986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.204006, 29.154518, 48.204800>,  <37.295483, 29.357111, 48.295288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.204006, 29.154518, 48.204800>,  <37.051544, 28.816862, 48.053986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204006, 29.154518, 48.204800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533535, -0.533892, 0.655973,
		0.755026, -0.048865, -0.653871,
		0.381150, 0.844140, 0.377031,
		37.318352, 29.407761, 48.317909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827446, 28.835346, 47.974472>,  <37.051544, 28.816862, 48.053986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827446, 28.835346, 47.974472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.731808, 29.066191, 48.286823>,  <37.674427, 29.204699, 48.474236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.731808, 29.066191, 48.286823>,  <37.827446, 28.835346, 47.974472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731808, 29.066191, 48.286823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668338, -0.485580, 0.563503,
		0.704386, 0.656622, -0.269609,
		-0.239092, 0.577114, 0.780881,
		37.660080, 29.239325, 48.521088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472446, 28.998014, 48.165154>,  <37.827446, 28.835346, 47.974472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472446, 28.998014, 48.165154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.221428, 29.074787, 48.466976>,  <38.070816, 29.120850, 48.648071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.221428, 29.074787, 48.466976>,  <38.472446, 28.998014, 48.165154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221428, 29.074787, 48.466976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602713, -0.493754, 0.626852,
		0.492877, 0.848156, 0.194173,
		-0.627542, 0.191931, 0.754555,
		38.033165, 29.132366, 48.693344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890392, 29.237814, 48.737720>,  <38.472446, 28.998014, 48.165154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890392, 29.237814, 48.737720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.546227, 29.105387, 48.892681>,  <38.339725, 29.025930, 48.985657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.546227, 29.105387, 48.892681>,  <38.890392, 29.237814, 48.737720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546227, 29.105387, 48.892681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507609, -0.489800, 0.708822,
		-0.044919, 0.806530, 0.589484,
		-0.860416, -0.331067, 0.387401,
		38.288101, 29.006067, 49.008900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837379, 29.501863, 49.427299>,  <38.890392, 29.237814, 48.737720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837379, 29.501863, 49.427299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.588852, 29.191805, 49.473110>,  <38.439735, 29.005770, 49.500595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.588852, 29.191805, 49.473110>,  <38.837379, 29.501863, 49.427299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588852, 29.191805, 49.473110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579651, -0.356349, 0.732817,
		-0.527228, 0.521697, 0.670719,
		-0.621318, -0.775144, 0.114525,
		38.402458, 28.959261, 49.507469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672985, 29.490213, 50.100365>,  <38.837379, 29.501863, 49.427299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672985, 29.490213, 50.100365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.619423, 29.120667, 49.956955>,  <38.587284, 28.898939, 49.870907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.619423, 29.120667, 49.956955>,  <38.672985, 29.490213, 50.100365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619423, 29.120667, 49.956955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363168, -0.382364, 0.849651,
		-0.922051, -0.016432, 0.386719,
		-0.133906, -0.923866, -0.358527,
		38.579250, 28.843506, 49.849396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343357, 29.075340, 50.678329>,  <38.672985, 29.490213, 50.100365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343357, 29.075340, 50.678329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.489124, 28.788698, 50.440449>,  <38.576584, 28.616713, 50.297718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.489124, 28.788698, 50.440449>,  <38.343357, 29.075340, 50.678329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489124, 28.788698, 50.440449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438346, -0.431444, 0.788485,
		-0.821616, -0.548025, 0.156896,
		0.364418, -0.716607, -0.594705,
		38.598450, 28.573717, 50.262035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443211, 28.530132, 51.142521>,  <38.343357, 29.075340, 50.678329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443211, 28.530132, 51.142521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.650936, 28.429539, 50.815823>,  <38.775570, 28.369183, 50.619804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.650936, 28.429539, 50.815823>,  <38.443211, 28.530132, 51.142521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650936, 28.429539, 50.815823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690154, -0.440213, 0.574369,
		-0.503986, -0.861956, -0.055046,
		0.519313, -0.251484, -0.816744,
		38.806728, 28.354094, 50.570801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450993, 27.833021, 51.228840>,  <38.443211, 28.530132, 51.142521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450993, 27.833021, 51.228840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.747028, 27.933771, 50.979416>,  <38.924648, 27.994221, 50.829762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.747028, 27.933771, 50.979416>,  <38.450993, 27.833021, 51.228840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747028, 27.933771, 50.979416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620219, -0.614100, 0.488067,
		-0.259997, -0.747957, -0.610706,
		0.740088, 0.251876, -0.623562,
		38.969055, 28.009335, 50.792347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.844986, 35.923409, 37.286297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242397, 35.936680, 37.242855>,  <36.480846, 35.944641, 37.216789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242397, 35.936680, 37.242855>,  <35.844986, 35.923409, 37.286297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242397, 35.936680, 37.242855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090214, -0.811446, 0.577422,
		-0.068965, -0.583484, -0.809191,
		0.993532, 0.033179, -0.108600,
		36.540459, 35.946632, 37.210274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122799, 35.198456, 37.259552>,  <35.844986, 35.923409, 37.286297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122799, 35.198456, 37.259552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449234, 35.393906, 37.382996>,  <36.645096, 35.511177, 37.457062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449234, 35.393906, 37.382996>,  <36.122799, 35.198456, 37.259552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449234, 35.393906, 37.382996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099580, -0.644906, 0.757747,
		0.569279, -0.587658, -0.574960,
		0.816091, 0.488624, 0.308613,
		36.694061, 35.540493, 37.475578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594738, 34.752563, 37.428490>,  <36.122799, 35.198456, 37.259552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594738, 34.752563, 37.428490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709770, 35.068600, 37.645027>,  <36.778790, 35.258221, 37.774948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709770, 35.068600, 37.645027>,  <36.594738, 34.752563, 37.428490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709770, 35.068600, 37.645027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027136, -0.558271, 0.829215,
		0.957372, -0.253155, -0.139107,
		0.287579, 0.790093, 0.541343,
		36.796043, 35.305626, 37.807430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190357, 34.547718, 37.833492>,  <36.594738, 34.752563, 37.428490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190357, 34.547718, 37.833492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047192, 34.876442, 38.010815>,  <36.961292, 35.073677, 38.117210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047192, 34.876442, 38.010815>,  <37.190357, 34.547718, 37.833492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047192, 34.876442, 38.010815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085025, -0.444104, 0.891932,
		0.929874, 0.356931, 0.089078,
		-0.357918, 0.821810, 0.443309,
		36.939816, 35.122986, 38.143806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645786, 34.695164, 38.457432>,  <37.190357, 34.547718, 37.833492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645786, 34.695164, 38.457432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295708, 34.876980, 38.523674>,  <37.085663, 34.986069, 38.563419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295708, 34.876980, 38.523674>,  <37.645786, 34.695164, 38.457432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295708, 34.876980, 38.523674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006860, -0.330631, 0.943735,
		0.483723, 0.827088, 0.286248,
		-0.875194, 0.454542, 0.165607,
		37.033150, 35.013344, 38.573357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738747, 34.969448, 39.088379>,  <37.645786, 34.695164, 38.457432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738747, 34.969448, 39.088379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340260, 34.973003, 39.053810>,  <37.101166, 34.975136, 39.033070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340260, 34.973003, 39.053810>,  <37.738747, 34.969448, 39.088379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340260, 34.973003, 39.053810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076968, -0.551610, 0.830544,
		-0.040288, 0.834055, 0.550208,
		-0.996219, 0.008888, -0.086419,
		37.041393, 34.975670, 39.027885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508316, 35.281124, 39.600948>,  <37.738747, 34.969448, 39.088379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508316, 35.281124, 39.600948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183556, 35.070621, 39.499855>,  <36.988701, 34.944321, 39.439198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183556, 35.070621, 39.499855>,  <37.508316, 35.281124, 39.600948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183556, 35.070621, 39.499855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030129, -0.394570, 0.918372,
		-0.583019, 0.753240, 0.304496,
		-0.811900, -0.526254, -0.252736,
		36.939987, 34.912746, 39.424034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998161, 35.416515, 40.121445>,  <37.508316, 35.281124, 39.600948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998161, 35.416515, 40.121445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848175, 35.086826, 39.951717>,  <36.758183, 34.889011, 39.849880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848175, 35.086826, 39.951717>,  <36.998161, 35.416515, 40.121445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848175, 35.086826, 39.951717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433769, -0.248527, 0.866071,
		-0.819294, 0.508808, -0.264334,
		-0.374970, -0.824226, -0.424322,
		36.735683, 34.839558, 39.824421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252254, 35.323471, 40.391403>,  <36.998161, 35.416515, 40.121445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252254, 35.323471, 40.391403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329277, 34.962631, 40.236927>,  <36.375488, 34.746128, 40.144241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329277, 34.962631, 40.236927>,  <36.252254, 35.323471, 40.391403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329277, 34.962631, 40.236927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436266, -0.431221, 0.789760,
		-0.878974, 0.016410, -0.476587,
		0.192554, -0.902098, -0.386191,
		36.387043, 34.692001, 40.121071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663471, 34.924622, 40.570438>,  <36.252254, 35.323471, 40.391403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663471, 34.924622, 40.570438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929600, 34.639305, 40.482292>,  <36.089279, 34.468117, 40.429405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929600, 34.639305, 40.482292>,  <35.663471, 34.924622, 40.570438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929600, 34.639305, 40.482292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312495, -0.534161, 0.785506,
		-0.678006, -0.453751, -0.578289,
		0.665323, -0.713290, -0.220369,
		36.129196, 34.425320, 40.416183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305458, 34.329693, 40.751156>,  <35.663471, 34.924622, 40.570438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305458, 34.329693, 40.751156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698753, 34.257782, 40.763340>,  <35.934731, 34.214634, 40.770649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698753, 34.257782, 40.763340>,  <35.305458, 34.329693, 40.751156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698753, 34.257782, 40.763340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115991, -0.487776, 0.865229,
		-0.140693, -0.854257, -0.500451,
		0.983235, -0.179780, 0.030459,
		35.993725, 34.203850, 40.772476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426704, 33.579144, 40.814739>,  <35.305458, 34.329693, 40.751156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426704, 33.579144, 40.814739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755310, 33.753315, 40.961987>,  <35.952473, 33.857819, 41.050335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755310, 33.753315, 40.961987>,  <35.426704, 33.579144, 40.814739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755310, 33.753315, 40.961987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145412, -0.464276, 0.873672,
		0.551329, -0.771266, -0.318095,
		0.821518, 0.435426, 0.368121,
		36.001766, 33.883942, 41.072422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122360, 32.867035, 40.571121>,  <35.426704, 33.579144, 40.814739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122360, 32.867035, 40.571121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786133, 32.653873, 40.610023>,  <34.584396, 32.525978, 40.633366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786133, 32.653873, 40.610023>,  <35.122360, 32.867035, 40.571121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786133, 32.653873, 40.610023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380440, 0.452935, -0.806297,
		0.385629, -0.714747, -0.583460,
		-0.840568, -0.532904, 0.097254,
		34.533962, 32.494003, 40.639198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946636, 32.558189, 39.876106>,  <35.122360, 32.867035, 40.571121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946636, 32.558189, 39.876106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609779, 32.546154, 40.091473>,  <34.407665, 32.538933, 40.220692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609779, 32.546154, 40.091473>,  <34.946636, 32.558189, 39.876106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609779, 32.546154, 40.091473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485729, 0.475993, -0.733142,
		-0.234222, -0.878934, -0.415469,
		-0.842144, -0.030087, 0.538412,
		34.357136, 32.537128, 40.252995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474216, 32.060844, 39.568443>,  <34.946636, 32.558189, 39.876106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474216, 32.060844, 39.568443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297787, 32.363907, 39.760860>,  <34.191929, 32.545746, 39.876312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297787, 32.363907, 39.760860>,  <34.474216, 32.060844, 39.568443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297787, 32.363907, 39.760860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430935, 0.291374, -0.854047,
		-0.787243, -0.583996, 0.197985,
		-0.441072, 0.757661, 0.481046,
		34.165466, 32.591206, 39.905174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904388, 32.157135, 39.110031>,  <34.474216, 32.060844, 39.568443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904388, 32.157135, 39.110031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855145, 32.452595, 39.375130>,  <33.825600, 32.629871, 39.534191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855145, 32.452595, 39.375130>,  <33.904388, 32.157135, 39.110031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855145, 32.452595, 39.375130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513194, 0.524217, -0.679580,
		-0.849398, -0.423781, 0.314536,
		-0.123108, 0.738652, 0.662750,
		33.818211, 32.674191, 39.573956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174435, 32.199078, 39.412182>,  <33.904388, 32.157135, 39.110031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174435, 32.199078, 39.412182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364803, 32.550842, 39.416950>,  <33.479023, 32.761902, 39.419811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364803, 32.550842, 39.416950>,  <33.174435, 32.199078, 39.412182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364803, 32.550842, 39.416950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661892, 0.367066, -0.653576,
		-0.579136, 0.303158, 0.756767,
		0.475921, 0.879407, 0.011924,
		33.507580, 32.814663, 39.420528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697376, 32.589474, 39.457783>,  <33.174435, 32.199078, 39.412182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697376, 32.589474, 39.457783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973911, 32.860428, 39.357216>,  <33.139832, 33.022999, 39.296875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973911, 32.860428, 39.357216>,  <32.697376, 32.589474, 39.457783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973911, 32.860428, 39.357216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679298, 0.490793, -0.545597,
		-0.246185, 0.547976, 0.799447,
		0.691337, 0.677381, -0.251413,
		33.181313, 33.063641, 39.281792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337139, 33.250072, 39.224663>,  <32.697376, 32.589474, 39.457783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337139, 33.250072, 39.224663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699703, 33.327286, 39.074375>,  <32.917240, 33.373615, 38.984203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699703, 33.327286, 39.074375>,  <32.337139, 33.250072, 39.224663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699703, 33.327286, 39.074375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417273, 0.547423, -0.725405,
		0.065651, 0.814289, 0.576735,
		0.906407, 0.193032, -0.375720,
		32.971626, 33.385197, 38.961658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398769, 33.928921, 39.104053>,  <32.337139, 33.250072, 39.224663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398769, 33.928921, 39.104053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672588, 33.796150, 38.844448>,  <32.836880, 33.716488, 38.688683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672588, 33.796150, 38.844448>,  <32.398769, 33.928921, 39.104053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672588, 33.796150, 38.844448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450478, 0.507353, -0.734617,
		0.573120, 0.795246, 0.197779,
		0.684545, -0.331929, -0.649015,
		32.877953, 33.696571, 38.649742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511425, 34.524445, 38.665981>,  <32.398769, 33.928921, 39.104053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511425, 34.524445, 38.665981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637409, 34.203503, 38.463192>,  <32.713001, 34.010937, 38.341518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637409, 34.203503, 38.463192>,  <32.511425, 34.524445, 38.665981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637409, 34.203503, 38.463192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268280, 0.437113, -0.858463,
		0.910397, 0.406396, -0.077581,
		0.314964, -0.802356, -0.506975,
		32.731899, 33.962795, 38.311100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935947, 34.769814, 38.115574>,  <32.511425, 34.524445, 38.665981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935947, 34.769814, 38.115574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810089, 34.411514, 37.989956>,  <32.734573, 34.196533, 37.914585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810089, 34.411514, 37.989956>,  <32.935947, 34.769814, 38.115574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810089, 34.411514, 37.989956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325047, 0.412524, -0.850981,
		0.891818, -0.165683, -0.420963,
		-0.314650, -0.895753, -0.314042,
		32.715694, 34.142788, 37.895744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117214, 34.741913, 37.420116>,  <32.935947, 34.769814, 38.115574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117214, 34.741913, 37.420116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829979, 34.466984, 37.463810>,  <32.657639, 34.302025, 37.490025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829979, 34.466984, 37.463810>,  <33.117214, 34.741913, 37.420116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829979, 34.466984, 37.463810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259882, 0.119221, -0.958252,
		0.645609, -0.716498, -0.264235,
		-0.718088, -0.687326, 0.109234,
		32.614552, 34.260784, 37.496582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081154, 34.371426, 36.776890>,  <33.117214, 34.741913, 37.420116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081154, 34.371426, 36.776890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725479, 34.317677, 36.951839>,  <32.512074, 34.285427, 37.056808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725479, 34.317677, 36.951839>,  <33.081154, 34.371426, 36.776890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725479, 34.317677, 36.951839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447051, 0.051548, -0.893022,
		0.097456, -0.989588, -0.105909,
		-0.889184, -0.134378, 0.437373,
		32.458725, 34.277367, 37.083054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901089, 33.833309, 36.296471>,  <33.081154, 34.371426, 36.776890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901089, 33.833309, 36.296471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587830, 33.982708, 36.495338>,  <32.399872, 34.072346, 36.614658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587830, 33.982708, 36.495338>,  <32.901089, 33.833309, 36.296471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587830, 33.982708, 36.495338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468805, 0.170634, -0.866664,
		-0.408528, -0.911803, 0.041464,
		-0.783151, 0.373495, 0.497167,
		32.352882, 34.094757, 36.644489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242546, 33.368359, 36.203442>,  <32.901089, 33.833309, 36.296471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242546, 33.368359, 36.203442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110081, 33.735374, 36.291492>,  <32.030602, 33.955585, 36.344322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110081, 33.735374, 36.291492>,  <32.242546, 33.368359, 36.203442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110081, 33.735374, 36.291492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728607, -0.100427, -0.677530,
		-0.599553, -0.384757, 0.701782,
		-0.331162, 0.917539, 0.220125,
		32.010731, 34.010635, 36.357529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323353, 32.617561, 36.359669>,  <32.242546, 33.368359, 36.203442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323353, 32.617561, 36.359669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119659, 32.429138, 36.071564>,  <31.997442, 32.316082, 35.898701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119659, 32.429138, 36.071564>,  <32.323353, 32.617561, 36.359669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119659, 32.429138, 36.071564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532813, -0.829794, 0.165987,
		-0.675860, -0.299239, 0.673550,
		-0.509238, -0.471060, -0.720263,
		31.966888, 32.287819, 35.855484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963371, 31.920460, 36.635521>,  <32.323353, 32.617561, 36.359669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963371, 31.920460, 36.635521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034672, 31.928085, 36.242001>,  <32.077454, 31.932661, 36.005890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034672, 31.928085, 36.242001>,  <31.963371, 31.920460, 36.635521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034672, 31.928085, 36.242001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502208, -0.861549, 0.074297,
		-0.846176, -0.507316, -0.163146,
		0.178251, 0.019065, -0.983800,
		32.088146, 31.933805, 35.946861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650311, 31.624771, 36.307213>,  <31.963371, 31.920460, 36.635521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650311, 31.624771, 36.307213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045013, 31.686766, 36.288040>,  <33.281834, 31.723963, 36.276539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045013, 31.686766, 36.288040>,  <32.650311, 31.624771, 36.307213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045013, 31.686766, 36.288040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152409, -0.784437, 0.601191,
		0.055580, -0.600532, -0.797666,
		0.986754, 0.154985, -0.047927,
		33.341038, 31.733261, 36.273663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136761, 31.102770, 36.145729>,  <32.650311, 31.624771, 36.307213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136761, 31.102770, 36.145729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352844, 31.337666, 36.386833>,  <33.482494, 31.478603, 36.531498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352844, 31.337666, 36.386833>,  <33.136761, 31.102770, 36.145729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352844, 31.337666, 36.386833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235781, -0.793201, 0.561462,
		0.807827, -0.161185, -0.566953,
		0.540207, 0.587241, 0.602765,
		33.514908, 31.513838, 36.567661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911530, 30.922735, 36.128872>,  <33.136761, 31.102770, 36.145729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911530, 30.922735, 36.128872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805119, 31.102196, 36.470150>,  <33.741272, 31.209871, 36.674915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805119, 31.102196, 36.470150>,  <33.911530, 30.922735, 36.128872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805119, 31.102196, 36.470150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391481, -0.758529, 0.520938,
		0.880892, 0.472595, 0.026153,
		-0.266031, 0.448652, 0.853194,
		33.725311, 31.236792, 36.726109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500767, 30.865213, 36.537220>,  <33.911530, 30.922735, 36.128872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500767, 30.865213, 36.537220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180920, 30.911808, 36.772858>,  <33.989010, 30.939766, 36.914242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180920, 30.911808, 36.772858>,  <34.500767, 30.865213, 36.537220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180920, 30.911808, 36.772858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324845, -0.741167, 0.587492,
		0.505055, 0.661137, 0.554813,
		-0.799622, 0.116487, 0.589097,
		33.941032, 30.946754, 36.949585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778599, 30.785727, 37.222839>,  <34.500767, 30.865213, 36.537220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778599, 30.785727, 37.222839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391048, 30.731365, 37.305592>,  <34.158516, 30.698748, 37.355244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391048, 30.731365, 37.305592>,  <34.778599, 30.785727, 37.222839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391048, 30.731365, 37.305592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245421, -0.636259, 0.731398,
		0.032233, 0.759411, 0.649812,
		-0.968881, -0.135903, 0.206884,
		34.100384, 30.690594, 37.367657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742790, 30.852036, 37.926418>,  <34.778599, 30.785727, 37.222839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742790, 30.852036, 37.926418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424679, 30.651661, 37.789833>,  <34.233814, 30.531435, 37.707882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424679, 30.651661, 37.789833>,  <34.742790, 30.852036, 37.926418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424679, 30.651661, 37.789833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087593, -0.652274, 0.752905,
		-0.599885, 0.568858, 0.562617,
		-0.795277, -0.500938, -0.341462,
		34.186096, 30.501379, 37.687393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329044, 30.844883, 38.436462>,  <34.742790, 30.852036, 37.926418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329044, 30.844883, 38.436462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245327, 30.540470, 38.190853>,  <34.195099, 30.357822, 38.043488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245327, 30.540470, 38.190853>,  <34.329044, 30.844883, 38.436462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245327, 30.540470, 38.190853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010223, -0.629602, 0.776851,
		-0.977800, 0.156310, 0.139549,
		-0.209290, -0.761032, -0.614026,
		34.182541, 30.312160, 38.006645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782753, 30.461552, 38.818317>,  <34.329044, 30.844883, 38.436462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782753, 30.461552, 38.818317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987118, 30.255093, 38.543346>,  <34.109737, 30.131218, 38.378365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987118, 30.255093, 38.543346>,  <33.782753, 30.461552, 38.818317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987118, 30.255093, 38.543346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273989, -0.660197, 0.699335,
		-0.814799, -0.545649, -0.195886,
		0.510915, -0.516147, -0.687429,
		34.140392, 30.100248, 38.337116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965466, 29.948000, 39.188858>,  <33.782753, 30.461552, 38.818317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965466, 29.948000, 39.188858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135826, 29.823219, 38.849140>,  <34.238041, 29.748350, 38.645309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135826, 29.823219, 38.849140>,  <33.965466, 29.948000, 39.188858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135826, 29.823219, 38.849140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522193, -0.681808, 0.512301,
		-0.738868, -0.661682, -0.127481,
		0.425898, -0.311953, -0.849291,
		34.263596, 29.729633, 38.594353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958099, 29.198687, 39.142456>,  <33.965466, 29.948000, 39.188858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958099, 29.198687, 39.142456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253967, 29.291378, 38.889732>,  <34.431488, 29.346992, 38.738098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253967, 29.291378, 38.889732>,  <33.958099, 29.198687, 39.142456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253967, 29.291378, 38.889732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598420, -0.655977, 0.459986,
		-0.307862, -0.718328, -0.623881,
		0.739672, 0.231731, -0.631812,
		34.475868, 29.360897, 38.700188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200512, 28.537140, 38.878479>,  <33.958099, 29.198687, 39.142456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200512, 28.537140, 38.878479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474411, 28.819979, 38.807907>,  <34.638752, 28.989683, 38.765564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474411, 28.819979, 38.807907>,  <34.200512, 28.537140, 38.878479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474411, 28.819979, 38.807907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717694, -0.612214, 0.331829,
		0.126622, -0.353844, -0.926693,
		0.684750, 0.707099, -0.176432,
		34.679836, 29.032108, 38.754978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780273, 28.144230, 38.532860>,  <34.200512, 28.537140, 38.878479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780273, 28.144230, 38.532860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955593, 28.479557, 38.662544>,  <35.060787, 28.680754, 38.740356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955593, 28.479557, 38.662544>,  <34.780273, 28.144230, 38.532860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955593, 28.479557, 38.662544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769698, -0.536341, 0.346271,
		0.464174, 0.097775, -0.880331,
		0.438301, 0.838319, 0.324213,
		35.087082, 28.731052, 38.759808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546066, 28.062401, 38.456085>,  <34.780273, 28.144230, 38.532860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546066, 28.062401, 38.456085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519196, 28.349676, 38.733124>,  <35.503071, 28.522041, 38.899345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519196, 28.349676, 38.733124>,  <35.546066, 28.062401, 38.456085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519196, 28.349676, 38.733124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820162, -0.355549, 0.448240,
		0.568173, 0.598155, -0.565146,
		-0.067180, 0.718189, 0.692597,
		35.499043, 28.565132, 38.940903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190182, 28.022682, 38.817303>,  <35.546066, 28.062401, 38.456085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190182, 28.022682, 38.817303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981987, 28.264389, 39.058620>,  <35.857071, 28.409412, 39.203411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981987, 28.264389, 39.058620>,  <36.190182, 28.022682, 38.817303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981987, 28.264389, 39.058620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690919, -0.117112, 0.713383,
		0.501726, 0.788129, -0.356544,
		-0.520482, 0.604266, 0.603292,
		35.825844, 28.445669, 39.239609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643795, 28.493952, 39.104893>,  <36.190182, 28.022682, 38.817303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643795, 28.493952, 39.104893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328979, 28.460096, 39.349323>,  <36.140091, 28.439783, 39.495979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328979, 28.460096, 39.349323>,  <36.643795, 28.493952, 39.104893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328979, 28.460096, 39.349323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614295, -0.016502, 0.788904,
		-0.056687, 0.996275, 0.064980,
		-0.787037, -0.084638, 0.611072,
		36.092869, 28.434706, 39.532646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767239, 28.967169, 39.669151>,  <36.643795, 28.493952, 39.104893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767239, 28.967169, 39.669151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502106, 28.696945, 39.798317>,  <36.343025, 28.534811, 39.875816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502106, 28.696945, 39.798317>,  <36.767239, 28.967169, 39.669151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502106, 28.696945, 39.798317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566515, -0.170463, 0.806228,
		-0.489608, 0.717331, 0.495702,
		-0.662831, -0.675558, 0.322918,
		36.303257, 28.494278, 39.895191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868801, 29.034807, 40.346867>,  <36.767239, 28.967169, 39.669151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868801, 29.034807, 40.346867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618088, 28.723183, 40.341106>,  <36.467659, 28.536207, 40.337650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618088, 28.723183, 40.341106>,  <36.868801, 29.034807, 40.346867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618088, 28.723183, 40.341106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387946, -0.328035, 0.861331,
		-0.675753, 0.534281, 0.507841,
		-0.626782, -0.779061, -0.014399,
		36.430054, 28.489464, 40.336788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493160, 28.952593, 40.988819>,  <36.868801, 29.034807, 40.346867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493160, 28.952593, 40.988819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561363, 28.595839, 40.821266>,  <36.602287, 28.381786, 40.720734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561363, 28.595839, 40.821266>,  <36.493160, 28.952593, 40.988819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561363, 28.595839, 40.821266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611583, -0.237524, 0.754684,
		-0.772588, -0.384864, 0.504963,
		0.170511, -0.891887, -0.418884,
		36.612518, 28.328272, 40.695602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668346, 28.476000, 41.486961>,  <36.493160, 28.952593, 40.988819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668346, 28.476000, 41.486961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801277, 28.250853, 41.184242>,  <36.881035, 28.115765, 41.002613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801277, 28.250853, 41.184242>,  <36.668346, 28.476000, 41.486961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801277, 28.250853, 41.184242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696206, -0.394922, 0.599445,
		-0.636283, -0.726097, 0.260628,
		0.332328, -0.562867, -0.756795,
		36.900974, 28.081993, 40.957203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424969, 27.812807, 41.545547>,  <36.668346, 28.476000, 41.486961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424969, 27.812807, 41.545547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772373, 27.808088, 41.347336>,  <36.980816, 27.805256, 41.228409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772373, 27.808088, 41.347336>,  <36.424969, 27.812807, 41.545547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772373, 27.808088, 41.347336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385712, -0.611800, 0.690599,
		-0.311314, -0.790925, -0.526804,
		0.868510, -0.011798, -0.495531,
		37.032925, 27.804548, 41.198677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582188, 27.215191, 41.757603>,  <36.424969, 27.812807, 41.545547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582188, 27.215191, 41.757603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910847, 27.348989, 41.572987>,  <37.108040, 27.429268, 41.462219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910847, 27.348989, 41.572987>,  <36.582188, 27.215191, 41.757603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910847, 27.348989, 41.572987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568557, -0.538577, 0.621834,
		-0.040572, -0.773335, -0.632697,
		0.821643, 0.334495, -0.461536,
		37.157341, 27.449339, 41.434525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937340, 26.634066, 41.653370>,  <36.582188, 27.215191, 41.757603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937340, 26.634066, 41.653370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210701, 26.925692, 41.638298>,  <37.374718, 27.100668, 41.629253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210701, 26.925692, 41.638298>,  <36.937340, 26.634066, 41.653370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210701, 26.925692, 41.638298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581889, -0.512825, 0.631202,
		0.440864, -0.453293, -0.774703,
		0.683406, 0.729065, -0.037680,
		37.415722, 27.144411, 41.626995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567390, 26.309372, 41.802441>,  <36.937340, 26.634066, 41.653370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567390, 26.309372, 41.802441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695999, 26.680260, 41.879261>,  <37.773167, 26.902792, 41.925354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695999, 26.680260, 41.879261>,  <37.567390, 26.309372, 41.802441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695999, 26.680260, 41.879261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611343, -0.358152, 0.705682,
		0.723106, -0.109488, -0.682005,
		0.321525, 0.927222, 0.192047,
		37.792458, 26.958426, 41.936874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255924, 26.281061, 41.769951>,  <37.567390, 26.309372, 41.802441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255924, 26.281061, 41.769951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191978, 26.609118, 41.989700>,  <38.153610, 26.805952, 42.121552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191978, 26.609118, 41.989700>,  <38.255924, 26.281061, 41.769951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191978, 26.609118, 41.989700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640848, -0.337079, 0.689704,
		0.750837, 0.462326, -0.471698,
		-0.159869, 0.820142, 0.549372,
		38.144016, 26.855160, 42.154510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840069, 26.252756, 42.154545>,  <38.255924, 26.281061, 41.769951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840069, 26.252756, 42.154545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609707, 26.517782, 42.346104>,  <38.471489, 26.676798, 42.461040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609707, 26.517782, 42.346104>,  <38.840069, 26.252756, 42.154545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609707, 26.517782, 42.346104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453038, -0.228965, 0.861587,
		0.680508, 0.713150, -0.168305,
		-0.575905, 0.662565, 0.478896,
		38.436935, 26.716551, 42.489773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333866, 26.574617, 42.555134>,  <38.840069, 26.252756, 42.154545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333866, 26.574617, 42.555134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968449, 26.577581, 42.717800>,  <38.749199, 26.579361, 42.815399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968449, 26.577581, 42.717800>,  <39.333866, 26.574617, 42.555134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968449, 26.577581, 42.717800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385960, -0.299629, 0.872501,
		0.128315, 0.954027, 0.270865,
		-0.913548, 0.007411, 0.406663,
		38.694386, 26.579805, 42.839798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741455, 27.176836, 42.787228>,  <39.333866, 26.574617, 42.555134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741455, 27.176836, 42.787228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115627, 27.283041, 42.693867>,  <40.340130, 27.346764, 42.637852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115627, 27.283041, 42.693867>,  <39.741455, 27.176836, 42.787228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115627, 27.283041, 42.693867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349032, 0.588867, -0.728980,
		-0.056113, 0.763373, 0.643516,
		0.935429, 0.265512, -0.233399,
		40.396255, 27.362694, 42.623848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789066, 27.910099, 42.602695>,  <39.741455, 27.176836, 42.787228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789066, 27.910099, 42.602695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112991, 27.755659, 42.426006>,  <40.307346, 27.662994, 42.319992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112991, 27.755659, 42.426006>,  <39.789066, 27.910099, 42.602695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112991, 27.755659, 42.426006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228955, 0.485234, -0.843877,
		0.540163, 0.784521, 0.304551,
		0.809817, -0.386102, -0.441725,
		40.355938, 27.639828, 42.293488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129658, 28.409830, 42.390148>,  <39.789066, 27.910099, 42.602695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129658, 28.409830, 42.390148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249676, 28.112606, 42.150871>,  <40.321686, 27.934271, 42.007305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249676, 28.112606, 42.150871>,  <40.129658, 28.409830, 42.390148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249676, 28.112606, 42.150871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357383, 0.493846, -0.792712,
		0.884447, 0.451636, -0.117380,
		0.300050, -0.743062, -0.598188,
		40.339691, 27.889687, 41.971416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321922, 28.726450, 41.784977>,  <40.129658, 28.409830, 42.390148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321922, 28.726450, 41.784977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253983, 28.347996, 41.674721>,  <40.213219, 28.120922, 41.608566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253983, 28.347996, 41.674721>,  <40.321922, 28.726450, 41.784977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253983, 28.347996, 41.674721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345929, 0.319144, -0.882315,
		0.922760, -0.054507, -0.381502,
		-0.169846, -0.946137, -0.275638,
		40.203030, 28.064154, 41.592030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831276, 28.605175, 41.132809>,  <40.321922, 28.726450, 41.784977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831276, 28.605175, 41.132809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493191, 28.391905, 41.147434>,  <40.290340, 28.263943, 41.156208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493191, 28.391905, 41.147434>,  <40.831276, 28.605175, 41.132809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493191, 28.391905, 41.147434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355997, 0.510678, -0.782607,
		0.398592, -0.674489, -0.621441,
		-0.845217, -0.533172, 0.036565,
		40.239628, 28.231953, 41.158401>
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
